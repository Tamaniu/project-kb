# Avid MediaCentral | Cloud UX — Hardware Guide 2025.6

## Important Information

- Updates are occasionally issued after initial release. For the most up-to-date version of the documentation, see the *MediaCentral Cloud UX Documentation* page on the Avid Knowledge Base.
- This document is intended for people who need to make MediaCentral Cloud UX (MCCUX) hardware purchasing decisions, or advise on this topic. This guide assumes basic understanding of server components (CPU, RAM, etc.).
- Avid expects that you meet or exceed the minimum requirements outlined in this document for each release of MediaCentral Cloud UX. If upgrading from an older release, review this information to ensure you are current and compatible with these requirements.
- If you plan to install MediaCentral Cloud UX in a virtual environment, see **“Deploying MediaCentral Cloud UX in a Virtual Environment”** in the *Avid MediaCentral | Cloud UX Installation Guide*.

## Revision History

- **26 June 2025** — Initial publication  
  - Added additional information on storage requirements for **Avid Ada Transcribe** (see **“Avid Ada Transcribe”**).
  - **“Media Format and Stream Count Assessment”** includes updated stream count information.

## Contents

- Buying Hardware for MediaCentral Cloud UX
- Operating System
- Storage Requirements
- Networking Requirements
- Over-Specifying and Under-Specifying the Hardware
- Deploying Multiple Servers
  - Adding a No-Replica Cluster Node
  - Adding Servers to an Existing Installation
  - Determining Scale

## Buying Hardware for MediaCentral Cloud UX

The MediaCentral | Cloud UX Program Team does not qualify specific hardware vendors or server models. You can purchase server hardware from any vendor as long as the specifications meet or exceed the minimum requirements outlined in this document.

Key factors that affect hardware purchasing decisions:

1. **Deployment scale**  
   - Newsroom Management-only deployments without video playback have the lowest processing needs.  
   - Production Management and Asset Management deployments require more CPU resources due to transcoding requirements.

2. **Media formats**  
   - Example: DNxHD is more resource-intensive than Avid JFIF.

3. **Number of users**  
   - Peak concurrent users and how they connect (desktop web client vs mobile device) can affect specifications.

### Basic deployment cases

| Server count | Deployment | Description |
|---:|---|---|
| 1 | Single Server | Minimum deployment model. Most suitable for Newsroom Management-only workflows with no media playback. May apply to few users and/or low transcoding demands. Limited service redundancy. |
| 3+ | Cluster | Redundancy for hardware and services, plus increased peak usage and transcoding capacity. Important for many users and/or resource-hungry media formats (e.g., 100+ Avid JFIF streams vs ~15 AVC-Intra 50). |
| 4+ | Cluster with no-replica node | Adds specialised nodes with different requirements from main MCCUX servers (see “Adding a No-Replica Cluster Node”). |

## Memory Requirements

- Most MediaCentral Cloud UX servers require **minimum 128 GB RAM**.
- Additional RAM can support more users or stream counts.
- Exceptions: see **“Over-Specifying and Under-Specifying the Hardware”** and **“Determining Scale”**.

## CPU Requirements

- Avid qualification is performed using **Intel-based CPUs**; **Intel processors are required** (non-Intel such as AMD are not assured for equivalent performance/compatibility).
- Processor guidelines:
  - Recent Intel Xeon (not older than 2 years since original availability)
  - **16+ cores**
  - **2.0 GHz+**
  - Non-energy-saving performance models
  - Must allow **AVX instructions** to pass to the OS (MongoDB requirement)

## Operating System

- Supported on **Canonical Ubuntu Server LTS**.
- Install Ubuntu Server LTS prior to installing Avid software.
- Verify supported versions via the **MediaCentral Compatibility Matrix** (Avid Knowledge Base).
- Also consider Ubuntu’s own server requirements/certification guidance.

## Storage Requirements

All deployments must have **two distinct volumes**:

- **OS volume**: OS and Avid apps (typically RAID 1 with 2 mirrored drives)
- **Data volume**: databases, hoverscrub proxies, playback cache, etc. (typically RAID 5 with multiple drives)

Additional storage requirements and guidance:

- **SSD required** for both OS and Data volumes (new installs and upgrades to **2023.12+**).
- Avid recommends storage optimised for mixed read/write/delete workloads (especially for Data volume).
- Data volume hosts:
  - **MongoDB** (login and licence data)
  - **Elasticsearch** (Search index; requirements vary by deployment type and asset counts)
  - Playback cache and other workflow data (e.g., multicam frames, mobile playback cache)
- MCCUX removes older cached media assets automatically when disk space falls below **40% free space** (media cache only; databases unaffected).
- If deploying **System Monitoring** and using a logging node, mount monitoring data root (`/var/data/local/pv/mon`) to a dedicated disk/partition of at least **150 GB**.

