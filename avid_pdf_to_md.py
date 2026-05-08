#!/usr/bin/env python3
"""
avid_pdf_to_md.py
─────────────────
Converts Avid KB PDF documents (What's New, ReadMes, Hardware Guides) into
clean markdown files suitable for project-kb.

Usage:
    python3 avid_pdf_to_md.py <pdf_path> [options]

Options:
    --product       Product key: media-composer | nexis | cloud-ux | newsroom-management |
                                 stream-io | fastserve-ingest | fastserve-playout |
                                 production-management | analytics
    --version       Version string e.g. 2025.12
    --doc-type      new-features | hardware-guide | readme | release-notes  (default: new-features)
    --output        Output .md path (default: auto-generated from product/version)
    --kb-root       Root of project-kb (default: ~/Desktop/avid-kb/project-kb)
    --dry-run       Print output without writing

Examples:
    python3 avid_pdf_to_md.py "Media_Composer_v2025.12_What's_New.pdf" \\
        --product media-composer --version 2025.12

    python3 avid_pdf_to_md.py "NEXIS_2025.5_New_Features.pdf" \\
        --product nexis --version 2025.5 --doc-type new-features

    python3 avid_pdf_to_md.py "MC_Cloud_UX_2025.10_Hardware_Guide.pdf" \\
        --product cloud-ux --version 2025.10 --doc-type hardware-guide

Notes:
    - Requires pdfplumber:  pip install pdfplumber --break-system-packages
    - The key fix for Avid PDFs: x_tolerance=1.8 (tight word boundary detection)
    - Legal notices pages are automatically stripped
    - TOC lines, page numbers, and running headers are filtered out
    - Avid list markers (l / t for bullets, n for notes, – for sub-bullets) are
      converted to standard markdown
"""

import sys
import os
import re
import argparse
from datetime import date
import pdfplumber


# ── Product configuration ──────────────────────────────────────────────────
# Maps product key → (display name, product-area, kb output path template)
PRODUCT_CONFIG = {
    "media-composer": {
        "name": "media-composer",
        "area": "editing",
        "path": "media-composer/versions/{version}/{doc_type}.md",
    },
    # Year-level MC guides (e.g. v2025.x Editing Guide) — no specific patch version
    "media-composer-guide": {
        "name": "media-composer",
        "area": "editing",
        "path": "media-composer/guides/{version}/{doc_type}.md",
    },
    # MCDP = Media Composer | Distributed Processing (server transcoding component)
    "mcdp": {
        "name": "media-composer-distributed-processing",
        "area": "editing",
        "path": "media-composer/distributed-processing/versions/{version}/{doc_type}.md",
    },
    "nexis": {
        "name": "nexis",
        "area": "shared-storage",
        "path": "nexis/versions/{version}/{doc_type}.md",
    },
    "cloud-ux": {
        "name": "mediacentral-cloud-ux",
        "area": "newsroom-platform",
        "path": "mediacentral/cloud-ux/versions/{version}/{doc_type}.md",
    },
    "newsroom-management": {
        "name": "mediacentral-newsroom-management",
        "area": "newsroom-management",
        "path": "mediacentral/newsroom-management/versions/{version}/{doc_type}.md",
    },
    "newsroom-management-wsapi": {
        "name": "mediacentral-newsroom-management-wsapi",
        "area": "newsroom-management",
        "path": "mediacentral/newsroom-management/wsapi/versions/{version}/{doc_type}.md",
    },
    "newsroom-management-data-receiver": {
        "name": "mediacentral-newsroom-management-data-receiver",
        "area": "newsroom-management",
        "path": "mediacentral/newsroom-management/data-receiver/versions/{version}/{doc_type}.md",
    },
    "stream-io": {
        "name": "stream-io",
        "area": "ingest-playout",
        "path": "stream-io/versions/{version}/{doc_type}.md",
    },
    "fastserve-ingest": {
        "name": "fastserve-ingest",
        "area": "ingest",
        "path": "fastserve/ingest/versions/{version}/{doc_type}.md",
    },
    "fastserve-playout": {
        "name": "fastserve-playout",
        "area": "playout",
        "path": "fastserve/playout/versions/{version}/{doc_type}.md",
    },
    "production-management": {
        "name": "mediacentral-production-management",
        "area": "production-management",
        "path": "mediacentral/production-management/versions/{version}/{doc_type}.md",
    },
    "analytics": {
        "name": "mediacentral-analytics",
        "area": "analytics",
        "path": "mediacentral/analytics/versions/{version}/{doc_type}.md",
    },
}

# Boilerplate prefixes that signal the Legal Notices section
LEGAL_PREFIXES = (
    "Productspecificationsaresubjecttochange",
    "Thisproductissubjecttothetermsandconditions",
    "Copyright©",
)

# Lines to always skip
UNIVERSAL_SKIP = {
    "Important Information",
    "Legal Notices",
    "c",        # stray copyright symbol in some Avid PDFs
    "Trademarks",
    "Attn. Government User(s). Restricted Rights Legend",
}


