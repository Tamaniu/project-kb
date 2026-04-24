---
product: mediacentral
product-area: platform
version: "2025.12"
release-date: 18/12/2025
doc-type: compatibility-matrix
source: avid-official
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [compatibility, supported-versions, platform, cloud-ux, production-management, mcpm, apm, stream-io, nexis, nexis-edge, fast-serve, router-control]
---

# Compatibility Support Matrix: Avid MediaCentral

Covers:
- Avid MediaCentral | Cloud UX
- Avid Production Management (APM)
- Avid MediaCentral | Production Management (MCPM)
- Avid | Stream IO
- Avid Video Servers (FastServe Ingest, FastServe Playout, MediaCentral Stream)
- Router Control
- Avid NEXIS E-Series, F-Series, PRO, and PRO+

Latest version: https://kb.avid.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts

> **Important notes:**
> - Some products list support for multiple software versions. If you encounter an issue on an older version, Avid may require you to upgrade to resolve it.
> - All OS references in this document are valid only through the standard support period from the manufacturer.
> - Products or versions listed here may no longer be supported or available for purchase. See Avid's Final Sale and End of Support Dates page for current status.

---

## Revision History

| Date | Change |
|---|---|
| 18/12/2025 | Added Avid NEXIS 2025.5.6 |
| 15/12/2025 | Added support information for Wolftech News and MC |
| 11/12/2025 | Added Avid Production Management to Stream IO compatibility matrix |
| 08/12/2025 | Added Avid Production Management v2025.10 and MC Ingest 2025.10 |
| 01/12/2025 | Added Avid NEXIS 2025.5.5 |
| 14/11/2025 | Avid MediaCentral v2025.10 release; MC Cloud UX Mobile section moved to Legacy matrix |
| 21/10/2025 | Added Avid NEXIS 2025.10.0; added Pro Tools 2025.10 support with NEXIS 2025.5.1 |
| 10/10/2025 | Corrected Avid Maestro News support with MC Cloud UX v2025.6 |
| 02/10/2025 | Added support for MC Ingest 2024.10.x with Avid NEXIS 2025.5.3 |
| 23/09/2025 | Added Avid NEXIS 2025.5.3 |
| 24/07/2025 | Added support for Windows Server 2022 for MC Ingest v2024.10.1 |
| 09/07/2025 | Added Avid NEXIS 2025.5.1 |
| 26/06/2025 | Avid MediaCentral v2025.6 release; MC Collaborate Mobile moved to Legacy matrix |
| 19/05/2025 | Added support for Adobe Premiere Pro v25.2.1 for MC Panel for 3P Creative Tools v2024.10 |
| 14/04/2025 | Updated MC Cloud UX 2024.10 compatibility for MC Panel for AP ENPS |
| 10/04/2025 | Updated OS support for Production Client Components 2024.10; added PP v24.6/v25.1 for 3P Panel v2024.10 |
| 25/03/2025 | Removed Avid NEXIS 2025.2.0 |
| 07/03/2025 | Updated MC Cloud UX 2024.10 compatibility for MC Panel for AP ENPS |

---

## Avid MediaCentral | Cloud UX

### v2025.10 (Latest)

| Component | MC \| Cloud UX v2025.10 |
|---|---|
| **MC \| Production Management** | v2024.10 |
| **MediaCentral Distribution Service (MDS)** | v2024.10 |
| **MC \| Newsroom Management** | v2024.10.5 |
| **Avid Maestro** | Not Supported |
| **MC Panel for Media Composer [a]** | Media Composer v2023.12.x and later |
| **MC Panel for 3P Creative Tools** | v2025.6 — Adobe Premiere Pro v24.6 and v25.5; After Effects v24.6 and v25.5; Photoshop v25.12 and v26.11. OS: macOS Sonoma 14.x, Sequoia 15.x, Windows 10, Windows 11 |
| **MC Panel for AP ENPS** | ENPS v9.5.1 or later; Maestro News MOS Gateway 3.2.8; MC Panel for Graphics v2022.3 requires ENPS v9.5.1+; Maestro News MOS Service v2022.3 required for both panels |
| **MC Panel for Octopus News** | Not Supported |
| **MC Panel for CGI OpenMedia** | Not Supported |
| **Avid NEXIS Client [b]** | Use the latest Avid NEXIS Client for Ubuntu |
| **Chrome 64-bit** | Tested v142.0.7444 |

a. Refers specifically to compatibility between Media Composer and the MC Panel for Media Composer. For MC/MCPM compatibility, see the Editor Compatibility Matrix.

b. Avid recommends installing the latest Avid NEXIS Client for your OS. Avid ISIS is not supported in this release of MC Cloud UX.

---

### v2025.6 — v2023.12

