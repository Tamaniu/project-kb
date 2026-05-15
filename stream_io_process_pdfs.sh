#!/bin/bash
# stream_io_process_pdfs.sh
# Process Stream IO PDFs into project-kb.
# Scope: v2025.2, v2025.6, v2025.10, v2026.3 (full doc sets)
#        Stream IO Plugin for Command readmes (v2024.7.1–v2024.10.4)
#
# URLs confirmed from Avid KB page on 15/05/2026:
#   https://kb.avid.com/pkb/articles/en_US/readme/Avid-Stream-IO-Documentation
# Base: https://resources.avid.com/SupportFiles/attach/AvidStreamIO/
#
# Run from ~/Desktop/avid-knowledge-base after downloading source PDFs:
#   bash stream_io_process_pdfs.sh           # skip already-populated files
#   bash stream_io_process_pdfs.sh --force   # overwrite all

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

echo "══ Avid Stream IO PDF processing ════════════════════════════════"
echo "  source-pdfs: $SP"
echo "  kb-root:     $KB"
echo "  force:       $FORCE"
echo ""

# ─── v2026.3 ──────────────────────────────────────────────────────────────────
echo "── v2026.3 ───────────────────────────────────────────────────────"
run_out "Avid_Stream_IO_ReadMe_v2026.3.1.pdf" \
    "stream-io/versions/2026.3.1/readme.md" \
    "stream-io" "2026.3.1" "readme"
run_out "Avid_Stream_IO_UG_2026_3.pdf" \
    "stream-io/versions/2026.3/users-guide.md" \
    "stream-io" "2026.3" "users-guide"
run_out "Avid_Stream_IO_HG_v2026_3.pdf" \
    "stream-io/versions/2026.3/hardware-guide.md" \
    "stream-io" "2026.3" "hardware-guide"
run_out "FS_Gen2_Conversion_Guide_v2026_3.pdf" \
    "stream-io/versions/2026.3/conversion-guide.md" \
    "stream-io" "2026.3" "conversion-guide"

# ─── v2025.10 ─────────────────────────────────────────────────────────────────
echo ""
echo "── v2025.10 ──────────────────────────────────────────────────────"
# Patch readme — 2025.10.2; base 2025.10/readme.md already in KB
run_out "Avid_Stream_IO_ReadMe_v2025.10.2.pdf" \
    "stream-io/versions/2025.10.2/readme.md" \
    "stream-io" "2025.10.2" "readme"
run_out "Avid_Stream_IO_UG_2025_10.pdf" \
    "stream-io/versions/2025.10/users-guide.md" \
    "stream-io" "2025.10" "users-guide"
run_out "Avid_Stream_IO_HG_v2025_10.pdf" \
    "stream-io/versions/2025.10/hardware-guide.md" \
    "stream-io" "2025.10" "hardware-guide"
run_out "FS_Gen2_Conversion_Guide_v2025_10.pdf" \
    "stream-io/versions/2025.10/conversion-guide.md" \
    "stream-io" "2025.10" "conversion-guide"

# ─── v2025.6 ──────────────────────────────────────────────────────────────────
echo ""
echo "── v2025.6 ───────────────────────────────────────────────────────"
run_out "Avid_Stream_IO_ReadMe_v2025.6.pdf" \
    "stream-io/versions/2025.6/readme.md" \
    "stream-io" "2025.6" "readme"
run_out "Avid_Stream_IO_UG_2025_6.pdf" \
    "stream-io/versions/2025.6/users-guide.md" \
    "stream-io" "2025.6" "users-guide"
run_out "Avid_Stream_IO_HG_v2025_6.pdf" \
    "stream-io/versions/2025.6/hardware-guide.md" \
    "stream-io" "2025.6" "hardware-guide"
run_out "FS_Gen2_Conversion_Guide_v2025_6.pdf" \
    "stream-io/versions/2025.6/conversion-guide.md" \
    "stream-io" "2025.6" "conversion-guide"

# ─── v2025.2 ──────────────────────────────────────────────────────────────────
echo ""
echo "── v2025.2 ───────────────────────────────────────────────────────"
# Patch readme — 2025.2.1
run_out "Avid_Stream_IO_ReadMe_v2025.2.1.pdf" \
    "stream-io/versions/2025.2.1/readme.md" \
    "stream-io" "2025.2.1" "readme"
run_out "Avid_Stream_IO_UG_2025_2.pdf" \
    "stream-io/versions/2025.2/users-guide.md" \
    "stream-io" "2025.2" "users-guide"
run_out "Avid_Stream_IO_HG_v2025_2.pdf" \
    "stream-io/versions/2025.2/hardware-guide.md" \
    "stream-io" "2025.2" "hardware-guide"
run_out "FS_Gen2_Conversion_Guide_v2025_2.pdf" \
    "stream-io/versions/2025.2/conversion-guide.md" \
    "stream-io" "2025.2" "conversion-guide"

# ─── Stream IO Plugin for Command ─────────────────────────────────────────────
echo ""
echo "── Stream IO Plugin for Command ──────────────────────────────────"
run_out "Stream_IO_Plugin_for_Command_ReadMe_v2024.10.4.pdf" \
    "stream-io/plugin-for-command/versions/2024.10.4/readme.md" \
    "stream-io" "2024.10.4" "readme"
run_out "Stream_IO_Plugin_for_Command_ReadMe_v2024.10.3.pdf" \
    "stream-io/plugin-for-command/versions/2024.10.3/readme.md" \
    "stream-io" "2024.10.3" "readme"
run_out "Stream_IO_Plugin_for_Command_ReadMe_v2024.10.2.pdf" \
    "stream-io/plugin-for-command/versions/2024.10.2/readme.md" \
    "stream-io" "2024.10.2" "readme"
run_out "Stream_IO_Plugin_for_Command_ReadMe_v2024.10.1.pdf" \
    "stream-io/plugin-for-command/versions/2024.10.1/readme.md" \
    "stream-io" "2024.10.1" "readme"
run_out "Stream_IO_Plugin_for_Command_ReadMe_v2024.7.1.pdf" \
    "stream-io/plugin-for-command/versions/2024.7.1/readme.md" \
    "stream-io" "2024.7.1" "readme"

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
  echo "  ⚠ Download missing PDFs via working/stream_io_download_helper.html"
  echo "    then move them to source-pdfs/ and re-run."
fi
if [[ $FAILED -eq 0 && $MISSING -eq 0 ]]; then
  echo ""
  echo "  ✓ All conversions completed successfully."
fi
