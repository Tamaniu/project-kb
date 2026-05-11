---
product: mediacentral-production-management
product-area: platform
version: "general"
release-date: 01/01/2023
doc-type: best-practices
source: pdf
source-file: Production_Management_Nutanix_Virtualization_2022.pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, mcpm, virtualisation, nutanix, ahv, hyperconverged, vm-sizing]
---

# Nutanix Virtualisation Best Practices — MediaCentral | Production Management

> **Source:** Avid MediaCentral | Production Management Virtualization Best Practices with Nutanix. 18 pages.  
> This guide covers deployment of Production Management in a virtual environment using hyperconverged infrastructure and the Nutanix Acropolis Hypervisor (AHV).

> ⚠️ **Note on current Avid virtualisation policy (June 2025):** As of June 2025, Avid no longer tests or qualifies deployment of MCPM in a virtual environment using any specific vendor (including Nutanix). Avid allows virtual deployment, but the selection and qualification of the virtualisation solution is now the customer's responsibility. This document is a reference from the period when Avid formally qualified Nutanix — use with this caveat in mind.

---

## Key Terms

| Term | Definition |
|---|---|
| IPMI | Intelligent Platform Management Interface — per-node management port for remote access, monitoring, and troubleshooting |
| VM | Virtual machine — compute resource object mimicking a physical server |
| vCPU | Virtual CPU — a physical CPU core assigned to a VM |
| Cores | Multiple processing sets within a single physical CPU |
| Physical vs Logical Cores | Physical cores = actual hardware; logical cores = physical × threads per core (via hyperthreading). Example: 10 physical cores @ 2 threads = 20 logical cores |
| RAM | Memory available to the OS, applications, and in-use data |
| Nutanix CVM | Controller Virtual Machine — runs on each Nutanix host node; manages pooled compute resources, Acropolis data plane, and Prism management interface |

---

## Nutanix Infrastructure

### Qualified Nutanix AOS

Minimum supported Nutanix Acropolis Operating System version: **AOS 5.10**

### Nutanix Validation Infrastructure (at Time of Testing)

| Resource | Specification |
|---|---|
| Nutanix Nodes | HPE DX380 Gen10 |
| Number of Nodes | 3 |
| CPU | Intel Xeon Gold 6248R @ 3.00 GHz |
| Sockets per Node | 2 |
| Cores per Node | 48 |
| GPU | NVIDIA RTX-6000 |
| Memory | 768 GB (node 1), 384 GB (nodes 2 and 3) |
| Storage | 14 × 900 GB SSD across 3 nodes |
| Network | 2× Intel X710 Dual Port 10Gb |
| AOS Version | 5.20.x LTS |

### Hardware

Nutanix software is generally hardware agnostic; hardware configurations available from HPE ProLiant series (DL/DX), Dell, Cisco, Lenovo, and other vendors. Refer to the Nutanix website for current qualified hardware platforms.

### Network Design

- Consult a certified network engineer familiar with virtualisation and hyperconverged platforms when designing the network.
- For maximum performance, create a **separate VLAN** for Controller VMs (CVMs) to communicate over.
- Use **dual-connection (dual-connect)** cabling to limit single points of failure.

---

## Pre-flight Planning

Before deploying VMs, gather and document:

- One IP address for Nutanix Prism (system management web interface)
- Three IP addresses per compute node:
  - One for the node itself
  - One for the IPMI interface
  - One for the Controller VM (CVM)
- Hostnames for each node and each Controller VM

Avid recommends pre-configuring all Computer Objects, Group Policies, and Organisational Units in Active Directory before VM deployment.

---

## Provisioning Virtual Resources

### Compute Resource Guidelines

Key principles:

- Assign all cores to a **single socket** (CPU) per VM in most cases — do not exceed the number of physical cores per socket of the host.
- Do **not** over-provision total physical memory across simultaneously running VMs (hypervisor cannot dynamically manage RAM over-provisioning as it can with CPU scheduling).
- Over-allocating memory to a VM does not degrade performance; under-allocating does.
- Be **conservative** when initially allocating resources — increase as needed based on observed performance.

### General Compute Resource Guidelines Table

| Application | Cores | Memory | Disk |
|---|---|---|---|
| Transcode Service (4 instances) ^c | 8 | 24 GB | C: 80 GB |
| STP Encode Service | 4 | 16 GB | C: 80 GB |
| Copy Service | 2 | 12 GB | C: 80 GB |
| Move Service | 2 | 12 GB | C: 80 GB |
| Delivery Service | 2 | 12 GB | C: 80 GB |
| Archive/Restore Service | 2 | 12 GB | C: 80 GB |
| MediaCentral Capture with Router Control | 2 | 12 GB | C: 80 GB |
| Production Management Web Services | 2 | 12 GB | C: 80 GB |
| Nutanix CVM ^d | 8–12 | 32 GB | — |

^c Transcode performs best when 2 cores are allocated per running instance of the service.  
^d Each Nutanix cluster node requires a Controller VM; reference the Nutanix Support Portal for recommended CVM configuration for your infrastructure.

For **Production Management Engine** and **Archive Engine** memory requirements, see "Determining Interplay Database Scalability" in the Best Practices Guide. For **Media Indexer** memory requirements, see "Working with Interplay Media Indexers" in the Best Practices Guide.

### Virtual Disk Provisioning

- Most VMs: deploy with a single virtual disk (OS + applications).
- **Production Management Engine** and **Archive Engine**: deploy with **two disks** — OS/applications on one, database on a second (isolated disk reduces risk if OS drive is compromised).
- Database disk size: based on expected database size plus room for backup copies and future growth (Archive Engine database will grow over time — plan for expansion).
- Minimum OS disk: approximately 20 GB for a clean Windows Server install; allow additional space for Windows updates (which consume significant disk) and installer packages (15–20 GB typical).
- Monitor log files — some applications accumulate logs over time.

---

## Deploying a VM in Nutanix Prism

High-level process for deploying a Windows Server VM:

1. Log in to Nutanix Prism; navigate to VM Dashboard.
2. Create VM — configure general settings (name, timezone), compute (vCPUs, cores, memory), and disks.
3. Attach Windows OS ISO and VirtIO drivers ISO via CD-ROM.
4. Create an SCSI disk for OS installation (80 GB recommended minimum).
5. Add NIC; configure VLAN and network settings.
6. Power on VM and boot from Windows ISO to begin OS installation.
7. At disk selection prompt, load VirtIO drivers (Windows Server 2016 `amd64` folder); install OS to the SCSI disk.
8. Post-install: set hostname, enable Remote Desktop, configure TCP/IP and DNS.
9. Change boot device to SCSI disk; eject ISO images; remove extra CD-ROM.
10. Install Nutanix Guest Tools (NGT) — select VM > Manage Guest Tools > Enable NGT and Mount NGT.
11. Join VM to domain; apply Group Policies; install Windows updates.
12. (Optional) Take a snapshot as a baseline image; delete it once configuration is verified.

After OS baseline is complete, use standard Avid installation guides for each application to install Production Management software.

---

## Production Management Software Deployment

After all VMs are deployed and baselined at the OS level, use the standard installation guides for each Avid product to proceed with software installation and configuration (see `install-guide.md` for MCPM v2023.7, or the equivalent for your version).
