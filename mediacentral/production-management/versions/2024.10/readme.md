---
product: mediacentral-production-management
product-area: post-production
version: "2024.10"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, mcpm, readme, upgrade, ltm, media-indexer, pms, apple-silicon]
---

# MediaCentral | Production Management v2024.10 — ReadMe

*Sources: MCPM_2024_10_0_ReadMe.pdf, MCPM_2024_10_1_ReadMe.pdf, MCPM_2024_10_2_ReadMe.pdf*

---

## Overview

MediaCentral | Production Management (MCPM) v2024.10 is a **Long-Term Maintenance (LTM)** release. It continues the proven bare-metal Windows-based architecture of the MCPM product line.

> **Note on succession:** MCPM v2024.10 is the last major generation before the architectural rewrite into Avid Production Management (APM) v2025.10, which migrates to Kubernetes/Linux/PostgreSQL. See `../../versions/2025.10/readme.md` for the successor product.

Patch releases:
- v2024.10.1 — bug fixes + Apple Silicon Transfer Manager, Dynamic Range property field
- v2024.10.2 — bug fixes + Local MI security configuration

---

## Platform and Compatibility

### End of Support — macOS 12.x (Monterey)

v2024.10 is the **last release to support macOS 12.x (Monterey)**. macOS 12.x support will be removed in future releases.

### Storage and Virtualisation

- HPE MSA 2060 newly qualified in v2024.10
- From June 2025: virtual environment support is no longer vendor-specific; generic virtual environment support applies
- Microsoft Defender is **not supported** with MCPM v2024.10

### Security

- Apache Log4j updated to v2.17.1
- One Log4j v1.x component remains in the Production Management engine (known; not yet remediated in this release)

### MediaCentral Delivery Compatibility

If using MediaCentral Delivery with MCPM v2024.10, the Delivery Receiver must be upgraded to **v2023.7.3 or later**. v2023.7 Delivery Receiver is not compatible.

---

## New Features by Patch

For detailed new feature descriptions, see `new-features.md`.

### v2024.10

- MediaCentral Search Connector: new "Retain" option in asset visibility settings (Interplay Administrator)
- macOS 12.x (Monterey): final supported release
- HPE MSA 2060 qualified; virtual environment support de-vendor-specified

### v2024.10.1

- Transfer Manager support for Apple Silicon (Mac ARM)
- Dynamic Range property field in Interplay Access
- Send to Playback: DNxHD HQX 1080p 23.98 support via MCDS in Cloud UX

### v2024.10.2

- Local Media Indexer security configuration: "Enable Network Sharing" toggle (`feature.properties`)
- Default: SMB Write access to local MI storage is disabled

---

## Known Limitations

### v2024.10 — PMS Login Behaviour

Login behaviours for Production Services jobs submitted via Cloud UX may require credentials of an internally authenticated user (rather than a Cloud UX SSO user) in some workflows. This behaviour is consistent with the v2024.10 security model.

### v2024.10.1 — Dynamic Range on Existing Databases

Existing databases do not automatically display the Dynamic Range field. Administrators must enable it via Property Layout settings in Interplay Administrator. Assets require re-checkin or "Update Status from MI" to populate the field.

### v2024.10.1 — IPI-3700 (Tape ID in Standalone Transfer Engine)

Tape ID is visible in the Standalone Transfer Engine. Workaround: delete and recreate the affected profile.

### v2024.10.2 — IPI-3829 (EVS MIXDOWN Artefacts)

EVS MIXDOWN artefacts require MC Transcode v2024.10.2 **and** Media Composer v2023.12.6 or v2024.12.2 or later. Both components must be updated.

---

## Upgrade Guidance

> **Prerequisite:** Always back up your Production Management database before performing any upgrade. See the "Database Backup and Restore" section below.

### General Upgrade Best Practices

- Record all Production Services Engine settings and profiles before upgrading (Avid does not support export/import of profiles)
- Ensure all client workstations are updated to the matching client version after the server upgrade
- After upgrading, perform a full database backup to capture the post-upgrade schema state

### Upgrading the Production Management Engine

The MCPM engine runs on Windows servers (bare-metal or supported virtual environment). The upgrade process involves:

1. Back up the PM database (see below)
2. Manually uninstall the previous version of the Production Management Engine software from all servers
3. Install the new version
4. Verify connectivity from Interplay Administrator and client workstations

### Upgrading Media Indexer Servers

- A **full reindex** is required after upgrading Media Indexer servers
- Reindex duration varies by the number of data sources and database size
- Plan for indexing downtime before scheduling the upgrade in production

### Upgrading Production Media Services (PMS)

1. Record or screenshot all settings in the Interplay Production Services Engine Configuration tool
2. Record or screenshot all Production Services profiles (Transcode, STP Encode, etc.)
3. Fully uninstall the previous PMS software and SQL Server/database
4. Install the new PMS version
5. Delete any residual service-related folders from `C:\Program Files\Avid` and `C:\Program Data\Avid` before installing the new version

### Database Backup and Restore

#### Cluster Configuration (Redundant)

For clustered (redundant) database configurations:

1. Disable database replication before beginning the backup
2. Back up the primary node database using the standard backup procedure
3. Re-enable replication after the backup completes
4. Verify replication sync before proceeding with the upgrade

#### Non-Cluster Configuration

For non-redundant configurations:

1. Stop the Production Management Engine service
2. Back up the PM database using the Avid backup tools or SQL-level backup
3. Confirm the backup is complete and restorable before proceeding
4. Restart the engine after backup confirmation

### Restoring a Database Backup

1. Stop the Production Management Engine service on all nodes
2. Restore the database backup to the target server
3. Restart the engine and verify asset accessibility
4. If restoring to a different server, update all connection configurations (Interplay Administrator, client workstations) to point to the new server

---

*For full installation and configuration procedures, refer to the Avid MediaCentral | Production Management Administration Guide and Installation Guide.*
*Full documentation: https://kb.avid.com/pkb/articles/en_US/Knowledge/MediaCentral-Production-Management-Documentation*
