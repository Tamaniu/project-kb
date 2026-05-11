---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2023.7"
release-date: 01/07/2023
doc-type: hardware-guide
source: avid-official
confidentiality: public
date-added: 16/04/2026
status: current
feature-tags: [system-requirements, hardware]
---

- ™
Avid MediaCentral | Cloud UX
Hardware Guide v2023.7
- Important Information
- Updates are occasionally issued after initial release. For the most up-to-date version of the documentation, see the     page of the   
- This document is intended for people who need to make MediaCentral Cloud UX (MCCUX) hardware purchasing decisions, or advise on this topic. This guide assumes that you have a basic understanding of server components (CPU, RAM, etc.). If you plan to install MediaCentral Cloud UX in a virtual environment, see the Virtualization Guidelines documentation on the Avid Knowledge Base (link above). Revision History

| Date Revised | Changes Made |
| --- | --- |
| September 20, 2023 | As of MediaCentral Cloud UX v2021.3, Avid required organizations to procure Solid State Drives (SSD) for the OS volume for all new installations. When Avid announced this change in July 2021, solid state storage was encouraged for the Data volume, but it was not required. This update serves as an announcement that MediaCentral Cloud UX 2023.7 is the last release to support traditional “spinning disk” HDD’s for all MediaCentral Cloud UX storage. Future releases will support SSD storage only. Organizations that are still using standard HDD’s should begin to plan for a hardware upgrade to prepare for future Feature or LTM releases of MediaCentral Cloud UX. |
| July 27, 2023 | First Publication |

# Contents
	Buying Hardware for MediaCentral Cloud UX	2
- Operating System  3
	Storage Requirements	 3
	Networking Requirements	 6
	Deploying Multiple Servers	 7
	Adding Servers to an Existing Installation	7
- 8
	Determining Scale	9
- Buying Hardware for MediaCentral Cloud UX

# Buying Hardware for MediaCentral Cloud UX
- The MediaCentral | Cloud UX Program Team no longer qualifies specific hardware vendors or server models as was common in prior versions of software. You can purchase server hardware from any vendor as long as the specifications of that hardware meet or exceed the minimum requirements that are outlined in this document.
- The hardware provisioning process is straightforward in that it is easy to configure a single server that covers a wide range of functionality. However, varying workflows and optional video playback methods can add complexity to the process.
- A number of factors might affect your hardware purchasing decision:
Deployment Scale: The type of deployment is the primary influence on server requirements. A Newsroom Management only deployment without video playback has the lowest processing needs. MediaCentral Production Management and MediaCentral Asset Management deployments require more CPU resources, due to the media transcoding requirements.
Media Formats: The next biggest consideration is the source media format. For example, DNxHD is a resource-intensive media format while Avid JFIF is lightweight in comparison.
Number of Users: The number of expected users and the method through which those users connect to the system (desktop web client vs mobile device) might affect the hardware specifications.
- The following table summarizes the basic cases for single-server and cluster configurations. For more information on clusters, see " Deploying Multiple Servers" on page 7.

| Server Count | Deployment | Description |
| --- | --- | --- |
| 1 | Single Server | The minimum deployment model. This is most suitable for Newsroom Management-only workflows in which there is no media playback requirement. This option might also apply to environments with few users and / or undemanding transcoding requirements. This solution offers some hardware redundancy (dual power supplies, dual internal drives), but little redundancy for system services. |
| 3 + | Cluster | This solution offers redundancy for both hardware and system services. It adds increased peak-usage and media transcoding capacity. Deploying multiple servers in a cluster is particularly important for sites with many users and / or resource-hungry media formats. For example, a single server can support the simultaneous playback of over 100 Avid JFIF media streams, but only 15 streams of AVC Intra 50. |

- Memory Requirements
- The majority of all MediaCentral Cloud UX servers require a minimum of 128GB of RAM. If desired, more RAM can be added to the server to potentially support additional users or steam counts.
- For details on exceptions to this requirement, see " Over-Specifying and Under-Specifying the Hardware" on page 8 and "Determining Scale" on page 9.
- Operating System
- CPU Requirements
- Avid performs all system qualification using Intel-based CPUs and therefore requires Intel processors for all MediaCentral Cloud UX deployment types. Avid cannot ensure equivalent performance, functionality, or compatibility if your equipment includes processors from other vendors such as AMD, or others.
- You must adhere to the following guidelines when selecting a processor:
Recent Intel Xeon CPU (not older than 2 years since original availability) l 16 or more cores l 2.0 Ghz or better
Non-energy saving CPU models (e.g. a performance model)

