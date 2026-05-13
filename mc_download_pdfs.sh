#!/usr/bin/env bash
# mc_download_pdfs.sh
# Downloads all Media Composer PDFs (2020–2025) from resources.avid.com
# into source-pdfs/. Skips any file that already exists.
#
# Run from ~/Desktop/avid-knowledge-base:
#   bash mc_download_pdfs.sh
#
# Optional: pass --force to re-download all files regardless of existence.
#
# Covers: Core ReadMes, What's New, Rolling Guides, Distributed Processing,
#         FlexNet, and Supplemental guides — 2020.x through 2025.x.
#
# Note: "Fixes Only" ReadMes are rolling documents updated in place at Avid.
#       They are downloaded once; re-run with --force to refresh them.
#
# Note: Some URLs on Avid's 2020 and 2021 pages used http:// — all have been
#       normalised to https:// here (resources.avid.com redirects HTTP→HTTPS).
#
# Source anomalies preserved from doc-indexes:
#   - 2024 Install Guide links to v2023.x PDF (Avid oversight on source page)
#   - 2021 Install Guide links to v2020.x PDF (Avid oversight on source page)
#   - 2020 Enterprise/High-Res guides are unversioned PDFs shared with 2021
#   - 2020.x v2020 ReadMe label maps to README_Avid_Editor_v20.4.pdf
#   - v2020.12.4 ReadMe absent from Avid source page (gap in original)

set -euo pipefail

BASE="https://resources.avid.com/SupportFiles/attach"
OUT="source-pdfs"
FORCE=0

for arg in "$@"; do
  [[ "$arg" == "--force" ]] && FORCE=1
done

mkdir -p "$OUT"

TOTAL=0
DOWNLOADED=0
SKIPPED=0
FAILED=0

dl() {
  local url="$1"
  local filename
  filename="$(basename "$url")"
  TOTAL=$((TOTAL + 1))

  if [[ $FORCE -eq 0 && -f "$OUT/$filename" ]]; then
    echo "  SKIP  $filename"
    SKIPPED=$((SKIPPED + 1))
    return 0
  fi

  echo "  GET   $filename"
  if curl -fsSL "$url" -o "$OUT/$filename"; then
    DOWNLOADED=$((DOWNLOADED + 1))
  else
    echo "  FAIL  $url"
    FAILED=$((FAILED + 1))
    rm -f "$OUT/$filename"   # remove partial download
  fi
}

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Media Composer 2025.x"
echo "══════════════════════════════════════════════════════"

echo "-- v2025.12.x ReadMes"
dl "$BASE/MediaComposer2025Fixes.pdf"
dl "$BASE/Media_Composer_v2025.12.1_ReadMe.pdf"
dl "$BASE/Media_Composer_v2025.12_ReadMe.pdf"

echo "-- v2025.12 What's New"
dl "$BASE/Media_Composer_v2025.12_What's_New.pdf"

echo "-- v2025.6 ReadMe + What's New"
dl "$BASE/Media_Composer_v2025.6_ReadMe.pdf"
dl "$BASE/Media_Composer_v2025.6_What's_New.pdf"

echo "-- v2025.x Rolling Guides"
dl "$BASE/Media_Composer_v2025.x_Editing_Guide.pdf"
dl "$BASE/Media_Composer_v2025.x_FX_Guide.pdf"
dl "$BASE/Install_Guide_Editor_v2025.x.pdf"
dl "$BASE/MC_Enterprise_Admin_Guide_2024.x.pdf"

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Media Composer 2024.x"
echo "══════════════════════════════════════════════════════"

echo "-- v2024.12.x ReadMes"
dl "$BASE/MediaComposer2024Fixes.pdf"
dl "$BASE/README_Avid_Editor_v24.12.6.pdf"
dl "$BASE/README_Avid_Editor_v24.12.5.pdf"
dl "$BASE/README_Avid_Editor_v24.12.4.pdf"
dl "$BASE/README_Avid_Editor_v24.12.3.pdf"
dl "$BASE/README_Avid_Editor_v24.12.2.pdf"
dl "$BASE/README_Avid_Editor_v24.12.1.pdf"
dl "$BASE/README_Avid_Editor_v24.12.pdf"

