---
product: avid-production-management
product-area: post-production
version: "2025.10"
release-date: 08/12/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, apm, readme, upgrade, limitations, kubernetes]
---

# Avid Production Management v2025.10 — ReadMe

*Source document: APM_2025_10_0_ReadMe.pdf — Revised 19/12/2025*
*Revision history: Initial publication 08/12/2025; clarifications to Component Installers and Interplay Web Services sections added 19/12/2025.*

---

## Overview

Avid Production Management (APM) is the new Avid Content Core-ready generation of Avid's Production Management solution. It is designed as a drop-in replacement for MediaCentral | Production Management (MCPM), preserving nearly all proven features while delivering a completely redeveloped, fully virtualised backend.

Key platform changes:
- Proprietary production engine database replaced with **PostgreSQL** (industry-standard RDBMS)
- Core infrastructure migrated from Windows to **Linux**, hosted in **Kubernetes** containers
- Configuration, authentication, search, and user management migrated to **MediaCentral Cloud UX**
- Natively integrates with the **Connectivity Toolkit Media Services (CTMS)** API (broadly similar to legacy IPWS)

From a user perspective, APM behaves like a drop-in replacement for MCPM. Functionality and workflow concepts are preserved, but differences exist where mandated by new infrastructure, backend technology, security improvements, or the removal of outdated components.

---

## Service Architecture

APM functionality is provided by four major building blocks:

### 1. Production Management Engine
- New core engine running as containers in Kubernetes with a dedicated **PostgreSQL** database
- Hosted on-premises; designed for deployment in sizes from small to large (deployment profiles)
- Designed for integration with Avid Content Core and the MediaCentral family

### 2. Avid Media Indexer (Avid MI)
- Fully rewritten, containerised under Linux in the same Kubernetes cluster as MediaCentral Cloud UX
- Communicates via secure **WAN-enabled HTTPS** protocol (replacing legacy enterprise bus)
- Database externalised to support hosted configurations
- Split into independently scalable micro services (replaces NOMI configuration model)

### 3. Production Media Services (PMS)
Background services including:
- MediaCentral Distribution Service (MCDS)
- PMS Broker
- Transcode, STP Encode, Transfer, Move
- Archive and Restore (via Archive/Restore providers)
- **Requires PMS v2025.10** — exclusively compatible with APM; not tested against MCPM

### 4. Client Modules (APM Access)
- Single installer bundles Access, Media Indexer client, and Transfer per operating system
- **Windows**: single combined installer for all APM services
- **macOS**: Access available in two versions (Intel and Apple Silicon); Media Indexer and Transfer use a single installer (Intel + Apple Silicon via Rosetta)
- **Backward compatible**: same client connects to both MCPM and APM, automatically hiding features not applicable to the connected platform

---

## Workflows Summary

| Workflow | Status | Notes |
|---|---|---|
| Database Import from MCPM | **NEW** | Import MCPM databases to APM |
| File Ingest (Media Composer / MC Ingest) | PARITY + ADJUSTED | AMA supported; third-party storage not supported |
| Search | ADJUSTED | Migrated to MC Search; Simple Search retained; Advanced Search removed |
| Playback | PARITY | Media Composer and Cloud UX player |
| Media Composer Integration | PARITY | AMA and UME linking workflows |
| Asset Transfer to/from APM | **NEW** | Selective export/import between MCPM and APM |
| Large Database / Deployment Scaling | **NEW** | Deployment profiles for scalability |
| Location-Based Search | PARITY | Via MediaCentral Cloud UX |
| PMS Support | ADJUSTED | Requires PMS v2025.10; login behaviours adjusted for security |
| CTMS API | PARITY | All current CTMS endpoints supported |
| APM Access Improvements | **NEW** | Asset coloring; improved certificate handling |
| User Group Assignments Transfer | **NEW** | Per-group JSON export/import of role assignments |
| Backup and Restore | PARITY | APM database backup/restore supported |
| Cloud UX Player Integration | PARITY | Timeline editing; high quality proxy and FI media support |
| Adobe Premiere Pro Integration | PARITY | Via Panel for 3rd Party Creative Tools |
| Media Management in Cloud UX | **NEW** | Native search, deletion, status, reservation mgmt; new PM Admin app |
| Restricted Access Folders / Sequence Backup | ADJUSTED | Replaces MCPM Special Access Folders and Sequence Versioning |
| Dynamic Range Property Support | **NEW** | Search/view Dynamic Range info for APM assets |
| Video Server Integration | PARITY | Baseband ingest/playout via Avid StreamIO |
| Asset Management + PM Archive Integration | PARITY | Requires MC Asset Management 2024.10.0.10 hotfix+ |
| Newsroom Management Integration | PARITY | Requires MC Newsroom Management v2024.10.x |
| Avid Transcribe (STT) | PARITY | Transcription in Cloud UX |
| MediaCentral Rules Engine | **NEW** | Automation via Rules Engine and Action Engine |
| Publisher Integration | PARITY | APM workflows in Publisher app in Cloud UX |

### Workflows Not Supported in v2025.10

- Multi-Site Configurations (linking to remote APM)
- Enterprise Editing (Mixed Sequences)
- Open Media Framework (OMF)
- MediaCentral Sync
- Avid Maestro
- MediaCentral Capture
- MediaCentral Phonetic Index
- PMS: Copy and Delivery

---

## Licensing

