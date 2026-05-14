---
product: media-composer-distributed-processing
product-area: editing
version: "2023.12.0"
release-date: 01/12/2023
doc-type: admin-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Media Composer | Distributed Processing Administration Guide Version 2023.12 Using This Guide Using This Guide This document provides instructions for installing, configuring, and using Avid Media Composer | Distributed Processing. Avid recommends that you read all of the information in this document before installing, or using the corresponding software release.
See the following Avid Knowledge Base page for the most up-to-date Media Composer | Distributed Processing and Media Composer | Enterprise documentation (all releases):
https://kb.avid.com/articles/en_US/user_guide/Media-Composer-Documentation-Links You can install the Distributed Processing server components on either an Avid | NEXIS EDGE server, or as a feature pack on MediaCentral | Cloud UX. For additional information, see the following:
- Avid Media Composer
https://kb.avid.com/articles/en_US/User_Guide/Media-Composer-Documentation-Links
- Avid MediaCentral | Cloud UX
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation
  - Avid MediaCentral | Cloud UX Installation Guide — Provides additional information on
installation processes and basic concepts.
  - Avid MediaCentral | Cloud UX Hardware Guide — Includes information on Avid qualified servers
as well as scaling and configuration options.
  - Avid Networking Port Usage Guide — A reference document for configuring network ports for
firewalls and other security purposes.
Avid NEXIS | EDGE
- https://kb.avid.com/articles/en_US/user_guide/Avid-NEXIS-EDGE-Documentation
> **Note:** While this document includes information on some Avid NEXIS EDGE workflows, there is a focus on
Avid Media Composer. Refer to the Avid NEXIS EDGE documentation for additional information on specific workflows.
Revision History Date Revised Changes Made December 21, 2023 Initial Release Using This Guide Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action
> **Note:** A note provides important related information, reminders, recommendations,
and strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
- This symbol indicates a single-step procedure. Multiple arrows in a list indicate
that you perform one of the actions listed.
(Windows), (Windows only), This text indicates that the information applies only to the specified operating (macOS), or (macOS only) system, either Windows or macOS.
Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables.
Variables are often enclosed in angled brackets: < >.
Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse action Press and hold the first key while you press the last key or perform the mouse action. For example, Command+Option+C or Ctrl+drag.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available.
3. Check the documentation that came with your Avid application or your hardware for maintenance or
hardware-related issues.
4. Visit the online Avid Knowledge Base. Online services are available 24 hours per day, 7 days per week.
Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visithttps://www.avid.com/learn-and-support and follow the Training links, or call Avid Sales at 800-949- AVID (800-949-2843).
1 Distributed Processing Overview 1 Distributed Processing Overview Media Composer Distributed Processing allows Media Composer users to offload resource intensive and potentially time consuming foreground tasks to one or more service workstations on the local area network.
As these tasks are processed outside of Media Composer, users are “unblocked” and have more time to focus on the creative editing process. In this release, you can submit the following jobs to the Distributed Processing system:
- Effect Rendering (including non-Avid effects)
- Transcoding
- Consolidating
- Mixdowns (multiple types)
- Exporting
- Proxy Media Creation
Proxy media workflows are applicable to environments that include Avid NEXIS EDGE only. They do not apply to Distributed Processing services deployed on an Avid MediaCentral Cloud UX server.
Users can access the Distributed Processing Status app through the MediaCentral Panel for Media Composer, Avid NEXIS EDGE, or Avid MediaCentral Cloud UX using the Google Chrome browser. You can monitor the job status, re-prioritize or cancel jobs, or perform other actions related to the remote processing tasks.
The Status app’s Coordinator Tools allows users with the Distributed Processing Coordinator entitlement to customize the workflow by directing specific job and task types to one or more groups of workers. For more information, see "Using the Coordinator Tools" on page 45.
Distributed Processing Services Distributed Processing leverages a number of services that work together to create the workflow. Some of these services are deployed on a central server, while others are installed on one or more service workstations in your network. The following sections provide more information on each of these services.
Server-Based Services The following services are installed on the MediaCentral Cloud UX or Avid NEXIS EDGE server.
Distributed Processing Coordinator This service assists in the creation of Job Queues and Worker Groups.
Distributed Processing Event Notifier This service watches job and task status, and is responsible for sending job and coordinator event emails.
Distributed Processing Job Driver Service This service is responsible for job and task management, including mapping tasks to workers.
Distributed Processing Scheduler Service This service acts as the gateway for the Media Composer client. When an editor submits a job, the scheduler brokers the associated tasks to the available workers. The service tracks the status of the job throughout its life cycle.
1 Distributed Processing Overview Distributed Processing Workflow Service This service acts an orchestration layer for the purpose of combining several Distributed Processing operations into one procedure for Production Management workflows.
Client-Based Services Distributed Processing client services are installed on one or more service workstations. For more information, see "Installing a Service Workstation" on page 14.
Avid Metadata Worker Service This service is responsible for analyzing jobs and breaking them down into one or more sub-tasks. The ability to subdivide a job into multiple tasks depends on the job type, and its complexity.
Avid Media Worker Service This service is the “heavy lifter”. It performs the actual rendering, consolidating, or processing of the tasks that are included in the job.
A single worker might not provide an advantage in processing speed, but you still gain an operational advantage as the Media Composer client is free to complete other tasks while the remote job is being processed. Two workers running on the systems with similar resources as the system with Media Composer may provide faster speed than Media Composer running the same operations in the foreground.
If you have multiple workers, the speed at which you can process media jobs is significantly increased over a single Media Composer client. The job can include multiple tasks, and all available workers process all tasks within one job before switching to the next one. The more workers assigned to a particular job, the faster it can be completed. The execution speed can be seen as increasing linearly with the number of workers, but this can only be applied if the workers work on similar workstations.
instances of the Media Worker service in a single environment, Avid has qualified support for a maximum of 10 instances in this release of Media Composer Distributed Processing.
> **Note:** When determining the number of Media Worker services that you want to deploy in your environment,
ensure that you do not exceed the licensing, or bandwidth limits of your Avid NEXIS system Integrated Systems Media Composer Distributed Processing workflows require integration with multiple systems. Before you begin, you must verify that you have the required systems and minimum software versions available:
- One of the following to host the server-based services:
  - Avid MediaCentral Cloud UX with the Distributed Processing Feature Pack enabled
  - Avid NEXIS EDGE
- One or more Distributed Processing Service Workstations
Media Composer clients might fulfill this requirement as Avid supports installing the Distributed Processing services on the same workstation as the editor.
Avid NEXIS
- One or more Avid Media Composer clients
- For detailed version information see the Media Composer Distributed Processing Support Matrix on the Avid
Knowledge Base at:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts 2 Distributed Processing Server Installation 2 Distributed Processing Server Installation This chapter describes the process for installing the Distributed Processing server components on a MediaCentral Cloud UX system. If you are deploying Distributed Processing through Avid NEXIS EDGE, see the Avid NEXIS | EDGE Installation Guide for additional details and installation instructions.
Before you begin the installation process, review the following information.
Clustered Distributed Processing Deployments Distributed Processing is installed on the server as a set of single instance services. If you install the DP feature pack on a clustered MediaCentral Cloud UX system, the Distributed Processing services run on a single control plane node. If this node is taken offline, the DP services are moved to a different node automatically. The Distributed Processing system will be offline for a minimal amount of time while Kubernetes creates replacement pods on the new node.
System Security Endpoint detection and response solutions are qualified for use with your MediaCentral Cloud UX and Avid NEXIS EDGE servers. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://kb.avid.com/articles/en_US/troubleshooting/en239659 For additional information related to security for MediaCentral Cloud UX, see “Security Guidelines” in the Avid MediaCentral Cloud UX ReadMe.
Minimum MediaCentral Cloud UX Server Specifications In some cases your organization might already own a MediaCentral Cloud UX server that connects to MediaCentral Production Management, Newsroom Management, or other MediaCentral modules. In these cases you must follow the minimum specifications outlined in the Avid MediaCentral | Cloud UX Hardware Guide.
In other cases you might be integrating MediaCentral Cloud UX into your environment to enable Media Composer Distributed Processing only. When deploying MediaCentral Cloud UX for this single purpose, review the following minimum requirements:
Memory: 32 GB of RAM
- Processors: One or more CPUs with a total of 8 cores or better
- Storage: MediaCentral Cloud UX requires separate OS and Data volumes for all deployment types.
- The OS volume is used for the operating system and Avid applications. The Data volume hosts the
MongoDB database which stores information about user login (avid-iam), license data, and more.
  - 256 GB or better for the OS volume (operating system and applications)
  - 500 GB or better for the Data volume
