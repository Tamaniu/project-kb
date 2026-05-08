#!/usr/bin/env python3
"""
avid_kb_batch.py
────────────────
Fetches an Avid KB documentation index page, finds all PDF links,
downloads them, and converts each to markdown in project-kb.

Usage:
    python3 avid_kb_batch.py <kb_url> [options]

Examples:
    # Process all PDFs linked from the MC 2025 docs page
    python3 avid_kb_batch.py \
        "https://kb.avid.com/pkb/articles/en_US/Knowledge/Media-Composer-2025-Documentation"

    # NEXIS docs page, dry run to preview what would be fetched
    python3 avid_kb_batch.py \
        "https://kb.avid.com/pkb/articles/en_US/Knowledge/NEXIS-2025-Documentation" \
        --dry-run

    # Only fetch What's New PDFs, skip hardware guides and readmes
    python3 avid_kb_batch.py <url> --doc-types new-features

    # Only fetch specific version(s)
    python3 avid_kb_batch.py <url> --versions 2025.12 2025.10

    # List all PDFs found without downloading
    python3 avid_kb_batch.py <url> --list-only

Options:
    --kb-root       Path to project-kb (default: ~/Desktop/avid-kb/project-kb)
    --pdf-dir       Folder to save downloaded PDFs (default: ~/Desktop/avid-kb/source-pdfs)
    --doc-types     Filter by doc type: new-features hardware-guide readme release-notes
    --versions      Only process these versions e.g. --versions 2025.12 2025.10
    --dry-run       Show what would be converted without writing
    --list-only     Just list discovered PDF links without downloading
    --skip-existing Skip PDFs that already have a converted file in project-kb

Requires:
    pip3 install pdfplumber requests beautifulsoup4
"""

import sys
import os
import re
import argparse
import urllib.request
import urllib.parse
from pathlib import Path

try:
    import requests
    from bs4 import BeautifulSoup
except ImportError:
    print("Missing dependencies. Run:  pip3 install requests beautifulsoup4", file=sys.stderr)
    sys.exit(1)

# avid_pdf_to_md must be in the same directory as this script
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, SCRIPT_DIR)
try:
    from avid_pdf_to_md import convert_pdf, PRODUCT_CONFIG, resolve_output_path
except ImportError:
    print("avid_pdf_to_md.py not found — make sure it's in the same folder as this script.",
          file=sys.stderr)
    sys.exit(1)


# ── Filename → (product_key, version, doc_type) detection ─────────────────
#
# Each entry is a tuple:
#   (regex, product_key, doc_type)             — m.group(1) is the version
#   (regex, product_key, doc_type, version_fn) — version_fn(m) returns version string
#
# Order matters: more specific patterns first.

def _mcdp_ver(m):
    """MCDP_2025_12_0 → '2025.12.0'"""
    return f"{m.group(1)}.{int(m.group(2))}.{m.group(3)}"

def _nexis_ver(m):
    """AvidNEXIS_2025_5_7 → '2025.5.7'"""
    return f"{m.group(1)}.{int(m.group(2))}.{m.group(3)}"

def _mccux_ver(m):
    """MCCUX_2025_10_0 → '2025.10.0'"""
    return f"{m.group(1)}.{int(m.group(2))}.{m.group(3)}"

def _year_dot_month(m):
    """Two-group year/month capture → 'YYYY.M'"""
    return f"{m.group(1)}.{int(m.group(2))}"

