---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2025.10.0"
release-date: 01/10/2025
doc-type: hardware-guide
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

™ Avid MediaCentral | Cloud UX Hardware Guide v2025.10 Updates are occasionally issued after initial release. For the most up-to-date version of the documentation, see the MediaCentral Cloud UX Documentation page of the Avid Knowledge Base.
This document is intended for people who need to make MediaCentral Cloud UX (MCCUX) hardware purchasing decisions, or advise on this topic. This guide assumes that you have a basic understanding of server components (CPU, RAM, etc.).
Avid expects that you meet or exceed the minimum requirements outlined in this document for each release of MediaCentral Cloud UX. If you are upgrading from an older release, you must review this information to ensure that you are current and compatible with these requirements.
If you plan to install MediaCentral Cloud UX in a virtual environment, see "Deploying MediaCentral Cloud UX in a Virtual Environment" in the Avid MediaCentral | Cloud UX Installation Guide for additional details.
Revision History Date Revised Changes Made November 14, 2025 Initial Publication This update includes information on the requirements for Avid Production Management nodes. For details, see "Configuring an Avid Production Management Node" on page 12.
Contents Adding a No-Replica Cluster Node 10 Configuring an Avid Production Management Node 12 Adding Servers to an Existing Installation 14 Determining Scale 15 Buying Hardware for MediaCentral Cloud UX Buying Hardware for MediaCentral Cloud UX The MediaCentral | Cloud UX Program Team does not qualify specific hardware vendors or server models.
You can purchase server hardware from any vendor as long as the specifications of that hardware meet or exceed the minimum requirements that are outlined in this document.
The hardware provisioning process is straightforward in that it is easy to configure a single server that covers a wide range of functionality. However, varying workflows and optional video playback methods can add complexity to the process.
A number of factors might affect your hardware purchasing decision:
1. Deployment Scale: The type of deployment is the primary influence on server requirements. A
Newsroom Management only deployment without video playback has the lowest processing needs.
In contrast, MediaCentral Production Management and MediaCentral Asset Management deployments require more CPU resources, due to the media transcoding requirements.
2. Media Formats: The next biggest consideration is the source media format. For example, DNxHD is a
resource-intensive media format while Avid JFIF is lightweight in comparison.
3. Number of Users: The number of expected users and the method through which those users connect
to the system might affect the hardware specifications.
The following table summarizes the basic cases for single-server and cluster configurations. For more information on clusters, see " Deploying Multiple Servers" on page 9.
Server Count Deployment Description 1 Single Server The minimum deployment model. This is most suitable for Newsroom Management-only workflows in which there is no media playback requirement.
This option might also apply to environments with few users and / or undemanding transcoding requirements.
This solution offers some hardware redundancy (dual power supplies, dual internal drives), but little redundancy for system services.
3 + Cluster This solution offers redundancy for both hardware and system services.
It adds increased peak-usage and media transcoding capacity.
Deploying multiple servers in a cluster is particularly important for sites with many users and / or resource-hungry media formats. For example, a single server can support the simultaneous playback of over 100 Avid JFIF media streams, but only 15 streams of AVC Intra 50.
4+ Cluster with no- Some workflows can benefit from deploying one or more additional replica node servers to your cluster that might have different requirements than your main MediaCentral Cloud UX servers. For details, see "Adding a No- Replica Cluster Node" on page 10.
Memory Requirements The majority of all MediaCentral Cloud UX servers require a minimum of 128GB of RAM. If desired, more RAM can be added to the server to potentially support additional users or steam counts.
For details on exceptions to this requirement, see " Over-Specifying and Under-Specifying the Hardware" on page 8 and "Determining Scale" on page 15.
Operating System CPU Requirements Avid performs all system qualification using Intel-based CPUs and therefore requires Intel processors for all MediaCentral Cloud UX deployment types. Avid cannot ensure equivalent performance, functionality, or compatibility if your equipment includes processors from other vendors such as AMD, or others.
You must adhere to the following guidelines when selecting a processor:
- Recent Intel Xeon CPU (not older than 2 years since original availability)
- 16 or more cores
- 2.0 Ghz or better
- Non-energy saving CPU models (e.g. a performance model)
- The processors must allow AVX instructions to be passed to the operating system. This is a
MongoDB requirement. For more information, see https://www.mongodb.com/docs/manual/administration/production-notes/#x86_64.
Operating System MediaCentral Cloud UX is supported on Canonical Ubuntu — an open source, Linux-based operating system. Organizations must download a copy of Ubuntu Server LTS (Long Term Support) from https://ubuntu.com/ and install it on their MediaCentral Cloud UX server prior to installing any Avid software. Refer to the MediaCentral Compatibility Matrix on the Avid Knowledge Base for supported version information.
Whenever considering a hardware purchase, you must ensure that you adhere not only to the Avid system requirements that are outlined in this document, but also to Ubuntu’s system requirements. For more information on these requirements, visit: https://ubuntu.com/certified/servers Ubuntu Technical Support Organizations can purchase paid support plans directly from Canonical Ltd. Ubuntu also has an active community forum that can serve as a useful troubleshooting tool when needed. You can find more information about these options at the following links:
Canonical support plans:
- https://ubuntu.com/support
Additional information about Ubuntu technical support:
- https://ubuntu.com/core/services/guide/technical-support
The Ubuntu Forum Community:
- https://ubuntuforums.org/
Storage Requirements Storage Requirements All MediaCentral Cloud UX deployments must be configured with two distinct volumes:
An OS volume on which the operating system and Avid applications are installed. This is typically a
- RAID 1 volume consisting of a mirrored set of two physical drives.
- A Data volume that is used to store various databases, Hoverscrub proxies, playback cache data,
and more. This is typically a RAID 5 volume consisting of multiple physical drives (usually 6 to 8).
The data volume hosts the MongoDB database which stores information about user login (avid-iam) and license data. This makes the data volume a requirement for all deployment types.
Avid requires organizations to procure Solid State Drives (SSD) for both the operating system volume and the data volume. This requirement applies to both new installations and upgrades to v2023.12 or later.
When selecting an SSD, you must ensure that the device’s interface type (SAS, SATA, NVMe, or other) is compatible with your server. While certain technologies such as NVMe might offer a performance increase over some other interface types, all SSD storage is considered faster than traditional HDD (spinning disk).
Due to this general performance increase, Avid does not define or require a minimum transfer rate at this time. Avid recommends that organizations purchase storage that is optimized for mixed performance (read / write / delete) and not devices that are optimized for read-only. This is especially true for the Data volume.
Data Volume Information and Considerations The Avid MediaCentral | Cloud UX Installation Guide instructs administrators to create a /var/data logical volume during the Ubuntu installation and configuration process. This volume is typically created on a separate RAID 5 array.
This section includes more specific information on how MediaCentral Cloud UX uses this volume, and how these needs might affect your purchasing decisions.
Search Index Considerations The data volume hosts the Elasticsearch database that is used by the Search app to store information about local and (if applicable) remote assets that are indexed as part of a multi-site configuration. The size of this database can vary based on your deployment type and it’s important to understand how this database can impact your storage requirements.
You can use the following general guidelines on the search index requirements to help you determine your storage needs:
- Asset Management (1 million assets, no multi-site)
  - MongoDB: ~3.0 GB
  - Elasticsearch: ~6.1 GB (no replica shard) or ~12.2 GB (cluster with 1 replica shard)
