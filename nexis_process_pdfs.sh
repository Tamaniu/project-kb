#!/bin/bash
# nexis_process_pdfs.sh
# Reprocess empty Nexis PDF-based stub files in project-kb.
# Run from ~/Desktop/avid-knowledge-base after downloading source PDFs.
#
# Usage:
#   bash nexis_process_pdfs.sh           # skip already-populated files
#   bash nexis_process_pdfs.sh --force   # overwrite all

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PY=python3
SP="$SCRIPT_DIR/source-pdfs"
KB="$SCRIPT_DIR/project-kb"
FORCE=0
[[ "${1:-}" == "--force" ]] && FORCE=1

TOTAL=0; PROCESSED=0; SKIPPED=0; MISSING=0; FAILED=0

run() {
  local pdf="$1" product="$2" version="$3" doctype="$4"
  TOTAL=$((TOTAL+1))

  if [[ ! -f "$SP/$pdf" ]]; then
    echo "  MISSING  $pdf"
    MISSING=$((MISSING+1))
    return
  fi

  # Check if output already has real content (>20 lines = already processed)
  local outpath
  outpath=$($PY "$SCRIPT_DIR/avid_pdf_to_md.py" "$SP/$pdf" \
    --product "$product" --version "$version" --doc-type "$doctype" \
    --kb-root "$KB" --dry-run 2>/dev/null | tail -1 || echo "")

  # Use the target path from the existing stub if we know it
  # (dry-run just prints the path it would write to)
  if [[ $FORCE -eq 0 && -n "$outpath" && -f "$KB/$outpath" ]]; then
    local lines
    lines=$(wc -l < "$KB/$outpath" 2>/dev/null || echo 0)
    if [[ $lines -gt 20 ]]; then
      echo "  SKIP     $pdf  ($lines lines already)"
      SKIPPED=$((SKIPPED+1))
      return
    fi
  fi

  echo -n "  PROCESS  $pdf  → "
  local result
  if result=$($PY "$SCRIPT_DIR/avid_pdf_to_md.py" "$SP/$pdf" \
      --product "$product" --version "$version" --doc-type "$doctype" \
      --kb-root "$KB" 2>&1 | tail -1); then
    echo "$result"
    PROCESSED=$((PROCESSED+1))
  else
    echo "FAILED"
    FAILED=$((FAILED+1))
  fi
}

# run_out: use explicit output path override (for files with non-standard doc-types)
run_out() {
  local pdf="$1" outpath="$2" product="$3" version="$4" doctype="$5"
  TOTAL=$((TOTAL+1))

  if [[ ! -f "$SP/$pdf" ]]; then
    echo "  MISSING  $pdf"
    MISSING=$((MISSING+1))
    return
  fi

  if [[ $FORCE -eq 0 && -f "$KB/$outpath" ]]; then
    local lines
    lines=$(wc -l < "$KB/$outpath" 2>/dev/null || echo 0)
    if [[ $lines -gt 20 ]]; then
      echo "  SKIP     $pdf  ($lines lines already)"
      SKIPPED=$((SKIPPED+1))
      return
    fi
  fi

  echo -n "  PROCESS  $pdf  → "
  local result
  if result=$($PY "$SCRIPT_DIR/avid_pdf_to_md.py" "$SP/$pdf" \
      --product "$product" --version "$version" --doc-type "$doctype" \
      --kb-root "$KB" --output "$KB/$outpath" 2>&1 | tail -1); then
    echo "$result"
    PROCESSED=$((PROCESSED+1))
  else
    echo "FAILED"
    FAILED=$((FAILED+1))
  fi
}

echo "══ Avid NEXIS PDF reprocessing ══════════════════════════════════"
echo "  source-pdfs: $SP"
echo "  kb-root:     $KB"
echo "  force:       $FORCE"
echo ""

# ─── 2025.10.0 ────────────────────────────────────────────────────────────────
echo "── 2025.10.0 ────────────────────────────────────────────────────"
run "AvidNEXIS_2025_10_0_Administration_Guide.pdf" \
    "nexis" "2025.10.0" "admin-guide"
run_out "AvidNEXIS_2025_10_0_Client_Guide.pdf" \
    "nexis/versions/2025.10.0/client-guide.md" \
    "nexis" "2025.10.0" "client-guide"
run_out "AvidNEXIS_2025_10_0_Setup_and_Maintenance_Guide.pdf" \
    "nexis/versions/2025.10.0/setup-guide.md" \
    "nexis" "2025.10.0" "setup-guide"
# Integration guide URL unconfirmed — include with fallback to MISSING if absent
run_out "AvidNEXIS_2025_10_0_Integration_Guide.pdf" \
    "nexis/versions/2025.10.0/integration-guide.md" \
    "nexis" "2025.10.0" "integration-guide"

# ─── 2025.5.0 ─────────────────────────────────────────────────────────────────
echo ""
echo "── 2025.5.0 ─────────────────────────────────────────────────────"
run_out "AvidNEXIS_2025_5_0_Network_Switch_Guide.pdf" \
    "nexis/versions/2025.5.0/network-guide.md" \
    "nexis" "2025.5.0" "network-guide"

# ─── 2024.10.0 ────────────────────────────────────────────────────────────────
echo ""
echo "── 2024.10.0 ────────────────────────────────────────────────────"
run_out "AvidNEXIS_2024_10_0_VFS_Gateway_Guide.pdf" \
    "nexis/versions/2024.10.0/vfs-guide.md" \
    "nexis" "2024.10.0" "vfs-guide"

# ─── Summary ──────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════════════════"
echo "  Total:     $TOTAL"
echo "  Processed: $PROCESSED"
echo "  Skipped:   $SKIPPED  (already have content)"
echo "  Missing:   $MISSING  (PDF not in source-pdfs/)"
echo "  Failed:    $FAILED"
if [[ $MISSING -gt 0 ]]; then
  echo ""
  echo "  ⚠ Download missing PDFs via working/nexis_pdf_download_helper.html"
  echo "    then move them to source-pdfs/ and re-run."
fi
if [[ $FAILED -eq 0 && $MISSING -eq 0 ]]; then
  echo ""
  echo "  ✓ All conversions completed successfully."
fi
