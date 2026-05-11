---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2025.6"
release-date: 01/06/2025
doc-type: hardware-guide
source: avid-official
confidentiality: public
date-added: 16/04/2026
status: current
feature-tags: [vmware, virtualisation]
---

- ™
Avid MediaCentral | Cloud UX
Best Practices for VMware®
- This guide describes the requirements for running Avid MediaCentral Cloud UX in a virtual environment using VMware® vSphere®. It provides details to help you select supported host servers and to optimally configure the virtual machines. Throughout this guide, Avid MediaCentral Cloud UX might be referred to as “MCUX” for brevity.
- This guide is intended for system administrators and other personnel who are familiar with VMware technology and the Linux operating system.
- Important Notification
- As of v2025.6, Avid is no longer testing or qualifying the deployment MediaCentral Cloud UX in a virtual environment using any specific vendor (such as VMware). While Avid allows you to deploy MediaCentral Cloud UX in a virtual environment, the selection and qualification of the virtualization solution is the responsibility of an individual or team within your own organization.
- c As of this release, this document will no longer receive updates and should be considered as a legacy reference document only.
- For additional information on virtualization best practices, see "Deploying MediaCentral Cloud UX in a Virtual Environment" in the *Avid MediaCentral | Cloud UX Installation Guide *v2025.6 or later.
- Revision History

| Date Revised | Changes Made |
| --- | --- |
| June, 2025 | Added "Important Notification" above. |
| January 22, 2025 | Support for no-replica nodes. For details, see "Configuring No-Replica Nodes" on page 5. |
| November 14, 2024 | Updates for MediaCentral Cloud UX v2024.10. For details see: l "Adding a GPU (optional)" on page 7 l "SeaweedFS" on page 9 |
| March 27, 2024 | Clarification made to "Qualified VMware Versions" on the next page. |
| January 16, 2024 | Added a reminder about the AVX requirements for MongoDB under "Minimum Requirements" on page 5. |
| December 21, 2023 | Update for MediaCentral Cloud UX v2023.12 l Document Refresh. l The detailed virtual machine creation process has been eliminated. l Updated general guidelines and minimum specifications. This includes a requirement for Solid State Drives for all MediaCentral Cloud UX VMs. |

- Virtualization Overview

| Date Revised | Changes Made |
| --- | --- |
|  | l VMware vSphere 7 or later required. |

# Contents
	Virtualization Overview	 2
	Qualified VMware Versions	 2
	Definition of Terms	3
- 4
	Common VM Settings	5
	Minimum Requirements	 5
	Installing MediaCentral Cloud UX	10
	Search Grid Recommendations	10

# Virtualization Overview
- Virtualizing MediaCentral Cloud UX provides the following benefits:
Deploy and operate multiple Avid systems such as MediaCentral Cloud UX, MediaCentral Newsroom Management, MediaCentral Production Management, and others on a single physical server.
Consolidate hardware to get higher productivity from fewer physical servers. l Reduce power consumption and cooling requirements. l Simplify the process of managing IT operations.
Upgrade software in a production environment faster and with reduced risk.
- For an overview of virtualization using VMware, see the following link: 
- For detailed information about VMware and vSphere, see the following link:
- https://www.vmware.com/products/vsphere.html

# Qualified VMware Versions
- Avid’s internal environment uses VMware vSphere 7.x (standard) to test and qualify on-prem
- MediaCentral Cloud UX virtual deployments. If you plan to deploy VMware v8.x or later, Avid recommends that you familiarize yourself with all new VMware product features and security protocols to ensure continued compatibility with any Avid products deployed on that version of VMware.
- Avid recommends applying security patches to the VMware host servers on a quarterly basis (at minimum). If higher security risks are identified, shorter intervals of time are recommended.
- Whenever planning an upgrade to the VMware software, you should make sure to plan for the appropriate down-time. Upgrades often require one or more reboots of the VMware servers. Additionally, Avid recommends taking a snapshot of the vCenter Server before any update.
- For complete details regarding VMware version compatibility, see 
- Definition of Terms