If you have already purchased or plan to purchase Media Composer | Enterprise, Avid supports co-installing this product on the same MediaCentral Cloud UX server with no increase to the minimum requirements specified above. For more information, see the Avid Media Composer | Enterprise Administration Guide.
Server Virtualization Avid supports installing the Distributed Processing feature pack on a virtualized MediaCentral Cloud UX server, but virtualized service workstations are not supported. For more information, see the Avid VMware® MediaCentral | Cloud UX Best Practices for guide.
2 Distributed Processing Server Installation MediaCentral Cloud UX Server Installation To install MediaCentral Cloud UX for this release of Media Composer Distributed Processing, you must have the following:
- Avid MediaCentral Cloud UX Platform Bin file
This installer package includes the core Avid installation components.
- Avid MediaCentral Cloud UX Feature Pack ISO
This package includes additional software to install MediaCentral Cloud UX applications (such as the Distributed Processing Status app) on the Platform.
The following process does not include steps to configure a MediaCentral Cloud UX cluster. If you plan to deploy a MediaCentral Cloud UX cluster, you must complete additional installation and configuration steps as detailed in the Avid MediaCentral | Cloud UX Installation Guide.
If you plan to deploy a MediaCentral Cloud UX server or cluster with the intention of integrating with any of the MediaCentral modules (MediaCentral Production Management, MediaCentral Asset Management, or others), ignore this abbreviated process and refer to the Avid MediaCentral | Cloud UX Installation Guide for complete instructions.
Complete the following sections of the Avid MediaCentral | Cloud UX Installation Guide to deploy your MediaCentral Cloud UX server:
Installation Prerequisites (recommended)
- This chapter describes concepts related to Linux and MediaCentral Cloud UX. It also outlines some of
the prerequisite requirements for the installation, such as identifying the host name and IP address of your MediaCentral Cloud UX server.
- Software Installation and Configuration
This chapter includes the processes to deploy the operating system and the MediaCentral Platform. It also includes procedures on how to log into the OS for the first time, and how to access the MediaCentral Cloud UX user interface. Complete the following sections of this chapter:
  - Configuring Your System Hardware
  - Verifying Disk Partitioning
  - Installing and Configuring Ubuntu
  - Logging in to the OS for the First Time
  - Additional Network Configuration
  - Installing Ubuntu Software Updates
  - Installing and Configuring Additional Features
  - Installing the Platform Software
  - Running the Post-Install Setup Scripts
  - Installing Ansible and SSHpass (v2023.3 and later)
  - Running the Cloud UX Setup Script
  - Creating a Site Key
  - Creating Certificate Files
  - Deploying the TLS or SSL Certificates
2 Distributed Processing Server Installation
  - Configuring an Authentication Provider
  - Enabling System Monitoring
  - Running the Feature Pack Deployment Script
When deploying the feature packs, you must answer Yes to the Distributed Processing and final “Feature packs” (additional feature packs common to all installations) prompts and answer No for all other feature packs.
> **Note:** In the event that you are deploying both Media Composer Distributed Processing
and Media Composer Enterprise, you must also answer Yes at the Media Composer Enterprise prompt.
  - Deploying System Monitoring
- Using the License App
- Using the User Management App
Distributed Processing Licensing Before you can use Media Composer Distributed Processing, you must license the server for the feature. The following illustration shows the two licenses associated with Distributed Processing.
Media Composer | Distributed Processing Worker This license governs the number of workers that can process media at the same time. Although the worker checks for a license when the service is launched, you can install more instances of the Worker Service than are allowed by your Worker license. The license count restricts the number of simultaneously running tasks, but not the workers themselves. If more workers are running than the license count allows, any worker which meets the filtering criteria for a specific task can accept the task.
For more information, see "Installing a Service Workstation" on page 14.
While this license determines the maximum number of workers, organizations must also consider the available bandwidth of the their Avid NEXIS system when making a purchase. If you add workers without considering your storage network bandwidth, you could negatively affect the performance of client systems — such as Avid Media Composer.
For more details on applying licenses, see the Avid MediaCentral | Cloud UX Installation Guide or the Avid NEXIS | EDGE Installation Guide.
Media Composer | Distributed Processing Engine This license enables the Media Composer Distributed Processing feature on the server.
Configuring Licenses Exclusively for Distributed Processing If you deploy a MediaCentral Cloud UX system for a Distributed Processing-only workflow, you must ensure that your server is configured for the following licenses to enable integration between the systems:
- MediaCentral | Platform
- MediaCentral | Cloud UX Browse or Edit
- MediaCentral | Panel for Media Composer
2 Distributed Processing Server Installation Media Composer | Distributed Processing Engine
- Media Composer | Distributed Processing Worker
- MediaCentral Cloud UX User Entitlements
The MediaCentral Cloud UX User Management app allows administrators to import users and configure the entitlements that are associated with each user group.
This section describes two entitlements that are associated with the Distributed Processing workflow. For more information, see “Using the User Management App” in the Avid MediaCentral | Cloud UX Installation Guide.
> **Note:** As Avid NEXIS EDGE does not include the User Management app, both of the following entitlements
are enabled for all users with no way to disable them.
Master of Jobs When signed into MediaCentral Cloud UX as a standard user, the MediaCentral Distributed Processing Status app displays only those jobs that you have personally submitted. Users with the Master of Jobs entitlement can see the list of jobs submitted by all users.
Distributed Processing Coordinator This entitlement enables the user to access the Status app’s Distributed Processing Coordinator Tools and the Email Settings panels. If this entitlement is not enabled, these panels do not appear in the MediaCentral Cloud UX user interface for this user.
Working with the Kubernetes Dashboard Kubernetes® The Linux OS on your Distributed Processing server is built in a managed container structure.
Administrators can use the Kubernetes Dashboard to monitor the health of the system, gather logs, and restart pods. While the server creates a large number of pods for general system operations, the following pods are specific to the Distributed Processing workflow:
avid-ui-distributed-processing-status-uidpl
- avid-mediaengine-coordinator
- avid-mediaengine-dpeventnotifier-dp
- avid-mediaengine-jobdriver
- avid-mediaengine-scheduler
- avid-mediaengine-workflow-dp
- If you need to troubleshoot the system, you might need to delete one or all of the above pods. If you delete
a pod, you must refresh the Avid NEXIS EDGE or MediaCentral Cloud UX user interface after Kubernetes reports that the pod has been successfully recreated.
If you do not see the Distributed Processing Status app in the user interface after installing and licensing the application, you can attempt to delete the avid-plugins-list-core-app pod.
For more information, see the Avid MediaCentral | Cloud UX Installation Guide.
3 Installing a Service Workstation 3 Installing a Service Workstation When you enable a Distributed Processing workflow, you must install the client services on one or more Microsoft Windows or macOS systems. These services might be installed on server-class hardware or on client workstations that meet the minimum specifications outlined in this chapter. Throughout this document, the term service workstation is used to refer to any server or workstation that hosts the client- based Media Composer Distributed Processing services.
In some cases you might want to provision hardware to create one or more dedicated workstations, whose only purpose is to run the Distributed Processing services. In other cases you might want to co-install the client services on the same workstation as the Avid Media Composer editor. The latter allows you to harness the processing power of any Media Composer system in your network that might otherwise be idle.
Additional Distributed Processing configuration options allow you to define how the services behave when the Media Composer software is either open or closed.
For a list of supported operating systems, see the Media Composer Distributed Processing Support Matrix on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Hardware Specifications Depending on your organization’s workflow and budget, you might need to determine which has greater value: faster processing speed using a single high-powered workstation, or the ability to process more simultaneous tasks using multiple low-to-mid-range workstations. This section includes hardware specifications for both options. Avid recommends that you meet or exceed the following guidelines when deploying a Distributed Processing service workstation.
Distributed Processing workers leverage the same Media Engine as Media Composer, thus Avid recommends that you provision a GPU for each workstation to process video effects, color adapters, and LUTs. In the absence of a GPU, all effects are handled with slower performance on the CPU.
If you are deploying Media Composer Distributed Processing for use with Avid MediaCentral | Shared Library only, the requirements for that configuration are reduced. For more information, see v2019.9 or later of the Avid MediaCentral | Shared Library Installation Guide.
Minimum Specifications If you intend to install one or more Media Composer Distributed Processing services on a single service workstation, you must meet the following minimum specifications.
Component Description Platform Windows or macOS workstation, or Windows-based server Processor Dual 8-core (Windows) or Dual 12-core (Mac) Memory 32 GB RAM System Drive 256 GB or larger Network Dual 1GbE NIC (Dual 10GbE NIC recommended for higher bit rates and UHD) GPU (graphics You must requisition a GPU that is equivalent or better as those used with Avid Media processing unit) Composer. When making a purchasing decision, you must verify that the GPU is compatible with both the workstation hardware and the Avid Media Composer software. For more details on specific GPUs, see the Avid Media Composer ReadMe.
3 Installing a Service Workstation High-End Specifications If Media Composer Distributed Processing is under heavy load in your environment, you might consider purchasing a workstation or server with more robust system resources. The following table outlines the specifications for a higher-end service workstation. Avid recommends that you meet or exceed these guidelines.
Component Description Platform Server: Dell PowerEdge R640 or better Workstation: DELL 7920, HP Z8, or better Processor Server: Dual Intel Xeon Silver 4110 2.1G, 8C/16T, 9.6GT/s, 11M Cache, Turbo, HT (85W) DDR4- 2400 or better Workstation: Dual Intel Xeon 6154 3.0 2666MHz 18C CPU or better Memory 96 GB RAM System Drive 480 GB SSD SATA Network Dual 10GbE NIC GPU (graphics You must requisition a GPU that is equivalent or better as those used with Avid Media processing unit) Composer. When making a purchasing decision, you must verify that the GPU is compatible with both the workstation hardware and the Avid Media Composer software. For more details on specific GPUs, see the Avid Media Composer ReadMe.
Workstation Installation Prerequisites When installing a Distributed Processing service workstation, note the following:
- Networking
  - Define a host name for each of the service workstations.
