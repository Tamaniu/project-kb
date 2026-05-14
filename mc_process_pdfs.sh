#!/usr/bin/env bash
# mc_process_pdfs.sh
# Converts downloaded Media Composer PDFs to markdown via avid_pdf_to_md.py.
#
# Run from ~/Desktop/avid-knowledge-base AFTER mc_download_pdfs.sh:
#   bash mc_process_pdfs.sh
#
# Optional: pass --dry-run to print commands without executing.
# Optional: pass --skip-large to skip Editing/FX guides (large PDFs, slow).
#
# Each PDF is skipped if its output .md file already exists and is non-empty.
# Pass --force to reprocess everything regardless.

set -euo pipefail

SP="source-pdfs"
KB="project-kb"
PY="python3 avid_pdf_to_md.py"
DRY=0
SKIP_LARGE=0
FORCE=0

for arg in "$@"; do
  [[ "$arg" == "--dry-run"    ]] && DRY=1
  [[ "$arg" == "--skip-large" ]] && SKIP_LARGE=1
  [[ "$arg" == "--force"      ]] && FORCE=1
done

TOTAL=0; PROCESSED=0; SKIPPED=0; MISSING=0; FAILED=0

run() {
  # run <pdf_basename> <product> <version> <doc-type> [extra args...]
  local pdf="$1" product="$2" version="$3" doctype="$4"
  shift 4
  local extra=("$@")

  TOTAL=$((TOTAL + 1))

  if [[ ! -f "$SP/$pdf" ]]; then
    echo "  MISSING  $pdf  (not in $SP/ — run mc_download_pdfs.sh first)"
    MISSING=$((MISSING + 1))
    return 0
  fi

  # Derive expected output path to check if already done
  local outpath
  outpath="$KB/$(python3 -c "
import sys; sys.path.insert(0,'.')
from avid_pdf_to_md import PRODUCT_CONFIG, resolve_output_path
print(resolve_output_path('$product','$version','$doctype','$KB'))
" 2>/dev/null || echo "")"

  if [[ $FORCE -eq 0 && -n "$outpath" && -f "$outpath" && -s "$outpath" ]]; then
    echo "  EXISTS   $outpath"
    SKIPPED=$((SKIPPED + 1))
    return 0
  fi

  local _extra_str="${extra[*]+${extra[*]}}"
  local cmd="$PY $SP/$pdf --product $product --version $version --doc-type $doctype --kb-root $KB${_extra_str:+ $_extra_str}"
  if [[ $DRY -eq 1 ]]; then
    echo "  DRY      $cmd"
    return 0
  fi

  # Build args array — omit extra entirely when empty to avoid passing "" to argparse
  local -a _args=("$SP/$pdf" --product "$product" --version "$version" \
                  --doc-type "$doctype" --kb-root "$KB")
  [[ ${#extra[@]} -gt 0 ]] && _args+=("${extra[@]}")

  echo "  PROC     $pdf"
  if $PY "${_args[@]}" 2>&1 | tail -1; then
    PROCESSED=$((PROCESSED + 1))
  else
    echo "  FAIL     $pdf"
    FAILED=$((FAILED + 1))
  fi
}

run_out() {
  # run_out <pdf_basename> <output_path> <product> <version> <doc-type>
  local pdf="$1" outpath="$2" product="$3" version="$4" doctype="$5"
  TOTAL=$((TOTAL + 1))

  if [[ ! -f "$SP/$pdf" ]]; then
    echo "  MISSING  $pdf"
    MISSING=$((MISSING + 1))
    return 0
  fi

  if [[ $FORCE -eq 0 && -f "$KB/$outpath" && -s "$KB/$outpath" ]]; then
    echo "  EXISTS   $KB/$outpath"
    SKIPPED=$((SKIPPED + 1))
    return 0
  fi

  local fullout="$KB/$outpath"
  mkdir -p "$(dirname "$fullout")"

  if [[ $DRY -eq 1 ]]; then
    echo "  DRY      $PY $SP/$pdf ... --output $fullout"
    return 0
  fi

  echo "  PROC     $pdf → $outpath"
  if $PY "$SP/$pdf" --product "$product" --version "$version" --doc-type "$doctype" \
       --kb-root "$KB" --output "$fullout" 2>&1 | tail -1; then
    PROCESSED=$((PROCESSED + 1))
  else
    echo "  FAIL     $pdf"
    FAILED=$((FAILED + 1))
  fi
}

# ─────────────────────────────────────────────────────────────────────────────
echo ""; echo "══ 2025.x ════════════════════════════════════════════"

# Rolling fixes ReadMe — output to 2025.12/fixes-readme.md
run_out "MediaComposer2025Fixes.pdf" \
        "media-composer/versions/2025.12/fixes-readme.md" \
        "media-composer" "2025.12" "fixes-readme"

# 2025.12.1 ReadMe
run "Media_Composer_v2025.12.1_ReadMe.pdf" \
    "media-composer" "2025.12.1" "readme"

# 2025.12 ReadMe + What's New — may already exist; --force to reprocess
run "Media_Composer_v2025.12_ReadMe.pdf" \
    "media-composer" "2025.12" "readme"
run "Media_Composer_v2025.12_What's_New.pdf" \
    "media-composer" "2025.12" "new-features"

# 2025.6
run "Media_Composer_v2025.6_ReadMe.pdf" \
    "media-composer" "2025.6" "readme"
run "Media_Composer_v2025.6_What's_New.pdf" \
    "media-composer" "2025.6" "new-features"

# 2025.x rolling guides
if [[ $SKIP_LARGE -eq 0 ]]; then
  run "Media_Composer_v2025.x_Editing_Guide.pdf" \
      "media-composer-guide" "2025.x" "editing-guide"
  run "Media_Composer_v2025.x_FX_Guide.pdf" \
      "media-composer-guide" "2025.x" "fx-guide"
fi
run "Install_Guide_Editor_v2025.x.pdf" \
    "media-composer-guide" "2025.x" "install-guide"
run "MC_Enterprise_Admin_Guide_2024.x.pdf" \
    "media-composer-guide" "2025.x" "enterprise-admin-guide"

# 2025.x MCDP
run "MCDP_2025_12_0_Admin_Guide.pdf" "mcdp" "2025.12.0" "admin-guide"
run "MCDP_2025_12_0_ReadMe.pdf"      "mcdp" "2025.12.0" "readme"
run "MCDP_2025_12_1_ReadMe.pdf"      "mcdp" "2025.12.1" "readme"
run "MCDP_2025_10_0_Admin_Guide.pdf" "mcdp" "2025.10.0" "admin-guide"
run "MCDP_2025_10_0_ReadMe.pdf"      "mcdp" "2025.10.0" "readme"

# ─────────────────────────────────────────────────────────────────────────────
echo ""; echo "══ 2024.x ════════════════════════════════════════════"

run_out "MediaComposer2024Fixes.pdf" \
        "media-composer/versions/2024.12/fixes-readme.md" \
        "media-composer" "2024.12" "fixes-readme"

for patch in "" .1 .2 .3 .4 .5 .6; do
  ver="2024.12${patch}"
  # Filename uses 2-digit year: v24.12, v24.12.1, etc.
  fver="24.12${patch}"
  run "README_Avid_Editor_v${fver}.pdf" "media-composer" "$ver" "readme"
done
run "WhatsNew_MediaComposer_v24.12.pdf" "media-composer" "2024.12" "new-features"

run "README_Avid_Editor_v24.10.pdf"     "media-composer" "2024.10" "readme"
run "WhatsNew_MediaComposer_v24.10.pdf" "media-composer" "2024.10" "new-features"

run "README_Avid_Editor_v24.6.pdf"      "media-composer" "2024.6"  "readme"
run "WhatsNew_MediaComposer_v24.6.pdf"  "media-composer" "2024.6"  "new-features"

run "README_Avid_Editor_v24.2.pdf"      "media-composer" "2024.2"  "readme"
run "WhatsNew_MediaComposer_v24.2.pdf"  "media-composer" "2024.2"  "new-features"

if [[ $SKIP_LARGE -eq 0 ]]; then
  run "Media_Composer_Editing_Guide_2024.x.pdf" \
      "media-composer-guide" "2024.x" "editing-guide"
  run "Media_Composer_Effects_and_CC_Guide_2024.x.pdf" \
      "media-composer-guide" "2024.x" "fx-guide"
fi
# NOTE: 2024 install guide links to v2023.x PDF — file already downloaded
run "Install_Guide_Editor_v2023.x.pdf" \
    "media-composer-guide" "2024.x" "install-guide"
run "MC_Enterprise_Admin_Guide_2024.x.pdf" \
    "media-composer-guide" "2024.x" "enterprise-admin-guide"

# 2024.x MCDP
run "MCDP_2024_10_0_Admin_Guide.pdf" "mcdp" "2024.10.0" "admin-guide"
run "MCDP_2024_10_0_ReadMe.pdf"      "mcdp" "2024.10.0" "readme"
run "MCDP_2024_10_1_ReadMe.pdf"      "mcdp" "2024.10.1" "readme"
run "MCDP_2024_10_2_ReadMe.pdf"      "mcdp" "2024.10.2" "readme"

# ─────────────────────────────────────────────────────────────────────────────
echo ""; echo "══ 2023.x ════════════════════════════════════════════"

run_out "MediaComposer2023Fixes.pdf" \
        "media-composer/versions/2023.12/fixes-readme.md" \
        "media-composer" "2023.12" "fixes-readme"

for patch in "" .1 .2 .3 .4 .5 .6; do
  ver="2023.12${patch}"
  fver="23.12${patch}"
  run "README_Avid_Editor_v${fver}.pdf" "media-composer" "$ver" "readme"
done
run "WhatsNew_MediaComposer_v23.12.pdf" "media-composer" "2023.12" "new-features"

run "README_Avid_Editor_v23.8.2.pdf"   "media-composer" "2023.8.2" "readme"
run "README_Avid_Editor_v23.8.1.pdf"   "media-composer" "2023.8.1" "readme"
run "README_Avid_Editor_v23.8.pdf"     "media-composer" "2023.8"   "readme"
run "WhatsNew_MediaComposer_v23.8.pdf" "media-composer" "2023.8"   "new-features"

run "README_Avid_Editor_v23.3.1.pdf"   "media-composer" "2023.3.1" "readme"
run "README_Avid_Editor_v23.3.pdf"     "media-composer" "2023.3"   "readme"
run "WhatsNew_MediaComposer_v23.3.pdf" "media-composer" "2023.3"   "new-features"

if [[ $SKIP_LARGE -eq 0 ]]; then
  run "Media_Composer_Editing_Guide_2023.x.pdf" \
      "media-composer-guide" "2023.x" "editing-guide"
  run "Media_Composer_Effects_and_CC_Guide_2023.x.pdf" \
      "media-composer-guide" "2023.x" "fx-guide"
fi
run "Install_Guide_Editor_v2023.x.pdf" \
    "media-composer-guide" "2023.x" "install-guide"
run "MC_Enterprise_Admin_Guide_2023.x.pdf" \
    "media-composer-guide" "2023.x" "enterprise-admin-guide"

# 2023.x MCDP
run "MCDP_2023_12_0_Admin_Guide.pdf" "mcdp" "2023.12.0" "admin-guide"
run "MCDP_2023_12_0_ReadMe.pdf"      "mcdp" "2023.12.0" "readme"
run "MCDP_2023_8_0_ReadMe.pdf"       "mcdp" "2023.8.0"  "readme"

# ─────────────────────────────────────────────────────────────────────────────
echo ""; echo "══ 2022.x ════════════════════════════════════════════"

run_out "MediaComposer2022Fixes.pdf" \
        "media-composer/versions/2022.12/fixes-readme.md" \
        "media-composer" "2022.12" "fixes-readme"

for patch in "" .1 .2 .3 .4 .5 .6 .7 .8 .9 .10; do
  ver="2022.12${patch}"
  fver="22.12${patch}"
  run "README_Avid_Editor_v${fver}.pdf" "media-composer" "$ver" "readme"
done
run "WhatsNew_MediaComposer_v22.12.pdf" "media-composer" "2022.12" "new-features"

run "README_Avid_Editor_v22.10.pdf"    "media-composer" "2022.10" "readme"
run "WhatsNew_MediaComposer_v22.10.pdf" "media-composer" "2022.10" "new-features"

run "README_Avid_Editor_v22.7.pdf"    "media-composer" "2022.7"  "readme"
run "WhatsNew_MediaComposer_v22.7.pdf" "media-composer" "2022.7"  "new-features"

run "README_Avid_Editor_v22.4.pdf"    "media-composer" "2022.4"  "readme"
run "WhatsNew_MediaComposer_v22.4.pdf" "media-composer" "2022.4"  "new-features"

if [[ $SKIP_LARGE -eq 0 ]]; then
  run "Media_Composer_Editing_Guide_2022.x.pdf" \
      "media-composer-guide" "2022.x" "editing-guide"
  run "Media_Composer_Effects_and_CC_Guide_2022.x.pdf" \
      "media-composer-guide" "2022.x" "fx-guide"
fi
run "Install_Guide_Editor_v2022.x.pdf" \
    "media-composer-guide" "2022.x" "install-guide"
run "MC_Enterprise_Admin_Guide_2022.x.pdf" \
    "media-composer-guide" "2022.x" "enterprise-admin-guide"

# 2022.x MCDP
run "MCDP_2022_10_0_Admin_Guide.pdf"  "mcdp" "2022.10.0" "admin-guide"
run "MCDP_2022_12_0_ReadMe.pdf"       "mcdp" "2022.12.0" "readme"
run "MCDP_2022_12_1_ReadMe.pdf"       "mcdp" "2022.12.1" "readme"

# ─────────────────────────────────────────────────────────────────────────────
echo ""; echo "══ 2021.x ════════════════════════════════════════════"

run_out "MediaComposer2021Fixes.pdf" \
        "media-composer/versions/2021.12/fixes-readme.md" \
        "media-composer" "2021.12" "fixes-readme"

for patch in "" .1 .2 .3 .4 .5 .6 .7 .8 .9 .10; do
  ver="2021.12${patch}"
  fver="21.12${patch}"
  run "README_Avid_Editor_v${fver}.pdf" "media-composer" "$ver" "readme"
done
run "WhatsNew_MediaComposer_v21.12.pdf" "media-composer" "2021.12" "new-features"

run "README_Avid_Editor_v21.9.pdf"    "media-composer" "2021.9"  "readme"

run "README_Avid_Editor_v21.6.pdf"    "media-composer" "2021.6"  "readme"
run "WhatsNew_MediaComposer_v21.6.pdf" "media-composer" "2021.6"  "new-features"

run "README_Avid_Editor_v21.5.pdf"    "media-composer" "2021.5"  "readme"

run "README_Avid_Editor_v21.3.pdf"    "media-composer" "2021.3"  "readme"
run "WhatsNew_MediaComposer_v21.3.pdf" "media-composer" "2021.3"  "new-features"

run "README_Avid_Editor_v21.2.pdf"    "media-composer" "2021.2"  "readme"

if [[ $SKIP_LARGE -eq 0 ]]; then
  run "Media_Composer_Editing_Guide_2021.x.pdf" \
      "media-composer-guide" "2021.x" "editing-guide"
  run "Media_Composer_Effects_and_CC_Guide_2021.x.pdf" \
      "media-composer-guide" "2021.x" "fx-guide"
fi
# Install guide links to v2020.x PDF (Avid anomaly) — file already downloaded
run "Install_Guide_Editor_v2020.x.pdf" \
    "media-composer-guide" "2021.x" "install-guide"
run "High_Res_WorkflowsGuide.pdf" \
    "media-composer-guide" "2021.x" "high-res-workflows"
run "MC_Enterprise_Admin_Guide.pdf" \
    "media-composer-guide" "2021.x" "enterprise-admin-guide"

# 2021.x MCDP
run "MCDP_2021_12_0_Admin_Guide.pdf" "mcdp" "2021.12.0" "admin-guide"
run "MCDP_2021_6_0_Admin_Guide.pdf"  "mcdp" "2021.6.0"  "admin-guide"

# ─────────────────────────────────────────────────────────────────────────────
echo ""; echo "══ 2020.x ════════════════════════════════════════════"

run_out "MediaComposer2020Fixes.pdf" \
        "media-composer/versions/2020.12/fixes-readme.md" \
        "media-composer" "2020.12" "fixes-readme"

for patch in "" .1 .2 .3 .5 .6 .7 .8; do  # .4 absent from Avid source
  ver="2020.12${patch}"
  fver="20.12${patch}"
  run "README_Avid_Editor_v${fver}.pdf" "media-composer" "$ver" "readme"
done
run "WhatsNew_MediaComposer_v20.12.pdf" "media-composer" "2020.12" "new-features"

run "README_Avid_Editor_v20.10.pdf"    "media-composer" "2020.10" "readme"
run "WhatsNew_MediaComposer_v20.10.pdf" "media-composer" "2020.10" "new-features"

run "README_Avid_Editor_v20.9.pdf"     "media-composer" "2020.9"  "readme"
run "WhatsNew_MediaComposer_v20.9.pdf"  "media-composer" "2020.9"  "new-features"

run "README_Avid_Editor_v20.8.pdf"     "media-composer" "2020.8"  "readme"

run "README_Avid_Editor_v20.6.pdf"     "media-composer" "2020.6"  "readme"
run "WhatsNew_MediaComposer_v20.6.pdf"  "media-composer" "2020.6"  "new-features"

run "README_Avid_Editor_v20.5.pdf"     "media-composer" "2020.5"  "readme"

# v2020.4 — labelled "v2020 ReadMe" on Avid source page
run "README_Avid_Editor_v20.4.pdf"     "media-composer" "2020.4"  "readme"
run "WhatsNew_MediaComposer_v20.4.pdf"  "media-composer" "2020.4"  "new-features"

if [[ $SKIP_LARGE -eq 0 ]]; then
  run "Media_Composer_Editing_Guide_2020.x.pdf" \
      "media-composer-guide" "2020.x" "editing-guide"
  run "Media_Composer_Effects_and_CC_Guide_2020.x.pdf" \
      "media-composer-guide" "2020.x" "fx-guide"
fi
run "Install_Guide_Editor_v2020.x.pdf" \
    "media-composer-guide" "2020.x" "install-guide"
# High-Res and Enterprise Admin same unversioned files — already processed above; --force to redo
run "High_Res_WorkflowsGuide.pdf" \
    "media-composer-guide" "2020.x" "high-res-workflows"
run "MC_Enterprise_Admin_Guide.pdf" \
    "media-composer-guide" "2020.x" "enterprise-admin-guide"

# 2020.x MCDP — v19.12 era guide; no 2020-specific guide was published
run_out "MC_Distributed_Processing_Admin_Guide_v19.12.pdf" \
        "media-composer/distributed-processing/versions/2019.12/admin-guide.md" \
        "mcdp" "2019.12" "admin-guide"

run_out "MC_VDI_NutanixGuide_2021_02.pdf" \
        "media-composer/guides/2020.x/vdi-guide.md" \
        "media-composer-guide" "2020.x" "vdi-guide"

# ─────────────────────────────────────────────────────────────────────────────
echo ""; echo "══ FlexNet ════════════════════════════════════════════"

run "README_Avid_FlexNet_License_Server_Manager_v2025.5.pdf" \
    "flexnet" "2025.5" "flexnet-readme"
run "Avid_FlexNet_License_Server_Administration_Guide.pdf" \
    "flexnet" "current" "flexnet-admin"
run "FlexNet_Device_Manager_for_Avid_v8.x.pdf" \
    "flexnet" "v8.x" "flexnet-legacy-admin"

# ─────────────────────────────────────────────────────────────────────────────
echo ""; echo "══ Supplemental ══════════════════════════════════════"

run_out "Avid_Supported_Video_File_Formats.pdf" \
        "media-composer/guides/current/supported-video-formats.md" \
        "media-composer-guide" "current" "format-guide"

run_out "MC_VDI_NutanixGuide_2022.pdf" \
        "media-composer/guides/2022/vdi-guide.md" \
        "media-composer-guide" "2022" "vdi-guide"

run_out "Media_Composer_Virtualization_Guide_for_VMware.pdf" \
        "media-composer/guides/current/virtualization-guide-vmware.md" \
        "media-composer-guide" "current" "virtualization-guide"

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Summary"
echo "══════════════════════════════════════════════════════"
echo "  Total entries : $TOTAL"
echo "  Processed     : $PROCESSED"
echo "  Skipped       : $SKIPPED"
echo "  Missing PDFs  : $MISSING"
echo "  Failed        : $FAILED"
echo ""
if [[ $MISSING -gt 0 ]]; then
  echo "  ⚠️  $MISSING PDF(s) not found in $SP/ — run mc_download_pdfs.sh first."
fi
if [[ $FAILED -gt 0 ]]; then
  echo "  ⚠️  $FAILED conversion(s) failed — check output above."
fi
if [[ $MISSING -eq 0 && $FAILED -eq 0 ]]; then
  echo "  ✓  All conversions completed successfully."
fi
echo ""
