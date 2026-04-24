---
product: mediacentral-production-management
product-area: post-production
version: "2023.7"
release-date: 01/07/2023
doc-type: admin-guide
source: pdf
source-file: MCPM_2023_7_0_Engine_Admin_Guide.pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, mcpm, admin, interplay-administrator, database, users, backup, restore, licensing, site-settings, tcp-ports]
---

# Engine Administration Guide — MediaCentral | Production Management v2023.7

> **Source:** MediaCentral | Production Management Engine Administration Guide, Version 2023.7 (241 pages).  
> This document is a structured reference captured from the source PDF. It maps chapter coverage and extracts key guidance. For step-by-step detail, consult the source PDF directly.

---

## Document Coverage

| Chapter / Appendix | Topic | Source Pages |
|---|---|---|
| 1 | Getting Started with the Interplay Administrator | 13 |
| 2 | Database Settings | 20 |
| 3 | Server Settings | 66 |
| 4 | User Management | 80 |
| 5 | Site Settings | 114 |
| 6 | Interplay Services | 156 |
| 7 | Application Settings | 157 |
| 8 | Troubleshooting | 177 |
| 9 | Reuniting a Split Database | 183 |
| App. A | Installed Components and Services | 192 |
| App. B | Production Management Engine Configuration Files | 205 |
| App. C | Valid and Invalid Characters in Production Management | 215 |
| App. D | System Metadata Properties | 216 |
| App. E | Server Error Codes | 228 |
| App. F | Consistency Check Codes | 239 |

---

## Chapter 1 — Getting Started with the Interplay Administrator

### What the Interplay Administrator Does

The Interplay Administrator provides database administrators and maintenance engineers with tools to configure the Production Management Engine and manage the database. It is the primary administrative console for the PM environment.

### Production Management Engine and Workgroups

A workgroup consists of: one Production Management Engine, one PM database, one Avid NEXIS shared-storage network, and associated software/services.

The PM database has two parts:

- **Metadata database**: holds asset information (metadata)
- **Source files**: media files (Avid assets always on shared storage; file assets may be on the PM Engine or on shared storage)

**Multiple workgroups**: large facilities can have more than one PM workgroup. Users in Interplay Access can view and access assets from multiple workgroups and transfer between them.

**Archive Engine**: configured similarly to a PM Engine; integrates with a third-party archive system; archive database is always named `AvidAM`.

> ⚠️ **Split database**: A configuration in which only the metadata database is on the PM Engine, with all other files on NEXIS, is no longer recommended. See Chapter 9 (Reuniting a Split Database).

### Starting the Interplay Administrator

- Start > Avid > Avid Interplay Administrator
- Restart Interplay Access / Admin clients regularly (recommended practice)

---

## Chapter 2 — Database Settings

### Creating and Restoring Backups

| Backup Type | Notes |
|---|---|
| Full database backup | Includes all database files; recommended for scheduled nightly backup |
| Metadata-only backup | For Customer Support use |
| Partial database restore | Supported for specific recovery scenarios |

**Recommendations for backup configuration:**

- Set the number of backups to retain (rolling retention).
- Schedule automatic database backups via Interplay Administrator.
- Use an archiving tool for off-server backup copies.
- Test restore procedures regularly.

### Database Maintenance Tools

Accessible via Interplay Administrator > Database Settings. Tools include consistency check, database information view, and lock/unlock controls.

**Consistency Check**: run regularly to detect and flag database integrity issues. See Appendix F for consistency check error codes.

### Managing Databases

| Operation | Notes |
|---|---|
| Deactivate | Takes database offline without deleting it |
| Activate | Brings a deactivated database back online |
| Migrate | Moves database to another engine or server |
| Move (non-clustered) | Full database relocation procedure (source PDF p. 51) |
| Move (clustered) | Cluster-specific migration (source PDF p. 53–56) |
| Move under low disk space | Special procedure when disk space is critically low (source PDF p. 57) |
| Rename | Rename a database (source PDF p. 58) |

> ⚠️ **Split database deprecation**: If you have an existing split database (metadata on PM Engine, files on NEXIS), it should be reunited. See Chapter 9 for the reunification procedure.

---

## Chapter 3 — Server Settings

- Change database and data locations.
- Enable Update Tracking for Media | Index.
- View server information.
- Lock and unlock the server.
- Restart the server.

### Managing Licences

- Install permanent licences via Interplay Administrator > Server Settings > Licences.
- Licence types and usage visible in the Licences view.
- Export licences for backup.
- Troubleshoot licensing problems using the Licence Key Info Tool.

### Configuring Third-Party Storage

Configure access to third-party storage systems via Server Settings (see source PDF p. 79).

---

## Chapter 4 — User Management

### Central Configuration Server (CCS)

The CCS is the authentication and user management hub. Key operations:

- Move the CCS to another server if needed.
- View and change which CCS a server uses.
- Add users to a CCS.

### Authentication Providers

| Provider | Notes |
|---|---|
| MediaCentral Platform authentication | MCPM integrates with the MC Platform auth layer |
| Avid NEXIS authentication | Storage-level credentials |
| Windows Domain authentication | Import users from Active Directory |
| LDAP authentication | Import users from LDAP directory |
| OpenID / Okta | Supported — see v2024.10.2 notes for Search Connector caveat |

Automatic import of individual users is supported for Windows Domain and LDAP.

### User Groups and Rights

| Default Groups | Notes |
|---|---|
| Administrators | Full rights |
| Regular Users | Restricted to own assets/jobs |
| Custom groups | Configurable per-folder and per-database access |

