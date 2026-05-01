---
product: mediacentral-newsroom-management
product-area: infrastructure
version: "2021.3"
release-date: 13/05/2021
doc-type: reference-guide
source: avid-official
source-file: MCNM-Enterprise-Virtualization-Ref-2021.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2021.7"
feature-tags: [virtualisation, vmware, vsphere, ha, drs, vmotion, vm-specs, rhel, disk-partitioning, iscsi, san, backup, templates, migration, id-serial]
---

# MediaCentral | Newsroom Management Server — Enterprise Virtualisation Reference

**Document revision:** 13 May 2021 (Added Section 9 — ID_SERIAL property requirement)  
**Copyright:** 16 April 2021  
**Applies to:** iNEWS Server in VMware environments; cross-version guide  
**Note:** This document does not carry a single MCNM version number. Filed under `versions/2021.3/` based on the May 2021 revision date, which aligns with the 2021.3 release.

---

## Revision History

| Revision | Date | Notes |
|---|---|---|
| — | 16 Apr 2021 | Initial 2021 edition |
| — | 13 May 2021 | Added Section 9: ID_SERIAL property requirement |

---

## Changes from 2020 RevC Edition

- FTS / Data Receiver Server: now qualified on Windows Server 2016 **and** 2019 (was 2012 R2 in 2020 RevC).
- MOS Gateway Server: Windows Server 2016 and 2019 (2019 newly listed).
- Command Server: Windows Server 2016 and 2019 (2019 newly listed).
- Triple-server (A/B/C) Community: explicitly described as "not recommended or necessary" — dual-server redundancy via VMware HA is sufficient.
- net=AB anti-affinity rule: note added that the rule is not needed if host networks match and port groups are configured identically across hosts (achievable using Distributed vSwitches / dvSwitches).
- **New Section 9:** ID_SERIAL property requirement for virtual disks.

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
| Guest OS | Windows Server 2016 or 2019 |

> **Change from 2020 edition:** Windows Server 2019 now also qualified (was 2012 R2).

### MOS Gateway Server

| Parameter | Value |
|---|---|
| vCPUs | 1 |
| RAM | 16 GB |
| Virtual HDD | 80 GB (`C:\`) |
| NIC count | 1 |
| Guest OS | Windows Server 2016 or 2019 |

### Command Server

| Parameter | Value |
|---|---|
| vCPUs | 2 |
| RAM | 4 GB |
| Virtual HDD | 80 GB (`C:\`) |
| NIC count | 1 |
| Guest OS | Windows Server 2016 or 2019 |

**Supported configurations:** Single-server and dual-server (A/B). Triple-server (A/B/C) Community is **not recommended or necessary** for virtual environments — dual-server with VMware HA provides sufficient redundancy.

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
  - **Exception:** The anti-affinity rule is not needed if host networks match and port groups are configured identically across all hosts. This can be achieved using Distributed vSwitches (dvSwitches).
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

---

## ID_SERIAL Property Requirement (New in 2021 Edition)

> **Added:** 13 May 2021 (aligns with MCNM v2021.3 release)

Virtual machine disks must have the `ID_SERIAL` property set before installing the Newsroom Management Server software. This applies to VMs with multiple virtual disks.

**Exceptions — ID_SERIAL is NOT required when:**
- The VM has a single virtual disk, **or**
- The `/rp5` and `/rp5backup` partitions were created during the operating system setup.

### Checking for ID_SERIAL

Run the following command for each disk:

```bash
udevadm info --query=property --name=/dev/<your disk>
```

The output must include a line such as:
```
ID_SERIAL=<serial value>
```

If `ID_SERIAL` is absent from the output, the disk does not have the property set.

### Enabling ID_SERIAL in vCenter

1. In vCenter, select the VM.
2. Go to **Edit Settings > VM Options > Advanced > Configuration Parameters**.
3. Add (or confirm the existence of) the parameter:
   - **Key:** `disk.EnableUUID`
   - **Value:** `TRUE`
4. Power the VM off and on (a restart is not sufficient — a full power cycle is required).
5. Re-run the `udevadm` command to confirm `ID_SERIAL` is now present.