Hostnames must comply with “RFC 952” and “RFC-1123” standards. Avid recommends keeping host names under 15 characters to maintain backwards compatibility with older systems. The only “special character” allowed in a hostname is a dash “ -”. Underscores are not allowed.
For more information on RFC specifications, see https://ietf.org/rfc.html. For additional information on host name restrictions in Microsoft Windows domains, see https://learn.microsoft.com/en-us/troubleshoot/windows-server/identity/naming- conventions-for-computer-domain-site-ou.
  - Service workstations require a 1Gb or better network connection. 10Gb or higher is
recommended for higher bandwidth customers.
  - Avid supports running a service workstation with either a static IP address or DHCP.
- System Security
  - This version of Media Composer Distributed Processing is qualified with Microsoft Defender
Firewall and Microsoft Defender Antivirus enabled on dedicated service workstations. These same qualifications might or might not apply to Distributed Processing services that are co- installed on a Media Composer client. Refer to the Media Composer documentation for Media Composer-specific and version-specific guidelines.
3 Installing a Service Workstation
  - Distributed Processing allows you to install an endpoint detection and response solution on
your Distributed Processing service workstations. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://kb.avid.com/articles/en_US/troubleshooting/en239659
  - When installed on macOS, AppNap is intentionally disabled for the Distributed Processing
services. You can determine which services have AppNap enabled or disabled through the macOS Activity Monitor.
- If you need to process 3rd party effects, you must install a copy of the effects software on any
service workstation that will be used to process the effects. However, this does not mean that you have to install the effects on all service workstations. If the Distributed Processing system receives a request that includes 3rd party effects, the render tasks are routed automatically to a workstation that includes the effect software.
> **Note:** Ability to process a job or task assumes that the worker is included in a queue or group that has
the specific job or task type enabled. For more information on queues and groups, see "Using the Coordinator Tools" on page 45.
Although plug-ins are available from a number of vendors, Avid has specifically qualified the following plug-in for use with Distributed Processing:
  - FilmLight Baselight
  - Boris Continuum
  - Boris Sapphire
- Avid NEXIS Client Manager
  - You must install the Avid NEXIS Client on every service workstation.
  - The General Preferences > Client Type setting should be set to Ultra High Resolution for a 10Gb
client.
  - You must mount all workspaces that you need to read from or write to. This includes:
  - The workspace(s) that contain your source media.
  - The workspace used to save your bin information.
  - The target workspace for the output files.
  - You can mount Avid NEXIS workspaces on Windows-based Distributed Processing
Workstations using either UNC paths or drive letters . This update applies to all workflows.
3 Installing a Service Workstation Installing the Distributed Processing Software This section includes the following two processes:
- "Installing Distributed Processing for Windows" below
- "Installing Distributed Processing for macOS" on the next page
Complete the process that applies to your service workstation installation.
Installing Distributed Processing for Windows Complete the following process to install the Media Composer Distributed Processing software on one or more service workstations running Microsoft Windows.
To install the Distributed Processing software:
1. Copy the Distributed Processing installer (Media_Composer_Distributed_Processing_<build>.zip) to a
temporary location (such as the Desktop) on your service workstation.
2. Uncompress the installation package to a new folder.
3. Open the new folder and double click AvidDistributedProcessing.exe to launch the installer.
If prompted, click the Yes button to allow this app to make changes to your device.
4. (if applicable) The installer checks your service workstation for any required prerequisites. If the
application identifies any missing prerequisites, the system prompts you to install them.
Click the Install button to install the missing prerequisites.
5. Click the Next button in the Welcome to the InstallShield Wizard for Media Composer Distributed
Processing screen.
6. Read the Avid software license agreement, click the “I accept the terms in the license agreement”
button, and then click the Next button to continue.
7. Click the Install button to proceed with the installation.
If you are not prepared to install the Media Composer Distributed Processing software at this time, you can click the Cancel button to exit the installation.
A successful installation concludes with the Completed screen as illustrated below.
3 Installing a Service Workstation
8. Click the Finish button to exit the InstallShield Wizard.
If you are prompted to reboot your workstation, do so now to complete the installation.
9. Proceed to "Using the Distributed Processing Worker Settings App" on page 20 to enter some
required the configuration settings.
Installing Distributed Processing for macOS Complete the following process to install the Media Composer Distributed Processing software on one or more service workstations running macOS.
To install the Distributed Processing software:
1. Sign in to your macOS system as a user that has Administrator privileges.
These elevated rights are required to install the software.
2. Copy the Distributed Processing software package (Media_Composer_Distributed_Processing_
<build>.zip) to a temporary location (such as the Desktop) on your service workstation.
3. Uncompress the file and double-click on AvidDistributedProcessing.pkg to launch the installer.
4. In the Media Composer Distributed Processing Install Introduction screen, click the Continue button
to begin the software installation process.
5. In the Software License Agreement, read the Avid software license agreement and click the Continue
button.
After you click Continue, the system asks you to confirm that you have read the license agreement.
Click the Agree button to continue with the installation.
6. In the Select a Destination screen, verify your installation destination and click Continue.
7. In the Installation Type screen, do the following:
3 Installing a Service Workstation a. In the Custom Install screen, select the default settings (all check boxes enabled) and click Continue.
b. Click the Install button to begin the software installation.
The service workstation prompts you for your user password.
8. Enter your password and click the Install Software button to continue.
If you are not prepared to install the Media Composer Distributed Processing software at this time, you can click the Cancel button to exit the installation.
A successful installation concludes with the Completed screen as illustrated below.
9. Click the Close button to exit the installer.
3 Installing a Service Workstation Using the Distributed Processing Worker Settings App After you complete the Distributed Processing installation process, you must use the Distributed Processing Worker Settings app to complete the configuration of the services. The following illustration shows the Settings app with the services Running.
Distributed Processing Worker Settings app for Windows shown.
You can obtain version information about the app by right-clicking it in the Widows System Tray or the macOS Menu Bar and select About.
To configure or reconfigure the services:
1. Right-click the Distributed Processing Worker Settings icon in the Widows System Tray or the macOS
Menu Bar and select Open.
If the app is not already running, you can manually launch the application by doing either the following:
- On Windows: Navigate to C:\Program Files\Avid\Distributed Processing, right click
DistributedProcessingSettings.exe and select Run as Administrator from the context menu.
- On macOS: Navigate to /Applications/Avid/Distributed Processing and double click
DistributedProcessingSettings.
2. Configure the following settings as necessary:
a. Avid NEXIS | EDGE or Avid MediaCentral | Cloud UX Enter the IP address, or fully qualified domain name of your Avid NEXIS EDGE server, or your Avid MediaCentral Cloud UX server or cluster.
b. Number of Workers You can configure up to four instances of the Media Worker Service on the service workstation.
When increasing the worker count, keep the following in mind:
  - Performance: The amount of system resources (RAM, CPU) used by the Distributed
Processing services might vary depending on your project format, media, effects, and other factors. If you install multiple workers and discover a noticeable decrease in 3 Installing a Service Workstation system performance, you might need to alter your configuration to decrease the number of instances on the Media Worker Service.
  - Licenses: If you increase the number of workers, you must remember that the Worker
license count determines the maximum number of simultaneous tasks that can be processed by the system. See "Distributed Processing Licensing" on page 12 for a review of your license options.
c. Initialize GPU for Media Processing As most Distributed Processing tasks require the GPU, you should enable this check box in most circumstances. However Avid provides the ability to disable this option in case you have a specific workflow in which the GPU is not required — for example a worker that is dedicated to processing Consolidate tasks only.
d. MediaCentral Production Management This option dictates how the worker finds media assets. If you enable this check box, the worker knows to poll the Production Management Media Indexer for file paths. If you are integrating with MediaCentral Production Management, select this check box. Otherwise, leave this option unchecked.
e. Allow Worker to Run If you are performing a co-installation on a Media Composer client, note the following:
  - If enabled, the Distributed Processing services remain active when you launch Media
Composer. This setting works in conjunction with the Tasks to Process setting.
  - If disabled, the app automatically stops the Distributed Processing services when you
launch Media Composer. After you exist the editor, the services are restarted automatically and your workstation is returned to the pool of Distributed Processing workers.
If Media Composer is not running (launched), the Worker Service ignores this setting.
f. Tasks to Process This menu allows you to select one of two options:
  - Any: The service workstation will accept tasks from any source.
  - From Local Media Composer Only: If you co-installed the Distributed Processing services
