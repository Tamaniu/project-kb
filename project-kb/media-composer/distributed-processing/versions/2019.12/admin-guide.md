---
product: media-composer-distributed-processing
product-area: editing
version: "2019.12"
release-date: 01/12/2019
doc-type: admin-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Media Composer | Distributed Processing Administration Guide v2019.12 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This product might be protected by one or more U.S. and non-U.S patents. Details are available at www.avid.com/patents.
This guide is protected by copyright. This guide is for your personal use and may not be reproduced or distributed, in whole or in part, without permission of Avid. Reasonable care has been taken in preparing this guide; however, it may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc. disclaims liability for all losses incurred through the use of this document.
Product specifications are subject to change without notice.
The following disclaimer is required by Apple Computer, Inc.:
APPLE COMPUTER, INC. MAKES NO WARRANTIES WHATSOEVER, EITHER EXPRESS OR IMPLIED, REGARDING THIS PRODUCT, INCLUDING WARRANTIES WITH RESPECT TO ITS MERCHANTABILITY OR ITS FITNESS FOR ANY PARTICULAR PURPOSE. THE EXCLUSION OF IMPLIED WARRANTIES IS NOT PERMITTED BY SOME STATES. THE ABOVE EXCLUSION MAY NOT APPLY TO YOU. THIS WARRANTY PROVIDES YOU WITH SPECIFIC LEGAL RIGHTS. THERE MAY BE OTHER RIGHTS THAT YOU MAY HAVE WHICH VARY FROM STATE TO STATE.
The following disclaimer is required by Sam Leffler and Silicon Graphics, Inc. for the use of their TIFF library:
Permission to use, copy, modify, distribute, and sell this software [i.e., the TIFF library] and its documentation for any purpose is hereby granted without fee, provided that (i) the above copyright notices and this permission notice appear in all copies of the software and related documentation, and (ii) the names of Sam Leffler and Silicon Graphics may not be used in any advertising or publicity relating to the software without the specific, prior written permission of Sam Leffler and Silicon Graphics.
THE SOFTWARE IS PROVIDED “AS-IS” AND WITHOUT WARRANTY OF ANY KIND, EXPRESS, IMPLIED OR OTHERWISE, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL SAM LEFFLER OR SILICON GRAPHICS BE LIABLE FOR ANY SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY KIND, OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER OR NOT ADVISED OF THE POSSIBILITY OF DAMAGE, AND ON ANY THEORY OF LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
The following disclaimer is required by the Independent JPEG Group:
This software is based in part on the work of the Independent JPEG Group.
This Software may contain components licensed under the following conditions:
Copyright (c) 1989 The Regents of the University of California. All rights reserved.
Redistribution and use in source and binary forms are permitted provided that the above copyright notice and this paragraph are duplicated in all such forms and that any documentation, advertising materials, and other materials related to such distribution and use acknowledge that the software was developed by the University of California, Berkeley. The name of the University may not be used to endorse or promote products derived from this software without specific prior written permission. THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
Copyright (C) 1989, 1991 by Jef Poskanzer.
Permission to use, copy, modify, and distribute this software and its documentation for any purpose and without fee is hereby granted, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation. This software is provided "as is" without express or implied warranty.
Copyright 1995, Trinity College Computing Center. Written by David Chappell.
Permission to use, copy, modify, and distribute this software and its documentation for any purpose and without fee is hereby granted, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation. This software is provided "as is" without express or implied warranty.
Copyright 1996 Daniel Dardailler.
Permission to use, copy, modify, distribute, and sell this software for any purpose is hereby granted without fee, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation, and that the name of Daniel Dardailler not be used in advertising or publicity pertaining to distribution of the software without specific, written prior permission. Daniel Dardailler makes no representations about the suitability of this software for any purpose. It is provided "as is" without express or implied warranty.
Modifications Copyright 1999 Matt Koss, under the same license as above.
Copyright (c) 1991 by AT&T.
Permission to use, copy, modify, and distribute this software for any purpose without fee is hereby granted, provided that this entire notice is included in all copies of any software which is or includes a copy or modification of this software and in all copies of the supporting documentation for such software.
Using This Guide This document provides instructions for installing, configuring, and using Avid Media Composer | Distributed Processing. Avid recommends that you read all the information in this document before installing, or using the corresponding software release.
The following documents are referenced in this guide:
• Avid MediaCentral | Cloud UX Installation Guide — The Distributed Processing Job Status app is hosted by a MediaCentral | Cloud UX system. Some sections of this guide refer to this document for additional information.
This document is available on the Avid Knowledge Base at:
http://avid.force.com/pkb/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation Revision History Date Revised Changes Made March 13, 2020 Clarification on GPU requirements for service workstations.
December 23, 2019 Initial Release (cid:129) Adds support for co-installing the Distributed Processing Worker Service (Avid Worker Service) on a Media Composer editor. For more information, see “Description of Services” on page 12.
(cid:129) Adds support for installing Distributed Processing services on Windows Server 2016 and 2019.
(cid:129) Includes updated hardware recommendations. For more information, see “Hardware Specifications” on page 14.
Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action A note provides important related information, reminders, recommendations, and
> **Note:** strong suggestions.
A warning describes an action that could cause you physical harm. Follow the w guidelines in this document or on the unit itself when handling electrical equipment.
c A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
If You Need Help Symbol or Convention Meaning or Action This symbol indicates a single-step procedure. Multiple arrows in a list indicate that you perform one of the actions listed.
(Windows), (Windows This text indicates that the information applies only to the specified operating only), (macOS), or (macOS system, either Windows or macOS.
only) Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables. Variables are often enclosed in angled brackets: < >.
Courier Bold font identifies text that you type.
Courier Bold font Ctrl+key or mouse action Press and hold the first key while you press the last key or perform the mouse action. For example, Command+Option+C or Ctrl+drag.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is
especially important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view these online versions, select ReadMe from the Help menu, or visit the Avid Knowledge Base.
3. Check the documentation that came with your Avid application or your hardware for
maintenance or hardware-related issues.
4. Visit the online Avid Knowledge Base. Online services are available 24 hours per day, 7 days per
week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient.
Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 Distributed Processing Server Installation The following main topics are described in this chapter:
(cid:129) Product Overview (cid:129) Installation Prerequisites (cid:129) MediaCentral Cloud UX Server Installation (cid:129) MediaCentral Cloud UX Licensing (cid:129) MediaCentral Cloud UX User Management (cid:129) Working with the Kubernetes Dashboard Product Overview Media Composer Distributed Processing allows Media Composer users to offload foreground tasks such as rendering, consolidating, or transcoding to one or more service workstations on the network.
As these system intensive processes are handled outside of Media Composer, users have more time to focus on the creative editing process.
The distributed operations are monitored by services that report to the MediaCentral Platform. Users can access the Job Status app through Avid Media Composer and / or Avid MediaCentral Cloud UX to monitor the status of their jobs, cancel jobs, or perform other actions related to the remote processing tasks.
Installation Prerequisites Before you begin the installation process, you must verify that you have the following systems and minimum software versions available:
(cid:129) Avid Media Composer v2018.12.8 or later (cid:129) Avid NEXIS v19.2 or later (cid:129) Avid MediaCentral Cloud UX v2019.6 or later with the Distributed Processing Feature Pack enabled. To install MediaCentral Cloud UX for this release of Media Composer Distributed Processing, you must have the following:
- Avid MediaCentral Cloud UX Platform ISO This is the primary installer package that includes the CentOS operating system and core Avid installation components.
- Avid MediaCentral Cloud UX Feature Pack ISO This package includes additional software to install MediaCentral Cloud UX applications (such as the Distributed Processing Job Status app) on the Platform.
MediaCentral Cloud UX Server Installation Server Minimum Specifications In some cases your organization might already own a MediaCentral Cloud UX server that connects to MediaCentral Production Management, Newsroom Management, or other MediaCentral modules. In these cases you must follow the minimum specifications outlined in the Avid MediaCentral | Cloud UX Hardware Guide.
In other cases you might be integrating MediaCentral Cloud UX into your environment to enable Media Composer Distributed Processing only. When deploying MediaCentral Cloud UX for this purpose, review the following minimum requirements:
(cid:129) Memory: 32 GB of RAM (cid:129) Processors: One or more CPUs with a total of 8 cores or better (cid:129) Storage: 256 GB or better for the sda volume (operating system and applications) The MediaCentral Cloud UX documentation references a second volume (RAID 5). As the Media Composer Distributed Processing workflow does not require you to play media through MediaCentral Cloud UX, you are not required to include a second volume (RAID 5).
If you have already purchased or plan to purchase Media Composer | Enterprise, Avid supports co- installing this product on the same MediaCentral Cloud UX server with no increase to the minimum requirements specified above. For more information, see the Avid Media Composer | Enterprise Administration Guide.
MediaCentral Cloud UX Server Installation Media Composer Distributed Processing requires that you install and configure an Avid MediaCentral Cloud UX server or cluster. This section includes a high-level overview of the minimum steps required to install and configure your MediaCentral Cloud UX server for use with Media Composer Distributed Processing.
The following process does not include steps to configure a MediaCentral Cloud UX cluster. If you plan to deploy a MediaCentral Cloud UX cluster, you must complete additional installation and configuration steps as detailed in the Avid MediaCentral | Cloud UX Installation Guide.
If you plan to deploy a MediaCentral Cloud UX server or cluster with the intention of integrating with any of the MediaCentral modules (MediaCentral Production Management, MediaCentral Asset Management, or others), you must complete additional installation and configuration steps as detailed in the Avid MediaCentral | Cloud UX Installation Guide.
Complete the following sections of the Avid MediaCentral | Cloud UX Installation Guide to deploy your MediaCentral Cloud UX server:
(cid:129) Installation Prerequisites (recommended) This chapter describes concepts related to Linux and MediaCentral Cloud UX. It also outlines some of the prerequisite requirements for the installation, such as identifying the host name and IP address of your Cloud UX server.
(cid:129) BIOS and RAID Configuration (if applicable) If you are deploying MediaCentral Cloud UX on qualified hardware, review this chapter to configure your server’s BIOS settings. For more information on Avid qualified hardware, see the Avid MediaCentral | Cloud UX Hardware Guide.
MediaCentral Cloud UX Licensing (cid:129) Software Installation and Configuration This chapter includes the processes to deploy CentOS and the MediaCentral Platform. It also includes procedures on how to log in to CentOS for the first time and how to access the MediaCentral Cloud UX user interface. Complete the following sections of this chapter:
- Verifying Disk Partitioning - MCUX Software Deployment If your server is configured with only one disk volume, you can bypass the process for “Configuring the Installation Destination in the CentOS Install Wizard”.
- Logging in to CentOS for the First Time - Additional Network Configuration As network connectivity and proper host resolution are essential to a successful installation, you must complete the sections for “Configuring DNS” and “Verifying Hostname, Network and DNS Connectivity”. The process for “Renaming the Primary Network Interface” only applies to MediaCentral Cloud UX clusters.
- Running the Cloud UX Setup Script
> **Note:** As a reminder, after the host-setup script is complete, you must make a new connection to the
MediaCentral Cloud UX server.
- Creating Certificate Files - Deploying the Secure Sockets Layer Certificates - Creating a Site Key - Configuring an Authentication Provider - Running the Feature Pack Deployment Script When deploying the feature packs, you must answer Yes to the Distributed Processing and final “Feature packs” (additional feature packs common to all installations) prompts and answer for all other feature packs.
No
> **Note:** In the event that you are deploying both Media Composer Distributed Processing and Media
Composer Enterprise, you must answer at the Media Composer Enterprise prompt.
Yes MediaCentral Cloud UX Licensing In order to use Media Composer Distributed Processing the MediaCentral Cloud UX system must be licensed for the feature. The following illustration shows the two licenses associated with Distributed Processing.
Media Composer | Distributed Processing Engine This license enables the Media Composer Distributed Processing feature on the MediaCentral Platform.
MediaCentral Cloud UX User Management Media Composer | Distributed Processing Worker This license determines the maximum number of Worker services that can participate in the Distributed Processing workflow. For more information, see “Service Workstation Overview” on page 12.
You can install the Distributed Processing Worker service on as many workstations as you have available. However, the number of simultaneous active workers is limited by the number of Distributed Processing Worker licenses available on your system.
While the maximum number of workers is determined by this license, organizations must also consider the available bandwidth of the their Avid NEXIS system when making a purchase. If you add workers without considering your storage network bandwidth, the performance of client systems such as Avid Media Composer connecting to Avid shared storage could be affected.
For more details on applying MediaCentral Cloud UX licenses, see the Avid MediaCentral | Cloud UX Installation Guide.
MediaCentral | Panel for Media Composer In addition to the two licenses described above, you must have at least one MediaCentral | Panel for Media Composer license to enable an Avid Media Composer client to connect to MediaCentral Cloud UX through a panel native to the application.
MediaCentral Cloud UX User Management The MediaCentral Cloud UX User Management app allows administrators to import users from Active Directory and configure the entitlements that are associated with each user group. For more information, see “Using the User Management App” in the Avid MediaCentral | Cloud UX Installation Guide.
Working with the Kubernetes Dashboard MediaCentral Cloud UX is built in a Kubernetes® managed Docker® container structure. While the Media Composer Distributed Processing services that are installed on the service workstations are not managed by these systems, MediaCentral Cloud UX does include one Kubernetes managed service. This service is contained in the avid-ui-distributed-processing-status-uidpl pod.
MediaCentral Cloud UX administrators can use the Kubernetes Dashboard to monitor the health of the Cloud UX system, gather logs, and restart Pods.
If you do not see the Job Status app in the MediaCentral Cloud UX user interface after installing and licensing the application, you can attempt to delete the avid-plugins-list-core-app pod. After Kubernetes recreates the pod, refresh the MediaCentral Cloud UX user interface.
For more information, see “Understanding Docker Containers and Kubernetes” and “Working with Kubernetes” in the Avid MediaCentral | Cloud UX Installation Guide.
2 Installing a Service Workstation The following main topics are described in this chapter:
(cid:129) Service Workstation Overview (cid:129) Hardware Specifications (cid:129) Installation Prerequisites (cid:129) Installing the Distributed Processing Software (cid:129) Modifying the Platform Configuration (cid:129) Starting, Stopping, and Restarting Services (cid:129) Uninstalling the Distributed Processing Software (cid:129) Distributed Processing Logs Service Workstation Overview When you enable a Distributed Processing workflow, you must install a group of Avid services on one or more Microsoft Windows or macOS systems. These services might be installed on server- class hardware or on client workstations that meet the minimum specifications outlined in this chapter. Throughout this document, the term service workstation is used to refer to a server or workstation that hosts one or more of the Media Composer Distributed Processing services.
Avid supports installing the Distributed Processing services on the following operating systems:
(cid:129) Workstation class: macOS 10.13 (High Sierra), or 10.14 (Mojave) (cid:129) Server class: Microsoft Windows Server 2016 or 2019 Description of Services Media Composer Distributed Processing consists of three categories of services (worker, scheduler, and partition) that must be installed somewhere within your local network. In the context of Distributed Processing, the scheduler and partition services are described together as the Distributed Processing Engine. This section provides more information on each of these services.
You can install all three services on the same service workstation, each on its own workstation, or a combination of workstations. The operating system on the service workstation does not matter. You can run any combination of Microsoft Windows and macOS workstations in the same realm.
Avid supports co-installing the Avid Worker Service on the same workstation as the Avid Media Composer editor. In this way you can take advantage of the processing power of any Media Composer system that is not in an active edit session. When you launch the Media Composer software, the Worker service is disabled and removed from the pool of workers so that it does not Service Workstation Overview conflict with the operations of the edit session. Avid does not support co-installing the Scheduler Service or the Avid Partition Service on systems that are already running Avid software such as Avid Media Composer, Avid MediaCentral Production Management, or others.
Distributed Processing Worker Service (Avid Worker Service) The Worker service is the “heavy lifter”. It performs the render, consolidate, and transcode tasks that are submitted by the editor.
If you have multiple workers, the speed at which you can process tasks is significantly increased over a single Media Composer client. Each worker processes one job at a time in the order that they are submitted. When the number of jobs exceeds the number of workers, jobs are queued and processed as soon as additional workers are available. For example if you submit three jobs in an environment with three workers and the first job consists of ten sub-tasks, those sub-tasks are distributed across the total number of workers.
If you have only one worker, jobs are processed with the same speed as if you were completing the task directly on the Media Composer client. Although a single worker might not provide an advantage in processing speed, you still gain an operational advantage as the Media Composer client is free to complete other tasks while the remote job is being processed.
You can have one or more workstations running the worker service. Avid currently supports a maximum of 10 workers per Distributed Processing workgroup in this release, and recommends, whenever possible, to install each worker on a dedicated service workstation or on an Avid Media Composer client.
Distributed Processing Scheduler Service (Avid Scheduler Service) This service acts as the gateway for the Media Composer client. The editor submits the desired task (render, consolidate, transcode) and the scheduler brokers it to available workers and tracks the status of the task throughout its life cycle.
As the scheduler service consumes very little system resources, Avid does not recommend installing this service on a dedicated workstation. Instead, this service is often installed on the same service workstation as the Avid Partition Service, Avid supports installing only one instance of this service per Distributed Processing workgroup.
Distributed Processing Partition Service (Avid Partition Service) This service is responsible for breaking down submitted jobs into parallel tasks.
If you transcode or consolidate a master clip through Distributed Processing, the job is handled by a single worker. However, sequences consisting of multiple assets can be broken down into sub-tasks (one for each master clip) and the work is distributed across the available workers.
Render jobs can often be divided into sub-tasks. When you submit a sequence with multiple unrendered effects, each effect is treated as an individual task. If an effect is long enough and it supports partial render, the individual effect can be broken down into additional sub-tasks for faster processing.
Often installed on the same service workstation as the Avid Scheduler Service, Avid supports installing only one instance of this service per Distributed Processing workgroup. This service can be very CPU intensive and Avid does not recommend installing this service on the same workstation that is running the Worker service.
Hardware Specifications Hardware Specifications Depending on your organization’s workflow and budget, you might need to determine which has greater value: faster processing speed using a single high-powered workstation, or the ability to process more simultaneous jobs using multiple low-to-mid-range workstations. This section includes hardware specifications for both options. Avid recommends that you meet or exceed the following guidelines when deploying a Distributed Processing service workstation.
The GPU requirements in this section are applicable to environments where either transcode or render jobs are being processed by Media Composer Distributed Processing. If your organization plans to leverage Distributed Processing for either of these functions, see the following minimum and high-end recommendations for details. Consolidate operations do not leverage the GPU.
If you are deploying Media Composer Distributed Processing for use with Avid MediaCentral | Shared Library only, the server requirements for that configuration are reduced. For more information, see v2019.9 or later of the Avid MediaCentral | Shared Library Installation Guide.
Minimum Specifications If you intend to install one or more Media Composer Distributed Processing services on a single service workstation, you must meet the following minimum specifications.
Component Description Platform Windows or macOS workstation, or Windows-based server Processor Dual 8-core (Windows) or Dual 12-core (Mac) Memory 32 GB RAM System Drive 256 GB or larger Network Dual 1GbE NIC (Dual 10GbE NIC recommended for higher bit rates and UHD) GPU (graphics If you are installing the Worker Service on this service workstation, you must requisition a processing unit) GPU that is equivalent or better as those used with Avid Media Composer. When making a purchasing decision, you must verify that the GPU is compatible with both the workstation hardware and the Avid Media Composer software. For more details on specific GPUs, see the Avid Media Composer ReadMe.
If you plan to send transcode or render jobs to Distributed Processing, the service workstation running the Partition Service must include a GPU. Avid expects that in this use case, you are not running the Worker Service on the same workstation. As the Partition service is not heavy user of the GPU, you can purchase a less powerful graphics card.
However, the GPU must still be compatible with Avid Media Composer so that it can properly analyze effects and media assets. For more details on specific GPUs, see the Avid Media Composer ReadMe.
The Scheduler Service does not require access to a GPU.
High-End Specifications If Media Composer Distributed Processing is under heavy load in your environment, you might consider purchasing a workstation or server with more robust system resources. The following table outlines the specifications for a higher-end service workstation. Avid recommends that you meet or exceed these guidelines.
Installation Prerequisites Component Description Platform (cid:129) Server: Dell PowerEdge R640 or better (cid:129) Workstation: DELL 7920, HP Z8, or better Processor (cid:129) Server: Dual Intel Xeon Silver 4110 2.1G, 8C/16T, 9.6GT/s, 11M Cache, Turbo, HT (85W) DDR4-2400 or better (cid:129) Workstation: Dual Intel Xeon 6154 3.0 2666MHz 18C CPU or better Memory 96 GB RAM System Drive 480 GB SSD SATA Network Dual 10GbE NIC GPU (graphics If you are installing the Worker Service on this service workstation, you must requisition a processing unit) GPU that is equivalent or better as those used with Avid Media Composer. When making a purchasing decision, you must verify that the GPU is compatible with both the workstation hardware and the Avid Media Composer software. For more details on specific GPUs, see the Avid Media Composer ReadMe.
If you plan to send transcode or render jobs to Distributed Processing, the service workstation running the Partition Service must include a GPU. Avid expects that in this use case, you are not running the Worker Service on the same workstation. As the Partition service is not heavy user of the GPU, you can purchase a less powerful graphics card. However, the GPU must still be compatible with Avid Media Composer so that it can properly analyze effects and media assets. For more details on specific GPUs, see the Avid Media Composer ReadMe.
The Scheduler Service does not require access to a GPU.
Installation Prerequisites When installing a Distributed Processing service workstation, note the following:
(cid:129) Networking - Define host names and IP addresses for each of the servers or workstations that will host the Distributed Processing Worker, Scheduler, and Partition services.
Hostnames must comply with “RFC 952” and “RFC-1123” standards. Avid recommends keeping host names under 15 characters to maintain backwards compatibility with older systems. The only “special character” allowed in a hostname is a dash “ -”. Underscores are not allowed.
For more information on RFC specifications, see https://ietf.org/rfc.html. For additional information on host name restrictions in Microsoft Windows domains, see https:// technet.microsoft.com/en-us/library/cc959336.aspx.
- Service workstations require a 1Gb or better network connection. 10Gb or higher is recommended for higher bandwidth customers.
(cid:129) System Security - When installed on Microsoft Windows, Windows Firewall and Windows Defender must be disabled on each service workstation.
- Avid has tested Distributed Processing workflows on Microsoft Windows with Symantec Anti-Virus installed.
Installing the Distributed Processing Software
> **Note:** If Symantec Anti-Virus is installed, the Windows Firewall service is disabled automatically.
- When installed on macOS, AppNap is intentionally disabled for the Distributed Processing services. You can determine which services have AppNap enabled or disabled through the macOS Activity Monitor.
(cid:129) Avid NEXIS Client Manager - You must install the Avid NEXIS Client on every service workstation.
- The General Preferences > Client Type setting should be set to Ultra High Resolution for a 10Gb client.
- You must mount all workspaces that you need to read from or write to.
- You can mount Avid NEXIS workspaces on Windows-based service workstations using UNC paths if you are in a MediaCentral Production Management environment. If you are not integrating with Production Management, then you must mount workspaces using drive letters.
Installing the Distributed Processing Software This section includes the following two processes:
Complete the process that applies to your service workstation installation.
Installing Distributed Processing for Windows Complete the following process to install the Media Composer Distributed Processing software on one or more service workstations running Microsoft Windows.
To install the Distributed Processing software:
1. Copy the Distributed Processing software package
(Media_Composer_Distributed_Processing_<build>.zip) to a temporary location (such as the Desktop) on your service workstation.
2. Uncompress the installation package to a new folder.
3. Open the new folder and double click on setup.exe.
The Media Composer Distributed Processing – InstallShield Wizard appears.
Installing the Distributed Processing Software
4. Click the Install button to begin the software installation process.
5. Click the Next button in the Welcome to the InstallShield Wizard for Media Composer
Distributed Processing Screen.
6. Read the Avid software license agreement, click the “I accept the terms in the license agreement”
button, and then click the Next button to continue.
The Custom Setup screen appears as illustrated below.
7. Adjust the options in the Custom Setup window as required.
a. The Distributed Processing Worker, Distributed Processing Scheduler, and Distributed Processing Partition services are each enabled to install by default.
If you do not wish to install one or more of the services, click the disk button to the left of each service and select “This feature will not be available” in the drop-down menu.
> **Note:** Although you can install all three services on one machine, Avid recommends to install the Worker
service on a dedicated separate workstation.
Installing the Distributed Processing Software b. If you need to change the default installation location, click the Change button and navigate to a different directory on your service workstation.
Avid recommends keeping the default installation path.
8. Click Next to move on to the General Configuration screen.
Provide general configuration settings for the platform, such as:
- Hostname / IP Address: Enter the IP address, or fully qualified domain name of your Avid MediaCentral Cloud UX server or cluster.
For example: wavd-mcux.wavd.com - Use GPU by Worker: You can select this option to use the Graphics Processing Unit (GPU) for accelerating Worker services on systems with qualified video cards. With this setting selected, some render and transcode operations are accelerated by the GPU.
9. Click Next to move on to the Production Management Configuration screen.
Installing the Distributed Processing Software
- If your Media Composer clients do not connect to a Production Management system, click
the Next button to advance to the next phase of the installation.
- If your Media Composer clients connect to a Production Management system, configure the
following settings:
- Use Media Indexer: If your environment includes Production Management, you must select this check box, otherwise leave it unchecked.
- Number of Worker Services to be installed on this machine: This option is also only applicable to Production Management workflows. From the menu, you can select to install up to four workers per workstation. The selected number of DP worker services will be installed on that workstation. When installing multiple worker instances on a single workstation, you have to keep in mind these two implications:
- Licenses: If you want to install more than one Worker, make sure you have a sufficient number of licenses.
- Performance: Although there is no exact amount of RAM or CPU that one worker service can utilize, for it depends on the project format, media and effects applied, installing multiple worker services on a single workstation might impede the system overall performance.
- Realm: A unique name of a group of MediaCentral services. All MediaCentral services use a default “global” group.
10. Click the Next button to move on to the Ready to Install Program screen.
11. Click the Install button to proceed with the installation.
If you are not prepared to install the Media Composer Distributed Processing software at this time, you can click the Cancel button to exit the installation.
A successful installation concludes with the Completed screen as illustrated below.
12. Click the Finish button to exit the InstallShield Wizard.
Installing the Distributed Processing Software Installing Distributed Processing for macOS Complete the following process to install the Media Composer Distributed Processing software on one or more service workstations running macOS.
To install the Distributed Processing software:
1. Sign in to your macOS system as a user that has Administrator privileges.
These elevated rights are required to install the software.
2. Copy the Distributed Processing software package
(Media_Composer_Distributed_Processing_<build>.zip) to a temporary location (such as the Desktop) on your service workstation.
3. Uncompress the file and double-click on AvidDistributedProcessing.pkg to launch the installer.
4. In the Media Composer Distributed Processing Install Introduction screen, click the Continue
button to begin the software installation process.
5. In the Software License Agreement, read the Avid software license agreement and click the
Continue button.
After you click Continue, the system asks you to confirm that you have read the license agreement. Click the Agree button to continue with the installation.
6. In the Distributed Processing General Configuration screen, adjust the following settings:
- Services: The Distributed Processing Worker, Distributed Processing Scheduler, and Distributed Processing Partition services are each enabled to install by default.
If you do not wish to install one or more of the services, deselect the check box to the left of the service.
> **Note:** Although you can install all three services on one machine, Avid recommends to install the Worker
service on a dedicated separate workstation.
- MediaCentral Hostname: Enter the IP address, or fully qualified domain name of your Avid MediaCentral Cloud UX server or cluster.
For example: wavd-mcux.wavd.com Installing the Distributed Processing Software - Use GPU by Worker: You can select this option to use the Graphics Processing Unit (GPU) for accelerating Worker services on systems with qualified video cards. With this setting selected, some render and transcode operations are accelerated by the GPU.
7. Click the Continue button to advance to the next phase of the installation.
Production Management Configuration screen appears as in the following illustration.
8. Do one of the following to continue the installation:
- If your Media Composer clients do not connect to a Production Management system, click
the Continue button to advance to the next phase of the installation.
- If your Media Composer clients connect to a Production Management system, configure the
following settings and then click the Continue button to advance to the next phase of the installation:
- Use Media Indexer: If your environment includes Production Management, you must select this check box, otherwise leave it unchecked.
- Number of Worker Services to be installed on this machine: This option is also only applicable to Production Management workflows. From the menu, you can select to install up to four workers per workstation. The selected number of DP worker services will be installed on that workstation. When installing multiple worker instances on a single workstation, you have to keep in mind these two implications:
- Licenses: If you want to install more than one Worker, make sure you have a sufficient number of licenses.
- Performance: Although there is no exact amount of RAM or CPU that one worker service can utilize, for it depends on the project format, media and effects applied, installing multiple worker services on a single workstation might impede the system overall performance.
- Realm: A unique name of a group of MediaCentral services. All MediaCentral services use a default “global” group.
9. In the Select a Destination screen, verify your installation destination and click Continue.
Installing the Distributed Processing Software
10. In the Installation Type screen, do the following:
a. In the Custom Install screen, select the default settings (all check boxes enabled) and click Continue.
b. Click the Install button to begin the software installation.
The service workstation prompts you for your user password.
11. Enter your password and click the Install Software button to continue.
If you are not prepared to install the Media Composer Distributed Processing software at this time, you can click the Cancel button to exit the installation.
A successful installation concludes with the Completed screen as illustrated below.
12. Click the Close button to exit the installer.
Modifying the Platform Configuration Modifying the Platform Configuration If you need to modify the values that you entered during Distributed Processing software installation process, the safest way to accomplish this task is to uninstall and reinstall the application. For advanced users that are comfortable altering the Windows Registry or configuration files on macOS, you can refer to either of the following processes to modify the configuration without an uninstall / reinstall:
Modifying the Platform Configuration on Windows If you are an advanced Windows user and you are comfortable with adjusting values in the Windows Registry, you can edit the configuration manually using the following process.
The Windows Registry includes settings that are critical to the operation of your Windows operating system. If you alter the wrong values in this tool you could render your system inoperative. Only complete this process if you are familiar with editing the Windows Registry.
To modify the platform configuration:
1. Right-click on the Windows icon in the lower left-hand corner of the machine and select Run.
2. Type the word regedit and click on the OK button to open the Registry Editor.
3. Navigate to the following location in the Windows registry:
HKEY_LOCAL-MACHINE\SOFTWARE\Avid Technology
4. Click on the AvidPartitionService folder in the pane on the left side of the Registry Editor.
5. Select the Host entry.
6. Right-click and select Modify.
7. Enter the IP address, or fully qualified domain name (FQDN) of your Avid MediaCentral Cloud
UX server or cluster and click OK.
8. Click on the AvidSchedulerService folder in the pane on the left side of the Registry Editor.
9. Select the Host entry.
10. Right-click and select Modify.
Modifying the Platform Configuration
11. Enter the IP address, or fully qualified domain name (FQDN) of your Avid MediaCentral Cloud
UX server or cluster and click OK.
12. Click on the AvidWorkerService folder in the pane on the left side of the Registry Editor.
13. Select the Host entry.
14. Right-click and select Modify.
15. Enter the IP address, or fully qualified domain name (FQDN) of your Avid MediaCentral Cloud
UX server or cluster and click OK.
16. Close the Registry Editor.
17. After you update the registry, you must manually restart the Distributed Processing services
installed in the service workstation.
Modifying the Platform Configuration on macOS If you are an advanced macOS user and you are comfortable with adjusting configuration files and using the macOS Console, you can edit the configuration manually using the following process.
To modify the platform configuration:
1. Sign in to your macOS system as a user that has Administrator privileges.
2. Navigate to the following directory on your service workstation:
> Library > Application Support > Avid > Distributed Processing This directory might include any of the following configuration files, each representing a service installed on your workstation:
- partition_config.json (Avid Partition Service) - scheduler_config.json (Avid Scheduler Service) - worker_config.json (Avid Worker Service)
3. Open the file that includes the configuration value that you need to alter.
For example if you want to alter the host name of the MediaCentral Cloud UX server, you would open the worker_config.json configuration file and update the value as shown in the following illustration.
4. Close the file and save your changes.
Starting, Stopping, and Restarting Services
5. To enable the changes, you must either reboot your service workstation or restart the service
associated with the configuration file that you altered.
For more information, see “Working with Services on macOS” on page 25.
Starting, Stopping, and Restarting Services If you need to stop, start, or restart any of the Distributed Processing services on your service workstation, refer to either of the following processes:
Distributed Processing services take a few minutes to start after rebooting or restarting the services.
Working with Services on Windows The Distributed Processing services are launched automatically when you start or restart your service workstation. When installed on a system running Microsoft Windows, the Distributed Processing services appear in the Computer Management Console as illustrated below.
To start, stop, or restart services on Windows:
1. Open the Windows Computer Management console.
Consult the documentation for your version of Windows for information on how to locate the console.
2. In Computer Management, select the Services option in the tree on the left side of the window.
3. Right-click on the service that you want to interact with and select Stop, Start, or Restart from
the context menu.
Working with Services on macOS The Distributed Processing services are installed in the Application > Avid > Distributed Processing directory. They are launched automatically when you start or restart your service workstation. When installed on a macOS system, the Distributed Processing services appear in the Activity Monitor as illustrated below.
Uninstalling the Distributed Processing Software To stop services on macOS, do one of the following:
- Open the Activity Monitor, click on the service, and then click the “Force a process to quit”
button in the upper-left corner of the utility.
- If you are an advanced user, you can open the Console utility and enter any the following
commands to stop the required service:
sudo launchctl stop com.launcher.partition sudo launchctl stop com.launcher.scheduler sudo launchctl stop com.launcher.worker To start or restart services on macOS, do one of the following:
- If you are unfamiliar with macOS, Avid recommends that you reboot your service workstation to
restart any of the Distributed Processing services that might be stopped.
- If you are an advanced user, you can open the Console utility and enter any the following
commands to start a service that has already been stopped:
sudo launchctl start com.launcher.partition sudo launchctl start com.launcher.scheduler sudo launchctl start com.launcher.worker Uninstalling the Distributed Processing Software This section includes the following two processes:
Complete the process that applies to your service workstation installation.
Uninstalling the Distributed Processing Software Uninstalling Distributed Processing for Windows If you need to uninstall the Media Composer Distributed Process software from a service workstation running Microsoft Windows, you can use the following procedure to complete this task.
> **Note:** Some portions of this procedure might vary based on your version of Microsoft Windows.
To uninstall Distributed Processing:
1. Right-click on the Windows icon in the lower left-hand corner of the machine and select Apps
and Features.
2. Navigate to the Media Composer Distributed Processing in the list of Apps and Features.
3. Select Media Composer Distributed Processing.
4. Click Uninstall.
5. You are prompted with a warning that this app and its related info will be removed.
6. Click the Uninstall button again to confirm the software removal.
7. Reboot the machine.
Uninstalling Distributed Processing for macOS If you need to uninstall the Media Composer Distributed Process software from a service workstation running macOS, you can use the following procedure to complete this task.
To uninstall Distributed Processing:
1. Sign in to your macOS system as a user that has Administrator privileges.
2. Navigate to the Application > Avid_Uninstallers directory and double-click on the Distributed
Processing Uninstaller.
As shown in the following illustration, the uninstaller analyzes your system and displays a list of applications that can be removed from your system.
3. Click the Uninstall button to remove the Distributed Processing components from your system.
4. When prompted, enter your password and click the Install Helper button to continue.
5. Click the Quit button to exit the application.
Distributed Processing Logs Distributed Processing Logs Each of the Media Composer Distributed Processing services creates log files that can be referenced for troubleshooting purposes.
Log Files in Microsoft Windows On a service workstation running Windows 10, you can find the logs in the following directory:
C:\ProgramData\Avid\Distributed Processing. As illustrated below, the Distributed Processing directory might have one or more logs for each service.
The active log file includes the name of the service and ends in .log. Older service log files include a time and date stamp.
Log files will cycle themselves out automatically and do not require manual cleanup.
Log Files in macOS When installing a service workstation on macOS, log files can be found at: /var/log/Avid/Distributed Processing. Instead of using the Finder to navigate to the log file directory, administrators commonly use the macOS Console utility to access the log directory and files.
3 Distributed Processing Workflow The following main topics are described in this chapter:
(cid:129) Media Composer Prerequisites (cid:129) Configuring Media Composer (cid:129) Rendering Effects with Distributed Processing (cid:129) Consolidating or Transcoding Assets (cid:129) Working with the Job Status App Media Composer Prerequisites Review the following information that relates to Media Composer Distributed Processing workflows.
Media Composer Licensing In order to use Distributed Processing your Media Composer must be licensed for one of the following license types:
(cid:129) Media Composer | Ultimate (cid:129) Media Composer | Enterprise (cid:129) Media Composer | Perpetual If you do not have one of these license types, the Distributed Processing options do not appear in the Media Composer user interface.
> **Note:** Avid does not support Media Composer Distributed Processing with Media Composer | First or with
Media Composer | Subscription licenses. Media Composer | Ultimate and Media Composer | Enterprise subscriptions are supported.
Avid Project and Media File Information When working with Distributed Processing, your Media Composer projects can be stored locally, or on shared storage. However, all media (both Avid MXF and AMA) must reside on Avid NEXIS shared storage. This requirement enables both the Media Composer client and the service workstations to access the source assets.
Avid does not support a local media workflow in this release of Media Composer Distributed Processing.
Configuring Media Composer User Accounts The Distributed Processing workflow requires you to sign in to the MediaCentral Cloud UX server in the Media Composer Project window. Your MediaCentral Cloud UX server must be integrated with Windows Active Directory and all Media Composer users must be included in User Groups that have a valid Client License assigned to them. For more information about these processes, see the Avid MediaCentral | Cloud UX Installation Guide.
Configuring Media Composer Before you can begin to use Media Composer Distributed Processing, you must complete the following tasks on the Avid Media Composer client:
Connecting to the Platform Media Composer users must connect to the MediaCentral Platform to enable a Distributed Processing workflow. This is accomplished by signing into the MediaCentral Cloud UX system in the Media Composer Select Project window. The following illustration shows the Project window with the Login section highlighted.
> **Note:** As a reminder, all project and media must reside on Avid NEXIS shared storage when using a
Distributed Processing workflow.
Configuring Media Composer To sign in to the MediaCentral Cloud UX Platform:
1. In the Hostname field enter the host name of the MediaCentral Cloud UX server. If this is a
cluster enter the cluster’s virtual host name.
2. Enter your MediaCentral Cloud UX user account in the User Name field.
3. Enter the associated password for this account in the Password field.
4. Click the Login button to connect to the MediaCentral Platform and then click OK to access your
project.
Adjusting the Media Composer Settings After you have signed in to Media Composer, you must configure additional settings related to the Distributed Processing workflow. These settings can be accessed in the Settings tab of the Media Composer Project window.
> **Note:** The Media Creation setting is a Project based setting which means it will change every time a new
Project is created using the Avid factory default. This setting can be promoted to a Site Setting to override the default Avid Setting. For more details on Site Settings consult the Media Composer Editing Guide.
To adjust the Media Creation settings:
1. Click on the Settings button in the Media Composer Project window.
2. Open the Media Creation setting.
3. Click on the Distributed Processing tab.
4. Configure the following settings:
a. Metadata UNC Path Click the Select button to define a UNC path on your Avid NEXIS system for the metadata.
For example: \\<NEXIS Virtual system name>\<workspace>\ When you use Media Composer Distributed Processing, the system writes a new bin file (that contains only the asset sent to Distributed Processing) to this location. The bin is accessed by the Distributed Processing worker(s) at this shared location.
Rendering Effects with Distributed Processing b. Open Status when processing starts Put a check mark next to this option if you wish to automatically open the Job Status window when a job is submitted.
c. Create New Sequence for Distributed Render If you select this option, shortly after you submit the job, the Distributed Processing services create a new bin under Avid NEXIS Bins in the Bin Container Sidebar.
5. Click the OK button to apply the changes.
Rendering Effects with Distributed Processing Users can submit Render jobs/operations to Media Composer Distributed Processing using the following process.
If you need to process 3rd party effects, you must install a copy of the effects software on any service workstation that runs either the Avid Partition Service or the Avid Worker Service. Although plug-ins are available from a number of vendors, Avid has specifically qualified the following plug-in for use with Distributed Processing:
(cid:129) FilmLight Baselight (cid:129) Boris Continuum (cid:129) Boris Sapphire To render effects using Media Composer Distributed Processing:
1. Create or load a sequence that contains unrendered effects.
2. (optional) Use the position indicator in the Media Composer timeline to add Mark IN and Mark
OUT points around the section of the sequence that contains unrendered effects.
3. Complete one of the following to open the Render Effects dialog window.
- If you added Mark IN and Mark OUT points to your sequence, right-click on the sequence
timeline and select Render > Render In/Out.
- If you want to render a single effect, right-click on the timeline above the effect and select
either Render > Render at Position or ExpertRender at Position.
Consolidating or Transcoding Assets A Render Effects dialog box similar to the one shown in following illustration appears.
The Render Effects window might vary based on your selected options and version of Media Composer.
4. Select the Distributed Processing option and click OK to submit the job.
- If you have the “Create New Sequence for Distributed Render” selected in the Media
Creation settings for Distributed Processing (the “Distributed Processing” tab), shortly after you submit the job, the Distributed Processing services create a new bin under Avid NEXIS Bins in the Bin Container Sidebar. The name of the bin is based on the name of the sequence followed by an underscore.
This bin contains a new copy of the sequence that includes links to the associated rendered effects.
- If you do not select this option, the current sequence in current bin is updated with the
rendered effects and no new sequence is created.
Consolidating or Transcoding Assets Users can submit Consolidate or Transcode jobs/operations to Media Composer Distributed Processing using the following process.
For more details on other options in the Consolidate/Transcode menu refer to the Avid Media Composer Editing Guide.
> **Note:** If you need to process 3rd party effects, the effects software must be installed and licensed on all
service workstations running the Avid Worker Service.
To consolidate or transcode assets using Media Composer Distributed Processing:
1. Select the desired asset(s) in the Media Composer bin.
The following illustration shows a bin with one sequence and three AMA assets.
Consolidating or Transcoding Assets
2. Right-click on the assets in the Bin and select Consolidate/Transcode.
The Consolidate/Transcode window appears as shown in the following illustration.
3. Click on either the Consolidate or Transcode buttons in the upper-left corner of the window to
determine the type of job that you want to submit.
Consolidate jobs do not change the format of your media assets, whereas Transcode jobs create new assets based on the codec that you selected.
Avid does not recommend enabling the Create New Sequence or Create New Clip options in this window. The Distributed Processing workflow always creates a new sequence or clip, so enabling this option creates a redundant copy of the asset metadata.
Working with the Job Status App
4. Select an Avid NEXIS workspace from the Target Drive Section.
5. If you selected the Transcode option, you must also select a codec from the Target Video
Resolution drop down menu.
6. Select Distributed Processing under the Processing Options section in the lower-left corner of the
window as illustrated below:
7. Press the Consolidate or Transcode button based on the option that you selected in Step 3.
Distributed Processing creates a new sequence, clip, or clips based on your selection.
If the bin containing the asset is still open when the job completes, the resulting assets are added to the original bin.
If the bin is closed when the job completes, the process creates a new bin under Avid NEXIS Bins in the Bin Container Sidebar. The name of the bin is based on the name of the sequence followed by an underscore.
Working with the Job Status App After you submit a job, you can use the Distributed Processing Job Status app to monitor the status of your jobs. The following illustration provides an example of the Job Status app.
Working with the Job Status App Each job appears with a Type, Description, Status, Progress, Progress bar, Service Message, and Creation date stamp. You can expand each job to view the sub-tasks that it consists of by clicking the twist down (“>”) on the left of the job type. The Progress column displays the percentage of the job completion, a progress bar, and the time remaining till the job completion (for those jobs that are in progress). The progress bar reflects the current job status by means of color codes. The following status indicators are possible:
(cid:129) Green: Completed jobs (cid:129) Blue: In Progress jobs (cid:129) Red: Failed jobs If a job fails to complete, the Service Message column displays additional information about the reason for the failure. If you need additional information, you can review the Distributed Processing logs on the service workstation. For more information, see “Distributed Processing Logs” on page 28. After you have resolved the issue, you must resubmit the job from Avid Media Composer.
The Job Status app provides information on the most recent jobs that have been submitted to the system. If you need to see information on additional jobs, you can click the Load More button in the bottom-right corner of the job list.
> **Note:** The Load More button appears in the user interface regardless of the number of available jobs. If the
total number of jobs fits inside the Job Status app, the Load More button does not reveal additional jobs.
This section includes the following topics:
Accessing the Job Status App As an integrated Platform component, you can access the Media Composer Job Status app through the Media Composer user interface or through MediaCentral Cloud UX using a web browser. This section describes the two methods for accessing the Job Status app.
To access the Job Status app through Media Composer:
1. Launch and sign in to Media Composer as described in “Connecting to the Platform” on page 30.
2. Access the Job Status app by completing one of the following actions:
- Click on the Tools menu select the Distributed Processing option.
- Click on the Tools menu and select the MediaCentral Cloud UX option.
After the MediaCentral Cloud UX window appears, click on the Job Status app in the Cloud UX Fast Bar.
To access the Job Status app through MediaCentral Cloud UX:
1. Log in to Avid MediaCentral Cloud UX.
For more information, see “Signing In to MediaCentral Cloud UX” in the Avid MediaCentral | Cloud UX User’s Guide.
Working with the Job Status App
2. Click on the Job Status app in the MediaCentral Cloud UX Fast Bar as illustrated below.
The Job Status app appears in MediaCentral Cloud UX as a Core app.
For more information on app types, see “App Types” in the Avid MediaCentral | Cloud UX User’s Guide.
Canceling a Job If you submit a Distributed Processing job and determine that you need to cancel it, you can use the Job Status app to abort the process.
If you cancel a job, only pending tasks are canceled. The media for any sub-tasks that have completed successfully is retained and remains linked to the new sequence.
To cancel a Distributed Processing job:
1. Find the job that you want to cancel in the list of jobs in the Distributed Processing Status app.
2. Click on the Cancel button to the left of job to abort the process.
The Status column will change to a Canceled state.
Clearing the Monitor The Job Status app does not automatically clear the list of jobs. After a period of time, you might not need to see information about older completed or failed jobs. To reduce the number of items displayed in the list, the Job Status app allows you to clear the job list. This action removes all jobs from the list, regardless of their status (completed, failed, in-progress).
Clearing the list does not delete jobs. If you have in-progress or pending jobs, these jobs are still processed by the service workstations running the Distributed Processing Worker services.
If you clear the monitor, the list of jobs is only cleared for your current session. If for example you have a separate connection to MediaCentral Cloud UX open in a web browser, the act of clearing the monitor in Media Composer does clear the list in MediaCentral Cloud UX.
To clear list of Distributed Processing jobs:
- Click the Clear button in the upper-right corner of the Job Status app.
Reviewing the Worker Details When you first access the Media Composer Distribute Processing Status app, the app displays information about the jobs that have been submitted to the system. However, the app includes a toggle that allows you to obtain more information about the service workstations running the worker service in your current workgroup.
The following illustration shows the job status app with three workers.
Working with the Job Status App The following information is provided:
(cid:129) Worker Service Host: The fully qualified name of the service workstation host running the service.
(cid:129) PID: A PID is a Process Identifier. This column displays the PID for the worker service on the service workstation.
(cid:129) Status: Displays the current status of the service.
(cid:129) Task: Description of what the worker is currently doing.
(cid:129) Task Owner: The name of the user that initiated the current operation.
(cid:129) Status Updated At: This value displays the last time that the worker last reported to the Platform.
If you access the Worker Status area of the app, the worker host might indicate that it is “Awaiting Media Indexer Configuration”. This status is normal if you enabled the “Use Media Indexer” option during the Distributed Processing installation process and you have not submitted any jobs to the system. After you submit your first job, this status is replaced with detailed information about your worker.
To obtain more information about the Workers:
- Click on the Worker Service Status toggle button on the right side of the app header.
The user interface displays information about the workers in your workgroup.
To refresh the display:
- Click on the Refresh button to the right of the Worker Service Status toggle button to update the
status window.