APM requires a dedicated license within the MediaCentral environment. Unlike MCPM's on/off license model, the **APM license is quota-based**. For v2025.10, the system should be licensed for a quota of 1; if a higher quota is received, the increased count is ignored. For more information, see the "Using the License App" chapter in the MediaCentral | Cloud UX Installation Guide.

---

## Upgrading to Avid Production Management

Upgrading to APM is a migration of "classic" bare-metal MCPM components into the Kubernetes container environment shared with MediaCentral Cloud UX.

### Primary Migration Factors

**Security architecture**
APM uses session-based authentication. Any non-service user must hold an authenticated Cloud UX session. This is a fundamental change from MCPM.

**Infrastructure changes**
- Search is now a platform function via MediaCentral Search app; the previous comprehensive search has been replaced with an enhanced Simple Search
- APM eliminates the Central Configuration Server (CCS)
- Media Indexer no longer provides NOMI configuration; redundancy is entrusted to Kubernetes; MI is now independently scalable micro services

### Upgrading the Production Management Engine

The APM engine runs as containers in Kubernetes with an associated PostgreSQL database. Key considerations:
- Deploy the APM feature pack at the desired scale — assess the size of your future system before deployment
- Determine whether database redundancy is required (deploying a redundant APM database doubles resource requirements for the APM core)
- Once fully deployed and configured, the previous MCPM cluster can be decommissioned (relatively modern hardware can be repurposed)

Post-deployment migration steps:
- Export MCPM database and import to APM
- Export, review, refine, and import user roles

### Upgrading Media Indexer Servers

- In APM, the MI is replaced by the Avid Media Indexer hosted on the MediaCentral platform — this is not an upgrade but a migration to a new environment
- Migration requires a **full reindex** of all monitored storage; reindex time varies by the number of data sources and the selected deployment profile
- Avid NEXIS workspaces are mounted directly to MediaCentral Cloud UX nodes; MI configuration must be recreated on APM

### Updating Production Media Services for APM

- APM ships with PMS v2025.10 — this version contains the client libraries necessary for connecting to the APM backend
- PMS v2025.10 is **exclusively for use with APM** and has not been tested for compatibility with MCPM
- Installing legacy PMS versions alongside APM will result in incompatibility

**Pre-upgrade requirements for PMS:**
1. Record or screenshot Settings in the Interplay Production Services Engine Configuration tool
2. Record or screenshot Production Services profiles
3. Fully uninstall the Production Services Engine software and SQL server/database
4. After uninstalling providers (Transcode, STP Encode, etc.), delete all service-related folders from `C:\Program Files\Avid` and `C:\Program Data\Avid` before installing v2025.10

### Avid Production Management Component Installers

- APM services: single combined Windows installer
- Client components (Access, MI client, Transfer): single installer per OS
- macOS Access: separate installers for Intel and Apple Silicon; Media Indexer and Transfer use a single installer with Intel + Apple Silicon (Rosetta) support
- If Avid Service Framework v1.8.1 is already installed, reinstallation is not required
- Manually uninstall all other MCPM components from all servers and client workstations (including Avid Application Manager)

### Interplay Web Services (IPWS)

APM ships with IPWS v2025.10 for customers with existing IPWS integrations. This is an updated but largely unmodified version of the legacy IPWS adapted for APM use, to facilitate transition to the CTMS API. **Legacy IPWS versions are not tested or qualified for APM** — IPWS v2025.10 must be used.

---

## Best Practices

- Once using APM Access or Administrator clients, avoid reverting to earlier client versions — legacy clients are not fully compatible and may introduce inconsistent behaviour or unexpected errors
- After importing or creating a new database, log in with the APM Administrator client at least once to fully register the database changes
- After importing a database or restoring a backup, restart all open APM Administrator clients immediately so each refreshes its connection and avoids unexpected behaviour

---

## Known Limitations — v2025.10

### Avid PM Access

- **PBX-52, PBX-53**: Sending a job to Production Services using MediaCentral Cloud UX user credentials may fail with "Username or password is invalid" or "Unable to Start Job". **Workaround**: When prompted, enter credentials of an internally authenticated user that exists in both the source APM system and the destination systems (e.g. Archive Management Engine, Production Services Engine). Internal Authentication users can be created via the Production Administrator client.
- **PLUS-2263**: MediaCentral Cloud UX and APM Access do not display Dynamic Range information for PM AMA assets.

### Avid PM Administrator

- **PLUS-2102**: Role assignments created on subfolders under a *No Access* assigned folder are not supported — APM does not recognise or apply them even if the PM Administrator client allows them to be set.
- **PLUS-2214**: In the PM Administrator app in MediaCentral Cloud UX, it is possible to delete resolutions that are currently in use even if *Enable used resolutions* is activated. This limitation does not apply in the APM Administrator client.
- **PLUS-2222**: Deleting a user or group fails if that user (or anyone in that group) has an existing Restricted Access assignment to a folder. **Workaround**: Remove all Restricted Access assignments for the user first, then delete.

### Avid PM Transfer

- **PBX-46**: In MediaCentral Cloud UX, Send to Playback (STP) operations on a multitrack sequence with effects fails with: *"Remote STP process failed: GenericHelper exception occurred: Render not found (in 'wait transfer' phase)"*.

---

*For APM limitations within MediaCentral Cloud UX, see the MediaCentral Cloud UX ReadMe.*
*Full documentation: https://kb.avid.com/pkb/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation*
