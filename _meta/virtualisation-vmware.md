---
product: mediacentral-production-management
product-area: platform
version: "3.3+"
release-date: 01/06/2022
doc-type: best-practices
source: pdf
source-file: Production_Management_Virtualization_Best_Practices.pdf
confidentiality: public
date-added: 24/04/2026
status: historical
feature-tags: [production-management, mcpm, virtualisation, vmware, vsphere, vcpu, vm-sizing, failover-cluster]
---

# VMware Virtualisation Best Practices — MediaCentral | Production Management

> **Source:** MediaCentral | Production Management (formerly Interplay | Production) Virtual Environment with VMware Best Practices Guide, Version 3.3 and later. June 2022. 75 pages.

> ⚠️ **LEGACY REFERENCE ONLY (as of June 2025)**  
> As of June 2025, Avid is no longer testing or qualifying the deployment of MediaCentral Production Management in a virtual environment using any specific vendor (including VMware). While Avid permits deployment in a virtual environment, the selection and qualification of the virtualisation solution is now the responsibility of the customer organisation. This document will no longer receive updates.  
> For current virtualisation guidance, consult your own virtualisation team and the Avid Knowledge Base for any updated statements.

---

## Document Coverage

| Chapter | Topic |
|---|---|
| 1 | Virtual Environment with VMware Best Practices |
| 2 | Creating Avid Interplay Production Virtual Machines |
| 3 | Creating an Interplay Engine Failover Cluster Using VMware Hosts |

---

## Chapter 1 — Best Practices

### Limitations (at Time of Publication)

- Applies to Interplay Production v3.3 and later.
- Virtualised Interplay Engine failover cluster: supported from v3.5 and later.
- Supported VM OS: Windows Server 2012 R2, 2016, 2019 Standard.
- Interplay Engine cluster on Windows Server 2016+ only from Interplay 2018.11.
- Starting MCPM v2021.x: [text truncated in source at this version boundary].
- Avid qualification is Intel-based CPUs only — AMD or other processors cannot be assured equivalent performance.

### Supported VMware Versions (at Time of Publication)

- Minimum: VMware vSphere 6 Update 2
- Also supported: vSphere 6.5 Update 1 and later, vSphere 7.0
- vSphere 6.0: no longer supported (End of General Support)
- Minimum licence edition: Standard

### Minimum vSphere Environment Specifications (at Time of Publication)

| Component | Specification |
|---|---|
| Processor | Intel Xeon E5-2640; E5-2600 v3 recommended; v4 highly recommended |
| Number of Processors | 2 physical sockets per host; set to performance (not power-saving) mode |
| RAM | Sufficient for requirements; do not exceed 75% of installed host RAM |
| Network | 1GbE per Avid PM VM minimum; 10GbE connections recommended |
| Operating System | VMware vSphere 6 Update 2 minimum |

### Common VM Settings (applies to all VMs)

- Enable **Memory Hot Plug** to allow dynamic RAM allocation without shutdown.
- Do **not** enable vCPU Hot Add (removed as recommendation after January 2020 update).
- Virtual cores per socket: each virtual socket should contain **two virtual cores** (even number always).
- Network adapter: **VMXNET 3** required for all virtual machines.
- Virtual drives: use **Thick Provisioned, Eager Zero** for all Avid Interplay Production virtual drives (both local and shared storage).
- **VMware Tools**: install and keep up to date. ⚠️ Do **not** install VMware Tools v12.5.0 — causes Transcode and STP Encode startup issues and MCDS STP failures (`RelinkInternalErrorException(-1073741819)`).

### Snapshots

- Take a snapshot of the vCenter Server before any VMware update.
- Delete snapshots once configuration is complete and verified.
- Snapshots should not be used as a long-term backup strategy.

---

## VM Sizing Recommendations

### Multiple Applications per VM

| Applications on Single VM | vCPUs | Memory | Notes |
|---|---|---|---|
| Interplay Engine + Media Indexer | 4 vCPUs | 32 GB (MI v3.6+) / 12 GB (MI ≤v3.5) | Co-location no longer recommended for new installations — see note below |
| Production Services Engine + 4 Transcode Services | 8 vCPUs | 24 GB | Anti-affinity rule applies |
| STP Encode + Delivery + Delivery Receiver + Auto Production Services + Production Automation Service | 4 vCPUs | 12 GB | — |
| Interplay Transfer + ASF + ISIS client | 2 vCPUs | 12 GB | — |
| Archive/Restore providers + MCDS + Consolidate service | 2 vCPUs | 12 GB | — |
| Copy and Move providers | 2 vCPUs | 12 GB | Affinity rule: must be on host with dedicated 10Gb port group |
| Additional Interplay server applications (LUS, Transfer Cache, Interplay Web Services) | 2 vCPUs | 12 GB | — |
| DNS, AD, DHCP | 2 vCPUs | 8 GB | Optional — depends on IT policy |

