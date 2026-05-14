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
# Note: resources.avid.com blocks programmatic curl requests (HTTP 403).
#       If this script fails with 403, use the browser-based download helper:
#         working/mc_pdf_download_helper.html
#       Open it in Chrome, point Chrome downloads to source-pdfs/, click
#       "Download Selected". The browser bypasses CDN bot detection.
#
# URLs sourced from project-kb/media-composer/doc-index*.md — authoritative.
# 142 unique PDFs: 2020.x–2025.12.x core, MCDP, FlexNet, Supplemental.

set -euo pipefail

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
  if curl -fsSL \
      -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36" \
      -H "Referer: https://kb.avid.com/" \
      "$url" -o "$OUT/$filename"; then
    DOWNLOADED=$((DOWNLOADED + 1))
  else
    echo "  FAIL  $url"
    FAILED=$((FAILED + 1))
    rm -f "$OUT/$filename"
  fi
}

# ════════════════════════════════════════════════════════════
# Media Composer 2025.x
# ════════════════════════════════════════════════════════════

# -- Media Composer Core
echo "-- v2025.12.x"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer/2025.12/MediaComposer2025Fixes.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer/2025.12/Media_Composer_v2025.12.1_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer/2025.12/Media_Composer_v2025.12_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer/2025.12/Media_Composer_v2025.12_What's_New.pdf"
echo "-- v2025.6"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer/Media_Composer_v2025.6_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer/Media_Composer_v2025.6_What's_New.pdf"
echo "-- v2025.x Rolling Guides"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer/Media_Composer_v2025.x_Editing_Guide.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer/Media_Composer_v2025.x_FX_Guide.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Install_Guide_Editor_v2025.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MC_Enterprise_Admin_Guide_2024.x.pdf"

# -- Media Composer | Distributed Processing
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2025_12_0_Admin_Guide.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2025_12_0_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2025_12_1_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2025_10_0_Admin_Guide.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2025_10_0_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2024_10_0_Admin_Guide.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2024_10_0_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2024_10_1_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2024_10_2_ReadMe.pdf"

# -- Avid FlexNet License Server Manager
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_FlexNet_License_Server_Manager_v2025.5.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Avid_FlexNet_License_Server_Administration_Guide.pdf"
dl "https://resources.avid.com/SupportFiles/attach/FlexNet_Device_Manager_for_Avid_v8.x.pdf"

# -- Supplemental / Reference
dl "https://resources.avid.com/SupportFiles/attach/Avid_Supported_Video_File_Formats.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MC_VDI_NutanixGuide_2022.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Virtualization_Guide_for_VMware.pdf"

# ════════════════════════════════════════════════════════════
# Media Composer 2024.x
# ════════════════════════════════════════════════════════════

# -- Media Composer Core
echo "-- v2024.12.x"
dl "https://resources.avid.com/SupportFiles/attach/MediaComposer2024Fixes.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v24.12.6.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v24.12.5.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v24.12.4.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v24.12.3.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v24.12.2.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v24.12.1.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v24.12.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v24.12.pdf"
echo "-- v2024.10"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v24.10.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v24.10.pdf"
echo "-- v2024.6"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v24.6.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v24.6.pdf"
echo "-- v2024.2"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v24.2.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v24.2.pdf"
echo "-- v2024.x Rolling Guides"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Editing_Guide_2024.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Effects_and_CC_Guide_2024.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Install_Guide_Editor_v2023.x.pdf"

# ════════════════════════════════════════════════════════════
# Media Composer 2023.x
# ════════════════════════════════════════════════════════════

# -- Media Composer Core
echo "-- v2023.12.x"
dl "https://resources.avid.com/SupportFiles/attach/MediaComposer2023Fixes.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.12.6.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.12.5.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.12.4.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.12.3.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.12.2.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.12.1.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.12.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v23.12.pdf"
echo "-- v2023.8.x"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.8.2.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.8.1.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.8.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v23.8.pdf"
echo "-- v2023.3.x"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.3.1.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v23.3.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v23.3.pdf"
echo "-- v2023.x Rolling Guides"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Editing_Guide_2023.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Effects_and_CC_Guide_2023.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MC_Enterprise_Admin_Guide_2023.x.pdf"