- Production Management or MediaCentral Production Management (1 million assets, no multi-site)
  - MongoDB: ~0.3 GB
  - Elasticsearch: ~2.1 GB (no replica shard) or ~4.2 GB (cluster with 1 replica shard)
- Newsroom Management (500,000 assets, no multi-site)
  - MongoDB: ~5.90. GB
  - Elasticsearch: ~2.2 GB (no replica shard) or ~4.4 GB (1 replica shard)
For comparison, the Newsroom Management starter database (~30k assets) uses approximately 470MB for MongoDB and 150MB for Elasticsearch.
Storage Requirements Playback Cache MediaCentral Cloud UX generates and locally caches transcoded media assets and system files. Cached media assets are stored on the volume until space is required for new assets. MediaCentral Cloud UX monitors the storage and automatically removes older files when the disk space falls below 40% free space. This process is limited to media assets and does not affect non-media files such as databases.
If you are working with multi-cam assets from an Avid Production Management or MediaCentral Production Management system, JPEGs of the multi-cam frames are stored on the data volume. In this workflow MediaCentral Cloud UX must locally generate a compliant copy of the source media asset. This asset is then served to the requesting application. The asset is also cached in anticipation of subsequent playback requests. In the case of multi-server deployments (a cluster), the cached assets are replicated across the servers to reduce future transcoding of the same asset on a different playback server.
In addition to the above workflows, this volume might also be used for:
- AAF sequence data from Avid Production Management or MediaCentral Production Management
- (Enterprise Editing) Draft sequence data
System Monitoring If you plan to deploy System Monitoring and you plan to use a MediaCentral Cloud UX server as a logging node, Avid recommends that you mount the monitoring data root directory (/var/data/local/pv/mon) to a dedicated disk or a dedicated partition of at least 150GB of an existing disk.
For more information on this feature, see “Enabling System Monitoring” in the Avid MediaCentral | Cloud UX Installation Guide.
Avid Transcribe When you deploy Avid Transcribe, you need to account for the storage of the transcripts and related supporting data. Avid recommends that you assume ~7.6 GB of storage per 1,000 hours of transcripted audio for a single-server configuration, or 9 GB of storage per 1,000 hours for each node in a clustered configuration. Clustered nodes require additional storage space due to some database replication.
Therefore if you purchase an Avid Transcribe license with a quota of 10,000 hours, you should account for ~76 GB of space for this data on a single server, or 90 GB of storage space on each cluster node.
> **Note:** These numbers are rough estimations only. Storage needs can vary based on media content. For
example an hour of a sporting event that includes end-to-end commentary is likely to produce a larger transcript file than a hour of media with limited voice-over work.
Also see "SeaweedFS" below.
SeaweedFS SeaweedFS is an open-source Amazon Simple Storage Service (S3) compliant shared storage system that might be deployed on your MediaCentral Cloud UX system. The local (no outgoing / internet traffic) SeaweedFS instance is used to host temporary files that are created during the transcribe process of the Avid Transcribe workflow. Temporary files are removed automatically from the system as part of the transcription process.
If deployed by a workflow that has a dependency on this feature (such as Avid Transcribe), MediaCentral Cloud UX allocates ~32GB of space on the Data volume to SeaweedFS. However it is possible to allocate more space if required. For additional information on that process, see "Reconfiguring SeaweedFS Volumes" in the Avid MediaCentral | Cloud UX Installation Guide.
Storage Requirements Avid Production Management When you configure Avid Production Management, the avidctl production config deployment script requires that you identify the nodes that will run the Production Management services. The BinaryService, MetadataService, and Production Engine all consume some amount of local storage. The amount of storage that is required depends on the selected database sizing profile.
> **Note:** Although the data volume is used, this is data stored on individual nodes. It is not replicated through
GlusterFS.
The following table provides information on each sizing profile and their approximate storage requirements.
Database Sizing Required Storage Profile Name Lab 15 Gb Small 55 Gb Medium 270 Gb Large 550 Gb Enterprise 1 .1 Tb For additional information on profile sizes, see "Production Management Scaling Options" on page 13 and "Installing the Production Management Core" in the Avid MediaCentral | Cloud UX Installation Guide.
Data Volume Configuration Options All MediaCentral Cloud UX deployments must be configured with two distinct volumes. Avid supports the following configuration options for the data volume:
Drives Volume Configuration and Notes 1 A single solid state drive (SSD) configured as a separate volume (500GB or greater recommended).
This configuration provides no redundancy in case of hard drive failure.
While all MediaCentral Cloud UX deployments require two distinct volumes, Avid supports configuring a single disk that is partitioned into two volumes. In this case Avid recommends allocating at least 25% of the disk space to the /var/data partition, with a minimum size of 50GB.
2 2 solid state drives (500GB or greater recommended) configured as a RAID-1 volume.
This configuration provides redundancy in case one of the hard drives fails.
6 or 8 Multiple solid state drives configured as a RAID-5 volume resulting in ~3TB or more of usable space.
This configuration provides redundancy in the event of a drive failure. It also provides increase I/O for a higher volume of proxy generation and serving.
Networking Requirements Networking Requirements Avid requires that all servers are wired to your house network with a Cat 5e, 1Gb connection or greater.
Certain workflows require the increased bandwidth of a 10 Gb network adapter. For example:
- 10 Gb connections are required for any MediaCentral Cloud UX deployment that intends to use
100+ Mbps video formats such as AVC-I 100, DVCPro 100, and DNxHD 145.
- 10 Gb connections are required for any site that plans to participate in a Remote Send To Playback
workflow in which local assets are transferred to a remote server that is not part of your local area network.
10 Gb connections might also be desired or required to enable increased client connections or
- playback streams.
Supported Adapters If you plan to connect to an Avid NEXIS system, you must consult the Avid NEXIS documentation to verify that you are provisioning a supported network adapter. The adapter that you purchase must be compatible with both the shared storage, and your selected hardware vendor. For more information, see the following link to the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/User_Guide/Avid-NEXIS-Documentation Zone Recommendations connection is recommended for all configuration types.
- Zone 2: Connected through a 1 Gb or 10 Gb port on an Avid qualified layer-2 switch (non-routed).
- Zone 3: Connected to an Avid qualified layer-3 switch (routed) with known Quality of Service (QoS);
traffic routed to Avid shared storage (one hop).
MediaCentral Newsroom Management Newsroom Management-only deployments do not require a connection to a storage system as there is no video playback component. The network connection is at the user’s discretion as long as it is 1 Gb or better.
MediaCentral Production Management In this workflow MediaCentral Cloud UX decodes the source media format on Avid NEXIS and streams images and sound to the clients. Zone 2, or Zone 3 (recommended) connections are supported.
MediaCentral Asset Management In this workflow MediaCentral Cloud UX provides playback of video assets registered as browse proxies by Asset Management. The zone is determined by the location of the browse proxies:
- For non-Avid storage, the network connection is at the user’s discretion as long as it is 1 Gb or
better.
For Avid NEXIS, Zone 2, or Zone 3 (recommended) connections are supported.
Over-Specifying and Under-Specifying the Hardware Over-Specifying and Under-Specifying the Hardware Over-Specifying Hardware If you need to provision a system for a large number of users or high-density media formats (e.g. AVC-I 50/100), you might want to obtain a more powerful server that would be more appropriate for these workflows. Over-specifying hardware is supported in all cases.
Customers can provision additional RAM, solid state drives with either larger capacity or higher I/O ratings, or more powerful CPUs to increase the performance of their MCCUX system. However due to the near infinite number of combinations of asset codecs, hardware options, and other variables, Avid cannot provide precise performance measurements.
Under-Specifying Hardware In some cases a price-sensitive customer that requires a deployment with fewer users or playback streams might want to provision a more cost effective server because they do not need the capacity of the servers specified in this document. Under-specifying hardware is supported in some cases.
- Subscription License Server
For detailed information, see "Subscription License Server" on page 15.
- MediaCentral Newsroom Management
If you configure MediaCentral Cloud UX with only the MediaCentral Newsroom Management module, video playback is not invoked by this configuration. In this case the CPU and memory requirements are reduced. Hardware for this configuration must meet the following minimum requirements:
  - Recent Intel Xeon CPU (not older than 2 years since original availability) with 4 or more cores.
  - Memory: 64GB of RAM
