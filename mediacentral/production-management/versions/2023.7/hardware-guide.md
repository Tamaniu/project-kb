---
product: mediacentral-production-management
product-area: post-production
version: "2023.7"
release-date: 01/07/2023
doc-type: hardware-guide
source: pdf
source-file: MCPM_2023_7_0_Hardware_Guide.pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, mcpm, hardware, server-specs, sizing, failover, production-index]
---

# Hardware Guide — MediaCentral | Production Management v2023.7

> **Source:** Avid MediaCentral | Production Management Version 2023.7 Hardware Guide.  
> First published: May 2024.  
> Full content of the 6-page source document is captured here.

---

## Important Information

Avid no longer qualifies specific hardware vendors or server models. Server hardware may be purchased from any vendor provided specifications meet or exceed the minimums in this document. Consider long-term needs and potential expansion when purchasing — if the small configuration barely meets current needs, provision the medium tier.

For virtual environment deployments, refer to the Virtualization Best Practices documentation on the Avid Knowledge Base.

---

## Production Management (or Archive) Engine

Production Engines and Archive Engines can be deployed as single servers or as clustered pairs. Single servers suit smaller configurations or environments where some downtime is acceptable (e.g. lab). Clustered configurations link two servers to an external shared-storage RAID hosting the PM database — if one server fails, Windows Clustering fails over to the other.

Clustered deployments require an external disk array with a Host Bus Adapter (HBA) compatible with the servers and the Windows Server OS. Additional NICs may be required for cluster networking and network redundancy. For qualified HBAs and RAID hardware, see the MediaCentral | Production Management Engine Failover Guide.

> ⚠️ Avid no longer supports new installations in which the Production Management Engine and Production Index are co-installed on the same physical hardware ("Interplay Starter Bundle"). Existing configurations should be separated.

### Engine Sizing Guidelines

| Specification | Small | Medium | Large |
|---|---|---|---|
| Processor | Intel server-class CPU, 8–12 cores @ 2+ GHz | Intel server-class CPU, 12–18 cores @ 2+ GHz | Intel server-class CPU, 18–24 cores @ 2+ GHz |
| RAM | 32 GB | 64 GB | 128 GB |
| Disk — OS | Dual 240 GB SSD as RAID-1 | Dual 240 GB SSD as RAID-1 | Dual 240 GB SSD as RAID-1 |
| Disk — Data | Dual 500 GB or larger SSD as RAID-1 | Dual 1 TB or larger SSD as RAID-1 | Dual 2 TB or larger SSD as RAID-1 |
| Network | 2× 1GbE | 2× 1GbE | 2× 1GbE |
| Power Supplies | Redundant | Redundant | Redundant |
| Typical Database | 6M pages / 7M Asset + File MOBs | 13M pages / 15M Asset + File MOBs | 27M pages / 30M Asset + File MOBs |
| Operating System | See Avid MediaCentral compatibility matrix (Avid Knowledge Base) — select Desktop Experience when installing Windows Server |

**Disk notes:**
- Provision 4 drives total: 2 as RAID-1 for OS, 2 as RAID-1 for the database. Separation protects against OS drive compromise.
- Use the server's built-in adapter for RAID; Windows RAID-1 is an acceptable alternative if the adapter does not support it.

---

## MediaCentral Production Index

Formerly known as "Media Indexer", Production Index monitors the actual storage locations of assets. It works with the Production Engine to supply assets to clients. Production Index stores data in its own database on dedicated servers. Deployment can be single-server or dual-server (a Network of Media Indexers — NOMI). Production Index servers do not operate in a Windows cluster.

Production Index servers require direct access to Avid NEXIS shared storage — the network adapter must be qualified for Avid NEXIS.

### Production Index Sizing Guidelines

| Specification | Small | Medium | Large |
|---|---|---|---|
| Processor | Intel server-class CPU, 4 cores @ 2+ GHz | Intel server-class CPU, 12 cores @ 2+ GHz | Intel server-class CPU, 20 cores @ 2+ GHz |
| RAM | 32 GB | 64 GB | 128 GB |
| Disk — OS | Dual 500 GB SSD as RAID-1 | Dual 500 GB SSD as RAID-1 | Dual 500 GB SSD as RAID-1 |
| Disk — Data | Dual 50 GB SSD as RAID-1 | Dual 50 GB SSD as RAID-1 | Dual 50 GB SSD as RAID-1 |
| Network | 2× 1GbE (NEXIS-qualified) | 2× 1GbE (NEXIS-qualified) | 2× 10GbE (NEXIS-qualified) |
| Power Supplies | Redundant | Redundant | Redundant |
| Typical Database | ~100k items | ~2M items | ~5M items |
| Operating System | See Avid MediaCentral compatibility matrix — select Desktop Experience |

For more on Production Index, see "Working with Media Indexer" in the Best Practices Guide.

---

## Additional Production Servers

For MediaCentral Transfer, Production Services Engine, or Production Services Providers (e.g. MediaCentral Transcode):

| Specification | Guideline |
|---|---|
| Processor | Intel server-class CPU, 16 cores @ 2+ GHz |
| RAM | 32 GB |
| Disk — OS | Dual 120 GB SSD as RAID-1; no separate Data volume required |
| Network | 2× 1GbE or better |
| Power Supplies | Redundant |

**Network upsize requirement:** Servers running MediaCentral Copy or MediaCentral Move (responsible for moving large amounts of media) must have 2× 10GbE or better.

**Avid NEXIS access:** Servers that require direct NEXIS access must use a NEXIS-qualified network adapter. The following do **not** require direct NEXIS access: standalone Production Services Engine (with no co-installed providers), MediaCentral Capture/Router Control.

**Transcode note:** The Transcode installer supports up to 4 instances of the Transcode service on one server. Specifications may increase depending on workflow and codec selection.

For large deployments seeking to consolidate hardware, contact Avid Sales to engage Professional Services.
