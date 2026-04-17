---
product: media-composer
product-area: editing
version: "2022"
release-date: 01/01/2022
doc-type: vdi-guide
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Deploying Avid® Media Composer ® VDI on Nutanix Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This product may be protected by one or more U.S. and non-U.S patents. Details are available at www.avid.com/patents.
Copyright © 2025 Avid Technology, Inc. and its licensors. All rights reserved.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid Nexis, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries.
The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: http://www.avid.com/US/about-avid/ legal-notices/trademarks.
Nutanix, the Nutanix logo and the other Nutanix products and features mentioned herein are registered trademarks or trademarks of Nutanix, Inc. in the United States and other countries Deploying Avid Media Composer VDI on Nutanix(cid:129) Created 6/27/25 (cid:129) This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.
Contents Memory . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10 Additional Notes on vCPU and Memory Allocation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10 Virtual Disks (VHD) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10 Virtual GPU (NVIDIA GRID) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 NVIDIA vGPU Cards . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 NVIDIA GRID vGPU Installation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12 Links To Recommended Nutanix Documentation. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 13 Chapter 2 Deploying Media Composer VDI on Nutanix . . . . . . . . . . . . . . . . . . . . . . . . . . . . 14 Deploying the Virtual Machine . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 14 Installing the Windows 10 Operating System . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19 Configure vNIC Ethernet TCP/IP Properties. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 22 Run Windows Updates . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 23 Set the VM Hostname. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 23 Enable Windows Remote Desktop . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 23 Remove the CD-ROM Devices from the VM . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24 Continuing to Remotely Connect to the VM . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24 Installing the NVIDIA Driver on the Windows (VM) Guest OS . . . . . . . . . . . . . . . . . . . . . . . . 24 Installing and Configuring the Teradici PCoIP Agent on the VM . . . . . . . . . . . . . . . . . . . . . . 25 Configuring the Teradici Host Agent. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 25 Installing the Teradici PCoIP Endpoint Client Software . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 26 Licensing Models for Teradici PCoIP . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 26 Remotely Accessing the VM Using the Teradici PCoIP Client . . . . . . . . . . . . . . . . . . . . . . . . 26 Licensing and Configuring the NVIDIA GRID vGPU. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 27 Installing and Testing Avid NEXIS Client . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 29 Installing Avid Media Composer on a VM. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 30 Chapter A Addendum A: Executing Baseline Performance Tests with Your Media Compos- er VDI Client 32 Media Composer VM Playback Test Setup . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 32 Testing Multiple VMs and Documenting Baseline Performance Data . . . . . . . . . . . . . . . . . . 35 Monitoring AV Sync During Playback . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 36 Chapter B Addendum B: Additional Notes Regarding Sockets and Cores . . . . . . . . . . . . 37 Using This Guide This document was created to provide information to help design, configure, and verify the baseline functionality of Media Composer deployed as a virtual machine on Nutanix. It provides details to help you select the compute resources for your cluster nodes and to configure the virtual machines in a manner that is appropriate for your use case. Due to the wide range of factors and constantly evolving technologies that can contribute to the performance of a VM running Media Composer, this document should be used only as an informational guide. Please reach out to your Avid Sales Representative to engage in a discovery session to determine what architecture design would be best for your organization.
This guide is intended for system administrators, solution architects, sales and other personnel who plan to participate in the discussion, design, evaluation, or deployment of hardware and software for Avid Media Composer in a virtualized environment. Readers should have a basic understanding of IT infrastructure design and virtualization technology.
Important Notification As of v2025.6, Avid is no longer testing or qualifying the deployment of Media Composer in a virtual environment using any specific vendor. While Avid allows you to deploy Media Composer in a virtual environment, the selection and qualification of the virtualization solution is the responsibility of an individual or team within your own organization.
Avid provides the following high-level guidelines regarding virtualization:
• Do not over-commit host resources.
(cid:129) If you are installing additional Avid or non-Avid 3rd party applications on the VM, you must ensure that virtualization is allowed for all installed components.
(cid:129) Apply security patches to your virtualization solution on a quarterly basis (at minimum). If higher security risks are identified, shorter intervals of time are recommended.
(cid:129) Consult your virtualization vendor’s documentation for additional information and best practices.
As of this release, this document will no longer receive updates and should be considered as a legacy reference document only.
Revision History Date Description June 26, 2025 Added “Important Notification” on page 3.
August 9, 2022 Updated Compatibility — Avid has completed qualification of Media Composer v2021.12.x using Nutanix v5.20.x LTS.
In addition to new software versions, the hardware specifications were updated during this qualification process. For details, refer to “Nutanix Validation Infrastructure” on page 7.
Symbols and Conventions Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action A note provides important related information, reminders, recommendations, and
> **Note:** strong suggestions.
c A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is
especially important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view these online versions, visit the Knowledge Base at https://avid.secure.force.com/pkb/articles/en_US/User_Guide/Media-Composer-Documentation -Links For information on deploying Avid MediaCentral | Production Management on Nutanix, refer to the latest documentation on the Avid Knowledge Base at:
https://avid.secure.force.com/pkb/articles/en_US/readme/Avid-Interplay-Production-Documenta tion
3. Check the documentation that came with your Avid application or your hardware for
maintenance or hardware-related issues.
4. Visit the online Avid Knowledge Base. Online services are available 24 hours per day, 7 days per
week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient.
Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit https://www.avid.com/learn-and-support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 Concepts and Infrastructure Use the following information and procedures to configure and verify the functionality of Media Composer deployed as a virtual machine on Nutanix.
Virtualizing Avid Media Composer It is almost a “no brainer” to virtualize traditional backend IT infrastructure. However, when it comes to virtualizing a component in your workflow like Avid Media Composer the decision is not as obvious. To begin with, for video applications like Media Composer to perform well they require a greater amount of CPU cores, memory, GPU and a low-latency/high-bandwidth network when compared to many other standard office applications. Then there are the various use cases - long- form, short-form, news, sports, promos, feature films, etc. Now insert other variables like video codecs, framerates, ingest workflow, stream count, full screen playback and delivery formats. Finally, there is the all-important remote desktop connection to access and operate the virtual machine.
Fortunately, remote desktop solutions have improved in recent years which was key to making VDI (Virtual Desktop Infrastructure) that includes video and audio editing applications a viable option.
There are many remote desktop solutions, but this document will discuss using the Teradici PCoIP Graphics Agent.
This guide will help navigate many of the things you will need to consider while highlighting some of the topics organizations should discuss internally as well as with any vendors involved in designing a solution that includes virtualizing Media Composer clients.
Product Names and Terminology To help avoid confusion around the different types of Media Composer editing clients and the additional technology involved with VDI the following are some descriptions of the products and terminology commonly used.
Media Composer Standalone: This is a Media Composer client where the software is running on a physical Windows or Mac workstation or laptop, stores its media locally and does not use any asset management system like Avid MediaCentral | Production (Avid Interplay).
Media Composer | Remote: This is when Media Composer is installed on a physical laptop or workstation and connects to a MediaCentral | Production Workgroup and Avid NEXIS storage remotely over a WAN. The workflow typically involves uploading media assets remotely to an Avid NEXIS and downloading proxy from the Avid NEXIS.
Media Composer | VM (VDI): This is when Media Composer is installed on a virtual machine hosted within a private or public cloud infrastructure. The Media Composer virtual machine is accessed by the end user from an Endpoint Client/Receiver using a remote display protocol such as Teradici PCoIP. his document was written primarily for this use case.
Hyper-converged (HCI) Media Composer | EOD (Edit On Demand): This is when Media Composer is purchased and deployed as a SaaS solution within Microsoft Azure. The Media Composer deployment includes the Teradici PCoIP Agent and Avid NEXIS storage and all the required software licenses.
VDI: VDI stands for Virtual Desktop Infrastructure. While there are technically different types of VDI, this document will be referring to VDI where a workstation resource is running as a virtual machine in a datacenter that a user is accessing and operating over the network from and endpoint client.
Endpoint Client: An endpoint client is a hardware device that an operator uses to access a workstation or VM remotely. An endpoint client setup will usually consist of one or two monitors, a keyboard, mouse and desktop computer, laptop or zero client.
Zero Client: A Zero Client is an endpoint hardware device that an operator uses to access a workstation or VM remotely. Zero Clients have no operating system and run firmware for a specific remote display protocol. The chipset on a zero client is specifically designed to efficiently transmit command data and receive the desktop pixel data over the remote display protocol.
Software Client: A Software Client (with regards to VDI) is an endpoint hardware device running an operating system like Windows or Mac OS that is used to remotely access another workstation or VM. Software Clients are essentially like any standard computer so when they are not being used to remotely access another machine they can be used locally like any Windows or Mac computer.
Teradici PCoIP: “PC over IP” is a remote display protocol originally developed by Teradici to compress and decompress images and sound across local and wide area networks. This technology lowers the demand on the network while maintaining high quality images and sound. Take note that PCoIP is a brand name product for Teradici, but people will often use the term PCoIP generically referring to the fact that a desktop resource is being remotely accessed from an endpoint client over a LAN or WAN.
Teradici PCoIP Ultra: PCoIP Ultra is an enhancement to the original PCoIP protocol from Teradici. PCoIP Ultra contains expanded configuration options that enable you to choose the most efficient settings according to content characteristics. This flexibility results in a faster, more interactive experience for users of remote workstations working with high-resolution content, including applications for video editing, motion graphics and animation. PCoIP Ultra is recommended for 4K/UHD high frame rate content. Most newer software clients devices with i5 processors or better have the compute resources required to run PCoIP Ultra. Please consult with Teradici for minimum requirements.
Teradici PCoIP Agent: This is the software component installed on the virtual machine that will be accessed and controlled remotely from an endpoint device.
Teradici PCoIP Software Client: This is the software component installed on the endpoint device the operator physically interacts with to remotely connect to the virtual machine with Media Composer installed. The endpoint device hardware is typically a Zero Client or Software Client.
Hyper-converged (HCI) Hyper-converged infrastructure (HCI) combines compute nodes, storage and networking into a single chassis that is administered by an intelligent management plane and can be scaled by adding one or more nodes at a time to the cluster as needed. Nutanix includes complete lifecycle management (LCM) of the entire platform for the BIOS, firmware and multiple software components which Nutanix Infrastructure makes upgrades much easier. It maintains an inventory of components, current versions, available compatible updates and then coordinates and executes the upgrade process for you all within a single update service.
Nutanix Infrastructure Qualified Nutanix AOS The minimum supported version of the Nutanix Acropolis Operating System for use with Media Composer is version AOS 5.10.
Nutanix Validation Infrastructure The Nutanix hypervisor comes pre-installed when you purchase a Nutanix hardware appliance.
Nutanix software is generally hardware agnostic. Nutanix software is qualified to run on HPE ProLiant series servers (DL/DX), Dell, Cisco Lenovo, and other third-party server vendors. Refer to the Nutanix website for the most up to date, qualified, and certified hardware platforms.
Hardware configurations are available to fit any workload by scaling the primary resources (CPU, RAM, or Storage) within each node. All nodes include flash memory to optimize storage performance, and all-flash nodes are available to deliver maximum I/O throughput with minimum latency.
The following table lists the hardware specifications used for Avid’s internal test and qualification process.
Resource Model/Description Nutanix Nodes HPE DX380 Gen10 CPU Intel(R) Xeon(R) Gold 6248R CPU @ 3.00GHz Number of Sockets 2 physical processor sockets per node Number of Cores 48 per node GPU NVIDIA RTX-6000 Memory 768GB (node 1), 384GB (node 2), 384GB (node 3) Storage 14 x 900GB SSD across 3 nodes Network 2x Intel X710 Dual Port 10Gb AOS Version 5.20.x LTS Avid Media Composer v2018.12.x (minimum), v2021.12.x Nutanix Infrastructure Infrastructure Diagram Network Design When designing the network for the deployment of your solution, Avid recommends that you consult with a certified network engineer who is familiar with virtualization and hyperconverged platforms.
> **Note:** To maximize performance Avid recommends that you create a separate vlan for the controller VM’s
to communicate over.
Cabling Logical rules for cabling apply. If you need to limit single points of failure, you should design your system to “dual connect” each component.
Nutanix Infrastructure Calculating Your Compute Resource Requirements Vertical sizing or compute resource allocation are the terms used to describe how many cores, how much memory and disk space and which vGPU profile you will need to allocate to a virtual machine to perform a certain workload or function.
There are several factors to consider when trying to determine the number of cores and amount of memory you will want to assign to a virtual machine running Avid Media Composer.
(cid:129) If the sequence timelines are less complex and have less video streams like with news or sports highlights, then that is considered light editing.
(cid:129) If the sequences are more complex like with episodic television or for feature films then that would be considered advanced editing.
(cid:129) The codec you use will also play a role. Codecs like XDCAM and Avid DNxHD can playback more streams per core because they require less compute power to encode and decode versus more dense codecs like AVC-Intra, AVC LongG or XAVC.
(cid:129) Lower framerates like 24 or 25 fps are more forgiving than 30 fps projects when it comes to screen refresh rates involved with the remote desktop display (PCoIP) process.
(cid:129) Which Video Quality Playback Setting is used in the Media Composer Timeline CPU Cores The majority of Media Composer workflows require the virtual machine to have between 6 and 12 cores assigned to it. For lighter editing using three streams or less, you can safely calculate and provision core allocation at a rate of 1.5:1. For more intensive editing where a timeline will often playback more than three streams and have a lot of effects, then the core allocation should be reduced to 1.2:1. Calculations also need to reserve some CPU cores for the CVM which are reflected in the examples that follow. Official calculations will ultimately be done by an Avid or Nutanix SA based on a number of factors including your system's overall size, use case and workloads.
> **Note:** As of January 2021, two processors recommended for virtualization nodes hosting Media Composer
are listed below.
(cid:129) Intel® Xeon® Gold 6248R Processor (24 cores @ 3.0 GHz) (cid:129) Intel® Xeon® Gold 6258R Processor (28 cores @ 2.7 GHz) Example 1: Light Editing with 6 Cores per VM In this example let's assume you are designing a node with dual Intel 6248R processors for a total of 48 physical cores. If your editing projects are very basic and your sequences include only a few tracks, then 6 cores might be appropriate for your Media Composer VMs. In this case you can use the 1.5:1 ratio in your calculations.
48 total physical cores in each host -8 subtract 8 cores for CVM 40 40 x 1.5 = 60 cores for VM's 60 60/6 cores per VM = 10 10 10 Media Composer VMs per host each with 6 cores Nutanix Infrastructure Example 2: Advanced Editing with 12 Cores per VM This example uses the same physical environment but calculates for a workload for projects with a greater number of more complex sequence tracks. In this case you would want to use the 1.2:1 core allocation rule with 12 cores assigned to each VM to determine your maximum client count.
48 total physical cores in each host -8 subtract 8 cores for CVM 40 40 x 1.2 = 48 cores for VM's 4 4 Media Composer VMs per host each with 12 cores Once you have determined the number of VMs you can deploy based on cpu cores you can consider which GPU card will be best for your system.
Memory Calculating memory allocation for a VM running Media Composer is nearly identical to deciding on specs for a physical workstation. For smaller projects we recommend allocating 32GB of memory to your VM. Larger projects that have large bins and bins with complex sequences open use more memory and should have 48 - 64GB of memory assigned to them. You can monitor the memory usage as you normally would in the Media Composer project window, Windows Task Manager or within Nutanix Prism.
Additional Notes on vCPU and Memory Allocation (cid:129) You can over-provision CPU cores, but you cannot over-provision memory.
(cid:129) With virtualization because the hypervisor manages the CPU calls through something referred to as CPU Scheduling assigning too many cores to a single VM can actually decrease the performance due to an increase in CPU ready/wait times.
(cid:129) It is easier to understand your VM resource performance if you start with minimal resources and increase them as needed.
For more information, see “Addendum B: Additional Notes Regarding Sockets and Cores” on page 37.
Virtual Disks (VHD) A virtual machine running Avid Media Composer does not require a lot of disk space. The Windows 10 OS will use about 20GB of space. Media Composer, Avid NEXIS Client and the Avid Workgroup Client apps will use another 5GB of space. You'll want to account for any other third party applications that might be installed as well as some space for Windows updates to download. Most use cases can safely configure the virtual disk with 80 - 200GB of space for the Media Composer VM.
Virtual GPU (NVIDIA GRID) Virtual GPU (NVIDIA GRID) Media Composer VMs require a supported NVIDIA graphics card be installed in the host server node so that the virtual machine can be assigned a vGPU profile. When using a GPU card with virtualization, the vGPU profile represents the size of the frame buffer that you are reserving for the virtual machine. The same profile must be used by all virtual machines sharing a single GPU card.
You can however assign a different profile to VMs sharing another GPU. All HD projects should use the 4Q profile which reserves 4GB of frame buffer. In testing, the 4Q profile provided sufficient frame buffer to support two 1920x1080 monitors, several streams of commonly used HD codecs, and the remote display data. The GPU profile you choose determines how many vGPUs a card can be “sliced” into.
The NVIDIA® T4, has a total of 16GB of memory for the frame buffer. Using the 4Q profile, you could slice the card four times (4 x 4 = 16). That would allow four different virtual machines to share the GPU. The NVIDIA® Quadro RTX™ 6000 with 24GB of memory can be sliced 6 times using the 4Q profile.
Returning to your cpu core calculations, you can decide which GPU card will be most appropriate.
Example 1: Light Editing with 6 Cores per VM 10 10 Media Composer VMs with 6 cores each 10 Media Composer VMs with 4Q profile = 40GB needed 3x T4 3x T4 cards would provide 48GB 2x RTX-6000 2x RTX-6000 cards would provide 48GB Example 2: Advanced Editing with 12 Cores per VM 4 4 Media Composer VMs with 12 cores each 4 Media Composer VMs with 4Q profile = 16GB needed 1x T4 1x T4 cards would provide 16GB 1x RTX-6000 1x RTX-6000 cards would provide 24GB (8GB unused)
> **Note:** Two T4 cards could be used to protect against a hardware failure with the card.
NVIDIA vGPU Cards Prior to creating any Avid Media Composer virtual machines, make sure that the required software to support the NVIDIA card you have chosen has been installed on the Nutanix host node.
When you purchase the GPU card, NVIDIA generates a welcome e-mail which includes one or more Product Activation Keys (PAKs). You must use the information in the e-mail to create an NVIDIA user account and register your product with the NVIDIA Licensing Portal. This registration process provides access to the drivers for both the hypervisor host nodes and the Windows 10 VM guest OS.
The minimum recommended NVIDIA driver packages is 441.x which supports vGPU 10. Keep in mind that when considering NVIDIA driver versions you should always cross reference that the NVIDIA driver package has been qualified with the version of Media Composer you plan to run and also qualified by Teradici and Nutanix.
Virtual GPU (NVIDIA GRID) NVIDIA cards that have been tested and qualified are:
MODEL MEMORY SLOT CONFIG GPU PROFILE HD PROJECTS Tesla V100 32GB Dual 4Q Tesla P40 24GB Dual 4Q RTX6000 24GB Dual 4Q Tesla T4 16GB Single 4Q Tesla M60 16GB Dual 4Q Tesla P4 8GB Single 4Q NVIDIA cards that have not been tested but should work are:
MODEL MEMORY SLOT CONFIG GPU PROFILE HD PROJECTS RTX8000 48GB Dual 4Q Tesla V100 16GB Dual 4Q Click here to visit the NVIDIA website for more information on the NVDIA GRID product line.
Click here to visit the NVIDIA website for more information about NVIDIA vGPU Licensing.
NVIDIA GRID vGPU Installation Before deploying a virtual machine that requires a GPU you need to install the NVIDIA driver for the hypervisor. This will make the vGPU option available when creating the VM. Then you will need to setup a NVIDIA Grid License Server.
Installing the NVIDIA GRID host driver on the hypervisor host server NVIDIA GRID Virtual GPU Manager for AHV can be installed from any Controller VM using the install_host_package script. The script, when run on a Controller VM, can install the driver on all the hosts in the cluster. If one or more hosts in the cluster do not have a GPU installed, the script prompts you to choose whether or not you want to install the driver on those hosts.
You can find detailed instructions for installing the driver's in the Nutanix AHV Administration Guide found online here.
Installing the NVIDIA vGPU Software License Server You can install the NVIDIA vGPU software license server on Windows and Linux systems that meet the license server's platform requirements. For requirements and detailed instructions on the installation please refer to NVIDIA's documentation found online here.
Links To Recommended Nutanix Documentation Links To Recommended Nutanix Documentation Refer to the following links for more information on Nutanix:
(cid:129) Nutanix AHV Best Practices https://portal.nutanix.com/page/documents/solutions/details?targetId=BP- 2029_AHV:top_ahv_best_practices.html (cid:129) Nutanix Networking Best Practices https://portal.nutanix.com/page/documents/solutions/details?targetId=BP-2071-AHV- Networking%3Atop_ahv_networking_best_practices.html (cid:129) Nutanix Resource Oversubscription https://portal.nutanix.com/page/documents/solutions/details?targetId=BP- 2029_AHV%3Atop_resource_oversubscription.html (cid:129) Nutanix Performance Monitoring https://portal.nutanix.com/page/documents/details?targetId=Web-Console-Guide-Prism- v5_18:wc-performance-management-wc-c.html (cid:129) Nutanix Image Configuration Service https://portal.nutanix.com/page/documents/details?targetId=Web-Console-Guide-Prism- v5_18:wc-image-configure-acropolis-wc-t.html (cid:129) Nutanix Bible https://nutanixbible.com/ 2 Deploying Media Composer VDI on Nutanix These instructions assume the person who will deploy the virtual machines is familiar with the tools, settings and process to deploy them properly when provided the technical parameters for each virtual machine.
A Microsoft Windows 10 ISO image is required to install the operating system on the Media Composer VM. For information on downloading a copy of the Windows image click here to visit the Microsoft Windows 10 download page.
After the ISO image has been downloaded, you must upload the image to Image Configuration Library within Prism so you can mount the image to the virtual CD-ROM device of your VM.
Deploying the Virtual Machine The following information provides the recommended settings and options when deploying a virtual machine for Avid Media Composer with Nutanix Prism.
To deploy the virtual machine:
1. Log into Nutanix Prism.
2. Upload the Windows 10 iso image and the Windows Virt IO drivers iso to the Nutanix Prism
Image Configuration Library.
3. Click Create VM and proceed to create a new virtual machine starting with the General
Configuration.
Parameter Description Name Custom Deploying the Virtual Machine Parameter Description Description Custom Timezone (optional) Custom Use this VM as an Agent VM Deselect
4. Enter the values for vCPUs, Cores and Memory
Compute Details Cores Per vCPU 6 - 12 Memory 32 - 64 Remember that the option to add a GPU will not be available until the card(s) is installed and the GPU driver for the hypervisor is installed on the host node.
5. Select Add GPU.
Deploying the Virtual Machine
6. Choose vGPU for the GPU Mode.
7. Choose the Quadro-Virtual-DWS,xx for your GPU License.
8. In the list of VGPU Profiles select the 4Q Profile and then click Add.
9. For the Disks by default there will be one CD-ROM disk. Edit the default CD-ROM and add the
Windows 10 iso image to the CD-ROM device.
10. Add a second CD-ROM device and mount the Windows Virt IO iso image.
Deploying the Virtual Machine
11. Each Media Composer VM only requires a single volume and partition for the operating system
and applications. Add a VHD device to host the operating system and application install.
Depending on what applications you will be adding this disk can be between 80 and 200GB in size.
> **Note:** Avid has only tested storing and accessing media assets with a Media Composer VM from Avid
NEXIS and Avid ISIS storage systems.
Deploying the Virtual Machine
12. Add a Network Adapter. Make sure you choose the appropriate Network Name from the
pulldown menu based on your design.
> **Note:** Most solutions can mix the VM traffic with the Avid NEXIS traffic. If you needed to isolate the VM
traffic from the NEXIS traffic you could create a second NIC on a different VLAN. VM traffic would include all VM Windows OS related activities like corporate network, internet, network shares, PCoIP, etc.
Installing the Windows 10 Operating System Installing the Windows 10 Operating System The following instructions walk you through deploying a new VM using the Windows 10 OS install media. Nutanix image service also supports deploying VMs from prebuilt images.
To install the Windows 10 operating system:
1. Power on the VM and then launch the Console window for that VM from within Prism. The
console window should open and present you with the Windows Setup screen.
2. Choose you Language, Time and currency format and Keyboard style and click Next. You will
be presented with the Install now button.
3. Click Install now. After a few moments you will be presented with the list of different versions of
Windows 10 to install. Choose the appropriate Windows 10 Pro version for your installation and click Next.
4. Accept the License Agreement and click Next.
Installing the Windows 10 Operating System
5. Choose Custom: Install Windows only (advanced).
6. You won't have any disk to choose for your installation until you load the Virt IO drivers. Click
Load driver.
7. Browse to the CD Drive with the Nutanix VirtIO image and then navigate to the Windows 10 >
amd64 folder and click OK.
Installing the Windows 10 Operating System
8. Use the Shift key to select all three drivers and click Next.
The progress bar will process a few times and then return to the Windows Setup showing the VHD you created.
Configure vNIC Ethernet TCP/IP Properties
9. Select the Drive and click Next.
The Windows 10 installation will begin. After a few minutes you will be presented with some interactive setup screens. When asked “Who's going to use this PC?” enter a user name to be a local admin user in addition to the default Administrator and click Next to proceed with the final configuration steps. When you have completed the setup process you will be presented with the Windows Desktop.
Configure vNIC Ethernet TCP/IP Properties Now configure the ethernet settings so you can connect to the network and run Windows Updates.
To configure:
1. In the Search field type ethernet and open the Ethernet Settings.
2. Click Change adapter options.
3. Right click the adapter and choose Properties.
4. Deselect the TCP/IPv6 setting.
5. Double-click the TCP/IPv4 setting to open it.
6. Configure the Address, Mask, Gateway, DNS.
7. When you apply you TCP/IP settings a Networks Banner will appear asking if you want to allow
your PC to be discoverable. Click Yes.
Run Windows Updates Run Windows Updates Perform the following.
To run Windows Updates:
1. Verify that the Windows updates have been approved by Avid, Teradici and NVIDIA.
2. In the Search bar start to type check for updates and when it appears select it.
3. When the Windows Update Setting appears click the Check for updates button and let the update
process run.
4. Restart when instructed to do so.
5. Repeat the process of checking for updates. When you open Windows Update again it might
initially say you're up to date. Click the button to check for updates anyway. Only when you have manually checked for updates and it says you are up to date is it complete.
Set the VM Hostname Go to Control Panel > System and Security > System > Advanced System Settings and set the Computer Name.
Enable Windows Remote Desktop After you install the NVIDIA driver on the VM you will no longer be able to access it using the Nutanix Prism Console. Therefore, you need to make sure that Remote Desktop is enabled on the Windows guest OS of the VM.
Remove the CD-ROM Devices from the VM To enable:
1. Go the search field next to Windows Start icon in your Task Bar and start to type enable remote
desktop. When you see Remote Desktop settings appear in the choices select it.
2. When the Settings open be sure the Enable Remote Desktop is set to On.
3. Close the settings window.
Remove the CD-ROM Devices from the VM Take this opportunity to remove the CD-ROM devices from the VM as they will no longer be needed.
To remove the CD-ROM devices:
1. Shutdown the VM.
2. Click the option to Update the VM and delete the two CD-ROM devices. Save your changes.
3. (Optional) Create a Snapshot to preserve the Windows OS baseline state so that you can return to
it if anything should go wrong while installing and configuring additional software on the virtual machine. Once the configuration is complete and you have verified everything is working properly you should delete any snapshots that you created.
4. Power the VM back on.
> **Note:** This is a good time to create a snapshot. Unlike Snapshots that are hypervisor based like with
VMware and Hyper-V, Nutanix snapshots are based on redirect-on-write implementation. There is no performance impact of keeping snapshots lying around. Nutanix OS is always optimizing the index or metadata associated with the snapshots in the background for performance and capacity.
Continuing to Remotely Connect to the VM Now that your VM has the Windows OS baseline configuration completed you can connect to it remotely using Windows RDP or other tools like mRemoteNG that can leverage the Windows RDP service to perform administrative tasks. Next however, we will install and configure the Teradici PCoIP software which is how editors will access the VM to use Avid Media Composer.
> **Note:** While you can use standard RDP tools to access the VM for administrative purposes when you intend
to use Media Composer you should always connect using the Teradici Client software.
Installing the NVIDIA Driver on the Windows (VM) Guest OS The process to install the NVIDIA driver on the VM is the same as installing it on a traditional Windows workstation.
To install the driver:
1. Remotely connect to the VM using your Teradici PCoIP Client. The NVIDIA Control Panel
Settings will not be available if you remotely connect through Windows RDP.
2. Download or copy the correct version of the driver package the VM. (v441.28 minimum)
3. Run the installer. When the installation is complete restart the VM.
Installing and Configuring the Teradici PCoIP Agent on the VM Installing and Configuring the Teradici PCoIP Agent on the VM Teradici Cloud Access is a suite of different products and software that provide their various PCoIP solutions. The Teradici PCoIP protocol assists in processing the desktop images and sound between the VM (host agent) and the endpoint client. You need to install the Teradici Host Agent on the virtual machine to enable the PCoIP connection from your endpoint client.
> **Note:** Teradici has both a Standard Agent and a Graphics Agent available. Make sure you download and
install the Graphics Agent on the Media Composer virtual machine.
Click here for the Teradici Agent download page.
Click here for instructions to install the Teradici Cloud Access Software (PCoIP Agent).
Configuring the Teradici Host Agent After the connection agent has been installed configure the agent's settings for use with Media Composer. Complete the following process to configure the Local Group Policy for the Teradici agent.
To configure the connection agent:
1. Click the Windows icon in the bottom-left corner of the screen and type: run
2. Select the Run (Desktop app) from the menu.
3. Type the following into the Run window and press Enter: gpedit.msc
4. Click the arrows to the left of each menu tree option to navigate to: Computer Configuration >
Administrative Templates > Classic Administrative Templates (ADM) > PCoIP Session Variables > Overridable Administrator Defaults
5. In the pane on the right, double-click the setting to “Configure PCoIP image quality levels”.
6. Select the Enabled button near the top of the window and configure the Maximum Frame Rate to
a value of 60.
7. Click Apply and OK.
8. In the pane on the right, double-click the setting to “Configure the PCoIP session bandwidth
floor.”
9. Select the Enabled button near the top of the window and configure the session bandwidth floor
to a value of 100,000 kilobits per second.
The bandwidth floor setting is used to avoid some issues with playback that were noticed on occasion within the first few seconds of pressing play.
10. Click Apply and OK.
11. Close the Local Group Policy Editor
Installing the Teradici PCoIP Endpoint Client Software Installing the Teradici PCoIP Endpoint Client Software The Teradici PCoIP Client software needs to be installed on your (software) endpoint client. This could be any 64-bit laptop or workstation running Widows, macOS or Linux.
You can download the installer and view the Administrator's Guide which contains system requirements, installation instructions and additional information regarding feature support and configuration parameters here. The Administrator's Guide can be accessed in a “pop-out” pane that reveals after you have chosen which software client you want to download.
Licensing Models for Teradici PCoIP Teradici PCoIP is supported by two licensing models.
(cid:129) Teradici Cloud Licensing Service: This requires you to deploy a license server on a public cloud platform. These licenses can be used if your PCoIP Agent (VM) has access to the internet.
(cid:129) License Server Based Licenses: These licenses should be used if your PCoIP agent runs in an environment that does not have access to the internet.
Addition information on the setup and configuration of the these licensing options can be found on Teradici's website here.
Remotely Accessing the VM Using the Teradici PCoIP Client Once you licensing model is in place and you have installed the Teradici Agent on the VM and the PCoIP Client onto your endpoint device you can now connect to the VM. Depending on whether your deployment is using direct connections or connections that are managed by a “Broker” the login process is slightly different. You can find the directions for both on Teradici's website here.
Licensing and Configuring the NVIDIA GRID vGPU Licensing and Configuring the NVIDIA GRID vGPU After installing the NVIDIA driver software, you must license the vGPU with the NVIDIA license server.
To license the vGPU:
1. Right-click on the desktop and select “nView Desktop Manager” from the menu.
2. Select Manage License from the Licensing option in the “elect a Task” pane on the left.
3. Enter the IP address or fully qualified domain name of your license server and the port number
(7070) at which the server can be contacted.
4. Click Apply.
To configure the NVIDIA card settings:
1. Right-click on the desktop and select “nView Desktop Manager” from the menu.
2. Click the Desktop Menu at the top and make sure Enable Video Editing Mode is selected.
Licensing and Configuring the NVIDIA GRID vGPU
3. Click Manage 3D Settings.
4. Click the Global Setting tab.
5. Under Global presets, select Base Profile.
6. Scroll to locate the Power Management Mode. Select Prefer maximum performance and click
Apply.
7. Scroll down to locate Vertical Sync. Set this option to Off and click Apply.
8. Close the NVIDIA Control Panel.
Installing and Testing Avid NEXIS Client Installing and Testing Avid NEXIS Client Before installing Media Composer you should install the Avid NEXIS Client and use the Avid NEXIS Path Diag tool to verify the VMs network path to the Avid NEXIS storage is providing the appropriate R/W performance.
The following steps walk you through installing and testing the Avid NEXIS Client on you Media Composer VM. These steps assume your Avid NEXIS System has already been properly installed, configured and connected to the network.
To install and test Avid NEXIS client:
1. In the root of the VM's C: drive create a folder called Avid_Installers.
2. Copy the Avid NEXIS Client (for Windows) installer file to the Avid_Installers folder.
3. Launch the installer and step through the installation process.
4. Close the installer and choose Yes to restart when it is finished.
5. Once you are logged back in the Avid NEXIS Client will launch automatically.
6. If your Avid NEXIS System is in a different subnet as your VM you will need to configure the
Remote Hosts Setting:
- Click on the Remote Hosts (network) icon at the top of the Avid NEXIS Client window.
- Enter the IP address of the System Director for your Avid NEXIS System.
- Click the Check Mark to apply the change and the system should become available.
7. Once the Avid NEXIS Client is connected and you have mounted a workspace launch the
PathDiag Tool.
8. Click the Setup… button at the top center to open the settings.
Installing Avid Media Composer on a VM
9. Use the scroll bar to go to the bottom of the list and choose Avid NEXIS Read/Write [unlimite
10. For the Path to Test choose the drive letter for one of the Avid NEXIS workspaces you mounted.
11. Leave the Duration at 2 minutes and click OK.
12. Back in the main window click Start. The test should quickly ramp up a green and light blue path
indicating it is WRITING out a file to the workspace. Your Writes and Read speed will differ somewhat depending on how many Avid NEXIS MediaPacks are in your Storage Group. Since this test is “unlimited” and targeting a single 10 disk MediaPack the Writes over a 10Gb connection should average about 350MB/s. At the one minute mark the test will read back the file it wrote and should show an average rate of about 1,000MB/s. It is important that the dark blue line for the recent reads does not fluctuate by much once it reaches its peak level. It should progress fairly straight from left to right.
If you are not getting the read/write speeds you would expect for your configuration, please recheck and verify your basic network connections and configuration. If the performance data still does not appear to be accurate contact Avid Customer Support.
Installing Avid Media Composer on a VM The next step in the VM configuration process is to install Avid Media Composer on the virtual machine. The following section only contains steps that are specifically related to the installation of Media Composer on a virtual machine. You can perform the installation steps through a standard Windows RDP connection, but you will need to use your Teradici PCoIP Client any time you are using Media Composer.
> **Note:** The ability to run Media Composer as a virtual machine requires a VM Options License in addition
to the Media Composer license itself. When activating the Media Composer software, make sure that you also activate the VM option within Avid Link Installing Avid Media Composer on a VM To install Media Composer on a VM:
1. Read the Avid Media Composer Application Install Guide and ReadMe Guide for the version of
Media Composer that you will be installing. Guides can be found on the Avid Knowledge Base landing page for Avid Media Composer.
https://avid.secure.force.com/pkb/articles/en_US/user_guide/Media-Composer-2020- Documentation
2. Download the Media Composer software to the VM and place it in the Avid_Installers folder you
created on the root of the C: drive.
3. Launch the Media Composer executable and follow the guide to step through the installation
process.
4. Install any additional applications or plugins as required by the Media Composer documentation
or for your workflow.
5. Use the Avid Link Application to apply your Media Composer and VM Option Licenses.
6. From your endpoint client connect to the Media Composer VM with your Teradici PCoIP Client.
7. Launch Media Composer and proceed to create a user and project as you would normally.
8. To perform baseline performance tests refer to the directions in Addendum A of this document.
A Addendum A: Executing Baseline Performance Tests with Your Media Composer VDI Client These steps are designed to provide a logical and efficient process to establish a baseline performance with Media Composer VDI clients. Executing these steps will help determine that the setup and configuration will meet the performance standards necessary to achieve your operational goals, business goals and of course a proper end-user experience.
If possible, configure remote access to one or more physical Media Composer workstations using the Teradici PCoIP client just like the VM. This way if you experience any issues you can perform the same steps and tests with the workstation and compare the results to the Media Composer VM. This will help you determine if the issue you are encountering has more to due with PCoIP experience versus a problem inherent to the performance of the VM.
Media Composer VM Playback Test Setup Perform the following for testing Media Composer VM playback.
To test:
1. Create a project that is 1920x1080, 59.94.
2. Create media using the DNx145 Codec to perform this baseline test. A VM with 8 cores assigned
from a CPU with a clock speed of 2.1Ghz or greater should be able to play 6 or more streams of DNx145 without dropping frames.
3. Using the DNx145 media create a simple single track, cuts only sequence using several different
clips.
4. Open the Media Composer Console Window (from the Tools Menu). In the field at the bottom
type and enter the command sf. This command will provide information on whether any frames were late or dropped during playback. This command will persist until you quit Media Composer.
Media Composer VM Playback Test Setup
5. Play the sequence with one video track. Check the Console window to verify there were no
dropped frames. Playback should not drop any frames with a single track. If the console does indicate frames were dropped will need to troubleshoot the source of the problem. If no frames were dropped proceed with the next steps to build a sequence with the PIP effect to test playback with multiple streams.
6. Make your sequence to be about 70 seconds long. Add six more tracks of different video clips to
your sequence and add a PIP effect to V2 - V7. Make the IN-point for each new layer after the previous layer plays for 10 seconds. Your timeline should look like the screenshot below.
7. Shrink the PIP effect on V2 to about 1/8 the size of the playback window, reposition it to the top
left corner. Repeat the process with the PIP effect on V3 - V7 positioning each track so that you are creating a grid that looks like the screenshots below at the end of the sequence when monitoring all seven tracks.
Media Composer VM Playback Test Setup
8. Make sure the monitor icon is on the 7th track so you will see the video for each track appear
when you playback the sequence.
9. Play the sequence back and check the console for dropped frames. If there are no dropped frames
loop play the sequence for several minutes and check the console again for dropped frames. Also check Nutanix Prism to see the graph and percentage values of CPU utilization for the VM. The graph should show an increase in CPU utilization with each track added and then drop back down when the sequence finishes and restarts at the beginning again with just one track playing.
The screenshot below shows the condensed graph results of a longer sequence that loop played many times.
> **Note:** The Nutanix Prism online guide has detailed steps on how to configure Analysis Dashboards and
export usage metrics to get the most out of your performance testing
10. Continue to add another track with a PIP effect. Playback the sequence with each added layer
and check for dropped frames and continue to monitor the CPU and GPU utilization of the VM with each playback. You shouldn't see dropped frames until the CPU utilization exceeds 90%.
> **Note:** Once you have a sequence with six or more tracks you can continue to make changes and repeat the
tests using the same sequence by just changing which track you have placed the monitor icon on. If you have a sequence with 10 video tracks but place the monitor on V6 than you will only be playing and monitor the 6 layers.
Testing Multiple VMs and Documenting Baseline Performance Data Testing Multiple VMs and Documenting Baseline Performance Data Perform the following to test multiple VMs.
To test:
1. Deploy additional VMs on the same node until you have reached the number your system was
designed to host. Repeat the steps above on each VM so you can loop play a sequence from all the VMs simultaneously.
2. While all the VMs are playing their sequence make a note of how much CPU is being use by
each VM and the overall CPU utilization of the host node. Use Nutanix Prism to capture the compute resource utilization data for CPU, Memory, GPU and NIC Rx MB/s for each individual VM and the overall usage for the entire host node. (You can also monitor the resource usage for each VM in Resource Monitor within Windows Task Manager.)
3. Continue to perform tests using this method but build sequences that will be more similar to
those you have in a project. Create a chart similar to the one below to record the results. This will allow you to capture a performance baseline to establish what how you will need to size your VMs for your different projects and use cases.
Monitoring AV Sync During Playback Media Composer (software-only) has three settings for Playback Quality. New projects will default to Timeline Settings using Draft Quality Playback. Changing this setting could yield more streams without dropping frames in Performance Mode or less streams in Full Quality Mode.
Draft Quality Processes and plays a subsample of the full image raster for the project that uses 1/4 of the image information. Uses a bit depth of 8 bits.
(Default) This option subsamples 50% of the raster width. For interlaced projects, this option uses one field. For progressive projects, this option uses 50% of the scan lines.
Performance Processes and plays a subsample of the full image raster for the project that uses 1/16 of the image information. Uses a bit depth of 8 bits.
This option subsamples 25% of the raster width. For interlaced projects, this option uses 50% of the lines in one field. For progressive projects, this option uses 25% of the scan lines.
Full Quality Processes and plays the full image raster for the project. Uses a bit depth of 8 bits.
This option provides the highest video playback quality by processing every image pixel. In interlaced projects, this option processes the full width of every line in both fields. In progressive projects, this option processes the full width of every scan line.
Monitoring AV Sync During Playback While doing your playback tests if you determine that your audio and video are out of sync, you can open the Media Composer Desktop Play Delay setting and adjust the option for “Video Sync Delay For Remote Client Milliseconds.” The amount of delay can depend on a number of factors. When adjusting this setting, start with 100 milliseconds and adjust the value as needed. For more information, see “Adjusting the Play Delay Offset” in the Avid Media Composer Editing Guide.
B Addendum B: Additional Notes Regarding Sockets and Cores When determining how to assign the vCPUs and the number of cores per vCPU to a virtual machine your primary factors are:
1. The number of CPU sockets in each host node.
2. The number of physical cores in each physical CPU socket.
3. The amount of memory in each NUMA.
> **Note:** Wikipedia defines NUMA as a computer memory design used in multiprocessing, where the memory
access time depends on the memory location relative to the processor. Under NUMA, a processor can access its own local memory faster than non-local memory (memory local to another processor or memory shared between processors).
In the following example, the physical host node has two CPU sockets. Each CPU socket has an Intel Gold 5220 CPU with 18 cores. Therefore, the host has a total of 36 physical cores. The host has 512GB of memory meaning each CPU socket has 256GB of memory in each NUMA node.
For optimal performance use the following guidelines when deploying virtual machines and configuring the number of CPUs and the number of cores per vCPU.
(cid:129) As long a VM does not require more cores than available on a single CPU socket or more memory than is available in a single NUMA node then assign the VM 1 vCPU and all the cores to that one vCPU.
(cid:129) It is better to be conservative when assigning the number of cores to a VM and increase the cores if CPU utilization is consistently exceeding 75%. Over provisioning may avoid high CPU utilization, but it can degrade the performance of across all VMs on a host.
(cid:129) Use physical cores (not logical cores) when calculating the maximum number of cores in a single node. Do not assign a single VM more cores than are available across all CPUs in a single host node.
(cid:129) If you are assigning a VM a core count that exceeds what is available from a single CPU socket, then assign the VM 2 vCPUs and make the number of cores per socket half of the total cores you want the VM to have.
Here are some examples using a host with 2 sockets and 36 physical CPU cores (18 per socket/CPU):
With this CPU 18 cores is the max we can assign with a single vCPU and the 96GB of memory is still within the 256GB available the CPU's local NUMA node.
If the VM needs 20 cores, then it exceeds the 18 physical cores available on a single CPU. Therefore, we give the VM 2 vCPUs with 10 cores per vCPU.
If the VM still only needed 18 cores or less but the memory allocation to the VM is going to exceed the 256GB local to a single CPU then we would use 2 vCPUs.