All other configurations
- All other under-specified deployments must provision no less than the following:
  - Recent Intel Xeon CPU (not older than 2 years since original availability) with 8 or more cores.
  - Memory: 64 GB of RAM
Avid recommends allocating at least 500GB of usable space to your operating system volume. Due to the loss of space incurred during the formatting process, this likely means that you need to provision drives that are over 500GB.
You must consult Avid Product Management before considering any purchase of an under-specified configuration.
If you under-specify your hardware configuration, you might experience negative system performance. This could result in reduced FPS (frames per second) during playback, delayed response time for the user interface, or system instability as the services fight for under-provisioned system resources.
Deploying Multiple Servers Deploying Multiple Servers The resolutions and playback methods available through MediaCentral Cloud UX have very different CPU and I/O footprints. Therefore, determining the number of servers required for a given installation can be challenging. The two factors that determine the quantity of servers required for a MediaCentral Cloud UX deployment are redundancy and horizontal scale.
Redundancy Each MediaCentral Cloud UX deployment requires at least one server. However, in most cases Avid recommends deploying three or more servers to obtain high-availability and service redundancy.
So, the first question you have to answer when trying to determine how many servers are needed is:
Is high-availability required?
If the answer is no, then one server might be sufficient. Additional servers are required if concurrent
- usage peaks are not satisfied by the playback capacity of a single server.
If the answer is yes, then three or more servers are required. Additional servers are required if
- concurrent usage peaks are not satisfied by the playback capacity of the first three nodes.
Each MediaCentral Cloud UX server is identified as a node. In a cluster configuration, you can have Control Plane nodes, Worker nodes, or a node that fills both roles. Control Plane nodes are responsible for coordinating activities across the cluster. Worker nodes are generally more passive in that they run pods, but do not manage them. Nodes that are identified as both a control plane and a worker have enough resources to both coordinate activities and run pods.
The first three cluster nodes operate as both control plane and worker nodes. All other nodes are simply worker nodes. When creating a MediaCentral Cloud UX cluster, Avid requires a minimum of three cluster nodes. Two node configurations are not supported.
> **Note:** While most MediaCentral Cloud UX systems and services are highly available through a cluster
configuration, some systems are not. In some circumstances, a system outage could occur through the loss of a control plane node. For more information, see “MediaCentral Cloud UX Clustering” in the Avid MediaCentral | Cloud UX Installation Guide.
Horizontal Scale The playback services are the most CPU and memory intensive component of the system. They are designed to run on all servers in the cluster such that playback sessions are distributed, or load-balanced, across all servers. This allows for horizontal scale—adding servers in a cluster to accommodate increased capacity.
Adding a No-Replica Cluster Node Adding a No-Replica Cluster Node Organizations that deploy certain workflows might want to consider adding a specialized node to their cluster that can be dedicated to the tasks required by that workflow. Also known as no-replica nodes, these servers can provide all of their system resources to the specialized workflow. This division of labor allows your other cluster nodes to focus on database management, playback, and other tasks.
You can also provision specialized hardware for the no-replica node that benefits the workflow in question. For example the Speech to Text workflow benefits greatly from access to an NVIDIA® GPU.
Instead of installing an NVIDIA card in every server, you can add hardware to a specific node to save costs. Some workflows might require less powerful CPUs, less storage, or other resources than a standard MediaCentral Cloud UX nodes. This can result in additional cost savings.
> **Note:** You cannot add a no-replica node to a single-server configuration. This option applies only to
clusters that include three or more nodes.
Provisioning a No-Replica Node for Avid Transcribe This section includes information on the minimum and recommenced specifications for a no-replica node that is configured for the Avid Transcribe workflow.
For information on adding a no-replica node to your cluster, see "Configuring Avid AI Nodes" in the Avid MediaCentral | Cloud UX Installation Guide.
Minimum System Requirements You must meet or exceed the following system requirements for this type of node:
- Intel CPU with 4 or more cores @ 2.0 Ghz+
Not limited to Xeon class processors.
- 16 GB of RAM
- One 200 GB SSD (solid state drive).
Follow the guidelines in the "Configuring the Installation Destination" section of the Avid MediaCentral | Cloud UX Installation Guide. However as this type of node does not replicate GlusterFS data, you are not required to provision or configure a data volume.
You can optionally add redundant drives for increased system resiliency. For details, see "Storage Requirements" on page 4.
Ubuntu host OS (same version as your MediaCentral Cloud UX cluster)
- 1GbE network connectivity
- NVIDIA GPU with CUDA support and 8GB of VRAM
- While optional, an NVIDIA card is highly recommended for this workflow. For additional details, see
"Adding a GPU" on the next page.
Recommenced System Requirements The following list details the recommended system requirements for this type of node. However, over- specifying hardware is supported in all cases.
Recent Intel CPU (not older than 2 years since original availability). 8 CPU cores @ 2.0 Ghz+
- Not limited to Xeon class processors.
64 GB of RAM Adding a No-Replica Cluster Node Drives:
  - OS volume: Two 200 GB SSD's configured in a RAID-1
  - Data volume: Two 500 GB SSD's configured in a RAID-1
