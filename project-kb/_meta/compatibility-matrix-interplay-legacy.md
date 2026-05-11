---
product: mediacentral
product-area: compatibility
version: "legacy"
release-date: 02/12/2022
doc-type: compatibility-matrix
source: avid-official
confidentiality: public
date-added: 24/04/2026
status: historical
feature-tags: [compatibility, interplay, interplay-production, mediacentral-platform-services, avid-isis, legacy, historical, frozen]
---

# Compatibility Support Matrix: Interplay | Production, MediaCentral Platform, and Avid ISIS

> ⚠️ **Historical Reference — Frozen Document**
>
> This document covers legacy Interplay | Production, MediaCentral Platform Services (MCS), and Avid ISIS products. For information on more recent releases, see the MediaCentral Compatibility Matrix.
>
> MCS v1.8.x through v2.3.x have reached their End of Support dates. All MCS versions v2.4.x through v2.9.x were unsupported as of 31 December 2021.
>
> Avid ISIS shared storage (ISIS 2500, 5000, 7000 series) is End of Life.

Last revised: 02/12/2022

Additional context:
- Editor compatibility: see the Avid Editor Compatibility Matrix
- MC Cloud Remote: see the MC Cloud Remote Support Matrix
- Recent releases: see the MediaCentral Compatibility Matrix

---

## Revision History

| Date | Change |
|---|---|
| 02/12/2022 | Updates and corrections for MC UX v2.10.x |
| 14/07/2021 | Minor clarification to shared storage client support for MC UX v2.10.x |
| 10/06/2021 | Update to Avid NEXIS and Interplay Production 3.8 |
| 12/04/2021 | Correction to MC UX and Production Management compatibility |
| 30/03/2021 | Avid NEXIS v2021.3.0 |
| 09/12/2020 | Minor updates to shared storage support for MC UX 2.10 |
| 23/10/2020 | Updated for Avid MC Platform Services v2.10.7 |
| 30/07/2020 | Updated for Avid NEXIS v2020.7 |

---

## Interplay | Production v3.5 and Later

### Core Components

| Component | Interplay v3.8 | Interplay v3.7 | Interplay v3.6 | Interplay v3.5 |
|---|---|---|---|---|
| Release Dates | 29/06/2017 | 22/12/2016 | 30/06/2016 | 17/12/2015 |
| **Interplay Engine Server** | 3.8 | 3.7 | 3.6, 3.6.1 | 3.5 |
| **Interplay Access Client (PC)** | 3.8 | 3.7 | 3.6, 3.6.1, 3.6.2 | 3.5 |
| **Interplay Access Client (macOS)** | 3.8 | 3.7 | 3.6, 3.6.1, 3.6.2 | 3.5 |
| **Interplay Archive Engine Server** | 3.8 | 3.7 | 3.6, 3.6.1 | 3.5 |
| **Transfer Server [a]** | 3.8.x | 3.7.x | 3.7.x, 3.6.x | 3.7.x, 3.6.x, 3.5 |
| **Transfer Client [b]** | 3.8.x | 3.7.x | 3.7.x, 3.6.x | 3.7.x, 3.6.x, 3.5 |
| **Media Indexer Server** | 3.8.2 | 3.7.1 | 3.7.1 | 3.5.0 |
| **Media Indexer Client** | 3.4.3, 3.5.0, 3.6.2, 3.7.1, 3.8.2 | 3.4.3, 3.5.0, 3.6.2, 3.7.1 | 3.4.3, 3.5.0, 3.6.2, 3.7.1 | 3.4.3, 3.5.0 |
| **Avid Service Framework** | 1.8.1 | 1.8.1 | 1.8.1 | 1.8 |

a. Requires latest patches on Interplay Production Engine and matching version of Interplay Access on Transfer Server. If using Interplay Transfer with a 3rd party vendor, verify compatibility before upgrading. Compatibility applies to Transfer Server in an Interplay workgroup only.

b. If installing Transfer Server on an Avid editor for "standalone" workflows, match the Transfer Server and Transfer Client version to the editor release.