**Standard roles and default rights**: see source PDF pp. 102–105.

### Special Access Folders

Folders with restricted access beyond normal group permissions. Configure via User Management > Manage Special Access Folders.

---

## Chapter 5 — Site Settings

### Key Site-Level Configurations

| Setting | Notes |
|---|---|
| Property Layouts | Define which metadata properties appear in Access views |
| Resolutions Available for Display | Control which video resolutions appear in the resolution selector |
| Custom Properties | Create and manage custom metadata fields |
| Remote Workgroups | Configure remote PM workgroups for Transfer and Delivery |
| Categories | Add/remove asset categories |
| Server Hostnames and Workgroup Name | Set canonical server names and the workgroup name |
| Interplay Production Services | Configure PS Engine connection |
| Interplay Transfer Status / Settings | Configure Transfer Engine connections |
| Workgroup Transfer Presets | Define preset destinations for workgroup transfers |
| Remote Servers for Asset Tracking | Specify remote servers that feed into asset tracking |
| Archive and Restore Settings | Configure archive server, segment size, restore process, duplicate versions, AAF metadata, Optimised Partial Restore |
| Folder Ownership | Set ownership for new database folders |
| Synced Projects | Enable/configure project synchronisation |
| Deletion Options | Schedule deletion; configure deletion of OMF/MXF/both; locked media deletion options; referenced-asset deletion option; Delete Kept Media Tool |
| Metadata Override | View and set metadata override status |
| Production Engine Bus Connector (PEBCo) | Configure bus connector settings |
| MC Platform Services Settings | Integration with MediaCentral Platform |
| MediaCentral Search Connector | Configure Search Connector properties |

### Archive and Restore Settings Detail

- **Archive Duplicate Versions**: controls whether duplicate media versions are archived.
- **Add AAF Metadata to Archive**: embeds AAF metadata in archive packages.
- **Archive Server, Segment Size, and Restore Process**: configures archive server connection and segmentation.
- **Optimised Partial Restore**: when enabled, only required portions of archived media are restored (performance optimisation).

---

## Chapter 7 — Application Settings

### Application Database Settings

| Tab | Key Configurable Items |
|---|---|
| Editing Settings | Audio mixing defaults for Access, Assist, Cloud UX; STP source; Shotlist start timecode; Assist auto-timeout; Frame Locators display; Restrictions display |
| Media Composer \| Cloud Settings | Cloud UX-specific editor settings |
| Instinct/Assist User Settings | Per-user settings for Instinct and Assist clients |
| Pro Tools Plug-Ins Settings | Pro Tools integration parameters |

### Supported Video Formats (Application Database Settings)

Configurable video formats include those listed in the Application Database Settings view. Note: **HD1080P_50** was added in v2024.10.4 (see 2024.10 patch notes).

---

## Chapter 8 — Troubleshooting

| Issue | Notes |
|---|---|
| Login problems | See source PDF pp. 177 |
| Client connection problems | See source PDF pp. 178 |
| Optimising PM performance | Source PDF pp. 178 |
| Troubleshooting firewalls | Source PDF pp. 179 |
| Server Execution User Account | Must exist and be correctly configured; see pp. 179–181 |
| Shutting down / locking server process | Source PDF p. 182 |

---

## Chapter 9 — Reuniting a Split Database

A split database (metadata on PM Engine, all other files on NEXIS) is no longer recommended. The reunification process:

1. Prepare to reunite (source PDF p. 183)
2. Reunite for Avid WG only configuration (source PDF p. 185)
3. Reunite for Avid WG and `_InternalData` configuration (source PDF p. 187)
4. Configure the `workgroup.xml` file (source PDF p. 191)

---

## Appendix A — Installed Components and Services

### Key File and Folder Locations

| Component | Path |
|---|---|
| Apache folder | Within PM Engine installation directory |
| Data folder | PM Engine installation directory |
| Log files | PM Engine installation directory > Logs |
| Preview Server folder | PM Engine installation directory |
| Server folder | PM Engine installation directory |

### Required TCP/IP Ports

Full port list is in source PDF p. 197. Key services:

| Service | Notes |
|---|---|
| Avid Production Management Engine Server | Core database/workflow service |
| Avid Workgroup HTTP Server | HTTP access for clients and admin tools |
| Avid Workgroup Server Browser Service | Workgroup discovery |
| Avid Workgroup Preview Server Service | Asset preview generation |
| Avid Workgroup TCP/COM Bridge Service | Client connectivity bridge |
| Avid Workgroup VSS Service | Volume Shadow Copy integration |
| Avid Workgroup Engine Monitor Service | Engine health monitoring |

---

## Appendix B — Configuration Files

### Config.xml (Server Event Manager)

Configures server-side event actions. Supported actions and events are documented in source PDF pp. 207–209. Example: trigger email notification on a specific log event.

### LogWatch.xml

Configures log monitoring and email notification. See source PDF pp. 210–211.

### Client Access Configuration

Controls which clients can connect to the PM Engine (source PDF p. 211).

---

## Appendix D — System Metadata Properties

Full list of all system-defined metadata properties available in the PM database. See source PDF pp. 216–227.

---

## Appendix E — Server Error Codes

Error code reference for PM Engine server errors. See source PDF pp. 228–238.

---

## Appendix F — Consistency Check Codes

| Category | Notes |
|---|---|
| Critical errors | Conditions requiring immediate attention (source PDF p. 239) |
| Errors | Non-critical but significant issues (source PDF pp. 239) |
| Warnings | Advisory conditions (source PDF pp. 241) |
