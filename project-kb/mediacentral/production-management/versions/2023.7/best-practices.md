---
product: mediacentral-production-management
product-area: post-production
version: "2023.7"
release-date: 01/07/2023
doc-type: best-practices
source: pdf
source-file: MCPM_2023_7_0_Best_Practices_Guide.pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, mcpm, best-practices, folder-structure, database, media-indexer, ama, long-gop, delete-strategy, format-support]
---

# Best Practices Guide — MediaCentral | Production Management v2023.7

> **Source:** MediaCentral | Production Management Best Practices Guide, Version 2023.7 (222 pages).  
> This document is a structured reference captured from the source PDF. It maps chapter coverage and extracts key guidance. For step-by-step detail, consult the source PDF directly.

---

## Document Coverage

| Chapter | Topic | Pages |
|---|---|---|
| 1 | Setting Up a Folder Structure and a User Database | 14 |
| 2 | Determining Database Scalability | 28 |
| 3 | Developing a Delete Strategy | 36 |
| 4 | Refining Your Search | 58 |
| 5 | Using AMA Material | 65 |
| 6 | Using Frame Chase Editing | 86 |
| 7 | Working with Media Indexer | 91 |
| 8 | Long GOP End-to-End Workflows | 137 |
| 9 | 720p Multi-Rez Workflow | 149 |
| 10 | Stereoscopic 3D Workflows | 165 |
| 11 | H.264 End-to-End Multi-Rez Workflow | 169 |
| 12 | Resolution and Operating Point Support | 183 |
| 13 | Additional Production Management Topics | 208 |
| App. A | Recommended Maintenance Checklist | 213 |
| App. B | Archive Migration (Workgroup 4) | 216 |

---

## Chapter 1 — Folder Structure and User Database

### Permissions and Folder Structures

- User permissions define which folders users can access. Access can be set globally across the database or per-folder.
- Typical setup: two user groups — one with Read/Write/Delete (editors), one with Read/Write only (assistants).
- Clip names: 255-character limit is the recommended best practice (enforced hard limit for folders/files).

### Database Folder Structure

Key folder types and their workflows:

| Folder Purpose | Workflow | Cadence |
|---|---|---|
| Ingest workflows | Receiving AirSpeed/Capture media | Daily |
| MediaCentral Transfer check-ins | Inbound transfer destinations | Daily |
| Send to Playback operations | STP target folders | Daily |
| Editor Projects (Media Composer bins) | Project and bin folders | Daily |
| AirSpeed 5500 / MediaCentral Capture | System-created folders | Daily |
| Incoming Media | New media staging | Daily |
| Orphan Clips | Unlinked media | Weekly |
| Un-Checked-In Avid Assets | Unchecked-in items | Weekly |
| Deleted Items | Awaiting purge | Weekly |

### Configuring the Production Management Folder Setting

- Define the PM folder setting in Media Composer before beginning production.
- Media Creation settings should be defined to control where new media is created within NEXIS workspaces.

---

## Chapter 2 — Database Scalability

### Key Terms

- **Database Pages**: the unit of storage within the PM database.
- **Total Used Database Pages**: indicator of database load.
- **Database Page Limit**: maximum pages the Production Engine can manage (depends on hardware tier — see Hardware Guide).

### Database Page Limits by Server Size

| Size | Typical Database Pages | Total Asset + File MOBs |
|---|---|---|
| Small | ~6 million | ~7 million |
| Medium | ~13 million | ~15 million |
| Large | ~27 million | ~30 million |

### Tips for Improving Database Performance

- Maintain a stable ratio between database objects and database pages.
- Monitor database activity regularly and archive or delete stale assets before limits are approached.
- Plan for growth using the ratio method (see source PDF pp. 33–35 for worked examples).

---

## Chapter 3 — Delete Strategy

### Deletion Guidelines

A structured delete strategy is critical to long-term database health. Key principles:

