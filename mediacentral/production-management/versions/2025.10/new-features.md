---
product: avid-production-management
product-area: post-production
version: "2025.10"
release-date: 08/12/2025
doc-type: new-features
source: pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, apm, kubernetes, cloud-ux, new-features]
---

# New Features — Avid Production Management v2025.10

> **Note:** Avid Production Management (APM) v2025.10 is the Avid Content Core-ready successor to MediaCentral | Production Management (MCPM). It is a complete architectural rewrite — fully virtualised, Kubernetes-hosted, with a PostgreSQL database replacing the proprietary engine and Linux replacing Windows for core components. From a user perspective it is designed as a drop-in replacement, but the migration path requires planning. See `readme.md` for upgrade guidance.

---

## New Architecture

- **Kubernetes/Linux deployment**: APM runs as a set of containers in a Kubernetes cluster (Ubuntu 24.04 LTS), shared with MediaCentral Cloud UX — replacing the legacy bare-metal Windows infrastructure.
- **PostgreSQL database**: Replaces the proprietary production engine database, improving scalability and reducing resource consumption.
- **Session-based authentication**: APM requires an authenticated MediaCentral Cloud UX session. Any non-service user connecting to APM must hold an active Cloud UX session.
- **No Central Configuration Server (CCS)**: APM eliminates the CCS concept entirely, which affects multi-system deployments that previously relied on it.
- **Virtualised Media Indexer**: The Avid Media Indexer (MI) is fully containerised under Linux in the same Kubernetes cluster as Cloud UX, communicating via secure WAN-enabled HTTPS (replacing the previous enterprise bus). The MI database is externalised and split into independently scalable micro services.

---

## New Workflows and Capabilities

### Database Import from MCPM
Support for importing MediaCentral | Production Management databases to Avid Production Management, enabling migration of existing production databases.

### Asset Transfer Between Systems
Selective export of assets from a MediaCentral Production Management or Avid Production Management system, with import into an Avid Production Management system. Supports migration and cross-system workflows.

### Large Database Support and Deployment Scaling
APM introduces **deployment profiles** that allow administrators to scale the system at deployment time. APM can support the largest existing Production Management databases and beyond, with increased performance and reduced resource consumption versus MCPM.

### APM Access Client Improvements
New capabilities in the Avid Production Management Access client:
- **Asset coloring** — visual categorisation of assets
- **Improved certificate handling**
- Backward-compatible with MCPM connections (client automatically hides or disables features not applicable to the connected platform)

### User Group Assignments Transfer from MCPM
Export user role assignments from a MediaCentral Production Management system on a per-group basis. The exported group assignment information can be imported into an APM system. The exchange format is JSON-documented to allow customers to automate the process.

### Media Management Workflows in MediaCentral Cloud UX
APM introduces a Cloud UX-native media management workflow covering:
- Asset search, deletion, media status management, and reservation management
- End-to-end production management directly in the browser
- New **Cloud UX-integrated Production Management Administrator app** (replaces client-side administrator for Cloud UX-based workflows)

### Dynamic Range Property Support
Ability to search for and view Dynamic Range information of assets stored in the Avid Production Management database.

### MediaCentral Rules Engine Support
Automation of APM workflows through the MediaCentral Rules Engine. APM provides a new event service that integrates with the platform's Action Engine to enable advanced automation workflows.

### Interplay Web Services (IPWS) Compatibility
APM ships with an updated IPWS v2025.10 to support customers with existing IPWS integrations during transition to the CTMS API. **Legacy IPWS versions are not supported** — IPWS v2025.10 must be installed for use with APM.

---

## Adjusted Workflows (Changed from MCPM)

### Search
- Search core functionality has migrated from the PM engine to **MediaCentral Search**.
- Backward compatibility is provided via an enhanced **Simple Search** in Access and Media Composer PM windows.
- Access's **Advanced Search option has been removed** and replaced with MediaCentral Cloud UX search capabilities.

### File Ingest
- AMA (Avid Media Access) workflows are supported.
- **Third-party storage is not supported** in AMA ingest workflows in this release.

### Production Media Services (PMS)
- Infrastructure (MCDS, PMS Broker), send-to-playback (Transcode, STPEncode, Transfer), Archive/Restore, and Media Migration (Move) are supported.
- **Login behaviours have been adjusted** to co-exist with the tighter security model.
- **Requires APM Production Media Services v2025.10** or later.

### Restricted Access Folders and Sequence Backup
Replacement for MCPM's Special Access Folders and Sequence Versioning under APM Access and Administrator clients.

---

## Not Supported in v2025.10

The following workflows and features from MCPM are **not supported** in this release:

- Multi-Site Configurations (linking to a remote APM system)
- Enterprise Editing (Editing Mixed Sequences)
- Open Media Framework (OMF) file format
- MediaCentral Sync
- Avid Maestro
- MediaCentral Capture
- MediaCentral Phonetic Index
- APM Production Media Services: Copy and Delivery

---

## Compatible Components (v2025.10 ecosystem)

| Component | Required Version |
|---|---|
| MediaCentral Cloud UX | 2025.10 |
| Avid NEXIS | 2025.10.0+ |
| StreamIO | 2025.10 |
| MediaCentral Ingest | 2025.10 |
| MediaCentral Asset Management | 2024.10.x with 2024.10.0.10 hotfix or later |
| MediaCentral Newsroom Management | 2024.10.x |
| APM Production Media Services | 2025.10 |
| Kubernetes cluster OS | Ubuntu 24.04 LTS |

---

*Source: Avid Production Management v2025.10 ReadMe (APM_2025_10_0_ReadMe.pdf), revised 19/12/2025*
