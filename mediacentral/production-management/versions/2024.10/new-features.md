---
product: mediacentral-production-management
product-area: post-production
version: "2024.10"
release-date: 01/10/2024
doc-type: new-features
source: pdf
confidentiality: public
date-added: 16/04/2026
date-updated: 24/04/2026
status: current
feature-tags: [production-management, mcpm, new-features, media-indexer, search, dynamic-range, apple-silicon, search-connector, transfer-engine, transcode, delivery-profile, released-features]
---

# New Features — MediaCentral | Production Management

> **Source note:** Content for v2024.10 and patch releases is sourced from the respective ReadMe PDFs:
> `MCPM_2024_10_0_ReadMe.pdf`, `MCPM_2024_10_1_ReadMe.pdf`, `MCPM_2024_10_2_ReadMe.pdf`,
> `MCPM_2024_10_3_ReadMe.pdf`, `MCPM_2024_10_4_ReadMe.pdf`, `MCPM_2024_10_5_ReadMe.pdf`.
> The full What's New guide is not currently present in project-kb.

---

## New for Production Management v2024.10

### End of Support — macOS 12.x (Monterey)

v2024.10 is the **last release to support macOS 12.x (Monterey)**. macOS 12.x will not be supported in future releases.

### MediaCentral Search Connector — Retain Option

A new **"Retain"** option has been added to the MediaCentral Search Connector asset visibility settings in Interplay Administrator, alongside the existing Restrict and Relax options.

- Configuring the v2024.10 Cloud UX Search Connector requires a v2024.10 Interplay Administrator client
- Earlier client versions cannot configure the new Retain option

### MediaCentral Delivery Compatibility

Customers using MediaCentral Delivery with MCPM v2024.10 must upgrade their Delivery Receiver from v2023.7 to **v2023.7.3 or later**. Earlier v2023.7 Delivery Receiver versions are not compatible with MCPM v2024.10.

### Security and Platform

- **HPE MSA 2060** is newly qualified storage.
- **Virtual environment support**: from June 2025, virtual environment qualification is no longer vendor-specific — generic support applies.
- **Microsoft Defender**: not supported with MCPM v2024.10.
- **Apache Log4j**: updated to v2.17.1. Note: the Production Management engine still uses one Log4j v1.x component.

---

## New for Production Management v2024.10.1

*Source: MCPM_2024_10_1_ReadMe.pdf*

### Transfer Manager Support for Mac ARM (Apple Silicon)

Transfer Manager now supports **Apple Silicon (ARM-based Mac)** workstations. This enables Send to Playback (STP) and Send to Workgroup workflows in Media Composer on Apple Silicon hardware.

### Dynamic Range Property Field in Interplay Access

A new **Dynamic Range** property field is available in Interplay Access:

- Displayed in the Properties tab, Object Inspector, and Assets view
- **New databases**: Dynamic Range field is available by default
- **Existing databases**: requires manual enablement via Property Layout settings
- Assets can be updated with Dynamic Range data via re-checkin or using the "Update Status from MI" action

### Send to Playback — DNxHD HQX 1080p 23.98

Send to Playback (STP) now supports **DNxHD HQX 1080p 23.98** (resolution profile: DNxHD 1080 175X-185X-220X 1 Field 23.98) via MediaCentral Distribution Service (MCDS) in Cloud UX.

### Bug Fixes — v2024.10.1

| Issue ID | Description |
|---|---|
| IPI-3779 | XDCAM-HD 50mbps resolution missing from Transcode profiles |
| IPI-3813 | XDCAM-HD 50mbps missing from Production Services profiles |
| IPI-3755 | XAVC 300 Send to Playback fails with Glookast |
| IPI-3710 | Transcode fails if the Checkin Folder path contains a dot (`.`) |
| IPI-3757 | EWC media from Telestream Live Capture stored on NEXIS Azure goes offline |
| IPI-3774 | MediaCentral Sync retains old media relatives after sync |
| IPI-3886 | PM Engine crash during full database backup when assets are simultaneously deleted |
| PLUS-2077 | Installer fails with a Registry error on a fresh (clean) installation |

---

## New for Production Management v2024.10.2

*Source: MCPM_2024_10_2_ReadMe.pdf*

### Additional Local Media Indexer Security Configuration

A new security toggle — **"Enable Network Sharing"** — has been added for the Local Media Indexer, configurable via the `feature.properties` file.

- Property: `com.avid.ummd.adapter.fs.StorageWorkspace.shareLocalStorage`
- Default value: `false` (SMB Write access to local MI storage is restricted by default)
- **Upgraders**: a one-time prompt is displayed during upgrade to confirm the desired network sharing setting
- This change restricts SMB Write access to local MI storage; review any workflows that rely on direct SMB write access to local MI storage paths

### Bug Fixes — v2024.10.2

