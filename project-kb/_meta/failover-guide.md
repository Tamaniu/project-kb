---
product: mediacentral-production-management
product-area: platform
version: "2022.3+"
release-date: 29/08/2022
doc-type: setup-guide
source: pdf
source-file: Production_Management_Engine_Failover_Guide_2022.3.pdf
confidentiality: public
date-added: 24/04/2026
date-updated: 30/05/2024
status: current
feature-tags: [production-management, mcpm, failover, clustering, high-availability, hpe-msa, windows-cluster, msa-2060]
---

# Engine Failover Guide — MediaCentral | Production Management v2022.3 and Later

> **Source:** MediaCentral Production Management | Engine Failover Guide (for the MSA 2060), Version 2022.3 or later. 103 pages.  
> First publication: 29/08/2022.  
> Last updated: 30/05/2024 (Windows Server 2022 references and new hardware requirements for v2023.7 and later).

> This guide applies to Avid MediaCentral Production Management **v2022.3 and later**, running Windows Server 2019 or Windows Server 2022, with the HPE MSA 2060 shared-storage RAID array.

> **Note:** This guide may include procedures or illustrations referencing unsupported Windows Server versions (e.g. 2012 R2, 2016). The processes are similar across versions. For the HPE MSA 2050 and earlier Windows Server versions, see the Avid Knowledge Base.

---

## Document Coverage

| Chapter | Topic | Source Pages |
|---|---|---|
| 1 | Automatic Server Failover Introduction | 6 |
| 2 | Creating a Microsoft Failover Cluster | 15 |
| 3 | Installing the Production Management Engine for a Failover Cluster | 49 |
| 4 | Automatic Server Failover (management and operation) | (follows Ch. 3) |

---

## Chapter 1 — Automatic Server Failover Introduction

### Overview

The automatic server failover mechanism allows client access to the PM Engine in the event of application, operating system, or hardware failures — with minimal availability impact. A failover server is activated on failure; the system can be configured to notify administrators by email.

Implementation: **Microsoft Clustering technology** with a two-node cluster and shared-storage RAID array connected via Fibre Channel.

The cluster uses a **virtual server** concept (referred to as a "cluster application" in Failover Cluster Manager). Clients connect to the virtual server's IP address and hostname — they do not know which physical node is currently active.

> ⚠️ **Additional monitoring is always required.** Avid delivers Production Management preconfigured, but customers must monitor hardware and software components actively. Silent failures (e.g. private network failure, RAID disk failure, power supply loss) generate events but do not interrupt availability — if unmonitored, they may lead to problems. Monitoring tools and IT reporting should be in place to lower downtime risk.

### How Server Failover Works

Failover operates at three levels:

| Level | Mechanism |
|---|---|
| Hardware failure | Resource monitor checks availability; automatically restarts service or initiates failover to other node |
| Network failure | Dual-switch configuration with VLAN 30 failover — if one switch fails, virtual server remains online via the other |
| Software failure | Microsoft Cluster service detects application failure and restarts or fails over |

Clients connect to the virtual network name and IP address — taken over by the failover node — so impact on availability is minimal.

---

### Server Failover Requirements

#### Hardware

| Component | Requirement |
|---|---|
| Nodes | Two servers (see Hardware Guide for specifications) |
| Fibre Channel HBAs | Two per cluster; one per server. Qualified: HPE SN1100Q 16GB 2P FC HBA |
| HBA slot | Install in PCIe slot 2 (Dell PowerEdge and HPE ProLiant) |
| Shared-storage RAID | HPE MSA 2060 — Avid-qualified |
| Quorum disk | 10 GB on the HPE MSA 2060 |
| Database disk | 870 GB or larger on the HPE MSA 2060 |

Hardware guidance by version:
- **MCPM v2022.x and earlier**: Avid MediaCentral | Production Management Dell and HPE Server Support guide.
- **MCPM v2023.7 and later**: Avid MediaCentral | Production Management Hardware Guide (see `hardware-guide.md` in `versions/2023.7/`).

#### Server Software

| Component | Requirement |
|---|---|
| Windows Server version | Windows Server 2019 Standard (for MCPM v2022.3) |
| — | Windows Server 2019 **or** Windows Server 2022 Standard (for MCPM v2022.3 and later) |
| Licensing | One software licence covers both nodes in the cluster |

#### Endpoint Security and Antivirus

Production Management supports endpoint detection and response (EDR) solutions, including cluster environments. Avid does not qualify specific products but provides guidance for CrowdStrike Falcon (see Avid Knowledge Base).