FILENAME_PATTERNS = [
    # ── MCDP (Media Composer | Distributed Processing) ───────────────────
    # Format: MCDP_YYYY_MM_patch_DocType.pdf
    (r'MCDP[_](\d{4})[_](\d{2})[_](\d+)[_]Admin',
     'mcdp', 'admin-guide', _mcdp_ver),
    (r'MCDP[_](\d{4})[_](\d{2})[_](\d+)[_]Read[Mm]e',
     'mcdp', 'readme', _mcdp_ver),
    (r'MCDP[_](\d{4})[_](\d{2})[_](\d+)',
     'mcdp', 'readme', _mcdp_ver),

    # ── Media Composer — specific version (YYYY.M or YYYY.MM) ────────────
    (r'[Mm]edia[_\s]?[Cc]omposer[_\s]v?(\d{4}\.\d+)[_\s](?:What.?s.?New|New.?Features|Whats.?New)',
     'media-composer', 'new-features'),
    (r'[Mm]edia[_\s]?[Cc]omposer[_\s]v?(\d{4}\.\d+)[_\s][Hh]ardware',
     'media-composer', 'hardware-guide'),
    (r'[Mm]edia[_\s]?[Cc]omposer[_\s]v?(\d{4}\.\d+)[_\s]Read[Mm]e',
     'media-composer', 'readme'),
    (r'[Mm]edia[_\s]?[Cc]omposer[_\s]v?(\d{4}\.\d+)',
     'media-composer', 'new-features'),
    # MC_* prefix shorthand
    (r'^MC[_\s](?:Enterprise[_\s])?Admin[_\s]Guide[_\s](\d{4})(?:[._]x)?',
     'media-composer-guide', 'admin-guide'),
    (r'^MC[_\s]VDI[_\s].*[_\s](\d{4})',
     'media-composer-guide', 'vdi-guide'),

    # ── Media Composer — year-level guides (v2025.x) ──────────────────────
    (r'[Mm]edia[_\s]?[Cc]omposer[_\s]v?(\d{4})\.x[_\s]Editing',
     'media-composer-guide', 'editing-guide'),
    (r'[Mm]edia[_\s]?[Cc]omposer[_\s]v?(\d{4})\.x[_\s]FX',
     'media-composer-guide', 'fx-guide'),
    (r'[Mm]edia[_\s]?[Cc]omposer[_\s]v?(\d{4})\.x[_\s]Install',
     'media-composer-guide', 'install-guide'),
    (r'[Ii]nstall[_\s]Guide[_\s]Editor[_\s]v?(\d{4})\.x',
     'media-composer-guide', 'install-guide'),
    (r'[Mm]edia[_\s]?[Cc]omposer[_\s]v?(\d{4})\.x',
     'media-composer-guide', 'new-features'),
    # Virtualisation guide (no version in filename — default to 2025.x)
    (r'[Mm]edia[_\s]?[Cc]omposer[_\s]Virtuali[sz]ation[_\s]Guide',
     'media-composer-guide', 'vdi-guide', lambda m: "2025.x"),

    # ── MediaComposer2025Fixes (release notes, year only) ─────────────────
    (r'[Mm]edia[Cc]omposer(\d{4})[Ff]ixes',
     'media-composer', 'release-notes'),

    # ── NEXIS ─────────────────────────────────────────────────────────────
    # Dot-format versions (mid-era naming): AvidNEXIS_2024.10.0_*
    (r'(?:Avid)?NEXIS[_\s]v?(\d{4}\.\d+(?:\.\d+)?)[_\s](?:New.?Features|What.?s.?New)',
     'nexis', 'new-features'),
    (r'(?:Avid)?NEXIS[_\s]v?(\d{4}\.\d+(?:\.\d+)?)[_\s][Hh]ardware',
     'nexis', 'hardware-guide'),
    (r'(?:Avid)?NEXIS[_\s]v?(\d{4}\.\d+(?:\.\d+)?)[_\s]Read[Mm]e',
     'nexis', 'readme'),
    (r'(?:Avid[_\s])?NEXIS[_\s]v?(\d{4}\.\d+(?:\.\d+)?)',
     'nexis', 'readme'),
    # ReadMe_v prefix style (older naming): AvidNEXIS_ReadMe_v2024.6.0.pdf
    (r'AvidNEXIS[_]Read[Mm]e[_]v(\d+(?:\.\d+)*)',
     'nexis', 'readme'),
    # Underscore-format versions (current naming): AvidNEXIS_YYYY_M_P_DocType.pdf
    # More-specific doc-type patterns first, then fall-through to readme
    (r'AvidNEXIS_Cloud_Storage[_\w]*[_](\d{4})[_](\d+)[_](\d+)',
     'nexis', 'cloud-guide', _nexis_ver),
    (r'AvidNEXIS[_]Remote[_]Panel[_\w]*[_](\d{4})[_](\d+)[_](\d+)',
     'nexis', 'integration-guide', _nexis_ver),
    (r'AvidNEXIS[_](\d{4})[_](\d+)[_](\d+)[_]Setup',
     'nexis', 'setup-guide', _nexis_ver),
    (r'AvidNEXIS[_](\d{4})[_](\d+)[_](\d+)[_]Admin',
     'nexis', 'admin-guide', _nexis_ver),
    (r'AvidNEXIS[_](\d{4})[_](\d+)[_](\d+)[_]Client',
     'nexis', 'client-guide', _nexis_ver),
    (r'AvidNEXIS[_](\d{4})[_](\d+)[_](\d+)[_]Network',
     'nexis', 'network-guide', _nexis_ver),
    (r'AvidNEXIS[_](\d{4})[_](\d+)[_](\d+)[_]VFS',
     'nexis', 'vfs-guide', _nexis_ver),
    (r'AvidNEXIS[_](\d{4})[_](\d+)[_](\d+)',
     'nexis', 'readme', _nexis_ver),

    # ── MediaCentral Cloud UX ─────────────────────────────────────────────
    # Dot-format versions (older naming): MediaCentral_Cloud_UX_v2024.x_*
    (r'[Mm]edia[Cc]entral[_\s]Cloud.?UX[_\s]v?(\d{4}\.\d+)[_\s](?:What.?s.?New|New.?Features)',
     'cloud-ux', 'new-features'),
    (r'[Mm]edia[Cc]entral[_\s]Cloud.?UX[_\s]v?(\d{4}\.\d+)[_\s][Hh]ardware',
     'cloud-ux', 'hardware-guide'),
    (r'[Mm]edia[Cc]entral[_\s]Cloud.?UX[_\s]v?(\d{4}\.\d+)',
     'cloud-ux', 'new-features'),
    (r'Cloud.?UX[_\s]v?(\d{4}\.\d+)[_\s](?:What.?s.?New|New.?Features)',
     'cloud-ux', 'new-features'),
    # Underscore-format versions: MCCUX_YYYY_M_P_DocType.pdf (current naming)
    # More-specific patterns first, generic readme fall-through last
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)[_]3P[_]Tools[_]Read[Mm]e',
     'cloud-ux', 'readme', _mccux_ver),
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)[_]3P[_]Tools',
     'cloud-ux', 'third-party-guide', _mccux_ver),
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)[_](?:Media[_]Files[_]Plugin[_])?Read[Mm]e',
     'cloud-ux', 'readme', _mccux_ver),
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)[_]Users?[_]Guide',
     'cloud-ux', 'users-guide', _mccux_ver),
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)[_]Install',
     'cloud-ux', 'install-guide', _mccux_ver),
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)[_]Hardware',
     'cloud-ux', 'hardware-guide', _mccux_ver),
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)[_]Process[Mm]odeler',
     'cloud-ux', 'process-guide', _mccux_ver),
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)[_](?:Sync[_])?Admin',
     'cloud-ux', 'admin-guide', _mccux_ver),
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)[_]ENPS',
     'cloud-ux', 'integration-guide', _mccux_ver),
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)[_](?:Collaborate|Mobile)',
     'cloud-ux', 'mobile-guide', _mccux_ver),
    (r'MCCUX[_](\d{4})[_](\d+)[_](\d+)',
     'cloud-ux', 'readme', _mccux_ver),
    # Versionless MCCUX docs — use 'current' as placeholder version
    (r'MCCUX[_]Story[Dd]esigner',
     'cloud-ux', 'users-guide', lambda m: 'current'),
    (r'MCCUX[_]MCDS',
     'cloud-ux', 'readme', lambda m: 'current'),
    # APM (Avid Platform Manager) — sub-component of Cloud UX
    (r'APM[_](\d{4})[_](\d+)[_](\d+)',
     'cloud-ux', 'apm-readme', _mccux_ver),

    # ── MediaCentral Newsroom Management (MCNM prefix, dot-format version) ──
    # Sub-products first (more specific), then main NRM
    (r'MCNM[_]WSAPI[_](\d{4}\.\d+(?:\.\d+)?)[_]Tomcat',
     'newsroom-management-wsapi', 'tomcat-install-guide'),
    (r'MCNM[_]WSAPI[_](\d{4}\.\d+(?:\.\d+)?)[_]Read[Mm]e',
     'newsroom-management-wsapi', 'readme'),
    (r'MCNM[_]WSAPI[_](\d{4}\.\d+(?:\.\d+)?)',
     'newsroom-management-wsapi', 'readme'),
    (r'MCNM[_]DataReceiver[_](\d{4}\.\d+(?:\.\d+)?)[_]Install',
     'newsroom-management-data-receiver', 'install-admin-guide'),
    (r'MCNM[_]DataReceiver[_](\d{4}\.\d+(?:\.\d+)?)[_]Read[Mm]e',
     'newsroom-management-data-receiver', 'readme'),
    (r'MCNM[_]DataReceiver[_](\d{4}\.\d+(?:\.\d+)?)',
     'newsroom-management-data-receiver', 'readme'),
    # Main NRM doc types — abbreviated codes (confirmed naming convention)
    (r'MCNM[_](\d{4}\.\d+(?:\.\d+)?)[_]AG\b',
     'newsroom-management', 'admin-guide'),
    (r'MCNM[_](\d{4}\.\d+(?:\.\d+)?)[_]UG\b',
     'newsroom-management', 'users-guide'),
    (r'MCNM[_](\d{4}\.\d+(?:\.\d+)?)[_]SCG\b',
     'newsroom-management', 'setup-config-guide'),
    (r'MCNM[_](\d{4}\.\d+(?:\.\d+)?)[_]IQG\b',
     'newsroom-management', 'install-quick-guide'),
    (r'MCNM[_](\d{4}\.\d+(?:\.\d+)?)[_](?:S?EVR|VR)\b',
     'newsroom-management', 'virtualization-guide'),
    (r'MCNM[_](\d{4}\.\d+(?:\.\d+)?)[_]Read[Mm]e',
     'newsroom-management', 'readme'),
    (r'MCNM[_](\d{4}\.\d+(?:\.\d+)?)',
     'newsroom-management', 'readme'),
    # MCDR (Data Receiver) — abbreviated codes
    (r'MCDR[_](\d{4}\.\d+(?:\.\d+)?)[_]IAG\b',
     'newsroom-management-data-receiver', 'install-admin-guide'),
    (r'MCDR[_](\d{4}\.\d+(?:\.\d+)?)[_]Install',
     'newsroom-management-data-receiver', 'install-admin-guide'),
    (r'MCDR[_](\d{4}\.\d+(?:\.\d+)?)[_]Read[Mm]e',
     'newsroom-management-data-receiver', 'readme'),
    (r'MCDR[_](\d{4}\.\d+(?:\.\d+)?)',
     'newsroom-management-data-receiver', 'readme'),
    # Tomcat WSAPI guide (unique naming: Tomcat_WSAPI_FILELINK_YYYY.MM_ICG.pdf)
    (r'Tomcat[_]WSAPI[_]FILELINK[_](\d{4}\.\d+(?:\.\d+)?)[_]ICG',
     'newsroom-management-wsapi', 'tomcat-install-guide'),
    # Legacy / alternative naming
    (r'[Nn]ewsroom.?[Mm]anagement[_\s]v?(\d{4}\.\d+)[_\s](?:What.?s.?New|New.?Features)',
     'newsroom-management', 'new-features'),
    (r'iNEWS[_\s]v?(\d{4}\.\d+)',
     'newsroom-management', 'new-features'),

    # ── Stream IO ─────────────────────────────────────────────────────────
    (r'[Ss]tream.?IO[_\s]v?(\d{4}\.\d+)[_\s](?:What.?s.?New|New.?Features)',
     'stream-io', 'new-features'),
    (r'[Ss]tream.?IO[_\s]v?(\d{4}\.\d+)[_\s]Read[Mm]e',
     'stream-io', 'readme'),
    (r'[Ss]tream.?IO[_\s]v?(\d{4}\.\d+)',
     'stream-io', 'new-features'),

    # ── FastServe ─────────────────────────────────────────────────────────
    (r'[Ff]ast[Ss]erve[_\s][Ii]ngest[_\s]v?(\d{4}\.\d+)',
     'fastserve-ingest', 'new-features'),
    (r'[Ff]ast[Ss]erve[_\s][Pp]layout[_\s]v?(\d{4}\.\d+)',
     'fastserve-playout', 'new-features'),
    (r'[Ff]ast[Ss]erve[_\s]v?(\d{4}\.\d+)',
     'fastserve-ingest', 'new-features'),

    # ── Production Management ─────────────────────────────────────────────
    (r'[Pp]roduction.?[Mm]anagement[_\s]v?(\d{4}\.\d+)[_\s](?:What.?s.?New|New.?Features)',
     'production-management', 'new-features'),
    (r'[Pp]roduction.?[Mm]anagement[_\s]v?(\d{4}\.\d+)',
     'production-management', 'new-features'),

    # ── Analytics ─────────────────────────────────────────────────────────
    (r'[Mm]edia[Cc]entral.?[Aa]nalytics[_\s]v?(\d{4}\.\d+)',
     'analytics', 'new-features'),
]