# Definition of Terms
- The following table defines some of the commonly used terms associated with virtualization:

- Virtualization	Refers to the act of creating a virtual (rather than actual) version of something, including (but not limited to) a virtual computer hardware platform, operating system (OS), storage device, or computer network resources.

| VM | Virtual machine |
| --- | --- |
| VMware host | Physical server with ESXi installed on it. Utilized for physical resources such as CPU, RAM, network, SAN connections, or local datastores. |
| ESXi | The OS of a VMware host server. This can refer to either the free release, or any one of the licensed editions. The same installer is used for all (same installation instance can have any of the licenses applied to it). |
| vCenter server | A server used to manage VMware host servers or vSphere clusters. vCenter provides tools and a central interface for managing all connected VMware hosts and VMs, including the ability to migrate VM's from one host to another using vMotion. vCenter also simplifies the process of updating your hosts using the VMware Update Manager component. If the VMware Update Manager is not used, administrators must update each host manually via the command line interface (CLI). |
| Virtual appliance | A pre-configured VM that’s available for importing into an existing vSphere environment. Often using a Linux OS. |
| vSphere | Combination of ESXi host servers and a vCenter server configuration. |
| vSphere client | A Windows or Mac system capable of connecting to the vSphere server. The connection is established through either a locally installed client application or a web portal. |
| vMotion | Also known as a migrate task, vMotion can be used to move a live VM from one host server, or one datastore, to another without any down time. Often coupled with shared storage. Storage vMotion can be within a single host server or SAN (or group of LUNs on a single SAN configuration/cluster). If an administrator needs to move a VM between host servers with only local datastores, the task is only available on a ‘cold’ (powered off) VM. |
| vSphere Fault Tolerance | vSphere Fault Tolerance provides continuous availability for virtual machines by creating and maintaining a Secondary VM that is identical to, and continuously available to replace, the Primary VM in the event of a fail-over situation. |
| vSphere HA | A feature that enables a cluster with High Availability. If a host goes down, all virtual machines that were running on the host are promptly restarted on different hosts in the same cluster. When you enable the cluster for vSphere HA, you specify the number of hosts you want to be able to recover. If you specify the number of host failures allowed as 1, vSphere HA maintains enough capacity across the cluster to tolerate the failure of one host. All running virtual machines on that host can be restarted on remaining hosts. By default, you cannot turn on a virtual machine if doing so violates required fail over capacity. |
| MPIO | Multi Path In/Out. A common configuration to improve performance with shared storage. |
| IOPS | Input/Output Operations Per Second. A unit of measure for datastores (local or shared). |
| vCPU | Virtual CPU |

- Managing and Monitoring Virtual Resources

- virtual core	Similar to the concept of physical processors cores and sockets, a virtual core is a subdivision of a virtual socket, For example, an Intel E5-2640 v3 Xeon processor has 8 cores per processor. A VM can be configured to have *X *virtual cores per virtual socket allocated to it. Such as 2 virtual sockets with 2 virtual cores each, giving the VM 4 vCPUs.

| LUN | Logical unit number. A reference to a logical grouping of drives. |
| --- | --- |
| VMXNET3 | VMXNET Generation 3. This is a virtual network adapter designed to deliver high performance in virtual machines (VMs) running on the VMware vSphere platform. VMXNET3 has the same features as the VMXNET2 adapter but with added functionality to minimize I/O virtualization overhead. To enable VMXNET3, VMs need to be on virtual hardware version 7 or later and may need VMware Tools installed, depending on which guest operating system (guest OS) is being used. VMXNET3 allows for 10 Gb (or higher) network speeds. If the VMware host’s network adapter is not capable of 10 Gb speeds, two VMs located on the same host can still take advantage of the higher bandwidth as the network traffic is not leaving the host server. |

