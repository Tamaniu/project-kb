---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2024.10"
release-date: 01/10/2024
doc-type: virtualization-guide
source: pdf
confidentiality: public
date-added: 24/04/2026
status: current
---

Avid MediaCentral | Newsroom Management Enterprise Virtualization Reference Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
The MediaCentral Newsroom Management Server was formerly known as the Avid iNEWS Server.
For the most up-to-date Avid MediaCentral Newsroom Management documentation (all releases), see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/User_Guide/MediaCentral-Newsroom-Management Revision History Date Revised Changes Made October 2024 Documentation Refresh for 2024.10 Contents
1. Executive Summary
1. Executive Summary
The Newsroom Management Server software is supported in a virtualized environment. A virtual infrastructure that supports the following minimum guest specifications will support Newsroom Management Server. Additional RAM and processing can be added to improve performance.
- Newsroom Management Server(s)
  - 8 virtual CPUs
For a test system, 2 virtual CPUs and 8 GB RAM could be used
  - 16 GB RAM (2G per CPU)
  - 500 GB virtual hard disk
  - 500 MB /boot
  - 50 GB /
  - 8 GB swap
  - 138 GB /rp5
  - 138 GB /rp5backup
Newsroom Management Server VM’s must be Thick Provisioned Eager Zero
  - 2 network interface cards
  - Operating System
  - Ubuntu 22.04
- FTS/DR Server
  - 2 virtual CPUs
  - 4 GB RAM
  - C:\ 80 GB virtual hard disk
  - 1 network interface card
  - Windows Server 2019 and 2022
- MOS Gateway Server
  - 1 virtual CPU
  - 16 GB RAM
  - C:\ 80 GB virtual hard disk
  - 1 network interface card
  - Windows Server 2019 and 2022
- Command Server
  - 8 virtual CPUs
  - 16 GB RAM
  - C:\ 80 GB virtual hard disk
  - 1 network interface card
  - Windows Server 2019 and 2022
