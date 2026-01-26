# Avid MediaCentral | Cloud UX — Hardware Guide 2023.12

## Important Information

- Updates are occasionally issued after initial release. For the most up-to-date version of the documentation, see the *MediaCentral Cloud UX Documentation* page of the Avid Knowledge Base.
- This document is intended for people who need to make MediaCentral Cloud UX (MCCUX) hardware purchasing decisions, or advise on this topic. This guide assumes that you have a basic understanding of server components (CPU, RAM, etc.).
- If you plan to install MediaCentral Cloud UX in a virtual environment, see the *Virtualisation Best Practices* documentation on the Avid Knowledge Base.
- **MediaCentral Cloud UX v2023.12 and later requires SSD storage for both OS and Data volumes.** Organisations still using standard HDDs for the Data volume must upgrade hardware to maintain compatibility with this and future releases. This requirement applies to **all new installations and upgrades to v2023.12+**.

## Revision History

| Date revised | Changes made |
|---|---|
| 16 January 2024 | Added a reminder about the **AVX requirements for MongoDB** under “Buying Hardware for MediaCentral Cloud UX”. |
| 21 December 2023 | First publication. |

## Contents

- Buying Hardware for MediaCentral Cloud UX
- Operating System
- Storage Requirements
- Networking Requirements
- Deploying Multiple Servers
- Adding Servers to an Existing Installation
- Over-Specifying and Under-Specifying the Hardware
- Determining Scale

## Buying Hardware for MediaCentral Cloud UX

The MediaCentral | Cloud UX Program Team no longer qualifies specific hardware vendors or server models (as was common in prior versions). You can purchase server hardware from any vendor as long as the specifications meet or exceed the minimum requirements outlined in this document.

A number of factors might affect your hardware purchasing decision:

1. **Deployment scale**  
   - Newsroom Management-only deployments without video playback have the lowest processing needs.  
   - Production Management and Asset Management deployments require more CPU resources due to transcoding requirements.

2. **Media formats**  
   - Example: DNxHD is more resource-intensive while Avid JFIF is lightweight in comparison.

3. **Number of users**  
   - Expected users and how they connect (desktop web client vs mobile device) can affect specifications.

### Basic deployment cases

| Server count | Deployment | Description |
|---:|---|---|
| 1 | Single Server | Minimum deployment model. Most suitable for Newsroom Management-only workflows without media playback. May apply to few users and/or undemanding transcoding. Offers some hardware redundancy (dual PSUs, dual internal drives) but little service redundancy. |
| 3+ | Cluster | Redundancy for hardware and services; increased peak usage and transcoding capacity. Particularly important for many users and/or resource-hungry formats (e.g., 100+ Avid JFIF streams vs ~15 AVC-Intra 50). |

## Memory Requirements

- The majority of MediaCentral Cloud UX servers require **minimum 128 GB RAM**.
- Additional RAM can support additional users or stream counts.
- Exceptions: see **“Over-Specifying and Under-Specifying the Hardware”** and **“Determining Scale”**.

## CPU Requirements

- Avid qualification is performed using **Intel-based CPUs** and therefore **requires Intel processors** for all MCCUX deployment types.
- Avid cannot ensure equivalent performance/functionality/compatibility with other vendors (e.g., AMD).
- Processor guidelines:
  - Recent Intel Xeon (not older than 2 years since original availability)
  - **16+ cores**
  - **2.0 GHz+**
  - Non-energy-saving CPU models (performance model)
  - Must allow **AVX instructions** to be passed to the OS (MongoDB requirement)

## Operating System

- MediaCentral Cloud UX is supported on **Canonical Ubuntu Server LTS**.
- Download and install Ubuntu Server LTS prior to installing Avid software.
- Refer to the **MediaCentral Compatibility Matrix** on the Avid Knowledge Base for supported versions.
- Ensure you meet both Avid requirements and Ubuntu’s system requirements/certification guidance.

### Ubuntu technical support (options)

- Canonical paid support plans
- Canonical technical support guidance
- Ubuntu community forum

## Storage Requirements

All deployments must be configured with **two distinct volumes**:

- **OS volume**: OS and Avid applications (typically RAID 1 with 2 mirrored drives)
- **Data volume**: databases, Hoverscrub proxies, playback cache, etc. (typically RAID 5 with multiple drives)

The data volume hosts **MongoDB** (user login + licence data), making the data volume a requirement for all deployment types.

### SSD requirement (critical)

- SSDs are required for **both OS and Data volumes** for **new installations and upgrades to v2023.12+**.
- SSD interface type (SAS/SATA/NVMe/etc.) must be compatible with your server.
- Avid does not define a minimum transfer rate; recommends storage optimised for mixed read/write/delete (especially for the Data volume).

### Data volume information and considerations

#### Search index considerations

The data volume hosts **Elasticsearch** used by the Search app (local and, if applicable, remote assets in multi-site). Use these general guidelines:

- Asset Management (1 million assets, no multi-site)
  - MongoDB: ~3.0 GB
  - Elasticsearch: ~6.1 GB (no replica shard) or ~12.2 GB (cluster with 1 replica shard)
- Production Management (1 million assets, no multi-site)
  - MongoDB: ~0.3 GB
  - Elasticsearch: ~2.1 GB (no replica shard) or ~4.2 GB (cluster with 1 replica shard)
- Newsroom Management (500,000 assets, no multi-site)
  - MongoDB: ~5.9 GB
  - Elasticsearch: ~2.2 GB (no replica shard) or ~4.4 GB (1 replica shard)