| Component | v2025.6 | v2024.10 (LTM) | v2024.2 | v2023.12 |
|---|---|---|---|---|
| **Release Date** | 26/06/2025 | 14/11/2024 | 29/02/2024 | 21/12/2023 |
| **OS — Linux** | Ubuntu Server LTS v22.04.x | Ubuntu Server LTS v22.04.x | Ubuntu Server LTS v22.04.x | Ubuntu Server LTS v22.04.x |
| **MC \| Phonetic Index** | Nexidia Search Grid v3.1.32 | Nexidia Search Grid v3.1.32 | Nexidia Search Grid v3.1.32 | Nexidia Search Grid v3.1.32 |
| **MC \| Distributed Processing** | See MC\|DP compatibility matrix | See MC\|DP compatibility matrix | See MC\|DP compatibility matrix | — |
| **MC \| Ingest** | 2024.10 | 2024.10, 2023.7 | 2023.7 | 2023.7 |
| **MC Sync Exchange Service** | 2024.10 | 2024.10 | 2023.7 | 2023.7 |
| **MC Acquire with FastServe Ingest [a]** | 2023.11 and later | 2023.11 and later | 2023.11 and later | 2023.11 and later |
| **Wolftech News** | Version 15–v15.1 | Version 15 | Not Supported | Not Supported |
| **MC \| Asset Management** | v2024.10 (8.4) | v2024.10 (8.4), v2023.7 (8.3) | v2023.7 (8.3) | v2023.7 (8.3) |
| **MC \| Shared Library** | v2024.10 (8.4) | v2024.10 (8.4), v2023.7 (8.3) | v2023.7 (8.3) | v2023.7 (8.3) |
| **MC \| Graphics Management** | v2024.10 (8.4) | v2024.10 (8.4), v2023.7 (8.3) | v2023.7 (8.3) | v2023.7 (8.3) |
| **MC \| Production Management** | v2024.10 | v2024.10, v2023.7 | v2023.7 | v2023.7 |
| **MDS (for STP workflows)** | v2024.10 | v2024.10 or v2023.7 | v2023.7 | v2023.7 |
| **MC \| Newsroom Management** | v2024.10 | v2024.10, v2023.7 | 2023.7 | 2023.7 |
| **Avid Maestro** | Not Supported | News v2022.3.16+, Designer v2022.3.4+, RE v2022.3.9+ | News, Designer, RE v2022.3 | News, Designer, RE v2022.3 |
| **MC Panel for Media Composer [b]** | v2023.12.x and later | v2022.12.x and later | v2022.12.x and later | v2022.12.x and later |
| **MC Panel for 3P Creative Tools** | v2025.6 (PP v24.6/v25.2, AE v24.6/v25.2, PS v25.12/v26.7; macOS Sonoma, Sequoia; Win 10/11) | v2024.10 (PP v23.6–v25.2.1, AE v23.6–v24.6, PS v24.7–v25.12; macOS Sonoma; Win 10/11) | v2023.12 (PP v23.6/v24.2/v24.4.1, AE v23.6/v24.2, PS v24.7/v25.5; macOS Ventura/Sonoma; Win 10/11) | v2023.12 (PP v23.6/v24.0/v24.4.1, AE v23.6/v24.0, PS v24.7/v25.1; macOS Big Sur–Sonoma; Win 10/11) |
| **MC Panel for AP ENPS** | ENPS v9.5.1+; Panel for Graphics: ENPS v9.5.1+; MOS Service v2022.3 for both | MC Cloud UX v2024.10.6; ENPS v9.5.1+; Panel for Graphics: ENPS v9.5.1+; MOS Service v2022.3 for both | ENPS v9.x+; Panel for Graphics: ENPS v9.x+; MOS Service v2022.3 for both | ENPS v9.x+; Panel for Graphics: ENPS v9.x+; MOS Service v2022.3 for both |
| **MC Panel for Octopus News** | Not Supported | Octopus v8.3+; Panel for Graphics: Octopus v8.3+; MOS Service v2022.3 for both | Octopus v8.3+; Panel for Graphics: Octopus v8.3+ | Octopus v8.3+; Panel for Graphics: Octopus v8.3+ |
| **MC Panel for CGI OpenMedia** | Not Supported | Not Supported | OpenMedia v4.4+; Panel for Graphics: OpenMedia v4.4+ | OpenMedia v4.4+; Panel for Graphics: OpenMedia v4.4+ |
| **Avid NEXIS Client [c]** | Latest for Ubuntu | Latest for Ubuntu | Latest for Ubuntu | Latest for Ubuntu |
| **Chrome 64-bit** | Tested v137.0.7151 | Tested v130.0.6723 | Tested v121.0.6167 | Tested v120.0.6099 |
| **Safari** | Not Supported | Not Supported | Not Supported | Not Supported |

a. Consult the FastServe documentation for additional version support information.