# Managing and Monitoring Virtual Resources
- All virtual machines contain the following basic components:
- l An OS on a virtual disk l Virtual memory l Virtual processors (vCPU) l A virtual network adapter
- As long as the host resources are not oversubscribed, multiple VMs can run on the same host server. Host hardware and VM resource requirements can vary greatly, so the number of simultaneous virtual machines can also vary. System administrators must monitor resource usage to determine if the host can support additional VMs.
- Physical servers often benefit from more CPU resources than are needed without showing any negative effects. However, this is not the case for virtual machines. There are many cases where allocating more vCPUs actually results in performance degradation, especially if the applications on the VM are not multithreaded. When creating virtual machines, best practices suggest that you should allocate the minimum amount of resources to the VM and increase the resources as needed.

## VMware Networking Best Practices
- For an overview of networking in a VMware environment, see the *vSphere Networking *guide at the following location: 

## Working with Snapshots
- VMware Snapshots are not backups. A snapshot file is a change log of the original virtual disk. Do not rely on it as a direct backup process. The virtual machine is running on the most current snapshot, not the original virtual machine disk (VMDK) files.
- After creating a snapshot, the VM must read all information from the original image, plus the information in the change log. This inherently introduces performance degradation. Performance is further impacted if additional snapshots of the same VM are created. For this reason, it is best to avoid using snapshots with Avid virtual machines.
- Common VM Settings
For additional information on working with Snapshots, see “Best practices for using snapshots in the vSphere environment” (article ID:1025279) on the VMware Knowledge Base at: Monitoring VM Resources
- Avid recommends that you enable the following Alarm Definitions from within vCenter server:
- l Virtual machine CPU usage l Virtual machine memory usage l Host CPU usage l Host memory usage
- The trigger parameters should be left at the default settings. You must also enable email notifications and provide a monitored email address for these alarms.

# Common VM Settings
- The following settings are common recommendations across all configurations:
Enable “Memory Hot Plug” so that you can dynamically allocate RAM to the VM without shutting it down.
Avid does not recommend enabling the vCPU “Hot Add” feature as this can disable vNUMA support for the virtual machine which can lead to a degradation in system performance. If you need to add additional vCPUs, you must shut down the virtual machine and then increase the system resources. For more information on shutting down a MediaCentral Cloud UX server, see “Power Cycling and Maintenance Mode” in the *Avid MediaCentral | Cloud UX Installation Guide*.
VMXNET 3 is often the recommended network adapter for your operating system, but administrators must verify with VMware for specific support.
To protect your most sensitive virtual machines, deploy firewalls in virtual machines that route between virtual networks with uplinks to physical networks and pure virtual networks with no uplinks. l vSphere fault tolerance is not supported.

# Minimum Requirements
- This section provides information about the minimum requirements for both the VMware host and a MediaCentral Cloud UX virtual machine. Avid recommends that you meet or exceed the guidelines outlined below. Additionally, Avid recommends that you follow VMware best practices when setting up a system. For more information on VMware best practices, see: 
- n *When referring to the host, this document describes the requirements of a single VMware host server. Describing the requirements of a vCenter / vSphere cluster is out of the scope of this document.*
- Configuring No-Replica Nodes
- Avid supports deploying no-replica nodes in a virtual environment. No-replica nodes have different (generally lower) system requirements than standard control plane or worker nodes. For details on these requirements, see "Adding a No-Replica Cluster Node" in the *Avid MediaCentral | Cloud UX Hardware Guide*. For more information on no-replica nodes, see "Configuring Avid Ada Nodes" in the *Avid MediaCentral | Cloud UX Installation Guide*.
- If you plan to add a GPU to your no-replica node, see "Adding a GPU (optional)" on page 7.