# ── Core extraction ────────────────────────────────────────────────────────

def extract_page_lines(page, x_tol=1.8, y_tol=3):
    """
    Extract text lines using tight word boundary detection.
    x_tolerance=1.8 is the key: Avid PDFs have ~2.4pt inter-word gaps but
    near-zero intra-word gaps. Standard pdfplumber default (x_tol=3) merges
    words; 1.8 preserves them.
    """
    words = page.extract_words(x_tolerance=x_tol, y_tolerance=y_tol)
    if not words:
        return []
    lines = {}
    for w in words:
        y_key = round(w['top'] / 3) * 3
        lines.setdefault(y_key, []).append((w['x0'], w['text']))
    return [
        " ".join(w[1] for w in sorted(lines[y], key=lambda x: x[0]))
        for y in sorted(lines.keys())
    ]


def is_toc_line(stripped):
    """TOC entries end with a single digit after whitespace."""
    return bool(re.match(r'^.+\s+\d$', stripped))


def is_legal_boilerplate(stripped):
    return any(stripped.startswith(p) for p in LEGAL_PREFIXES)


def classify_line(stripped, li, heading_registry, pending_type):
    """
    Returns (type, text, new_pending_type).
    Types: h2 | h3 | bullet | sub | note | numbered | body | skip
    heading_registry: set of already-emitted headings (to skip running heads)
    li: line index within its page (running heads appear at li <= 1)
    """
    if not stripped:
        return 'skip', '', None
    if re.match(r'^\d+$', stripped):
        return 'skip', '', None
    if stripped in UNIVERSAL_SKIP:
        return 'skip', '', None
    if is_toc_line(stripped):
        return 'skip', '', None
    if is_legal_boilerplate(stripped):
        return 'legal_stop', '', None

    # Orphan markers (marker alone on a line)
    if stripped in ('t', 'l'):
        return 'skip', '', 'bullet'
    if stripped == 'n':
        return 'skip', '', 'note'
    if stripped == '–':
        return 'skip', '', 'sub'

    # Inline markers
    if re.match(r'^l\s+\S', stripped):
        return 'bullet', stripped[2:].strip(), None
    if re.match(r'^t\s+\S', stripped):
        return 'bullet', stripped[2:].strip(), None
    if re.match(r'^n\s+\S', stripped):
        return 'note', stripped[2:].strip(), None
    if stripped.startswith('– '):
        return 'sub', stripped[2:].strip(), None
    if re.match(r'^\d+\.\s+', stripped):
        return 'numbered', stripped, None

    # Apply pending type from orphan marker on previous line
    if pending_type:
        return pending_type, stripped, None

    return 'body', stripped, None


def extract_sections(pdf_path, known_h2=None, known_h3=None):
    """
    Extract all text from a PDF, returning a list of (type, text) tuples.
    known_h2 / known_h3: sets of known section heading strings for this document.
    If None, headings are inferred from font size (best-effort).
    """
    if known_h2 is None:
        known_h2 = set()
    if known_h3 is None:
        known_h3 = set()

    flat = []
    with pdfplumber.open(pdf_path) as pdf:
        for pi, page in enumerate(pdf.pages):
            for li, line in enumerate(extract_page_lines(page)):
                flat.append((pi, li, line.strip()))

    classified = []
    heading_seen = set()
    pending_type = None

    for pi, li, stripped in flat:
        # Known section headings
        if stripped in known_h2:
            if li <= 1 and stripped in heading_seen:
                pending_type = None
                continue  # running head — skip
            if stripped not in heading_seen:
                classified.append(('h2', stripped))
                heading_seen.add(stripped)
            pending_type = None
            continue

        if stripped in known_h3:
            if stripped not in heading_seen:
                classified.append(('h3', stripped))
                heading_seen.add(stripped)
            pending_type = None
            continue

        typ, text, new_pending = classify_line(stripped, li, heading_seen, pending_type)
        pending_type = new_pending

        if typ == 'legal_stop':
            break
        if typ == 'skip':
            continue

        classified.append((typ, text))

    return classified


# ── Rendering ─────────────────────────────────────────────────────────────

def render_markdown(classified, front_matter):
    """Render classified lines to a markdown string."""
    out = [front_matter, ""]
    prev_type = None

    for typ, text in classified:
        if typ == 'h2':
            out.append(f"\n## {text}\n")
        elif typ == 'h3':
            out.append(f"\n### {text}\n")
        elif typ == 'bullet':
            out.append(f"- {text}")
        elif typ == 'sub':
            out.append(f"  - {text}")
        elif typ == 'note':
            # Merge note continuations
            if (prev_type == 'note' and out
                    and out[-1].startswith('> **Note:**')):
                out[-1] = out[-1] + ' ' + text
            else:
                out.append(f"> **Note:** {text}")
        elif typ == 'numbered':
            out.append(text)
        else:  # body
            # Soft-wrap: merge continuation lines (lines not ending in sentence punct)
            if (prev_type == 'body' and out
                    and not out[-1].endswith('\n')
                    and out[-1] and out[-1][-1] not in '.!?:'):
                out[-1] = out[-1] + ' ' + text
            else:
                out.append(text)
        prev_type = typ

    content = "\n".join(out)
    return re.sub(r'\n{3,}', '\n\n', content)