# Operating System
- MediaCentral Cloud UX is supported on Canonical Ubuntu — an open source, Linux-based operating system. Organizations must download a copy of Ubuntu Server LTS (Long Term Support) from  and install it on their MediaCentral Cloud UX server prior to installing any Avid software. Refer to the    on the Avid Knowledge Base for supported version information.
- Whenever considering a hardware purchase, you must ensure that you adhere not only to the Avid system requirements that are outlined in this document, but also to Ubuntu’s system requirements. For more information on these requirements, visit: 
- Ubuntu Technical Support
- Organizations can purchase paid support plans directly from Canonical Ltd. Ubuntu also has an active community forum that can serve as a useful troubleshooting tool when needed. You can find more information about these options at the following links:
Canonical support plans:
- https://ubuntu.com/support
Additional information about Ubuntu technical support:
- l The Ubuntu Forum Community: 

# Storage Requirements
- The majority of MediaCentral Cloud UX deployments are configured with two distinct volumes:
A RAID 1 volume consisting of a mirrored set of two physical drives. This is where the operating system and Avid applications are installed.
A RAID 5 volume consisting of multiple physical drives (usually 6 to 8). These drives are used to store various databases, Hoverscrub proxies, playback cache data, and more.
- Avid requires organizations to procure Solid State Drives (SSD) for the operating system volume. This requirement applies to both new installations and upgrades to v2021.11 or later. Solid state storage is encouraged, but not required for the RAID 5 data volume.

- Storage
- When selecting an SSD, you must ensure that the device’s interface type (SAS, SATA, NVMe, or other) is compatible with your server. While certain technologies such as NVMe might offer a performance increase over some other interface types, all SSD storage is considered faster than traditional HDD (spinning disk). Due to this general performance increase, Avid does not define or require a minimum transfer rate at this time. Avid recommends that organizations purchase storage that is optimized for mixed performance (read / write / delete) and not devices that are optimized for read-only. This is especially true if you are considering SSD for the RAID 5 volume.

## Data Volume Information and Considerations
- The *Avid MediaCentral | Cloud UX Installation Guide *instructs administrators to create a /var/data logical volume during the Ubuntu installation and configuration process. This volume is typically created on a separate RAID 5 array.
- This section includes more specific information on how MediaCentral Cloud UX uses this volume, and how these needs might affect your purchasing decisions.
- Search Index Considerations
- The data volume hosts the Elasticsearch database that is used by the Search app to store information about local and (if applicable) remote assets that are indexed as part of a multi-site configuration. The size of this database can vary based on your deployment type and it’s important to understand how this database can impact your storage requirements.
- You can use the following general guidelines on the search index requirements to help you determine your storage needs:
Asset Management (1 million assets, no multi-site)
MongoDB: ~3.0 GB
Elasticsearch: ~6.1 GB (no replica shard) or ~12.2 GB (cluster with 1 replica shard) l Production Management (1 million assets, no multi-site)
MongoDB: ~0.3 GB
Elasticsearch: ~2.1 GB (no replica shard) or ~4.2 GB (cluster with 1 replica shard) l Newsroom Management (500,000 assets, no multi-site)
MongoDB: ~5.90. GB
Elasticsearch: ~2.2 GB (no replica shard) or ~4.4 GB (1 replica shard)
- For comparison, the Newsroom Management starter database (~30k assets) uses approximately 470MB for MongoDB and 150MB for Elasticsearch.
- Playback Cache
- In several workflows, MediaCentral Cloud UX generates and locally caches transcoded media assets and system files. These workflows include:
Working with multi-cam assets from a MediaCentral Production Management system — JPEGs of the multi-cam frames are stored on the data volume.
Media playback for MediaCentral mobile apps where the data volume is used to store MPEG-2TS (Transport Stream) media files that can be streamed to the app.
- In these workflows MediaCentral Cloud UX must locally generate a compliant copy of the source media asset. This asset is then served to the requesting application. The asset is also cached in anticipation of Storage
- subsequent playback requests. In the case of multi-server deployments (a cluster), the cached assets are replicated across the servers to reduce future transcoding of the same asset on a different playback server.
- Cached media assets are stored on the volume until space is required for new assets. MediaCentral Cloud UX monitors the storage and automatically removes older files when the disk space falls below 40% free space. This process is limited to media assets and does not affect non-media files such as databases.
- In addition to the above workflows, this volume might also be used for: l AAF sequence data from MediaCentral Production Management l (Enterprise Editing) Draft sequence data
- System Monitoring
- If you plan to deploy System Monitoring and you plan to use a MediaCentral Cloud UX server as a logging node, Avid recommends that you mount the monitoring data root directory
- (/var/data/local/pv/mon) to a dedicated disk or a dedicated partition of at least 150GB of an existing disk.
- For more information on this feature, see “Enabling System Monitoring” in the *Avid MediaCentral | Cloud UX Installation Guide*.

