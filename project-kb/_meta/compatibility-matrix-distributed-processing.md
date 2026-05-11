---
product: mediacentral
product-area: compatibility
version: "2025.12.1"
release-date: 31/03/2026
doc-type: compatibility-matrix
source: avid-official
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [compatibility, media-composer, distributed-processing, mcdp, shared-library]
---

# Compatibility Support Matrix: Avid Media Composer Distributed Processing

Additional context: https://kb.avid.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts

See the "Avid Editor Compatibility Matrix" for MC compatibility with MC|PM, and the "MediaCentral Compatibility Matrix" for the broader platform.

Last revised: 31/03/2026

> **Notes:**
> - The top row in the tables below refers to the components installed on Windows or macOS **service workstations**. MC | Distributed Processing (MC|DP) server components are **bundled with each release of Avid MediaCentral Cloud UX**.
> - For cells listing multiple versions, consult a companion matrix to confirm compatibility (e.g. check that your MC Cloud UX version is compatible with the listed version of Shared Library).

---

## Revision History

| Date | Change |
|---|---|
| 31/03/2026 | Removed support for macOS 16 (Tahoe) as Avid NEXIS does not yet support this OS — MC\|DP v2025.10.1 |
| 09/12/2025 | MC \| Distributed Processing v2025.10 |
| 13/02/2025 | Format and style update |
| 14/11/2024 | MC \| Distributed Processing v2024.10 |
| 21/12/2023 | MC \| Distributed Processing v2023.12 |
| 29/08/2023 | MC \| Distributed Processing v2023.8 |
| 27/12/2022 | MC \| Distributed Processing v2022.12 |
| 22/12/2022 | Added support for Avid MediaCentral Shared Library v2022.12 |
| 20/10/2022 | MC \| Distributed Processing v2022.10 |
| 16/12/2021 | MC \| Distributed Processing v2021.12 |

---

## Current Versions (v2025.12.1 — v2024.10)

| Component | MC\|DP Worker v2025.12.1 | MC\|DP Worker v2025.12.0 | MC\|DP Worker v2024.10 |
|---|---|---|---|
| Avid Media Composer [a] | 2023.12 or later | 2023.12 or later | 2022.10 or later |
| Avid NEXIS (server & client) | 2021.5 or later | 2021.5 or later | 2021.5 or later |
| Avid NEXIS EDGE | Not Supported | Not Supported | Not Supported |
| Avid MC Cloud UX | 2024.10.16 or later v2024.10.x patch | 2024.10.0–2024.10.14, and 2025.10.x | 2024.10 or later [b] |
| Avid MC Shared Library | 2024.10 | 2024.10 | 2024.10 |
| **Service Workstation OS — Windows** | Windows 11; Windows Server 2022 | Windows 11; Windows Server 2022 | Windows 10, Windows 11; Windows Server 2019 |
| **Service Workstation OS — macOS** | macOS 14.x (Sonoma), 15.x (Sequoia) | macOS 14.x (Sonoma), 15.x (Sequoia) | macOS 12 (Monterey), 13 (Ventura) |

**Footnotes:**

a. If you deploy Distributed Processing on an MC Cloud UX system and plan to use the MC Panel for Media Composer, you must cross-reference the MediaCentral Compatibility Matrix to verify the version of Media Composer that supports both workflows.

b. MC|DP Worker v2024.10.0–2024.10.1 is supported with MC Cloud UX v2024.10.0–v2024.10.14, and v2025.10.x. MC|DP Worker v2024.10.2 is supported with MC Cloud UX v2024.10.16 or later v2024.10.x patch releases.

---

## Previous Versions (v2023.12 — v2022.10)