b. For MC/MCPM compatibility, see the Editor Compatibility Matrix.

c. Avid recommends installing the latest Avid NEXIS Client for your OS. Avid ISIS is not supported. For mobile OS support, see the Avid MediaCentral Legacy matrix.

---

### v2023.7 — v2022.3

| Component | v2023.7 (LTM) | v2023.3 | v2022.12 | v2022.3 (LTM) |
|---|---|---|---|---|
| **Release Date** | 27/07/2023 | 13/04/2023 | 22/12/2022 | 14/04/2022 |
| **OS — Linux** | Ubuntu Server LTS v22.04.x | Ubuntu Server LTS v22.04.x | CentOS v7.9 | CentOS v7.9 |
| **MC \| Phonetic Index** | Nexidia Search Grid v3.1.32 | Nexidia Search Grid v3.1.25 | Nexidia Search Grid v3.1.25 | Nexidia Search Grid v3.1.25 |
| **MC \| Cloud Remote Plugin** | Not Supported | Not Supported | Not Supported | MC Cloud Remote Playback v2018.6 |
| **MC \| Distributed Processing** | See MC\|DP matrix | See MC\|DP matrix | — | — |
| **MC \| Ingest** | 2023.7, 2022.12, 2022.3 | 2022.12, 2022.3 | 2022.12, 2022.3 | 2022.3 |
| **MC Sync Exchange Service** | 2023.7 | 2022.3 | 2022.3 | 2021.3 |
| **MC Acquire with FastServe Ingest** | 2023.9 and later | 2022.12 | 2022.12 | Not Applicable |
| **MC \| Asset Management** | v2023.7 (8.3), v2023.3 (8.2), v2022.12 (8.1), v2022.3 (8.0.1) | v2023.3 (8.2), v2022.12 (8.1), v2022.3 (8.0.1) | v2022.12 (8.1), v2022.3 (8.0.1) | v2022.3 (8.0.1), v2021.11 (8.0), v2021.7 (7.7), v2021.3 (7.6) |
| **MC \| Shared Library** | v2023.7 (8.3), v2023.3 (8.2), v2022.12 (8.1), v2022.3 (8.0.1) | v2023.3 (8.2), v2022.12 (8.1), v2022.3 (8.0.1) | v2022.12 (8.1), v2022.3 (8.0.1) | v2022.3 (8.0.1), v2021.11 (8.0), v2021.7 (7.7), v2021.3 (7.6) |
| **MC \| Graphics Management** | v2023.7 (8.3), v2023.3 (8.2), v2022.12 (8.1), v2022.3 (8.0.1) | v2023.3 (8.2), v2022.12 (8.1), v2022.3 (8.0.1) | v2022.12 (8.1), v2022.3 (8.0.1) | v2022.3 (8.0.1), v2021.11 (8.0), v2021.7 (7.7), v2021.3 (7.6) |
| **MC \| Production Management** | v2023.7, v2022.3 | v2022.3 | v2022.3 | v2022.3 |
| **MDS (for STP workflows)** | v2023.7 or v2022.3 | v2022.3 | v2022.3 | v2022.3 |
| **MC \| Newsroom Management** | 2023.7 and 2022.3 | 2023.3 and 2022.3 | 2022.12 and 2022.3 | 2022.3 |
| **Avid Maestro** | News, Designer, RE v2022.3 | News, Designer, RE v2022.3 | News, Designer, RE v2022.3 | News, Designer, RE v2022.3 |
| **MC Panel for Media Composer [a]** | v2022.12.x and later | v2021.12.x and later (excl. v2022.10) | v2021.12.x and later (excl. v2022.10) | v2021.12.x and later (excl. v2022.10) |
| **MC Panel for 3P Creative Tools** | v2023.12 (PP v23.6/v24.0/v24.4.1, AE v23.6/v24.0, PS v24.7/v25.1; macOS Big Sur–Sonoma; Win 10/11); v2023.7 (PP v22.6/v23.5/v24.4.1, AE v22.6/v23.5, PS v23.5/v24.6; macOS Big Sur–Sonoma) | v2023.3 (PP v22.6/v23.0, AE v22.6/v23.0, PS v23.5/v24.0; macOS Big Sur/Monterey; Win 10/11) | v2022.12 (PP v22.6/v23.0, AE v22.6/v23.0, PS v23.5/v24.0; macOS Big Sur/Monterey; Win 10) | v2022.3 (PP v15.4/v22.2, AE v18.4/v22.2, PS v22.5/v23.2; macOS Big Sur/Monterey; Win 10) |
| **MC Panel for AP ENPS** | ENPS v9.x+; Panel for Graphics: ENPS v9.x+; MOS Service v2022.3 for both | ENPS v9.x+; Panel for Graphics: ENPS v9.x+; MOS Service v2022.3 for both | ENPS v9.x+; Panel for Graphics: ENPS v9.x+; MOS Service v2022.3 for both | ENPS v9.x+; Panel for Graphics: ENPS v9.x+; MOS Service v2022.3 for both |
| **MC Panel for Octopus News** | Octopus v8.3+; Panel for Graphics: Octopus v8.3+ | Octopus v8.3+ | Octopus v8.3+ | Octopus v8.3+ |
| **MC Panel for CGI OpenMedia** | OpenMedia v4.4+ | OpenMedia v4.4+ | OpenMedia v4.4+ | OpenMedia v4.4+ |
| **Avid NEXIS Client** | Latest for Ubuntu (do **not** use v2023.3) | v2023.3 only — do **not** use a later version | v2022.9 (bundled) | v2021.12.1 (bundled) |
| **Chrome 64-bit** | Tested v115.0.5790 | Tested v111.0.5563 | Tested v108.0.5359 | Tested v100.0.4896 |
| **Safari** | Not Supported | Not Supported | Not Supported | Not Supported |