## Data Volume Configuration Options
- As noted above, a dedicated data volume is required for most workflows. Certain exceptions apply — such as when configuring a dedicated subscription licensing server.
- When a data volume is required, you must create it on separate and distinct disk(s) from the RAID 1 operating system volume. Avid supports the following configuration options:

| Drives | Volume Configuration and Notes |
| --- | --- |
| 1 | A single solid state drive (SSD) configured as a separate volume (500GB or greater recommended). This configuration provides no redundancy in case of hard drive failure. |
| 2 | 2 solid state drives (500GB or greater recommended) configured as a RAID-1 volume. This configuration provides redundancy in case one of the hard drives fails. |
| 6 or 8 | Solid state (preferred) or spinning disk drives configured as a RAID-5 volume. This configuration provides redundancy in the event of a drive failure. It also provides increase I/O for a higher volume of proxy generation and serving. |

- Networking

# Networking Requirements
- Avid requires that all servers are wired to your house network with a Cat 5e, 1Gb connection or greater. Certain workflows require the increased bandwidth of a 10 Gb network adapter. For example:
10 Gb connections are required for any MediaCentral Cloud UX deployment that intends to use 100+ Mbps video formats such as AVC-I 100, DVCPro 100, and DNxHD 145.
10 Gb connections are required for any site that plans to participate in a Remote Send To Playback workflow in which local assets are transferred to a remote server that is not part of your local area network.
10 Gb connections might also be desired or required to enable increased client connections or playback streams.
- Supported Adapters
- If you plan to connect to an Avid NEXIS system, you must consult the Avid NEXIS documentation to verify that you are provisioning a supported network adapter. The adapter that you purchase must be compatible with both the shared storage, and your selected hardware vendor. For more information, see the following link to the Avid Knowledge Base:
- https://kb.avid.com/articles/en_US/User_Guide/Avid-NEXIS-Documentation

## Zone Recommendations
- You can connect to Avid NEXIS using a 1 Gb or greater connection in Zone 2 or Zone 3. A Zone 3 connection is recommended for all configuration types.
Zone 2: Connected through a 1 Gb or 10 Gb port on an Avid qualified layer-2 switch (non-routed).
Zone 3: Connected to an Avid qualified layer-3 switch (routed) with known Quality of Service (QoS); traffic routed to Avid shared storage (one hop).
- MediaCentral Newsroom Management
- Newsroom Management-only deployments do not require a connection to a storage system as there is no video playback component. The network connection is at the user’s discretion as long as it is 1 Gb or better.
- MediaCentral Production Management
- In this workflow MediaCentral Cloud UX decodes the source media format on Avid NEXIS and streams images and sound to the clients. Zone 2, or Zone 3 (recommended) connections are supported.
- MediaCentral Asset Management
- In this workflow MediaCentral Cloud UX provides playback of video assets registered as browse proxies by Asset Management. The zone is determined by the location of the browse proxies:
For non-Avid storage, the network connection is at the user’s discretion as long as it is 1 Gb or better. l For Avid NEXIS, Zone 2, or Zone 3 (recommended) connections are supported.

- Deploying Multiple Servers

# Deploying Multiple Servers
- The resolutions and playback methods available through MediaCentral Cloud UX have very different CPU and I/O footprints. Therefore, determining the number of servers required for a given installation can be challenging. The two factors that determine the quantity of servers required for a MediaCentral Cloud UX deployment are *redundancy *and *horizontal scale*.

## Redundancy
- Each MediaCentral Cloud UX deployment requires at least one server. However, in most cases Avid recommends deploying three or more servers to obtain high-availability and service redundancy.
- So, the first question you have to answer when trying to determine how many servers are needed is:
*Is high-availability required?*
If the answer is no, then one server might be sufficient. Additional servers are required if concurrent usage peaks are not satisfied by the playback capacity of a single server.
If the answer is yes, then three or more servers are required. Additional servers are required if concurrent usage peaks are not satisfied by the playback capacity of the first three nodes.
- Each MediaCentral Cloud UX server is identified as a *node*. In a cluster configuration, you can have Control Plane nodes, Worker nodes, or a node that fills both roles. Control Plane nodes are responsible for coordinating activities across the cluster. Worker nodes are generally more passive in that they run pods, but do not manage them. Nodes that are identified as both a control plane and a worker have enough resources to both coordinate activities and run pods.
- The first three cluster nodes operate as both control plane and worker nodes. All other nodes are simply worker nodes. When creating a MediaCentral Cloud UX cluster, Avid requires a minimum of three cluster nodes. Two node configurations are not supported.
- n *While most MediaCentral Cloud UX systems and services are highly available through a cluster configuration, some systems are not. In some circumstances, a system outage could occur through the loss of a control plane node. For more information, see “MediaCentral Cloud UX Clustering” in the Avid MediaCentral | Cloud UX Installation Guide.*

