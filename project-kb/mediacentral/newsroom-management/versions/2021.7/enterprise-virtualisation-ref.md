---
product: mediacentral-newsroom-management
product-area: infrastructure
version: "2021.7"
release-date: 22/07/2021
doc-type: reference-guide
source: avid-official
source-file: MCNM-Enterprise-Virtualization-Ref-7-2021.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2022.3"
feature-tags: [virtualisation, vmware, vsphere, ha, drs, vmotion, vm-specs, rhel, disk-partitioning, iscsi, san, backup, templates, migration, id-serial, hardware-assisted-virtualisation]
---

# MediaCentral | Newsroom Management Server — Enterprise Virtualisation Reference

**Document date:** 22 July 2021  
**Copyright:** 2021 Avid Technology, Inc.  
**Applies to:** iNEWS / Newsroom Management Server in VMware environments; cross-version guide  
**Note:** This document does not carry a single MCNM version number. Filed under `versions/2021.7/` based on the 22 July 2021 revision date, which aligns with the 2021.7 release.

---

## Revision History

| Date Revised | Changes Made |
|---|---|
| 22 July 2021 | Updated Newsroom & Command Server info in Executive Summary |
| 13 May 2021 | Added section on ID_SERIAL property requirement |
| Feb 2020 / Oct 2020 | Updated Windows Server versioning for MOS Gateway Server |
| January 2020 | Updated VMware & Windows versioning |
| February 2019 | Removed information that no longer applicable |
| March 2017 | Added a few notes (in sections 1 & 5) for clarifications |
| January 2017 | Made a few updates (in sections 2–6) for clarification |
| July 2016 | Release 2.0 |

---

## Changes from May 2021 Edition

The 22 July 2021 revision updated the Executive Summary specifications for the Newsroom Management (iNEWS) Server and Command Server:

- **iNEWS Server:** increased from 2 vCPUs / 8 GB RAM to **8 vCPUs / 16 GB RAM (2G per CPU)**.
- **Command Server:** increased from 2 vCPUs / 4 GB RAM to **8 vCPUs / 16 GB RAM**.
- FTS/DR Server, MOS Gateway Server: unchanged from May 2021 edition.
- vSphere 6.7 also tested (6.5 remains minimum supported version).
- "Expose hardware assisted virtualisation to guest OS" explicitly recommended for better performance.

---

## Executive Summary — VM Minimum Specifications

Additional RAM and processing can be added to improve performance.

> **Note:** As required by Newsroom Management, the virtual hard disks must be provisioned as thick eager zero.

### iNEWS (Newsroom Management) Server

| Parameter | Value |
|---|---|
| vCPUs | **8** |
| RAM | **16 GB (2G per CPU)** |
| Virtual HDD | 500 GB total |
| NIC count | 2 |
| Guest OS | Red Hat Enterprise Linux 7 x86_64 |
| Disk provisioning | Thick Provisioned Eager Zero (required) |

**Notes on Guest OS:**
- iNEWS v5.5 and later also support RHEL 7.
- iNEWS v6.3 and later also support CentOS.
- For a **test system**, 2 virtual CPUs and 8 GB RAM could be used.

> **CRITICAL CHANGE from all prior editions:** iNEWS Server vCPUs increased from 2 to 8; RAM increased from 8 GB to 16 GB. This is a production requirement; test systems may use 2 vCPU / 8 GB.

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
| Guest OS | Windows Server 2016 and 2019 |

### MOS Gateway Server