a. For MC/MCPM compatibility, see the Editor Compatibility Matrix. For mobile OS support, see the Avid MediaCentral Legacy matrix.

---

## Avid Production Management (APM) — v2025.10

APM is the Kubernetes/Linux/PostgreSQL successor platform to MCPM, introduced 08/12/2025.

| Component | APM v2025.10 |
|---|---|
| **Release Date** | 08/12/2025 |
| **Production Client (Access, Administrator)** | 2025.10 |
| **Media Indexer (Outpost Server, Client)** | 2025.10 |
| **Transfer (Server, Client) [a]** | 2025.10 |
| **Production Services** | 2025.10 |
| **Interplay Web Services** | 2025.10 |
| **MediaCentral Distribution Service (MCDS)** | 2025.10 |
| **OS — Production Servers** | Windows Server 2022 |
| **OS — Production Client Components** | Windows 11; macOS Sonoma 14.x, Sequoia 15.x |
| **MC Cloud UX** | See MC \| Cloud UX section above |
| **Production Archive Engine (MCPM)** | 2024.10 |
| **Media Composer compatibility** | See the Editor Compatibility Matrix |
| **MC \| Ingest** | 2025.10 |
| **AMA Plugin: Avid MXF** | (included) |
| **AMA Plugin: Avid QuickTime** | (included) |
| **AMA Plugin: Canon XF** | 3.13.0.5 |
| **AMA Plugin: Panasonic P2** | 5.2.0.5709 |
| **AMA Plugin: Sony XDS** | Nablet 5.7.2.5963 |
| **Apple QuickTime Libraries** | 7.7.9 |
| **OS — Ingest Server** | Windows Server 2022 |
| **OS — Ingest Client** | Windows 11; macOS Ventura 13.x, Sonoma 14.x |
| **Avid NEXIS** | See NEXIS section below |
| **Avid \| Stream IO** | See Stream IO section below |

a. If installing Transfer on Media Composer for "standalone" workflows, verify the required Transfer version using the Editor Compatibility Matrix.

> ⚠️ **Note:** Windows Defender is incompatible with MC | Ingest and must not be enabled. See Avid's Security Guidelines for supported antivirus products.

---

## Avid MediaCentral | Production Management (MCPM) — v2024.10 — v2021.3

MCPM is the legacy Windows/SQL Server platform. LTM releases: v2024.10 (Nov 2024), v2023.7 (Jul 2023), v2022.3 (Apr 2022).

### Production Engine and Core Components

| Component | 2024.10 (LTM) | 2023.7 (LTM) | 2022.3 (LTM) | 2021.3 |
|---|---|---|---|---|
| **Release Date** | 14/11/2024 | 27/07/2023 | 14/04/2022 | 13/05/2021 |
| **Production Engine Server** | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
| **Interplay Access (Win)** | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
| **Interplay Access (macOS)** | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
| **Production Archive Engine Server** | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
| **MC Transfer Server [a]** | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
| **MC Transfer Client [b]** | 2024.10 | 2023.7 | 2022.3 | 2022.2 (macOS) or 2021.3 |
| **Media Indexer Server** | 2024.10 | 2023.7 | 2022.3 | 2021.3 [c] |
| **Media Indexer Client** | 2024.10 | 2023.7 | 2022.3 | 2022.2 (macOS) or 2021.3 [d] |
| **Avid Service Framework** | 1.8.1 | 1.8.1 | 1.8.1 | 1.8.1 |

a. If using MC Transfer with a 3rd party vendor, verify compatibility before upgrading.

b. If installing Transfer Server on Media Composer for "standalone" workflows, verify the required Transfer version using the Editor Compatibility Matrix.

c. Avid strongly recommends installing Media Indexer 2021.11 to address critical security and performance issues. Server and client versions are not required to match.

