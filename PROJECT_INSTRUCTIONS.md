# PROJECT INSTRUCTIONS – SOURCE & REASONING PRIORITY

## 1. Primary Source of Truth

This project uses the **Avid Knowledge Base repository** `Tamaniu/project-kb` as the **sole primary and authoritative source of truth**.

> **Scope note:** These instructions cover `project-kb/` only. In Cowork sessions with `private-kb/` and/or `Focus/` mounted, additional source priority tiers apply — see `CONTEXT.md` at the `avid-knowledge-base/` root for the full layered source priority and cross-repo query strategy.

### Mandatory Rules

1. **Repository-first** — Always search and reason over `Tamaniu/project-kb` before using any external source.
2. **MANIFEST authority** — `MANIFEST.txt` in the repository root is the **live, authoritative index** of all valid documents. Always defer to `MANIFEST.txt` over the embedded list in Section 2 below. The embedded list is provided as a fallback for environments where `MANIFEST.txt` cannot be read directly (e.g. CustomGPT semantic retrieval); if `MANIFEST.txt` shows a different date or file count, treat it as correct and this list as potentially stale.
3. **No general knowledge inference** — Do not infer, extrapolate, or fill gaps using experience, marketing material, or assumptions.
4. **Explicit absence** — If **no relevant document exists in the MANIFEST** for the queried product/version, state exactly: **"Not present in project-kb."** Do not use this phrase if a document exists but requires reading — in that case, read it and extract the answer. Do not speculate.
5. **Active synthesis required** — When a document is confirmed present in the MANIFEST, you must read and extract content from it directly — do not rely solely on keyword search. If a document exists but is not yielding structured output via search, switch to full-document reading and synthesise the answer manually.

---

## 2. Repository MANIFEST (Authoritative Scope)

⚠️ **Always defer to the live `MANIFEST.txt` file.** The list below reflects the state as of 01/05/2026 and is provided as a fallback only. If `MANIFEST.txt` shows a different file count or paths, it is correct.

**Note on Wolftech:** Wolftech module docs (26 files) were moved from `project-kb/` to `private-kb/wolftech/` on 27/04/2026 pending external-sharing approval. They are **not listed below** and must not be treated as present in `project-kb/` until reinstated.

**Note on `versions/current/`:** The `mediacentral/cloud-ux/versions/current/` folder contains a non-version-pinned snapshot of the most recently processed Cloud UX documentation. Apply version-bounded reasoning with caution when using these files — treat them as indicative of the latest processed version, not a substitute for a version-specific document. Always prefer an explicitly versioned file when one is available.