echo "-- v2024.12 What's New"
dl "$BASE/WhatsNew_MediaComposer_v24.12.pdf"

echo "-- v2024.10"
dl "$BASE/README_Avid_Editor_v24.10.pdf"
dl "$BASE/WhatsNew_MediaComposer_v24.10.pdf"

echo "-- v2024.6"
dl "$BASE/README_Avid_Editor_v24.6.pdf"
dl "$BASE/WhatsNew_MediaComposer_v24.6.pdf"

echo "-- v2024.2"
dl "$BASE/README_Avid_Editor_v24.2.pdf"
dl "$BASE/WhatsNew_MediaComposer_v24.2.pdf"

echo "-- v2024.x Rolling Guides"
dl "$BASE/Media_Composer_Editing_Guide_2024.x.pdf"
dl "$BASE/Media_Composer_Effects_and_CC_Guide_2024.x.pdf"
# NOTE: 2024 Install Guide links to v2023.x PDF — Avid source page anomaly
dl "$BASE/Install_Guide_Editor_v2023.x.pdf"
# Enterprise Admin Guide same PDF as 2025 page — already downloaded above; skip

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Media Composer 2023.x"
echo "══════════════════════════════════════════════════════"

echo "-- v2023.12.x ReadMes"
dl "$BASE/MediaComposer2023Fixes.pdf"
dl "$BASE/README_Avid_Editor_v23.12.6.pdf"
dl "$BASE/README_Avid_Editor_v23.12.5.pdf"
dl "$BASE/README_Avid_Editor_v23.12.4.pdf"
dl "$BASE/README_Avid_Editor_v23.12.3.pdf"
dl "$BASE/README_Avid_Editor_v23.12.2.pdf"
dl "$BASE/README_Avid_Editor_v23.12.1.pdf"
dl "$BASE/README_Avid_Editor_v23.12.pdf"

echo "-- v2023.12 What's New"
dl "$BASE/WhatsNew_MediaComposer_v23.12.pdf"

echo "-- v2023.8.x"
dl "$BASE/README_Avid_Editor_v23.8.2.pdf"
dl "$BASE/README_Avid_Editor_v23.8.1.pdf"
dl "$BASE/README_Avid_Editor_v23.8.pdf"
dl "$BASE/WhatsNew_MediaComposer_v23.8.pdf"

echo "-- v2023.3.x"
dl "$BASE/README_Avid_Editor_v23.3.1.pdf"
dl "$BASE/README_Avid_Editor_v23.3.pdf"
dl "$BASE/WhatsNew_MediaComposer_v23.3.pdf"

echo "-- v2023.x Rolling Guides"
dl "$BASE/Media_Composer_Editing_Guide_2023.x.pdf"
dl "$BASE/Media_Composer_Effects_and_CC_Guide_2023.x.pdf"
# Install_Guide_Editor_v2023.x.pdf already downloaded above
dl "$BASE/MC_Enterprise_Admin_Guide_2023.x.pdf"

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Media Composer 2022.x"
echo "══════════════════════════════════════════════════════"

echo "-- v2022.12.x ReadMes"
dl "$BASE/MediaComposer2022Fixes.pdf"
dl "$BASE/README_Avid_Editor_v22.12.10.pdf"
dl "$BASE/README_Avid_Editor_v22.12.9.pdf"
dl "$BASE/README_Avid_Editor_v22.12.8.pdf"
dl "$BASE/README_Avid_Editor_v22.12.7.pdf"
dl "$BASE/README_Avid_Editor_v22.12.6.pdf"
dl "$BASE/README_Avid_Editor_v22.12.5.pdf"
dl "$BASE/README_Avid_Editor_v22.12.4.pdf"
dl "$BASE/README_Avid_Editor_v22.12.3.pdf"
dl "$BASE/README_Avid_Editor_v22.12.2.pdf"
dl "$BASE/README_Avid_Editor_v22.12.1.pdf"
dl "$BASE/README_Avid_Editor_v22.12.pdf"