d. When multiple client versions are supported, the MI client version can be less than or equal to the server version.

### Production Services

| Component | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
|---|---|---|---|---|
| **Production Services Engine** | 2024.10 | 2023.7 | 2022.3 | 2020.4.2 or 2021.3 |
| **Archive and Restore Services** | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
| **Auto Services** | 2024.10 | 2023.7 | 2022.3 | 2020.4.0 |
| **Transcode Service** | 2024.10 | 2023.7 | 2023.7 or 2022.3 | 2018.11.7 or later |
| **STP Encode** | 2024.10 | 2023.7 | 2023.7 or 2022.3 | 2018.11.7 or later |
| **Move / Copy** | 2024.10 | 2023.7 | 2022.3 | 2020.4.2 or 2021.3 |
| **Deliver** | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
| **Delivery Receiver** | 2024.10 | 2023.7 | 2022.3 | 2020.4.0 |
| **Consolidate** | N/A | N/A | 2022.3 | 2018.11.7 or later |
| **Telestream Vantage** | 8.2 Update 1 | 8.0 Update 4 | 8.0 Update 4 | 7 |
| **Interplay Web Services [e]** | 2023.7 | 2023.7 | 2022.3 | 2018.9.x |

e. Use the latest patched version of Interplay Web Services v2018.9 for MCPM 2021.3.

### Operating Systems (MCPM)

| Component | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
|---|---|---|---|---|
| **Production Servers [a]** | Win Server 2019 and 2022 | Win Server 2019 and 2022 | Win Server 2022, 2019, and 2016 | Win Server 2019 (2020.4+), Win Server 2016, 2012 R2 |
| **Production Client Components** | Win 11, Win 10; macOS Monterey, Ventura, Sonoma, Sequoia | Win 11, Win 10; macOS Big Sur, Monterey, Ventura, Sonoma | Win 11, Win 10; macOS Big Sur, Monterey | Win 10; macOS Mojave; macOS Big Sur (2022.2/2022.3 components only) |

a. (Clustered configurations only) Consult the Failover Guides on the Avid Knowledge Base for supported OS for cluster storage.

### MediaCentral Ingest (with MCPM)

| Component | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
|---|---|---|---|---|
| **MC \| Ingest** | 2024.10, 2023.7 | 2022.3–2023.7 | 2022.3–2022.12 | 2021.3 |
| **AMA Plugin: Avid MXF** | (included) | (included) | (included) | (included) |
| **AMA Plugin: Avid QuickTime** | (included) | (included) | (included) | (included) |
| **AMA Plugin: Canon XF** | 3.12.0.3 | 3.8.0.11 | 3.8.0.11 | 3.6.0.6 |
| **AMA Plugin: Panasonic P2** | 5.1.5.5229 | 4.9.0.4 | 4.9.0.4 | 4.9.0.4 |
| **AMA Plugin: Sony XDS** | Nablet 5.5.4.577 | Nablet 5.0002.3.3798 | Nablet 5.0002.3.3798 | Nablet 5.0001.1.3320 |
| **Apple QuickTime Libraries** | 7.7.9 | 7.7.9 | 7.7.9 | 7.7.9 |
| **OS — Ingest Server** | Win Server 2019; Win Server 2022 (v2024.10.1+ only) | Win Server 2019 (Win Server 2022 not supported) | Win Server 2019 | Win Server 2019 |
| **OS — Ingest Client** | Win 10, Win 11; macOS Ventura, Sonoma | Win 10, Win 11; macOS Ventura, Sonoma | Win 10, Win 11; macOS Ventura, Sonoma | Win 10 |

> ⚠️ **Note:** Windows Defender is incompatible with MC | Ingest and must not be enabled.

### Archive, Capture, and Other (MCPM)

| Component | 2024.10 | 2023.7 | 2022.3 | 2021.3 |
|---|---|---|---|---|
| **MC Sync Exchange** | See MC Cloud UX section | See MC Cloud UX section | See MC Cloud UX section | 2021.6 |
| **SGL Flashnet Client** | 2016.2.4 | 2016.2.4 | 2016.2.4 | 2016.2.4 |
| **SGL Flashnet Server** | 6.9.0.028 | 6.9.0.028 | 6.9.0.028 | 6.8.03.007 |
| **MC Capture Server & Client** | 2022.3 | 2022.3 | 2017.2.x, 2022.3 | 2017.2.x |
| **Capture Router Connector** | 2022.3, 2023.3 | 2022.3, 2023.3 | 2022.3, 2023.3 | 2017.2 |
| **AirSpeed API Service** | 2017.2.x | 2017.2.x | 2017.2.x | 2017.2.x |
| **NEXIS PRO, E2, E4, E5** | See NEXIS section | See NEXIS section | See NEXIS section | See NEXIS section |
| **Avid ISIS** | Not Supported | Not Supported | Not Supported | 4.7.x |
| **Avid \| Stream IO** | See Stream IO section | See Stream IO section | See Stream IO section | See Stream IO section |
| **Avid FastServe** | See Video Servers section | See Video Servers section | See Video Servers section | See Video Servers section |
| **AirSpeed 5000 Series** | 3.0.x (AVC-LongG) | 3.0.x (AVC-LongG) | 3.0.x (AVC-LongG) | 3.0.x (AVC-LongG) |