```
README.md
PROJECT_INSTRUCTIONS.md
MANIFEST.txt

avid-link/faq/server-connectivity-2024-10-and-earlier.md

_meta/compatibility-matrix.md
_meta/compatibility-matrix-mediacentral.md
_meta/compatibility-matrix-editor.md
_meta/compatibility-matrix-distributed-processing.md
_meta/compatibility-matrix-cloud-remote.md
_meta/compatibility-matrix-interplay-legacy.md
_meta/virtualisation-vmware.md
_meta/virtualisation-nutanix.md
_meta/failover-guide.md
_meta/avid-software-lifecycle.md

explainers/ltm-releases.md

fastserve/ingest/versions/2022.9/new-features-2022.9-to-2024.3.md
fastserve/playout/versions/2022.2/new-features-2022.2-to-2023.20.md

media-composer/doc-index.md
media-composer/doc-index-2024.md
media-composer/doc-index-2023.md
media-composer/doc-index-2022.md
media-composer/doc-index-2021.md
media-composer/doc-index-2020.md
media-composer/doc-index-2019.md
media-composer/doc-index-2018.md
media-composer/distributed-processing/versions/2024.10.0/admin-guide.md
media-composer/distributed-processing/versions/2024.10.0/readme.md
media-composer/distributed-processing/versions/2024.10.1/readme.md
media-composer/distributed-processing/versions/2024.10.2/readme.md
media-composer/distributed-processing/versions/2025.10.0/admin-guide.md
media-composer/distributed-processing/versions/2025.10.0/readme.md
media-composer/distributed-processing/versions/2025.12.0/admin-guide.md
media-composer/distributed-processing/versions/2025.12.0/readme.md
media-composer/distributed-processing/versions/2025.12.1/readme.md
media-composer/guides/2022/vdi-guide.md
media-composer/guides/2025.x/vdi-guide.md
media-composer/versions/2025.12/new-features.md
media-composer/versions/2025.12/readme.md
media-composer/versions/2025.6/readme.md
media-composer/versions/2025/release-notes.md

mediacentral/resource-center/story-centric-approach.md

mediacentral/analytics/versions/2023.7/new-features.md
mediacentral/analytics/versions/2024.10/new-features.md

mediacentral/cloud-ux/limitations/2024.10.md
mediacentral/cloud-ux/limitations/2025.10.md
mediacentral/cloud-ux/limitations/2025.6.md
mediacentral/cloud-ux/plugins/3rd-party-tools/2025.6-readme.md
mediacentral/cloud-ux/plugins/enps-panel/2024.10.6-readme.md
mediacentral/cloud-ux/plugins/media-files-plugin/2022.3.1-readme.md
mediacentral/cloud-ux/plugins/media-files-plugin/2024.10-readme.md
mediacentral/cloud-ux/plugins/vmware/vmware-best-practices.md
mediacentral/cloud-ux/versions/2019.9.0/mobile-guide.md
mediacentral/cloud-ux/versions/2020.4.2/integration-guide.md
mediacentral/cloud-ux/versions/2022.12/new-features.md
mediacentral/cloud-ux/versions/2022.3/new-features.md
mediacentral/cloud-ux/versions/2023.12/hardware-guide.md
mediacentral/cloud-ux/versions/2023.12/new-features.md
mediacentral/cloud-ux/versions/2023.3/hardware-guide.md
mediacentral/cloud-ux/versions/2023.7/hardware-guide.md
mediacentral/cloud-ux/versions/2023.7/new-features.md
mediacentral/cloud-ux/versions/2024.10.0/admin-guide.md
mediacentral/cloud-ux/versions/2024.10.0/hardware-guide.md
mediacentral/cloud-ux/versions/2024.10.0/install-guide.md
mediacentral/cloud-ux/versions/2024.10.0/readme.md
mediacentral/cloud-ux/versions/2024.10.0/third-party-guide.md
mediacentral/cloud-ux/versions/2024.10.0/users-guide.md
mediacentral/cloud-ux/versions/2024.10.1/readme.md
mediacentral/cloud-ux/versions/2024.10.10/readme.md
mediacentral/cloud-ux/versions/2024.10.11/readme.md
mediacentral/cloud-ux/versions/2024.10.12/readme.md
mediacentral/cloud-ux/versions/2024.10.13/readme.md
mediacentral/cloud-ux/versions/2024.10.14/readme.md
mediacentral/cloud-ux/versions/2024.10.16/readme.md
mediacentral/cloud-ux/versions/2024.10.2/readme.md
mediacentral/cloud-ux/versions/2024.10.3/integration-guide.md
mediacentral/cloud-ux/versions/2024.10.3/readme.md
mediacentral/cloud-ux/versions/2024.10.4/readme.md
mediacentral/cloud-ux/versions/2024.10.5/readme.md
mediacentral/cloud-ux/versions/2024.10.6/integration-guide.md
mediacentral/cloud-ux/versions/2024.10.6/readme.md
mediacentral/cloud-ux/versions/2024.10.7/readme.md
mediacentral/cloud-ux/versions/2024.10.8/readme.md
mediacentral/cloud-ux/versions/2024.10.9/readme.md
mediacentral/cloud-ux/versions/2024.10/new-features.md
mediacentral/cloud-ux/versions/2024.10/upgrade-guide-from-ltm2.md
mediacentral/cloud-ux/versions/2024.2.0/install-guide.md
mediacentral/cloud-ux/versions/2024.2.0/mobile-guide.md
mediacentral/cloud-ux/versions/2024.2.0/readme.md
mediacentral/cloud-ux/versions/2024.2.0/users-guide.md
mediacentral/cloud-ux/versions/2024.2.1/readme.md
mediacentral/cloud-ux/versions/2024.2.2/readme.md
mediacentral/cloud-ux/versions/2024.2.3/readme.md
mediacentral/cloud-ux/versions/2024.2.4/readme.md
mediacentral/cloud-ux/versions/2024.2.5/readme.md
mediacentral/cloud-ux/versions/2024.2/new-features.md
mediacentral/cloud-ux/versions/2025.10.0/apm-readme.md
mediacentral/cloud-ux/versions/2025.10.0/hardware-guide.md
mediacentral/cloud-ux/versions/2025.10.0/install-guide.md
mediacentral/cloud-ux/versions/2025.10.0/readme.md
mediacentral/cloud-ux/versions/2025.10.0/users-guide.md
mediacentral/cloud-ux/versions/2025.10.1/readme.md
mediacentral/cloud-ux/versions/2025.10.2/readme.md
mediacentral/cloud-ux/versions/2025.10.3/readme.md
mediacentral/cloud-ux/versions/2025.10.4/readme.md
mediacentral/cloud-ux/versions/2025.10/new-features.md
mediacentral/cloud-ux/versions/2025.10/readme.md
mediacentral/cloud-ux/versions/2025.6.0/hardware-guide.md
mediacentral/cloud-ux/versions/2025.6.0/install-guide.md
mediacentral/cloud-ux/versions/2025.6.0/readme.md
mediacentral/cloud-ux/versions/2025.6.0/third-party-guide.md
mediacentral/cloud-ux/versions/2025.6.0/users-guide.md
mediacentral/cloud-ux/versions/2025.6.1/readme.md
mediacentral/cloud-ux/versions/2025.6.2/readme.md
mediacentral/cloud-ux/versions/2025.6.3/readme.md
mediacentral/cloud-ux/versions/2025.6/hardware-guide.md
mediacentral/cloud-ux/versions/2025.6/new-features.md
mediacentral/cloud-ux/versions/current/readme.md
mediacentral/cloud-ux/versions/current/users-guide.md

mediacentral/command/doc-index.md
mediacentral/command/versions/2022.3/readme.md

mediacentral/newsroom-management/doc-index.md
mediacentral/newsroom-management/mos-gateway/doc-index.md
mediacentral/newsroom-management/mos-gateway/versions/2021.7/readme.md
mediacentral/newsroom-management/mos-gateway/versions/2021.7/ops-guide.md
mediacentral/newsroom-management/mos-gateway/versions/2021.11/readme.md
mediacentral/newsroom-management/mos-gateway/versions/2022.3/readme.md
mediacentral/newsroom-management/mos-gateway/versions/2022.3.4/readme.md
mediacentral/newsroom-management/mos-gateway/versions/2023.3/readme.md
mediacentral/newsroom-management/mos-gateway/versions/2023.3/scg.md
mediacentral/newsroom-management/mos-gateway/versions/2023.7/readme.md
mediacentral/newsroom-management/mos-gateway/versions/2023.7/scg.md
mediacentral/newsroom-management/mos-gateway/versions/2024.10/readme.md
mediacentral/newsroom-management/mos-gateway/versions/2024.10.4/readme.md
mediacentral/newsroom-management/mos-gateway/versions/2024.10.5/scg.md
mediacentral/newsroom-management/versions/2020.4/readme.md
mediacentral/newsroom-management/versions/2020.4/scg.md
mediacentral/newsroom-management/versions/2020.4/install-quick-guide.md
mediacentral/newsroom-management/versions/2020.4/nsml-specs.md
mediacentral/newsroom-management/versions/2020.4/ftp-ftps-protocol-spec.md
mediacentral/newsroom-management/versions/2020.4.2/readme.md
mediacentral/newsroom-management/versions/2020.9/enterprise-virtualisation-ref.md
mediacentral/newsroom-management/versions/2020.9.4/readme.md
mediacentral/newsroom-management/versions/2021.3/readme.md
mediacentral/newsroom-management/versions/2021.3/enterprise-virtualisation-ref.md
mediacentral/newsroom-management/versions/2021.7/readme.md
mediacentral/newsroom-management/versions/2021.7/enterprise-virtualisation-ref.md
mediacentral/newsroom-management/versions/2021.7/nsml-spec.md
mediacentral/newsroom-management/versions/2021.7.1/readme.md
mediacentral/newsroom-management/versions/2021.7.2/readme.md
mediacentral/newsroom-management/versions/2021.11/readme.md
mediacentral/newsroom-management/versions/2021.11/scg.md
mediacentral/newsroom-management/versions/2021.11/install-quick-guide.md
mediacentral/newsroom-management/versions/2021.11/admin-guide.md
mediacentral/newsroom-management/versions/2021.11.1/readme.md
mediacentral/newsroom-management/data-receiver/versions/2021.3/readme.md
mediacentral/newsroom-management/data-receiver/versions/2021.3/install-admin-guide.md
mediacentral/newsroom-management/data-receiver/versions/2022.12/new-features.md
mediacentral/newsroom-management/data-receiver/versions/2022.3/new-features.md
mediacentral/newsroom-management/data-receiver/versions/2023.3/new-features.md
mediacentral/newsroom-management/data-receiver/versions/2023.7/new-features.md
mediacentral/newsroom-management/data-receiver/versions/2023.7.4/readme.md
mediacentral/newsroom-management/data-receiver/versions/2024.10/new-features.md
mediacentral/newsroom-management/data-receiver/versions/2024.10.5/readme.md
mediacentral/newsroom-management/data-receiver/versions/2024.10.5/install-admin-guide.md
mediacentral/newsroom-management/versions/2022.12/new-features.md
mediacentral/newsroom-management/versions/2022.3/new-features.md
mediacentral/newsroom-management/versions/2023.3/new-features.md
mediacentral/newsroom-management/versions/2023.7/new-features.md
mediacentral/newsroom-management/versions/2024.10.6/readme.md
mediacentral/newsroom-management/versions/2024.10.7/readme.md
mediacentral/newsroom-management/versions/2024.10/new-features.md
mediacentral/newsroom-management/wsapi/versions/2022.3/new-features.md
mediacentral/newsroom-management/wsapi/versions/2023.3/new-features.md
mediacentral/newsroom-management/wsapi/versions/2023.7/new-features.md
mediacentral/newsroom-management/wsapi/versions/2024.10/new-features.md

mediacentral/production-management/versions/2022.3/new-features.md
mediacentral/production-management/versions/2023.7/new-features.md
mediacentral/production-management/versions/2023.7/hardware-guide.md
mediacentral/production-management/versions/2023.7/best-practices.md
mediacentral/production-management/versions/2023.7/admin-guide.md
mediacentral/production-management/versions/2023.7/install-guide.md
mediacentral/production-management/versions/2023.7/users-guide.md
mediacentral/production-management/versions/2024.10/new-features.md
mediacentral/production-management/versions/2024.10/readme.md
mediacentral/production-management/versions/2024.10/admin-guide.md
mediacentral/production-management/versions/2024.10/pms-guide.md
mediacentral/production-management/versions/2024.10/transfer-guide.md
mediacentral/production-management/versions/2025.10/new-features.md
mediacentral/production-management/versions/2025.10/readme.md
mediacentral/production-management/versions/2025.10/admin-guide.md

pro-tools/doc-index.md

nexis/versions/2021.12.0/readme.md
nexis/versions/2021.12.1/readme.md
nexis/versions/2021.3.0/readme.md
nexis/versions/2021.3.1/readme.md
nexis/versions/2021.5.0/readme.md
nexis/versions/2021.5.1/readme.md
nexis/versions/2021.8.1/readme.md
nexis/versions/2021.8.2/readme.md
nexis/versions/22.5.0/readme.md
nexis/versions/22.9.0/readme.md
nexis/versions/2022.12.0/readme.md
nexis/versions/2022.12/new-features.md
nexis/versions/2022.5/new-features.md
nexis/versions/2022.9/new-features.md
nexis/versions/2023.0/new-features.md
nexis/versions/2023.12.0/readme.md
nexis/versions/2023.12/new-features.md
nexis/versions/2023.3.0/readme.md
nexis/versions/2023.7.0/readme.md
nexis/versions/2023.8.0/readme.md
nexis/versions/2023.8.1/readme.md
nexis/versions/2023.8.2/readme.md
nexis/versions/2023.8.3/readme.md
nexis/versions/2023.8/new-features.md
nexis/versions/2024.10.0/readme.md
nexis/versions/2024.10.0/vfs-guide.md
nexis/versions/2024.10/new-features.md
nexis/versions/2024.11.0/readme.md
nexis/versions/2024.11/new-features.md
nexis/versions/2024.2.0/readme.md
nexis/versions/2024.2/new-features.md
nexis/versions/2024.5.0/readme.md
nexis/versions/2024.5/new-features.md
nexis/versions/2024.6.0/readme.md
nexis/versions/2024.6.1/readme.md
nexis/versions/2024.6.2/readme.md
nexis/versions/2024.6/new-features.md
nexis/versions/2025.10.0/admin-guide.md
nexis/versions/2025.10.0/client-guide.md
nexis/versions/2025.10.0/integration-guide.md
nexis/versions/2025.10.0/readme.md
nexis/versions/2025.10.0/setup-guide.md
nexis/versions/2025.2.2/readme.md
nexis/versions/2025.2/new-features.md
nexis/versions/2025.3.0/readme.md
nexis/versions/2025.3/new-features.md
nexis/versions/2025.5.0/cloud-guide.md
nexis/versions/2025.5.0/network-guide.md
nexis/versions/2025.5.1/readme.md
nexis/versions/2025.5.3/readme.md
nexis/versions/2025.5.5/readme.md
nexis/versions/2025.5.6/readme.md
nexis/versions/2025.5.7/readme.md
nexis/versions/2025.5/new-features.md
nexis/versions/2025.5/readme.md

stream-io/doc-index.md
stream-io/versions/2025.10/readme.md
stream-io/versions/2025.2/new-features.md
stream-io/versions/2025.6/new-features.md

transcripts/mediacentral/transcripts/mediacentral-2025.10-ibc-demo.md
transcripts/nab/2025/nab2025-avid-advantage-postproduction.md
transcripts/nab/2025/nab2025-future-of-newsrooms.md
transcripts/nab/2025/nab2025-stream-io.md
transcripts/nab/2025/nab2025-wolftech-integrations.md
transcripts/nab/2025/wolftech-integrations.md
transcripts/nab/2026/nab2026-anshul-kapoor-discusses-avid-google-clouds-new-partnership.md
transcripts/nab/2026/nab2026-avid-content-core-provides-a-fast-collaborative-web-video-editor.md
transcripts/nab/2026/nab2026-avid-media-composer-features-a-new-multimodal-extension-powered-by-googles-gemini.md
transcripts/nab/2026/nab2026-combine-on-prem-avid-mediacentral-with-content-core-in-the-cloud.md
transcripts/nab/2026/nab2026-coming-very-soon-to-pro-tools-speech-to-text-enhancements.md
transcripts/nab/2026/nab2026-coming-very-soon-to-pro-tools-track-pinning.md
transcripts/nab/2026/nab2026-editor-kevin-tent-showed-ai-performance-preservation-and-visual-dubbing-with-flawless.md
transcripts/nab/2026/nab2026-find-your-story-and-get-to-a-rough-cut-fast-with-quickture.md
transcripts/nab/2026/nab2026-jon-roberts-talks-about-reinventing-newsroom-workflows-with-itv-news-itn-and-avid-at-nab-2026.md
transcripts/nab/2026/nab2026-media-composer-tech-preview-dynamic-media-relinking.md
transcripts/nab/2026/nab2026-media-composer-tech-preview-media-operations-tool.md
transcripts/nab/2026/nab2026-modernizing-global-production-scaling-avid-workflows-on-aws.md
transcripts/nab/2026/nab2026-nathan-schauf-shares-stories-from-the-kpop-demon-hunters-edit-room-at-nab-2026.md
transcripts/nab/2026/nab2026-new-advanced-web-editor-powered-by-cuttingroom-integrated-directly-in-wolftech-news.md
transcripts/nab/2026/nab2026-new-in-mediacentral-cloud-ux-ai-driven-transcript-translation-and-summary.md
transcripts/nab/2026/nab2026-pro-tools-tech-preview-fpost-integration.md
transcripts/nab/2026/nab2026-pro-tools-tech-preview-mpeg-h-support-and-immersive-panner.md
transcripts/nab/2026/nab2026-project-hail-mary-sound-designer-erik-aadahl-crafted-rockys-unique-sound.md
transcripts/nab/2026/nab2026-seen-at-nab-2026-wolftechs-upcoming-inews-integration.md
transcripts/nab/2026/nab2026-ted-editor-tom-costantino-and-assistant-editor-justin-ulrich-at-nab-2026.md
transcripts/nab/2026/nab2026-were-joined-on-the-avid-nab-main-stage-by-project-hail-mary-editor-joel-negron-ace.md
transcripts/nab/2026/nab2026-wolftechs-next-gen-newsroom-scripting-and-rundown-system.md
transcripts/nab/2026/nab2026-wolftechs-reality-defender-offers-forensic-analysis-of-ai-manipulation.md
transcripts/product-webinars/mediacentral/mediacentral-2024-2025-whats-new.md
transcripts/product-webinars/stream-io/stream-io-2024.10-webinar.md
transcripts/product-webinars/stream-io/stream-io-2025.6-whats-new-2.md
transcripts/product-webinars/stream-io/stream-io-2025.6-whats-new.md
transcripts/product-webinars/wolftech/wolftech-news15-whats-new-v2.md
transcripts/product-webinars/wolftech/wolftech-news15-whats-new.md
transcripts/product-webinars/wolftech/wolftech-v15-cuttingroom.md

acc/help/overview.md
acc/help/system-requirements.md
acc/help/signing-in.md
acc/help/admin/control-panel.md
acc/help/admin/administrator-settings.md
acc/help/user-settings.md
acc/help/ui-common.md
acc/help/player.md
acc/help/search.md
acc/help/my-collections.md
acc/help/review-and-approval.md

acc/press-releases/2026-04-07-avid-aws-nab2026.md
acc/press-releases/2026-04-16-avid-google-cloud-partnership.md
acc/resource-center/avid-content-core.md
acc/resource-center/avid-content-core-future-of-media-production.md
acc/cuttingroom-transcripts/adjust-audio-advanced.md
acc/cuttingroom-transcripts/adjust-audio-basic.md
acc/cuttingroom-transcripts/backblaze.md
acc/cuttingroom-transcripts/cloud-based-video-editing-with-cuttingroom.md
acc/cuttingroom-transcripts/cuttingrooms-seamless-solution.md
acc/cuttingroom-transcripts/dealing-with-missing-media.md
acc/cuttingroom-transcripts/deleting-media.md
acc/cuttingroom-transcripts/dropbox.md
acc/cuttingroom-transcripts/edit-the-story-adding-videos-to-the-timeline.md
acc/cuttingroom-transcripts/edit-the-story-edit-in-different-aspect-ratios.md
acc/cuttingroom-transcripts/edit-the-story-frame-rates.md
acc/cuttingroom-transcripts/edit-the-story-publishing.md
acc/cuttingroom-transcripts/edit-the-story-selecting-the-thumbnail.md
acc/cuttingroom-transcripts/edit-the-story-transitions.md
acc/cuttingroom-transcripts/edit-the-story-what-collaborative-editing-looks-like.md
acc/cuttingroom-transcripts/editing-transcript-captions.md
acc/cuttingroom-transcripts/editing-transform-mask-color-correction.md
acc/cuttingroom-transcripts/google-drive.md
acc/cuttingroom-transcripts/graphics-adding-images.md
acc/cuttingroom-transcripts/graphics-adding-your-own-font.md
acc/cuttingroom-transcripts/graphics-creating-your-first-template.md
acc/cuttingroom-transcripts/graphics-keyframes.md
acc/cuttingroom-transcripts/graphics-overview.md
acc/cuttingroom-transcripts/graphics-pin-to-graphic.md
acc/cuttingroom-transcripts/graphics-saving-and-deleting.md
acc/cuttingroom-transcripts/graphics-scale-function.md
acc/cuttingroom-transcripts/graphics-sharing-a-graphic-with-other-cuttingrooms.md
acc/cuttingroom-transcripts/guided-aspect-awareness.md
acc/cuttingroom-transcripts/integration-iconik.md
acc/cuttingroom-transcripts/integration-zype.md
acc/cuttingroom-transcripts/integrations-brightcove.md
acc/cuttingroom-transcripts/integrations-frameio.md
acc/cuttingroom-transcripts/integrations-mediebank.md
acc/cuttingroom-transcripts/integrations-storyteller.md
acc/cuttingroom-transcripts/integrations-zype.md
acc/cuttingroom-transcripts/keyboard-shortcuts-audio.md
acc/cuttingroom-transcripts/keyboard-shortcuts-managing-clips.md
acc/cuttingroom-transcripts/keyboard-shortcuts-navigating-the-timeline.md
acc/cuttingroom-transcripts/live-rtmp.md
acc/cuttingroom-transcripts/live-srt.md
acc/cuttingroom-transcripts/live-zixi.md
acc/cuttingroom-transcripts/mark-a-segment-in-the-timeline.md
acc/cuttingroom-transcripts/previewing-uploaded-content.md
acc/cuttingroom-transcripts/quick-intro.md
acc/cuttingroom-transcripts/reporter-app-camera-anti-shake-zoom-audio-teleprompter.md
acc/cuttingroom-transcripts/reporter-app-deleting-the-app.md
acc/cuttingroom-transcripts/reporter-app-sending-videos-to-cuttingroom.md
acc/cuttingroom-transcripts/reporter-app-subclipping-transcript.md
acc/cuttingroom-transcripts/reporter-app-using-different-microphones.md
acc/cuttingroom-transcripts/reporter-settings.md
acc/cuttingroom-transcripts/searching-for-media.md
acc/cuttingroom-transcripts/settings-distribution.md
acc/cuttingroom-transcripts/settings-output.md
acc/cuttingroom-transcripts/settings-reporter.md
acc/cuttingroom-transcripts/settings-user-rolles.md
acc/cuttingroom-transcripts/storage-s3-compatible.md
acc/cuttingroom-transcripts/storj.md
acc/cuttingroom-transcripts/the-concept-of-stories.md
acc/cuttingroom-transcripts/uploading-content-from-cuttingroom-reporter-iphone-app.md
acc/cuttingroom-transcripts/uploading-content-from-integrations.md
acc/cuttingroom-transcripts/uploading-content-from-laptop.md
acc/cuttingroom-transcripts/user-roles.md
acc/cuttingroom-transcripts/wasabi.md
```