## Memory Allocation, Processors, and Cores
- Provisioning the Host
- Minimum requirements and best practices:
Your host must include recent Intel Xeon processors, 2.0 Ghz or better (not older than 2 years since original availability). l Your host must have a minimum of 12 cores. l Configure the processors for maximum performance (do not use power saving settings).
The processors must allow AVX instructions to be passed to the operating system. This is a MongoDB requirement. For more information, see 
Avid performs all system qualification using Intel-based CPUs. Avid cannot ensure equivalent performance, functionality, or compatibility if your equipment includes processors from other vendors such as AMD, or others.
You must equip the VMware host with at least 192GB of RAM.
Administrators should generally reserve at least one core and 2 to 4 GB of RAM for the VMware host itself. Avid recommends that you provision the host with enough memory to provide the necessary requirements without exceeding 75% of the host server's total RAM.
- Allocating vCPUs and RAM
- The number of simultaneous playback streams, and media formats can all have an impact on the performance of the virtual machine. Depending on your workflow, you might need to allocate additional vCPUs and RAM.

| RAM and vCPU | 12 vCPU with 128GB RAM | 16 vCPU with 128GB RAM | 20 vCPU with 128GB RAM | 24 vCPU with 128GB RAM |
| --- | --- | --- | --- | --- |
| AVC Intra 100 | 4 Streams 70% VM CPU 28 GB RAM | 5 Streams 61% VM CPU 16 GB RAM | 6 Streams 59% VM CPU 16 GB RAM | 8 Streams 54% VM CPU 17 GB RAM |

- The following table provides a guideline for MediaCentral Cloud UX stream counts at multiple resolutions in various environments tested by Avid. In addition to stream counts, each column shows the peak CPU and memory usage of the VM for each resolution.

| DNxHD 145 | 9 Streams 67% VM CPU 18 GB RAM | 9 Streams 60% VM CPU 18 GB RAM | 10 Streams 46% VM CPU 17 GB RAM | 16 Streams 57% VM CPU 20 GB RAM |
| --- | --- | --- | --- | --- |
| XDCAM HD 50 | 15 Streams 73% VM CPU 36 GB RAM | 15 Streams 65% VM CPU 24 GB RAM | 18 Streams 60% VM CPU 17 GB RAM | 25 Streams 65% VM CPU 25 GB RAM |
| Proxy H.264 1080i | 50 Streams 65% VM CPU 29 GB RAM | 65 Streams 61% VM CPU 23 GB RAM | 90 Streams 68% VM CPU 32 GB RAM | 95 Streams 58% VM CPU 32 GB RAM |

## Adding a GPU (optional)
- Avid Ada Transcribe is an optional, licensed feature that creates transcripts of MediaCentral Production Management assets that include one or more audio tracks. The processing-heavy audio transcription tasks of the Transcribe workflow benefit greatly from the resources of an NVIDIA® GPU. Avid highly recommends adding an NVIDIA card to your environment if you plan to deploy the Avid Ada feature pack.
- If purchasing a video card, the GPU must be NVIDIA branded hardware. GPUs from other vendors, such as AMD®, are not compatible with this release of Avid Ada Transcribe.
- While Avid does not qualify or support any specific NVIDIA card, the following table provides some example statistics that compare the audio transcription rates for CPU and GPU enabled servers. The performance column shows the Avid Ada Worker's transcription rate for a single task.

| GPU Generation | GPU RAM | CUDA Cores | INT8 TOPS | Performance |
| --- | --- | --- | --- | --- |
| (CPU only) 4th Gen Intel® Xeon® @ 2.0 GHz | N/A | N/A | N/A | ~Real time |
| NVIDIA Ampere1 | 16GB | 1280 | 71 | ~35x real-time |
| NVIDIA Ada2 | 24GB | 7424 | 485 | ~70x real-time |

Tested with NVIDIA A16 (1 sub-card of the 4x physical sub-cards in an A16)
Tested with NVIDIA L4
- As evident from this data, the addition of a GPU significantly increases the transcription speed of audio assets — making the GPU essential for this workflow.
- If you plan to add NVIDIA hardware to your VMware host, you must ensure that the VMware is configured to pass the hardware to the virtual machine. For information on configuring an NVIDIA card, see "Installing an NVIDIA® Driver" in the *Avid MediaCentral | Cloud UX Installation Guide*.

## Networking
- If you are configuring a system with multiple ESXi hosts, the connection between the hosts must be 10GbE or better.