Ubuntu host OS (same version as your MediaCentral Cloud UX cluster)
- 10GbE network connectivity
- Latest generation NVIDIA GPU with CUDA support and 16GB of VRAM
- While optional, an NVIDIA card is highly recommended for this workflow. For additional details, see
"Adding a GPU" below.
Adding a GPU The processing-heavy audio transcription tasks of the Transcribe workflow benefit greatly from the resources of an NVIDIA GPU. Avid highly recommends adding an NVIDIA card to any server that has the Avid AI feature pack installed.
If purchasing a video card, the GPU must be NVIDIA branded hardware. GPUs from other vendors, such as AMD®, are not compatible with this release of Avid Transcribe.
While Avid does not qualify or support any specific NVIDIA card, the following table provides some example statistics that compare the audio transcription rates for CPU and GPU enabled servers. The performance column shows the Avid AI Worker's transcription rate for a single task.
GPU Generation GPU RAM CUDA INT8 Performance Cores TOPS (CPU only) 4th Gen Intel® Xeon® @ 2.0 N/A N/A N/A ~Real time GHz Ampere1 NVIDIA 16GB 1280 71 ~35x real-time Ada2 NVIDIA 24GB 7424 485 ~70x real-time
1. Tested with NVIDIA A16 (1 sub-card of the 4x physical sub-cards in an A16)
2. Tested with NVIDIA L4
As evident from this data, the addition of a GPU significantly increases the transcription speed of audio assets — making the GPU essential for this workflow.
For information on configuring an NVIDIA card, see "Installing an NVIDIA® Driver" in the Avid MediaCentral | Cloud UX Installation Guide.
Configuring an Avid Production Management Node Configuring an Avid Production Management Node Avid Production Management is an evolved implementation of the MediaCentral | Production Management product line. In contrast to MediaCentral Production Management which is deployed on one or more Microsoft Windows servers, Avid Production Management is deployed to your MediaCentral Cloud UX cluster. The nodes on which you deploy the Production Management feature packs might require increased resources as compared to standard MediaCentral Cloud UX nodes.
To assist in limiting the impact of these increased requirements, the Production Management configuration script allows you to identify specific nodes that can run the Production Management services and PostgreSQL database. By identifying task-specific nodes, you can limit the increased system requirements to these nodes only, while simultaneously increasing the potential scale of the system (database size, number of users).
Avid does not support the deployment of Production Management on single-server configurations. The only time where you could consider such a deployment is for testing purposes in a lab environment. In these cases, you can generally expect basic system functionality. However, you should expect to encounter database size limitations, potential service-level delays or even failures. Avid does not test or make any claims around single-server configurations.
Avid Production Management systems that are intended for a live production environment must be deployed on a MediaCentral Cloud UX cluster that consists of three or more nodes. However, some organizations might benefit from (or might require) additional nodes.
Minimum Requirements This section details the minimum requirements for a Production Management node in this release. The information below can serve as a base guideline for purchasing decisions. However, Avid highly recommends that you consult with Avid Sales before making any final decision. Avid Sales has access to a configuration tool that allows them to more accurately determine the minimum resources by including information about site-specific workflows.
While Production Management nodes run specific services, they are different from No-Replica nodes in that the Production nodes run all of the standard services of either a control plane or worker node in addition to the Production Management services. Production nodes are not dedicated only to a specific task — like a No-Replica node.
CPU Requirements Recent Intel Xeon CPU (not older than 2 years since original availability)
- Cores:
  - If you are deploying Production Management on a control pane node, that node requires at