## Horizontal Scale
- The playback services are the most CPU and memory intensive component of the system. They are designed to run on all servers in the cluster such that playback sessions are distributed, or load-balanced, across all servers. This allows for horizontal scale—adding servers in a cluster to accommodate increased capacity.

# Adding Servers to an Existing Installation
- Over time, an organization might wish to expand a single server to a cluster configuration or potentially add nodes to an existing cluster. When making a purchase, the organization might not be able to obtain server hardware that matches the specifications of the original hardware. Avid supports mixing server hardware for a cluster configuration as long as the following criteria are met:
Mixed processor speeds and RAM are supported between the servers. However, all servers should meet the "Memory Requirements" on page 2.
Mixed server generations are supported. For example, an HPE Gen 9 server and an HPE Gen 10 server are supported together in the same cluster.
Avid supports mixing servers from different hardware vendors in the same cluster.
- Over-Specifying and Under-Specifying the Hardware
If you mix different server types within a cluster, some nodes might include more CPU cores than other nodes in the cluster. In this case the node with the fewest number of cores can limit the overall scalability of the whole system. Kubernetes distributes CPU intensive pods across all nodes equally and it does not take the individual core-count into consideration. To avoid impacting system performance — especially to the player and search services, Avid recommends that you maintain an equal number of CPU cores across all nodes.
RAID 1 (OS) and RAID 5 (data) drive sizes do not need to be identical between the servers. If the a server includes a larger volume than another, some space will be left unused. For example if ServerA includes a 2TB data volume, and Server-B includes a 3TB data volume, 1TB of space will be left unused on Server-B.
While mixing 1 Gb and 10 Gb network adapters between the servers is possible, it is not recommended. Avid has not specifically tested clusters containing a mix of 1 Gb and 10 Gb adapters.

# Over-Specifying and Under-Specifying the Hardware
- Over-Specifying Hardware
- If you need to provision a system for a large number of users or high-density media formats (e.g. AVC-I 50/100), you might want to obtain a more powerful server that would be more appropriate for these workflows. Over-specifying hardware is supported in all cases.
- Customers can provision additional RAM, solid state drives with either larger capacity or higher I/O ratings, or more powerful CPUs to increase the performance of their MCCUX system. However due to the near infinite number of combinations of asset codecs, hardware options, and other variables, Avid cannot provide precise performance measurements.
- Under-Specifying Hardware
- In some cases a price-sensitive customer that requires a deployment with fewer users or playback streams might want to provision a more cost effective server because they do not need the capacity of the servers specified in this document. Under-specifying hardware is supported in *some *cases.
Subscription License Server
- For detailed information, see "Subscription License Server" on the next page.
MediaCentral Newsroom Management
- If you configure MediaCentral Cloud UX with only the MediaCentral Newsroom Management module, video playback is not invoked by this configuration. In this case the CPU and memory requirements are reduced. Hardware for this configuration must meet the following minimum requirements:
Recent Intel Xeon CPU (not older than 2 years since original availability) with 4 or more cores.
Memory: 64GB of RAM
All other configurations
- All other under-specified deployments must provision no less than the following:
Recent Intel Xeon CPU (not older than 2 years since original availability) with 8 or more cores. – Memory: 64 GB of RAM
- Your operating system volume must include at least 500GB of usable space. Due to the loss of space incurred during the formatting process, this likely means that you need to provision drives that are over 500GB.
- You must consult Avid Product Management before considering any purchase of an under-specified configuration.
- c If you under-specify your hardware configuration, you might experience negative system performance. This could result in reduced FPS (frames per second) during playback, delayed response time for the user interface, or system instability as the services fight for under-provisioned system resources.

# Determining Scale
- The needs of each MediaCentral Cloud UX deployment can vary depending on the workflow that you plan to enable. This section includes more information on each workflow.