- Delete metadata and media together where possible (preferred over metadata-only deletion).
- Use project templates to enforce consistent folder structures that support clean deletion workflows.
- Automated deletion scheduling via Interplay Administrator can reduce manual maintenance burden.

### Deletion Frequency by Folder Type

| Folder | Recommended Cadence |
|---|---|
| Editor Projects (Daily) | Daily |
| AirSpeed / Capture folders | Daily |
| Incoming Media | Daily |
| Sent to Playback | Daily |
| Orphan Clips | Weekly |
| Un-Checked-In Assets | Weekly |
| Deleted Items (empty trash) | Weekly |
| Media Composer Maintenance | Weekly |

### Determining Space Freed by Deletion

Before running deletion operations, use the "Determine How Much Space a Delete Operation Will Free Up" tool in Interplay Access to estimate reclaimed storage (see source PDF p. 57).

---

## Chapter 4 — Refining Search

- Use the **Search Root** attribute to limit search scope and improve performance.
- Key basic search attributes available in Production Management search.
- Search from editing applications (Media Composer) and from Interplay Access.
- Use the Access search refinement tools to build targeted queries (see source PDF pp. 61–64 for filter options).

---

## Chapter 5 — AMA Material (Avid Media Access)

### AMA Workflow Overview

AMA allows Production Management to manage media from non-Avid sources without transcoding. Key points:

- Media Indexer monitors AMA media source locations and indexes them into the PM database.
- AMA metadata location must be configured separately from the AMA media files location.
- Third-party storage can be used for AMA media (with configuration — see source PDF pp. 74–84).

### AMA Configuration

- Configure AMA Metadata Location: Interplay Administrator > Application Database Settings.
- Specify AMA Media Files Location: defines where AMA source files are monitored.
- Resync AMA Media Files: use when source files have been moved or renamed.

### AMA in Interplay Access

- AMA clips appear in the Access browser alongside native Avid assets.
- AMA source file locations are visible in the Properties panel.
- Deleting AMA clips using Access removes the database entry; the source file may remain depending on configuration.

---

## Chapter 6 — Frame Chase Editing

Frame Chase Editing allows Media Composer editors to begin editing a clip while it is still being recorded. Key points:

- Requires MediaCentral Transfer and an ingest device capable of live recording.
- In-progress clips have limitations: cannot be moved, archived, or restored while active.
- See source PDF pp. 86–90 for the full Frame Chase workflow and limitations.

---

## Chapter 7 — Working with Media Indexer

### Architecture

- Production Index (formerly Media Indexer) stores and manages information about physical asset locations in its own database.
- Can be deployed as a single server or as a Network of Media Indexers (NOMI) in a dual-server configuration.
- Does not operate in a Windows cluster.

### Disk Space and RAM Requirements

RAM requirements depend on the number and type of monitored items:

- Formula for estimating required memory: see source PDF pp. 97–99.
- AMA media has separate calculation rules.
- For large deployments (>5M database items), 128 GB RAM is recommended (see Hardware Guide).

### Media Indexer Web UI

Accessible via browser; tabs:

| Tab | Purpose |
|---|---|
| Configuration | Server settings and monitored storage |
| Statistics | Index counts and activity |
| Storage Browser | Browse indexed storage locations |
| Search | Query the MI index |
| Performance Report | Throughput and timing data |
| MQ Resource | Message queue monitoring |

### Security

- MongoDB security settings are configurable.
- SSL certificate import and configuration is supported.
- Self-signed certificate generation procedure is documented (see source PDF pp. 92–95).

### Key Operational Notes

- Media Indexer Independence from ASF: MI can operate independently of the Avid Service Framework.
- NOMI replaces legacy High Availability Group configuration.
- Log file and cache file locations documented in source PDF pp. 123–126.
- Improving Media Indexer performance: see source PDF pp. 130–136.
- `utest_amq` application: diagnostic tool for MI message queues.