on a workstation that is also running Media Composer, the workstation will only accept tasks that originate from your local Media Composer client. Jobs submitted by other users on other client systems are not accepted.
If you select the “From Local” option, you can still prevent your local workstation from processing tasks created by the co-installed instance of Media Composer by altering the Media Composer Media Creation Settings. For more information, see "Adjusting the Media Creation Settings" on page 27.
If Media Composer is not running (launched), the Worker Service ignores this setting.
3. Click the Start button to start the Distributed Processing services on your workstation.
If the app cannot start the services for any reason, you can review the DistributedProcessingSettings.log file for details. For more information on system log files, see "Distributed Processing Logs" on page 23.
4. Click the X in the upper-right corner of the app to exit the user interface.
You can reopen the settings at any time by double-clicking the app icon in the Widows System Tray or the macOS Menu Bar.
3 Installing a Service Workstation After starting the services, the app displays a “Running” status. However, the services might take a few moments beyond this status update to fully come up to speed. If the service workstation fails to connect to the Distributed Processing server, it retries up to 10 times. If the connection fails, the settings app stops the local services.
Following the initial configuration of these settings, you can return to the app to stop or start the services, or reconfigure the service workstation’s settings. While the app locks most settings after you start the services, you can alter the Task to Process setting at any time. If you need to make any other changes, you must first stop the services through the Settings app.
Quitting the Settings App The Distributed Processing Worker Settings app allows you to either close or quit the application. If you close it, the application remains active — represented by the icon in the Widows System Tray or macOS Menu Bar. If you select the quit option, the application shuts down completely.
To quit the Settings app and stop the services:
- Right-click the Distributed Processes Settings icon in the Widows System Tray or the macOS Menu
Bar and select Quit from the context menu.
  - If the services are running, the application displays a message asking if you want to stop the
services.
Click Yes to quit the app and shut down the Distributed Processing services.
Click No to quit the app and leave the services active.
  - If the services are already stopped, the application quits with no additional prompts.
3 Installing a Service Workstation Distributed Processing Logs Each of the Media Composer Distributed Processing services creates log files that can be referenced for troubleshooting purposes.
Log Files in Microsoft Windows On a service workstation running Windows 10, you can find the logs in the following directory:
C:\ProgramData\Avid\Distributed Processing. As illustrated below, the Distributed Processing directory might have one or more logs files.
The system creates a DistributedProcessingSettings log file for any event related to the Distributed Processing Worker Settings app, and a WorkerServices folder that includes logs for the services.
The Metadata Worker service logs events under the AvidMetadataWorker_log and the Media Worker service logs events in the AvidMediaWorker_log. Whenever the service restarts, the system creates a new date- stamped folder and associated log files.
Log files will cycle themselves out automatically and do not require manual cleanup.
Log Files in macOS When installing a service workstation on macOS, log files can be found at:
/Users/Shared/AvidDistributedProcessing. Instead of using the Finder to navigate to the log file directory, administrators commonly use the macOS Console utility to access the log directory and files.
Upgrading the Distributed Processing Software Complete the following steps to upgrade the Distributed Processing software on a service workstation.
To upgrade the services:
1. Open the Distributed Processing Worker Settings app and stop the services.
2. Quit the Distributed Processing Worker Settings app.
3. Launch the installer and following the on-screen prompts to complete the upgrade.
You are not required to manually uninstall the existing installation prior to the upgrade.
3 Installing a Service Workstation Uninstalling the Distributed Processing Software This section includes the following two processes:
- "Uninstalling Distributed Processing for Windows" below
- "Uninstalling Distributed Processing for macOS" below
Complete the process that applies to your service workstation installation.
Uninstalling Distributed Processing for Windows If you need to uninstall the Media Composer Distributed Process software from a service workstation running Microsoft Windows, you can use the following procedure to complete this task.
> **Note:** Some portions of this procedure might vary based on your version of Microsoft Windows.
To uninstall Distributed Processing:
1. Open the Distributed Processing Worker Settings app and stop the services.
2. Quit the Distributed Processing Worker Settings app.
3. Right-click on the Windows icon in the lower left-hand corner of the machine and select Apps and
Features.
4. Navigate to the Media Composer Distributed Processing in the list of Apps and Features.
5. Select Media Composer Distributed Processing.
6. Click Uninstall.
7. You are prompted with a warning that this app and its related info will be removed.
8. Click the Uninstall button again to confirm the software removal.
9. Reboot the machine.
Uninstalling Distributed Processing for macOS If you need to uninstall the Media Composer Distributed Process software from a service workstation running macOS, you can use the following procedure to complete this task.
To uninstall Distributed Processing:
1. Sign in to your macOS system as a user that has Administrator privileges.
2. Open the Distributed Processing Worker Settings app and stop the services.
3. Quit the Distributed Processing Worker Settings app.
4. Navigate to the Application > Avid_Uninstallers directory and double-click on the Distributed
Processing Uninstaller.
As shown in the following illustration, the uninstaller analyzes your system and displays a list of applications that can be removed from your system.
3 Installing a Service Workstation
5. Click the Uninstall button to remove the Distributed Processing components from your system.
6. When prompted, enter your password and click the Install Helper button to continue.
7. Click the Quit button to exit the application.
4 Distributed Processing Workflow 4 Distributed Processing Workflow This chapter describes the integration of Distributed Processing with Avid Media Composer.
Media Composer Prerequisites Review the following information that relates to Media Composer Distributed Processing workflows.
Media Composer Licensing In order to use Distributed Processing your Media Composer must be licensed for one of the following license types:
- Media Composer | Ultimate
- Media Composer | Enterprise
If you do not have one of these license types, the Distributed Processing options do not appear in the Media Composer user interface.
> **Note:** Avid does not support Media Composer Distributed Processing with Media Composer | First or with
Media Composer | Subscription licenses. Media Composer | Ultimate and Media Composer | Enterprise subscriptions are supported.
Avid Project and Media File Information When working with Distributed Processing, your Media Composer projects can be stored locally, or on shared storage. However, all media (both Avid MXF and AMA) must reside on Avid NEXIS shared storage.
This requirement enables both the Media Composer client and the service workstations to access the source assets.
You cannot submit Distributed Processing jobs for assets that are stored on your local Media Composer client.
Linked Assets You can Consolidate, Transcode, or create proxy media located on non-Avid NEXIS, network attached storage to an Avid NEXIS system. However this workflow is supported on Windows only.
If you want to use this feature, you must be running Media Composer on Windows and the job can be processed only on a Windows-based Distributed Processing worker. macOS is not supported in this workflow.
User Accounts When integrated with Avid NEXIS EDGE, you must sign into the Media Composer Project window using your Avid NEXIS EDGE user credentials. These credentials are managed through the Avid NEXIS shared-storage system. For more information, see the Avid NEXIS | EDGE Installation Guide.
When integrated with MediaCentral Cloud UX, you must sign into the Media Composer Project window using your MediaCentral Cloud UX user credentials. Your server must be integrated with Windows Active Directory and all Media Composer users must be included in User Groups that have a valid Client License (Browse, Edit) assigned to them. For more information about these processes, see the Avid MediaCentral | Cloud UX Installation Guide.
4 Distributed Processing Workflow Configuring Media Composer Before you can begin to use Distributed Processing, you must complete the following tasks on the Avid Media Composer client:
- "Connecting to the Distributed Processing Server" below
- "Adjusting the Media Creation Settings" below
Connecting to the Distributed Processing Server Media Composer users must connect to either an Avid NEXIS EDGE server or the MediaCentral Platform to enable the Distributed Processing workflow. This is accomplished by signing into the Avid NEXIS EDGE or MediaCentral Cloud UX system in the Media Composer Select Project window. The following illustration shows the Project window with the Login section highlighted.
To sign in to the Distributed Processing host server:
1. In the Hostname field enter the host name of the Avid NEXIS EDGE or MediaCentral Cloud UX server.
If this is a MediaCentral Cloud UX cluster enter the cluster’s virtual host name.
2. Enter your Avid NEXIS EDGE or MediaCentral Cloud UX user account in the User Name field.
3. (if applicable) Enter the associated password for this account in the Password field.
4. Click the Login button to connect to your Avid NEXIS EDGE or MediaCentral Cloud UX system, and
then click OK to access your project.
Adjusting the Media Creation Settings After you have signed in to Media Composer, you can configure additional settings related to the Distributed Processing workflow. These settings can be accessed in the Settings tab of the Media Composer Project window.
Prior versions of Media Composer included a “Metadata UNC Path” option in the Media Creation settings, which defined the name of a workspace that was used to host temporary files required for Distributed processing job. This setting is removed in Media Composer v2021.12 and later. By default, temporary files are created in the DistributedProcessing folder in the root-level of the target workspace selected for the job.
The system monitors these temporary files and automatically deletes them after three days.
> **Note:** The Media Creation setting is a project-based setting. When you create a new project, all settings of
type Project are configured with Avid default values. If you want to configure the same Distributed Processing settings for all new projects, you can promote the Media Creation settings to a Site setting.
For more details on Site Settings consult the Avid Media Composer Editing Guide.
4 Distributed Processing Workflow To adjust the Media Creation settings:
1. Click on the Settings button in the Media Composer Project window.
2. Open the Media Creation setting.
3. Click on the Distributed Processing tab.
4. Configure the following settings:
- Open Status when Processing Starts
Enable this option if you want to open the Distributed Processing Status app window automatically after you submit a job.
- Create New Sequence for Distributed Render
If you select this option, Distributed Processing creates a new bin under Avid NEXIS Bins in the Bin Container Sidebar shortly after you submit the job. The name of the bin is based on the name of the sequence followed by an underscore.
This bin contains a new copy of the sequence that includes links to the associated rendered effects.
If you leave this option deselected, the current sequence in current bin is updated with the rendered effects and no new sequence is created.
- Use This Machine as a Worker
If you co-installed the Distributed Processing services on your Media Composer client and if you configured the option in the Distributed Processing Worker Settings app to allow your local client to process tasks, this setting allows you to override that setting. If you disable this check box, your local instance of Distributed Processing will not be used. You can still submit jobs to the Distributed Processing system, but your local client will be excluded from the pool of workers available to process tasks.
When deciding whether or not to enable this setting, you must consider your workflow. If you disable it, you might save local CPU and GPU cycles — providing Media Composer with the maximum amount of system resources. However, if you submit a job to the Distributed Processing system and all other service workstations are busy processing other tasks, your job might have to wait in queue. If you enable this setting, you could bypass that queue and process your job immediately.
4 Distributed Processing Workflow
> **Note:** The ability to process jobs depends on the configuration of your local settings, and the
group to which your local client is allocated in the Coordinator Tools. For more information, see "Using the Distributed Processing Worker Settings App" on page 20 and "Using the Coordinator Tools" on page 45.
- Automatically Check in Sequence Sent for Render
If you are working in an environment that includes MediaCentral Production Management, you can select this option to automatically check your sequence into the Production Management database following a successful render job.
5. Click the OK button to apply the changes.
Configuring the Media Composer Email Settings If you want to receive emails regarding any completed or failed jobs that you submit to the system, you must configure the Media Composer Email settings. As this is a User setting, the information that you enter in this window is custom to your user profile.
Although you can configure additional options in the Email Settings area of the Distributed Processing Status app, the Media Composer email settings are independent of the server settings. For more information, see "Configuring the Distributed Processing Email Settings" on page 51.
For more information on the Media Composer email settings, see the “Email Settings” section of the Avid Media Composer Editing Guide.
To configure the email settings:
1. Click on the Settings button in the Media Composer Project window.
2. Click the User tab and open the Email settings.
3. Configure the following in the Distributed Processing Server Settings:
  - SMTP Server: Enter your SMTP server hostname or IP address.