echo "-- v2022.12 What's New"
dl "$BASE/WhatsNew_MediaComposer_v22.12.pdf"

echo "-- v2022.10"
dl "$BASE/README_Avid_Editor_v22.10.pdf"
dl "$BASE/WhatsNew_MediaComposer_v22.10.pdf"

echo "-- v2022.7"
dl "$BASE/README_Avid_Editor_v22.7.pdf"
dl "$BASE/WhatsNew_MediaComposer_v22.7.pdf"

echo "-- v2022.4"
dl "$BASE/README_Avid_Editor_v22.4.pdf"
dl "$BASE/WhatsNew_MediaComposer_v22.4.pdf"

echo "-- v2022.x Rolling Guides"
dl "$BASE/Media_Composer_Editing_Guide_2022.x.pdf"
dl "$BASE/Media_Composer_Effects_and_CC_Guide_2022.x.pdf"
dl "$BASE/Install_Guide_Editor_v2022.x.pdf"
dl "$BASE/MC_Enterprise_Admin_Guide_2022.x.pdf"

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Media Composer 2021.x"
echo "══════════════════════════════════════════════════════"

echo "-- v2021.12.x ReadMes"
dl "$BASE/MediaComposer2021Fixes.pdf"
dl "$BASE/README_Avid_Editor_v21.12.10.pdf"
dl "$BASE/README_Avid_Editor_v21.12.9.pdf"
dl "$BASE/README_Avid_Editor_v21.12.8.pdf"
dl "$BASE/README_Avid_Editor_v21.12.7.pdf"
dl "$BASE/README_Avid_Editor_v21.12.6.pdf"
dl "$BASE/README_Avid_Editor_v21.12.5.pdf"
dl "$BASE/README_Avid_Editor_v21.12.4.pdf"
dl "$BASE/README_Avid_Editor_v21.12.3.pdf"
dl "$BASE/README_Avid_Editor_v21.12.2.pdf"
dl "$BASE/README_Avid_Editor_v21.12.1.pdf"
dl "$BASE/README_Avid_Editor_v21.12.pdf"

echo "-- v2021.12 What's New"
dl "$BASE/WhatsNew_MediaComposer_v21.12.pdf"

echo "-- v2021.9"
dl "$BASE/README_Avid_Editor_v21.9.pdf"

echo "-- v2021.6"
dl "$BASE/README_Avid_Editor_v21.6.pdf"
dl "$BASE/WhatsNew_MediaComposer_v21.6.pdf"

echo "-- v2021.5"
dl "$BASE/README_Avid_Editor_v21.5.pdf"

echo "-- v2021.3"
dl "$BASE/README_Avid_Editor_v21.3.pdf"
dl "$BASE/WhatsNew_MediaComposer_v21.3.pdf"

echo "-- v2021.2"
dl "$BASE/README_Avid_Editor_v21.2.pdf"

echo "-- v2021.x Rolling Guides"
dl "$BASE/Media_Composer_Editing_Guide_2021.x.pdf"
dl "$BASE/Media_Composer_Effects_and_CC_Guide_2021.x.pdf"
# NOTE: 2021 Install Guide links to v2020.x PDF — Avid source page anomaly
dl "$BASE/Install_Guide_Editor_v2020.x.pdf"
dl "$BASE/High_Res_WorkflowsGuide.pdf"
dl "$BASE/MC_Enterprise_Admin_Guide.pdf"

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Media Composer 2020.x"
echo "══════════════════════════════════════════════════════"

echo "-- v2020.12.x ReadMes (v2020.12.4 absent from Avid source — known gap)"
dl "$BASE/MediaComposer2020Fixes.pdf"
dl "$BASE/README_Avid_Editor_v20.12.8.pdf"
dl "$BASE/README_Avid_Editor_v20.12.7.pdf"
dl "$BASE/README_Avid_Editor_v20.12.6.pdf"
dl "$BASE/README_Avid_Editor_v20.12.5.pdf"
dl "$BASE/README_Avid_Editor_v20.12.3.pdf"
dl "$BASE/README_Avid_Editor_v20.12.2.pdf"
dl "$BASE/README_Avid_Editor_v20.12.1.pdf"
dl "$BASE/README_Avid_Editor_v20.12.pdf"

