---
product: mediacentral
product-area: compatibility
version: "2025.12"
release-date: 26/12/2025
doc-type: compatibility-matrix
source: avid-official
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [compatibility, media-composer, production-management, apm, mcpm, editor-compatibility]
---

# Compatibility Support Matrix: Media Composer and Production Management

Covers: Avid Media Composer and Avid Production Management (APM) / MediaCentral | Production Management (MC|PM).

Latest version of this document:
https://kb.avid.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts

Last revised: 12/01/2026

---

## Revision History

| Date | Change |
|---|---|
| 26/12/2025 | Added sections on Avid Production Management (APM) |
| 01/07/2025 | Added row for MC v2025.x in "MC v2021.12.x and Later (MC\|PM)" table |
| 24/02/2025 | Updated row for MC v2024.x in "MC v2021.12.x and Later (MC\|PM)" table |
| 13/02/2025 | Format and style update |
| 14/01/2025 | Removed note about MC\|PM incompatibility with Windows 11 |
| 06/12/2024 | Added column for 24.10 in "MC v2021.12.x and Later (MC\|PM)" table |
| 15/05/2024 | Added row for MC v2024.x in "MC v2021.12.x and Later (MC\|PM)" table |
| 23/08/2023 | Added column for 23.7 and updated MC\|PM to v2023.7.x for MC 2023.x |

---

## How to Read This Document

**S and R both indicate the editor is supported** on that version of Production Management.

**R additionally means you must install Production Management components from that release on the corresponding editing system.** Always read the table horizontally: find the editor row, look for the **R** column — those are the PM components to install on the editor.

`.x` in version notation indicates the expectation that the user is on the current patch release.

---

## Avid Production Management (APM) — MC v2025.12 and Later

APM is the Kubernetes/Linux/PostgreSQL successor platform introduced in v2025.10. When installing a Media Composer editor in an APM environment, you must install the corresponding APM components on that editor:

- Avid Production Index (formerly Media Indexer) client
- Avid Production Management Access
- Avid Transfer client (optional)

These are available on the "Install Editor Support" page of the APM client installer.

> **Note:** "Avid PM" = Avid Production Management in the table below.

### MC v2025.12 and Later (APM)

| Media Composer | Version of Avid PM Components to Install | APM Server v25.10 |
|---|---|---|
| MC 2025.12 | Avid PM v2025.10.x | R ^a ^b ^c |

**Footnotes:**

a. MC | Cloud Remote is not supported in this version.

b. Mac ARM systems running MC 24.12 or newer will need to use Transfer Client 24.10.1 or newer.

c. macOS Tahoe (v26) is currently only supported in a standalone environment and not in a workgroup environment.

---

## MediaCentral | Production Management (MC|PM) — Compatibility Notes

MC|PM is the legacy Windows/SQL Server platform. When installing a Media Composer editor in an MC|PM environment, you must install the corresponding MC|PM components on that editor:

- MC | Production Index (formerly Media Indexer) client
- MC | Production Management Access
- MC | Transfer client (optional)
- Avid Service Framework (not required for Media Indexer 3.5 or later)

These are available on the "Install Editor Support" page of the MC|PM client installer.

> **Notes:**
> - "MC|PM" = MediaCentral | Production Management throughout tables below.
> - Starting with Interplay v2017.2, Media Indexer was rebranded as MC | Production Index. Portions of documentation may continue to use the term "Media Indexer" or "MI".

---

## MC v2021.12.x and Later (MC|PM)

> Read the table **horizontally** to determine which MC|PM components to install on an editor.
> For example: MC 2022.x is supported on several MC|PM releases, but only the 22.3 components must be installed on the editor (the "R" column). Always install the latest 2022.3 MC|PM components on an MC 2022.x editor.

> ⚠️ **WARNING: MediaComposer v2022.10 does not support MediaCentral | Production Management.**

| Media Composer | MC\|PM Version Used | 24.10 | 23.7 | 22.3 | 21.3 | 20.4 | 19.6 | 18.11 |
|---|---|---|---|---|---|---|---|---|
| MC 2025.x | v2024.10.x | R ^c ^d ^e | S ^c ^d ^e | | | | | |
| MC 2024.x | v2024.10.x | R ^c ^d | S ^c ^d | S ^c ^d | | | | |
| MC 2023.x | v2023.7.x | S | R ^c | S ^c | | | | |
| MC 2022.x | v2022.3.x | | S | R | S ^b | | | |
| MC 2021.12.x ^† | v2021.3.x | | S | S | R ^b | S ^a ^b | S ^a ^b | S ^a ^b |