Example: webmail.wavd.com is used to make this connection.
4. Enable one or more check boxes under the Send Email Events section to define the types of jobs for
which you wish to receive messages.
5. Configure the Email Settings section according to the Media Composer documentation.
6. Select the check box to “Enable Sending of Email for Distributed Processing” under the Master Email
Control section.
If you deselect this check box, you disable the Distributed Processing email notifications — even if you enable all other settings described above.
7. (optional) Click the Send Test Email button to verify that workstation can contact the SMTP server. If
successful, you should receive an email at the address specified in the settings.
8. Click the OK button to confirm your changes.
4 Distributed Processing Workflow Rendering Effects with Distributed Processing Users can submit Render jobs to Media Composer Distributed Processing using the following process.
To render effects using Media Composer Distributed Processing:
1. Create or load a sequence that includes one or more unrendered effects.
2. (optional) Use the position indicator in the Media Composer timeline to add Mark IN and Mark OUT
points around the section of the sequence that contains unrendered effects.
3. Complete one of the following to open the Render Effects dialog window.
- If you added Mark IN and Mark OUT points to your sequence, right-click on the sequence
timeline and select either Render > Render In/Out or ExpertRender In/Out.
- If you want to render a single effect, right-click on the timeline above the effect and select
either Render > Render at Position or ExpertRender at Position.
A Render Effects dialog box similar to the one shown in following illustration appears.
This window might vary based on your selected options and version of Media Composer.
4. Use the Drive menu to specify the Avid NEXIS workspace that will host assets and temporary files for
this job.
4 Distributed Processing Workflow
5. Select the Distributed Processing option.
If you are working in an Avid NEXIS EDGE environment, a Create Proxy option appears. You can select the check box to create proxy versions of the rendered effect media.
6. (if necessary) Select a different queue from the Job Queue menu.
This menu defines the group of workers that will process your job’s tasks. If for example your administrator created a “Rendering Only” queue, you might need to select that option for your render job.
7. Click OK to submit the job.
The Distributed Processing options that you select in the Media Creation settings determine the name and location of the processed sequence.
Consolidating or Transcoding Assets Users can submit Consolidate or Transcode jobs to Media Composer Distributed Processing using the following process.
For more details on other options in the Consolidate/Transcode menu refer to the Avid Media Composer Editing Guide.
To consolidate or transcode assets using Media Composer Distributed Processing:
1. Select the desired asset(s) in the Media Composer bin.
The following illustration shows a bin with one sequence and multiple AMA assets.
2. Right-click on the assets in the Bin and select Consolidate/Transcode.
The Consolidate/Transcode window appears.
3. Click on either the Consolidate or Transcode buttons in the upper-left corner of the window to
determine the type of job that you want to submit.
Consolidate jobs do not change the format of your media assets, whereas Transcode jobs create new assets based on the codec that you select.
Avid does not recommend enabling the Create New Sequence or Create New Clip options in this window. The Distributed Processing workflow always creates a new sequence or clip, so enabling this option creates a redundant copy of the asset metadata.
4 Distributed Processing Workflow
4. Select an Avid NEXIS workspace from the Target Drive Section.
5. If you selected the Transcode option, you must also select a codec from the Target Video Resolution
drop down menu.
6. Select Distributed Processing under the Processing Options section in the lower-left corner of the
window as illustrated below:
7. (if necessary) Select a different queue from the Job Queue menu.
This menu defines the group of workers that will process your job’s tasks. If for example your administrator created a “Transcoding Only” queue, you might need to select that option for your transcode job.
If Media Composer has access to only a single queue, the Job Queue menu is not displayed.
8. Press the Consolidate or Transcode button based on the option that you selected in Step 3.
Distributed Processing creates a new sequence, clip, or clips based on your selection.
If the bin containing the asset is still open when the job completes, the resulting assets are added to the original bin. If it is closed, you can use Dynamic Relink or the Media Tool to relink to the newly created file.
Performing a Mixdown Media Composer’s Mixdown feature allows you to combine multiple video tracks or multiple audio tracks into a single track. Depending on the number of tracks and the track complexity, you might want to send this task to Distributed Processing so that you can continue editing other areas of the sequence.
For more information, see any of the following topics in the Avid Media Composer Editing Guide:
“Performing a Video Mixdown”, “Performing an OP1a MXF Mixdown”, “Mixing Down Audio Tracks”, or “Mixing Down Multiple Audio Tracks”.
To send an audio or video mixdown job to Distributed Processing:
1. After you have accessed the mixdown window from within Media Composer, click the Distributed
Processing button in the Processing Options area.
All mixdown types include the same processing options.
2. Use the Drive menu to specify the Avid NEXIS workspace that will host assets and temporary files for
this job.
3. (if necessary) Select a different queue from the Job Queue menu.
4 Distributed Processing Workflow This menu defines the group of workers that will process your job’s tasks. If for example your administrator created a “Mixdowns Only” queue, you might need to select that option for your mixdown job.
If Media Composer has access to only a single queue, the Job Queue menu is not displayed.
4. Click OK to submit the job.
The mixdown master clip appears in the same bin as your sequence, however the associated media is only available after the Distributed Processing job is complete. You can check the status of your job in the Distributed Processing Status window. For more information, see "The Distributed Processing Status App" on page 38.
Exporting Assets Distributed Processing allows you to export assets and sequences through Media Composer using controls similar to those found in standard export processes. As with other Distributed Processing features, exporting through Distributed Processing allows you to continue editing while background services do the work that formally might have tied-up your editor.
If you export a sequence that includes unrendered effects, the Pre-Processing options can further expedite the export process — potentially providing a much faster export experience than available through Media Composer alone.
The following illustration and table provide additional information on the new file export settings. This window is divided into three primary areas.
4 Distributed Processing Workflow 1 Export Settings This area allows you to configure the settings the govern the export process. In this release, you can export using the AMA options only (AS-11, DPX, MXF OP1a).
2 Pre-Processing Options If you enable the Use Expert Render check box, the export process analyzes any effects that might be included in the sequence and uses Distributed Processing services to render those effects. If the sequence includes multiple effects that require processing, the effects are distributed to all available workers.
The ability to render effects through Distributed Processing potentially expedites the export process — dramatically in some cases. However, this performance increase cannot be guaranteed as sequence structure, applied effects, the number of workers and their capacity, and others factors can all affect the job.
3 Export Destination This panel allows you to define the file name and path where the exported asset will be saved.
To export an asset using Distributed Processing:
1. Highlight an individual master clip or a sequence in your bin.
2. Do one of the following:
- Right-click on the asset and select Output > Export via Distributed Processing
- Select File > Output > Export via Distributed Processing
- If you load a sequence into the player, you can right-click the sequence timeline and select
Export via Distributed Processing from the context menu.
The AMA File Export via Distributed Processing window appears.
3. Review the options in the export settings area of the window.
When exporting through Distributed Processing, the Export As menu includes a reduced list of options as compared to the standard Media Composer export window. For more information on configuring the settings found in this area of the window, see “Exporting Frames, Clips, or Sequences” in the Avid Media Composer Editing Guide.
4. Review the export window’s Pre-Processing Options.
This section displays your project format, shown as 1080i/59.94 YCbCr 709 in the following illustration.
4 Distributed Processing Workflow
- If you are exporting a sequence that includes unrendered effects, you can enable the Use
Expert Render check box to automatically render the required effects through the Distributed Processing services as part of the export process.
After you enable this feature, the Target Resolution and Target Shared Drive fields become available.
- Target Resolution
This menu includes only those formats that are compatible with your current project. You must select matching formats in both the Target Resolution menu and the Video Compression menu in the export settings area.
The Video Compression menu includes many more video formats than are available in the Pre-Processing settings. You must verify that both settings match so that the formats for both the export and the rendered media are compatible.
- Target Shared Drive
This value defines where the rendered media will be created.
- (if necessary) Select a different queue from the Job Queue menu.
This menu defines the group of workers that will process your job’s tasks. If for example your administrator created an “Export Only” queue, you might need to select that option for your export job.
If Media Composer has access to only a single queue, the Job Queue menu is not displayed.
5. Click the Save Settings As button at the bottom of the window to save the settings with a custom
name.
The settings are saved as a template for future use. The Export Distributed Processing settings are listed below the Export settings in the Media Composer Settings window.
6. Configure the following in the Export Destination panel.
a. Use the directory tree to select a save location for your exported asset.
b. Enter a custom file name in the File Name field at the bottom of the window.
7. Click Save and Export to save the current settings and begin the export process.
The Distributed Processing Status window appears and displays the export job. If you enabled the Pre-Processing option and your sequence includes any unrendered effects, the system renders all the required effects before the export task is initiated.
For more information, see "The Distributed Processing Status App" on page 38.
> **Note:** If you make changes to your export settings, the changes are saved to the template when you click
the Save and Export button.
4 Distributed Processing Workflow Creating Proxy Media Media Composer proxy media enables remote Media Composer and Avid NEXIS EDGE workflows in which playing high-resolution assets is either not possible, or not efficient.
When working with assets in Media Composer, the “create proxy” workflow allows you to create proxy media for one or more assets in a bin. If you are using Avid NEXIS EDGE or the MediaCentral Panel for Media Composer you can create proxies, on an asset, a bin, or a project.
For more information on proxy workflows, see the Avid Media Composer Editing Guide v2022.10 or later, or the Avid NEXIS | EDGE User’s Guide.
> **Note:** Proxy media workflows are applicable to environments that include Avid NEXIS EDGE only. They do
not apply to Distributed Processing services deployed on an Avid MediaCentral Cloud UX server.
To create proxy media from Media Composer:
1. Highlight one or more assets (master clips or sequences) in your bin.
2. Do one of the following:
- Right-click on the asset(s) and select Create Proxies
- Select the Clip menu > Create Proxies
- If you load a sequence into the player, you can right-click the sequence timeline and select
Create Proxies from the context menu.
The Create Proxies window appears.
3. Use the Drive menu to specify the Avid NEXIS workspace that will host assets and temporary files for
this job.
For the create proxy workflow, you must select an Avid NEXIS workspace before the Distributed Processing option becomes available.
4. Select the Distributed Processing option and click OK.
You can monitor the job progress through the Distributed Process Job Status app.
4 Distributed Processing Workflow To create proxies through a browser:
1. Connect to the Avid NEXIS EDGE server through Google Chrome, or through the MediaCentral Panel
for Media Composer.
2. Use the Browse app to navigate to the location of the asset or assets for which you want to create
proxy media.
3. Right click on the asset, bin, or project and select Create Proxies from the context menu.
> **Note:** Due to the potentially large number of assets that might reside in a project, Avid recommends
that you only create proxies at this level during off-peak hours as these operations can potentially take a long time to process.
The app displays the Create Proxies confirmation window.
4. Click the Create button in the confirmation window to continue, or click Cancel to abort the proxy
creation process.
If you click Create, the app displays another window with information about the number of assets for which proxies will be created. If proxy media is already available for some assets, these assets will be skipped — new or duplicate media will not be created.
5. Click Close to exit the window.
6. (optional) You can check the status of your job in the Distributed Processing Status window. For more
information, see "The Distributed Processing Status App" on page 38.
If you create proxies at the project level or higher, Distributed Processing creates one job per Media Composer bin. Depending on the number of bins, this could result in a large number of new jobs. If you need to cancel the entire job, you must cancel each sub-job (one per bin) individually.
5 The Distributed Processing Status App 5 The Distributed Processing Status App The Distributed Processing Status app allows you to monitor the state and progress of all jobs that are submitted to the system. You can cancel, pause, resume, or even change the priority of individual jobs to alter the order in which they are processed. If you are an Avid NEXIS EDGE user or if your MediaCentral Cloud UX user group includes the Distributed Processing Coordinator entitlement, you can configure Job Queues and Worker Groups to manage the types of jobs that can be processed, and define the workers that will be responsible for those tasks. The following illustration displays the Job Status View of the Status app.
The Status app is divided into four areas:
- Job Status
For more information, see "Using the Job Status View" on page 40.
- Worker Status
For more information, see "Reviewing the Worker Details" on page 44.
- Coordinator Tools
For more information, see "Using the Coordinator Tools" on page 45.
- Email Settings
For more information, see "Configuring the Distributed Processing Email Settings" on page 51.
Switching Between Views The icons at the top-right corner of the user interface allow you to switch between the different views. If you hover your cursor over any of the buttons, a tool-tip appears that describes the view.
After you select a view, the associated icon turns blue as a visual confirmation of your selection.
5 The Distributed Processing Status App Understanding Jobs and Tasks When thinking about the Distributed Processing workflow, you should note the difference between jobs and tasks. As a user, you can submit render, export, or other jobs to the Distributed Processing system. You can then track the progress of your job through the Distributed Processing Status app.
Distributed Processing associates every job with at least one task. Depending on the job type and complexity, the system might subdivide the job into multiple tasks that can be distributed across two or more workers for faster processing. As shown in the following illustration, the Status app allows you to expand the job so that you can monitor the progress of each individual task.
When you submit a render job for a sequence with multiple unrendered effects, the system treats each effect as an individual task. If an effect is long enough and it supports partial render, Distributed Processing might split the render task into additional sub-tasks for faster processing.
Using transcode as another example workflow, Distributed Processing would create a single task for any job that consists of only one master clip. This task would be processed by a single worker. Alternatively, the transcoding of a sequence consisting of two or more assets would be subdivided into multiple tasks (one for each master clip) and the tasks would be distributed across the available workers.
Accessing the Distributed Processing Status App You can access the Status app through the Media Composer user interface, or through Avid NEXIS EDGE or MediaCentral Cloud UX using a web browser. This section describes the two methods for accessing the Status app.
To access the Status app through Media Composer:
1. Launch and sign in to Media Composer as described in "Connecting to the Distributed Processing
Server" on page 27.
2. Access the Status app by completing one of the following actions:
- Click on the Tools menu select the Distributed Processing option.
- Click on the Tools menu and select either the MediaCentral Cloud UX or Avid NEXIS EDGE
option.
3. After the panel appears, click on the Status app in the Fast Bar.
The Status app appears with the Job Status View in focus.
5 The Distributed Processing Status App To access the Status app through a web browser:
1. Log in to Avid NEXIS EDGE or Avid MediaCentral Cloud UX through a web browser.
For more information, see “Signing In to MediaCentral Cloud UX” in the Avid MediaCentral | Cloud UX User’s Guide.
2. Click on the Status app in the Fast Bar as illustrated below.
The Status app appears with the Job Status View in focus.
> **Note:** The list of available apps might differ from this example illustration and might vary based on
your version of Media Composer and Avid NEXIS EDGE or MediaCentral Cloud UX.
Using the Job Status View Each job appears in the Results area of the Status view in a grid format in which each row represents a job and each column displays information about the job.
Every Distributed Processing job, regardless of its complexity, is associated with at least one sub-task. You can click the chevron to the left of the job to display any sub-tasks that are associated with the job.The Progress column displays the percentage of the job completion, a progress bar, and the time remaining until the job completion (for those jobs that are still in progress).
Each job/task is associated with a color-coded status icon. This state is controlled by Media Composer. The following status indicators are possible:
Gray (Plus): Created
- The job has been submitted to Distributed Processing, but no workers have been assigned to it yet.
You might also see this status appear briefly before the job turns blue (in progress) on Avid NEXIS EDGE.
- Green: Completed
5 The Distributed Processing Status App Blue: In Progress, Paused (MediaCentral Cloud UX only), or Pending
- When you submit a new job, the job appears in the Status view with the blue “play” icon. The job
remains in that state until it is either complete, or it has failed. The same status appears if you pause an active job.
In some cases you might see a job that remains in the In Progress state in perpetuity. This could be due to either of the following reasons:
  - An administrator has applied a filter to the queue or worker group, which restricts certain