---

## Avid | Stream IO

| Component | Stream IO 2025.10 | Stream IO 2025.6 | Stream IO 2025.2 | Stream IO 2024.10 |
|---|---|---|---|---|
| **OS** | Ubuntu 22.04.3 LTS, 22.04.5 | Ubuntu 22.04.3 LTS, 22.04.5 | Ubuntu 22.04.3 LTS, 22.04.5 | Ubuntu 22.04.3 LTS |
| **Stream IO PreInstaller** | v2025.10.0.0 | v2025.6.0.1 | v2025.2.0.4 | v2024.10.1.0 |
| **Stream IO Plugin for Command** | v2024.10 | v2024.10.3 | v2024.10.2 | v2024.10 |
| **Avid Media Composer** | v2023.12 and later | v2023.12 and later | v2023.12 and later | v2023.12 and later [a] |
| **Avid NEXIS Server and Client** | v2025.5.3 [b] | v2024.10, v2025.2 | v2024.10, v2025.2 | v2024.6, v2024.10 |
| **MC \| Cloud UX** | v2025.10 | v2023.12, v2024.2, v2024.10 | v2023.12, v2024.2, v2024.10 | v2023.12, v2024.2, v2024.10 |
| **Avid Production Management** | v2025.10 | Not Supported | Not Supported | Not Supported |
| **MC \| Production Management** | v2024.10 | v2023.7, v2024.10 | v2023.7, v2024.10 | v2023.7 |
| **MC \| Capture** | v2022.3 (4.0.15) | v2022.3 (4.0.15) | v2022.3 (4.0.15) | v2022.3 (4.0.15) |
| **MC \| Command** | v2023.7.x | v2022.3 LTM, v2023.7.x | v2022.3 LTM, v2023.7.x | v2023.7.3, v2023.7.4 |
| **BlackMagic DeckLink Driver (SDI)** | v14.4a6 | v14.4a6 | v14.4a6 | v14.2.1a1 |
| **NVIDIA Mellanox Driver (SMPTE 2110)** | 25.07.OFED.25.07.0.9.7.1-1 | 25.01.OFED.25.01.0.6.0.1-1 | 25.01.OFED.25.01.0.6.0.1-1 | v24.01-0.3.3.1 |

a. Check the Limitations section in the Stream IO ReadMe for MC compatibility details.
b. Check the Limitations section in the Stream IO ReadMe for Avid NEXIS compatibility details.

| Component | Stream IO 2024.6 | Stream IO 2024.2 | Stream IO 2023.11 | Stream IO 2023.8 |
|---|---|---|---|---|
| **OS** | Ubuntu 22.04.3 LTS | CentOS v7.9 | CentOS v7.9 | CentOS v7.9 |
| **Stream IO PreInstaller** | v2024.6.1 | v2023.11.0.2 | v2023.11.0.2 | v2023.8.0.1 |
| **Stream IO Plugin for Command** | v2024.7 | v2024.7 | v2024.2, v2024.5 | v2023.10 |
| **Avid Media Composer [a]** | v2023.12 | v2023.12 | v2022.12, v2023.3 | v2022.12, v2023.3 |
| **Avid NEXIS Server and Client** | v2024.6 | v2023.3, v2023.8, v2023.12 | v2023.3, v2023.5, v2023.8 | v2023.3 |
| **MC \| Cloud UX** | v2023.12 | v2023.7, v2023.12 | v2023.7, v2023.12 | v2022.12, v2023.3, v2023.7 |
| **MC \| Production Management** | v2023.7 | v2023.7 | v2022.3, v2023.7 | v2022.3, v2023.7 |
| **MC \| Capture** | v2022.3 (4.0.15) | v2022.3 (4.0.15) | v2017.2.15 (4.0.13) | v2017.2.15 (4.0.13) |
| **MC \| Command** | v2022.3 LTM | v2022.3 LTM | v2022.3 LTM | v2022.3 LTM |
| **BlackMagic DeckLink Driver** | v14.0.1a2 | v12.8 | v12.4.1 | v12.4.1 |

---

## Avid Video Servers

### FastServe | Ingest