### Production Services

| Component | Interplay v3.8 | Interplay v3.7 | Interplay v3.6 | Interplay v3.5 |
|---|---|---|---|---|
| Production Services Engine | 3.8 | 3.7 | 3.6, 3.6.1 | 3.5 |
| Interplay Adapter | Not Supported | Not Supported | Not Supported | Not Supported |
| ProEncode | Not Supported | Not Supported | Not Supported | Not Supported |
| Archive and Restore Services | 3.8 | 3.7 | 3.6, 3.6.1, 3.6.2 | 3.5 |
| Auto Archive/Transcode | 3.8 | 3.7 | 3.6, 3.6.1 | 3.5 |
| Transcode Service | 3.8 | 3.7 | 3.6, 3.6.1 | 3.5 |
| Streaming Server | Not Supported | Not Supported | Not Supported | Not Supported |
| STP Encode | 3.8 | 3.7 | 3.6, 3.6.1 | 3.5 |
| Move / Copy | 3.8 | 3.7 | 3.6, 3.6.1 | 3.5 |
| Delivery / Receiver | 3.8 | 3.7 | 3.6, 3.6.1 | 3.5 |
| Telestream Vantage | 6.3 | 6.3 | 6.3 | 6.3 |

> **Interplay Web Services:** Use the version of IWS associated with the accompanying release of Interplay Production (e.g. if running Interplay Production v3.8, use Web Services v3.8).

### Media Director / MediaCentral Ingest

| Component | Interplay v3.8 | Interplay v3.7 | Interplay v3.6 | Interplay v3.5 |
|---|---|---|---|---|
| MediaCentral Ingest | 2018.9 | 2018.9 | 2018.9 | 2018.9 |
| AMA Plugin: Avid MXF | 1.20.17.10087 (included) | 1.20.17.10087 (included) | 1.20.17.10087 (included) | 1.20.17.10087 (included) |
| AMA Plugin: Canon XF | 3.3.0.7 | 3.3.0.7 | 3.3.0.7 | 3.3.0.7 |
| AMA Plugin: Panasonic P2 | 4.9.0.1 | 4.9.0.1 | 4.9.0.1 | 4.9.0.1 |
| AMA Plugin: Sony XDS | Nablet 4.0005.4.1615 | Nablet 4.0005.4.1615 | Nablet 4.0005.4.1615 | Nablet 4.0005.4.1615 |
| Apple QuickTime | 7.7.6 | 7.7.6 | 7.7.6 | 7.7.6 |

### Capture

| Component | Interplay v3.8 | Interplay v3.7 | Interplay v3.6 | Interplay v3.5 |
|---|---|---|---|---|
| MC \| Capture [a][b] | 2017.2 | 2017.2 | Not Supported | Not Supported |
| MC \| Capture Router Connector | 2017.2 | 2017.2 | Not Supported | Not Supported |
| Interplay Capture Server & Client [a][b] | 3.8.x, 3.7.x, 3.6.x | 3.8.x, 3.7.x, 3.6.x | 3.8.x, 3.7.x, 3.6.x, 3.5.x | 3.8.x, 3.7.x, 3.6.x, 3.5.x |
| Router Control | 3.8.x, 3.7.x, 3.6.x | 3.8.x, 3.7.x, 3.6.x | 3.8.x, 3.7.x, 3.6.x, 3.5.x | 3.8.x, 3.7.x, 3.6.x, 3.5.x |
| AMS Device Service | 4.0.1 | 4.0.1 | 4.0.1 | 4.0.1 |

a. Try to match Capture and Router Control or Router Connector versions.
b. Use the newest versions whenever possible, especially with Evertz Magnum controllers.

### Shared Storage