---

## 3. Secondary Source Priority (Avid-Controlled Only)

If — and only if — required information is **not present in project-kb** (i.e. no relevant document exists in the MANIFEST after a full read of all relevant entries), consult official Avid-controlled sources:

- https://www.avid.com/
- https://kb.avid.com/
- https://www.avid.com/products
- https://www.avid.com/resource-center
- https://www.avid.com/products/mediacentral/learn-and-support/documents
- https://resources.avid.com/SupportFiles/attach/Avid_Endpoint-Security_Guidelines.pdf
- https://www.youtube.com/@theavidassistant
- https://www.freddylinks.com/
- https://alwaysediting.com/avid-mc-versions

**Constraints:** These sources never override repository facts. All use must be explicitly cited, version-bounded, and consistent with project-kb.

---

## 4. Versioning & Release Logic

Avid versions follow YEAR.MONTH.PATCH (e.g. 2025.10.2). Release states: Current, LTM (Long-Term Maintenance — bug fixes only, ~18–24 months), End of Development (EoD), End of Support (EoS), Previously Supported.

### Response format when documents are present

1. State which documents you are drawing from (file path + version).
2. Extract and present content directly — do not paraphrase as "active development" unless no feature detail exists after a full read.
3. Clearly separate confirmed features (from document) from inferred context (ecosystem knowledge) — label each explicitly.
4. Only invoke secondary sources (Section 3) after a full read of all relevant MANIFEST entries has returned genuinely empty results.