## Datastore and Storage
- Avid recommends that you provision your host with the following (or better):
If you are using a single host with internal storage, 8 SSD (solid state drives) configured as RAID 10 using a Hardware RAID controller with NVRAM of 1 GB or greater.
If you are using a SAN array that is shared between multiple hosts, SSDs are required.
Traditional HDD (spinning disk) drives are not supported.
- The amount of actual storage used per MediaCentral Cloud UX VM depends on the size of the databases, the number of cached assets, and more. However, you must note that storage space is not the only concern. Your storage's IOPS (input / output operations per second) is important factor that can impact the performance of your server, or even your ability to complete a successful deployment.
- Configuring Virtual Drives
- All MediaCentral Cloud UX deployments must be configured with two distinct volumes: l An OS volume on which the operating system and Avid applications are installed.
A Data volume that is used to store various databases, Hoverscrub proxies, playback cache data, and more.
- The data volume hosts the MongoDB database which stores information about user login (avid-iam) and license data. This makes the data volume a requirement for all deployment types.
- The following table lists the recommendations for the virtual volumes:

| Configuration | OS volume | Data volume |
| --- | --- | --- |
| MediaCentral Cloud UX (with playback support) | 500 GB (minimum) | 500 GB (minimum) |
| MediaCentral Cloud UX (without playback support)* | 500 GB (minimum) | 500 GB (minimum) |

- * For example a Newsroom Management-only workflow, or a dedicated MediaCentral Cloud UX Licensing Server.
- While all MediaCentral Cloud UX deployments require two distinct volumes, Avid supports virtual machines that use a single disk that is partitioned into two volumes. In this case Avid recommends allocating at least 25% of the disk space to the Data partition, with a minimum size of 50GB.
- Volume Provisioning
- VMware allows you to configure the volumes in one of two ways: thick or thin provisioning. Avid recommends that you configure both the OS and Data volumes as Thick Eager Zero.
- Search Index Considerations (data volume)
- The data volume hosts the Elasticsearch database that is used by the Search app to store information about local and (if applicable) remote assets that are indexed as part of a multi-site configuration. The size of this database can vary based on your deployment type and it’s important to understand how this database can impact your storage requirements.
- You can use the following general guidelines on the search index requirements to help you determine your storage needs:
Asset Management (1 million assets, no multi-site)
MongoDB: ~3.0 GB
Elasticsearch: ~6.1 GB (no replica shard) or ~12.2 GB (cluster with 1 replica shard) l Production Management (1 million assets, no multi-site)
MongoDB: ~0.3 GB
Elasticsearch: ~2.1 GB (no replica shard) or ~4.2 GB (cluster with 1 replica shard) l Newsroom Management (500,000 assets, no multi-site)
MongoDB: ~5.9 GB
Elasticsearch: ~2.2 GB (no replica shard) or ~4.4 GB (cluster with 1 replica shard)
- For comparison, the Newsroom Management starter database (~30k assets) uses approximately 470MB for MongoDB and 150MB for Elasticsearch.
- For more information, see .
- Playback Cache (data volume)
- In several workflows, MediaCentral Cloud UX generates and locally caches transcoded media assets and system files. These workflows include:
Working with multi-cam assets from a MediaCentral Production Management system — JPEGs of the multi-cam frames are stored on the data volume.
Media playback for MediaCentral mobile apps where the data volume is used to store MPEG-2TS (Transport Stream) media files that can be streamed to the app.
- In these workflows MediaCentral Cloud UX must locally generate a compliant copy of the source media asset. This asset is then served to the requesting application. The asset is also cached in anticipation of subsequent playback requests. In the case of multi-server deployments (a cluster), the cached assets are replicated across the servers to reduce future transcoding of the same asset on a different playback server.
- Cached media assets are stored on the volume until space is required for new assets. MediaCentral Cloud UX monitors the storage and automatically removes older files when the disk space falls below 40% free space. This process is limited to media assets and does not affect non-media files such as databases.
- In addition to the above workflows, the data volume might also be used for the following: l AAF sequence data from MediaCentral Production Management l (Enterprise Editing) Draft sequence data
- SeaweedFS
- SeaweedFS is an open-source Amazon Simple Storage Service (S3) compliant shared storage system that might be deployed on your MediaCentral Cloud UX system. The local (no outgoing / internet traffic) SeaweedFS instance is used to host temporary files that are created during the transcribe process of the Avid Ada Transcribe workflow. Temporary files are removed automatically from the system as part of the transcription process.
- If deployed by a workflow that has a dependency on this feature (such as Avid Ada Transcribe), MediaCentral Cloud UX allocates ~32GB of space on the Data volume to SeaweedFS. However it is possible to allocate more space if required. For additional information on that process, see "Reconfiguring SeaweedFS Volumes" in the *Avid MediaCentral | Cloud UX Installation Guide*.
- System Monitoring
- If you plan to deploy System Monitoring and you plan to use a MediaCentral Cloud UX server as a logging node, Avid recommends that you mount the monitoring data root directory
- (/var/data/local/pv/mon) to a dedicated disk or a dedicated partition of at least 150GB of an existing disk.