## Subscription License Server
- Organizations that plan to license their Newsroom Management or Production Management modules with a subscription (Flex) license must connect to a MediaCentral Cloud UX system to enable this workflow. If your organization does not already own a MediaCentral Cloud UX system, you can elect to deploy a server that is dedicated to this task. In this configuration Avid expects that you do not deploy any additional feature packs, and that you do not have any users signing into the MediaCentral Cloud UX system (other than an administrator).
- If you need to deploy a MediaCentral Cloud UX server for the sole purpose of running the licensing service, you can use the following minimum specifications to complete this task. This assumes that you have not
- deployed any additional feature packs, and that you do not have any clients signing into the MediaCentral Cloud UX system (other than an administrator).
- l CPU with 8 cores at 2GHz+ l 32 GB RAM l 200GB HDD
- If you want to enable any workflow in which clients connect to the server, these specifications no longer apply.

## Asset Management Only
- MediaCentral Cloud UX can be leveraged as a player for the MAM Desktop application in MediaCentral Asset Management systems. In this case the MCCUX user interface might be accessed only for certain administrative tasks and not by a larger user base. MediaCentral Cloud UX provides playback of different video asset formats registered as a browse proxy in the Asset Management database and residing on standard file system storage or proprietary storage that provides a standard system gateway.
- Unlike MediaCentral Cloud UX, playback in MediaCentral Asset Management is very rarely I/O bound.
- Most Asset Management deployments are on a network that can sustain many, many playback requests.
- Typically the MediaCentral Cloud UX servers specified in this document can:
Support ~120 frame-based playback streams (growing files) of most Asset Management proxy formats. (Variable speed playback reduces the number of streams per server by ~50%.)
Serve ~4000 H.264 proxy files (provided there is enough outbound network connectivity and proxy storage disk I/O).
Process ~30 video analysis requests.

- General Project Information
- Avid Sales and Product Management are generally consulted for each MediaCentral Asset Management deployment. In some cases (very small deployments), a smaller, less expensive server specification will be recommended (fewer, lower frequency cores, less RAM).
- Having answers to the following questions will help Avid Product Management asses the project:
Provide a brief description of the project with specific goals.
Does the project require high-availability?
- *This is separate from adding servers to accommodate capacity*.
On which storage solution and/or file system are the proxies stored?
- *If the storage system is proprietary, please indicate the standard file system gateway through which MCCUX will mount it (e.g., Omneon MediaGrid via CIFS)*.
- For each registered browse proxy format, answer the following questions:
What is the proxy format?
- *This relates to the file container and the codecs used for video and audio essences*.
What is the expected peak of concurrent streams for this format?
- *For example, there may be 100 users, but only 25 users at any given time will be working with assets using this proxy format*.
Do users of this format require playback of growing files?
- *Only MPEG-1 and Sony XDCAM Proxy formats are supported for this workflow*.
How many streams of variable speed playback are required?
- *MediaCentral Asset Management can provision permission to use variable speed playback. As it is a CPU intensive playback method, it should only be provisioned to users who really need it*.
What is the maximum video image resolution (for example, 720x406 pixels)?
What is the maximum proxy bit rate (for example, 3.0 Mbps.)?

## Production Management or Mixed Workflows
- This section details how the video resolution can affect the system performance and the number of users that can connect to the server. Although this section is focused on MediaCentral Production Management workflows, your configuration might also include integration with MediaCentral Newsroom Management, or other workflows.
- To determine the number of servers you need to support your deployment of MediaCentral Cloud UX, you need to know the following information:
Which media formats are in use (e.g. DNxHD 145, XDCAM50, H.264 800Kbps proxy)? l How many users (peak usage) are expected for each format? l Are any users connecting through the MediaCentral mobile apps? l What is the speed of the network interface that is used to connect to Avid NEXIS (1 Gb or 10 Gb)?
Do you require a clustered configuration?
You must provision a minimum of three servers to enable a MediaCentral Cloud UX cluster.
(*n *+ 1) An additional server that allows for peak expected capacity even if one server fails.
- About Video Playback
- MediaCentral Cloud UX supports playback of a variety of video formats registered by MediaCentral Production Management and residing on Avid NEXIS shared storage. MCCUX decodes the source format and streams images and sound to the MediaCentral Cloud UX client.
- MediaCentral playback capacity is limited by one of two factors:
*CPU bound*: after a certain number of playback streams, the server has no more CPU cycles left l *I/O bound*: after a certain number of streams, the server’s network bandwidth becomes saturated
- Different source formats have different CPU-decode profiles, and different I/O footprints. Typically: low bit rate source formats are CPU bound; high-bit rate source formats are I/O bound.
- The other factor that determines whether a source format is CPU or I/O bound is the network connection, which could be 1 Gb or greater.
- Media Format and Stream Count Assessment
- To determine the number of users you can support, you need to know which media formats are in use, as the server can support a certain number of concurrent playback streams per format.
- Some notes about the following two tables:
The first table provides values for a server populated with Intel Xeon E5-2650 v1 (Sandy Bridge) CPUs. The second table provides information on many of the same formats with the server populated with Intel Xeon E5-2650 v2 (Ivy Bridge) CPUs.
Stream counts with green shading indicate a CPU bound limit (the server is using its full compute capacity).
Stream counts with orange shading indicate an I/O bound limit (the server can process more streams, but is limited by the 1 Gb network connection).
100+ Mbps formats are not supported (NS) over a 1 Gb connection to Avid shared storage, as not enough streams can be processed to be cost effective.
Mobile encoding always points to high-res media to ensure good quality for the WiFi-stream.
- Information on low-res proxy formats is provided in case high-res media is unavailable l Information on some formats was not available (NA) at time of publication.
- Intel Xeon Sandy Bridge CPU

	Format	1 Gb	10 Gb	1 Gb	10 Gb