If running antivirus on a cluster, the antivirus software must be **cluster-aware**. Exclude the following from virus scanning:

- `Q:\` (Quorum disk)
- `C:\Windows\Cluster`
- `S:\Workgroup_Databases` (database)

---

### HPE MSA 2060 — Key Reference Information

#### Storage Management Utility (SMU)

Browser-based tool for configuring, managing, and monitoring the HPE MSA. Default access:

| Parameter | Value |
|---|---|
| Controller A Management IP | 10.0.0.2 |
| Controller B Management IP | 10.0.0.3 |
| IP Subnet Mask | 255.255.255.0 |
| Gateway | 10.0.0.1 |

Default credentials:
- `monitor` / `!monitor` — read-only monitoring
- `manage` / `!manage` — full management access

Hostnames are predefined using the controller MAC address: `http://hp-msa-storage-<last 6 digits of MAC>`.

#### HPE MSA CLI

- Requires Windows USB driver from HPE (search https://support.hpe.com).
- Two USB cables ship with the MSA — connect one to each controller.
- Documentation: HPE MSA 1060/2060/2062 CLI Reference Guide (via https://support.hpe.com).

Full HPE MSA 2060 documentation: https://support.hpe.com/hpesc/public/docDisplay?docLocale=en_US&docId=a00105669en_us

---

### Clustering Technology and Terminology

| Term | Definition |
|---|---|
| Failover cluster | Group of independent computers working together for high availability; when one node fails, another takes over (failover) |
| Cluster service | Software controlling all cluster operation and managing the cluster configuration database |
| Clustered role | Collection of resources managed as a single logical unit; always brought online on the same node |
| Quorum | Minimum voting elements for the cluster to start or continue running. MCPM failover clusters use a **disk resource** named Quorum as the quorum witness |

Reference: Microsoft Windows Server 2019 Failover Clustering — https://docs.microsoft.com/en-us/windows-server/failover-clustering/failover-clustering-overview

---

## Chapter 2 — Creating a Microsoft Failover Cluster

### Installation Overview

| Phase | Notes |
|---|---|
| Before you begin | Gather domain user accounts, IP addresses, and server information |
| Pre-requisites | Active Directory domain; domain user accounts with appropriate rights |
| List of IP addresses | Document all cluster, node, and virtual server IP addresses before starting |
| Install Failover Clustering Features | Windows Server role installation |
| Create the Failover Cluster | Using Failover Cluster Manager |
| Rename cluster networks | Logical renaming for clarity |
| Rename Quorum Disk | Configure Quorum role |
| Test cluster installation | Validate before proceeding |
| Enable redundant disk paths | Fibre Channel multipath configuration |

For step-by-step procedures, see source PDF Chapter 2 (pp. 15–48).

---

## Chapter 3 — Installing the PM Engine for a Failover Cluster

### Process Overview

| Step | Notes |
|---|---|
| Disable any web servers | Ensure no conflicts before installation |
| Install PM Engine on first node | Source PDF p. 49–58 |
| Install PM Engine on second node | Source PDF p. 59 |
| Bring Production Management Engine online | Source PDF p. 60 |
| Post-installation tasks | Source PDF p. 61 |
| Create a Production Management database | Source PDF p. 62 |
| Test complete installation | Source PDF p. 62 |
| Install a permanent licence | One licence covers both nodes (source PDF p. 63) |
| Rolling upgrade (updating a clustered installation) | Source PDF p. 64–65 |
| Uninstalling from a clustered system | Source PDF pp. 66+ |

For full step-by-step procedures, see source PDF Chapter 3.

---

## Required Prerequisites Knowledge

Before setting up a cluster in a Production Management environment, familiarity with the following is required:

- Microsoft Windows Active Directory domains and domain users
- Microsoft Windows Clustering for Windows Server
- Fibre Channel SAN concepts
- HPE MSA 2060 management
- Avid NEXIS network requirements (see Avid Knowledge Base for current NEXIS network guide)

---

## Related Documents

- `hardware-guide.md` (in `versions/2023.7/`) — server sizing requirements for Production Management v2023.7 and later
- `virtualisation-vmware.md` — VMware-specific virtualised failover cluster instructions (legacy reference)
- `virtualisation-nutanix.md` — Nutanix hyperconverged deployment guide
- Avid NEXIS Network and Switch Guide — for high-availability network configuration (available from Avid Knowledge Base)