> **Interplay Bundle (Engine + MI on same VM)**: no longer recommended for new installations. Existing installs can continue if: concurrent client count ≤30, and data sources in MI ≤500,000.

### One Application per VM

| Application | Small Site | Large Broadcast/Post Site | Network Interface | Notes |
|---|---|---|---|---|
| Interplay Engine | 4 vCPUs / 12 GB | 12 vCPUs / 32+ GB | 1 Gb | Search performance may improve with additional vCPUs (add 2 at a time) |
| Interplay Archive Engine | 4 vCPUs / 12 GB | 12 vCPUs / 32+ GB | 1 Gb | — |
| Media Indexer | (see MI recommendations) | — | 1 Gb | — |
| Production Services Engine | 2–4 vCPUs / 12 GB | — | 1 Gb | — |
| Transcode service (2 providers) | 4 vCPUs / 12 GB | — | 1 Gb | Anti-affinity rule |
| Transcode service (4 providers) | 8 vCPUs / 24 GB | — | 1 Gb | Anti-affinity rule |
| Copy provider | 2–4 vCPUs / 12 GB | — | **10 Gb** | Affinity rule — must be on host with dedicated 10Gb port group |
| Move provider | 2–4 vCPUs / 12 GB | — | **10 Gb** | Affinity rule |
| Delivery provider | 2–4 vCPUs / 12 GB | — | 1 Gb | Multi-job concurrent may require 4 vCPUs |
| Delivery Receiver | 2–4 vCPUs / 12 GB | — | 1 Gb | As above |
| Archive provider | 2–4 vCPUs / 12 GB | — | 1 Gb | As above |
| Restore provider | 2–4 vCPUs / 12 GB | — | 1 Gb | As above |
| Interplay Capture + Router Control | 4 vCPUs / 12 GB | — | 1 Gb | Can share a VM |
| Interplay Web Services | 2 vCPUs / 12 GB | — | 1 Gb | — |

> **Anti-affinity rule**: two different Transcode VMs should not coexist on the same host.  
> **Affinity rule**: Copy and Move VMs can only exist on a host server that contains a dedicated 10Gb port group.

### Multiple Transcode Providers on Same Server

Up to 4 Transcode provider instances are supported on a single server from Transcode v3.0+. Formula to estimate provider count: `100 ÷ average_CPU_usage_%`. If complex mixdowns are in the workflow, install a maximum of 2 providers per server.

### Virtual Disk Setup

- Most VMs: single virtual disk (OS + applications).
- **Production Management Engine** and **Archive Engine**: deploy with two disks — one for OS/applications, one for the database. Size the database disk based on expected database size plus room for backup copies.
- Disk provisioning: Thick Provisioned, Eager Zero (highly recommended).

---

## Example VM Distribution Across Three Hosts

From the Avid validation configuration (6 VMs across 3 Dell R730 hosts + SAN):

| Host | VMs |
|---|---|
| Host 01 | VM01: Interplay Engine + MI + LUS; VM02: Production Services Engine + 4 Transcode |
| Host 02 | VM03: Interplay Transfer; VM04: Archive/Restore + Auto Media Services + Consolidate + Automation |
| Host 03 | VM05: Copy/Move providers; VM06: STP Encode + CDS + Delivery + Delivery Receiver |

---

## Networking Best Practices

- All VMs use VMXNET 3 virtual network adapters.
- Network redundancy is highly recommended.
- Consult a network engineer familiar with virtualisation when designing the network layout.
- Apply security patches to VMware host servers quarterly (minimum); more frequently for high-severity risks.

---

## Chapter 3 — Virtualised Failover Cluster

Procedures for creating an Interplay Engine failover cluster using VMware hosts are in Chapter 3 (source PDF pp. 54–75). These procedures assume familiarity with VMware vSphere and Microsoft Cluster Service. For the physical-server failover cluster, see the dedicated Failover Guide (`failover-guide.md`).
