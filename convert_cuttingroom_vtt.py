#!/usr/bin/env python3
import re
from pathlib import Path

SOURCE_DIR = Path.home() / "Desktop/avid-kb/cuttingroom-transcripts"
OUTPUT_DIR = Path.home() / "Desktop/avid-kb/project-kb/transcripts/workflows/cuttingroom"

def categorise(title):
    t = title.lower()
    if t.startswith("edit the story") or t.startswith("editing"):
        return "editing"
    elif t.startswith("graphics"):
        return "graphics"
    elif t.startswith("reporter"):
        return "reporter"
    elif t.startswith("integration"):
        return "integrations"
    elif t.startswith("settings") or t.startswith("user rol"):
        return "settings"
    elif any(t.startswith(s) for s in ["storage","backblaze","dropbox","google drive","wasabi","storj"]):
        return "storage"
    elif t.startswith("live"):
        return "live"
    elif t.startswith("keyboard"):
        return "keyboard-shortcuts"
    elif t.startswith("guided"):
        return "guided"
    elif any(t.startswith(s) for s in ["adjust audio","mark a segment"]):
        return "editing"
    elif any(t.startswith(s) for s in ["dealing with","deleting media","previewing","searching for","uploading"]):
        return "media-management"
    else:
        return "overview"

def clean_vtt(vtt_text):
    lines = vtt_text.splitlines()
    cleaned = []
    for line in lines:
        if line.startswith("WEBVTT") or line.startswith("Kind:") or line.startswith("Language:"):
            continue
        if re.match(r'^\d{2}:\d{2}:\d{2}[\.,]\d{3}\s*-->', line):
            continue
        line = re.sub(r'<\d{2}:\d{2}:\d{2}\.\d{3}>', '', line)
        line = re.sub(r'</?c>', '', line)
        cleaned.append(line.strip())
    text = "\n".join(cleaned)
    text = re.sub(r'\n{3,}', '\n\n', text)
    lines = text.splitlines()
    deduped = []
    for line in lines:
        if not deduped or line != deduped[-1]:
            deduped.append(line)
    return "\n".join(deduped).strip()

def slugify(title):
    slug = title.lower()
    slug = re.sub(r'[^a-z0-9\s-]', '', slug)
    slug = re.sub(r'\s+', '-', slug.strip())
    return re.sub(r'-+', '-', slug)

OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
converted = skipped = 0

for vtt_file in sorted(SOURCE_DIR.glob("*.en.vtt")):
    title = re.sub(r'\.en\.vtt$', '', vtt_file.name)
    category = categorise(title)
    slug = slugify(title)
    body = clean_vtt(vtt_file.read_text(encoding='utf-8'))
    if not body.strip():
        print(f"  SKIP (empty): {title}")
        skipped += 1
        continue
    front_matter = (
        "---\n"
        "product: CuttingRoom\n"
        "product-area: workflows\n"
        f"category: {category}\n"
        "doc-type: tutorial-transcript\n"
        "source: youtube\n"
        "channel: \"@cuttingroomeditor\"\n"
        "confidentiality: public\n"
        "date-added: 17/04/2026\n"
        "status: current\n"
        f"feature-tags: [{category}, cuttingroom, workflow]\n"
        "---\n\n"
        f"# {title}\n\n"
    )
    (OUTPUT_DIR / f"{slug}.md").write_text(front_matter + body + "\n", encoding='utf-8')
    print(f"  OK [{category:20s}]: {title}")
    converted += 1

print(f"\nDone. {converted} converted, {skipped} skipped.")
print(f"Output: {OUTPUT_DIR}")