| Component | Interplay v3.8 | Interplay v3.7 | Interplay v3.6 | Interplay v3.5 |
|---|---|---|---|---|
| NEXIS PRO, E2, E4, E5 (System Director & Client) | 2018.x–2019.12.x, 2020.x, 2021.3.0 and higher | 2018.x–2019.12.x, 2020.x | 2018.x–2019.12.x, 2020.x | 2018.x–2019.12.x, 2020.x |
| ISIS 2000, 2500 | 4.7.x | 4.7.x | 4.7.x | 4.7.x |
| ISIS 5000, 5500 | 4.7.x | 4.7.x | 4.7.x | 4.7.x |
| ISIS 7000, 7500 | 4.7.x | 4.7.x | 4.7.x | 4.7.x |
| MediaNetwork | Not Supported | Not Supported | Not Supported | Not Supported |

### Ingest / Playout

| Component | Interplay v3.8 | Interplay v3.7 | Interplay v3.6 | Interplay v3.5 |
|---|---|---|---|---|
| AirSpeed Classic | Not Supported | Not Supported | Not Supported | Not Supported |
| AirSpeed MultiStream (AMS) | 1.8.16 and later | 1.8.16 and later | 1.8.16 and later | 1.8.16 and later |
| AirSpeed 5000 Series | 2.9.x, 2.11.2, 3.0.x (2.10.1+ for AVC-LongG) | 2.9.x, 2.11.x, 3.0.x (2.10.1+ for AVC-LongG) | 2.9.x, 2.11.2, 3.0.x | 2.9.x |

### Newsroom

| Component | Interplay v3.8 | Interplay v3.7 | Interplay v3.6 | Interplay v3.5 |
|---|---|---|---|---|
| iNEWS Server | 3.4.3 and later | 3.4.3 and later | 3.4.3 and later | 3.4.3 and later |
| Command | 3.1 and later | 3.1 and later | 3.1 and later | 3.1 or later |

### Archive

| Component | Interplay v3.8 | Interplay v3.7 | Interplay v3.6 | Interplay v3.5 |
|---|---|---|---|---|
| SGL Flashnet Client | 2016.2.4 | 2016.2.4, 2015.4.1 | 2015.4.1 | 2015.4.1 |
| SGL Flashnet Server | 6.8.03.007 | 6.8.03.007, 6.6.3.007 | 6.6.3.007 | 6.6.3.007 |
| Assist | 3.8 | 3.8, 3.7 | 3.6, 3.6.1 | 3.5 |

---

## Interplay | Production v3.4 — v3.0

### Core Components

| Component | v3.4 | v3.3 | v3.2 | v3.1 | v3.0.5 | v3.0 |
|---|---|---|---|---|---|---|
| Release Dates | 24/09/2015 | 25/06/2015 | 15/12/2014 | 20/06/2014 | 26/09/2013 | 27/06/2013 |
| **Engine Server** | 3.4 | 3.3 | 3.2 | 3.1 | 3.0.5 | 3.0 |
| **Access Client (PC)** | 3.4 | 3.3 | 3.2 | 3.1 | 3.0.5 | 3.0 |
| **Access Client (macOS)** | 3.4 | 3.3 | 3.2 | 3.1 | 3.0.5 | 3.0 |
| **Archive Engine Server** | 3.4 | 3.3 | 3.2 | 3.1 | 3.0.5 | 3.0 |
| **Transfer Server [a]** | 3.7.x, 3.6.x, 3.5, 3.4 | 3.6.x, 3.5, 3.3 | 3.6.x, 3.5, 3.2 | 3.6.x, 3.5, 3.1 | 3.0.5 | 3.0 |
| **Transfer Client [b]** | 3.7.x, 3.6.x, 3.5, 3.4 | 3.3 | 3.2 | 3.1 | 3.0.5 | 3.0 |
| **Media Indexer Server** | 3.4.3 | 3.4.3 | 3.4.3 | 3.4.3 | 3.4.3 | 3.4.3 |
| **Media Indexer Client** | 3.4.3, 3.5.0 | 3.4.3, 3.5.0 | 3.4.3, 3.5.0 | 3.4.3, 3.5.0 | 3.4.3, 3.5.0 | 3.4.3, 3.5.0 |
| **Avid Service Framework** | 1.8 | 1.8 | 1.8 | 1.8 | 1.7 | 1.6.0 |