- Installing MediaCentral Cloud UX
- For more information on this feature, see “Enabling System Monitoring” in the *Avid MediaCentral | Cloud UX Installation Guide*.

# Installing MediaCentral Cloud UX
- When you initially create the virtual machine through VMware, the VM represents virtual hardware only. As with any installation, software must be added to create a fully functional system. In this section you will configure the virtual machine’s BIOS and be directed to additional resources that will allow you to install the operating system and the MediaCentral Cloud UX software.
- Open VM Tools optimizes your operating system for use in a virtual environment. You are not required to manually install Open VM Tools on your MediaCentral Cloud UX virtual machine as Ubuntu installs this feature for you automatically. For more information, see the following:
- l l 
- Refer to the *Avid MediaCentral | Cloud UX Installation Guide *for complete installation instructions. This document is available on the Avid Knowledge Base at:
- https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation
- To install MediaCentral Cloud UX on a virtual machine:
Use VMware to boot into your server’s virtual BIOS and configure settings as applicable to your installation or version of VMware:
Configure the System Time and System Date.
Set the virtual floppy drive “Legacy Diskette A” to Disabled.
Adjust the Boot Order as desired.
After reading the “Installation Prerequisites” chapter of the *Avid MediaCentral | Cloud UX*
- *Installation Guide*, continue to the “Software Installation and Configuration” section of the guide to begin the installation process.
- n *As the volumes associated with virtual machines should not include any pre-configured system partitions, you can skip the process for “Verifying Disk Partitioning” in the Software Installation and Configuration chapter of the guide.*
Continue to follow the instructions in the *Avid MediaCentral | Cloud UX Installation Guide *to complete the software installation and configuration process.
- From this point forward, the processes that are detailed in the Installation Guide apply to both dedicated server hardware and virtual machines. Avid supports deploying MediaCentral Cloud UX as either a single-server or a clustered configuration in a virtual environment.

# Search Grid Recommendations
- Nexidia Search Grid™ is a framework of services that MediaCentral Cloud UX uses to perform phonetic indexing of audio media for use with MediaCentral | Phonetic Index and the MediaCentral Cloud UX Search app.
- Avid supports installing and configuring Search Grid in a virtual environment. When sizing the VM, you must use the same recommendations that are specified in the “Search Grid Prerequisites” section of the *Avid MediaCentral | Cloud UX Installation Guide*.
- Search Grid Recommendations
Legal Notices
- Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
- This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
- This product may be protected by one or more U.S. and non-U.S patents. Details are available at .
- No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
- Copyright © 2025 Avid Technology, Inc. and its licensors. All rights reserved.
- Portions © Copyright 2003-2007 of MOG Solutions.
- Attn. Government User(s). Restricted Rights Legend
- U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
- Trademarks
- Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: 
- Avid MediaCentral | Cloud UX Best Practices for VMware® • Created Thursday, June 26, 2025 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.