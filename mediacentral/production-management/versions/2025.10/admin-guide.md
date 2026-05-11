---
product: avid-production-management
product-area: post-production
version: "2025.10"
release-date: 08/12/2025
doc-type: admin-guide
source: pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, apm, admin, installation, kubernetes, postgresql]
---

# Avid Production Management v2025.10 — Administration Reference

> **Source note:** The full Avid Production Management Engine Administration Guide (dedicated PDF) is not currently present in project-kb. This file consolidates the administration-relevant sections from the v2025.10 ReadMe (APM_2025_10_0_ReadMe.pdf). When the Administration Guide PDF becomes available, this file should be superseded with the full content.
>
> For full installation and configuration detail, see the *Avid MediaCentral | Cloud UX Installation Guide*.

---

## System Architecture Overview

Avid Production Management (APM) runs entirely within the MediaCentral Cloud UX Kubernetes infrastructure. Administrators should plan deployments in conjunction with Cloud UX system sizing.

### Kubernetes Cluster Requirements

| Component | Requirement |
|---|---|
| Operating system | Ubuntu 24.04 LTS |
| Cluster topology | Kubernetes 3+0 / 1+1 / 2+2 node configurations |
| Database | PostgreSQL (dedicated, APM-managed) |
| Hosting | On-premises Kubernetes cluster shared with MediaCentral Cloud UX |

### Component Map

| Component | Description |
|---|---|
| APM Feature Pack | Core APM engine deployed as Kubernetes containers |
| APM Access | Client module installed on all workstations in the APM workgroup |
| APM Local MI | Media Indexer (local, containerised) |
| MI 2025.10 Outpost | Media Indexer outpost for remote site indexing |
| PMS 2025.10 | Production Media Services (Transcode, STPEncode, Move, Transfer, MCDS, Broker) |
| PMS 2025.10 Archive & Restore | Archive and Restore provider services |
| StreamIO 2025.10 | Video server for baseband ingest and playout |
| MediaCentral Asset Management | 2024.10.x with 2024.10.0.10 hotfix (required for AM+PM Archive integration) |
| MediaCentral Ingest | 2025.10 (for file ingest workflows) |

---

## Deployment Profiles and Scaling

APM introduces **deployment profiles** at installation time, enabling administrators to right-size the system:

- Assess user count and asset database size before selecting a profile
- APM can support the largest existing MCPM databases and beyond if suitably provisioned
- Database redundancy: deploying a redundant APM database doubles resource requirements for the APM core; also deploys the Media Indexer
- For configuration details, see "Installing the Production Management Core" and "Configuring an Avid Production Management Node" in the *MediaCentral | Cloud UX Installation Guide* and *Hardware Guide*

---

## Licensing

APM requires a dedicated quota-based license within MediaCentral Cloud UX.