a. Requires latest patches on Interplay Production Engine and matching version of Interplay Access on Transfer Server. Compatibility applies to Transfer Server in an Interplay workgroup only.
b. For standalone workflows, match Transfer Server and Transfer Client version to the editor release.

### Production Services (v3.4 — v3.0)

| Component | v3.4 | v3.3 | v3.2 | v3.1 | v3.0.5 | v3.0 |
|---|---|---|---|---|---|---|
| Production Services Engine | 3.4 | 3.3 | 3.2 | 3.1 | 3.0.5 | 3.0 |
| Interplay Adapter | Not Supported | Not Supported | Not Supported | Not Supported | 3.0.5 | 3.0 |
| ProEncode | Not Supported | Not Supported | Not Supported | Not Supported | Not Supported | 3.0 |
| Archive and Restore Services | 3.4 | 3.3 | 3.2 | 3.1 | 3.0.5 | 3.0 |
| Auto Archive/Transcode | 3.4 | 3.3 | 3.2 | 3.1 | 3.0.5 | 3.0 |
| Transcode Service | 3.4 | 3.3 | 3.2 | 3.1, 3.2 | 3.0.5 | 3.0 |
| Streaming Server | 3.0, 3.0.5 | 3.0, 3.0.5 | 3.0, 3.0.5 | 3.0, 3.0.5 | 3.0.5 | 3.0 |
| STP Encode | 3.4 | 3.3 | 3.2 | 3.1, 3.2 | 3.0.5 | 3.0 |
| Move / Copy | 3.4 | 3.3 | 3.2 | 3.1 | 3.0.5 | 3.0 |
| Delivery / Receiver | 3.4 | 3.3 | 3.2 | 3.1 | 3.0.5 | 3.0 |
| Telestream Vantage | 6.3 | 6.3 | 6.3 | 6 | | |

### Shared Storage (v3.4 — v3.0)

| Component | v3.4 | v3.3 | v3.2 | v3.1 | v3.0.5 | v3.0 |
|---|---|---|---|---|---|---|
| NEXIS PRO, E2, E4, E5 | No Longer Supported | Not Supported | Not Supported | Not Supported | Not Supported | Not Supported |
| ISIS 2000, 2500 | 4.7.x | 4.7.x | 4.7.x | 4.6.1, 4.7.x | 4.2, 4.5, 4.6.1, 4.7.x | 4.2, 4.5, 4.6.1, 4.7.x |
| ISIS 5000, 5500 | 4.7.x | 4.7.x | 4.7.x | 4.6.1, 4.7.x | 4.2, 4.5, 4.6.1, 4.7.x | 4.2, 4.5, 4.6.1, 4.7.x |
| ISIS 7000, 7500 | 4.7.x | 4.7.x | 4.7.x | 4.6.1, 4.7.x | 4.2, 4.6.1, 4.7.x | 4.2, 4.5, 4.6.1, 4.7.x |

### Ingest / Playout (v3.4 — v3.0)

| Component | v3.4 | v3.3 | v3.2 | v3.1 | v3.0.5 | v3.0 |
|---|---|---|---|---|---|---|
| AirSpeed MultiStream | 1.8.16 and later | 1.8.16 and later | 1.8.16 and later | 1.8.16 and later | 1.8.16 and later | 1.8.16 and later |
| AirSpeed 5000 Series | 2.7.x, 2.8, 2.9.x | 2.7.x, 2.8, 2.9.x | 2.7.x, 2.8, 2.9.x | 2.1.x, 2.6.x, 2.7.x, 2.9.x | 2.1.x, 2.6.x, 2.7.x, 2.9.x | 2.1.x, 2.6.x, 2.7.x, 2.9.x |

### Newsroom (v3.4 — v3.0)

| Component | v3.4 | v3.3 | v3.2 | v3.1 | v3.0.5 | v3.0 |
|---|---|---|---|---|---|---|
| iNEWS Instinct | Not Supported | Not Supported | 6.2 | 6.1, 6.2 | 5.0.1 | 5.0 |
| iNEWS Server | 3.4.3 and later | 3.4.3 and later | 3.4.3 and later | 3.4.3 and later | 3.4.3 and later | 3.4.3 and later |
| Command | 3.1 or later | 3.1 or later | 3.1 or later | 3.1 or later | 3.1 or later | 3.1 or later |