†  For macOS Big Sur or higher with MC 2021.12.x, use the 2022.3 client.

**Footnotes:**

a. If running LongGOP workflows, it is recommended to update to MI 2021.3 server or higher.

b. Media Composer can connect to this environment with the most recent version of the MC Production Client. Be aware that any issues specific to the PM client, database, Media Indexer, or any ancillary services may only be addressed in the latest Long Term Maintenance Release (LTM) of MC|PM.

c. MC | Cloud Remote is not supported in this version.

d. Mac ARM systems running MC 24.12 or newer will need to use Transfer Client 24.10.1 or newer.

e. macOS Tahoe (v26) is currently only supported in a standalone environment and not in a workgroup environment.

---

## MC v8.10.x through v2020.12.x (MC|PM)

> Read the table **horizontally** to determine which MC|PM components to install. See footnote (a) for MI client installation behaviour starting with MC v8.10.x.

| Media Composer | MC\|PM Version Used | 21.3 | 20.4 | 19.6 | 18.11 | 18.9 | 18.6 | 17.2 | 3.8.x | 3.7.x | 3.6.x | 3.5.x |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MC v8.10.x | v2017.x | | | | | R ^a | S | S | S ^b | S ^b | | |
| MC 2018.1–2018.5 | v2017.x | | | | | S | R ^c | S | S | S ^b | S ^b | |
| MC 2018.5.1–2018.8 | v2018.6.x | | | | | R | S | S | S | S ^b | S ^b | |
| MC 2018.9 | v2018.9.x | | | | | R | S | S | S | S | S ^b | S ^b |
| MC 2018.10 | v2018.9.x | | | | S | R | S | S | S | S | S ^b | S ^b |
| MC 2018.11 | v2018.11.x | | | | R | S | S | S | S | S | S ^b | S ^b |
| MC 2018.12.x | v2018.11.x | | | S | R | S | S | S | S | S | S ^b | S ^b |
| MC 2019.x | v2018.11.x | | | S | R | S | S | S | S | S | S ^b | S ^b |
| MC 2020.12.x ^d | v2020.4.x | S | R ^e | S ^e | S ^e | | | | | | | |

**Footnotes:**

a. Starting with MC v8.10.x, you can install the MI client that ships with the "R" MC|PM release on the editor. This applies for all MC|PM releases that the editor is supported on. The MI server can stay at the appropriate version for the MC|PM "backend."

b. Sony XAVC-L resolution not supported for check-in to MC|PM.

c. For details on the correct version of the MC Transfer client to install, see "Install Limitations on MediaCentral Transfer Clients" below.

d. MC 2020.x is not currently supported with Production Management on macOS 10.15.x (Catalina) or higher.

e. If running LongGOP workflows, it is recommended to run MI 2020.4.3 or higher server and client with MC v2020.12.2 or higher.

### Install Limitations on MediaCentral Transfer Clients

The installer for MC Transfer clients differs by editor version:

- **MC 2018.5.1 and later:** use the base client installer that is part of the MC Transfer standalone installer.
- **MC 2018.5 and earlier:** use the client installer named `TransferClient_2018.9.1_VC12.zip`.

The reason for different installers: the base MC Transfer client 2018.9.1 is built with a newer version of Microsoft Visual Studio for compatibility with MC v2018.5.1 and greater. The VC12 version also contains the latest fixes and is provided for compatibility with earlier MC versions.

---

## Editor Releases MC v8.2 through MC v8.9.x

These releases required specific versions of Media Indexer for compatibility with different Interplay Production releases. MI versions are shown below each compatibility entry.

> Read the table **horizontally**. For example: MC v8.7.x is supported on several Interplay Production releases, but Interplay v3.7.x is designated by "R". Always install the latest Interplay v3.7.x components on an MC v8.7.x editor.

| Media Composer | Interplay v2017.2 | v3.8.x | v3.7.x | v3.6.x | v3.5.x | v3.4.x | v3.3.x | v3.2.x | v3.1.x |
|---|---|---|---|---|---|---|---|---|---|
| MC v8.2.x | S ^b | S ^b | R ^a ^b | R ^b ^c | | | | | |
| MC v8.3.x | NS | NS | NS | NS | | | | | |
| MC v8.4.x | | S | R ^d | R ^d | S ^e | | | | |
| MC v8.5.x | | R | S | S | S ^e | | | | |
| MC v8.6.x | R ^f | S | S | S | S ^e | | | | |
| MC v8.7.x | S | R | S | S | S | S | S ^e | | |
| MC v8.8.x | S | R ^g | R ^g | S ^h | S ^h | S ^h | S ^h | S ^e ^h | |
| MC v8.9.x | S | R | S | S ^h ^i | S ^h | S ^h | S ^h | S ^e ^h | |

