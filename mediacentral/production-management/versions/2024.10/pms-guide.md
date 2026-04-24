---
product: mediacentral-production-management
product-area: post-production
version: "2024.10"
release-date: 19/12/2024
doc-type: setup-guide
source: pdf
source-file: MCPM_2024_10_0_Production_Services_Setup_Guide.pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, mcpm, production-services, transcode, archive, restore, copy, move, delivery, stp-encode, setup]
---

# Production Services Setup Guide — MediaCentral | Production Management v2024.10

> **Source:** MediaCentral | Production Services Setup and User's Guide, Version 2024.10.  
> Initial release: 19/12/2024.  
> This document is a structured reference extracted from the 230-page source PDF. It captures architecture, service descriptions, key configuration parameters, checklists, and reference tables. For step-by-step procedural detail, consult the source PDF directly.

---

## Overview

The Production Services system is a software infrastructure on which individual service providers are layered. The **Production Services Engine** acts as a broker, matching jobs with available providers. It allows compute-intensive tasks to be offloaded from editing workstations to dedicated servers.

The system has two primary user-facing components:

- **Production Services Engine** — the broker and job queue (also called MediaServices Broker or DMS Broker)
- **Production Services and Transfer Status Tool** — the management UI, installed automatically with the Engine; can also be installed on additional Windows servers/workstations without additional licensing

### Production Services Used by MediaCentral | Cloud UX

Cloud UX uses Production Services for the following workflows:

- Transcode
- Send to Playback (STP) — requires both Transcode and STP Encode services
- Delivery
- Restore

> **Note:** The MediaCentral Distribution Service (MCDS), used for Cloud UX STP operations, is not managed by the Production Services Engine.

---

## Service Providers

| Service | Description |
|---|---|
| **Transcode** | Transcodes Avid assets from one supported resolution to another (e.g. proxy generation, mixdown). Modes: MIXDOWN, DUALMIXDOWN, CROSSRATE, DATAEXTRACT. |
| **Archive** | Archives assets from the workgroup database to an external archive server. |
| **Restore** | Restores archived assets back to the workgroup. |
| **Copy** | Copies assets (metadata + media) from one workgroup to another. |
| **Move** | Moves media files between Avid NEXIS workspaces within the same workgroup. |
| **Delivery** | Transfers a clip and its media (or a sub-clip/sequence portion) to another Production Management workgroup. Requires Delivery Receiver at the destination. |
| **Auto Production Services** | Folder-based automation: Auto Transcode, Auto Archive, Auto Copy, Auto Transfer. Configured via Avid Service Configuration settings. |
| **STP Encode** | Offloads Long GOP OP1a encoding during Send to Playback requests from Media Composer or Cloud UX. |

### Notes on Auto Services

- Auto Archive and Auto Transcode include subfolders.
- Auto Transfer does **not** include subfolders.
- Auto Copy maintains the same folder structure as the source workgroup.

---

## Licensing

Licences are required for the Production Services Engine and most providers. Activation is via hardware dongle or software licensing.

Providers that require a valid licence:

- Interplay Archive and Restore
- Interplay Copy
- Interplay Delivery
- Interplay Move
- Interplay Transcode

A provider without a valid licence will start and run, but jobs will fail with a licence error on submission. If the Engine is co-located with a provider, no separate Engine licence is required.

---

## Key Configuration File Locations

| Component | File | Path |
|---|---|---|
| Production Services Engine settings | `DMSBroker.ini` | `C:\ProgramData\Avid\AvidInterplayMediaServices\DMSBroker.ini` |
| Engine service name | — | "AvidInterplayProductionServicesEngine" (Windows Services) |

---

## Checklist Cross-Reference

| Service | Setup Checklist Location (source PDF) |
|---|---|
| Production Services Engine | Chapter 2 (p. 20) |
| Transcode | Chapter 6 (p. 74) |
| Archive and Restore | Chapter 7 (p. 106) |
| Copy | Chapter 8 (p. 152) |
| Move | Chapter 10 (p. 180) |
| Delivery | Chapter 11 (p. 190) |
| STP Encode | Chapter 12 (p. 207) |

---

## Upgrade Note

If upgrading from Production Services Engine **v3.6 or earlier**: after installation, launch the Configuration tool, click **Settings**, then click **OK**. This is required to migrate settings correctly.

---

## Transfer Status Tool — User Rights

| Role | Capabilities |
|---|---|
| Administrator | Register/delete providers; view/delete any job; purge jobs list |
| Regular User | Administrative actions on own jobs only |

---

## Workspaces

To use Transcode and other Production Services, at least one workspace must be mounted on the provider server for each shared-storage system used for reading/writing. Workspaces can be mounted as a UNC path or lettered drive.

- Transcode and STP Encode: workspace mounting method (drive letter or UNC) must be selected during provider installation.
- If the number of required workspaces exceeds available drive letters, use UNC paths.
- Mount workspaces before starting the service.

---

## Key Functional Notes by Service

### Transcode

- Cannot use CROSSRATE mode to transcode group clips.
- MIXDOWN of a sequence with group clips includes only the selected camera angle.
- Subclips created from group clips are not supported by Transfer or Production Services.
- Performance is reduced when transcoding to AVC-Intra — up to 4× real time.
- DNxHR UHD TV1: in CROSSRATE mode, Target Project Type selection is not needed; frame rate and dimensions in the Target Video Quality list are used instead.
- Source resolutions supported by Media Composer can be used as transcode sources, except resolutions with added pulldown.

### Archive and Restore — Partial Restore / Partial Delivery

Partial Restore and Partial Delivery are **supported** for:

- AVC-Intra, Avid DNxHD, Avid DNxHR (see Best Practices Guide for supported resolutions)
- Avid JFIF, DV25/DV50/DV100, IMX (MPEG) 30/40/50, JPEG2000
- Uncompressed SD and HD, XAVC-Intra HD, XDCAM-EX/HD
- All imported files (Partial Restore only applies to clips archived with Interplay Archive 2.4 or later; earlier archives are fully restored)

Partial Restore and Partial Delivery are **not supported** for:

- Apple ProRes, AVC LongG and other Long GOP (except listed above), AVCIBP-BLL (720p proxy)
- H.264, HDV, MPEG-1 Layer 2 audio, MPEG-2 (IPV), MPEG-4
- Media with ancillary data, rendered effects, master clips with chunked media, OMF media, Stereoscopic 3D media

> Note: Attempting Partial Restore/Delivery on unsupported media types should produce a full restore or delivery.

### Delivery

- Customers using MCPM v2024.10 must upgrade the Delivery Receiver from v2023.7 to **v2023.7.3 or later**.
- The `DMSIDService.ini` parameter `@6%?DeliveryTimeoutSecs=300` (default 300 s) is configurable (see v2024.10.4 patch notes for detail).

### Restrictions (Clip Usage Restrictions)

Production Services preserves usage restrictions across all services (Archive, Restore, Transcode, Copy, Move, Delivery, Transfer). Limitations:

- After transfer to another workgroup or restore from archive, restriction colour defaults to white and username to the requesting user's login.
- A sequence using a master clip with restrictions uses a copy of that master clip; later changes to restrictions on the original are not reflected in the copy.

---

## Maximum Number of Simultaneous Jobs (Appendix D)

> ⚠️ Do not change default values unless specifically instructed by Avid Professional Services or Customer Success.

| Service | Default Max Simultaneous Jobs | Configurable? | Config File |
|---|---|---|---|
| Archive | 3 | Yes | `Documents and Settings\username\AvidArchiveService\DMSArchive.ini` |
| Copy | 1 | Yes | `CopyService\DMSCopyMedia.ini` |
| Delivery | 1 | Yes | `InterplayDeliveryService\DMSIDService.ini` |
| Delivery Receiver | 3 | Yes | (see source PDF p. 204) |
| Move | 1 | Yes | `MoveService\DMSMoveMedia.ini` |
| Restore | 3 | Yes | `AvidRestoreService\DMSRestore.ini` |
| STP Encode | 1 | No | — |
| Transcode | 1 | No | — |

To change the maximum: edit the `@5%?MaxJobs=n` line in the relevant `.ini` file.

---

## Supported AVC-Intra Resolutions (Appendix B)

| Project | Edit Rate | Resolution Name | MBit/s | Raster Size |
|---|---|---|---|---|
| 720p | 25 | AVC-Intra 50 720p25 | 50 | 960×720 |
| 720p | 25 | AVC-Intra 100 720p25 | 100 | 1280×720 |
| 720p | 29.97 | AVC-Intra 100 720p29.97 | 100 | 1280×720 |
| 720p | 50 | AVC-Intra 50 720p50 | 50 | 960×720 |
| 720p | 50 | AVC-Intra 100 720p50 | 100 | 1280×720 |
| 720p | 59.94 | AVC-Intra 50 720p60 | 50 | 960×720 |
| 720p | 59.94 | AVC-Intra 100 720p60 | 100 | 1280×720 |
| 1080i | 50 | AVC-Intra 50 1080i50 | 50 | 1440×1080 |
| 1080i | 50 | AVC-Intra 100 1080i50 | 100 | 1920×1080 |
| 1080i | 59.94 | AVC-Intra 50 1080i60 | 50 | 1440×1080 |
| 1080i | 59.94 | AVC-Intra 100 1080i60 | 100 | 1920×1080 |
| 1080p | 25 | AVC-Intra 100 1080p25 | 100 | 1920×1080 |
| 1080p | 29.97 | AVC-Intra 100 1080p29.97 | 100 | 1920×1080 |

Also supported (must be acquired in native format): AVC-Intra 50/100 720p23.976; AVC-Intra 50/100 1080p23.976.

---

## Transcode Target Resolutions (Appendix C — Summary)

The following codec families are supported as transcode targets. Full resolution lists are in the source PDF (pp. 226–229).

- JFIF (1:1 MXF 10-bit variants, 10:1, 14:1, 15:1s, 2:1, 20:1, 28:1, etc.)
- Apple ProRes (HQ, standard, LT, Proxy — NTSC, PAL, 720p, 1080i, 1080p; plus ProRes 4444 1080i/1080p)
- AVC-Intra (50 and 100 variants — 720p and 1080i/p)
- AVC-LongG (12, 25, 50 Mbps — 1080i and 720p)
- AVCIBP (720p Proxy — BLL 3.0 50/60)
- DNxHD (1080 and 720 variants)
- DNxHR (UHD TV1 and 4K — LB, HQX, 444 — multiple frame rates)
- DV and HDV (DV25, DV50, DV100, HDV 720p/1080i)
- H.264 (800 Kbps, 1500 Kbps, 2.0 Mbps proxy variants)
- JPEG2000
- MPEG (MPEG-4, MPEG-30/40/50, MPEG2 MPL 35)
- XAVC-Intra (50/100 1080i, XAVC UHD TV1 and 4K Intra — CBG and VBR Class 300/480)
- XAVC LongG (25/35/50 Mbps 1080i and 720p)
- XDCAM-EX (35 Mbps — 1080i/p and 720p variants)
- XDCAM-HD (17.5/35/50 Mbps — 1080i/p and 720p variants)

> Note: 1:1 10-bit HD RGB is supported for check-in, check-out, and deletion only — not for Production Services operations.