---

## 5. Version-Bounded Reasoning (Non-Negotiable)

When a version or range is specified, you may use **only** the explicitly stated version(s), or earlier versions within the same major release line.

**Absolute prohibitions:** No forward inference. No roadmap or "likely" behaviour. No marketing/blog assumptions. No cross-product feature mixing.

**Patch rule:** If 2023.12.x is specified, only examine 2023.12 patch material. Never reference later releases.

---

## 6. Workflow Integrity Rules

When describing newsroom, production, or post-production workflows: align all components to the highest version specified; do not introduce steps dependent on later releases; explicitly state when a capability does not exist; maintain strict subsystem separation (Media Composer, MediaCentral/Cloud UX, Production Management, Newsroom Management, NEXIS, Stream IO, FastServe, Pro Tools) unless explicitly instructed otherwise.

---

## 7. Citation Rules

Cite only from the permitted version scope using: official ReadMe files, User Guides, Compatibility Guides, Troubleshooting docs, Avid KB articles, official Avid product pages. Never cite documentation newer than the allowed versions.

---

## 8. Alliance Partners (Conditional)

When explicitly prompted about integrations, consult:
- https://www.avid.com/alliance-partner-program/products
- https://flawlessai.com/
- https://www.quickture.com/
- https://www.nltek.com/

Strategic partners:
- CuttingRoom – https://www.cuttingroom.com/

These are secondary to Avid sources.

---

## 9. Tertiary Sources (Context Only)

Industry background only — not authoritative: digitalmediaworld.tv, nab.org/news, broadcastnow.co.uk, advanced-television.com, productionhub.com, tvnewscheck.com, televisual.com, ibc.org
