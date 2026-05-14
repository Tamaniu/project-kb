#!/bin/bash
# mccux_topup_process_pdfs.sh
# Top-up processing for MediaCentral | Cloud UX v2025 gaps identified 14/05/2026:
#   1. ReadMe v2025.10.5 (missing patch readme)
#   2. ReadMe v2025.6.0  (replace misfiled 3rd-party tools readme)
#   3. Process Modeler User's Guide v2025.6
#   4. Process Modeler User's Guide v2025.10
#
# Run from ~/Desktop/avid-knowledge-base after downloading source PDFs:
#   bash mccux_topup_process_pdfs.sh           # skip already-populated files
#   bash mccux_topup_process_pdfs.sh --force   # overwrite all

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

echo "══ MediaCentral | Cloud UX top-up processing ══"
echo "  source-pdfs: $SP"
echo "  kb-root:     $KB"
echo "  force:       $FORCE"
echo ""

# ─── Patch readme: 2025.10.5 ──────────────────────────────────────────────────
echo "── Patch readmes ────────────────────────────────────────────────────"
run_out "MCCUX_2025_10_5_ReadMe.pdf" \
    "mediacentral/cloud-ux/versions/2025.10.5/readme.md" \
    "cloud-ux" "2025.10.5" "readme"

# ─── Base readme replacement: 2025.6.0 ────────────────────────────────────────
# The existing 2025.6.0/readme.md contains the Panel for 3rd Party Creative Tools
# readme (misfiled). This run overwrites it with the correct MCCUX system readme.
# --force mode required to overwrite the misfiled content (>20 lines).
echo ""
echo "── Base readme replacement (misfiled → correct MCCUX system readme) ─"
if [[ $FORCE -eq 0 ]]; then
  echo "  NOTE: 2025.6.0/readme.md is a known misfiling (contains 3rd-party"
  echo "        tools content). Run with --force to overwrite with the correct"
  echo "        MCCUX system readme once MCCUX_2025_6_0_ReadMe.pdf is downloaded."
  echo "  SKIP  (re-run with --force to replace)"
  SKIPPED=$((SKIPPED+1))
  TOTAL=$((TOTAL+1))
else
  run_out "MCCUX_2025_6_0_ReadMe.pdf" \
      "mediacentral/cloud-ux/versions/2025.6.0/readme.md" \
      "cloud-ux" "2025.6.0" "readme"
fi

# ─── Process Modeler User's Guides ────────────────────────────────────────────
# Filenames confirmed from live Avid KB page on 14/05/2026.
echo ""
echo "── Process Modeler User's Guides ────────────────────────────────────"
run_out "MCCUX_2025_6_0_ProcessModeler.pdf" \
    "mediacentral/cloud-ux/versions/2025.6/process-modeler-guide.md" \
    "cloud-ux" "2025.6" "process-modeler-guide"
run_out "MCCUX_2025_10_0_ProcessModeler.pdf" \
    "mediacentral/cloud-ux/versions/2025.10/process-modeler-guide.md" \
    "cloud-ux" "2025.10" "process-modeler-guide"

# ─── Stub re-processing (requires --force) ────────────────────────────────────
# Install guides and User's guides failed conversion previously (12-line stubs).
# Re-run with --force after re-downloading to attempt again.
echo ""
echo "── Stub overwrites (skipped unless --force) ─────────────────────────"
run_out "MCCUX_2025_6_0_Install_Guide.pdf" \
    "mediacentral/cloud-ux/versions/2025.6.0/install-guide.md" \
    "cloud-ux" "2025.6.0" "install-guide"
run_out "MCCUX_2025_6_0_Users_Guide.pdf" \
    "mediacentral/cloud-ux/versions/2025.6.0/users-guide.md" \
    "cloud-ux" "2025.6.0" "users-guide"
run_out "MCCUX_2025_10_0_Install_Guide.pdf" \
    "mediacentral/cloud-ux/versions/2025.10.0/install-guide.md" \
    "cloud-ux" "2025.10.0" "install-guide"
run_out "MCCUX_2025_10_0_Users_Guide.pdf" \
    "mediacentral/cloud-ux/versions/2025.10.0/users-guide.md" \
    "cloud-ux" "2025.10.0" "users-guide"

# ─── Optional scope additions ─────────────────────────────────────────────────
# URLs confirmed from Avid KB page on 14/05/2026.
# Includes: Sync Admin Guide v2024.10, 3P Tools combined guide v2025.6,
#   Story Designer App UIG, Distribution Service ReadMe.
#
# NOTE: MCCUX_2025_6_0_3P_Tools_Guide.pdf replaces the 12-line stub at
#   versions/2025.6.0/third-party-guide.md (original stub was misfiled).
#   After successful conversion, delete the stub:
#     rm project-kb/mediacentral/cloud-ux/versions/2025.6.0/third-party-guide.md
echo ""
echo "── Optional scope additions ─────────────────────────────────────────────"
run_out "MCCUX_2024_10_0_Sync_Admin_Guide.pdf" \
    "mediacentral/sync/versions/2024.10/admin-guide.md" \
    "cloud-ux" "2024.10" "admin-guide"
run_out "MCCUX_2025_6_0_3P_Tools_Guide.pdf" \
    "mediacentral/cloud-ux/plugins/3rd-party-tools/2025.6-guide.md" \
    "cloud-ux" "2025.6" "third-party-guide"
run_out "MCCUX_StoryDesigner_App_UIG.pdf" \
    "mediacentral/cloud-ux/plugins/story-designer/guide.md" \
    "cloud-ux" "current" "users-guide"
run_out "MCCUX_MCDS_ReadMe.pdf" \
    "mediacentral/cloud-ux/distribution-service/readme.md" \
    "cloud-ux" "current" "readme"

# ─── Summary ──────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════════════════════"
echo "  Total:     $TOTAL"
echo "  Processed: $PROCESSED"
echo "  Skipped:   $SKIPPED  (already have content, or awaiting --force)"
echo "  Missing:   $MISSING  (PDF not in source-pdfs/)"
echo "  Failed:    $FAILED"
if [[ $MISSING -gt 0 ]]; then
  echo ""
  echo "  ⚠ Download missing PDFs via working/mccux_topup_download_helper.html"
  echo "    then move them to source-pdfs/ and re-run."
fi
if [[ $FAILED -eq 0 && $MISSING -eq 0 ]]; then
  echo ""
  echo "  ✓ All conversions completed successfully."
fi
