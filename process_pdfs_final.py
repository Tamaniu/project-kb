#!/usr/bin/env python3
"""
PDF batch processor for Avid KB
Converts PDFs in source-pdfs/ to markdown using avid_pdf_to_md.py
Applies intelligent filename pattern matching to extract metadata
"""

import os
import re
import subprocess
import sys
from pathlib import Path

# PDF filename patterns -> (product_key, doc_type)
PDF_PATTERNS = [
    # MediaCentral Newsroom Management
    (r'MCNM_v([\d.]+)_ReadMe', 'newsroom-management', 'readme'),
    (r'MCNM-([\d.]+)-Installation-Quick-Guide', 'newsroom-management', 'install-quick-guide'),
    (r'MCNM-AG-([\d.]+)', 'newsroom-management', 'admin-guide'),
    (r'MCNM-SCG-([\d.]+)', 'newsroom-management', 'setup-config-guide'),
    (r'MCNM-Enterprise-Virtualization-Ref-([\d]+)-([\d]+)', 'newsroom-management', 'virtualization-guide'),
    (r'MCNM-FTP-FTPS-ServerProtocol-([\d.]+)', 'newsroom-management', 'network-guide'),
    (r'MC-MOSGWv([\d.]+)-ReadMe', 'newsroom-management', 'readme'),
    (r'MCMOSGWv([\d.]+)-ReadMe', 'newsroom-management', 'readme'),
    (r'MOSGwy-Ops-v([\d.]+)', 'newsroom-management', 'setup-config-guide'),
    (r'MOSgwy_([\d.]+)_SCG', 'newsroom-management', 'setup-config-guide'),
    (r'DR-v([\d.]+)-ReadMe', 'newsroom-management', 'readme'),
    (r'MCDR-IAG-v([\d.]+)', 'newsroom-management', 'install-admin-guide'),
    (r'NSML-Specs-v([\d]+)-([\d.]+)', 'newsroom-management', 'readme'),
    (r'iNEWS-Enterprise-Virtualization-AG-([\d]+)', 'newsroom-management', 'virtualization-guide'),

    # MediaCentral Production Management
    (r'MC[_\-]Command[_v]+([\d.]+)_ReadMe', 'production-management', 'readme'),
    (r'MC_Command_v([\d.]+)_ReadMe', 'production-management', 'readme'),
    (r'MCPM_([\d_]+)_ReadMe', 'production-management', 'readme'),

    # MediaCentral Cloud UX
    (r'MCCUX_([\d_]+)_ReadMe', 'cloud-ux', 'readme'),

    # Pro Tools
    (r'Pro_Tools_([\d]+\.\d+)_Read_Me-Mac', 'pro-tools', 'readme-mac'),
    (r'Pro_Tools_([\d]+\.\d+)_Read_Me-Win', 'pro-tools', 'readme-win'),
    (r'Pro_Tools_Reference_Guide_([\d]+\.\d+)', 'pro-tools', 'reference-guide'),
    (r'Pro_Tools_Shortcuts_([\d]+\.\d+)', 'pro-tools', 'shortcuts-guide'),
    (r'Whats_New_in_Pro_Tools_([\d]+\.\d+)', 'pro-tools', 'new-features'),
    (r'Whats_New_in_Pro_Tools_([\d]+\.\d+)_JP', 'pro-tools', 'new-features-jp'),
    (r'Pro_Tools_Quick_Reference_Guide', 'pro-tools', 'quick-reference-guide'),
    (r'Using_Pro_Tools_Sketch_Guide', 'pro-tools', 'sketch-guide'),
    (r'Audio_Plug-Ins_Guide_([\d]+\.\d+)', 'pro-tools', 'audio-plugins-guide'),
    (r'Audio_and_MIDI_Plugins_Guide_([\d]+\.\d+)', 'pro-tools', 'audio-midi-plugins-guide'),
]

def extract_metadata(filename):
    """Extract product, version, and doc-type from PDF filename."""
    for pattern, product, doc_type in PDF_PATTERNS:
        match = re.search(pattern, filename)
        if match:
            if len(match.groups()) > 1:
                version = match.group(2)
            elif len(match.groups()) == 1:
                version = match.group(1)
            else:
                # No version in filename — use 'current' as default
                version = 'current'
            version = version.replace('_', '.')
            return product, version, doc_type
    return None, None, None

def process_pdfs(dry_run=False):
    """Process all PDFs in source-pdfs/ folder."""
    source_dir = Path('source-pdfs')
    if not source_dir.exists():
        print(f"Error: {source_dir} folder not found")
        return

    pdf_files = sorted(source_dir.glob('*.pdf'))
    if not pdf_files:
        print("No PDFs found in source-pdfs/")
        return

    processed = 0
    skipped = 0
    failed = 0

    print(f"\n{'='*70}")
    print(f"PDF Batch Processing — {len(pdf_files)} files found")
    print(f"{'='*70}\n")

    for pdf_file in pdf_files:
        filename = pdf_file.name
        product, version, doc_type = extract_metadata(filename)

        if not product:
            print(f"⊘ SKIPPED: {filename} (no pattern match)")
            skipped += 1
            continue

        print(f"→ Processing: {filename}")
        print(f"  Product: {product} | Version: {version} | Type: {doc_type}")

        if dry_run:
            print(f"  [DRY RUN] Would convert to: project-kb/mediacentral/{product}/versions/{version}/{doc_type}.md\n")
            processed += 1
            continue

        cmd = [
            'python3', 'avid_pdf_to_md.py',
            str(pdf_file),
            '--product', product,
            '--version', version,
            '--doc-type', doc_type,
            '--kb-root', 'project-kb'
        ]

        try:
            result = subprocess.run(cmd, capture_output=True, text=True)
            if result.returncode == 0:
                for line in result.stdout.split('\n'):
                    if 'Written:' in line:
                        output_path = line.split('Written:')[1].strip()
                        print(f"  ✓ {output_path}\n")
                        break
                processed += 1
            else:
                print(f"  ✗ Error: {result.stderr}\n")
                failed += 1
        except Exception as e:
            print(f"  ✗ Exception: {e}\n")
            failed += 1

    print(f"{'='*70}")
    print(f"SUMMARY: {processed} processed | {skipped} skipped | {failed} failed")
    print(f"{'='*70}\n")

if __name__ == '__main__':
    dry_run = '--dry-run' in sys.argv
    if dry_run:
        print("DRY RUN MODE - no files will be converted")
    process_pdfs(dry_run=dry_run)
