#!/bin/bash
# interplay_process_pdfs.sh
# Process Avid Interplay | Production ReadMe PDFs into project-kb.
# Run from ~/Desktop/avid-knowledge-base after downloading source PDFs.
#
# Usage:
#   bash interplay_process_pdfs.sh           # skip already-populated files
#   bash interplay_process_pdfs.sh --force   # overwrite all

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PY=python3
SP="$SCRIPT_DIR/source-pdfs"
KB="$SCRIPT_DIR/project-kb"
FORCE=0
[[ "${1:-}" == "--force" ]] && FORCE=1

TOTAL=0; PROCESSED=0; SKIPPED=0; MISSING=0; FAILED=0

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

echo "══ Avid Interplay | Production PDF processing ═══════════════════"
echo "  source-pdfs: $SP"
echo "  kb-root:     $KB"
echo "  force:       $FORCE"
echo ""

# ─── V3.x era ─────────────────────────────────────────────────────────────────
echo "── V3.x era ─────────────────────────────────────────────────────"
run_out "README_Interplay_Production_V3_3.pdf" \
    "interplay-production/versions/3.3/readme.md" \
    "interplay-production" "3.3" "readme"
run_out "README_Interplay_Production_V3_4.pdf" \
    "interplay-production/versions/3.4/readme.md" \
    "interplay-production" "3.4" "readme"
run_out "README_Interplay_Production_V3_6.pdf" \
    "interplay-production/versions/3.6/readme.md" \
    "interplay-production" "3.6" "readme"
run_out "README_Interplay_Production_V3_6_1.pdf" \
    "interplay-production/versions/3.6.1/readme.md" \
    "interplay-production" "3.6.1" "readme"
run_out "README_Interplay_Production_V3_7.pdf" \
    "interplay-production/versions/3.7/readme.md" \
    "interplay-production" "3.7" "readme"

# ─── Year-based era ───────────────────────────────────────────────────────────
echo ""
echo "── Year-based era ───────────────────────────────────────────────"
run_out "README_Interplay_Production_V2017_2.pdf" \
    "interplay-production/versions/2017.2/readme.md" \
    "interplay-production" "2017.2" "readme"
run_out "ReadMe_Interplay_Production_V2018_9.pdf" \
    "interplay-production/versions/2018.9/readme.md" \
    "interplay-production" "2018.9" "readme"
run_out "ReadMe_Interplay_Production_V2018_11.pdf" \
    "interplay-production/versions/2018.11/readme.md" \
    "interplay-production" "2018.11" "readme"

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
  echo "  ⚠ Download missing PDFs via working/interplay_pdf_download_helper.html"
  echo "    then move them to source-pdfs/ and re-run."
fi
if [[ $FAILED -eq 0 && $MISSING -eq 0 ]]; then
  echo ""
  echo "  ✓ All conversions completed successfully."
fi
