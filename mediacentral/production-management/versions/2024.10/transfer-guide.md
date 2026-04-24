---
product: mediacentral-production-management
product-area: post-production
version: "2024.10"
release-date: 24/02/2025
doc-type: setup-guide
source: pdf
source-file: MCPM_2024_10_0_Transfer_Guide.pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, mcpm, transfer, transfer-engine, send-to-playback, ingest, workgroup, ftp, frame-chase, setup]
---

# MediaCentral Transfer Setup Guide — MediaCentral | Production Management v2024.10

> **Source:** MediaCentral | Transfer Setup and User's Guide, Version 2024.10.  
> Documentation revised: 24/02/2025.  
> This document is a structured reference extracted from the 120-page source PDF. It captures architecture, configuration settings, file locations, network ports, and key operational notes. For step-by-step procedural detail, consult the source PDF directly.

---

## Overview

MediaCentral Transfer provides tools to:

- Transfer Avid media or sequences to a configured playback device (Send to Playback)
- Capture media from a configured ingest device
- Transfer Avid assets between Production Management workgroups or between standalone Media Composer clients

Transfer status can be monitored via the Transfer Engine Status view in Interplay Access, within Media Composer, or through the Production Services and Transfer Status tool.

### Terminology

| Term | Meaning |
|---|---|
| Avid shared storage | Avid NEXIS |
| Workgroup | Another term for a MediaCentral Production Management environment (always includes a Production Management Engine and shared storage) |
| Standalone environment | Transfer Engine not part of a Production Management workgroup; may or may not include shared storage |

---

## Configurations

### Workgroup Configuration

Typical components:

- MediaCentral Production Management Engine (asset tracking and management)
- MediaCentral Transfer Engine (manages transfer of media)
- Avid shared-storage file server and storage (Avid NEXIS)
- Ethernet network connecting all components
- Supported Avid editing systems (Media Composer, MediaCentral Cloud UX)

### Standalone Configuration

Transfer Engine and Transfer Client both installed on one or more Media Composer systems. Editors are not part of a Production Management workgroup; media is transferred directly between Media Composer workstations.

---

## Background Processes

The Transfer Engine runs the following as background (out-of-process) jobs:

- **Playback** — Send to Playback transfers
- **Ingest** — ingest from connected device
- **DET** — Dynamically Extensible Transfers

Each job runs as a separate process; a crash or hang in one job affects only that job. Hung background processes auto-shutdown after approximately one minute if they cannot reconnect to the Transfer Engine.

---

## File Locations

### Transfer Engine (Workgroup and Standalone)

| File | Location |
|---|---|
| `TMserver.ini` (engine settings) | `C:\ProgramData\Avid\AvidInterplayTransferEngine` |
| Transfer Engine log files | `C:\ProgramData\Avid\Temp\TMServerLog` |
| DET, STP, and ingest job logs | `C:\ProgramData\Avid\Temp\TransferEngine\TmWorkerLogs` |

### Transfer Client

| File | Location |
|---|---|
| Transfer Client log | `C:\Users\username\AppData\Local\Temp\tmclientlog\TMAPIMessage_mmddyyyy.log` |
| `TMClient.ini` | `C:\ProgramData\Avid\AvidMediaComposer` (Windows 10) |

### Log File Naming Convention (Background Processes)

Format: `<filetype>-<jobtype>-<uniqueidentifier>`

- `filetype`: tape ID for STP/DET jobs; clip name from recording device for ingest
- `jobtype`: `TMP` (Send to Playback), `TMD` (DET), `TMI` (ingest)

Default log purge interval: **3 days** — configurable via "Purge Worker Log Files Older Than" option in Transfer Engine Configuration.

---

## Network Ports

| Port | Purpose |
|---|---|
| 80 | Production Management Engine (standard HTTP) |
| 6532 | Transfer Engine listens for requests from other TM servers (e.g. initiating workgroup transfers) |
| 6535 | Default port used by the Transfer Engine (exact usage defined in `\WINDOWS\SYSTEM32\DRIVERS\ETC\services`) |

### Remote Workgroup Connectivity Rules

- Avid editing clients must be able to access the remote Transfer Engine and Production Management Engine.
- Transfer Engine servers must be able to access the remote Transfer service. (Transfer Engines only access Production Management services in the **local** workgroup, not remote ones.)
- The Production Management Engine must be able to access the remote Transfer Engine service.

---

## Transfer Engine Configuration Settings

Access via: **Start > Avid > Interplay Transfer Configuration**

Any changes require a Transfer Engine service restart to take effect.

### Workgroup Settings

| Option | Description |
|---|---|
| Interplay enabled | Select to enable Production Management Engine in a workgroup environment. Disables Standalone Settings when selected. |
| Interplay Engine hostname | Hostname of the Production Management Engine for this workgroup. |
| Username / Password | Credentials for the Transfer Engine to connect to Production Management. Account must already exist in the PM database. |
| Accept incoming workgroup transfers without Interplay login | Accept incoming transfers even if TE is not logged in to the PM Engine. |
| No-login workspace for incoming transfers | NEXIS workspace for media from incoming workgroup transfers (when not logged in). Must be mounted on the TE server. Required for captures. |

### Standalone Settings

(Ignored when Interplay Enabled is selected.)

| Option | Description |
|---|---|
| Accept incoming transfer after timeout | For standalone transfers between clients — timeout must be <15 s; Avid recommends 10 s. |
| OMF / AAF | Media file type for transfers (OMF or AAF/MXF). |
| Directory for incoming transfers | Valid media files directory for incoming transfers. Default: `OMFIMediaFiles` (OMF) or `AvidMediaFiles\MXF\1` (AAF). When files exceed 10,000 in `\1`, change to `AvidMediaFiles\MXF\2`. |