- License type: quota-based (unlike MCPM's on/off model)
- For v2025.10: system should be licensed for quota = 1; higher quotas are ignored
- Managed via the License App in MediaCentral Cloud UX
- See "Using the License App" in the *MediaCentral | Cloud UX Installation Guide*

---

## Authentication and Security

APM uses session-based authentication tied to MediaCentral Cloud UX:

- All non-service users must hold an active MediaCentral Cloud UX session to connect to APM
- The Central Configuration Server (CCS) concept has been **eliminated**
- Service accounts (e.g. for Archive Management Engine, Production Services Engine) must be internally authenticated users existing in both the source APM system and destination systems
- Internal Authentication users can be created via the Production Administrator client

---

## Media Indexer Administration

The Avid Media Indexer (Avid MI) is now fully containerised within the Kubernetes cluster:

- Redundancy is managed by Kubernetes container management, not the NOMI configuration
- The MI has been split into independently scalable micro services
- Avid NEXIS workspaces are mounted directly to MediaCentral Cloud UX nodes (not via legacy export/import)
- MI configuration must be created fresh on APM — configuration data cannot be exported from MCPM and re-imported
- **Full reindex required** on migration: reindex duration varies by number of data sources and the selected deployment profile (see "Estimating the Indexing Time" in the *APM Best Practices Guide*)
- For configuration and monitoring, see "Using the Avid Media Indexer App" in the *MediaCentral | Cloud UX Installation Guide*

---

## Production Media Services (PMS) Administration

APM ships with PMS v2025.10, which is exclusively compatible with APM.

**Supported PMS components:**
- Infrastructure: MediaCentral Distribution Service (MCDS), PMS Broker
- Send-to-playback: Transcode, STPEncode, Transfer
- Archive and Restore (via Archive/Restore providers, accessible from Access and Cloud UX)
- Media Migration: Move provider

**Not supported in PMS v2025.10:** Copy and Delivery

**Installation notes:**
- Fully uninstall all legacy PMS components and SQL server/database before installing v2025.10
- Delete all service-related folders from `C:\Program Files\Avid` and `C:\Program Data\Avid` before installation
- Record PMS settings and profiles before uninstalling (Avid does not support exporting/importing existing profiles)
- Login behaviours have been adjusted for APM's tighter security model; additional considerations may be required when setting up workflows

---

## Client Installation

### APM Access Client

**Windows:**
- Single combined installer for all APM services (Access, MI client, Transfer)

**macOS:**
- Access: two separate installers (Intel-based Mac; Apple Silicon Mac)
- Media Indexer and Transfer: single installer with Intel support and Apple Silicon via Rosetta

**Backward compatibility:**
- The APM Access client connects to both MCPM and APM backends
- The client automatically hides or disables features not applicable to the connected platform

### Version Management

- Once using APM Access or Administrator clients, do not revert to earlier client versions — legacy clients are not fully compatible and may cause inconsistent behaviour or unexpected errors
- After importing or creating a new database, log in with the APM Administrator client at least once to fully register database changes
- After importing a database or restoring a backup, restart all open APM Administrator clients immediately

---

## Interplay Web Services (IPWS) for APM

APM ships with IPWS v2025.10 for customers maintaining IPWS-based integrations:

- This is an updated but largely unmodified version of legacy IPWS, adapted for APM
- Provides a transition path toward the CTMS API (which provides functional equivalence for most asset operations)
- **Legacy IPWS versions are not qualified for use with APM** — only IPWS v2025.10 is supported
- Installing legacy IPWS versions with APM will result in incompatibilities

---

## User and Role Management

### User Group Assignments Migration from MCPM

APM supports export of user role assignments from MCPM on a per-group basis:
- Exported group assignment data is in JSON format (documented to allow customer automation)
- The same JSON files can be imported into an APM system
- See "Migrating User and Database Role Assignments" in the *MediaCentral | Cloud UX Installation Guide*

### Restricted Access Folders

APM replaces MCPM's Special Access Folders and Sequence Versioning with updated Restricted Access Folder and Sequence Backup functionality under APM Access and Administrator clients.

**Known limitation — PLUS-2102:** Role assignments created on subfolders under a *No Access* assigned folder are not supported; APM will not recognise or apply them.

**Known limitation — PLUS-2222:** Deleting a user or group fails if the user (or anyone in the group) has an existing Restricted Access folder assignment. Remove all Restricted Access assignments first.

---

## Database Administration

### Backup and Restore

APM supports backing up and restoring APM databases. See "Backing Up and Restoring a Production Management Database" in the *MediaCentral | Cloud UX Installation Guide*.

### Database Import from MCPM

APM supports importing MCPM databases. See "Migrating a Database to Production Management" in the *MediaCentral | Cloud UX Installation Guide*.

### Dynamic Range Property

The APM database now stores and supports search for Dynamic Range (DR) information on assets. This is exposed in both APM Access and Cloud UX.

**Known limitation — PLUS-2263:** MediaCentral Cloud UX and APM Access do not currently display Dynamic Range information for Production Management AMA assets.

---

## MediaCentral Rules Engine Integration

APM provides a new event service that integrates with the MediaCentral Rules Engine Action Engine, enabling automation of production management workflows. Configuration is performed through the MediaCentral Cloud UX Rules Engine app.

---

*For full installation and configuration procedures, refer to:*
- *Avid MediaCentral | Cloud UX Installation Guide*
- *Avid MediaCentral | Cloud UX Hardware Guide*
- *Avid MediaCentral | Production Management Best Practices Guide*