| Component | FastServe Ingest v2023.11 | FastServe Ingest v2023.9 | FastServe Ingest v2023.7 | FastServe Ingest v2023.3 |
|---|---|---|---|---|
| **FastServe Ingest PreInstaller (Gen 2)** | v2023.3.0.1 | v2023.3.0.1 | v2023.3.0.1 | v2023.2.0.9 |
| **FastServe Playout Plugin for Command** | v2022.2 | v2022.2 | v2022.2 | v2022.2 |
| **Avid Media Composer** | v2022.4 | v2022.4 | v2022.4 | v2022.4 |
| **Avid NEXIS Client** | v2022.12, v2023.3, v2023.5, v2023.8 | v2022.12, v2023.3 | v2022.12, v2023.3 | v2022.12 |
| **MC \| Capture** | v2017.2.16 (4.0.14) | v2017.2.16 (4.0.14) | v2017.2.16 (4.0.14) | v2017.2.16 (4.0.14) |
| **MC \| Cloud UX** | v2023.3, v2023.7 | v2023.3 | v2023.3 | v2022.12.1 |
| **MC \| Command** | v2022.3 LTM | v2022.3 LTM | v2022.3 LTM | v2022.3 LTM |
| **MC \| Production Management** | v2022.3 | v2022.3 | v2022.3 | v2021.11 |

### FastServe | Playout

| Component | FastServe Playout v2023.10 | FastServe Playout v2023.3 | FastServe Playout v2022.12 | FastServe Playout v2022.8 |
|---|---|---|---|---|
| **FastServe Playout Plugin for Command** | v2024.2, v2023.10 | v2022.2 | v2022.2 | v2022.2 |
| **Avid Media Composer** | v2022.12, v2023.3 | v2022.7, v2022.12 | v2019.12, v2020.10, v2021.12, v2022.7 | v2019.12, v2020.10, v2021.12 |
| **Avid NEXIS Client** | v2022.12, v2023.3, v2023.5, v2023.8 | v2022.9, v2022.5, v2022.12 | v2022.9, v2022.5 | v2021.12 |
| **MC \| Cloud UX (remote STP)** | v2022.12, v2023.3, v2023.7 | v2022.12 | v2022.12 | N/A |
| **MC \| Command** | v2022.3 LTM | v2020.9 | v2020.9 | v2020.9 |
| **MC \| Production Management** | v2022.3 | v2021.11 | v2021.11 | v2021.11 |

### MediaCentral | Stream

| Component | MC \| Stream v2022.3 |
|---|---|
| **Avid Media Composer** | v2021.12 |
| **Avid NEXIS Client** | v2021.12 |
| **MC \| Production Management** | v2021.11 |

---

## Router Control — Supported Controllers

| Controller Type | Model | Communication | Protocol | Tested Controller Software |
|---|---|---|---|---|
| Imagine Communications | Platinum (Legacy) | Ethernet | LRC V1.3 | V4.6.B13 |
| Imagine Communications | Platinum IP3 | Ethernet | LRC V1.3 | V1.5.1, V2.0 |
| Harris Broadcast | Platinum | Ethernet | LRC V1.1 | V4.3.B19 |
| Utah Scientific | SC-4 | Ethernet | RPC3 | v1.9.4, v1.9.6, v2.0.2 |
| Evertz Magnum | Magnum | Ethernet | Quartz Standard Protocol (Magnum) | Magnum: V1.14.2; Router: V2.16.3 |
| Evertz Quartz | EQX Server & Xenon | Serial or Ethernet | Quartz Standard Protocol | v5.22 |
| Grass Valley Encore | Encore 1.7.3 | Serial or Ethernet | Router Control Language (RCL) | v1.7.4 |
| Grass Valley Jupiter | CM-4000/CP-4400 | Serial | ES-Switch Protocol | v7.9.1 — see notes |
| Miranda NVision | NV9000 | Ethernet | NV9000 | v6.0.19 |
| Pro-Bel | Aurora & Axis | Serial or Ethernet | SW-P-08 | — |

> Notes: Jupiter AccuSwitch software < v7.9.1 on CM-4000/CM-4400 is known not to work with the Router Control Jupiter plug-in. Jupiter v7.9.1 is the last supported release for CM-4000/CM-4400. VM-3000 is no longer supported. Protocol Translators (Emulators) are not supported.
>
> The Tested Controller Software column lists versions tested in the QA lab with Router Control v3.7 and later. Other versions may work unless otherwise noted.

---

## Avid NEXIS E-Series, F-Series, PRO, and PRO+

> Avid NEXIS software runs only on the Avid NEXIS platforms. For details, see the Avid NEXIS documentation.

### Versions Released in 2025