# -- Media Composer | Distributed Processing
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2023_12_0_Admin_Guide.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2023_12_0_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2023_8_0_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2022_10_0_Admin_Guide.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2022_12_0_ReadMe.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2022_12_1_ReadMe.pdf"

# ════════════════════════════════════════════════════════════
# Media Composer 2022.x
# ════════════════════════════════════════════════════════════

# -- Media Composer Core
echo "-- v2022.12.x"
dl "https://resources.avid.com/SupportFiles/attach/MediaComposer2022Fixes.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.10.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.9.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.8.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.7.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.6.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.5.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.4.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.3.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.2.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.1.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.12.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v22.12.pdf"
echo "-- v2022.10"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.10.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v22.10.pdf"
echo "-- v2022.7"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.7.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v22.7.pdf"
echo "-- v2022.4"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v22.4.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v22.4.pdf"
echo "-- v2022.x Rolling Guides"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Editing_Guide_2022.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Effects_and_CC_Guide_2022.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Install_Guide_Editor_v2022.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MC_Enterprise_Admin_Guide_2022.x.pdf"

# ════════════════════════════════════════════════════════════
# Media Composer 2021.x
# ════════════════════════════════════════════════════════════

# -- Media Composer Core
echo "-- v2021.12.x"
dl "https://resources.avid.com/SupportFiles/attach/MediaComposer2021Fixes.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.10.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.9.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.8.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.7.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.6.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.5.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.4.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.3.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.2.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.1.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.12.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v21.12.pdf"
echo "-- v2021.9"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.9.pdf"
echo "-- v2021.6"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.6.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v21.6.pdf"
echo "-- v2021.5"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.5.pdf"
echo "-- v2021.3"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.3.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v21.3.pdf"
echo "-- v2021.2"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v21.2.pdf"
echo "-- v2021.x Rolling Guides"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Editing_Guide_2021.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Effects_and_CC_Guide_2021.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Install_Guide_Editor_v2020.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/High_Res_WorkflowsGuide.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MC_Enterprise_Admin_Guide.pdf"

# -- Media Composer | Distributed Processing
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2021_12_0_Admin_Guide.pdf"
dl "https://resources.avid.com/SupportFiles/attach/MCDP_2021_6_0_Admin_Guide.pdf"

# ════════════════════════════════════════════════════════════
# Media Composer 2020.x
# ════════════════════════════════════════════════════════════

# -- Media Composer Core
echo "-- v2020.12.x"
dl "https://resources.avid.com/SupportFiles/attach/MediaComposer2020Fixes.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.12.8.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.12.7.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.12.6.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.12.5.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.12.3.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.12.2.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.12.1.pdf"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.12.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v20.12.pdf"
echo "-- v2020.10"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.10.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v20.10.pdf"
echo "-- v2020.9"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.9.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v20.9.pdf"
echo "-- v2020.8"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.8.pdf"
echo "-- v2020.6"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.6.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v20.6.pdf"
echo "-- v2020.5"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.5.pdf"
echo "-- v2020.4"
dl "https://resources.avid.com/SupportFiles/attach/README_Avid_Editor_v20.4.pdf"
dl "https://resources.avid.com/SupportFiles/attach/WhatsNew_MediaComposer_v20.4.pdf"
echo "-- v2020.x Rolling Guides"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Editing_Guide_2020.x.pdf"
dl "https://resources.avid.com/SupportFiles/attach/Media_Composer_Effects_and_CC_Guide_2020.x.pdf"

# -- Media Composer | Distributed Processing
dl "https://resources.avid.com/SupportFiles/attach/MC_Distributed_Processing_Admin_Guide_v19.12.pdf"

# -- Supplemental / Reference
dl "https://resources.avid.com/SupportFiles/attach/MC_VDI_NutanixGuide_2021_02.pdf"

# ════════════════════════════════════════════════════════════
echo ""
echo "════ Summary ════"
echo "  Total   : $TOTAL"
echo "  OK      : $DOWNLOADED"
echo "  Skipped : $SKIPPED"
echo "  Failed  : $FAILED"