operations.
  - The job includes a third party plug-in which is not installed on any worker.
  - Media Composer is running on the same system as the worker and your settings are
configured in a way that intentionally blocks the task.
In this case the system continues to process other jobs as they become available, and this job remains in a Pending state until you either manually cancel it, or reconfigure your system to allow the job to be processed. For more information on configuring queues and groups, see "Using the Coordinator Tools" on page 45.
Paused (Avid NEXIS EDGE only)
- Yellow: Partially Completed
This icon indicates that some tasks within a job completed, while others failed to complete successfully. You can click the chevron to the left of the job to display more information about the failed tasks.
The partially completed state is applicable to proxy creation, transcode, consolidate, and render operations. Mixdown and export jobs are associated with failed or completed states only. The partially completed status is possible when using Media Composer v2022.10 or later.
- Red: Canceled (MediaCentral Cloud UX only) or Failed
If a job fails to complete, the Service Message column displays additional information about the reason for the failure. If you need additional information, you can review the Distributed Processing logs on the service workstation. For more information, see "Distributed Processing Logs" on page 23.
After you have resolved the issue, you must resubmit the job from your source application — such as Avid Media Composer.
- Gray (X): Canceled (Avid NEXIS EDGE only)
The Status app provides information about the most recent jobs that have been submitted to the system. If you need to see information on additional jobs, you can click the Load More button in the bottom-right corner of the job list.
> **Note:** The Load More button appears in the user interface regardless of the number of available jobs. If the
total number of jobs fits inside the Status app, the Load More button does not reveal additional jobs.
This section includes the following additional topics:
"Pausing, Resuming, and Canceling Jobs" on the next page
- "Changing the Job Priority" on the next page
5 The Distributed Processing Status App Pausing, Resuming, and Canceling Jobs After you submit a job, you have the option to pause it or cancel it. If you pause the job, you can click the Resume button to continue processing the job from the point at which it left off.
If you cancel a job, only pending tasks are canceled. The media for any sub-tasks that have completed successfully is retained and remains linked to the new sequence. After you cancel a job, you cannot resume or restart it. The job must be resubmitted to the Distributed Processing system.
To pause a job:
1. Find the job that you want to pause in the list of jobs in the Distributed Processing Status app.
2. Click the Pause button to the right of the status indicator icon.
If the job is composed of multiple sub-tasks, the system finishes processing the current task before the job is paused. If your job is composed of a single task, you essentially cannot pause the job because the system must always complete the current task.
Once paused, the Progress bar displays the amount of the job that has already been processed and the Status column reports that the job is currently suspended. The job remains in a paused state until you either resume or cancel the job. If your Distributed Processing server goes down for any reason (e.g power loss), then the job is lost and must be resubmitted.
To resume a paused job:
- Once paused, click the Resume button to continue processing the job.
To permanently cancel job:
1. Find the job that you want to cancel in the list of jobs in the Distributed Processing Status app.
2. Click the Cancel button.
The Status column changes to a Canceled state.
Changing the Job Priority When you submit a job to the Distributed Processing system the job is generally processed in the order that it was received. If there are more tasks than there are workers to process them, the jobs and associated tasks queue until a worker becomes available. However, there might be a situation in which you might need to process a job or group of jobs faster than the others in the queue. To this end, the Status app’s Priority column allows you to alter the job processing order.
As shown in the following illustration, the default priority for all jobs is 50. You can adjust this value to either increase or decrease the job priority. Jobs with the highest priority (lowest numerical value) are processed first.
5 The Distributed Processing Status App As a standard user, you are allowed to alter the priority of only the jobs that you submit to the system. You neither see, nor can you adjust jobs submitted by another user. If your user account includes the Master of Jobs entitlement, you are able to see all jobs for all users and you can change the priority for any job.
If you submit a job as priority 1, your job is moved to the top of the queue. You should know that this action effects all Distributed Processing jobs, and not only those jobs that you have personally submitted. You should also be aware that the job might still be queued behind other jobs with the same priority. In this case all priority 1 jobs are processed in the order in which they were submitted (chronologically). If your job must absolutely be processed now, contact a user with the Master of Jobs entitlement to pause or cancel other higher priority jobs.
If all workers are busy processing other tasks, the worker completes the current task before moving to a new task with a higher priority. If you are in a very time-sensitive situation, you can re-prioritize the jobs “on the fly” to ensure that the most important jobs are processed first.
Do one of the following to change the priority of a job:
- Click inside the field, enter a new numerical value, and press Enter (or Return) to confirm the change.
- Click the Up or Down arrows to the right of the text field to adjust the priority
The field allows for values between 1 and 99, where 1 is the highest priority.
Clearing the Job Status Monitor The Status app does not automatically clear the list of jobs. After a period of time, you might not need to see information about older completed or failed jobs. To reduce the number of items displayed in the list, the Status app allows you to clear the job list. This action removes all jobs from the list, regardless of their status (completed, failed, or in-progress).
Clearing the list does not delete jobs. If you have in-progress or pending jobs, these jobs are still processed by the service workstations running the Distributed Processing Worker services. You should also note that in-progress jobs will automatically repopulate themselves in the job list.
If you clear the monitor, the list of jobs is only cleared for your current session. If for example you have a separate connection to MediaCentral Cloud UX open in a web browser, the act of clearing the monitor in Media Composer does clear the list in MediaCentral Cloud UX.
To clear list of Distributed Processing jobs:
- Click the Clear button in the upper-right corner of the Status app (outlined in red below).
5 The Distributed Processing Status App Reviewing the Worker Details The Worker Status view provides uses with a method for obtaining additional information about the service workstations that are running the worker service in your current workgroup.
The following illustration shows the view with four workers.
Notice that in this illustration the system is configured with three workers, but the system administrator installed two instances of the Worker Service on “burl-DP-wrk3”.
The following information is provided:
Worker Service Host: The fully qualified name of the service workstation host running the service.
- PID: A PID is a Process Identifier. This column displays the PID for the worker service on the service
- workstation.
- Status: Displays the current status of the service.
- Task: Description of what the worker is currently doing.
- Task Owner: The name of the user that initiated the current operation.
- Status Updated At: This value displays the last time that the worker last reported to the Platform.
In some cases you might notice that the a Worker is Busy processing an “Awaiting MI Configuration String” task. This means that the services are ready to receive information from the Production Management Media Indexer. This status is normal if you enabled the “MediaCentral Production Management” option in the worker’s Distributed Processing Worker Settings app and you have not submitted any jobs to the system.
After you submit your first job, the worker reports a Ready status.
To obtain more information about the Workers:
- Click on the Worker Service Status toggle button on the right side of the app header.
The user interface displays information about the workers in your workgroup.
To refresh the display:
- Click on the Refresh button to the right of the Worker Service Status toggle button to update the
status window.
5 The Distributed Processing Status App Using the Coordinator Tools This area of the app allows you to create groups of workers and define the types of jobs and tasks that will be processed by those workers. With this level of control, you can customize your Distributed Processing system to better accommodate to your site’s workflows and available resources. For example, you might consider creating “high priority” group that includes only the service workstations with the most powerful system resources within your organization. Alternatively, you could create multiple groups that are dedicated to certain tasks, such as exporting only, or effect rendering only.
As illustrated below, the Coordinator Tools are organized into three virtual columns of data: Job Queues, Worker Groups, and Workers. Each block or cardrepresents an individual queue, group, or worker.
- Job Queues: Allows you to separate the workers for different workflows.
For more information, see "Working with Job Queues" on the next page.
- Worker Groups: Allows you to combine workers and apply restrictions within a queue.
For more information, see "Managing Worker Groups" on page 48.
- Workers: Perform media processing tasks for the jobs submitted to the selected queue.
For more information, see "Managing Workers" on page 49.
Distributed Processing creates one Default Job Queue and one Default Worker Group by default for all installations. Whenever you add a worker to the system, the worker is added to this initial queue and group automatically. While you can edit the name of the default queue and group, you cannot delete them.
Queues, Groups, and Workers are color-coded to allow you to easily identify which block is connected to another. If a particular queue or group is not associated with a worker, the item is outlined in white to indicate that it is not active. Every workflow must include one queue and at least one group and worker.
Notice that in this example, the app shows three worker cards. However, two of these worker cards have the same host name “DPW3”. This indicates that the Distributed Processing system includes two services workstations (DPW1 and DPW3), one of which (DPW3) is running two instances of the Worker Service.
5 The Distributed Processing Status App You can combine any number or workers in a group. Workers from different service workstations are not required to run the same operating system, be equipped with the same hardware resources, or run the same 3rd party effects software (if applicable). The process is completely flexible and can accommodate any configuration that you choose to create. The only requirement is that you must have at least one queue, one group, and one worker before you send jobs to the system.
Refreshing the Display If you make a change in the Coordinator Tools and you do not yet see the change displayed, you can click the Refresh button on the right side of the app header to update the display.
Working with Job Queues Queues provide you with global control over the types of jobs that can be processed by the associated groups and workers. If for example you want to disable the ability to process render jobs for all groups and workers that are associated with the queue, you can disable the option in the queue. Even if the render option is enabled in an associated group, the workers would not process any render tasks.
When you create a queue, all workflows are enabled by default. If you leave them enabled, you can use Groups to manage the types of tasks that can be processed by the workers. Consider the following illustration.
In this example, the Job Queue allows for Transcode, Consolidate, and Render job types. Even though the Export task type is enabled on “Composer Group 1”, export jobs will not be processed because the upper- level queue does not allow it. If the system receives a transcode or consolidate request, the task is distributed to worker “DPW3”. If the system receives a render job, DPW2 processes the required tasks.
This section includes the following topics:
"Creating a Job Queue" below
- "Configuring Job Queues" on the next page
- "Deleting Queues" on the next page
- Creating a Job Queue
You are required to create additional queues only if you want to customize your workflow beyond the default queue. If a single queue is appropriate for your workflow, you can review the process for "Configuring Job Queues" on the next page to customize the default queue.
If you create a queue, but you do not associate it with any workers, the queue does not appear in the Media Composer menus.
5 The Distributed Processing Status App To create a new queue:
- Click the Add Queue button in the Job Queues area.
A new queue appears with a system generated name at the bottom of the Job Queues column. If you do not see your new queue, you can use the scroll bar on the right side of the user interface to navigate to it.
Configuring Job Queues To edit or configure the job queue parameters:
1. Click the Edit button in the upper right corner of the queue.
The app displays the queue parameters.
2. Configure or edit the following values:
  - Name: Click inside the text field to enter a new name for the queue.
