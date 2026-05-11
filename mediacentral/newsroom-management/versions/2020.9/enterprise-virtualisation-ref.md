---
product: mediacentral-newsroom-management
product-area: infrastructure
version: "2020.9"
release-date: 01/09/2020
doc-type: reference-guide
source: avid-official
source-file: iNEWS-Enterprise-Virtualization-AG-2020-RevC.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2021.3"
feature-tags: [virtualisation, vmware, vsphere, ha, drs, vmotion, vm-specs, rhel, disk-partitioning, iscsi, san, backup, templates, migration]
---

# Avid iNEWS Server — Enterprise Virtualisation Reference

**Document revision:** Rev C (October 2020)  
**Copyright:** 11 February 2020  
**Applies to:** iNEWS Server in VMware environments; cross-version guide (no single MCNM version binding)  
**Note:** This document does not carry an MCNM version number in its header. Filed under `versions/2020.9/` based on the October 2020 Rev C revision date, which aligns with the 2020.9.x release timeframe.

---

## Revision History

| Revision | Date | Notes |
|---|---|---|
| 1.0 | Jul 2016 | Release 2.0 |
| — | Jan 2017 | Update |
| — | Mar 2017 | Update |
| — | Feb 2019 | Update |
| — | Jan 2020 | Update |
| Rev C | Feb 2020 | Initial Rev C |
| Rev C | Oct 2020 | Updated Windows Server versioning for MOS Gateway Server |

---

## Executive Summary — VM Minimum Specifications

### iNEWS Server

| Parameter | Value |
|---|---|
| vCPUs | 2 |
| RAM | 8 GB |
| Virtual HDD | 500 GB total |
| NIC count | 2 |
| Guest OS | RHEL 6 x86_64 (v5.5+ also supports RHEL 7; v6.3+ also CentOS) |
| Disk provisioning | Thick Provisioned Eager Zero (required) |

**Virtual HDD partition layout:**

| Partition | Size | Mount |
|---|---|---|
| Boot | 500 MB | `/boot` |
| Root | 50 GB | `/` |
| Swap | 8 GB | (swap) |
| Primary database | 138 GB | `/rp5` |
| Backup database | 138 GB | `/rp5backup` |

### FTS / Data Receiver Server

| Parameter | Value |
|---|---|
| vCPUs | 2 |
| RAM | 4 GB |
| Virtual HDD | 80 GB (`C:\`) |
| NIC count | 1 |
| Guest OS | Windows Server 2012 R2 |

### MOS Gateway Server

| Parameter | Value |
|---|---|
| vCPUs | 1 |
| RAM | 16 GB |
| Virtual HDD | 80 GB (`C:\`) |
| NIC count | 1 |
| Guest OS | Windows Server 2016 |

> **Note:** Rev C (Oct 2020) updated MOS Gateway Server OS to Windows Server 2016.

### Command Server

| Parameter | Value |
|---|---|
| vCPUs | 2 |
| RAM | 4 GB |
| Virtual HDD | 80 GB (`C:\`) |
| NIC count | 1 |
| Guest OS | Windows Server 2016 |

**Supported configurations:** Single-server and dual-server (A/B). Triple-server (A/B/C) Community is **not recommended** for virtual environments.

---

## VMware Infrastructure Requirements

- **Disk provisioning:** Thick Provisioned Eager Zero required for all iNEWS VMs.
- **Storage:** SAN recommended — 10 Gb iSCSI or 8 Gb Fibre Channel.
- **VMware vSphere:** Version 6.5 or later.
- **HA / DRS / vMotion:** Recommended for all deployments.
- **Local storage:** RAID controllers required if not using SAN.

---

## Single-Server Configuration (net=A)

- VMware HA and vMotion required.
- Single NIC sufficient.
- On host failure: typically 10–15 minutes downtime while HA restarts the VM on another host.
- iNEWS VM should be set as **high priority** for HA restart to minimise recovery time.

---

## Dual-Server Configuration (net=AB)

- **Anti-affinity rule** required — server A and server B VMs must not run on the same host.
- **Mirror network:** Dedicated vSwitch or VLAN required for the iNEWS mirror network.
  - MTU: 1500 on mirror NICs (standard).
  - Jumbo frames: not required, but recommended.
- **Distributed vSwitches** recommended for consistent network configuration across hosts.
- **Failover behaviour:** A guest-level server failover causes a ~30-second pause (not full downtime), as the surviving server reconnects workstations.

---

## Backups and Snapshots

- **Preferred backup method:** `dbdump` to file (iNEWS-native database dump). Preferred over VM-level snapshots for database consistency.
- **Snapshots:** Maximum 14 calendar days. Do not run with snapshots older than 14 days.
- **net=AB snapshot rule:** Do **not** snapshot both server A and server B simultaneously.
  - Snapshot server A only.
  - If server B needs replacement, clone A to replace B.
- **vSphere Data Protection:** Valid for image-level VM backups.

---

## VM Templates

- VM templates are supported for iNEWS server deployment.
- **NIC naming must be correct before deploying from template.** Verify and correct the following files:
  - `/etc/sysconfig/network-scripts/ifcfg-eth0`
  - `/etc/sysconfig/network-scripts/ifcfg-eth1`
  - `/etc/udev/rules.d/70-persistent-net.rules`

---

## Scheduled Failover and Live Migration

- Live migration (vMotion) is supported for scheduled maintenance and host evacuation.
- **net=AB:** Migration requires a gap of less than 30 seconds between server A and server B migrations to avoid a full community failover. VMware vMotion typically completes in approximately 5 seconds per VM.

---

## Restrictions

- **Serial console access:** Not available in a VM. Use PuTTY over the Console Server (CS) or SSH instead.
- **Host-only networking:** Must not be used for the iNEWS mirror network.
- **Disk operations:** `diskclear` and `diskcopy` run significantly slower in a VM compared to bare-metal hardware. Allow additional time for these operations.