least 32 cores.
  - If you are deploying Production Management on a worker node, that node requires at least 16
cores.
- 2.0 Ghz or better
- Non-energy saving CPU models (e.g. a performance model)
If you are deploying Production Management on a control plane node, the processors must allow AVX instructions to be passed to the operating system. This is a MongoDB requirement. For more information, see https://www.mongodb.com/docs/manual/administration/production- notes/#x86_64.
Configuring an Avid Production Management Node Memory Requirements The amount of minimum RAM depends on the node type.
If you are deploying Production Management on a control pane node, that node requires a
- minimum of 196GB of RAM.
If you are deploying Production Management on a worker node, that node requires a minimum of
- 128GB of RAM.
Data volume:
A single solid-state drive (SSD) configured as a separate volume (500GB or greater recommended).
For additional information, see "Storage Requirements" on page 4.
Production Management Scaling Options Avid Production Management is built around the concept of a scalable infrastructure that offers configurable options that are designed to match typical customer deployments. During the Production Management installation and configuration process, you are asked to define the system scale. The following table outlines these options:
Option Description Size Lab Smallest possible deployment.
This option is applicable to test deployments in a lab environment only and cannot be used for a live production systems.
Small Smallest production-ready deployment. Up to 1 million database assets This is intended for entry-level application use with low user and asset and media counts. This deployment is designed to operate in a standard locations MediaCentral three-node cluster.
Up to 20 users Medium Typical deployment for low to mid-range systems. Up to 5 million database assets This option is best suited for medium-sized operations at the lower end and media of the spectrum.
locations This deployment option requires at least one dedicated Production Up to 60 users Management node in a 3+1 cluster configuration.
Avid recommends that you identify at least two Production Management nodes for database redundancy, but it is not required.
Large Typical deployment for upper-middle range systems. Up to 10 million database assets This scaling option is applicable to most high-demand organizations.
and media locations This deployment option requires at least two dedicated Production Management nodes in a 3+1 cluster configuration.
Up to 330 users This option requires you to identify at least two Production Management nodes for database redundancy. If necessary, you could use a control plane nodes for this purpose.
Enterprise Deployment option for customers with very large systems. Up to 20 million database assets Adding Servers to an Existing Installation Option Description Size This is the highest-end deployment option that is applicable to and media organizations with a very large number or assets or users, or for locations operations that have special performance requirements.
Up to 650 users This deployment option requires additional dedicated Production Management nodes (normally at least 2) in a 3+n cluster configuration.
If for example, you want to configure a system for a Medium configuration. This means that you need a 3+1 (4-node) cluster with the 4th node acting as your primary Avid Production Management node. You can leverage one or more additional nodes as secondary nodes if desired, but this is not strictly required. Avid recommends identifying at least two Production Management nodes to ensure a minimum level of redundancy.
Adding Servers to an Existing Installation Over time, an organization might wish to expand a single server to a cluster configuration or potentially add nodes to an existing cluster. When making a purchase, the organization might not be able to obtain server hardware that matches the specifications of the original hardware. Avid supports mixing server hardware for a cluster configuration as long as the following criteria are met:
Mixed processor speeds and RAM are supported between the servers. However, all servers must
- meet the memory and CPU requirements outlined in "Buying Hardware for MediaCentral Cloud UX"
on page 2.
- Mixed server generations are supported. For example, you could use both an HPE Gen 10 server and
an HPE Gen 11 in the same cluster configuration — as long as those servers meet or exceed the minimum specifications outlined in this document.
Avid supports mixing servers from different hardware vendors in the same cluster.
- If you mix different server types within a cluster, some nodes might include more CPU cores than
- other nodes in the cluster. In this case the node with the fewest number of cores can limit the overall
scalability of the whole system. Kubernetes distributes CPU intensive pods across all nodes equally and it does not take the individual core-count into consideration. To avoid impacting system performance — especially to the player and search services, Avid recommends that you maintain an equal number of CPU cores across all nodes.
RAID 1 (OS) and RAID 5 (data) drive sizes do not need to be identical between the servers. If the a
- server includes a larger volume than another, some space will be left unused. For example if Server-
A includes a 2TB data volume, and Server-B includes a 3TB data volume, 1TB of space will be left unused on Server-B.
While mixing network adapters (for example 1 Gb and 10 Gb adapters) between the servers is
- possible, it is not recommended. Avid has not specifically tested clusters containing mixed speed
network adapters.
Determining Scale Determining Scale The needs of each MediaCentral Cloud UX deployment can vary depending on the workflow that you plan to enable. This section includes more information on each workflow.
Subscription License Server Organizations that plan to license their MediaCentral Newsroom Management or MediaCentral Production Management modules with a subscription license must connect to a MediaCentral Cloud UX system to enable this workflow. If your organization does not already own a MediaCentral Cloud UX system, you can elect to deploy a server that is dedicated to this task. In this configuration Avid expects that you do not deploy any additional feature packs, and that you do not have any users signing into the MediaCentral Cloud UX system (other than an administrator).
If you need to deploy a MediaCentral Cloud UX server for the sole purpose of running the licensing service, you can use the following minimum specifications to complete this task. This assumes that you have not deployed any additional feature packs, and that you do not have any clients signing into the MediaCentral Cloud UX system (other than an administrator).
CPU with 8 cores at 2GHz+
- 32 GB RAM
- 200GB SSD configured with distinct OS and Data volumes
- If you want to enable any workflow in which clients connect to the server, these specifications no longer
apply.
Asset Management Only MediaCentral Cloud UX can be leveraged as a player for the MAM Desktop application in MediaCentral Asset Management systems. In this case the MCCUX user interface might be accessed only for certain administrative tasks and not by a larger user base. MediaCentral Cloud UX provides playback of different video asset formats registered as a browse proxy in the Asset Management database and residing on standard file system storage or proprietary storage that provides a standard system gateway.
Unlike MediaCentral Cloud UX, playback in MediaCentral Asset Management is very rarely I/O bound.
Most Asset Management deployments are on a network that can sustain many, many playback requests.
Typically the MediaCentral Cloud UX servers specified in this document can:
- Support ~120 frame-based playback streams (growing files) of most Asset Management proxy
formats. (Variable speed playback reduces the number of streams per server by ~50%.)
- Serve ~4000 H.264 proxy files (provided there is enough outbound network connectivity and proxy
storage disk I/O).
Process ~30 video analysis requests.
- General Project Information
Avid Sales and Product Management are generally consulted for each MediaCentral Asset Management deployment. In some cases (very small deployments), a smaller, less expensive server specification will be recommended (fewer, lower frequency cores, less RAM).
Determining Scale Having answers to the following questions will help Avid Product Management asses the project:
1. Provide a brief description of the project with specific goals.
2. Does the project require high-availability?
This is separate from adding servers to accommodate capacity.
3. On which storage solution and/or file system are the proxies stored?
If the storage system is proprietary, please indicate the standard file system gateway through which MCCUX will mount it (e.g., Omneon MediaGrid via CIFS).
For each registered browse proxy format, answer the following questions:
1. What is the proxy format?
This relates to the file container and the codecs used for video and audio essences.
2. What is the expected peak of concurrent streams for this format?
For example, there may be 100 users, but only 25 users at any given time will be working with assets using this proxy format.
3. Do users of this format require playback of growing files?
Only MPEG-1 and Sony XDCAM Proxy formats are supported for this workflow.
4. How many streams of variable speed playback are required?
MediaCentral Asset Management can provision permission to use variable speed playback. As it is a CPU intensive playback method, it should only be provisioned to users who really need it.
5. What is the maximum video image resolution (for example, 720x406 pixels)?
6. What is the maximum proxy bit rate (for example, 3.0 Mbps.)?
Production Management or Mixed Workflows This section details how the video resolution can affect the system performance and the number of users that can connect to the server. Although this section is focused on MediaCentral Production Management workflows, your configuration might also include integration with MediaCentral Newsroom Management, or other workflows.
To determine the number of servers you need to support your deployment of MediaCentral Cloud UX, you need to know the following information:
Which media formats are in use (e.g. DNxHD 145, XDCAM50, H.264 800Kbps proxy)?
- How many users (peak usage) are expected for each format?
- What is the speed of the network interface that is used to connect to Avid NEXIS (1 Gb or 10 Gb)?
- Do you require a clustered configuration?
  - You must provision a minimum of three servers to enable a MediaCentral Cloud UX cluster.
  - (n + 1) An additional server that allows for peak expected capacity even if one server fails.