### Avid Ada Transcribe storage guidance

- Estimate storage per **1,000 hours** of transcribed audio:
  - ~**7.6 GB** (single-server)
  - ~**9 GB per node** (cluster; includes replication overhead)
- Example: **10,000 hours** quota ⇒ ~**76 GB** single-server, or ~**90 GB per cluster node**
- Note: estimates vary with content type (e.g., continuous commentary vs limited voice-over)

### SeaweedFS

- SeaweedFS (S3-compatible) may be deployed locally for temporary files used during transcription.
- If deployed for a dependent workflow (e.g., Ada Transcribe), MCCUX allocates ~**32 GB** on the Data volume (can be increased).

### Supported data volume configuration options

| Drives | Configuration and notes |
|---:|---|
| 1 | Single SSD as separate data volume (500 GB+ recommended). No redundancy. Single disk partitioned into OS+Data is supported; allocate at least 25% to `/var/data` (min 50 GB). |
| 2 | Two SSDs (500 GB+ recommended) in RAID 1. Provides redundancy. |
| 6 or 8 | Multiple SSDs in RAID 5 (~3 TB+ usable recommended). Provides redundancy and increased I/O for higher proxy generation/serving. |

## Networking Requirements

- Servers must be wired with **Cat 5e**, **1 Gb** or greater.
- **10 Gb** required or strongly recommended for:
  - 100+ Mbps formats (e.g., AVC-I 100, DVCPro 100, DNxHD 145)
  - Remote Send To Playback workflows transferring assets over non-LAN links
  - Higher client connections or playback streams

If connecting to **Avid NEXIS**, ensure the network adapter is supported per NEXIS documentation.

### NEXIS zone guidance

- Zone 2: layer-2 switch (non-routed), 1 Gb or 10 Gb
- Zone 3: layer-3 switch (routed with known QoS), recommended

## Over-Specifying and Under-Specifying the Hardware

### Over-specifying
Supported in all cases (more RAM, larger/faster SSDs, more powerful CPUs). Avid cannot provide precise performance measurements due to variable workload combinations.

### Under-specifying
Supported only in some cases:

- **Newsroom Management-only** (no video playback):
  - CPU: recent Intel Xeon, **4+ cores**
  - RAM: **64 GB**
- **All other under-specified deployments**:
  - CPU: recent Intel Xeon, **8+ cores**
  - RAM: **64 GB**
- OS volume: at least **500 GB usable** recommended
- Must consult Avid Product Management before purchasing under-specified configs
- Risk: reduced FPS, delayed UI response, or instability under resource contention

## Deploying Multiple Servers

- Determining server count depends on:
  - **Redundancy** (high availability)
  - **Horizontal scale** (capacity, especially playback services)

Cluster notes:

- Minimum **3 nodes** (2-node not supported)
- First three cluster nodes operate as **control plane + worker**
- Additional nodes are **worker** nodes
- Playback services load-balance across all nodes to scale horizontally

## No-Replica Cluster Nodes

- Dedicated nodes for specialised workflows; free other nodes for databases/playback.
- Can use specialised hardware (e.g., NVIDIA GPU for Ada Transcribe) without equipping every server.
- No-replica nodes require a cluster (3+ nodes).

### Ada Transcribe no-replica node (minimum)

- CPU: Intel, **4+ cores @ 2.0 GHz+** (not necessarily Xeon)
- RAM: **16 GB**
- Storage: **200 GB SSD**
- Ubuntu host OS (same as cluster)
- Network: **1 GbE**
- GPU: **NVIDIA with CUDA**, **8 GB VRAM** (optional but highly recommended)

### Ada Transcribe no-replica node (recommended)

- CPU: recent Intel, **8 cores @ 2.0 GHz+**
- RAM: **64 GB**
- Drives:
  - OS: 2×200 GB SSD RAID 1
  - Data: 2×500 GB SSD RAID 1
- Network: **10 GbE**
- GPU: latest gen NVIDIA CUDA, **16 GB VRAM** (optional but highly recommended)

## Adding Servers to an Existing Installation

Mixing server hardware is supported if:

- All nodes meet minimum CPU/RAM requirements
- Mixed processor speeds/RAM supported (but keep **equal core counts** where possible)
- Mixed generations and even mixed vendors supported
- Mixed disk sizes supported (larger volumes may leave unused space)
- Mixing 1 Gb and 10 Gb adapters is possible but not recommended

## Determining Scale (high-level)

- Playback capacity varies by codec and network bandwidth (CPU-bound vs I/O-bound).
- Cluster size depends on:
  - media formats in use
  - peak concurrent users per format
  - mobile usage
  - NEXIS connection speed (1 Gb vs 10 Gb)
  - high availability requirement (minimum 3 nodes)