| Issue ID | Description |
|---|---|
| PLUS-1866 | Interplay Administrator cannot connect to the PM Search Connector when using OpenID/Okta authentication |
| PLUS-1872 | Dynamic Range value is calculated from all associated media, not only the media directly associated with the asset |
| IPI-3584 | First FTP profile is not saved correctly |
| IPI-3700 | Tape ID is visible in the Standalone Transfer Engine (workaround: delete and recreate the affected profile) |
| IPI-3835 | FTP OPTS UTF8 flag is randomly set to `true`, causing silent transfer failures |
| IPI-3626 | Transcode job shows "Complete" status even when the subsequent checkin step has failed |
| IPI-3826 | AVC-I MIXDOWN produces glitches when mixing AVC-I and AVC-LongG media |
| IPI-3829 | EVS MIXDOWN produces artefacts (requires MC Transcode v2024.10.2 + Media Composer v2023.12.6 or v2024.12.2 or later) |
| IPI-3875 | Media Indexer high memory usage causes Media Composer to go offline |
| IPI-3880 | Media Indexer high CPU usage causes MI process crashes |

---

## New for Production Management v2024.10.3

*Source: MCPM_2024_10_3_ReadMe.pdf — released 26/06/2025, revised 20/08/2025*

### Additional Properties in MediaCentral Search Connector

New properties have been added to the MediaCentral Search Connector to support two new workflows:

- **Wolftech News** integration with MediaCentral | Cloud UX v2025.6
- **Avid Ada Transcribe STT** (Speech-to-Text) workflows

**Action required on upgrade:** After upgrading to v2024.10.3, the administrator must open the Production Management Admin Client and launch the **"MediaCentral Search Connector"** configuration window at least once. This registers the new properties in the system. The window may be closed immediately after opening — no further configuration changes are required unless the new workflows are being adopted.

### Bug Fixes — v2024.10.3

All fixes are in the Transfer Engine component.

| Issue ID | Description |
|---|---|
| IPI-3854 | MXF transfer: `transfer_characteristics` metadata incorrectly set to zero; a new field `transfer_characteristics_Original` was being created incorrectly |
| IPI-3858 | Incorrect metadata written for DNxHD media with more than 40 audio tracks |
| IPI-3859 | Incorrect `DeltaPos` metadata written in the index table for DNxHD media with multiple audio tracks |

---

## New for Production Management v2024.10.4

*Source: MCPM_2024_10_4_ReadMe.pdf — released 16/10/2025, revised 24/10/2025*

> **Note:** MC Transcode fixes originally planned for v2024.10.4 were removed/withdrawn before release. Those fixes were subsequently released in v2024.10.5.

### Transfer Engine Config — DoNotIncludeMarkers

A new **DoNotIncludeMarkers** checkbox has been added to the Transfer Engine configuration:

- Location: Transfer Engine Config > Playback > Edit/Add device > **Create Clip XML**
- Default: **disabled** (markers are included by default; existing behaviour is preserved)
- When enabled, markers are excluded from the XML created during playback device clip creation

### Delivery Profile — ServiceTimeout Configuration

A configurable timeout parameter for the Delivery Profile service has been introduced:

- Configuration file: `C:\ProgramData\Avid\DeliveryService\DMSIDService.ini`
- Parameter: `@6%?DeliveryTimeoutSecs=300` (default value: **300 seconds**)
- Adjust this value if delivery jobs are timing out before completion in environments with slow or high-latency destinations

### Interplay Admin — HD1080P_50 Video Format

The **HD1080P_50** video format has been added to the Application Database Settings in Interplay Administrator, enabling configuration and use of this format in production workflows.

### Bug Fixes — v2024.10.4

| Issue ID | Description |
|---|---|
| IPI-3905 | XAVC Intra 100 1080p29.97 missing from the Transcode Profile Target Video Quality dropdown |
| IPI-3908 | Send to Playback (STP): 16-bit PCM audio encoded to corrupted MPEG audio in MXF OP1A output |
| IPI-3860 | STP Encode fails at 49% with Telestream media — see workaround below |

**Workaround for IPI-3860 (Telestream STP encode failure):**

Add the following toggle to `C:\ProgramData\Avid\Support\ReleasedFeatures.ftf`:

```
XDCAMForceReencode: true
```

> ⚠️ **Warning:** Enabling `XDCAMForceReencode` forces re-encoding of XDCAM media rather than wrapping it, which may significantly increase encoding time for affected workflows.

### Known Limitation — v2024.10.4

| Issue ID | Description |
|---|---|
| IPI-3916 | Restore fails when a Fully Qualified Domain Name (FQDN) is used in the `Destination_Server` field |

---

## New for Production Management v2024.10.5

*Source: MCPM_2024_10_5_ReadMe.pdf — released 17/11/2025*

> **Note:** This patch contains no new features. It delivers the MediaCentral Transcode fixes that were removed from v2024.10.4 prior to release.

### Bug Fixes — v2024.10.5

All fixes are in the MediaCentral Transcode component.

| Issue ID | Description |
|---|---|
| IPI-3694 | Data track becomes unreadable after a Dual Mixdown transcode operation |
| IPI-3832 | RLE alpha channel transcode fails with error `RGBAReader_UNKNOWN_COMPRESSION_TYPE` |
| IPI-3888 | EVS Neomedia MIXDOWN produces `IndexEntryCount` errors when the sequence contains unrendered quick transitions |
| IPI-3927 | Colorfront MIXDOWN fails — see workaround below |

**Workaround for IPI-3927 (Colorfront MIXDOWN failure):**

Add the following toggle to `C:\ProgramData\Avid\Support\ReleasedFeatures.ftf`:

```
TCWithOffsetForTapeMobsRelinkFix: true
```