About Video Playback MediaCentral Cloud UX supports playback of a variety of video formats registered by Avid Production Management or MediaCentral Production Management and residing on Avid NEXIS shared storage.
MCCUX decodes the source format and streams images and sound to the MediaCentral Cloud UX client.
MediaCentral playback capacity is limited by one of two factors:
Determining Scale CPU bound: after a certain number of playback streams, the server has no more CPU cycles left
- I/O bound: after a certain number of streams, the server’s network bandwidth becomes saturated
- Different source formats have different CPU-decode profiles, and different I/O footprints. Typically: low
bit rate source formats are CPU bound; high-bit rate source formats are I/O bound.
The other factor that determines whether a source format is CPU or I/O bound is the network connection, which could be 1 Gb or greater.
Media Format and Stream Count Assessment To determine the number of users you can support, you need to know which media formats are in use, as the server can support a certain number of concurrent playback streams per format.
The following performance results were collected using MediaCentral Cloud UX v2025.6 with a 10Gb network connection to Avid NEXIS shared storage on the following servers:
HPE DL360 Gen10, 2x Gold 6130 @2.10GHz, 32 cores, 128GB RAM
- Dell R640 2x Silver 4114 @2.20GHz, 20 cores, 128GB RAM
- The [bracketed] number next to each codec indicates the number of audio streams used in the test.
Server XDCAM XDCAM XDCAM DVC Pro DNX 45 DNX 145 DNX Type HD50 [2] HD35 [2] EX35 [4] [2] [4] [4] 220x [4] DL360 42 50 54 34 43 24 24 R640 33 40 54 30 29 22 18 Server Type HDV 1080 [4] AVCI 50 [2] AVCI 100 [2] DNX HD100 [4] AVC LongG 720p G12 [4] DL360 56 22 18 30 44 R640 48 14 11 27 48 Server HDR XAVC-I 100 HDR XAVC-I HDR XAVC-I 100 XAVC-I 100 XAVC-I 100 Type 23.98 [4] 100 50 [4] 59.94 [2] 1080p50 [4] 1080p59.94 [4] DL360 14 14 14 14 14 Sony XAVC Long GOP Support This section includes information collected from a MediaCentral Cloud UX v2018.11 installation and is provided here for legacy reference only.
The following table details XAVC Long GOP playback support. These metrics were collected from an HPE DL360 Gen9, v4 E5-2683 (Broadwell) / 2.1ghz / 16 core, 10Gb.
25 1080i 35 1080i 50 1080i 25 1080i 35 1080i 50 1080i 50 720p 50 720p 59.94 59.94 59.94 50 50 50 50 59.94 4 2 1 5 2 1 29 27 * Frame rates not guaranteed. Frame rate might temporarily be reduced during playback.
Determining Scale Panasonic AVC-ULTRA LongG Support This section includes information collected from a MediaCentral Cloud UX v2018.11 installation and is provided here for legacy reference only.
The following tables detail AVC-ULTRA LongG playback support. These metrics were collected from:
- HPE DL360 Gen9, v3 E5-2650L (Haswell) / 1.8ghz / 12 core, 10Gb
- HPE DL360 Gen9, v4 E5-2683 (Broadwell) / 2.1ghz / 16 core, 10GbE
Server 12 25 50 12 25 50 12 25 50 Type 1080i / 1080i / 1080i / 1080i 1080i 1080i 1080p 1080p 1080p 59.94 59.94 59.94 / 50 / 50 / 50 / 29.97 / 29.97 / 29.97 Broadwell 10 7 4 24 17 8 NA NA NA Server 12 25 50 12 25 50 12 25 50 Type 1080p 1080p 1080p 720p 720p 720p 720p / 720p 720p / 25 / 25 / 25 / 50 /50 /50 59.94 /59.94 /59.94 * Frame rates not guaranteed. Frame rate might temporarily be reduced during playback.
Sample Server Calculation This section provides an example of how you might determine the number of required MediaCentral Cloud UX servers for your organization.
Peak Usage Assessment To determine the number of servers you need to support your deployment of MediaCentral Cloud UX, you need to know how many users (at peak) are expected to be working with each media format in use. For example:
- 20 MediaCentral Cloud UX users of DNxHD 145 (no proxy)
- 40 MediaCentral Cloud UX users of XDCAM 50 (no proxy)
- 75 MediaCentral Cloud UX users of H.264 800 Kbps proxy
Overhead Assessment To determine the number of servers you need, some overhead must be accounted for:
There is a constant overhead of 0.25 servers to run non-playback services, followed by the servers
- needed to run the total number of users for each format.
If high-availability is required, you must have a minimum of three servers.
- Final Assessment
You make the final assessment by bringing in all previous assessments together. For example, given the following data:
Determining Scale 10 Gb network connection to Avid NEXIS
- Constant 25% server overhead (.25)
- 20 MediaCentral Cloud UX users of DNxHD 145 (no proxy) @ 16 streams/server (20/16)
- 40 MediaCentral Cloud UX users of XDCAM 50 (no proxy) @ 24 streams/server (40/24)
- 75 MediaCentral Cloud UX users of H.264 800 Kbps proxy @ 100 streams/server (75/100)
- You make the following calculation:
Avid recommends rounding up to ensure capacity. This method also provides some additional overhead in case of over-subscription or if a minimal number of additional users are added.
Determining Scale