# Filenames to intentionally skip (licensing tools, no product-version relevance)
SKIP_FILENAMES = {
    # FlexNet licensing tools — no product/version relevance
    'README_Avid_FlexNet_License_Server_Manager_v2025.5.pdf',
    'Avid_FlexNet_License_Server_Administration_Guide.pdf',
    'FlexNet_Device_Manager_for_Avid_v8.x.pdf',
    # Cross-product reference docs — no single version
    'Avid_Supported_Video_File_Formats.pdf',
    'MediaCentral_Compatibility_Matrix.pdf',
    'MediaCentral_Legacy_Matrix.pdf',
    # Licensing quick-start / utility guides
    'AvidNEXIS_Licensing_QSG_V2_October2025.pdf',
    'Avid_Benchmark_Utility_Guide_Feb2022.pdf',
    # Infrastructure / deployment guides with no product version
    'MCCUX_VMware_Best_Practices.pdf',
}


def detect_pdf_meta(filename):
    """
    Try to detect (product_key, version, doc_type) from a PDF filename.
    Returns None if no pattern matches or file is intentionally skipped.

    Handles two pattern formats:
      3-tuple: (regex, product_key, doc_type)         — m.group(1) is version
      4-tuple: (regex, product_key, doc_type, ver_fn) — ver_fn(m) returns version
    """
    name = os.path.basename(filename)

    # Intentional skips
    if name in SKIP_FILENAMES:
        return None

    for entry in FILENAME_PATTERNS:
        pattern, product_key, doc_type = entry[0], entry[1], entry[2]
        ver_fn = entry[3] if len(entry) == 4 else None

        m = re.search(pattern, name, re.IGNORECASE)
        if m:
            try:
                version = ver_fn(m) if ver_fn else m.group(1)
            except (IndexError, AttributeError):
                continue
            return product_key, version, doc_type
    return None