### Archive (v3.4 — v3.0)

| Component | v3.4 | v3.3 | v3.2 | v3.1 | v3.0.5 | v3.0 |
|---|---|---|---|---|---|---|
| SGL Flashnet Client | 6.1.52 | 6.1.52 | 6.1.52 | 6.1.52 | 6.1.52 | 6.1.52 |
| SGL Flashnet Server | 6.4.7 | 6.4.7 | 6.4.7 | 6.4.7 | 6.4.7 | 6.4.07 |

---

## Pro Tools Compatibility with Interplay | Production

> S = Supported. Empty cells indicate no support. A `.x` extension denotes the latest patch version.

| Pro Tools | v3.8 | v3.7 | v3.6 | v3.5 | v3.4 | v3.3 | v3.2 | v3.1 | v3.0.5 | v3.0 |
|---|---|---|---|---|---|---|---|---|---|---|
| PT 2018.1–2018.3 | S ^c ^e | | | | | | | | | |
| PT 12.8.x | S ^c ^e ^f | S ^c ^e ^f | S ^c ^e | | | | | | | |
| PT 12.7.x | S ^c ^e ^f | S ^c ^e | | | | | | | | |
| PT 12.5.x–12.6.x | S ^c ^e | S ^c ^d | | | | | | | | |
| PT 12.3.x–12.4.x | S ^c | S ^c | S | | | | | | | |
| PT 12.2.x | | | | | S | | | | | |
| PT 11.3.1–11.3.2 | | | | S | | | | | | |
| PT 11.0.x | | | | | | | S | S | | |
| PT 10.3.7–10.3.8 | | | | | S ^a ^b | | | | | |

**Footnotes:**

a. Pro Tools 10.x requires the Pro Tools Interplay Integration Plug-in 2.5 or higher.
b. Pro Tools 10.x Send to Playback functionality requires the Pro Tools Send to Playback 2.5 Plug-in.
c. Pro Tools is only qualified for HD video workflows and below.
d. Pro Tools 12.5 on macOS requires Interplay Access v3.4.
e. Send to Playback is not supported with this configuration.
f. "Same as source check-in from Pro Tools is not functioning properly. A workspace must be selected."

**Web Services for Pro Tools Send to Playback:** v3.2, v3.0

---

## MediaCentral Platform Services (MCS) — v2.10.x and v2.9.x

> All MCS versions v2.4.x through v2.10.x were unsupported as of 31 December 2021.

| Component | MCS v2.10.x | MCS v2.9.x |
|---|---|---|
| **MC \| Distribute** | Matching version per patch (see below) | v2.9.0 (MCS 2.9.0), v2.9.1 (MCS 2.9.1) |
| **MC \| Asset Management** | v2017.1–v2017.2 UI (v2.10.3–v2.10.6); MAM 5.8–5.9 (v2.10.0–v2.10.6); MAM 5.9.1 only (v2.10.7) | MAM 5.1–5.8 UI |
| **MC \| Caption (CCS)** | v2.10.x (matching per patch) | v2.9.0 |
| **Assignments** | v2.10.0 (v2.10.0); v2.10.1 (v2.10.1–v2.10.7) | v2.9.0 |
| **MC UX Connector for Adobe PP CC** | v2.10.0–v2.10.3: PP CC v11.x (2017); v2.10.4–v2.10.6: PP CC v11/v12; v2.10.7: PP CC v12/v13/v14.3.1 | v2.8.0 Connector with PP CC v10 (2015.4) |
| **Maestro UX Plug-In** | v2.10.x: v2.3.x (Maestro 7.3.x); v2.10.5: v2.4.0 (7.4.5)/v2.5.0 (7.5.0–7.5.1); v2.10.6: v2.5.1/v2.5.2; v2.10.7: v2.5.2 | v2.2.1 (Maestro 7.2.1) |
| **OS — Red Hat Enterprise Linux** | RHEL 6.5 | RHEL 6.5 |