Avid suggests that you keep the name brief so that the user interface of other applications, such as Media Composer, do not truncate the name.
  - Description: You can enter text in this field to explain the purpose of the queue. The information
appears in the queue card in the app’s Coordinator Tools view.
  - Job Types: Toggle the check boxes to enable or disable workflows for this queue. Only the
enabled (checked) job types will be processed by the workers connected to this queue.
If you disable all job types, you essentially disable all workers that are connected to this queue.
  - Hide Queue: If you enable this option, the queue is not displayed in the Media Composer Job
Queue menu.
3. Do one of the following:
- Click the Save button to confirm your changes.
- Click the X in the upper-right corner of the queue to exit without saving.
Deleting Queues You can use the following process to delete a custom queue. The Distributed Processing Status app does not allow you to delete the default job queue.
To delete a queue:
1. Click the Edit button in the upper right corner of the queue.
2. Click the Delete button to remove the queue from the app.
5 The Distributed Processing Status App Managing Worker Groups Distributed Processing allows you to create as many groups as your workflow requires. However, each group must be associated with one queue and at least one worker before it becomes active. You cannot associate a single group with more than one queue.
This section includes the following topics:
- "Creating a Worker Group" below
- "Configuring a Worker Group" below
- "Unassigning a Worker Group" on the next page
- "Deleting a Worker Group" on the next page
Creating a Worker Group Complete the following process to create a new group and associate it with a queue.
To create a new group:
1. Click the Add Group button in the Worker Groups area.
A new group appears with a system generated name at the bottom of the Worker Groups column. If you do not see your new queue, you can use the scroll bar on the right side of the user interface to navigate to it.
2. Drag and drop the group card to an existing queue to establish an association between the two.
If you need to associate a group with a different queue at a later date, you can drag and drop the group to a different queue. All associated workers move with the group. If the workers are actively processing tasks, the current task is completed before the worker processes any changes in the workflows allowed by the group.
Configuring a Worker Group Complete the following process to edit the parameters of an existing group.
To edit or configure the group’s parameters:
1. Click the Edit button in the upper right corner of the group.
The app displays the group’s parameters.
2. Configure or edit the following values:
  - Name: Click inside the text field to enter a new name for the group.
  - Description: You can enter text in this field to explain the purpose of the group. The information