---

## Chapter 8 — Long GOP End-to-End Workflows

### Long GOP Overview

Long GOP (Group of Pictures) codecs include AVC-LongG, XDCAM-HD, XAVC LongGOP, and others. Benefits include smaller file sizes; limitations include increased transcoding overhead.

### Long GOP Media Wrappers

- MXF OP-Atom (native Avid)
- MXF OP1a (used for Send to Playback)

### Workflow Stages

| Stage | Notes |
|---|---|
| Capture | Via MediaCentral Ingest or third-party ingest device |
| MediaCentral Ingest workflow | Requires correct ingest profile configuration |
| Editing | Standard Media Composer workflow; proxy may be used |
| Output | STP Encode service required for Long GOP OP1a STP |
| STP Encode Workflow | Offloads Long GOP encoding from editing workstation |

---

## Chapter 9 — 720p Multi-Rez Workflow

Workflow for managing high-res 720p master media alongside proxy resolution, including:

1. Capture high-res 720p material
2. Transcode to 720p proxy
3. Archive the high-res 720p material
4. Delete high-res online media
5. Edit with proxy
6. Restore high-res for output

For Production Services profile examples for this workflow, see source PDF pp. 162–164.

---

## Chapter 11 — H.264 Multi-Rez Workflow

### Workflow Overview

- Folder and shared-storage workspace setup for H.264 workflow (source PDF pp. 171–175)
- Production Services profiles for H.264 (source PDF pp. 176–178)
- Configuring PM clients for H.264 (source PDF pp. 178–181)
- Acquiring H.264 media (source PDF p. 179)
- Archive/restore/delete for H.264 and high-res (source PDF p. 182)

---

## Chapter 12 — Resolution and Operating Point Support

### Format Support Summary

| Format | Key Notes |
|---|---|
| H.264 | Full format support tables — see source PDF pp. 183–184 |
| HD 23.976p and HD 24p | Native and proxy resolution support — see pp. 185–188 |
| Apple ProRes | Support table — see pp. 189–190 |
| JPEG2000 | Support notes — see p. 191 |
| DNxHD | 720p, 1080p, 1080i supported resolutions — see pp. 191–194 |
| DNxHR | Supported resolutions in Production Management — see pp. 194–195 |
| XDCAM-HD / XDCAM-EX | Qualified operating points (incl. Omneon and AirSpeed MultiStream) — see pp. 195–199 |
| AVC-LongG | Format support — see pp. 200–201 |
| XAVC LongGOP | Format support — see p. 201 |
| XAVC-Intra HD | Supported resolutions — see pp. 203–204 |
| XAVC-Intra UHD TV1 and 4K | Sony XAVC Intra supported operating points — see pp. 204–205 |

---

## Chapter 13 — Additional Topics

- **Changing Source Information for a Clip**: retrospective source correction workflow.
- **Ingest and Playout of Ancillary Data**: handling D-track and AFD ancillary data.
- **Dynamic Relink — Single Resolution**: restricting clips to a single resolution; turning off Dynamic Relink for Interplay Assist.

---

## Appendix A — Recommended Maintenance Checklist

| Frequency | Key Tasks |
|---|---|
| Daily | Monitor database health; review job queues; check log files; verify ingest/STP workflows |
| Weekly | Orphan clip cleanup; delete-items purge; Media Indexer cache check |
| Monthly | Database backup verification; disk space review; consistency check |
| Complete Server Room Shutdown | Specific shutdown procedure (source PDF p. 215) |

---

## Appendix B — Archive Migration (Workgroup 4)

For facilities migrating from legacy Workgroup 4 archive environments. Covers:

- Searching for migrated Workgroup 4 archive items
- Restoring migrated assets
- Restoring different versions of a Media Manager archive clip
- Working with OMF media files after archive migration
- Retained Workgroup 4 clip attributes (see source PDF p. 222)