| DNxHD 80-145; DVCPRO-HD | NS | 16 10 | NS | 16 10 |
| --- | --- | --- | --- | --- |
| AVC Intra 100 | NS | 16 10 | NS | 16 10 |
| AVC Intra 50 | 10 | 10 | 10 | 10 |
| Avid JFIF 1:1 | NA | 27 90 190 124 24 | NA | 27 50 50 50 24 |
| Avid JFIF 2:1/3:1 | NA | 27 90 190 124 24 | NA | 27 50 50 50 24 |
| Avid JFIF 4:1/8:1/15:1 | NA | 27 90 190 124 24 | NA | 27 50 50 50 24 |
| Avid JFIF 10:1/20:1 | NA | 27 90 190 124 24 | NA | 27 50 50 50 24 |
| DNX 36-45, XDCAM HD 50 | 12 | 27 90 190 124 24 | 12 | 27 50 50 50 24 |

	Format	1 Gb	10 Gb	1 Gb	10 Gb

| XDCAM EX 35, IMX50 | 16 18 12 20 | 42 36 56 42 | 16 18 12 20 | 42 36 50 42 |
| --- | --- | --- | --- | --- |
| XDCAM HD 17.5/35 | 16 18 12 20 | 42 36 56 42 | 16 18 12 20 | 42 36 50 42 |
| DV50 | 16 18 12 20 | 42 36 56 42 | 16 18 12 20 | 42 36 50 42 |
| DV 25; IMX 30/40 | 16 18 12 20 | 42 36 56 42 | 16 18 12 20 | 42 36 50 42 |
| Proxy H.264 | 120 80 | 120 80 | 50 50 | 50 50 |
| Proxy H.263 | 120 80 | 120 80 | 50 50 | 50 50 |

- Intel Xeon Ivy Bridge CPU

	Format	1 Gb	10 Gb	1 Gb	10 Gb

| AVC Intra 50 | 10 | 15 | 10 | 10 |
| --- | --- | --- | --- | --- |
| AVC Intra 100 | NS | 14 110 20 16 22 24 85 53 40 68 70 40 34 | NS | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| Avid JFIF 2:1/20:1 | NA | 14 110 20 16 22 24 85 53 40 68 70 40 34 | NA | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| DNxHD 145 | NS | 14 110 20 16 22 24 85 53 40 68 70 40 34 | NS | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| DNxHD 220x | NS | 14 110 20 16 22 24 85 53 40 68 70 40 34 | NS | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| DNxHD 100 | NS | 14 110 20 16 22 24 85 53 40 68 70 40 34 | NS | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| DNX 45 | 12 30 12 16 28 28 18 12 | 14 110 20 16 22 24 85 53 40 68 70 40 34 | 12 20 12 16 20 16 18 12 | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| DV 25 | 12 30 12 16 28 28 18 12 | 14 110 20 16 22 24 85 53 40 68 70 40 34 | 12 20 12 16 20 16 18 12 | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| DV50 | 12 30 12 16 28 28 18 12 | 14 110 20 16 22 24 85 53 40 68 70 40 34 | 12 20 12 16 20 16 18 12 | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| XDCAM EX 35 | 12 30 12 16 28 28 18 12 | 14 110 20 16 22 24 85 53 40 68 70 40 34 | 12 20 12 16 20 16 18 12 | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| IMX 30/40 | 12 30 12 16 28 28 18 12 | 14 110 20 16 22 24 85 53 40 68 70 40 34 | 12 20 12 16 20 16 18 12 | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| IMX 50 | 12 30 12 16 28 28 18 12 | 14 110 20 16 22 24 85 53 40 68 70 40 34 | 12 20 12 16 20 16 18 12 | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| XDCAM HD 17.5/35 | 12 30 12 16 28 28 18 12 | 14 110 20 16 22 24 85 53 40 68 70 40 34 | 12 20 12 16 20 16 18 12 | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| XDCAM HD 50 | 12 30 12 16 28 28 18 12 | 14 110 20 16 22 24 85 53 40 68 70 40 34 | 12 20 12 16 20 16 18 12 | 10 50 16 16 16 24 42 50 42 42 42 36 24 |
| Proxy H.264 | 120 80 | 120 95 | 50 50 | 50 50 |
| Proxy H.263 | 120 80 | 120 95 | 50 50 | 50 50 |