### Interplay Production Compatibility (MCS v2.10.x / v2.9.x)

| Configuration | MCS v2.10.x | MCS v2.9.x |
|---|---|---|
| **Without STP** | v3.1.3–v3.8.x, v2017.2, v2018.6–v2019.6 (also v2020.4–2021.11 with MCS v2.10.6+) | v3.1.3–v3.7.x |
| **With STP (requires MCDS)** | Matching MCDS per Interplay version (v3.3.0–v3.8.x, v2017.2–v2019.6) | Matching MCDS per Interplay version (v3.3.0–v3.6.1) |
| **Interplay Access** | v3.1.3–v3.8.x and v2017.2 (v3.6 required for indexing Interplay Archive database) | v3.1.3–v3.7.x |

### Shared Storage (MCS v2.10.x / v2.9.x)

- MCS v2.10.6/v2.10.7: Avid NEXIS v2019.2.2 client; Avid ISIS v4.7.13 client bundled
- MCS v2.10.0–v2.10.5: Avid ISIS v4.7.11 client; NEXIS clients v7.2.0–v7.9.0 bundled (per patch)
- MCS v2.9.x: ISIS v4.7.10 pre-installed; NEXIS v7.1.0 bundled
- **Avid NEXIS:** 2018.x, 2019.2, 2019.4, 2019.5 and later (RedHat v6.5 support required)
- **ISIS 5500/7500:** 4.7.x (client ≥ System Director version required)
- ISIS 2500 System Director: unsupported as of 31/12/2020

---

## MediaCentral Platform Services — v2.8.x through v2.4.x

> All unsupported as of 31 December 2021.

| Component | MCS 2.8.x | MCS 2.7.x | MCS 2.6.x | MCS 2.5.x | MCS 2.4.x |
|---|---|---|---|---|---|
| **MC \| Distribute** | 2.8.0 | 2.7.0/2.7.1/2.7.2 | 2.6.0/2.6.1 | 2.5.0/2.5.1 | 2.4.0/2.4.1/2.4.3 |
| **Interplay MAM UI** | MAM 5.1–5.7 | MAM 5.1–5.6 | MAM 5.1–5.5 | MAM 5.1–5.4 | MAM 5.0–5.3 |
| **Maestro UX Plug-In** | v2.2 (Maestro 7.2) | v2.0–v2.1 (Maestro 7.1) | Not Supported | Not Supported | Not Supported |
| **OS — RHEL** | 6.5 | 6.5 | 6.5 | 6.5 | 6.5 |

---

## MediaCentral Platform Services — v2.3.x through v2.0 / Interplay Central 1.8

> All End of Support. For reference only.

| Component | MCS 2.3.x | MCS 2.2.x | MCS 2.1.x | MCS 2.0.x | IC 1.8/1.8.1 |
|---|---|---|---|---|---|
| EoS Date | 30/06/2017 | 30/06/2017 | 30/03/2016 | 30/03/2016 | 30/09/2016 |
| **Media Distribute** | 2.3.0/2.3.1 | 2.2 | 2.1 | 2.0 | 1.8 |
| **Interplay MAM UI** | MAM 5.0–5.2 | MAM 4.3.7/5.0/5.1 | MAM 5.0–5.1 | MAM 5.0 | 4.3.5 (not compatible) |
| **OS — RHEL** | 6.5 | 6.5 | 6.5 | 6.5 | 6.3 (1.8), 6.5 (1.8.1) |
| **GlusterFS** | 3.4.4/3.4.0/3.6.4 | 3.4.4/3.4.0 | 3.4.4/3.4.0 | 3.4.4/3.4.0 | 3.3.1 |

---

## MediaCentral | UX Mobile

> Mobile client matrix for legacy MCS releases (all End of Support). iOS 14.x and Android OS 8.0+ require MCS v2.10.x.

