---
product: mediacentral-production-management
product-area: post-production
version: "2024.10"
release-date: 01/10/2024
doc-type: admin-guide
source: pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, mcpm, admin, installation, upgrade, media-indexer, pms, database]
---

# MediaCentral | Production Management v2024.10 — Administration Reference

> **Source note:** The full MCPM Administration Guide and Installation Guide PDFs are not currently present in project-kb. This file consolidates administration-relevant content from the v2024.10, v2024.10.1, and v2024.10.2 ReadMe PDFs (`MCPM_2024_10_0_ReadMe.pdf`, `MCPM_2024_10_1_ReadMe.pdf`, `MCPM_2024_10_2_ReadMe.pdf`).
>
> For complete installation and configuration procedures, refer to the *Avid MediaCentral | Production Management Administration Guide* and *Installation Guide* (not present in project-kb).

---

## System Architecture Overview

MCPM v2024.10 uses the established bare-metal Windows server architecture. This is the last generation prior to the Kubernetes/Linux migration in APM v2025.10.

### Core Components

| Component | Description |
|---|---|
| Production Management Engine | Windows-based core engine with proprietary database |
| Media Indexer (MI) | Windows-based; provides NOMI configuration and redundancy |
| Production Media Services (PMS) | Background services: MCDS, PMS Broker, Transcode, STPEncode, Transfer, Move, Copy/Delivery, Archive/Restore |
| Interplay Access | Primary client application for asset management |
| Interplay Administrator | Administration console for configuration, users, roles, search connectors |

### Supported Platforms — v2024.10

- **macOS 12.x (Monterey)**: supported (final release to do so — will not be supported in future versions)
- **Virtual environments**: from June 2025, support is no longer vendor-specific; generic virtualisation support applies
- **Microsoft Defender**: not supported

---

## Authentication and Security

MCPM v2024.10 uses the established MCPM authentication model with the Central Configuration Server (CCS).

> **Note:** The CCS is eliminated in APM v2025.10. This is a key architectural difference for customers planning migration.

### MediaCentral Search Connector

A new **"Retain"** asset visibility option has been added in v2024.10:

- Configured in Interplay Administrator → MediaCentral Search Connector settings
- The v2024.10 Interplay Administrator client is required to configure the v2024.10 Cloud UX Search Connector
- Earlier client versions cannot configure the new Retain option — ensure all administrators are on v2024.10 client before modifying Search Connector settings

### Apache Log4j

- Updated to v2.17.1 in v2024.10
- One Log4j v1.x component remains in the Production Management engine (not yet remediated in this release)

---

## Media Indexer Administration

### Upgrade and Reindex

- After any Media Indexer upgrade, a **full reindex** of all monitored storage is required
- Reindex duration varies by number of data sources and database size
- Plan adequate time for reindex completion before returning the system to production

### Local MI Security Configuration (v2024.10.2)

A new security control for local Media Indexer storage sharing was introduced in v2024.10.2:

**Configuration file:** `feature.properties`

**Property:** `com.avid.ummd.adapter.fs.StorageWorkspace.shareLocalStorage`

| Value | Behaviour |
|---|---|
| `false` (default) | SMB Write access to local MI storage is **disabled** |
| `true` | SMB Write access to local MI storage is enabled (legacy behaviour) |

**Upgrade note:** Administrators upgrading to v2024.10.2 will receive a one-time prompt to confirm the desired network sharing setting. Review any workflows that depend on direct SMB write access to local MI storage paths before upgrading.

---

## Production Media Services (PMS) Administration

### Supported PMS Components — v2024.10

- Infrastructure: MediaCentral Distribution Service (MCDS), PMS Broker
- Send-to-playback: Transcode, STPEncode, Transfer
- Media migration: Move, Copy, Delivery
- Archive and Restore

### Pre-Upgrade Requirements

Before upgrading PMS components:

1. Record or screenshot all settings in the **Interplay Production Services Engine Configuration** tool
2. Record or screenshot all **Production Services profiles** (Transcode, STP Encode, etc.) — Avid does not support exporting or importing existing profiles
3. Fully uninstall the previous Production Services Engine software and SQL Server/database
4. After uninstalling providers (Transcode, STP Encode, etc.), delete all residual service-related folders from `C:\Program Files\Avid` and `C:\Program Data\Avid` before installing the new version

### Send to Playback — DNxHD HQX 1080p 23.98 (v2024.10.1)

Support for DNxHD HQX 1080p 23.98 (profile: DNxHD 1080 175X-185X-220X 1 Field 23.98) via MCDS in Cloud UX was added in v2024.10.1.

---

## Client Administration

### Interplay Access — v2024.10.1 Dynamic Range Property

The Dynamic Range property field added in v2024.10.1 requires administrator action on existing databases:

- **New databases**: Dynamic Range field is available by default, no action required
- **Existing databases**: administrators must enable the field via **Property Layout** settings in Interplay Administrator
- Once enabled, individual assets must be updated via re-checkin or the **"Update Status from MI"** action to populate the field value

### Transfer Manager — Apple Silicon (v2024.10.1)

Transfer Manager now supports Apple Silicon (ARM-based Mac) workstations from v2024.10.1. No additional configuration is required; the standard macOS installer package supports both Intel and Apple Silicon.

---

## Database Administration

### Backup and Restore

Always back up the Production Management database before performing engine upgrades, PMS upgrades, or other significant changes.

#### Cluster (Redundant) Configuration

1. Disable database replication
2. Back up the primary node database
3. Re-enable replication after backup completes
4. Verify replication sync before proceeding

#### Non-Cluster Configuration

1. Stop the Production Management Engine service
2. Back up the PM database (Avid backup tools or SQL-level backup)
3. Confirm the backup is complete and restorable
4. Restart the engine

#### Restoring a Backup

1. Stop the Production Management Engine service on all nodes
2. Restore the database backup to the target server
3. Restart the engine and verify asset accessibility
4. If restoring to a different server, update all Interplay Administrator and client workstation connection configurations

---

## MediaCentral Delivery Compatibility

When running MediaCentral Delivery with MCPM v2024.10, the Delivery Receiver component must be at **v2023.7.3 or later**. Earlier v2023.7.x Delivery Receiver versions are not compatible with MCPM v2024.10.

---

## Known Administration Issues

| Issue ID | Version | Description | Workaround |
|---|---|---|---|
| PLUS-1866 | 2024.10.2 | Interplay Administrator cannot connect to PM Search Connector with OpenID/Okta | Fixed in v2024.10.2 |
| IPI-3700 | 2024.10.1 | Tape ID visible in Standalone Transfer Engine | Delete and recreate the affected profile |
| PLUS-2077 | 2024.10.1 | Installer fails with Registry error on fresh installation | Fixed in v2024.10.1 |

---

*For full installation and configuration procedures, refer to:*
- *Avid MediaCentral | Production Management Administration Guide (not present in project-kb)*
- *Avid MediaCentral | Production Management Installation Guide (not present in project-kb)*
- *Full documentation: https://kb.avid.com/pkb/articles/en_US/Knowledge/MediaCentral-Production-Management-Documentation*
