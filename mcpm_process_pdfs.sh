#!/bin/bash
# mcpm_process_pdfs.sh
# Process MediaCentral | Production Management patch ReadMe PDFs into project-kb.
# Covers missing patch/point-release readmes: 2021.x, 2022.3.x, 2023.7.x, 2024.10.x
# Run from ~/Desktop/avid-knowledge-base after downloading source PDFs.
#
# Usage:
#   bash mcpm_process_pdfs.sh           # skip already-populated files
#   bash mcpm_process_pdfs.sh --force   # overwrite all

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

echo "══ MediaCentral | Production Management patch ReadMe processing ══"
echo "  source-pdfs: $SP"
echo "  kb-root:     $KB"
echo "  force:       $FORCE"
echo ""

# ─── 2021.x ───────────────────────────────────────────────────────────────────
echo "── 2021.x ───────────────────────────────────────────────────────"
run_out "ReadMe_Production_Management_v2021.3.pdf" \
    "mediacentral/production-management/versions/2021.3/readme.md" \
    "mediacentral/production-management" "2021.3" "readme"
run_out "ReadMe_Production_Management_v2021.11.pdf" \
    "mediacentral/production-management/versions/2021.11/readme.md" \
    "mediacentral/production-management" "2021.11" "readme"

# ─── 2022.3.x patches ─────────────────────────────────────────────────────────
echo ""
echo "── 2022.3.x patches ─────────────────────────────────────────────"
run_out "Readme_Production_Management_V2022.3.1.pdf" \
    "mediacentral/production-management/versions/2022.3.1/readme.md" \
    "mediacentral/production-management" "2022.3.1" "readme"
run_out "Readme_Production_Management_V2022.3.2.pdf" \
    "mediacentral/production-management/versions/2022.3.2/readme.md" \
    "mediacentral/production-management" "2022.3.2" "readme"
run_out "Readme_Production_Management_V2022.3.4.pdf" \
    "mediacentral/production-management/versions/2022.3.4/readme.md" \
    "mediacentral/production-management" "2022.3.4" "readme"
run_out "Readme_Production_Management_V2022.3.5.pdf" \
    "mediacentral/production-management/versions/2022.3.5/readme.md" \
    "mediacentral/production-management" "2022.3.5" "readme"

# ─── 2023.7.x patches ─────────────────────────────────────────────────────────
echo ""
echo "── 2023.7.x patches ─────────────────────────────────────────────"
run_out "MCPM_2023_7_0_ReadMe.pdf" \
    "mediacentral/production-management/versions/2023.7.0/readme.md" \
    "mediacentral/production-management" "2023.7.0" "readme"
run_out "MCPM_2023_7_1_ReadMe.pdf" \
    "mediacentral/production-management/versions/2023.7.1/readme.md" \
    "mediacentral/production-management" "2023.7.1" "readme"
run_out "MCPM_2023_7_2_ReadMe.pdf" \
    "mediacentral/production-management/versions/2023.7.2/readme.md" \
    "mediacentral/production-management" "2023.7.2" "readme"
run_out "MCPM_2023_7_3_ReadMe.pdf" \
    "mediacentral/production-management/versions/2023.7.3/readme.md" \
    "mediacentral/production-management" "2023.7.3" "readme"

# ─── 2024.10.x patches ────────────────────────────────────────────────────────
echo ""
echo "── 2024.10.x patches ────────────────────────────────────────────"
run_out "MCPM_2024_10_0_ReadMe.pdf" \
    "mediacentral/production-management/versions/2024.10.0/readme.md" \
    "mediacentral/production-management" "2024.10.0" "readme"
run_out "MCPM_2024_10_1_ReadMe.pdf" \
    "mediacentral/production-management/versions/2024.10.1/readme.md" \
    "mediacentral/production-management" "2024.10.1" "readme"
run_out "MCPM_2024_10_2_ReadMe.pdf" \
    "mediacentral/production-management/versions/2024.10.2/readme.md" \
    "mediacentral/production-management" "2024.10.2" "readme"
run_out "MCPM_2024_10_4_ReadMe.pdf" \
    "mediacentral/production-management/versions/2024.10.4/readme.md" \
    "mediacentral/production-management" "2024.10.4" "readme"

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
  echo "  ⚠ Download missing PDFs via working/mcpm_pdf_download_helper.html"
  echo "    then move them to source-pdfs/ and re-run."
fi
if [[ $FAILED -eq 0 && $MISSING -eq 0 ]]; then
  echo ""
  echo "  ✓ All conversions completed successfully."
fi