### System Settings

| Option | Description |
|---|---|
| Enable auto-cleanup of transfer queues | Auto-clean queues older than 360 minutes (6 hours); runs every 12 minutes. Default: off. |
| Logging | Server logging off / Standard logging on / Debug logging on. Use debug only when instructed by Avid Customer Care. |
| Storage Type | Select for workgroup environment to improve transfer performance. |
| Buffer size | System-selected based on storage type; max 8 MB buffer if system RAM ≤2 GB. |
| Configure FTP Servers | Required if "MediaCentral Transfer Server with Supplement FTP Services" was selected during installation. |

### Workgroup Transfer Settings

| Option | Description |
|---|---|
| Workgroup transfers enabled | Enables workgroup-to-workgroup (or workstation-to-workstation in standalone) transfers. |
| Incoming workgroup transfers enabled | Enables incoming transfers; max incoming = 8. Incoming value is **doubled** in Total Transfers calculation. |
| Max. outgoing transfers | Maximum simultaneous outgoing workgroup transfers. Range: 1–4. |
| Directory for temporary composition files | Temp directory for composition files during capture/incoming transfers. Default: `C:\ProgramData\Avid\Temp`. |
| Delete temporary composition files after transfer | Select for normal use. Deselect only when troubleshooting at Avid Customer Care direction. |
| Workgroup names | Maps friendly workgroup names to remote Transfer Engine server names. (Ignored for Access-initiated transfers — those use Interplay Administrator "Configure Remote Workgroups" site setting.) |

### Playback Settings

| Option | Description |
|---|---|
| Playback transfers enabled | Enable if workgroup includes a playback device. |
| Max. simultaneous playback transfers | Range 0–20; device limits apply. Included in Total Transfers calculation. |
| Playback devices | List playback device names. Avid AirSpeed systems do not need to be listed here. |
| Purge Worker Log Files Older Than | Default: 3 days. |

### Ingest Settings

| Option | Description |
|---|---|
| Ingest transfers enabled | Enable if workgroup includes an ingest device. |
| Max. simultaneous ingest transfers | Range 0–20; device limits apply. Value is **doubled** in Total Transfers calculation. |
| Ingest devices | List ingest device names. |
| Disable Essence Analysis | Disables per-frame consistency checking for the listed device. Enabled by default. Use only if third-party device media fails validation incorrectly. Limited to AVC-Intra, AVC-LongG, DNxHD, DNxHR. ⚠️ Risk of creating problematic media. |

### DET (Dynamically Extensible Transfers) Settings

| Option | Description |
|---|---|
| DET enabled | Enables DET transfers. |
| Max. DET push transfers | Maximum simultaneous DET push transfers. |
| Max. DET pull transfers | Maximum simultaneous DET pull transfers. |

### Total Transfers (All Types)

The Total Transfers value is a hard limit. Calculation:

```
Total = (ingest × 2) + incoming_workgroup + outgoing + playback
```

Default recommended value is auto-calculated; can be overridden. See source PDF p. 38–39 for worked examples.

### Playlist / Newsroom Settings

| Option | Description |
|---|---|
| Use Newsroom rundowns to schedule transfers | Enables rundown-based scheduling. |
| Newsroom Server | Computer name of Newsroom Server. |
| Schedule File Name | Filename of the schedule file. |

---

## Workgroup Transfer Presets

Presets define a remote workgroup, destination workspace, and destination metadata folder for workgroup transfers. Configuration is via Interplay Administrator > Site Settings > Workgroup Transfer Presets.

Remote workgroups must be configured before presets can be set up.

---

## MXF/AAF Media Support

| Format | Transfer Support Notes |
|---|---|
| MXF OP-Atom | Fully supported (standard Avid media) |
| MXF OP1a (DHMS) | Requires FTP services configuration; OP1A_Export / OP1A_Export_K2 FTP Server profiles |
| AAF | Standard support |

For full qualified operating points for MediaCentral Transfer Playback (resolutions and frame rates), see source PDF Chapter 1 (pp. 17–21).

---

## Frame Chase Editing (Chapter 5)

Frame Chase Editing allows editors in Media Composer to begin editing a clip while it is still being recorded/ingested. The Transfer Engine supplies growing media to the editing workstation in real time.

**Limitations for in-progress clips:**

- Clips cannot be moved, archived, or restored while in-progress
- Limitations apply to workgroup transfers of in-progress clips (see source PDF pp. 110–111 for full list)

---

## Transfer Monitoring

Transfer status can be monitored from:

- **Media Composer** — Transfer Status window (sortable columns)
- **Interplay Access** — Transfer Engine Status window with filter options
- **Production Services and Transfer Status tool** — unified view of both Production Services and Transfer jobs

A single **Transfer Cache Engine** can be designated to monitor transfers handled by multiple Transfer Engines, playback devices, or other Transfer-enabled devices.

---

## Troubleshooting — Key Guidance

- **Verify network connectivity** first for any transfer failure
- **Increasing workgroup-to-workgroup transfer performance**: see source PDF pp. 119–120
- **File limit for media directories**: if directory contains >10,000 files, change incoming transfer directory to `AvidMediaFiles\MXF\2` (see Standalone Settings above)
- **Debug logging**: enable only at Avid Customer Care direction; generates per-frame log entries that create large files rapidly

Log files for all background process jobs (DET, STP, ingest):  
`C:\ProgramData\Avid\Temp\TransferEngine\TmWorkerLogs`

Transfer Engine server log:  
`C:\ProgramData\Avid\Temp\TMServerLog`