echo "-- v2020.12 What's New"
dl "$BASE/WhatsNew_MediaComposer_v20.12.pdf"

echo "-- v2020.10"
dl "$BASE/README_Avid_Editor_v20.10.pdf"
dl "$BASE/WhatsNew_MediaComposer_v20.10.pdf"

echo "-- v2020.9"
dl "$BASE/README_Avid_Editor_v20.9.pdf"
dl "$BASE/WhatsNew_MediaComposer_v20.9.pdf"

echo "-- v2020.8"
dl "$BASE/README_Avid_Editor_v20.8.pdf"

echo "-- v2020.6"
dl "$BASE/README_Avid_Editor_v20.6.pdf"
dl "$BASE/WhatsNew_MediaComposer_v20.6.pdf"

echo "-- v2020.5"
dl "$BASE/README_Avid_Editor_v20.5.pdf"

echo "-- v2020.4 (labelled 'v2020 ReadMe' on Avid source page)"
dl "$BASE/README_Avid_Editor_v20.4.pdf"
dl "$BASE/WhatsNew_MediaComposer_v20.4.pdf"

echo "-- v2020.x Rolling Guides"
dl "$BASE/Media_Composer_Editing_Guide_2020.x.pdf"
dl "$BASE/Media_Composer_Effects_and_CC_Guide_2020.x.pdf"
# Install_Guide_Editor_v2020.x.pdf already downloaded above
# High_Res_WorkflowsGuide.pdf already downloaded above
# MC_Enterprise_Admin_Guide.pdf already downloaded above

echo "-- v2020.x Supplemental"
dl "$BASE/MC_VDI_NutanixGuide_2021_02.pdf"

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Media Composer | Distributed Processing"
echo "══════════════════════════════════════════════════════"

# 2023.x DP (listed on 2023 page)
dl "$BASE/MCDP_2023_12_0_Admin_Guide.pdf"
dl "$BASE/MCDP_2023_12_0_ReadMe.pdf"
dl "$BASE/MCDP_2023_8_0_ReadMe.pdf"

# 2022.x DP
dl "$BASE/MCDP_2022_10_0_Admin_Guide.pdf"
dl "$BASE/MCDP_2022_12_0_ReadMe.pdf"
dl "$BASE/MCDP_2022_12_1_ReadMe.pdf"

# 2021.x DP
dl "$BASE/MCDP_2021_12_0_Admin_Guide.pdf"
dl "$BASE/MCDP_2021_6_0_Admin_Guide.pdf"

# 2020.x DP (v19.12 era guide — no 2020-specific DP guide published)
dl "$BASE/MC_Distributed_Processing_Admin_Guide_v19.12.pdf"

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Avid FlexNet License Server Manager"
echo "══════════════════════════════════════════════════════"

dl "$BASE/README_Avid_FlexNet_License_Server_Manager_v2025.5.pdf"
dl "$BASE/Avid_FlexNet_License_Server_Administration_Guide.pdf"
dl "$BASE/FlexNet_Device_Manager_for_Avid_v8.x.pdf"

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Supplemental / Reference (shared across years)"
echo "══════════════════════════════════════════════════════"

dl "$BASE/Avid_Supported_Video_File_Formats.pdf"
dl "$BASE/MC_VDI_NutanixGuide_2022.pdf"
dl "$BASE/Media_Composer_Virtualization_Guide_for_VMware.pdf"

# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo " Summary"
echo "══════════════════════════════════════════════════════"
echo "  Total entries : $TOTAL"
echo "  Downloaded    : $DOWNLOADED"
echo "  Skipped       : $SKIPPED"
echo "  Failed        : $FAILED"
echo ""
if [[ $FAILED -gt 0 ]]; then
  echo "  ⚠️  $FAILED download(s) failed — check output above for FAIL lines."
  echo "  Some older PDFs may no longer be hosted by Avid."
else
  echo "  ✓  All downloads completed without error."
fi
echo ""