- Intel Xeon Haswell and Broadwell CPU
- For stream counts on supported MediaCentral Cloud UX servers equipped with Intel Xeon Haswell and Broadwell CPUs, reference the “"Intel Xeon Ivy Bridge CPU" above” table. The stream count tests conducted for XAVC and AVC-ULTRA resolutions below used servers equipped with Haswell and Broadwell CPUs. See the table below for details.
- Intel Skylake CPU
- The following performance results were collected using MediaCentral Cloud UX v2018.11 with a 10Gb network connection to Avid NEXIS shared storage on the following servers: l HPE DL360 Gen10, 2x Gold 6130 @2.10GHz, 32 cores, 128GB RAM l Dell R640 2x Silver 4114 @2.20GHz, 20 cores, 128GB RAM

| Server Type | XDCAM HD50 | XDCAM HD35 | XDCAM EX35 |  | DVC Pro | DNX 45 | DNX 145 | DNX 220x |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| DL360 | 36 | 40 | 40 |  | 21 | 36 | 18 | 13 |
| R640 | 30 | 34 | 35 |  | 21 | 31 | 18 | 12 |
|  |  |  |  |  |  |  |  |  |
| Server Type | HDV 1080 | AVCI 50 | AVCI 100 | DNX HD100 |  | AVC LongG 720p G12 | XDCAM HD50 with 64 audio tracks | XDCAM HD50 with 64 audio tracks |
| DL360 | 45 | 18 | 13 | 25 |  | 36 | 31 | 31 |
| R640 | 42 | 13 | 11 | 22 |  | 33 | 27 | 27 |

- Sony XAVC Long GOP Support
- The following table detail XAVC Long GOP playback support. These metrics were collected from an HPE DL360 Gen9, v4 E5-2683 (Broadwell) / 2.1ghz / 16 core, 10Gb.

| 25 1080i 59.94 | 35 1080i 59.94 | 50 1080i 59.94 | 25 1080i 50 | 35 1080i 50 | 50 1080i 50 | 50 720p 50 | 50 720p 59.94 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 4* | 2* | 1* | 5* | 2* | 1* | 29* | 27* |

Frame rate not guaranteed. Frame rate might temporarily be reduced during playback.
- Panasonic AVC-ULTRA LongG Support
- The following tables detail AVC-ULTRA LongG playback support. These metrics were collected from:
HPE DL360 Gen9, v3 E5-2650L (Haswell) / 1.8ghz / 12 core, 10Gb l HPE DL360 Gen9, v4 E5-2683 (Broadwell) / 2.1ghz / 16 core, 10GbE

| Server Type | 12 1080i / 59.94 | 25 1080i / 59.94 | 50 1080i / 59.94 | 12 1080i / 50 | 25 1080i / 50 | 50 1080i / 50 | 12 1080p / 29.97 | 25 1080p / 29.97 | 50 1080p / 29.97 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Haswell | 3 | 3 | 1 | 11 | 8 | 3 | 6 | 5 | 1 |
| Broadwell | 10 | 7 | 4 | 24 | 17 | 8 | NA | NA | NA |
|  |  |  |  |  |  |  |  |  |  |
| Server Type | 12 1080p / 25 | 25 1080p / 25 | 50 1080p / 25 | 12 720p / 50 | 25 720p /50 | 50 720p /50 | 12 720p / 59.94 | 25 720p /59.94 | 50 720p /59.94 |
| Haswell | 12 | 9 | 2 | 16 | 7 | 3 | 19 | 8 | 3 |
| Broadwell | NA | NA | NA | 27 | 14 | 9 | 30 | 18 | 9 |