2. VMware Infrastructure
Newsroom Management is supported in either a single or dual-server configuration. Dual-server configurations are recommended when VMware redundancy features are not present. A triple-server system is not recommended or necessary. A dual-server configuration or redundancy provided by the virtual environment provides enough redundancy mechanisms.
> **Note:** As required by Newsroom Management, the virtual hard disks must be provisioned as thick eager
zero.
2. VMware Infrastructure
- Newsroom Management Server VM’s are required to be Thick Provisioned Eager Zero.
- FTS/DR, MOS Gateway and Command Servers should also be Thick Provisioned Eager Zero.
- VMware hosts require hardware RAID controllers with either flash based, or battery-backed cache if
local storage (in the host server) will be used for the installation of ESXi and/or where the VMs will be placed. If using a SAN, then no RAID controller is needed. Most server manufacturers offer dual SD card modules (mirrored) of 8GB and larger sizes, which can be used for the ESXi installation.
A SAN is recommended. Shared storage allows multiple VMware hosts access to the same storage
- nodes. Avid recommends dual connections from each hot to SAN switch for MPIO functionality
(MultiPath In/Out). Also recommended: 10Gb iSCSI, 8Gb FC or faster.
- VMware vSphere7.0 is the supported version.
- Avid recommends using VMware features such as VMware HA, DRS, and vMotion to ensure
Newsroom Management Server VM’s are protected against failure.
Avid recommends that you enable “Expose hardware assisted virtualization to the guest OS” for
- better performance.
> **Note:** Avid performs all system qualification using Intel-based CPUs. Avid cannot ensure equivalent
performance, functionality, or compatibility if your equipment includes processors from other vendors such as AMD, or others.
3. Environment Configurations
3. Environment Configurations
MediaCentral Newsroom Management supports two different configuration methods.
Configuration: net=A In a single-server, or net=A, configuration, Avid leverages the redundancy features available in VMware to provide fault tolerance. In a net=A configuration VMware High Availability (HA), and vMotion are required.
Only one NIC is required at the guest level. In the event of a virtualization host failure, the hypervisor’s HA moves hosting duties to a surviving VMware host. This new host must have access to the storage node containing the A server’s virtual hard disk.
System downtime at host failure is expected to be in the range of 10 to 15 minutes. All clients and programs connected to the server are terminated when the host fails.
When a host goes down, HA and DRS should start bringing VMs using that host's compute resources back online within a couple of minutes. This setting can be customized as desired. Avid recommends setting Newsroom Management VMs high on the list for bringing back online during an HA event. This can be set within vCenter.
Configuration: net=AB In a dual-server, or net=AB, configuration, additional high availability rules are recommended. A mirror network is also required.
In the event of a virtualization host failure, the hypervisor’s HA moves hosting duties to a surviving VMware host. An anti-affinity rule needs to be in place to minimize the likelihood of both Newsroom Management Servers residing on the same host and to guarantee that the new host has access to the mirror network and the relevant storage node.
> **Note:** (Rule not needed for this. Host networks need to match so that port groups are configured the same
across hosts. This can be easily done using Distributed vSwitches, or dvSwitches.) The mirror network connects the A server to the B server and provides a consistent, low- latency connection for Newsroom Management database mirroring traffic and heartbeats. The mirror network can be a dedicated network using LAN and network to connect different hosts that run the virtual machines for the Newsroom Management virtual servers.
All hosts in the cluster must have access to the mirror network port group. It is recommended but not required to configure jumbo frames on the mirror network switch and a 1500 MTU on the mirror network NICs.
The system experiences no downtime at host failure. Clients and programs connected to the failed guest are terminated. Clients and programs connected to the surviving guest continue work after a 30-second pause while the system detects the disconnect and automatically reconfigures.
4. Backups and Snapshots
4. Backups and Snapshots
Newsroom Management dbdump It is recommended to run periodic dbdumps to file for offsite storage. A gzipped, full dbdump is a few hundred megabytes to a few gigabytes in size. This file is much more portable during a disaster recovery scenario than an enterprise SAN backup. There are benefits to both backup mechanisms, and using them in concert allows for multiple recovery scenarios.
Snapshots Snapshots are not a recommended backup method. Snapshots are short term and used for changes to the VM (software updates, hardware changes, etc.). Once the change is confirmed as ‘good’ the snapshot should be deleted. Maximum recommended (by VMware) lifespan of a snapshot is 7-14 days. It is important to not that EVERY change made on the VM with a snapshot is recorded. Every bit change on the VM, every command given, is recorded. Due to this, the storage requirements of a VM with a snapshot can easily skyrocket.
Avid does not recommend snapshotting both A and B in a net=AB system, nor is it recommended to reconnect backups of an A guest and a B guest. Snapshot the A server only. If a system needs to be reverted to a snapshot, the preferred method is to revert to the A snapshot and create a clone of that snapshot to replace the B guest. Then boot both VMs and reboot B after reconfiguring the network and hostname. The databases are guaranteed to be identical and can be connected safely. The A and B servers can both be snapshotted only if both servers first perform the proper command sequence— offline; logout all; shutdown— to ensure no database writes occur in the time between the snapshot of A and the snapshot of B. Avid does not recommend this method because it involves system downtime every time a snapshot is taken.
> **Note:** Snapshots are to be kept for no more than 14 calendar days. Due to the nature of VMware Shapshots,
all bit changes are recorded, which can lead to extreme VM storage levels, easily doubling the storage consumption.
vSphere Data Protection vSphere Data Protection is an appliance solution that is a valid B&R utility that can be installed/configured for image level virtual machine backups to disk.
5. Templates
The use of templates is supported. Templates can be generated at any stage of the installation and configuration process. It is recommended to have at least one simple template that is only the operating system and Newsroom Management pre-install configuration. This image has the most versatility.
When deploying a template, ensure that files containing hardware-specific information are corrected before integration into production, such as ifcfg-eth0, ifcfg-eth1, and 70-persistent-net.rules.
> **Note:** The Ethernet controller designation (eth0, eth1, etc.) needs to match what the Newsroom
Management installer requires. If that means all need to be eth0, then that needs to be confirmed post template deployment. Often, the controller designation number increases when the template is deployed. Where it might be ‘eth0’ in the template, in a VM created from it, the name changes to ‘eth1’. Changing the name is a well-documented process, and is fairly easy. For more information, see:http://minimallinux.blogspot.com/2013/06/centos-6rhel-change-eth1-back-to-eth0.html
6. Scheduled Failover/Migration
6. Scheduled Failover/Migration
Live migration is supported at the host and storage level. Migration can be used whenever a host must be power cycled or placed into maintenance mode.
It is recommended to perform scheduled migrations during periods of low activity.
A net=AB system will experience a disconnect if the guests lose contact with each other for a period of time greater than 30 seconds. Migration should fall well below that period of time. vSphere vMotion, for example, results in a loss of communication closer to five seconds, and a disconnect does not occur.
7. Restrictions
Serial access and serial message output are not supported. Adding serial support to a virtualized environment increases the cost and complexity of the configuration. All Linux consoles are available via the hypervisor UI, mitigating the concerns of monitoring the early- boot output before NICs are initialized.
PuTTY CS can be used with SSH communication to multiplex commands across both servers. If Newsroom Management was installed with serial communication active, disable it by setting /etc/grub.conf to the default (zero) kernel and by removing the “co” line from /etc/inittab.
Host-only networking for the mirror network is not supported. Host-only networking requires both guests to reside on the same host, forfeiting the redundancy of a net=AB system during host failure.
Both diskclear and diskcopy are slower in a virtualized environment accessing a SAN than in a bare metal environment accessing local storage. Allow sufficient time for diskclear when planning a new system or a reconnect. Because diskcopy can take place on a live system, so the performance difference will not affect system availability.
8. ID_SERIAL Property Required
Before MediaCentral | Newsroom Management is installed, make sure your disks have ID_SERIAL property.
> **Note:** This setting is not required if VM is a single disk installation, and if rp5 and rp5backup partitions are
created as part of OS setup possess.
To check for the ID_SERIAL property, use:
- udevadm info --query=property --name=/dev/<your disk>
The ID_SERIAL should appear in the output.
If it is not there, you must enable disk UUID to allow the disk to be mounted properly.
To enable disk UUID on a virtual machine:
1. Power off the guest.
2. Select the guest and then select Edit Settings.
3. Select the VM Options tab on the top.
4. Select the Advanced section.
5. Select the Configuration Parameters… on the right-hand side.
6. Check to see if the parameter disk.EnableUUID is set.
a. If it is there, then ensure it is set to TRUE.
8. ID_SERIAL Property Required
b. If the parameter is not there, click ADD CONFIGURATION PARAMS and add it.
7. Power on the guest. Make sure your disks have the ID_SERIAL property. Now everything is ready to
install.
8. ID_SERIAL Property Required