# ── KB page scraping ───────────────────────────────────────────────────────

def fetch_pdf_links(kb_url):
    """
    Fetch a KB documentation index page and return a list of
    (pdf_url, link_text) tuples for all PDF links found.
    """
    print(f"Fetching: {kb_url}", file=sys.stderr)
    headers = {'User-Agent': 'Mozilla/5.0 (compatible; AvidKB-Converter/1.0)'}

    try:
        resp = requests.get(kb_url, headers=headers, timeout=30)
        resp.raise_for_status()
    except requests.RequestException as e:
        print(f"Error fetching page: {e}", file=sys.stderr)
        sys.exit(1)

    soup = BeautifulSoup(resp.text, 'html.parser')
    base = urllib.parse.urlparse(kb_url)
    base_url = f"{base.scheme}://{base.netloc}"

    pdf_links = []
    seen = set()

    for tag in soup.find_all('a', href=True):
        href = tag['href']
        text = tag.get_text(strip=True)

        # Normalise URL
        if href.startswith('//'):
            href = f"https:{href}"
        elif href.startswith('/'):
            href = base_url + href
        elif not href.startswith('http'):
            href = urllib.parse.urljoin(kb_url, href)

        # Only PDF links
        if not (href.lower().endswith('.pdf') or
                'resources.avid.com' in href and '.pdf' in href.lower()):
            continue

        if href in seen:
            continue
        seen.add(href)
        pdf_links.append((href, text))

    return pdf_links