appears in the group’s card in the app’s Coordinator Tools view.
5 The Distributed Processing Status App
  - Task Types: Toggle the check boxes to enable or disable workflows for this group. Only the
enabled (checked) task types will be processed by the workers connected to this group — and only if those same task types are enabled for the associated queue.
If you disable all task types, you essentially disable all workers that are connected to this group.
3. Do one of the following:
- Click the green check mark to save your changes.
- Click the X in the upper-right corner of the group to exit without saving.
Unassigning a Worker Group In some cases you might create a worker group that you want to retain, but temporarily remove it from the active workflow. In this event the app allows you to remove the group from a queue.
If your group is linked to any workers, the workers are also removed from the Distributed Processing workflow when you unassign the group. You can add the workers back into the workflow by either adding them to a different active group, or linking the group back to a queue.
To unassign a group from a queue:
1. Click the Edit button in the upper right corner of the group.
The app displays the group’s parameters.
2. Click the Unassign Group button
The group is removed from the queue, and is relocated to the bottom of the Worker Groups column.
Deleting a Worker Group Complete the following process to delete a group from the system. The Distributed Processing Status app does not allow you to delete the default worker group.
When you delete a group, any workers that were formally associated with that group are automatically reassigned to the default worker group.
To delete a group:
1. Click the Edit button in the upper right corner of the worker group.
2. Click the Delete button to remove the group from the app.
Managing Workers You can obtain more information about the service workstation’s hardware properties and installed plug-ins by clicking the Show More button in the upper-left corner of the card. If your workflow includes multiple groups, you can use this information to help you make more informed decisions about how to organize your workers.
5 The Distributed Processing Status App # Description 1 Service Workstation Hostname 2 Show More Button 3 This section displays the version of the Distributed Processing software and Avid NEXIS Client that is installed on the service workstation.
“Tasks to Process” reflects the value of the same setting that you configured in the Distributed Processing Worker Settings app.
4 Displays additional information about the service workstation, including the version of the operating system, installed memory, and more.
5 This section lists the AMA plug-ins that are installed on this service workstation.
6 This section lists the AVX2 plug-ins that are installed on this service workstation.
7 This section lists the Export plug-ins that are installed on this service workstation.
8 This section displays the Avid NEXIS workspaces that are mounted on the service workstation, along with the drive letter mount points.
5 The Distributed Processing Status App As you know, some service workstations might run one or more instances of the Avid Worker Service. The cards that are displayed in the Coordinator Tools are a visual representation of each instance of the Worker Service service.
Assigning Workers to Groups If you created multiple groups, you can move the workers to different groups as needed. You can move a worker at any time. However if the worker is actively processing a task, the worker finishes the current task before it can begin to process tasks from the new group.
Since all workers have the ability to process all task types, you can move workers without worrying their local system resources. The one exception to this rule is a service workstation’s ability to render 3rd party effects. If you require a worker to process a particular effect, the effect software must be installed and licensed on that worker. When you submit a job that includes a 3rd party effect, Distributed Processing automatically directs the render task to the worker that includes the effect software. Therefore, you are not required to install the 3rd party software on all workers.
To assign a worker to a group:
- Drag and drop the card to the desired group.
If you have a service workstation that is running multiple copies of the Worker service, and you move one worker to a different group, all workers from the same workstation are moved to the new group.
In other words, you cannot separate workers from the same workstation into different groups.
Removing Workers from the Workflow There might be instances where you want to remove a service workstation from the Distributed Processing workflow. You can do any of the following to temporarily disable the worker:
- Create an “offline” worker group, add the worker to this group, and then unassign the group from its
associated queue. As long as the group is not associated with a queue, the associated workers are essentially offline.
For more information, see "Unassigning a Worker Group" on page 49.
Disable the Worker Service on the service workstation. If the service is stopped, the worker does not
- appear in the Coordinator Tools.
Uninstall the Distributed Processing services from the worker.
- For more information, see "Uninstalling the Distributed Processing Software" on page 24.
Configuring the Distributed Processing Email Settings As an administrator, you might want to receive proactive notifications about Distributed Processing status events — such as when a worker disconnects or reconnects to the system. The Email Settings allow you to configure SMTP settings so that you can receive email notifications about these events. You can also configure default messages for multiple event types.
5 The Distributed Processing Status App To configuring the messaging details:
1. Sign into the Distributed Processing system as an Avid NEXIS EDGE user or a MediaCentral Cloud UX
user that is associated with the Distributed Processing Coordinator entitlement.
2. Click the Email Settings button in the upper-right corner of the status app.
3. Configure the SMTP settings (all values are required):
  - SMTP Server: Enter your SMTP server hostname or IP address.
Example: webmail.wavd.com
  - Sender Email Address: Enter a username in the form of an email address.
Example: admin@wavd.com
  - Sender Name: Enter a friendly name for this account.
Example: WAVD Administrator
  - Recipient email address(es): Enter the email address for one or more recipients. If you enter
more than one address, you must separate the values with a comma.
4. (optional) Customize the Coordinator Event messages.
If you disable the check box for either the Send Message on Worker connect or disconnect, emails are not generated for these events.
5. (optional) Customize the Job Status Messages
As you might have read earlier in this guide, Media Composer users can configure email settings that are largely independent from the server settings. The Job Status Message fields represent an exception to this rule. You can use these two fields to add information to the user-facing emails that are generated upon a completed or failed job. For example, you might want to add administrator contact details in the event of a failure.
6. Click the Save button to confirm your changes.