| Mobile OS | MCS 2.10.x | MCS 2.9.x | MCS 2.8.x | MCS 2.7.x | MCS 2.6.x | MCS 2.5.x |
|---|---|---|---|---|---|---|
| iOS 8.x | Not Supported | Not Supported | 2.8.0/2.8.1 only | Supported | Supported | Supported |
| iOS 9.x | Not Supported | Supported | Supported | Supported | Supported | Supported |
| iOS 10.x | Supported (2.8.2+) | Supported | Not Supported | Not Supported | Not Supported | Not Supported |
| iOS 11.x | Supported | Not Supported | Not Supported | Not Supported | Not Supported | Not Supported |
| iOS 12.x | Supported * | Not Supported | Not Supported | Not Supported | Not Supported | Not Supported |
| iOS 13.x | Supported ** | Not Supported | Not Supported | Not Supported | Not Supported | Not Supported |
| iOS 14.x | Not Supported | Not Supported | Not Supported | Not Supported | Not Supported | Not Supported |
| Android 4.4–4.4W.2 | Supported | Supported | Supported | Supported | Supported | Supported |
| Android 5.0–5.1.1 | Supported | Supported | Supported | Supported | Supported | Supported |
| Android 6.0 | Supported (2.8.1+) | Supported | Not Supported | Not Supported | Not Supported | Not Supported |
| Android 7.0 | Supported * | Not Supported | Not Supported | Not Supported | Not Supported | Not Supported |
| Android 8.0–11.0 | Not Supported | Not Supported | Not Supported | Not Supported | Not Supported | Not Supported |

\* iOS 12.x and Android 7.0 support introduced with MC UX mobile app v2.10.4.
\*\* iOS 13.x support introduced with MC UX mobile app v2.10.6.

> **Note:** The MC | UX mobile app does not support connecting to a MediaCentral | Cloud UX system. MC v2.4.0 does not have an accompanying mobile client.

---

## Avid Router Control Supported Controllers (Legacy)

| Controller Type | Model | Communication | Protocol | Tested Software |
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

> Notes: Jupiter AccuSwitch software < v7.9.1 on CM-4000/CM-4400 is known to not work with the Router Control Jupiter plug-in. Jupiter v7.9.1 is the last supported release for CM-4000/CM-4400. VM-3000 is no longer supported. Protocol Translators (Emulators) are not supported.

---

## Avid ISIS 4.7.7 and Later (Shared Storage — Legacy)

| Component | ISIS v4.7.13 | ISIS v4.7.11 | ISIS v4.7.10 | ISIS v4.7.9 | ISIS v4.7.8 | ISIS v4.7.7 |
|---|---|---|---|---|---|---|
| **ISIS Models** | 2500/2000, 5500/5000, 7500/7000 | same | same | same | same | same |
| **Media Composer** | v8.8.x–v2018.12 and later | v8.8.x–v2018.12 and later | v6.5–8.6 and later | v6.5–8.5 and later | v6.5–8.5 and later | v6.5–8.4 and later |
| **NewsCutter** | v10.5.x, v11.0.x | v10.5.x, v11.0.x | — | v10.5.x, v11.0.x | v10.5.x, v11.0.x | v10.5.x, v11.0.x |
| **AirSpeed** | EoS | v2.7.15 | v2.7.15 | v2.7.15 | v2.7.15 | v2.7.15 |
| **AirSpeed MultiStream** | EoS | v1.8.18 | v1.8.16 | v1.8.16 | v1.8.16 | v1.8.16 |
| **AirSpeed 5000/5500** | v2.9.4 and later | v2.9.4 and later | v2.9.4 and later | v2.9.1 and later | v2.9.1 and later | v2.9.1 and later |
| **Pro Tools HD** | Not tested | Not tested | Not tested | Not tested (5500 not tested) | Not tested | ISIS 7500: v12.x (Mirrored) |

---

*Compatibility Support Matrix — Revised 02/12/2022. Distributed by Avid in online (electronic) form only. This is a frozen historical document covering legacy Interplay Production, MediaCentral Platform Services, and Avid ISIS products.*