For comparison, the Newsroom Management starter database (~30k assets) uses ~470 MB (MongoDB) and ~150 MB (Elasticsearch).

#### Playback cache

MediaCentral Cloud UX can generate and locally cache transcoded media assets/system files for workflows such as:

- Multi-cam assets from Production Management (JPEG multi-cam frames stored on data volume)
- Media playback for MediaCentral mobile apps (MPEG-2TS files stored on data volume)

In these workflows MCCUX generates a compliant copy of the source media asset, serves it to clients, and caches it. In clusters, cached assets are replicated to reduce future transcoding on different servers.

- Cached assets are stored until space is needed.
- MCCUX automatically removes older cached media files when disk space falls below **40% free space**.
- Cleanup is limited to media assets; databases are not affected.

Other potential uses include AAF sequence data (Production Management) and Enterprise Editing draft sequence data.

#### System monitoring

If deploying System Monitoring and using an MCCUX server as a logging node:

- Mount monitoring data root (`/var/data/local/pv/mon`) to a dedicated disk/partition of at least **150 GB**.

## Data Volume Configuration Options

| Drives | Volume configuration and notes |
|---:|---|
| 1 | Single SSD as separate volume (500 GB+ recommended). No redundancy. Single disk partitioned into OS+Data is supported; allocate at least 25% to `/var/data` (min 50 GB). |
| 2 | Two SSDs (500 GB+ recommended) in RAID 1. Provides redundancy. |
| 6 or 8 | Multiple SSDs in RAID 5 (~3 TB+ usable). Provides redundancy and increased I/O for higher proxy generation/serving. |

## Networking Requirements

- Servers should be wired with **Cat 5e**, **1 Gb** or greater.
- **10 Gb** required for:
  - 100+ Mbps formats (AVC-I 100, DVCPro 100, DNxHD 145)
  - Remote Send To Playback workflows transferring assets to remote servers outside the local LAN
- 10 Gb may also be desired/required for higher client connections or playback streams.

### Supported adapters (NEXIS)

If connecting to Avid NEXIS, consult NEXIS documentation to ensure your network adapter is supported and compatible with your storage and hardware vendor.

### Zone recommendations (NEXIS)

- Zone 2: connected via 1 Gb or 10 Gb port on an Avid-qualified layer-2 (non-routed) switch
- Zone 3: connected to an Avid-qualified layer-3 (routed) switch with known QoS; recommended for all configuration types

### Workflow notes

- Newsroom Management-only deployments do not require storage connectivity (no video playback); network at customer discretion as long as 1 Gb+.
- Production Management: MCCUX decodes on NEXIS and streams to clients; Zone 2 or Zone 3 (recommended).
- Asset Management: playback zone depends on browse proxy location (non-Avid storage: 1 Gb+; NEXIS: Zone 2 or Zone 3 recommended).

## Deploying Multiple Servers

Playback resolutions and playback methods vary widely in CPU and I/O footprint. Determining server count depends on:

- **Redundancy**
- **Horizontal scale**

### Redundancy

- Every deployment requires at least one server.
- Avid recommends **three or more** servers for high availability and service redundancy.

Key question: **Is high availability required?**

- If no: one server might be sufficient; add servers if peak usage exceeds single-server playback capacity.
- If yes: three or more servers are required; add servers if peak usage exceeds capacity of the first three nodes.

Cluster notes:

- Nodes can be Control Plane, Worker, or both.
- First three nodes operate as **control plane + worker**.
- Additional nodes are **worker** only.
- Two-node clusters are **not supported**.

### Horizontal scale

Playback services are the most CPU/memory intensive and are designed to run on all cluster servers, distributing (load-balancing) playback sessions across nodes.

## Adding Servers to an Existing Installation

Avid supports mixing server hardware in a cluster if:

- All servers meet memory and CPU requirements.
- Mixed processor speeds and RAM are supported (within minimums).
- Mixed generations supported (e.g., HPE Gen10 + Gen11).
- Mixed vendors supported.
- Keep **equal CPU core counts** where possible (Kubernetes spreads CPU intensive pods evenly; the lowest core-count node can limit performance).
- RAID 1 (OS) and RAID 5 (data) volumes do not need identical sizes; extra space on larger volumes may go unused.
- Mixing network adapter speeds (1 Gb + 10 Gb) is possible but not recommended; not specifically tested by Avid.

## Over-Specifying and Under-Specifying the Hardware

### Over-specifying
Supported in all cases (more RAM, larger/faster SSDs, more powerful CPUs). Avid cannot provide precise performance measurements due to many workload combinations.

### Under-specifying
Supported only in some cases:

- Subscription licence server: see “Subscription Licence Server”.
- Newsroom Management-only (no video playback):
  - CPU: recent Intel Xeon, **4+ cores**
  - RAM: **64 GB**
- All other under-specified deployments:
  - CPU: recent Intel Xeon, **8+ cores**
  - RAM: **64 GB**
- OS volume: at least **500 GB usable** recommended.
- Consult Avid Product Management before purchasing under-specified configurations.
- Risk: reduced FPS, delayed UI response, or instability under resource contention.

## Determining Scale (high-level)

Scale depends on the workflow mix. Subscription licensing may require a dedicated MCCUX server; minimum specs provided in the documentation apply only when no clients connect (beyond admin) and no additional feature packs are deployed. Asset Management and Production Management sizing depends heavily on formats, peak concurrency, storage, and network bandwidth.
