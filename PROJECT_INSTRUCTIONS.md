# PROJECT INSTRUCTIONS – SOURCE & REASONING PRIORITY

## 1. Primary Source of Truth

This project uses the **Avid Knowledge Base repository** `Tamaniu/project-kb` as the **sole primary and authoritative source of truth**.

### Mandatory Rules

1. **Repository-first** — Always search and reason over `Tamaniu/project-kb` before using any external source.
2. **MANIFEST authority** — The MANIFEST in Section 2 is the complete and authoritative index of available documentation. Do not assume the existence of files, products, versions, or features not listed.
3. **No general knowledge inference** — Do not infer, extrapolate, or fill gaps using experience, marketing material, or assumptions.
4. **Explicit absence** — If **no relevant document exists in the MANIFEST** for the queried product/version, state exactly: **"Not present in project-kb."** Do not use this phrase if a document exists but requires reading — in that case, read it and extract the answer. Do not speculate.
5. **Active synthesis required** — When a document is confirmed present in the MANIFEST, you must read and extract content from it directly — do not rely solely on keyword search. If a document exists but is not yielding structured output via search, switch to full-document reading and synthesise the answer manually.

---

## 2. Repository MANIFEST (Authoritative Scope)

Only the following 293 documents are in scope unless the MANIFEST is updated:

```
README.md
_meta/compatibility-matrix.md
explainers/ltm-releases.md
fastserve/ingest/versions/2022.9/new-features-2022.9-to-2024.3.md
fastserve/playout/versions/2022.2/new-features-2022.2-to-2023.20.md
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
media-composer/guides/2024/admin-guide.md
media-composer/guides/2025.x/vdi-guide.md
media-composer/guides/2025/editing-guide.md
media-composer/guides/2025/fx-guide.md
media-composer/guides/2025/install-guide.md
media-composer/versions/2021.12/new-features.md
media-composer/versions/2022.10/new-features.md
media-composer/versions/2022.12/new-features.md
media-composer/versions/2022.4/new-features.md
media-composer/versions/2022.7/new-features.md
media-composer/versions/2023.12/new-features.md
media-composer/versions/2023.3/new-features.md
media-composer/versions/2023.8/new-features.md
media-composer/versions/2024.2/new-features.md
media-composer/versions/2024.6/new-features.md
media-composer/versions/2025.12/new-features.md
media-composer/versions/2025.12/readme.md
media-composer/versions/2025.6/new-features-detail.md
media-composer/versions/2025.6/new-features-standalone.md
media-composer/versions/2025.6/new-features.md
media-composer/versions/2025.6/readme.md
media-composer/versions/2025/release-notes.md
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
mediacentral/command/versions/2022.3/readme.md
mediacentral/newsroom-management/data-receiver/versions/2022.12/new-features.md
mediacentral/newsroom-management/data-receiver/versions/2022.3/new-features.md
mediacentral/newsroom-management/data-receiver/versions/2023.3/new-features.md
mediacentral/newsroom-management/data-receiver/versions/2023.7/new-features.md
mediacentral/newsroom-management/data-receiver/versions/2024.10/new-features.md
mediacentral/newsroom-management/versions/2022.12/new-features.md
mediacentral/newsroom-management/versions/2022.3/new-features.md
mediacentral/newsroom-management/versions/2023.3/new-features.md
mediacentral/newsroom-management/versions/2023.7/new-features.md
mediacentral/newsroom-management/versions/2024.10.6/readme.md
mediacentral/newsroom-management/versions/2024.10/new-features.md
mediacentral/newsroom-management/wolftech/modules/administration/api-automation.md
mediacentral/newsroom-management/wolftech/modules/administration/user-management.md
mediacentral/newsroom-management/wolftech/modules/communication-collaboration/chat-notifications.md
mediacentral/newsroom-management/wolftech/modules/long-form/long-form-overview.md
mediacentral/newsroom-management/wolftech/modules/plan/content-categorisation.md
mediacentral/newsroom-management/wolftech/modules/plan/events-calendars.md
mediacentral/newsroom-management/wolftech/modules/plan/greenlight.md
mediacentral/newsroom-management/wolftech/modules/plan/plan-view.md
mediacentral/newsroom-management/wolftech/modules/plan/read-in-notes.md
mediacentral/newsroom-management/wolftech/modules/production/ai-assistants.md
mediacentral/newsroom-management/wolftech/modules/production/content-guidance.md
mediacentral/newsroom-management/wolftech/modules/production/editing.md
mediacentral/newsroom-management/wolftech/modules/production/editorial-background-info.md
mediacentral/newsroom-management/wolftech/modules/production/fact-checking.md
mediacentral/newsroom-management/wolftech/modules/production/media-management-integrations.md
mediacentral/newsroom-management/wolftech/modules/publish/publishing.md
mediacentral/newsroom-management/wolftech/modules/research-feeds/feeds.md
mediacentral/newsroom-management/wolftech/modules/resourcing/finance-cost-tracking.md
mediacentral/newsroom-management/wolftech/modules/resourcing/location-map-risk.md
mediacentral/newsroom-management/wolftech/modules/resourcing/resourcing-booking.md
mediacentral/newsroom-management/wolftech/modules/ux-navigation/accessibility.md
mediacentral/newsroom-management/wolftech/modules/ux-navigation/first-time-setup.md
mediacentral/newsroom-management/wolftech/modules/ux-navigation/language-management.md
mediacentral/newsroom-management/wolftech/modules/ux-navigation/search.md
mediacentral/newsroom-management/wolftech/modules/ux-navigation/wall-monitor.md
mediacentral/newsroom-management/wolftech/modules/wolftech-go/wolftech-go.md
mediacentral/newsroom-management/wsapi/versions/2022.3/new-features.md
mediacentral/newsroom-management/wsapi/versions/2023.3/new-features.md
mediacentral/newsroom-management/wsapi/versions/2023.7/new-features.md
mediacentral/newsroom-management/wsapi/versions/2024.10/new-features.md
mediacentral/production-management/versions/2022.3/new-features.md
mediacentral/production-management/versions/2023.7/new-features.md
mediacentral/production-management/versions/2024.10/new-features.md
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
stream-io/versions/2025.10/readme.md
stream-io/versions/2025.2/new-features.md
stream-io/versions/2025.6/new-features.md
transcripts/mediacentral/transcripts/mediacentral-2025.10-ibc-demo.md
transcripts/nab/2025/nab2025-avid-advantage-postproduction.md
transcripts/nab/2025/nab2025-future-of-newsrooms.md
transcripts/nab/2025/nab2025-stream-io.md
transcripts/nab/2025/nab2025-wolftech-integrations.md
transcripts/nab/2025/wolftech-integrations.md
transcripts/product-webinars/mediacentral/mediacentral-2024-2025-whats-new.md
transcripts/product-webinars/stream-io/stream-io-2024.10-webinar.md
transcripts/product-webinars/stream-io/stream-io-2025.6-whats-new-2.md
transcripts/product-webinars/stream-io/stream-io-2025.6-whats-new.md
transcripts/product-webinars/wolftech/wolftech-news15-whats-new-v2.md
transcripts/product-webinars/wolftech/wolftech-news15-whats-new.md
transcripts/product-webinars/wolftech/wolftech-v15-cuttingroom.md
transcripts/workflows/cuttingroom/adjust-audio-advanced.md
transcripts/workflows/cuttingroom/adjust-audio-basic.md
transcripts/workflows/cuttingroom/backblaze.md
transcripts/workflows/cuttingroom/cloud-based-video-editing-with-cuttingroom.md
transcripts/workflows/cuttingroom/cuttingrooms-seamless-solution.md
transcripts/workflows/cuttingroom/dealing-with-missing-media.md
transcripts/workflows/cuttingroom/deleting-media.md
transcripts/workflows/cuttingroom/dropbox.md
transcripts/workflows/cuttingroom/edit-the-story-adding-videos-to-the-timeline.md
transcripts/workflows/cuttingroom/edit-the-story-edit-in-different-aspect-ratios.md
transcripts/workflows/cuttingroom/edit-the-story-frame-rates.md
transcripts/workflows/cuttingroom/edit-the-story-publishing.md
transcripts/workflows/cuttingroom/edit-the-story-selecting-the-thumbnail.md
transcripts/workflows/cuttingroom/edit-the-story-transitions.md
transcripts/workflows/cuttingroom/edit-the-story-what-collaborative-editing-looks-like.md
transcripts/workflows/cuttingroom/editing-transcript-captions.md
transcripts/workflows/cuttingroom/editing-transform-mask-color-correction.md
transcripts/workflows/cuttingroom/google-drive.md
transcripts/workflows/cuttingroom/graphics-adding-images.md
transcripts/workflows/cuttingroom/graphics-adding-your-own-font.md
transcripts/workflows/cuttingroom/graphics-creating-your-first-template.md
transcripts/workflows/cuttingroom/graphics-keyframes.md
transcripts/workflows/cuttingroom/graphics-overview.md
transcripts/workflows/cuttingroom/graphics-pin-to-graphic.md
transcripts/workflows/cuttingroom/graphics-saving-and-deleting.md
transcripts/workflows/cuttingroom/graphics-scale-function.md
transcripts/workflows/cuttingroom/graphics-sharing-a-graphic-with-other-cuttingrooms.md
transcripts/workflows/cuttingroom/guided-aspect-awareness.md
transcripts/workflows/cuttingroom/integration-iconik.md
transcripts/workflows/cuttingroom/integration-zype.md
transcripts/workflows/cuttingroom/integrations-brightcove.md
transcripts/workflows/cuttingroom/integrations-frameio.md
transcripts/workflows/cuttingroom/integrations-mediebank.md
transcripts/workflows/cuttingroom/integrations-storyteller.md
transcripts/workflows/cuttingroom/integrations-zype.md
transcripts/workflows/cuttingroom/keyboard-shortcuts-audio.md
transcripts/workflows/cuttingroom/keyboard-shortcuts-managing-clips.md
transcripts/workflows/cuttingroom/keyboard-shortcuts-navigating-the-timeline.md
transcripts/workflows/cuttingroom/live-rtmp.md
transcripts/workflows/cuttingroom/live-srt.md
transcripts/workflows/cuttingroom/live-zixi.md
transcripts/workflows/cuttingroom/mark-a-segment-in-the-timeline.md
transcripts/workflows/cuttingroom/previewing-uploaded-content.md
transcripts/workflows/cuttingroom/quick-intro.md
transcripts/workflows/cuttingroom/reporter-app-camera-anti-shake-zoom-audio-teleprompter.md
transcripts/workflows/cuttingroom/reporter-app-deleting-the-app.md
transcripts/workflows/cuttingroom/reporter-app-sending-videos-to-cuttingroom.md
transcripts/workflows/cuttingroom/reporter-app-subclipping-transcript.md
transcripts/workflows/cuttingroom/reporter-app-using-different-microphones.md
transcripts/workflows/cuttingroom/reporter-settings.md
transcripts/workflows/cuttingroom/searching-for-media.md
transcripts/workflows/cuttingroom/settings-distribution.md
transcripts/workflows/cuttingroom/settings-output.md
transcripts/workflows/cuttingroom/settings-reporter.md
transcripts/workflows/cuttingroom/settings-user-rolles.md
transcripts/workflows/cuttingroom/storage-s3-compatible.md
transcripts/workflows/cuttingroom/storj.md
transcripts/workflows/cuttingroom/the-concept-of-stories.md
transcripts/workflows/cuttingroom/uploading-content-from-cuttingroom-reporter-iphone-app.md
transcripts/workflows/cuttingroom/uploading-content-from-integrations.md
transcripts/workflows/cuttingroom/uploading-content-from-laptop.md
transcripts/workflows/cuttingroom/user-roles.md
transcripts/workflows/cuttingroom/wasabi.md
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
- CuttingRoom – https://docs.qibb.com/platform/cuttingroom
- Wolftech – https://docs.qibb.com/platform/wolftech

These are secondary to Avid sources.

---

## 9. Tertiary Sources (Context Only)

Industry background only — not authoritative: digitalmediaworld.tv, nab.org/news, broadcastnow.co.uk, advanced-television.com, productionhub.com, tvnewscheck.com, televisual.com, ibc.org