| Component | NEXIS 2025.10.0 | NEXIS 2025.5.3–2025.5.6 | NEXIS 2025.5.1 (Ltd Avail) [a] | NEXIS 2025.2.2 [a] |
|---|---|---|---|---|
| **Media Composer** | 2021.12.x, 2022.12.x, 2023.12.x, 2024.12.x, 2025.x | 2021.12.x, 2022.12.x, 2023.12.x, 2024.12.x, 2025.x | 2021.12.x, 2022.12.x, 2023.12.x, 2024.2, 2024.6, 2024.10 | 2021.12.x, 2022.12.x, 2023.12.x, 2024.2, 2024.6, 2024.10 |
| **Pro Tools Ultimate** | Not Supported | Not Supported | 2025.10, 2025.6.1 | 2023.12–2025.6.1 |
| **MC Cloud UX** | 2025.6.x, 2025.10.x | 2025.6.x, 2025.10.x | 2022.12.x, 2023.3.x, 2023.7.x, 2024.2, 2024.10.x, 2025.6.x | Not Supported |
| **MC Production Management** | 2024.10.x | 2024.10.x | 2022.12.x, 2023.3.x, 2023.7.x, 2024.2, 2024.10.x, 2025.6.x | Not Supported |
| **MC \| Ingest** | Not Supported | 2024.10.x [c] | 2023.7.x [b], 2024.10.x | 2023.7.x [b], 2024.10.x |
| **Avid \| Stream IO** | Not Supported | 2025.10, 2025.6 | Not Supported | 2025.6, 2025.2 |
| **Avid FastServe Ingest** | Not Supported | v2022.x, v2023.3.x, v2023.7.x | v2022.x, v2023.3.x, v2023.7.x | v2022.x, v2023.3.x, v2023.7.x |
| **Avid NEXIS \| EDGE** | v2022.10.x, v2023.7.x, v2023.12.x | v2022.10.x, v2023.7.x, v2023.12.x | v2022.10.x, v2023.7.x, v2023.12.x | v2022.10.x, v2023.7.x, v2023.12.x |

a. Avid NEXIS 2025.5.0 and 2025.2.0 were removed from MyAvid.com and are not recommended for use.

b. MC Ingest 2023.7.1 bundles Avid NEXIS Client 2024.2.

c. MC Ingest 2024.10 bundles Avid NEXIS Client 2024.10.

### Versions Released in 2024

| Component | NEXIS 2024.11.0 | NEXIS 2024.10.0 | NEXIS 2024.6.0 | NEXIS 2024.2.0 |
|---|---|---|---|---|
| **Media Composer** | 2021.12.x, 2022.12.x, 2023.12.x, 2024.2, 2024.6, 2024.10 | 2021.12.x, 2022.12.x, 2023.12.x, 2024.2, 2024.6 | 2021.12.x, 2022.12.x, 2023.8.x, 2023.12.x, 2024.2 | 2021.12.x, 2022.12.x, 2023.8.x, 2024.2 |
| **Pro Tools HD** | 2023.9, 2024.3.x, 2024.6, 2024.10; 12.x, 2023.9.x | 2023.9, 2024.3.x, 2024.6; 12.x, 2023.9.x | 2024.3, 2024.6; 12.x, 2023.9.x | 12.x, 2023.9.x |
| **MC Cloud UX / PM / NM / AM** | 2022.12.x, 2023.3.x, 2023.7.x, 2024.2 | 2022.12.x, 2023.3.x, 2023.7.x, 2024.2 | 2022.3.x, 2023.7.x | 2022.3.x, 2023.7.x |
| **MC \| Ingest [a]** | 2023.7.x, 2024.10.x | 2023.7.x | 2023.7.x | 2023.7.x |
| **MC \| Stream** | v2023.7.x; 2020.12–2022.3 with NEXIS Clients 2021.12+ | v2023.7.x; 2020.12–2022.3 with NEXIS Clients 2021.12+ | v2023.7.x; 2020.12–2022.3 | v2023.7.x; 2020.12–2022.3 |
| **FastServe Ingest** | Ingest: v2022.x, v2023.3.x, v2023.7.x; Playout: v2022.x, v2023.3.x, v2023.10 | Ingest: v2022.x, v2023.3.x, v2023.7.x; Playout: v2022.x, v2023.3.x, v2023.10 | Ingest: v2022.x, v2023.3.x, v2023.7; Playout: v2022.x, v2023.3.x | Ingest: v2022.x, v2023.3.x, v2023.7; Playout: v2022.x, v2023.3.x |
| **Avid NEXIS \| EDGE** | v2022.10.x, v2023.7.x, v2023.12.x | v2022.10.x, v2023.7.x, v2023.12.x | v2022.10.1, v2023.12.x | v2022.10.1, v2023.12.x |

a. MC Ingest 2023.7.1 bundles Avid NEXIS Client 2024.2.

> For NEXIS 2023.x and older compatibility details, see the Avid MediaCentral Legacy matrix on the Avid Knowledge Base.

---

*Avid MediaCentral Compatibility Support Matrix — Created 17/12/2025. Distributed by Avid in online (electronic) form only.*