| Parameter | Value |
|---|---|
| vCPUs | 1 |
| RAM | 16 GB |
| Virtual HDD | 80 GB (`C:\`) |
| NIC count | 1 |
| Guest OS | Windows Server 2016 and 2019 |

### Command Server

| Parameter | Value |
|---|---|
| vCPUs | **8** |
| RAM | **16 GB** |
| Virtual HDD | 80 GB (`C:\`) |
| NIC count | 1 |
| Guest OS | Windows Server 2016 and 2019 |

> **CRITICAL CHANGE from all prior editions:** Command Server vCPUs increased from 2 to 8; RAM increased from 4 GB to 16 GB.

**Supported configurations:** Single-server and dual-server (A/B). A triple-server (A/B/C) Community system is **not recommended or necessary** — dual-server redundancy or redundancy provided by the virtual environment provides sufficient redundancy mechanisms.

---

## VMware Infrastructure Requirements

- **Disk provisioning:** Newsroom Management Server VMs must be Thick Provisioned Eager Zero. FTS/DR, MOS Gateway, and Command Servers should also be Thick Provisioned Eager Zero.
- **Storage:** SAN recommended. Shared storage allows multiple VMware hosts access to the same storage nodes. Avid recommends dual connections from each host to SAN switch for MPIO (MultiPath In/Out). Recommended: 10 Gb iSCSI, 8 Gb FC or faster.
- **Local storage:** Hardware RAID controllers required with either flash-based or battery-backed cache if local storage is used for ESXi installation or VM placement. If using a SAN, no RAID controller is needed.
- **VMware vSphere:** Version 6.5 is the minimum supported version. Avid has also tested VMware vSphere 6.7.
- **HA / DRS / vMotion:** Recommended for all deployments to ensure Newsroom Management server VMs are protected against failure.
- **Hardware-assisted virtualisation:** Avid recommends enabling "Expose hardware assisted virtualisation to guest OS" for better performance.

---

## Single-Server Configuration (net=A)

In a net=A configuration, Avid leverages VMware redundancy features to provide fault tolerance. VMware High Availability (HA) and vMotion are required. Only one NIC is required at the guest level.

On host failure, the hypervisor's HA moves hosting duties to a surviving VMware host. The new host must have access to the storage node containing the A server's virtual hard disk.

- System downtime at host failure is expected to be 10–15 minutes. All clients and programmes connected to the server are terminated when the host fails.
- When a host goes down, HA and DRS should start bringing VMs back online within a couple of minutes.
- **Avid recommends setting Newsroom Management VMs as high priority** in the HA restart list to minimise recovery time. This can be set within vCenter.

---

## Dual-Server Configuration (net=AB)

In a net=AB configuration, additional high availability rules are recommended. A mirror network is also required.

On host failure, the hypervisor's HA moves hosting duties to a surviving VMware host. An **anti-affinity rule** is needed to minimise the likelihood of both Newsroom Management servers residing on the same host, and to guarantee the new host has access to the mirror network and the relevant storage node.

> *Note: The anti-affinity rule is not needed if host networks match so that port groups are configured the same across all hosts. This can be easily done using Distributed vSwitches (dvSwitches).*

**Mirror network:**
- Connects the A server to the B server; provides a consistent, low-latency connection for database mirroring traffic and heartbeats.
- Can be a dedicated virtual switch or simply another VLAN on the current virtual network.
- All hosts in the cluster must have access to the mirror network port group.
- Jumbo frames on the mirror network switch are recommended but not required.
- Mirror network NICs: 1500 MTU (standard).

**Failover behaviour:** The system experiences no downtime at host failure. Clients and programmes connected to the failed guest are terminated. Clients and programmes connected to the surviving guest continue work after a **30-second pause** while the system detects the disconnect and automatically reconfigures.

---

## Backups and Snapshots

### dbdump (Preferred)

It is recommended to run periodic `dbdump`s to file for offsite storage. A gzipped, full dbdump is a few hundred megabytes to a few gigabytes in size. This file is much more portable during a disaster recovery scenario than an enterprise SAN backup. There are benefits to both backup mechanisms, and using them in concert allows for multiple recovery scenarios.

### Snapshots

Snapshots are not a recommended backup method. Snapshots are short-term and used for changes to the VM (software updates, hardware changes, etc.). Once a change is confirmed as 'good', the snapshot should be deleted.

- **Maximum lifespan:** 7–14 days (VMware recommendation). Snapshots record every bit change on the VM; storage requirements can easily skyrocket.
- **net=AB snapshot rule:** Avid does **not** recommend snapshotting both A and B simultaneously.
  - Snapshot server A only.
  - If a system needs to be reverted to a snapshot, revert A and create a clone of that snapshot to replace the B guest. Then boot both VMs and reboot B after reconfiguring the network and hostname.
  - The databases are guaranteed to be identical and can be connected safely.
  - A and B servers **can** both be snapshotted if both servers first perform the proper command sequence: `offline; logout all; shutdown` — to ensure no database writes occur in the time between snapshots. Avid does not recommend this method because it involves system downtime every time a snapshot is taken.

### vSphere Data Protection

vSphere Data Protection is an appliance solution that is a valid backup and recovery (B&R) utility for image-level VM backups to disk.

---

## VM Templates

The use of templates is supported. Templates can be generated at any stage of the installation and configuration process. Avid recommends having at least one simple template that is only the operating system and Newsroom Management pre-install configuration — this image has the most versatility.

When deploying a template, ensure that files containing hardware-specific information are corrected before integration into production:

- `/etc/sysconfig/network-scripts/ifcfg-eth0`
- `/etc/sysconfig/network-scripts/ifcfg-eth1`
- `/etc/udev/rules.d/70-persistent-net.rules`

> **Note:** The Ethernet controller designation (eth0, eth1, etc.) must match what the Newsroom Management installer requires. If all need to be eth0, this must be confirmed post template deployment. The controller designation number often increases when the template is deployed (e.g. 'eth0' in the template may become 'eth1' in a VM created from it). Changing the name is a well-documented process and is fairly easy.

---

## Scheduled Failover / Live Migration

Live migration (vMotion) is supported at the host and storage level. Migration can be used whenever a host must be power-cycled or placed into maintenance mode. It is recommended to perform scheduled migrations during periods of low activity.

- **net=AB:** A net=AB system will experience a disconnect if the guests lose contact with each other for more than 30 seconds. Migration should fall well below that period of time. VMware vMotion results in a loss of communication closer to five seconds; a disconnect does not occur.

---

## Restrictions

- **Serial console access:** Serial access and serial message output are not supported. Adding serial support to a virtualised environment increases cost and complexity. All Linux consoles are available via the hypervisor UI. PuTTY CS can be used with SSH communication to multiplex commands across both servers. If Newsroom Management was installed with serial communication active, disable it by setting `/etc/grub.conf` to the default (zero) kernel and by removing the "co" line from `/etc/inittab`.
- **Host-only networking:** Must not be used for the iNEWS mirror network. Host-only networking requires both guests to reside on the same host, forfeiting the redundancy of a net=AB system during host failure.
- **Disk operations:** Both `diskclear` and `diskcopy` are slower in a virtualised environment accessing a SAN than in a bare-metal environment accessing local storage. Allow sufficient time for `diskclear` when planning a new system or a reconnect. Because `diskcopy` can take place on a live system, the performance difference will not affect system availability.

---

## ID_SERIAL Property Requirement

> **Added:** 13 May 2021 (carried forward to this edition unchanged)

Before MediaCentral Newsroom Management is installed, make sure your disks have the `ID_SERIAL` property.

**Exceptions — ID_SERIAL is NOT required when:**
- The VM has a single virtual disk, **or**
- The `/rp5` and `/rp5backup` partitions were created as part of the operating system setup.

### Checking for ID_SERIAL

Run the following command for each disk:

```bash
udevadm info --query=property --name=/dev/<your disk>
```

The `ID_SERIAL` should appear in the output. If it is not present, you must enable disk UUID to allow the disk to be mounted properly.

### Enabling Disk UUID on a Virtual Machine

1. Power off the guest.
2. Select the guest and then select **Edit Settings**.
3. Select the **VM Options** tab at the top.
4. Select the **Advanced** section.
5. Select **Configuration Parameters…** on the right-hand side.
6. Check to see if the parameter `disk.EnableUUID` is set:
   - a. If it is there, ensure it is set to `TRUE`.
   - b. If the parameter is not there, click **ADD CONFIGURATION PARAMS** and add it.
7. Power on the guest. Make sure your disks have the `ID_SERIAL` property. Now everything is ready to install.

---

## Technical Support

- **Avid Online Support:** www.support.avid.com (24/7)
- **Sales / North America:** 800-949-AVID (800-949-2843)
- **International:** +1 978-275-2480
