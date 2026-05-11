---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2021"
release-date: 01/01/2021
doc-type: virtualization-guide
source: pdf
confidentiality: public
date-added: 08/05/2026
status: current
---

Enterprise Virtualization Reference MediaCentral | Newsroom Management Server Enterprise Virtualization Reference Date Revised Changes Made 13 May 2021 Added section on ID_SERIAL property requirement Feb 2020/Oct 2020 Updated Windows Server versioning for MOS Gateway Server January 2020 Updated VMware & Windows versioning February 2019 Removed information that no longer applicable March 2017 Added a few notes (in sections1 & 5) for clarifications January 2017 Made a few updates (in sections 2 - 6) for clarification July 2016 Release 2.0 Avid recommends that you thoroughly read all of the information in this file before installing or using any new software release.
The MediaCentral Newsroom Management Server was formerly known as the Avid iNEWS Server.
Note: Search the Avid Knowledge Base (http://www.avid.com/onlinesupport) for the most up-to-date product documentation, which contains the latest information that might have become available after this version was published.
Enterprise Virtualization Reference Contents Enterprise Virtualization Reference
1. Executive Summary
The Newsroom Management Server software is supported in a virtualized environment. A virtual infrastructure that supports the following minimum guest specifications will support Newsroom Management Server. Additional RAM and processing can be added to improve performance.
∙ Newsroom Management Server(s) ∙ iNEWS Server VM’s must be Thick Provisioned Eager Zero ∙ 2 virtual CPUs ∙ 8 GB RAM ∙ 500 GB virtual hard disk ∙ 500 MB /boot ∙ 50 GB / ∙ 8 GB swap ∙ 138 GB /rp5 ∙ 138 GB /rp5backup ∙ 2 network interface cards ∙ Red Hat Enterprise Linux 7 x86_64 ∙ *iNEWS 6.3 and later also support CentOS ∙ FTS/DR Server ∙ 2 virtual CPUs ∙ 4 GB RAM ∙ C:\ 80 GB virtual hard disk ∙ 1 network interface card ∙ Windows Server 2016 and 2019 ∙ MOS Gateway Server ∙ 1 virtual CPU ∙ 16 GB RAM ∙ C:\ 80 GB virtual hard disk ∙ 1 network interface card ∙ Windows Server 2016 and 2019 ∙ Command Server ∙ 2 virtual CPUs ∙ 4 GB RAM ∙ C:\ 80 GB virtual hard disk ∙ 1 network interface card ∙ Windows Server 2016 and 2019 Newsroom Management is supported in either a single or dual-server configuration. Dual-server configurations are recommended when VMware redundancy features are not present. A triple-server system is not recommended or necessary. A dual-server configuration or redundancy provided by the virtual environment provides sufficient redundancy mechanisms.
Note: As required by Newsroom Management, the virtual hard disks must be provisioned as thick eager zero.
2. VMware Infrastructure
∙ Newsroom Management Server VM’s are required to be Thick Provisioned Eager Zero.
∙ FTS/DR, MOS Gateway and Command Servers should also be Thick Provisioned Eager Zero.
∙ VMware hosts require hardware RAID controllers with either flash based, or battery-backed cache if local storage (in the host server) will be used for the installation of ESXi and/or where the VMs will be placed. If using a SAN, then no RAID controller is needed. Most server manufacturers offer dual SD card modules (mirrored) of 8GB and larger sizes, which can be used for the ESXi installation.
∙ A SAN is recommended. Shared storage allows multiple VMware hosts access to the same storage nodes. Avid recommends dual connections from each hot to SAN switch for MPIO functionality (MultiPath In/Out). Also recommended: 10Gb iSCSI, 8Gb FC or faster.
Enterprise Virtualization Reference ∙ VMware vSphere 6.5 is the minimum supported version, but Avid has also tested VMware vSphere 6.7.
∙ Avid recommends using VMware features such as VMware HA, DRS, and vMotion to ensure Newsroom Management server VM’s are protected against failure.
∙ Avid recommends that you enable “Expose hardware assisted virtualization to the guest OS” for better performance.
3. Environment Configuration: net=A
In a single-server, or net=A, configuration, Avid leverages the redundancy features available in VMware to provide fault tolerance. In a net=A configuration VMware High Availability (HA), and vMotion are required.
Only one NIC is required at the guest level. In the event of a virtualization host failure, the hypervisor’s HA moves hosting duties to a surviving VMware host. This new host must have access to the storage node containing the A server’s virtual hard disk.
System downtime at host failure is expected to be in the range of 10 to 15 minutes. All clients and programs connected to the server are terminated when the host fails.
When a host goes down, HA and DRS should start bringing VMs using that host's compute resources back online within a couple of minutes. This setting can be customized as desired. Avid recommends setting Newsroom Management VMs high on the list for bringing back online during an HA event. This can be set within vCenter.
4. Environment Configuration: net=AB
In a dual-server, or net=AB, configuration, additional high availability rules are recommended. A mirror network is also required.
In the event of a virtualization host failure, the hypervisor’s HA moves hosting duties to a surviving VMware host. An anti-affinity rule needs to be in place to minimize the likelihood of both Newsroom Management servers residing on the same host and to guarantee that the new host has access to the mirror network and the relevant storage node.
(Rule not needed for this. Host networks need to match so that port groups are configured the same across hosts. This can be easily done using Distributed vSwitches, or dvSwitches.) The mirror network connects the A server to the B server and provides a consistent, low- latency connection for Newsroom Management database mirroring traffic and heartbeats. The mirror network can be a dedicated virtual switch or simply another VLAN on the current virtual network.
All hosts in the cluster must have access to the mirror network port group. It is recommended but not required to configure jumbo frames on the mirror network switch and a 1500 MTU on the mirror network NICs.
The system experiences no downtime at host failure. Clients and programs connected to the failed guest are terminated. Clients and programs connected to the surviving guest continue work after a 30-second pause while the system detects the disconnect and automatically reconfigures.
5. Backups and Snapshots
∙ Newsroom Management dbdump It is recommended to run periodic dbdumps to file for offsite storage. A gzipped, full dbdump is a few hundred megabytes to a few gigabytes in size. This file is much more portable during a disaster recovery scenario than an enterprise SAN backup. There are benefits to both backup mechanisms, and using them in concert allows for multiple recovery scenarios.
∙ Snapshots Enterprise Virtualization Reference Snapshots are not a recommended backup method. Snapshots are short term and used for changes to the VM (software updates, hardware changes, etc.). Once the change is confirmed as ‘good’ the snapshot should be deleted. Maximum recommended (by VMware) lifespan of a snapshot is 7-14 days. It is important to not that EVERY change made on the VM with a snapshot is recorded. Every bit change on the VM, every command given, is recorded. Due to this, the storage requirements of a VM with a snapshot can easily skyrocket.
Avid does not recommend snapshotting both A and B in a net=AB system, nor is it recommended to reconnect backups of an A guest and a B guest. Snapshot the A server only. If a system needs to be reverted to a snapshot, the preferred method is to revert to the A snapshot and create a clone of that snapshot to replace the B guest. Then boot both VMs and reboot B after reconfiguring the network and hostname. The databases are guaranteed to be identical and can be connected safely. The A and B servers can both be snapshotted only if both servers first perform the proper command sequence— offline; logout all; shutdown— to ensure no database writes occur in the time between the snapshot of A and the snapshot of B. Avid does not recommend this method because it involves system downtime every time a snapshot is taken.
Note: Snapshots are to be kept for no more than 14 calendar days. Due to the nature of VMware Shapshots, all bit changes are recorded, which can lead to extreme VM storage levels, easily doubling the storage consumption.
∙ vSphere Data Protection vSphere Data Protection is an appliance solution that is a valid B&R utility that can be installed/configured for image level virtual machine backups to disk.
6. Templates
The use of templates is supported. Templates can be generated at any stage of the installation and configuration process. It is recommended to have at least one simple template that is only the operating system and Newsroom Management pre-install configuration. This image has the most versatility.
When deploying a template, ensure that files containing hardware-specific information are corrected before integration into production, such as ifcfg-eth0, ifcfg-eth1, and 70-persistent-net.rules.
Note: The Ethernet controller designation (eth0, eth1, etc.) needs to match what the Newsroom Management installer requires. If that means all need to be eth0, then that needs to be confirmed post template deployment. Often, the controller designation number increases when the template is deployed.
Where it might be ‘eth0’ in the template, in a VM created from it, the name changes to ‘eth1’. Changing the name is a well-documented process, and is fairly easy. For more information, check out:
http://minimallinux.blogspot.com/2013/06/centos-6rhel-change-eth1-back-to-eth0.html
7. Scheduled Failover/Migration
Live migration is supported at the host and storage level. Migration can be used whenever a host must be power cycled or placed into maintenance mode.
It is recommended to perform scheduled migrations during periods of low activity.
A net=AB system will experience a disconnect if the guests lose contact with each other for a period of time greater than 30 seconds. Migration should fall well below that period of time. vSphere vMotion, for example, results in a loss of communication closer to five seconds, and a disconnect does not occur.
8. Restrictions
Serial access and serial message output are not supported. Adding serial support to a virtualized Enterprise Virtualization Reference environment increases the cost and complexity of the configuration. All Linux consoles are available via the hypervisor UI, mitigating the concerns of monitoring the early- boot output before NICs are initialized.
PuTTY CS can be used with SSH communication to multiplex commands across both servers. If Newsroom Management was installed with serial communication active, disable it by setting /etc/grub.conf to the default (zero) kernel and by removing the “co” line from /etc/inittab.
Host-only networking for the mirror network is not supported. Host-only networking requires both guests to reside on the same host, forfeiting the redundancy of a net=AB system during host failure.
Both diskclear and diskcopy are slower in a virtualized environment accessing a SAN than in a bare metal environment accessing local storage. Allow sufficient time for diskclear when planning a new system or a reconnect. Because diskcopy can take place on a live system, so the performance difference will not affect system availability.
9. ID_SERIAL Property Required
Before MediaCentral Newsroom Management is installed, make sure your disks have ID_SERIAL property.
Note: This setting is not required if VM is a single disk installation, and if rp5 and rp5backup partitions are created as part of OS setup possess.
To check for the ID_SERIAL property, use:
➢ udevadm info --query=property --name=/dev/<your disk> The ID_SERIAL should appear in the output.
If it is not there, you must enable disk UUID to allow the disk to be mounted properly.
To enable disk UUID on a virtual machine:
1. Power off the guest.
2. Select the guest and then select Edit Settings.
3. Select the VM Options tab on the top.
4. Select the Advanced section.
5. Select the Configuration Parameters… on the right-hand side.
6. Check to see if the parameter disk.EnableUUID is set.
a. If it is there, then ensure it is set to TRUE.
b. If the parameter is not there, click ADD CONFIGURATION PARAMS and add it.
7. Power on the guest.
Make sure your disks have the ID_SERIAL property. Now everything is ready to install.
Technical Support Information If you are having trouble using your Avid product:
Avid Assurance service offerings are designed to facilitate your use of Avid solutions. Service options include extended telephone coverage, automatic software maintenance, extended hardware warranty, and preferred pricing on replacement parts. Offerings and options may vary by product and are not available for all products.
For more information regarding Avid service offerings, visit www.avid.com/support or call Avid Sales at 800-949-AVID (800-949-2843).
Program availability and details might vary depending on geographic location and are subject to change without notice. Contact your local Avid office or your local Avid Reseller for complete program information and pricing. However, if you need help locating an Avid office or Avid Reseller near you, please visit www.avid.com or call in North America 800-949-AVID (800-949-2843). International users call 978-275-2480.
Enterprise Virtualization Reference Accessing Online Support Avid Online Support is available 24 hours per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read/join online message-board discussions.
To access Avid Online Support:
➢ Go to www.support.avid.com .
Note: Supplemental documentation for product releases, if available, is provided on the Knowledge Base. For the latest up-to-date information, browse the Knowledge Base at Avid Online Support.
Enterprise Virtualization Reference Copyright and Disclaimer Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software. The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement. It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Copyright © 2021 Avid Technology, Inc. and its licensors. All rights reserved.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Adrenaline, AirSpeed, ALEX, Alienbrain, Archive, Archive II, Assistant Avid, Avid Unity, Avid Unity ISIS, Avid VideoRAID, CaptureManager, CountDown, Deko, DekoCast, FastBreak, Flexevent, FXDeko, iNEWS, iNEWS Assign, iNEWS ControlAir, Instinct, IntelliRender, Intelli-Sat, Intelli-sat Broadcasting Recording Manager, Interplay, ISIS, IsoSync, LaunchPad, LeaderPlus, ListSync, MachineControl, make manage move | media, Media Composer, NewsCutter, NewsView, OMF, OMF Interchange, Open Media Framework, Open Media Management, SIDON, SimulPlay, SimulRecord, SPACE, SPACEShift, Sundance Digital, Sundance, Symphony, Thunder, Titansync, Titan, UnityRAID, Video the Web Way, VideoRAID, VideoSPACE, VideoSpin, and Xdeck are either registered trademarks or trademarks of Avid Technology, Inc. in the United States and/or other countries.
All other trademarks contained herein are the property of their respective owners.
Avid Newsroom Management Server Enterprise Virtualization Guide • 16 April 2021 This document is distributed by Avid in online (electronic) form only, and is not available in printed form.