| Component | MC\|DP Worker v2023.12 | MC\|DP Worker v2023.8 | MC\|DP Worker v2022.12 |
|---|---|---|---|
| Avid Media Composer [a] | 2022.10 or later | 2022.10 or later | 2022.10 or later |
| Avid NEXIS (server & client) | 2021.5 or later | 2021.5 or later | 2021.5 or later |
| Avid NEXIS EDGE | 2023.12 | 2022.10–2023.7 | 2022.10 |
| Avid MC Cloud UX | 2022.3.3–2023.7.4; 2023.7.5 or 2023.12 or later (2022.12–2023.7.4 required for Shared Library integration) | 2022.3.3–2023.7.4 (2022.12–2023.7.4 required for Shared Library integration) | 2022.3.3–2023.7.4 (2022.12–2023.7.4 required for Shared Library integration) |
| Avid MC Shared Library | 2022.12–2023.7 | 2022.12–2023.7 | 2022.12–2023.7 |
| Avid MC Editorial Management | Not Supported | Not Supported | Not Supported |
| **Service Workstation OS — Windows** | Windows 10, Windows 11; Windows Server 2016, 2019 | Windows 10, Windows 11; Windows Server 2016, 2019 | Windows 10, Windows 11; Windows Server 2016, 2019 |
| **Service Workstation OS — macOS** | macOS 11 (Big Sur), 12 (Monterey), 13 (Ventura) | macOS 11 (Big Sur), 12 (Monterey), 13 (Ventura) | macOS 10.14 (Mojave), 10.15 (Catalina), 11 (Big Sur), 12 (Monterey) |

| Component | MC\|DP v2022.10 | MC\|DP v2021.12 | MC\|DP v2021.6 |
|---|---|---|---|
| Avid Media Composer [a] | 2022.10 or later | 2020.12.3 through 2022.7 | 2020.12.3 through 2022.7 |
| Avid NEXIS (server & client) | 2021.5 or later | 2021.5 or later | 2021.5 or later |
| Avid NEXIS EDGE | 2022.10 | Not Supported | Not Supported |
| Avid MC Cloud UX | 2021.11.x–2023.7.4 (2022.12–2023.7.4 required for Shared Library integration) | 2021.3.1–2021.7.x | 2021.3.1–2021.7.x |
| Avid MC Shared Library | 2022.12–2023.7 | Not Supported [b] | Not Supported [b] |
| Avid MC Editorial Management | Not Supported | Not Supported | Not Supported |
| **Service Workstation OS — Windows** | Windows 10, Windows 11; Windows Server 2016, 2019 | Windows 10, Windows 11; Windows Server 2016, 2019 | Windows 10; Windows Server 2016, 2019 |
| **Service Workstation OS — macOS** | macOS 10.14 (Mojave), 10.15 (Catalina), 11 (Big Sur), 12 (Monterey) | macOS 10.14 (Mojave), 10.15 (Catalina), 11 (Big Sur), 12 (Monterey) | macOS 10.14 (Mojave), 10.15 (Catalina) |

**Footnotes:**

a. If you deploy Distributed Processing on an MC Cloud UX system and plan to use the MC Panel for Media Composer, you must cross-reference the MediaCentral Compatibility Matrix to verify the version of Media Composer that supports both workflows.

b. If using Distributed Processing with MC Shared Library, contact Avid Customer Care for details regarding custom instructions to enable this workflow.

---

## Older Versions (v2019.12 — v2019.6)

| Component | MC\|DP v2019.12 | MC\|DP v2019.9 | MC\|DP v2019.6 |
|---|---|---|---|
| Avid Media Composer | 2018.12.8–2021.5 | 2019.6–2021.5 | 2019.6–2021.5 |
| Avid NEXIS (server & client) | 2019.6 or later | 2019.6 or later | 2019.6 or later |
| Avid NEXIS EDGE | Not Supported | Not Supported | Not Supported |
| Avid MC Cloud UX | 2019.6–2021.3 | 2019.6–2020.4 | 2019.6 |
| Avid MC Shared Library | 2019.9–2021.11 | 2019.9–2021.11 | Not Supported |
| Avid MC Editorial Management | 2020.4–2020.11.x | Not Supported | Not Supported |
| **Service Workstation OS — Windows** | Windows 10, Windows 7; Windows Server 2016, 2019 | Windows 10, Windows 7; Windows Server 2016, 2019 | Windows 10, Windows 7 |
| **Service Workstation OS — macOS** | macOS 10.14 (Mojave); macOS 10.13 (High Sierra) | macOS 10.13 (High Sierra), 10.14 (Mojave) | macOS 10.13 (High Sierra), 10.14 (Mojave) |

---

*Compatibility Support Matrix — Revised 31/03/2026. Distributed by Avid in online (electronic) form only.*