def download_pdf(url, dest_dir):
    """
    Download a PDF to dest_dir. Returns local file path, or None on failure.
    Skips download if file already exists.
    """
    filename = urllib.parse.unquote(os.path.basename(urllib.parse.urlparse(url).path))
    # Clean up any query string remnants
    filename = filename.split('?')[0]
    dest_path = os.path.join(dest_dir, filename)

    if os.path.exists(dest_path):
        print(f"  Already downloaded: {filename}", file=sys.stderr)
        return dest_path

    print(f"  Downloading: {filename}", file=sys.stderr)
    headers = {'User-Agent': 'Mozilla/5.0 (compatible; AvidKB-Converter/1.0)'}
    try:
        resp = requests.get(url, headers=headers, timeout=60, stream=True)
        resp.raise_for_status()
        with open(dest_path, 'wb') as f:
            for chunk in resp.iter_content(chunk_size=8192):
                f.write(chunk)
        size_kb = os.path.getsize(dest_path) // 1024
        print(f"  Saved: {filename} ({size_kb} KB)", file=sys.stderr)
        return dest_path
    except requests.RequestException as e:
        print(f"  Failed: {url} — {e}", file=sys.stderr)
        return None


# ── Main batch logic ───────────────────────────────────────────────────────

def run_batch(kb_url, kb_root, pdf_dir, doc_type_filter=None,
              version_filter=None, dry_run=False,
              list_only=False, skip_existing=False):

    os.makedirs(pdf_dir, exist_ok=True)

    # 1. Discover PDF links
    pdf_links = fetch_pdf_links(kb_url)
    print(f"\nFound {len(pdf_links)} PDF links on page.", file=sys.stderr)

    if not pdf_links:
        print("No PDF links found — check the URL or page structure.", file=sys.stderr)
        sys.exit(1)

    # 2. Detect metadata and apply filters
    candidates = []
    skipped_unrecognised = []

    for url, link_text in pdf_links:
        filename = urllib.parse.unquote(os.path.basename(urllib.parse.urlparse(url).path))
        meta = detect_pdf_meta(filename) or detect_pdf_meta(link_text)

        if meta is None:
            skipped_unrecognised.append((url, filename))
            continue

        product_key, version, doc_type = meta

        # Apply filters
        if doc_type_filter and doc_type not in doc_type_filter:
            continue
        if version_filter and version not in version_filter:
            continue

        # Check if already converted
        out_path = resolve_output_path(product_key, version, doc_type, kb_root)
        already_done = os.path.exists(out_path)

        candidates.append({
            'url': url,
            'filename': filename,
            'product_key': product_key,
            'version': version,
            'doc_type': doc_type,
            'out_path': out_path,
            'already_done': already_done,
            'link_text': link_text,
        })

    # 3. Report
    print(f"\n{'─'*60}")
    print(f"Actionable PDFs: {len(candidates)}")
    if skipped_unrecognised:
        print(f"Unrecognised (no product/version detected): {len(skipped_unrecognised)}")
    print(f"{'─'*60}")

    for c in candidates:
        status = "EXISTS" if c['already_done'] else "NEW"
        print(f"  [{status:6}] {c['product_key']} {c['version']} {c['doc_type']}")
        print(f"           {c['filename']}")

    if skipped_unrecognised:
        print(f"\nUnrecognised PDFs (not converted):")
        for url, fname in skipped_unrecognised:
            print(f"  {fname}")

    if list_only:
        return

    # 4. Process each candidate
    to_process = [c for c in candidates
                  if not (skip_existing and c['already_done'])]

    print(f"\nProcessing {len(to_process)} PDF(s)...\n")

    results = {'ok': [], 'skipped': [], 'failed': []}

    for c in to_process:
        print(f"── {c['product_key']} {c['version']} ({c['doc_type']}) ──")

        # Download
        if not dry_run:
            local_path = download_pdf(c['url'], pdf_dir)
            if local_path is None:
                results['failed'].append(c)
                continue
        else:
            local_path = os.path.join(pdf_dir, c['filename'])
            print(f"  [dry-run] Would download: {c['filename']}")

        # Convert
        try:
            if dry_run:
                print(f"  [dry-run] Would convert → {c['out_path']}")
                results['ok'].append(c)
                continue

            out_path, content = convert_pdf(
                local_path,
                c['product_key'],
                c['version'],
                c['doc_type'],
                kb_root=kb_root
            )
            os.makedirs(os.path.dirname(out_path), exist_ok=True)
            with open(out_path, 'w') as f:
                f.write(content)

            word_count = len([l for l in content.split('\n') if l.strip()])
            print(f"  ✓ Written: {os.path.relpath(out_path, kb_root)} ({word_count} lines)")
            results['ok'].append(c)

        except Exception as e:
            print(f"  ✗ Conversion failed: {e}")
            results['failed'].append(c)

    # 5. Summary
    print(f"\n{'═'*60}")
    print(f"Complete: {len(results['ok'])} converted, "
          f"{len(results['skipped'])} skipped, "
          f"{len(results['failed'])} failed")
    if results['failed']:
        print("Failed:")
        for c in results['failed']:
            print(f"  {c['product_key']} {c['version']} — {c['filename']}")
    print(f"{'═'*60}")