MI versions for each editor / Interplay pairing (where specified):

- MC v8.2.x: MI v3.4.3 (v3.8.x), MI v3.4.3 (v3.7.x), MI v3.4.3 (v3.6.x)
- MC v8.4.x: MI v3.5 (v3.8.x), MI v3.4.3 (v3.7.x/v3.6.x/v3.5.x)
- MC v8.5.x: MI 3.5 (v3.8.x), MI v3.4.3 (v3.7.x/v3.6.x/v3.5.x)
- MC v8.6.x: MI 2017.2.1 (v2017.2), MI 3.5 (v3.7.x), MI v3.4.3 (v3.6.x/v3.5.x)
- MC v8.7.x: MI 2017.2.1 (v2017.2–v3.7.x), MI 3.5 (v3.5.x), MI v3.4.3 (v3.4.x–v3.1.x)
- MC v8.8.x: MI 2017.2.1 (v2017.2–v3.6.x), MI 3.5 (v3.4.x), MI v3.4.3 (v3.3.x–v3.1.x)
- MC v8.9.x: MI 2017.2.1 (v2017.2–v3.6.x), MI 3.5 (v3.4.x), MI v3.4.3 (v3.3.x–v3.1.x)

**Footnotes:**

a. The Interplay v3.2 features for MC | Cloud, Remote Download, and Remote Send to Playback require MC v8.2.x (x ≥ 2).

b. For MC v8.2.x (x ≥ 2), use Interplay v3.2 components in a v3.2 or greater environment. Use v3.1 components in Interplay v3.1 and v3.0.x environments.

c. MC v8.2.x is supported in an Interplay v3.0.x environment but does not support a full AMA workflow in that environment. Full AMA workflow features require Interplay v3.1 or greater.

d. For MC 8.4.x, use the Interplay components that match the version of the Interplay environment.

e. There is no support for DNxHR resolutions in Interplay v3.2.

f. MC 8.6.3 is not supported with MC Cloud. MC 8.6.4 is supported with MC Cloud 3.6.2 and greater.

g. For MC 8.8.x, use Interplay v3.8 components for Interplay v3.8 and use v3.7 components for earlier releases.

h. Sony XAVC-L resolution not supported for check-in to Interplay.

i. Use MI 2017.2.1 for releases later than Interplay v3.5 and less than 2018.6.

### Media Indexer Versions for MC v8.2.x through v8.9.x

For MC v8.9.x and earlier, MI versions listed in the table apply to both the MI server and the MI client application installed on the editor. In some cases this may require an additional installer.

- MI v3.7.x and v3.4.3 are available as separate installers on the Avid Download Center.
- There is **no** MI v3.4.3 client for macOS. Use MI v3.4.2 for macOS editors running with an MI v3.4.3 server.

---

## Editor Releases Earlier than MC v8.2

These values are for Interplay releases before Interplay v3.2. Interplay components include: Access, Media Indexer client, Avid Service Framework, and (optionally) Transfer client.

| Avid Editing Application | Interplay v3.1.x | v3.0.x | v2.7.x | v2.6.x |
|---|---|---|---|---|
| MC v5.5.5, NC v9.5.5, Sym v5.5.5 | R | S | | |
| MC v6.0.5, NC v10.0.5, Sym v6.0.5 | R | S | | |
| MC v6.5.4.x, NC v10.5.4.x, Sym v6.5.4.x | S | R | S | |
| MC v7.0.x, NC v11.0.x | S | R | | |
| MC v8.0.x | S | R | | |
| MC v8.1.x | R | S ^a | | |

**Footnotes:**

a. MC v8.1.x and v8.2.x are supported in an Interplay v3.0.x environment but they do not support a full AMA workflow in that environment. Full AMA workflow features require an Interplay v3.1 or greater environment.

> MC v8.1.x or higher is required to use the AMA workflow features introduced in Interplay v3.1.

---

*Compatibility Support Matrix — Revised 12/01/2026. Distributed by Avid in online (electronic) form only.*
