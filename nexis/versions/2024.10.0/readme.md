---
product: nexis
product-area: shared-storage
version: "2024.10.0"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid NEXIS® ReadMe Version 2024.10.0 Avid recommends that you read all the information in this ReadMe thoroughly before installing software or attempting to use the Avid NEXIS system. This ReadMe provides information that is not in the other Avid NEXIS documentation. This ReadMe is cumulative for the 2024.x release stream.
This ReadMe provides hardware and software requirements, an overview of the major features of this release, and limitations and known issues. See the appropriate Avid NEXIS Setup Guide for information on physical connection of the system and loading the system and client software. You can access the documentation, including previous versions of the ReadMe, from the Avid NEXIS Documentation page on the Avid Knowledge Base.
> **Note:** For information about Avid’s security recommendations specific to Avid products, and our responses
to current world-wide security issues, see Avid Security Guidelines and Best Practices for Dealing with Virus Threats.
For compatibility with other Avid products, see the Knowledge Base page for Avid Audio and Video Compatibility Charts.
> **Note:** Avid recommends that you purchase installation services with your Avid NEXIS system.
Revision History Release Date Version Changes Feb 27, 2024 2024.2.0 (Revised Mar 5) See "What’s New in Avid NEXIS 2024.2.0" on page 10 Contents What’s New in Avid NEXIS 2024.2.0 10 USM Versions 11 Hardware and Software Requirements 12 Supported Upgrade Paths 13 System Director and Client Version Compatibility 13 Compatibility with Other Avid Products 16 Third Party Editor Compatibility 16 System Configuration Limits 16 System Performance (On-Premises) 19 Known Issues 22 Special Notes 27 Accessing the Online Documentation The Avid online documentation contains all the product documentation in PDF format. You can access the documentation from the Knowledge Base site specific to your release. Download and install Acrobat Reader before you access the PDF documentation.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. Always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view the online version, visit the Avid NEXIS Documentation available on the Avid Knowledge Base.
3. Check the documentation that came with your Avid application or your hardware for maintenance
or hardware-related issues.
4. Visit the Avid Online Support at www.avid.com/support. Online services are available 24 hours per
day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download upgrades, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
Recommended and Required Releases Recommended and Required Releases The newest release is always recommended. The following Avid NEXIS | VFS releases are either recommended or required in the cases listed below.
According to Avid’s Customer Support Contract Terms and Conditions, customers are required to upgrade regularly to benefit from fixes and stability enhancements. It is important to keep the Avid NEXIS infrastructure on a recent release, therefore all customers must plan to upgrade at least once per year to a recommended release from the table below. Avid NEXIS Server and Clients can be upgraded without forcing an upgrade to other Avid and third party devices. See here for Avid Supported Software Releases (and end of support dates).
> **Note:** An Avid NEXIS system (server) can be updated before the clients to allow server-only fixes to be
deployed faster. We recommend upgrading clients as soon as possible thereafter.
Avid NEXIS System (Server) and Client Releases Product Version Guidance Server and 2024.10.0 Recommended for all Avid NEXIS systems and clients (On-premises and Clients Cloud).
Support for Windows 11 build 23H2; File delete logging; Bug fixes and improvements.
This version is recommended for use with Avid Pro Tools. The Avid NEXIS Client versions 2024.5.0 and 2024.6.x are not qualified for use with Pro Tools on macOS.
Server and 2024.6.2 Resolved a continuous reboot issue and the installation dependencies in the Clients previous release.
Server and 2024.6.1 Includes package updates for enhanced security.
Clients Upgrade the Avid NEXIS Server to 2024.6.0 before installing 2024.6.1.
Not recommended for new Avid NEXIS installations or upgrades. Use Avid NEXIS 2024.6.2 or the latest release.
Server and 2024.6.0 Matches release version with Avid editing and media management products.
Clients Fix for Avid NEXIS | E5 NL Engines using LACP.
Server and 2024.5.0 Enhanced HTTPS security; full support for macOS Sonoma; increased Clients maximum size of Cloud Storage system; support for trusted certificates; deprecated HTTP support; internal code base upgrades Server and 2024.2.0 Minimum version recommended for macOS Sonoma.
Clients Server and 2023.12.0 Strongly recommended minimum version for:
Clients
- Pro Tools and Avid NEXIS in audio workflows
- Avid NEXIS | F2 SSD Engines
- All Avid NEXIS | EDGE sites
What’s New in Avid NEXIS 2024.10.0 Avid NEXIS versions 2022.x and 2021.x are no longer recommended for new installations. Avid NEXIS version 2020.x and older are no longer supported.
Avid NEXIS Version Downgrades Installing an older software version on Avid NEXIS systems is not supported and can result in unforeseen consequences, up to and including data loss.
What’s New in Avid NEXIS 2024.10.0 Avid NEXIS version 2024.10.0 is a major release that includes the following:
Support for Windows 11 build 23H2
- File Delete Logging
- Changes to the Avid NEXIS installer names
- Enhanced security for the Avid NEXIS | VFS
- Support for Windows 11 Build 23H2
In this release, Avid adds support for Windows 11 build 23H2, which is now the recommended build for use with Avid NEXIS client systems. Windows 11 builds 22H2 and 21H2 are no longer recommended, as they no longer receive updates from Microsoft. See "Supported Client Operating Systems " on page 13.
File Delete Logging This release supports logging of file and folder deletions on clients, in addition to the existing Workspace deletion logging. Each deletion is recorded with details, including the date, time, user, host name, and file path. This feature is enabled by default. For more information, see “Logging File Deletions” in the Avid NEXIS Administration Guide, available in the Avid NEXIS Documentation knowledge base.
Changes to the Avid NEXIS Installer Names The names of the Avid NEXIS installers have been updated to include the word 'for' before the trademarked names of the operating systems.
Server Fixes (in Numerical Order) Includes all fixes from previous patches and releases.
- SSENG-40267: When creating a Team workspace, a mirrored workspace is automatically created,
even if the engine protection mode is set to unprotected.
SSENG-40632: When entering a Storage System Name or Engine Name, the Management Console
- continues to accept input even after the maximum name length is reached. With this fix, the Avid
NEXIS Agent and Management Console now consistently enforce the character limits: 18 characters for the Engine Name and 31 characters for the Storage System Name.
- SSENG-40842: When installing an SSL certificate to an Avid NEXIS | PRO 40 or PRO+ engine,
nothing happens. The certificate does not apply or show any changes to the system.
What’s New in Avid NEXIS 2024.6.2 Client Fixes SSENG-40043: Resolved a compatibility issue causing a kernel panic during playback between Avid
- NEXIS client versions 2024.5.x and 2024.6.x and Avid Pro Tools on macOS.
Limitations and Defects Found See the "Known Issues" on page 22 for all limitations found in this release and previous releases. New limitations are marked as 'New'.
What’s New in Avid NEXIS 2024.6.2 Avid NEXIS version 2024.6.2 is a patch release for on-premises systems that includes the following:
Support for Intel E810-XXVDA2 on Windows The Intel E810-XXVDA2 25/10 Gb NIC is now supported on Windows 11, in addition to its existing support on Windows 10. For more details, refer to the list of supported Network Interface Cards in the Avid NEXIS Network and Switch Guide.
Server Fixes (in Numerical Order) SSENG-40856: When upgrading to version 2024.5.0 or 2024.6.0, the Avid NEXIS controllers enter a
- reboot loop due to hostname resolution taking too long with DNS (Domain Name System).
SSENG-41023: Resolved the issue that required the installation of Avid NEXIS | VFS 2024.6.0 before
- installing 2024.6.1. With this fix, customers can upgrade directly from any earlier version to the
latest release without first installing 2024.6.0.
Limitations and Defects Found See the "Known Issues" on page 22 for all limitations found in this release and previous releases. New limitations are marked as 'New'.
What’s New in Avid NEXIS 2024.6.1 Avid NEXIS version 2024.6.1 is a patch release for on-premises systems that includes the following fixes:
Server Fixes
- Updated OpenSSH module to enhance reliability and security.
Client Fixes
- SSENG-40566, SSENG-40740: Restarting the Avid NEXIS Agent using the systemctl restart
avid-nexis-agent command on an Avid MediaCentral | Cloud UX server causes a disconnection of the gateway pod. As a result, the MediaCentral | Cloud UX user interface becomes unresponsive, preventing users from logging in.
Installation and Upgrade Avid NEXIS 2024.6.1 has an installation dependency that requires Avid NEXIS 2024.6.0 or 2024.5.0 to be installed first on the core (all engines and SDA/SDA+).
For new installations or upgrades from version 2024.2 or earlier, install the 2024.6.0 core before upgrading to version 2024.6.1. For systems currently running version 2024.5.0 or 2024.6.0, you can upgrade directly to version 2024.6.1.
Clients can use either the Avid NEXIS Client 2024.6.0 or 2024.6.1; it is not necessary for clients to install 2024.6.0 before installing 2024.6.1.
What’s New in Avid NEXIS 2024.6.0 What’s New in Avid NEXIS 2024.6.0 Avid NEXIS version 2024.6.0 includes the following bug fixes.
Server Fixes (in Numerical Order) SSENG-39494: In some cases, the Workspace warning and error event trigger thresholds were not
- reporting the correct values. This was caused by incorrect recalculations after deleting files in the
Workspace or changing the Workspace settings.
- Improved security in the Management Console and Agent interfaces.
- SSENG-40502: On Avid NEXIS | E5 NL running Avid NEXIS version 2024.5.0 with LACP enabled, the
Storage Managers failed to initialize because the gx0 interface did not recognize an aggregate NIC speed of 20GbE.
What’s New in Avid NEXIS 2024.5.0 Avid NEXIS version 2024.5.0 is a major release that includes the following features and improvements:
Deprecated use of HTTP to open Management Console
- Introduced support for using trusted certificates on Avid NEXIS systems
- Increased maximum capacity of Avid NEXIS | Cloud Storage system
- Completed qualification for using macOS Sonoma with all supported network adapters and switch
- connections
- Removed all components of Avid NEXIS | Cloudspaces feature from Management Console and
documentation Management Console Connections using HTTP No Longer Supported This release no longer allows connections to the Management Console using HTTP through port 80. Only HTTPS connections (port 443) are supported. HTTP is clear text, which is not secure.
Support for Using Trusted Certificates with Avid NEXIS Systems To support HTTPS connections, this release introduces the ability to use trusted certificates issued by a Certificate Authority. HTTPS requires a certificate to encrypt the TLS (transport layer security). The Avid NEXIS Administration Guide describes this feature in detail.
Larger Capacity Avid NEXIS | Cloud Storage Systems This release supports a higher maximum capacity (5PB) of an Avid NEXIS | Cloud Storage system.
Support for macOS Sonoma (14) with 2x1GbE, 10GbE, and Higher Network Adapters Avid NEXIS version 2024.2.0 introduces support for clients running macOS 14 (Sonoma) and using 2x1GbE, 10GbE, 2x10GbE, 40GbE, 50GbE, and 100GbE network adapters on Apple mac computers with the M1, M2, M3, or Intel chip.
User Interface Improvements (Management Console) As part of ongoing usability testing and in response to customer feedback, Avid has made the following changes:
What’s New in Avid NEXIS 2024.5.0 The Media Pack Bind dialog box now includes a link to the Licensing page.
- The amount of available space in a Workspace is now shown consistently in both the Management
- Console and the Client Manager, and also agrees with the available space shown in the native
operating system file manager views.
- Improved the look of the Media Pack Bind and Unbind buttons for greater readability and
comprehension (image edited for fit):
Improved the on-screen text and buttons for adding or removing Media Packs on the Storage
- Groups page.
- The Workspaces list page now displays up to 50 Workspaces per page.
- The Capacity Tracker has been moved to the left-hand side of the Workspaces page in Edit mode,
and is now collapsed (closed) by default. References to the Capacity Tracker in the Avid NEXIS Administration Guide have been modified accordingly.
The Management Console now displays the software version in the title bar making it visible from all
- other pages and panels without having to display the Dashboard:
User Interface Improvements (Client Manager) The amount of available space in a Workspace is now shown consistently in both the Management Console and the Client Manager, and also agrees with the available space shown in the native operating system file manager views.
Avid NEXIS Cloudspaces No Longer Supported This release no longer supports Avid NEXIS Cloudspaces. Before you upgrade your system to 2024.5.0, if you have any Cloudspaces, delete all their data while your subscription is still active. After you upgrade, Cloudspaces and the Cloud Storage Group are no longer shown in the Management Console and there is no more Services navigation link to configure or modify a Cloudspaces subscription.
Version Incompatibility with Replacement Controllers -- Downtime Required Avid NEXIS | VFS 2024.5 includes an updated version of Debian Linux to improve supportability. This version includes a sub-component used for inter-controller synchronization that is not compatible with earlier versions of Avid NEXIS. Therefore adding redundant controllers or replacing a failed redundant controller will now require a maintenance window to allow the controller to read the engine configuration.
> **Note:** This issue affects both Avid NEXIS F-Series (including SDA+ and PRO+) and Avid NEXIS E-Series
(including SDA, PRO 20TB, and PRO 40TB), and applies only to systems running version 2024.5.0 or higher.
The workarounds listed here are outlines. For more details on any of the steps, see the Avid NEXIS Setup and Maintenance Guide, available on the Avid NEXIS Documentation Knowledge Base.
What’s New in Avid NEXIS 2024.5.0 As always, make sure to update all the Engines and the System Director Appliance, if applicable, in a shared-storage system to the same Avid NEXIS version.
For F-series Engines with a single (failed) Controller do the following:
1. Remove the failed Controller.
2. Insert the replacement Controller.
The system automatically updates the new Controller to the required version from the system drives and reboots. The system is ready to use.
For F-series Engines with redundant Controllers do the following:
1. Remove both Controllers.
2. Insert the replacement Controller.
The system automatically updates the new Controller to the required version from the system drives and reboots. The system is ready to use.
3. Reinsert the other (previously running) Controller.
For E-series Engines with a single (failed) Controller do the following:
1. Remove the failed Controller.
2. Insert the replacement Controller.
3. Connect a laptop to the 1Gbps Ethernet Management Port on the rear of the Engine.
4. Install Avid NEXIS version 2024.5.0 or higher.
The system reboots and then is ready to use.
For E-series Engines with redundant Controllers do the following:
1. Remove both Controllers.
2. Insert the replacement Controller.
3. Connect a laptop to the 1Gbps Ethernet Management Port on the rear of the Engine.
4. Install Avid NEXIS version 2024.5.0 or higher.
The system reboots and then is ready to use.
5. Reinsert the other (previously running) Controller.
Controllers cannot be swapped between F-Series and E-Series, or between PRO 20TB/40TB and PRO+ or SDA and SDA+.
Avid strongly recommends performing the above procedure on all “shelf spare” Controllers after upgrading to 2024.5.0 or higher to allow future Controller replacements to be performed while the system remains running.
Server Fixes (in Numerical Order)
- SSENGHW-122, SSENGHW-123, SSENGHW-124: On Avid NEXIS | PRO+ and any Avid NEXIS F-Series
with a single Controller, the amber Module Fault LED on the Controller remained lit, which normally indicates an error condition. However the system did not report an error and behaved normally.
SSENG-38851 On systems with a large number of Workspaces, the page display took too long to
- load. It now lists 50 Workspaces per page.
What’s New in Avid NEXIS 2024.2.0 SSENG-39054 In some cases, attempting to delete an empty mirrored Workspace got stuck in the
- “Delete Pending” state.
- SSENG-39272 When system drives were rebuilding, the status remained in the Rebuilding state
although the rebuild had completed.
- SSENG-39397, SSENG-39716: Multiple devices connected to the Avid NEXIS are experiencing
delayed write failure errors due to socket exhaustion on the Storage Manager.
SSENG-39705 The System Director shut down unexpectedly due to a problem saving metadata.
- SSENG-39855 After an upgrade to version 2024.2.0, an Avid NEXIS system sent out excessive email
- notifications about the upcoming license expiration and some informational license logging
messages.
Client Fixes (in Numerical Order)
- SSENG-39108 On a cloud-based Media Composer workstation, the combination of streaming
media (NDI or SRT) and Crowdstrike could cause dropped and difficult frames in Media Composer during playback.
SSENG-39397 Multiple devices connected to the Avid NEXIS are experiencing delayed write failure
- errors due to socket exhaustion on the Storage Manager.
- SSENG-39650 After an upgrade to Avid NEXIS version 2023.12 and higher, clients started using port
4000, which was not listed in the Avid Networking Port Usage Guide, and caused problems with some third-party software. Avid NEXIS clients now use port 7237 instead of port 4000.
What’s New in Avid NEXIS 2024.2.0 Avid NEXIS version 2024.2.0 is a major release that includes the following features and improvements:
Network bonding for Linux clients
- Avid NEXIS | Cloud Storage system support for 330 clients
- Support for macOS Sonoma (14) on Avid NEXIS clients
- Network bonding for Linux clients
This release includes qualification for network bonding of Linux clients running FastServe with Avid NEXIS.
Mode 1 bonding is identified as ethTeaming in the FastServe interface. For more information, see the https://kb.avid.com/articles/en_US/Knowledge/FastServe-Documentation, or the Administrator’s Guide for the FastServe product of interest, such as FastServe Ingest or FastServe Playout.
Avid NEXIS | Cloud Storage system support for 330 Simultaneous (Active) Clients This release increases the number of clients that can be connected to an Avid NEXIS | Cloud Storage system at the same time, all of which are active. See "Cloud System Limits" on page 18 for more information.
Support for macOS Sonoma (14) with 1GbE Network Adapters Avid NEXIS version 2024.2.0 introduces support for clients running macOS 14 (Sonoma) and using 1GbE network adapters on Apple mac computers with the M1, M2, M3, or Intel chip.
Change to Client Manager UI for CentOS Due to a code base update in the Avid NEXIS Client Manager, the CentOS kit no longer supports opening the Management Console for a connected Avid NEXIS system. For CentOS clients only, the Client Manager UI no longer includes that button.
USM Versions Server Fixes SSENG-34814 and SSENG-38562 Avid NEXIS F-Series systems took a long time to report hardware
- failures and other problems.
- SSENG-38914 and SSENG-39241 After an upgrade to version 2023.12.0, an Avid NEXIS system sent
out excessive email notifications about the upcoming license expiration and some informational license logging messages.
Client Fixes SSENG-39081 After upgrading a client to version 2023.12.0, when a user selected multiple items in a
- Workspace using Windows Explorer and right-clicked to perform a menu action the Explorer
window abruptly closed.
USM Versions The Unified System Management (USM) firmware package is a bundle of firmware for the hardware components in an Avid NEXIS, such as the power supply units, Controllers, and the Baseboard Management Controller (BMC).
USM versions are shown on the Engines page and the Controllers page in the Management Console. BMC versions are shown on the Controllers page in the Management Console.
w USM upgrades are currently performed remotely by Avid; they do not happen automatically during system software upgrades. Contact Avid Global Customer Services for details. Some USM firmware versions are supported only with certain Avid NEXIS versions and models; see the following tables for details.
g After upgrading the Avid NEXIS system, upgrade any cold space (shelf spare) Controllers by inserting the Controller into an upgraded Engine during a maintenance window.
Compatible Avid NEXIS F-Series USM and BMC Versions USM BMC Minimum Avid NEXIS Supported Models Version v5.2-r2020.40.12_rc1_rel_ 00.54 2024.2.0 Avid NEXIS F-Series, 3353 Avid NEXIS | SDA+, Avid NEXIS | PRO+ 5.2_r2020.40.8_RC5_Rel- 00.52 2023.3.0 Avid NEXIS F-Series, 3096 Avid NEXIS | SDA+, Avid NEXIS | PRO+ 5.2_r2020.40.6_v02 00.45 2022.5.0 Avid NEXIS F-Series, Avid NEXIS | SDA+, (Displays as “BON” in the Avid NEXIS | PRO+ Management Console) Hardware and Software Requirements Compatible Avid NEXIS E-Series (Legacy) USM and BMC Versions (Corrected July 2023) USM BMC Minimum Avid Supported Models NEXIS Version 1.37b 0.01.0045 2022.12.0 Avid NEXIS E-series, Avid NEXIS | PRO 40TB with Controller 10, Avid NEXIS | SDA
> **Note:** Dual Controllers in the same chassis must run the
same USM version.
Only customers directed to do so by Avid Engineering should update the firmware to 1.37b.
1.37a 0.01.0041 2019.2.0 Avid NEXIS E-series, Avid NEXIS | PRO 40TB with Controller 10
> **Note:** 1.37 0.01.003c 2019.2.0
Can use USM 1.37 and 1.37a in the same Engine for models that support dual controllers 4.1.16g 2.00.1093c 2019.2.0 Avid NEXIS | PRO 20TB , Avid NEXIS | PRO 40TB with purple fascia Controller 4.1.16d 2.0.0002 1.32 0.01.0034 7.9.1 Legacy Avid NEXIS E-series 1.16 0.01.0013 6.x Legacy Avid NEXIS E-series Security Guidelines Avid allows you to install an endpoint protection and response solution on your Avid NEXIS clients. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page: Avid Security Guidelines and Best Practices for Dealing with Virus Threats.
> **Note:** Avid NEXIS does not support Microsoft Defender for Endpoint on client systems. Avid does not support the installation of any anti-virus or endpoint protection software on Avid NEXIS
servers.
Secure Data Deletion For customers who require a guarantee that all deleted data is done so completely and securely (after deleting a Workspace), see the following URL for Secure Data Deletion tools available from Seagate, officially supported by Avid NEXIS: https://www.seagate.com/support/secure-erase-matrix/ Hardware and Software Requirements To meet the stringent needs of media applications the Avid NEXIS family of storage solutions is built using patented intellectual property in Avid NEXIS software running on Avid NEXIS hardware. Avid tests and qualifies configurations of Avid NEXIS software deployed on Avid NEXIS hardware. The Avid NEXIS System Director is designed to allow the binding of Avid NEXIS only. Avid has not published its file system specifications, protocols, or file system APIs used among the components of the file system (Avid NEXIS System Director, Avid NEXIS client, Avid NEXIS expansion engines) and these are subject to change without notice. Therefore, any connection of third party storage as part of an Avid NEXIS file system is not a licensed, approved or supported configuration.
Supported Upgrade Paths Supported Upgrade Paths You can upgrade any Avid NEXIS system according to the upgrade path described next. For instructions on how to upgrade an Engine or System Director Appliance, see the Avid NEXIS Setup and Maintenance Guide, or the Avid NEXIS Administration Guide.
All Avid NEXIS systems can upgrade to the following versions.
Platforms Current Avid NEXIS Version Can Upgrade Directly To On-premises systems 6.x, 7.x, 2018.x, 2019.x, 2024.10.0 2020.x, 2021.x, 2022.x, 2023.x, 2024.2.x, 2024.5.0, Do not upgrade any on-premises system to 2024.6.x 2023.7.0.
Delete all media from Avid NEXIS | Cloudspaces while your subscription is still active before upgrading to 2023.8.0 or higher.
Avid NEXIS | Cloud 2021.3.1 and newer 2024.10.0 Storage systems To upgrade Avid NEXIS | Cloud Do not upgrade any Avid NEXIS Cloud Storage 2020.7.x and earlier Storage system to 2023.7.0 or 2023.8.0.
to Avid NEXIS | FS version 2021.x, please contact Avid Customer Service or your sales representative to assist with the upgrade.
System Director and Client Version Compatibility Since Avid NEXIS v2019.2, the Shared Storage system can have a newer version than the client to allow deployment of server-only fixes. Avid recommends upgrading all clients to the same version as soon as practical.
Avid NEXIS Client software version 2019.x and newer works with Avid NEXIS systems running 2019.x and newer.
> **Note:** The Avid NEXIS Toolbox and other utilities are tested and known to work only against a System
Director of the same version. If you want to install two different versions of the Toolbox on the same system, install one of them into a directory other than the default.
Supported Client Operating Systems The following table lists the currently supported client operating systems with Avid NEXIS.
All client computer names must be unique to connect to Avid NEXIS. A client computer name is treated as a user name, and all user names on a shared-storage system must be unique.
System Director and Client Version Compatibility Operating Supported Versions Notes System
> **Note:** macOS 14.x (Sonoma) with latest updates for Silicon
macOS clients are not supported M1, M2, M3, and Intel computers with all with Avid NEXIS | Cloud Storage supported NICs.
systems.
13.x (Ventura) with latest updates 12.x (Monterey) with latest updates CentOS 7.9, 7.8, 7.7, 7.6 General Avid NEXIS Client use 7.5, kernel 4.4.174-1.el7 Supported only on MediaCentral | Cloud UX systems running CentOS 7.5 7.5, kernel 3.10.0-862.el7.x86_64 See the Avid Audio and Video Compatibility Charts on the Avid Knowledge Base page for more information on compatibility.
7.4, kernel version 3.10.0-693.17 Specifically for use with AutoDesk Flame 2021; also see "Hardware and Software Requirements" on page 12.
Ubuntu 22.04 To migrate MediaCentral | Cloud UX systems from CentOS to Ubuntu, see the MediaCentral Cloud UX Documentation.
See "Ubuntu Client and MediaCentral Cloud UX Compatibility" below Windows 11 build 23H2 10 build 22H2 See "Windows 10 Issues" on page 25.
Windows Server 2022 with latest Service Pack 2019 with latest Service Pack Ubuntu Client and MediaCentral Cloud UX Compatibility Avid NEXIS version 2023.3.0 was the first release to support Ubuntu for clients, intended to accommodate the move of MediaCentral | Cloud UX from CentOS to Ubuntu Linux. Performance was limited to 1Gb/s regardless of the physical connection, which was consistent with previous versions but slower than optimal.
With Avid NEXIS 2023.8.0 and higher, the Ubuntu client performance improved to allow higher throughput on a 10Gb/s connection by using the Avid NEXIS client cache instead of the Ubuntu page cache. However, versions of MediaCentral | Cloud UX earlier than 2023.7 are not able to take advantage of this change in cache use, resulting in images under construction remaining in the MediaCentral server’s page cache without updating. Stale content remained available and clips were seen to remain indefinitely under construction, even after being finalized. The clips remained in the Creating folder and incorrectly appeared as offline.
Refer to the following chart for version compatibility and performance guidance between the Avid NEXIS client and MediaCentral | Cloud UX versions.
System Director and Client Version Compatibility MediaCentral | Cloud UX Server version Avid NEXIS Client version 2023.3 2023.7 2023.12 2024.x 2023.3 Y SLOW PERFORMANCE (~1Gb/s) 2023.8 N Y Y Y 2023.12 N Y Y Y 2024.x N Y Y Y CentOS Version Compatibility with Avid NEXIS Client and VFS Gateway Versions The following versions of CentOS support the specified versions of the Avid NEXIS Client software and the Avid NEXIS | VFS Gateway (formerly Avid NEXIS | Linux File Gateway) software.
On a given CentOS VM version, you can run any of the following versions of the Client and Gateway.
CentOS Version Supported Avid NEXIS Client and VFS Gateway Versions 7.9 2022.9.0 and higher 7.8 2021.3.x through 2022.5.x (inclusive) 7.5 2019.12.0 through 2021.3.x (inclusive) Supported Browsers in an Avid NEXIS The following browsers were tested with the client operating systems supported in the current release.
Operating System Supported Browsers Windows Microsoft Edge, Mozilla Firefox, Google Chrome macOS Apple Safari, Mozilla Firefox, Google Chrome Compatibility with Other Avid Products Compatibility with Other Avid Products This Avid NEXIS version is broadly compatible with other Avid and third-party products.
The full compatibility matrix of Avid editors and hardware is available on the Avid support site at the following URL: Avid Audio and Video Compatibility Charts Third Party Editor Compatibility Avid NEXIS Workspaces are optimized for Media and Entertainment workflows and can be successfully used with most industry standard editing, finishing, compositing, grading and animation applications, including but not limited to:
Adobe® After Effects®
- Adobe® Premiere® Pro
- Apple Final Cut®
> **Note:** As of Final Cut Pro X10.4, you can store library files on Avid NEXIS instead of on local drives.
- Autodesk Flame®
> **Note:** You must use the CentOS 7.4 kernel specified by Autodesk based on the Flame version you
intend to use for connecting to Avid NEXIS.
Autodesk Maya®
- Blackmagic Design DaVinci Resolve
- Foundry Nuke®
- Grass Valley® EDIUS® Pro
- Maxon Cinema 4D®
- System Configuration Limits
The following tables list the configuration limits for on-premises and Avid NEXIS | Cloud Storage systems in the current release.
On-Premises Limits Item Embedded System Director System Director Appliance Media Packs (per 4, in any combination of Scale-Out and 8 in a High Performance Storage Group system) High Performance 24 total (optionally including up to 8 in a High Performance Storage Group) with the Avid NEXIS | VFS Standard or Avid NEXIS | FS Standard license and any combination of Avid NEXIS Engines 64 total (optionally including up to 8 in a High Performance Storage Group) with the Avid NEXIS | VFS Advanced or Avid NEXIS | FS Advanced license, and any combination of Avid NEXIS Engines System Configuration Limits Item Embedded System Director System Director Appliance Media Packs (per 1 in all 2U chassis (Avid NEXIS | E2, Avid NEXIS | E2 All-Mirror, Avid NEXIS | E2 SSD, Avid Engine) NEXIS | PRO, Avid NEXIS | F2, Avid NEXIS | F2X, Avid NEXIS | PRO+) 1-2 in Avid NEXIS | F2 SSD 1–2 in all 4U chassis (Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror) 4–8 in all 5U chassis (Avid NEXIS | E5, Avid NEXIS | E5 NL, Avid NEXIS | E5 All-Mirror, Avid NEXIS | F5, Avid NEXIS | F5 NL) Storage Groups 4, optionally including one High 32, optionally including one High Performance Storage Group Performance Storage Group Workspaces 1024 (including Workspaces for Teams) 3072 (including Workspaces for Teams) Teams 19 80 Team Quotas Up to 255 Team Quotas per system (Teams have only one quota per Storage Group — which can be increased or decreased — but can have a quota in multiple Storage Groups) Team Admin Users No enforced limit Users (Clients) 5640 (including Users in Teams) User Groups 1028 (including User Groups in Teams) Group Non-Team users can belong to 71 non-Team user groups Memberships per Team users can belong to 71 user groups in the same Team User Connected 40 with Avid NEXIS E-Series/F-Series 165 with Avid NEXIS | VFS Standard or Avid (Active) Clients Engines NEXIS | FS Standard license 30 with Avid NEXIS | PRO or Avid NEXIS | 330 with Avid NEXIS | VFS Advanced or PRO+ Avid NEXIS | FS Advanced license Up to 10 to a High Performance Storage Group (Avid strongly recommends no more than 10) Files and Folders 8 million in Avid NEXIS E-series/F-Series 175 million in configurations with an Avid configurations NEXIS | SDA+ and the Avid NEXIS | FS Advanced license running Avid NEXIS 5 million in configurations where the version 2023.8.0 or higher System Director service runs on an Avid NEXIS | PRO+ 28.4 million in configurations with an Avid NEXIS | SDA or Avid NEXIS | SDA+ with the 3 million in configurations where the Avid NEXIS | FS Standard license.
System Director service runs on Avid NEXIS
> **Note:** | PRO
Actual limit depends on file name
> **Note:** length. Limit assumes 67 ASCII
Actual limit depends on file name characters (67 bytes). Longer length. Limit assumes 67 ASCII average file names reduce the file characters (67 bytes). Longer count limit.
average file names reduce the file count limit.
Files per folder Avid recommends no more than 5000 files per folder in Workspaces.
System Configuration Limits Item Embedded System Director System Director Appliance Pathnames Any component of the path can be up to 255 bytes. Depending on the client operating system the full path limit is:
(Workspace name + path + file name) l Windows: 32KiB
- macOS: 32KiB
- Ubuntu: 4KiB
> **Note:** Unicode characters can be multi-byte.
Cloud System Limits Avid NEXIS uses UDP datagrams for control traffic. Networks supporting Avid NEXIS must allow fragmented UDP traffic and minimize reordering of fragments because operating systems reject out- of-order fragments.
Item Limit Media Packs (per system) 1 (5PB capacity) Workspaces 3072 Teams 80 Workspaces, users, and groups created by a Team count against the overall system limits.
Team Quotas Up to 255 Team Quotas per system (Teams have only one quota per Storage Group — which can be increased or decreased) Team Admin Users No enforced limit Users (Clients) 5640 (including Users in Teams) User Groups 1028 (including User Groups in Teams) Group Memberships per Non-Team users can belong to 15 non-Team user groups User Team users can belong to 15 user groups in the same Team Connected (Active) Clients 330 simultaneously editing Bandwidth of 1-2 streams of ~100Mbps.
Files and Folders 28.4 million
> **Note:** Actual limit depends on file name length. Limit assumes 67 ASCII
characters (67 bytes). Longer average file names reduce the file count limit.
Files per folder Avid recommends no more than 10,000 files per folder, particularly for Workspaces used by Avid MediaCentral | Production Management.
Pathnames Total bytes = 255 (Workspace name + path + filename)
> **Note:** Unicode characters can be multi-byte.
System Performance (On-Premises) System Performance (On-Premises) This section describes the bandwidth for the different Media Pack bind options, and the aggregate throughput for Storage Groups using those Media Packs.
Bandwidth by Media Pack Bind Setting The nominal bandwidth rating for all-read workflows depends on the Engine type and Media Pack Bind Setting, as follows:
Bind Option Bandwidth Rating (Nominal) Supported On Scale Out 480MB/sec Avid NEXIS | PRO+ Avid NEXIS | F2, Avid NEXIS | F2X, Avid NEXIS | F5 High Performance 700MB/sec Avid NEXIS | PRO+ Avid NEXIS | F2, Avid NEXIS | F2X SSD, 1 Media Pack All Reads: 4GB/sec Avid NEXIS | F2 SSD only All Writes: 2GB/sec GB/sec Write SSD, 2 Media All Reads: 8GB/sec Packs All Writes: 4GB/sec 50/50 reads/writes: 4GB/sec Read, 2GB/sec Write Aggregate Bandwidth by Media Pack Protection Type The actual write bandwidth depends on protection type. Aggregate bandwidth is therefore a function of protection type and the proportion of reads to writes in the workflow.
> **Note:** In a mixed configuration of Avid NEXIS E-series and Avid NEXIS F-Series Engines in a Storage Group,
the throughput will be between the ratings for an all E-series or all F-series system.
The following tables provide data on the expected bandwidth for Avid NEXIS F-Series Engines (including Avid NEXIS | PRO+ ) as an aggregate of all the Media Packs in a given Engine by protection type and R/W proportion per Media Pack.
To calculate total system performance, multiply these figures by the number of Media Packs in the Storage Group. A typical workflow is 80% reads and 20% writes.
Scale-Out Performance The Scale-Out performance data in the following table is applicable to these models:
- Avid NEXIS | PRO+
- Avid NEXIS | F2 and Avid NEXIS | F2X
- Avid NEXIS | F5
System Performance (On-Premises) g Scale-Out is the best choice for Media Mirroring. Media Mirroring is not supported on Avid NEXIS | PRO+, Avid NEXIS | F2 SSD, or Avid NEXIS | F5 NL.
Media Pack Protection MP Protection and Engine Protection Read% Write% None One Two Disk One Disk + Two Disk + Disk Mirroring Mirroring 100 0 480 MB/sec 480 480 480 480 90 10 480 474 468 427 417 80 20 480 468 457 384 369 70 30 480 463 447 349 331 60 40 480 457 436 320 300 50 50 480 452 427 295 274 Usable Storage 100% 89% 80% 44% 40% High Performance The High Performance data in the following table is applicable to these models:
Avid NEXIS | PRO+
- Avid NEXIS | F2 and Avid NEXIS | F2X
Media Mirroring is not supported with High Performance Storage Groups.
Media Pack Protection MP Protection and Engine Protection Read% Write% None One Two Disk One Disk + Two Disk + Disk Mirroring Mirroring 100 0 700 MB/sec 700 700 NA NA 90 10 700 691 683 NA NA 80 20 700 683 667 NA NA 70 30 700 675 651 NA NA 60 40 700 667 636 NA NA 50 50 700 659 622 NA NA Usable Storage 100% 89% 80% NA NA System Performance (On-Premises) SSD Performance SSD Performance is the only bind option available on Avid NEXIS | F2 SSD Engines.
Media Pack Protection Read% Write% One Disk Two Disk 100 0 4000 4000 90 10 3822 3800 80 20 3644 3600 70 30 3467 3400 60 40 3289 3200 50 50 3111 3000 Usable Storage 89% 80% Drive Rebuilds and System Performance When a drive in a Media Pack fails, the data from that drive is rebuilt from the other drives in that Media Pack, and involves only those drives. During a rebuild, the Media Pack’s performance rating drops by the rating of one drive (10%). With no I/O on the system, the fastest a drive can be rebuilt is also equal to the rating of one drive.
On a Media Pack that is under full load (at complete bandwidth capacity), the minimum repair rate is 512KB/s. As the drive is rebuilt it begins contributing to the overall Media Pack performance rate for both reads and writes, so during the rebuild, the rate gradually decreases.
Performance Type Rebuild Rate (Media Pack at 100% Drive Size Estimated Rebuild Time capacity) Scale-Out 48MB/sec 4TB 24 hours 0.17TB/hr or ~6hr/TB 6TB 36 hours 10TB 60 hours 14TB 84 hours 16TB 96 hours High 70MB/sec 4TB 16 hours 0.25TB/hour, or ~4 hr/TB 6TB 24 hours 10TB 40 hours 14TB 56 hours SSD 700MB/sec 3.48TB ~1.3 hours 2.52TB/hour, or ~24 min/TB 15.3TB ~6 hours
> **Note:** 16TB drives are available for Avid NEXIS | F5 NL only.
The rebuild time increases with client load, and decreases as less data remains to be rebuilt.
Known Issues Workspaces with One-Disk Protection are rebuilt before Workspaces with Two-Disk Protection, due to their higher vulnerability to a second drive failure.
Media Mirroring and System Performance Mirrored Workspaces allow Avid NEXIS clients to continue working through an Engine failure without interruption or needing to reconnect. To ensure all clients can work seamlessly through an Engine failure, provision the shared-storage system with enough bandwidth to account for an Engine being offline.
Known Issues The following are known issues with Avid NEXIS software or third-party vendors.
Avid NEXIS On-Premises Systems Issues New SSENG-41263: Media Pack log file cannot be downloaded from the Management Console in Avid NEXIS v2024.10. An HTML file with an error is downloaded instead.
Workaround: Use the Log Aggregator tool to obtain the Media Pack logs.
SSENG-41045: When using different-sized Media Packs in a Storage Group, Avid NEXIS does not correctly enforce the Effective Storage Group size, allowing allocation of Workspaces beyond the actual Effective size. This leads to write errors when the storage space limit is reached.
Workaround: Use the Capacity Tracker to check the workspace allocation. Make sure that the 'Allocated' space is less than the 'Effective' capacity shown on the Storage Group page.
(None): A limited number of Avid NEXIS | F2 engines were programmed with serial number different to the label on the rear of the chassis. These units are fully operational and do not qualify for repair or replacement. Please note the serial number displayed in the Avid NEXIS Management Console and the rear label, in case the chassis requires repair or return for other reasons.
SSENG-39347: After installing a self-signed (system-generated) certificate on an Avid NEXIS system that previously used a trusted certificate, the Management Console was slow to load all the page elements in the Microsoft Edge browser.
Workaround: Try one or more of the following:
- Keep refreshing the browser until the Management Console fully populates
- Use another browser to log back in after switching certificate types
- Wait an extra five minutes for the Management Console to fully populate
SSENG-37053: After updating an Avid NEXIS system to version 2023.7.0, some of the Controllers reported a Firmware Mismatch issue, and indicated that the USM version on the Controller was invalid. The mismatch is caused by extended firmware version checking in 2023.7.0 and does not necessarily indicate a problem.
Workaround:You can either ignore this message (it will clear on its own after about 24 hours) or reboot the Engine.
(None): In the Management Console running Engine mode, the field labeled Storage System Name is incorrect. The value shown is the Engine name. (Engine mode is used only to activate a Modular License on a single Engine.) This will be fixed in a future release.
Known Issues SSENG-36438: If you attempt to bind a Media Pack immediately after unbinding it (for example, to change the bind performance from Scale-Out to High), the system might show an error about inadequate capacity on the license.
Workaround:After unbinding a Media Pack, wait a few minutes before attempting to bind it again. This allows the system to complete its internal status updates.
SSENG-31657 : When configuring an Avid NEXIS F-Series Engine (including Avid NEXIS | PRO+ and Avid NEXIS | SDA+ using the Agent for initial setup, the enclosure ID does not remain set, and continues to display the factory default of 00.
Workaround: Turn all of the power supplies off, then back on, on each Engine after updating the enclosure ID.
(None): When looking at switch statistics (for Dell and NETGEAR switches), you might see the OutDiscard counter (on Dell switches) or the Transmit Packets Discarded counter (on the NETGEAR switch) incrementing. This is acceptable as long as the rate of discards is no more than 1% of the total packets transmitted, or as long as workflows are not experiencing any dropped frames.
(None): Avid recommends avoiding the use of object names that include a pound sign (#) followed by numeric characters. The Macintosh Finder might incorrectly display the contents of folders whose name includes that sequence of characters. For example, “project # 12” might be erroneously displayed with some items duplicated and some items missing.
See the Avid NEXIS Administration Guide for more information on supported and unsupported characters and other restrictions.
Avid NEXIS Client Issues When a workaround exists, it appears in the paragraph directly following the issue description.
> **Note:** A user account with Administrator privileges is required to install the Avid NEXIS client software on
your workstations.
SSENG-29506, SSENG-31340: Avid is aware of an issue with intermittent communication, often during system discovery, between an Avid NEXIS and clients running on certain configurations of VMware host systems. For more information, see the following articles:
Recommended VMware Versions and Settings (Avid Knowledge Base)
- Network timeouts or packet drops with VMware Tools 11.x with Guest Introspection Driver (79185)
- (VMware Knowledge Base)
SSENG-33268: Do not use the Remote Avid NEXIS setting in the Client Manager when on site with the target Avid NEXIS system. This setting is designed for remote connections, especially with Avid NEXIS | EDGE collaboration tool. The Remote Avid NEXIS setting supports proxy workflows and push/pull file copying, but is not supported for on-premises or high resolution workflows.
(None): If you mount a workspace by mapping a network drive in Windows, when you unmount the workspace and then mount a different workspace in Client Manager manually using the same drive letter, Windows Explorer displays the previous workspace name instead of the new workspace name.
Known Issues (None): The estimated amount of space available (usually measured in an amount of time at a particular resolution) might differ between what Avid NEXIS calculates and what the Avid editing system calculates.
Avid NEXIS accurately reports the amount of space available for file storage. The Avid editing application accounts for overhead in formatting of the media and is more conservative in reporting how much space is available.
(None): The Avid NEXIS Log Utility may occasionally fail to generate logs with the error message “Couldn’t find OAM logs”.
Workaround: Close the error message and generate the logs again.
(None): If the Client Manager is connected to an Avid NEXIS system with dual controllers and the System Director service has switched over to the second controller, the Management Console launch button in the Client Manager does not redirect to the new System Director and cannot successfully open the Management Console.
Workaround: To launch the Management Console for an Avid NEXIS system, either open a browser and enter its IP address, or add the IP address of the redundant controller to the Remote Hosts list in the Client Manager.
(None): On a client with multiple NICs, all network paths from the client to a particular Avid NEXIS must be via NICs with the same speed.
Avid NEXIS Cloud Storage Issues SSENG-36923: You might see an error about the license directory being unavailable when trying to activate a license on a newly deployed Avid NEXIS | Cloud Storage system.
Workaround: Restart the Avid NEXIS | Cloud Storage system and try activating the license again.
(None): You might run into issues running clients with multiple NICs, each of which is able to connect to an Avid NEXIS | Cloud Storage system.
Workaround: In clients that are specifically connecting to Avid NEXIS | Cloud Storage, enable only one NIC.
Avid NEXIS Teams Issues SSENG-41355: An Avid NEXIS Teams Quota cannot be adjusted if the Team Name and the Team Administrator Group are the same but have different letter case or capitalization.
Workaround: Modify the Team settings by adding a Prefix in the Attributes section.
New SSENG-41500: When deleting a team workspace using the Team Admin account, the workspace name is not recorded in the AdminToolLog, making it difficult to identify which workspace was deleted.
Workaround: Note the timestamp and refer to the Delete Logs.
New SSENG-41672: When changing the Workspace Deletion Policy on Teams, the changes are not enforced.
Known Issues Avid NEXIS VFS Gateway Issues Avid NEXIS | VFS Gateway was introduced (as Avid NEXIS | Linux File Gateway) with Avid NEXIS version 2019.12.0. The utility was renamed in version 2022.9.0.
(None): The keyboard actions to select multiple items (using the Shift or Control keys) do not work.
Mac Platforms and macOS Issues SSENG-39619: Customized macOS folder icons are not supported in the Avid NEXIS file system.
(None): Avid NEXIS does not by default support using Spotlight search on Workspaces, and does not recommend using it.
SSENG-23026, Updated April 2024: Avid Benchmark Utility does not work automatically on Avid NEXIS clients running macOS 12.x (Monterey) and newer. On these clients, you must explicitly allow permission for an application (including Avid Benchmark Utility) to have Full Disk Access.
Requirement: On the macOS client, click System Preferences > Security & Privacy > Privacy > Full Disk Access and check the box for avidbenchmarkd. You might need to provide Administrator credentials to unlock this function (Padlock icon).
If the avidbenchmarkd object is not shown in the list, run a test with the Benchmark Utility against the avidbenchmarkd client; the test will fail, but running it causes the object to appear in the list.
(None): If Macintosh files are copied to a Windows system with the Macintosh resource fork files, the resource fork files cannot be copied to mounted workspaces from a Windows client. Avid NEXIS does not accept Macintosh resource fork files from Windows clients. Appropriate “properties” error messages are displayed if this is attempted.
(None): If the Avid NEXIS Client software is installed accidentally on an unsupported macOS version, running the uninstaller does not work.
Workaround: Use AppCleaner (a free download) to uninstall the Avid NEXIS Client software, as follows:
1. Download AppCleaner from: http://www.freemacsoft.net/appcleaner/
2. Follow the instructions for removing an application (in this case, Avid NEXIS Client).
3. Restart the Mac.
Ubuntu Issues (None): If your MediaCentral Cloud UX server is attached to your network through a 10Gb or greater connection, you might see reduced total bandwidth when using the Ubuntu client (v2023.3 or higher) versus the CentOS client (v2023.3 or higher).
Windows 10 Issues SSENG-29069: On Windows 10 clients, when using TeraCopy to move large numbers of files to an Avid NEXIS Workspace (instead of using Windows Explorer), TeraCopy sometimes treats a file as a directory, and the Windows client displays an error that it cannot move the file. Avid strongly recommends not using TeraCopy.
Workaround: Use Windows Explorer or the Avid Data Migration Utility.
Known Issues SSENG-2571: On Windows 10 clients, automatic Windows driver updates can remove critical NIC driver settings needed for the correct functioning of the Avid Client.
Workaround: To prevent disruption of clients running Windows 10 (Professional and Enterprise), you can defer automatic driver updates as follows:
1. Right-click the “This PC” icon (formerly called “This Computer”).
2. Select Properties.
3. Select Advanced System Settings.
4. Click the Hardware tab, then click Device Installation Settings.
Special Notes
5. Select the option “No” to prevent downloading apps and icons automatically.
6. Click Save Changes.
Special Notes This section contains important information about the Avid NEXIS environment.
Qualified and Approved Avid NEXIS Switches For a list of the current qualified and approved switches for use in the Avid NEXIS Production Network (APN), see the Avid NEXIS Network and Switch Guide on the Avid NEXIS Documentation KB page.
> **Note:** The FS SFP28 modules supplied by Avid are specifically branded for Nvidia/Mellanox devices. Use
them only in Nvidia/Mellanox based devices, for example in Avid NEXIS F-Series and PRO+ Engines where applicable. Their operation in devices other than Nvidia/Mellanox has not been tested.
Flow Control Required in Avid Production Networks Avid requires configuring Rx Flow Control (LFC) Enabled on the switch that connects to Avid NEXIS Engines and clients. The client or Engine provides feedback to the switch to honor ‘pause frames’ requests to throttle the send rate to avoid overwhelming the IP stack on the client or Engine, and to buffer at the switch during these short pauses.
Many network switches have Rx Flow Control enabled by default. Consult your switch documentation to verify your switch’s settings.
ATTO® ThunderLink™ 10 GbE and 40 GbE Adapters Avid NEXIS supports using several ATTO ThunderLink adapters for Mac and Windows (10GbE) clients. See see Avid NEXIS Network and Switch Guide on the Avid NEXIS Documentation KB page for supported Intel (and Intel-based ATTO) NICs.
Get the latest ATTO driver from their website. Install the appropriate driver for your operating system. Use all the default values and settings.
> **Note:** On macOS 10.15 clients, you might need to unblock ATTO from the Security & Privacy preferences in
the System Preferences menu.
ESXi™ VMware The Avid NEXIS Client is supported with VMware ESXi v6.0.0 (Update 1) using a VMXNET3 adapter with the Mellanox ConnectX-3 adapter and the Mellanox ESX OFED Driver version 1.9.10.2 or later.
Special Notes VMware on Windows To use VMware on Windows clients, use the 10GbE drivers that come with the Windows OS. The Avid NEXIS Client software no longer changes the speed of the VMware virtual NIC to 1 GbE.
LDAP Requires ASCII User Names and Passwords The Avid implementation of LDAP (Lightweight Directory Access Protocol) requires that you restrict LDAP user names and passwords to ASCII. The LDAP/Avid NEXIS Account Synchronizer searches for groups and their users on an LDAP server and synchronizes (reconciles) user and group accounts by adding or removing users and/or groups from Avid NEXIS.
Fast User Switching Not Supported Fast User Switching is a Windows feature that allows multiple user accounts to log on to a computer simultaneously. Fast User Switching is enabled by default in Windows computers. The Fast User Switching feature and multiple concurrent logged on user modes are not supported in the Avid NEXIS environment.
The Avid NEXIS software does not distinguish the different drive letters mapped to the same workspaces on the same computer. Conflicts appear in the following two scenarios:
When one user maps a drive letter to one workspace and another user maps the same drive letter to
- a different workspace
When one user maps a workspace to one drive letter, and another user maps a different drive letter
- for the same workspace
Special Notes