# ── CLI ────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(
        description="Batch convert Avid KB documentation PDFs to project-kb markdown",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__
    )
    parser.add_argument("url", help="Avid KB documentation index page URL")
    parser.add_argument("--kb-root",
                        default=os.path.expanduser("~/Desktop/avid-kb/project-kb"),
                        help="Root of project-kb")
    parser.add_argument("--pdf-dir",
                        default=os.path.expanduser("~/Desktop/avid-kb/source-pdfs"),
                        help="Folder to save downloaded PDFs")
    parser.add_argument("--doc-types", nargs="*",
                        choices=["new-features","hardware-guide","readme","release-notes",
                                 "admin-guide","editing-guide","fx-guide","install-guide","vdi-guide",
                                 "setup-guide","client-guide","network-guide","vfs-guide",
                                 "cloud-guide","integration-guide","users-guide","process-guide",
                                 "third-party-guide","mobile-guide","apm-readme"],
                        help="Only process these document types")
    parser.add_argument("--versions", nargs="*",
                        help="Only process these versions e.g. --versions 2025.12 2025.10")
    parser.add_argument("--dry-run", action="store_true",
                        help="Show what would happen without downloading or writing")
    parser.add_argument("--list-only", action="store_true",
                        help="List discovered PDFs without downloading")
    parser.add_argument("--skip-existing", action="store_true",
                        help="Skip PDFs that already have a converted file in project-kb")

    args = parser.parse_args()

    run_batch(
        kb_url=args.url,
        kb_root=args.kb_root,
        pdf_dir=args.pdf_dir,
        doc_type_filter=args.doc_types,
        version_filter=args.versions,
        dry_run=args.dry_run,
        list_only=args.list_only,
        skip_existing=args.skip_existing,
    )


if __name__ == "__main__":
    main()