def build_front_matter(product_key, version, doc_type, source="pdf"):
    cfg = PRODUCT_CONFIG.get(product_key, {})
    product_name = cfg.get("name", product_key)
    area = cfg.get("area", "")
    today = date.today().strftime("%d/%m/%Y")
    # Build release-date: use version parts if available
    parts = version.split('.')
    year = parts[0] if parts else "2025"
    month = parts[1] if len(parts) > 1 else "01"
    # Pad month if needed
    try:
        month = f"{int(month):02d}"
    except ValueError:
        month = "01"
    return f"""---
product: {product_name}
product-area: {area}
version: "{version}"
release-date: 01/{month}/{year}
doc-type: {doc_type}
source: {source}
confidentiality: public
date-added: {today}
status: current
---"""


def resolve_output_path(product_key, version, doc_type, kb_root):
    cfg = PRODUCT_CONFIG.get(product_key)
    if not cfg:
        return os.path.join(kb_root, f"{product_key}/versions/{version}/{doc_type}.md")
    rel = cfg["path"].format(version=version, doc_type=doc_type)
    return os.path.join(kb_root, rel)


# ── CLI ────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(
        description="Convert Avid KB PDF to project-kb markdown",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__
    )
    parser.add_argument("pdf", help="Path to the PDF file")
    parser.add_argument("--product", required=True,
                        choices=list(PRODUCT_CONFIG.keys()),
                        help="Product key")
    parser.add_argument("--version", required=True, help="Version e.g. 2025.12")
    parser.add_argument("--doc-type", default="new-features",
                        choices=["new-features","hardware-guide","readme","release-notes",
                                 "admin-guide","users-guide","install-guide","install-admin-guide",
                                 "install-quick-guide","setup-config-guide","editing-guide",
                                 "fx-guide","vdi-guide","format-guide","virtualization-guide",
                                 "tomcat-install-guide","network-guide","integration-guide"],
                        help="Document type")
    parser.add_argument("--output", help="Override output path")
    parser.add_argument("--kb-root",
                        default=os.path.expanduser("~/Desktop/avid-kb/project-kb"),
                        help="Root of project-kb")
    parser.add_argument("--dry-run", action="store_true",
                        help="Print output without writing")
    parser.add_argument("--headings", nargs="*",
                        help="Known H2 section headings (space-separated, quoted)")
    parser.add_argument("--subheadings", nargs="*",
                        help="Known H3 sub-section headings")

    args = parser.parse_args()

    if not os.path.exists(args.pdf):
        print(f"Error: PDF not found: {args.pdf}", file=sys.stderr)
        sys.exit(1)

    known_h2 = set(args.headings) if args.headings else set()
    known_h3 = set(args.subheadings) if args.subheadings else set()

    print(f"Extracting: {args.pdf}", file=sys.stderr)
    classified = extract_sections(args.pdf, known_h2, known_h3)
    print(f"Classified {len(classified)} content items", file=sys.stderr)

    front_matter = build_front_matter(args.product, args.version, args.doc_type)
    content = render_markdown(classified, front_matter)

    out_path = args.output or resolve_output_path(
        args.product, args.version, args.doc_type, args.kb_root
    )

    if args.dry_run:
        print(content)
    else:
        os.makedirs(os.path.dirname(out_path), exist_ok=True)
        with open(out_path, 'w') as f:
            f.write(content)
        words = len([l for l in content.split('\n') if l.strip()])
        print(f"Written: {out_path}  ({words} lines)", file=sys.stderr)
        print(out_path)


# ── Importable API ─────────────────────────────────────────────────────────

def convert_pdf(pdf_path, product_key, version, doc_type="new-features",
                known_h2=None, known_h3=None, kb_root=None):
    """
    Programmatic entry point for use in batch scripts.

    Returns (output_path, content_string).
    Does NOT write the file — caller is responsible.

    Example:
        from avid_pdf_to_md import convert_pdf
        path, md = convert_pdf("nexis_2025.5.pdf", "nexis", "2025.5",
                               known_h2={"What's New in NEXIS 2025.5"})
        with open(path, 'w') as f:
            f.write(md)
    """
    if kb_root is None:
        kb_root = os.path.expanduser("~/Desktop/avid-kb/project-kb")
    classified = extract_sections(pdf_path, known_h2 or set(), known_h3 or set())
    front_matter = build_front_matter(product_key, version, doc_type)
    content = render_markdown(classified, front_matter)
    out_path = resolve_output_path(product_key, version, doc_type, kb_root)
    return out_path, content


if __name__ == "__main__":
    main()