- DNxHR Support
- The following table lists the number of playback streams for a single server using DNxHR resolutions. The following numbers were collected using a single server with a 2.5ghz V2 processor connected to Avid NEXIS through a 10 Gb connection.
- As these resolutions are system intensive, Avid recommends using proxy versions of each of the following formats instead of the full high-resolution media to optimize the user experience.

| DNXHR LB UHD 25 | DNXHR SQ UHD 25 | DNXHR HQ	DNXHR UHD 25	HQx UHD 25 | DNXHR HQ	DNXHR UHD 25	HQx UHD 25 | DNXHR HQ	DNXHR UHD 25	HQx UHD 25 | DNXHR LB UHD 29.97 | DNXHR LB UHD 29.97 | DNXHR SQ UHD 29.97 | DNXHR SQ UHD 29.97 | DNXHR HQ UHD 29.97 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 16 | 5 | 3	2 | 3	2 | 3	2 | 15 | 15 | 5 | 5 | 2 |
|  |  |  |  |  |  |  |  |  |  |
| DNXHR HQx UHD 29.97 | DNXHR LB UHD 50 | DNNHR SQ	DNNHR HQ UHD 50	UHD 50 | DNNHR SQ	DNNHR HQ UHD 50	UHD 50 | DNNHR SQ	DNNHR HQ UHD 50	UHD 50 | DNNHR HQx UHD 50 | DNNHR HQx UHD 50 | DNXHR LB UHD 59.94 | DNXHR LB UHD 59.94 | DNXHR SQ UHD 59.94 |
| 2 | 8 | 1	1	1	7 | 1	1	1	7 | 1	1	1	7 | 1	1	1	7 | 1	1	1	7 | 1	1	1	7 | 1	1	1	7 | 1 |
|  |  |  |  |  |  |  |  |  |  |
| DNXHR HQ UHD 59.94 | DNXHR HQx UHD 59.94 | DNXHR HQx UHD 59.94 | DNXHR LB UHD 60 | DNXHR SQ UHD 60 | DNXHR SQ UHD 60 | DNXHR HQ UHD 60 | DNXHR HQ UHD 60 | DNXHR HQx UHD 60 | DNXHR HQx UHD 60 |
| 1* | 1* | 1* | 8 | 1 | 1 | 1* | 1* | 1* | 1* |

Frame rate not guaranteed. Frame rate might temporarily be reduced during playback.
- Sample Server Calculation
- This section provides an example of how you might determine the number of required MediaCentral Cloud UX servers for your organization.
- Peak Usage Assessment
- To determine the number of servers you need to support your deployment of MediaCentral Cloud UX, you need to know how many users (at peak) are expected to be working with each media format in use. For example:
30 Mobile users of XDCAM 50 l 20 MediaCentral Cloud UX users of DNxHD 145 (no proxy) l 40 MediaCentral Cloud UX users of XDCAM 50 (no proxy) l 75 MediaCentral Cloud UX users of H.264 800 Kbps proxy
- Overhead Assessment
- To determine the number of servers you need, some overhead must be accounted for:
There is a constant overhead of 0.25 servers to run non-playback services, followed by the servers needed to run the total number of users for each format.
If high-availability is required, you must have a minimum of three servers.
- Final Assessment
- You make the final assessment by bringing in all previous assessments together. For example, given the following data:
10 Gb network connection to Avid NEXIS l Constant 25% server overhead (.25) l 30 Mobile users of XDCAM 50 @ 24 streams/server (30/24) l 20 MediaCentral Cloud UX users of DNxHD 145 (no proxy) @ 16 streams/server (20/16) l 40 MediaCentral Cloud UX users of XDCAM 50 (no proxy) @ 24 streams/server (40/24) l 75 MediaCentral Cloud UX users of H.264 800 Kbps proxy @ 100 streams/server (75/100) You make the following calculation:

- Avid recommends rounding up to ensure capacity. This method also provides some additional overhead in case of over-subscription or if a minimal number of additional users are added.
Legal Notices
- Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
- This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
- This product may be protected by one or more U.S. and non-U.S patents. Details are available at .
- No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
- Copyright © 2024 Avid Technology, Inc. and its licensors. All rights reserved.
- Portions © Copyright 2003-2007 of MOG Solutions.
- Attn. Government User(s). Restricted Rights Legend
- U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
- Trademarks
- Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: 
- Avid MediaCentral Cloud UX Hardware Guide • Revised Tuesday, February 13, 2024 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.