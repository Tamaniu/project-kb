---
product: nexis
product-area: shared-storage
version: "2025.3.0"
release-date: 01/03/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid NEXIS® ReadMe Version 2025.3.0 Avid recommends that you read all the information in this ReadMe thoroughly before installing software or attempting to use the Avid NEXIS system. This ReadMe provides information that is not in the other Avid NEXIS documentation. This ReadMe is cumulative for the 2025.x release stream.
This ReadMe provides hardware and software requirements, an overview of the major features of this release, and limitations and known issues. See the appropriate Avid NEXIS Setup Guide for information on physical connection of the system and loading the system and client software. You can access the documentation, including previous versions of the ReadMe, from the Avid NEXIS Documentation page on the Avid Knowledge Base.
> **Note:** For information about Avid’s security recommendations specific to Avid products, and our responses
to current world-wide security issues, see Avid Security Guidelines and Best Practices for Dealing with Virus Threats.
For compatibility with other Avid products, see the Knowledge Base page for Avid Audio and Video Compatibility Charts.
> **Note:** Avid recommends that you purchase installation services with your Avid NEXIS system.
Revision History Release Date Version Changes April 7) February 25, 2025 2025.2.0 (Withdrawn Withdrawn due to an issue that may prohibit write on March 25) operations.
Contents System Director and Client Version Compatibility 10 Compatibility with Other Avid Products 12 Third Party Editor Compatibility 13 System Configuration Limits 13 System Performance (On-Premises) 15 Known Issues 19 Special Notes 25 Accessing the Online Documentation The Avid online documentation contains all the product documentation in PDF format. You can access the documentation from the Knowledge Base site specific to your release. Download and install Acrobat Reader before you access the PDF documentation.
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
Avid NEXIS System (Server) and Client Releases Product Version Guidance macOS 2025.3.0 Support for macOS 15 Sequoia on Avid NEXIS clients (On-premises only).
Clients only Server and 2025.2.0 Withdrawn due to an issue that may prohibit write operations. See the Clients "Known Issues" on page 19 for more information.
Support for Shared Delete; Fix for Delete folder bug; Bug fixes and improvements.
Server and 2024.11.0 Native Apple Silicon support; Support for on-premises Rocky Linux clients; Clients Support for 600 active clients on Avid NEXIS | Cloud Storage systems; Bug fixes.
Server and 2024.10.0 Support for Windows 11 build 23H2; File delete logging; Bug fixes and Clients improvements.
This version is recommended for use with Avid Pro Tools. See "Compatibility with Other Avid Products" on page 12 Server and 2024.6.2 Resolved a continuous reboot issue and the installation dependencies in the Clients previous release.
Server and 2024.6.0 Matches release version with Avid editing and media management products.
Clients Fix for Avid NEXIS | E5 NL Engines using LACP.
Server and 2024.5.0 Enhanced HTTPS security; full support for macOS Sonoma; increased Clients maximum size of Cloud Storage system; support for trusted certificates; deprecated HTTP support; internal code base upgrades Server and 2024.2.0 Minimum version recommended for macOS Sonoma.
Clients Server and 2023.12.0 Strongly recommended minimum version for Pro Tools and Avid NEXIS in Clients audio workflows, Avid NEXIS | F2 SSD engines, and all Avid NEXIS | EDGE sites.
Avid NEXIS versions 2022.x, 2023.8, and older are no longer recommended for new installations. Avid NEXIS version 2021.x and older are no longer supported.
What’s New in Avid NEXIS 2025.3.0 Avid NEXIS Version Downgrades Installing an older software version on Avid NEXIS systems is not supported and can result in unforeseen consequences, up to and including data loss.
What’s New in Avid NEXIS 2025.3.0 Avid NEXIS version 2025.3.0 is a macOS client-only release that introduces support for macOS 15 Sequoia.
Support for macOS 15 Sequoia Clients with 1GbE and built-in 10GbE Network Adapters Avid NEXIS version 2025.3.0 introduces support for on-premises clients running macOS 15 Sequoia with 1 or 2 x 1GbE, and built-in 1 or 2 x 10GbE network adapters on Apple Silicon (M1, M2, M3, M4) and Intel- based Mac computers. See "Supported Client Operating Systems" on page 11 for more information.
Limitations and Defects Found See the "Known Issues" on page 19 for all limitations found in this release and previous releases. New limitations are marked as 'New'.
What’s New in Avid NEXIS 2025.2.0 Avid has withdrawn version 2025.2.0 due to an issue that may prohibit write operations. See the "Known Issues" on page 19 for more information.
Avid NEXIS version 2025.2.0 is a major release that includes the following:
Support for Shared Delete
- Larger drive capacities for Avid NEXIS F2/F2X, F5, and F5 | NL
- Support for Rocky Linux clients with 40GbE connection
- Removal of the Avid NEXIS Client installer for CentOS from the cloud
- Support for custom icons on macOS folders
- Support for Shared Delete
Avid NEXIS 2025.2.0 adds support for Shared Delete, allowing a file to be deleted, renamed, or moved by one application even if another application is using it.
Previously, Avid NEXIS required exclusive access to a file (no other application could have it open) to be able to delete, rename, or move it. This caused workflow issues, particularly with certain endpoint security systems. Many security and virus scanning services rely on shared delete to allow them to access and scan files without interfering with normal workflows. With shared delete, this limitation is addressed.
On a Windows client, if an application opens a file with shared delete access, the file can be deleted, renamed, or moved by any client even though the file is still in use. If an application opens a file without shared delete access, Avid NEXIS maintains the previous behavior and blocks these operations.
On macOS and Linux clients, files are always open with shared delete. This means they can always be deleted, renamed, or moved while in use (unless a Windows client also has the file open and does not have shared delete access set).
> **Note:** When a file is deleted and it is still open in another application, the file will remain in the directory
structure until the last application closes it. The data of the file will be in the process of being deleted, so the data obtained from that file could be undefined.
What’s New in Avid NEXIS 2025.2.0 Larger Drive Capacities for Avid NEXIS F2/F2X, F5, and F5 | NL This release includes the qualification of Seagate's new generation of high-capacity hard disk drives, ​The which offer larger storage capacities. maximum Media Pack drive size is now 20TB for online Media Packs (F2/F2X and F5) and 24TB for nearline Media Packs (F5 | NL). See the updated "Media Pack and System Drives" chapter in the Avid NEXIS Setup and Maintenance Guide available in the Avid NEXIS Documentation Knowledge Base.
Support for Rocky Linux with 40GbE Connection This release adds support for on-premises Rocky Linux clients with 40GbE network adapters; see "Supported Client Operating Systems " on page 11 for more information.
Removal of the Avid NEXIS Client Installer for CentOS from the Cloud Starting with Avid NEXIS 2025.2.0, the Avid NEXIS Client installer for CentOS has been removed from cloud platforms.
For on-premises systems, the Avid NEXIS Client and VFS Gateway installers for CentOS remain available but have been moved to the new 'Legacy' section on the Installers page in the Management Console. This section contains installers for deprecated software versions that are no longer recommended for use but are provided for compatibility purposes. For more information on these legacy installers, see "CentOS Version Compatibility with Avid NEXIS Client and VFS Gateway Versions" on page 12
> **Note:** Avid NEXIS will end CentOS support in a future release.
Support for Custom Icons on macOS Folders Custom icons on macOS folders are now supported in Avid NEXIS clients. To use this feature, install the Avid NEXIS Client v2025.2.0 or later, and install or reinstall the Avid NEXIS server with the following options: --toggles=filename_allow_control_chars:1,dirname_allow_control_chars:1.
Contact Avid Support for assistance with installing these toggles.
> **Note:** The Avid NEXIS server does not need to be upgraded unless the core is older than v2022.12. Releases
prior to this are no longer recommended or supported.
Custom icons will only function on macOS. They work by embedding control characters in file and directory names, which are illegal in Windows and may cause errors when viewed on a Windows client. Additionally, performing certain operations on these folders using a Windows client may result in the loss of the custom icon.
Server Fixes (in Numerical Order) SSENG-33326, 41045: When using different-sized Media Packs in a Storage Group, Avid NEXIS does
- not correctly enforce the Storage Group's effective capacity, allowing allocation of workspaces
larger than the actual effective capacity. This leads to write errors when the storage space limit is reached.
USM Versions With this fix, the size of existing workspaces and team quotas is automatically adjusted during the upgrade procedure to ensure that the total capacity does not exceed the effective capacity of the Storage Group. When creating or modifying workspaces or setting team quotas with this build, users will get an error if the total capacity exceeds the effective capacity of the Storage Group to which they belong.
> **Note:** Although not required, customers using mixed media packs with full workspaces that exceed
the effective capacity are advised to reduce the amount of data in those workspaces before upgrading to 2025.2. This helps prevent discrepancies in the information displayed on the Management Console dashboard.
SSENG-39420: If no 10GB cable is connected to the Controller, the Management Console displays
- an incomplete menu in the navigation sidebar and only shows a single engine without an active
System Director.
- SSENG-40046: Avid NEXIS editing clients running on Windows with Microsoft Defender for Endpoint
may experience workflow failures if Microsoft Defender for Endpoint holds a file open while the editing application attempts to delete it on drive letter Avid NEXIS mounts. This has prevented proper operation of Send-to-playback workflows.
- SSENG-41357: When deleting a workspace in the Management Console, the delete dialog box does
not display the selected workspace for deletion.
Client Fixes SSENG-39619: Copying files to a macOS folder with a custom icon results in error code -50. This
- issue is fixed in the following feature "Support for Custom Icons on macOS Folders" on the previous
page
- SSENG-41272: Adobe Premiere Pro crashes when importing P2 media from an Avid NEXIS
workspace on macOS.
- SSENG-41844: The Avid Benchmark Agent crashes on M-series Apple Silicon clients with Avid NEXIS
v2024.11.0.
SSENG-42028: When installing the Avid NEXIS Object Access Module (OAM) package on Rocky
- Linux, the installation fails with the error message "Failed to enable unit: Cannot alias
uServerC.service as storagemanagerd@C.service".
- Enhanced security for the Avid NEXIS Client.
Server and Client Fixes
- SSENG-28342, 34868, 36932, 38433: Unable to delete folders with a large number of files on
macOS. When deleting a folder or directory from Avid NEXIS workspaces via Finder, this error message appears: "The operation can't be completed because the item is in use". This issue is resolved by upgrading both the Avid NEXIS server and client to v2025.2.0.
Limitations and Defects Found See the "Known Issues" on page 19 for all limitations found in this release and previous releases. New limitations are marked as 'New'.
USM Versions The Unified System Management (USM) firmware package is a bundle of firmware for the hardware components in an Avid NEXIS, such as the power supply units, Controllers, and the Baseboard Management Controller (BMC).
USM Versions USM versions are shown on the Engines page and the Controllers page in the Management Console. BMC versions are shown on the Controllers page in the Management Console.
w USM upgrades are currently performed remotely by Avid; they do not happen automatically during system software upgrades. Contact Avid Global Customer Services for details. Some USM firmware versions are supported only with certain Avid NEXIS versions and models; see the following tables for details.
g After upgrading the Avid NEXIS system, upgrade any cold space (shelf spare) Controllers by inserting the Controller into an upgraded Engine during a maintenance window.
Compatible Avid NEXIS F-Series USM and BMC Versions USM BMC Minimum Avid NEXIS Supported Models Version v5.2-r2020.40.12_rc1_rel_ 00.54 2024.2.0 Avid NEXIS F-Series, 3353 Avid NEXIS | SDA+, Avid NEXIS | PRO+ 5.2_r2020.40.8_RC5_Rel- 00.52 2023.3.0 Avid NEXIS F-Series, 3096 Avid NEXIS | SDA+, Avid NEXIS | PRO+ 5.2_r2020.40.6_v02 00.45 2022.5.0 Avid NEXIS F-Series, Avid NEXIS | SDA+, (Displays as “BON” in the Avid NEXIS | PRO+ Management Console) Compatible Avid NEXIS E-Series (Legacy) USM and BMC Versions (Corrected July 2023) USM BMC Minimum Avid Supported Models NEXIS Version 1.37b 0.01.0045 2022.12.0 Avid NEXIS E-series, Avid NEXIS | PRO 40TB with Controller 10, Avid NEXIS | SDA
> **Note:** Dual Controllers in the same chassis must run the
same USM version.
Only customers directed to do so by Avid Engineering should update the firmware to 1.37b.
1.37a 0.01.0041 2019.2.0 Avid NEXIS E-series, Avid NEXIS | PRO 40TB with Controller 10
> **Note:** Can use USM 1.37 and 1.37a in the same Engine for
models that support dual controllers 1.37 0.01.003c 2019.2.0 4.1.16g 2.00.1093c 2019.2.0 Avid NEXIS | PRO 20TB , Avid NEXIS | PRO 40TB with purple fascia Controller 4.1.16d 2.0.0002 1.32 0.01.0034 7.9.1 Legacy Avid NEXIS E-series 1.16 0.01.0013 6.x Legacy Avid NEXIS E-series Hardware and Software Requirements Security Guidelines Avid allows you to install an endpoint protection and response solution on your Avid NEXIS clients. While Avid does not support any specific solution, you can find general guidelines and information regarding network security, including specific data on CrowdStrike Falcon, in the following Avid Knowledge Base page: Avid Security Guidelines and Best Practices for Dealing with Virus Threats. Refer to the Avid Endpoint Security Guidelines for more information on endpoint security systems.
> **Note:** Avid NEXIS currently supports CrowdStrike version 7.18.
Microsoft Defender for Endpoint does not support EDR path exclusions for Avid NEXIS mounted as drive letter. This limitation may cause objects or actions to be identified as risks, even when there is no actual threat. If exclusions are needed, Avid recommends configuring process exclusions in Microsoft Defender for Endpoint to allow applications accessing the Avid NEXIS workspace and associated file operations to be scanned. Consult your IT department and refer to the Microsoft Defender for Endpoint documentation for details on configuring process exclusions.
> **Note:** Avid does not support the installation of any anti-virus or endpoint protection software on Avid NEXIS
servers.
Secure Data Deletion For customers who require a guarantee that all deleted data is done so completely and securely (after deleting a Workspace), see the following URL for Secure Data Deletion tools available from Seagate, officially supported by Avid NEXIS: https://www.seagate.com/support/secure-erase-matrix/ Hardware and Software Requirements To meet the stringent needs of media applications, the Avid NEXIS family of storage solutions is built using patented intellectual property in Avid NEXIS software running on Avid NEXIS hardware. Avid tests and qualifies configurations of Avid NEXIS software deployed on Avid NEXIS hardware. The Avid NEXIS System Director is designed to allow the binding of Avid NEXIS only. Avid has not published its file system specifications, protocols, or file system APIs used among the components of the file system (Avid NEXIS System Director, Avid NEXIS client, Avid NEXIS expansion engines) and these are subject to change without notice. Therefore, any connection of third party storage as part of an Avid NEXIS file system is not a licensed, approved or supported configuration.
Supported Upgrade Paths You can upgrade any Avid NEXIS system according to the upgrade path described next. For instructions on how to upgrade an Engine or System Director Appliance, see the Avid NEXIS Setup and Maintenance Guide, or the Avid NEXIS Administration Guide.
All Avid NEXIS systems can upgrade to the following versions.
Platforms Current Avid NEXIS Version Can Upgrade Directly To On-premises systems 6.x, 7.x, 2018.x, 2019.x, 2024.11.0 2020.x, 2021.x, 2022.x, 2023.x, 2024.2.x, 2024.5.0, Do not upgrade any on-premises system to 2024.6.x, 2024.10.0 2023.7.0 or 2025.2.0.
Delete all media from Avid NEXIS | Cloudspaces while your subscription is still System Director and Client Version Compatibility Platforms Current Avid NEXIS Version Can Upgrade Directly To active before upgrading to 2023.8.0 or higher.
Avid NEXIS | Cloud 2021.3.1 and newer 2024.11.0 Storage systems To upgrade Avid NEXIS | Cloud c Do not upgrade any Avid NEXIS Cloud Storage Storage 2020.7.x and earlier system to 2023.7.0, 2023.8.0, or 2025.2.0.
to Avid NEXIS | FS version 2021.x, please contact Avid Customer Service or your sales representative to assist with the upgrade.
System Director and Client Version Compatibility This section outlines the Avid NEXIS server and client version compatibility.
The Avid NEXIS server can have a newer version than the client to allow deployment of server-only fixes.
However, Avid recommends upgrading all clients to the same version as soon as possible. New functionality, enhancements, and some fixes require aligned server and client versions.
An Avid NEXIS server and client compatibility issue has been identified that can cause media consistency errors when using Avid NEXIS 2023.8 or a newer client with Avid NEXIS 2023.8 or an older server. If the issue occurs, it will most likely impact media files that are frequently modified. Although rare, it may cause portions of media to be unreadable. Avid strongly recommends that customers upgrade the Avid NEXIS core to the minimum recommended version of Avid NEXIS 2023.12 immediately.
Avid NEXIS Server and Client Compatibility Avid NEXIS Avid NEXIS Avid NEXIS Avid NEXIS Avid NEXIS Avid NEXIS 2022.x Client 2023.3 Client 2023.8 Client 2023.12 Client 2024.x Client2025.x Client Avid NEXIS 2022 N N N N server Avid NEXIS 2023.3 Not Not N N N N server recommended recommended Avid NEXIS 2023.8 for new for new N N N N server installations or installations or Avid NEXIS 2023.12 Not upgrades upgrades Y Y Y server recommended for Avid NEXIS 2024.x new installations Y Y Y server or upgrades Recommended Supported but not recommended for new systems Not supported. Upgrade core (server) to Avid NEXIS 2023.12 or newer ASAP Recommended Version Avid NEXIS 2023.12 is the minimum recommended version that prevents media consistency errors. Newer versions include additional features and fixes. Avid recommends running the latest version of server and client due to the enhanced functionality, security enhancements, and fixes. For a complete list of features and fixes, see the "What's New" section of this ReadMe.
System Director and Client Version Compatibility
> **Note:** Upgrade Avid NEXIS server to version 2023.12 or higher before upgrading clients.
Avid NEXIS | VFS 2025.2 and 2023.7 were withdrawn and not recommended for any system.
> **Note:** The Avid NEXIS Toolbox and other utilities are tested and known to work only against a System
Director of the same version. If you want to install two different versions of the Toolbox on the same system, install one of them into a directory other than the default.
Supported Client Operating Systems The following table lists the currently supported client operating systems with Avid NEXIS.
All client computer names must be unique to connect to Avid NEXIS. A client computer name is treated as a user name, and all user names on a shared-storage system must be unique.
Operating Supported Versions Notes System macOS 15.3 (Sequoia) with latest updates for Apple n macOS clients are not supported Silicon (M1, M2, M3, M4) and Intel-based with Avid NEXIS | Cloud Storage Mac computers with 1 or 2 x 1GbE and systems.
built-in 1 or 2 x 10GbE NICs.
14.x (Sonoma) with latest updates for Silicon M1, M2, M3, and Intel computers with all supported NICs.
13.x (Ventura) with latest updates 12.x (Monterey) with latest updates CentOS 7.9 General Avid NEXIS Client use
> **Note:** Avid will end support for CentOS
clients in a future release.
Rocky Linux v9.4 kernel 5.14.0-427.13.1 Supported only on on-premises Avid with 1GbE, 10GbE, and 40GbE NICs NEXIS clients Compatible with AutoDesk Flame 2025 Ubuntu 22.04 To migrate MediaCentral | Cloud UX systems from CentOS to Ubuntu, see the MediaCentral Cloud UX Documentation.
See "Ubuntu Client and MediaCentral Cloud UX Compatibility" on the next page Windows 11 build 23H2 10 build 22H2 See "Windows Issues" on page 22.
Windows Server 2022 with latest Service Pack 2019 with latest Service Pack Compatibility with Other Avid Products Ubuntu Client and MediaCentral Cloud UX Compatibility Avid NEXIS version 2023.3.0 was the first release to support Ubuntu for clients, intended to accommodate the move of MediaCentral | Cloud UX from CentOS to Ubuntu Linux. Performance was limited to 1Gb/s regardless of the physical connection, which was consistent with previous versions but slower than optimal.
With Avid NEXIS 2023.8.0 and higher, the Ubuntu client performance improved to allow higher throughput on a 10Gb/s connection by using the Avid NEXIS client cache instead of the Ubuntu page cache. However, versions of MediaCentral | Cloud UX earlier than 2023.7 are not able to take advantage of this change in cache use, resulting in images under construction remaining in the MediaCentral server’s page cache without updating. Stale content remained available and clips were seen to remain indefinitely under construction, even after being finalized. The clips remained in the Creating folder and incorrectly appeared as offline.
Refer to the MediaCentral Compatibility Matrix for version compatibility between the Avid NEXIS Client and MediaCentral | Cloud UX.
CentOS Version Compatibility with Avid NEXIS Client and VFS Gateway Versions The following versions of CentOS support the specified versions of the Avid NEXIS Client software and the Avid NEXIS | VFS Gateway (formerly Avid NEXIS | Linux File Gateway) software.
On a given CentOS VM version, you can run any of the following versions of the Client and Gateway.
CentOS Supported Avid NEXIS Client and VFS Gateway Versions Version 7.9 2022.9.0 through 2024.11.0
> **Note:** Avid NEXIS continues to provide CentOS installers for new releases, but no
updates are made after version 2024.11.0. Customers using Avid NEXIS Client or VFS Gateway v2024.11.0 may or may not upgrade, as there are no changes.
7.8 2021.3.x through 2022.5.x (inclusive) 7.5 2019.12.0 through 2021.3.x (inclusive)
> **Note:** CentOS Linux 7 reached end of life (EOL) on June 30, 2024. The Avid NEXIS Client and VFS Gateway
installers for CentOS remain available in the installation kit and Management Console as legacy products for on-premises systems until Avid NEXIS ends CentOS support in a future release.
Supported Browsers in an Avid NEXIS The following browsers were tested with the client operating systems supported in the current release.
Operating System Supported Browsers Windows Microsoft Edge, Mozilla Firefox, Google Chrome macOS Apple Safari, Mozilla Firefox, Google Chrome Compatibility with Other Avid Products This Avid NEXIS version is broadly compatible with other Avid and third-party products.
Avid NEXIS Client versions 2024.5.0 and 2024.6.x are not qualified for use with Pro Tools on macOS.
Third Party Editor Compatibility The full compatibility matrix of Avid editors and hardware is available on the Avid support site at the following URL: Avid Audio and Video Compatibility Charts Third Party Editor Compatibility Avid NEXIS Workspaces are optimized for Media and Entertainment workflows and can be successfully used with most industry standard editing, finishing, compositing, grading and animation applications, including but not limited to:
Adobe® After Effects®
- Adobe® Premiere® Pro 2018 (v12.1.1) and higher
- Apple Final Cut® Pro X version 10.4.2 and higher
> **Note:** As of Final Cut Pro X 10.4, you can store library files on Avid NEXIS instead of on local drives.
- Autodesk Flame®
> **Note:** You must use the CentOS 7.4 and Rocky Linux 9.4 kernel specified by Autodesk based on the
Flame version you intend to use for connecting to Avid NEXIS.
Autodesk Maya®
- Blackmagic Design DaVinci Resolve 14.3 and higher
- Foundry Nuke®
- Grass Valley® EDIUS® Pro 9 and higher
- Maxon Cinema 4D®
- System Configuration Limits
The following tables list the configuration limits for on-premises and Avid NEXIS | Cloud Storage systems in the current release.
On-Premises Limits Item Embedded System Director System Director Appliance Media Packs (per 4, in any combination of Scale-Out and 8 in a High Performance Storage Group system) High Performance 24 total (optionally including up to 8 in a High Performance Storage Group) with the Avid NEXIS | VFS Standard or Avid NEXIS | FS Standard license and any combination of Avid NEXIS Engines 64 total (optionally including up to 8 in a High Performance Storage Group) with the Avid NEXIS | VFS Advanced or Avid NEXIS | FS Advanced license, and any combination of Avid NEXIS Engines Media Packs (per 1 in all 2U chassis (Avid NEXIS | E2, Avid NEXIS | E2 All-Mirror, Avid NEXIS | E2 SSD, Avid Engine) NEXIS | PRO, Avid NEXIS | F2, Avid NEXIS | F2X, Avid NEXIS | PRO+) 1-2 in Avid NEXIS | F2 SSD System Configuration Limits Item Embedded System Director System Director Appliance 1–2 in all 4U chassis (Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror) 4–8 in all 5U chassis (Avid NEXIS | E5, Avid NEXIS | E5 NL, Avid NEXIS | E5 All-Mirror, Avid NEXIS | F5, Avid NEXIS | F5 NL) Storage Groups 4, optionally including one High 32, optionally including one High Performance Storage Group Performance Storage Group Workspaces 1024 (including Workspaces for Teams) 3072 (including Workspaces for Teams) Teams 19 80 Team Quotas Up to 255 Team Quotas per system (Teams have only one quota per Storage Group — which can be increased or decreased — but can have a quota in multiple Storage Groups) Team Admin Users No enforced limit Users (Clients) 5640 (including Users in Teams) User Groups 1028 (including User Groups in Teams) Group Non-Team users can belong to 71 non-Team user groups Memberships per Team users can belong to 71 user groups in the same Team User Connected 40 with Avid NEXIS E-Series/F-Series 165 with Avid NEXIS | VFS Standard or Avid (Active) Clients Engines NEXIS | FS Standard license 30 with Avid NEXIS | PRO or Avid NEXIS | 330 with Avid NEXIS | VFS Advanced or PRO+ Avid NEXIS | FS Advanced license Up to 10 to a High Performance Storage Group (Avid strongly recommends no more than 10) Files and Folders 8 million in Avid NEXIS E-series/F-Series 175 million in configurations with an Avid configurations NEXIS | SDA+ and the Avid NEXIS | FS Advanced license running Avid NEXIS 5 million in configurations where the version 2023.8.0 or higher System Director service runs on an Avid NEXIS | PRO+ 28.4 million in configurations with an Avid NEXIS | SDA or Avid NEXIS | SDA+ with the 3 million in configurations where the Avid NEXIS | FS Standard license.
System Director service runs on Avid NEXIS | PRO n Actual limit depends on file name length. Limit assumes 67 ASCII
> **Note:** Actual limit depends on file name
characters (67 bytes). Longer average length. Limit assumes 67 ASCII file names reduce the file count limit.
characters (67 bytes). Longer average file names reduce the file count limit.
Files per folder Avid recommends no more than 10,000 files per folder in Workspaces.
Pathnames Any component of the path can be up to 255 bytes. Depending on the client operating system the full path limit is:
(Workspace name + path + file name) l Windows: 32KiB
- macOS: 32KiB
System Performance (On-Premises) Item Embedded System Director System Director Appliance
- Ubuntu: 4KiB
> **Note:** Unicode characters can be multi-byte.
Cloud System Limits Avid NEXIS uses UDP datagrams for control traffic. Networks supporting Avid NEXIS must allow fragmented UDP traffic and minimize reordering of fragments because operating systems reject out- of-order fragments.
Item Limit Media Packs (per system) 1 (5PB capacity) Workspaces 3072 Teams 80 Workspaces, users, and groups created by a Team count against the overall system limits.
Team Quotas Up to 255 Team Quotas per system (Teams have only one quota per Storage Group — which can be increased or decreased) Team Admin Users No enforced limit Users (Clients) 5640 (including Users in Teams) User Groups 1028 (including User Groups in Teams) Group Memberships per Non-Team users can belong to 15 non-Team user groups User Team users can belong to 15 user groups in the same Team Connected (Active) Clients 600 simultaneous editing Files and Folders 28.4 million
> **Note:** Actual limit depends on file name length. Limit assumes 67 ASCII characters
(67 bytes). Longer average file names reduce the file count limit.
Files per folder Avid recommends no more than 10,000 files per folder, particularly for Workspaces used by Avid MediaCentral | Production Management.
Pathnames Total bytes = 255 (Workspace name + path + filename)
> **Note:** Unicode characters can be multi-byte.
System Performance (On-Premises) This section describes the bandwidth for the different Media Pack bind options, and the aggregate throughput for Storage Groups using those Media Packs.
System Performance (On-Premises) Bandwidth by Media Pack Bind Setting The nominal bandwidth rating for all-read workflows depends on the Engine type and Media Pack Bind Setting, as follows:
Bind Option Bandwidth Rating (Nominal) Supported On Scale Out 480MB/sec Avid NEXIS | PRO+ Avid NEXIS | F2, Avid NEXIS | F2X, Avid NEXIS | F5 High Performance 700MB/sec Avid NEXIS | PRO+ Avid NEXIS | F2, Avid NEXIS | F2X SSD, 1 Media Pack All Reads: 4GB/sec Avid NEXIS | F2 SSD only All Writes: 2GB/sec GB/sec Write SSD, 2 Media All Reads: 8GB/sec Packs All Writes: 4GB/sec 50/50 reads/writes: 4GB/sec Read, 2GB/sec Write Aggregate Bandwidth by Media Pack Protection Type The actual write bandwidth depends on protection type. Aggregate bandwidth is therefore a function of protection type and the proportion of reads to writes in the workflow.
> **Note:** In a mixed configuration of Avid NEXIS E-series and Avid NEXIS F-Series Engines in a Storage Group,
the throughput will be between the ratings for an all E-series or all F-series system.
The following tables provide data on the expected bandwidth for Avid NEXIS F-Series Engines (including Avid NEXIS | PRO+ ) as an aggregate of all the Media Packs in a given Engine by protection type and R/W proportion per Media Pack.
To calculate total system performance, multiply these figures by the number of Media Packs in the Storage Group. A typical workflow is 80% reads and 20% writes.
Scale-Out Performance The Scale-Out performance data in the following table is applicable to these models:
Avid NEXIS | PRO+
- Avid NEXIS | F2 and Avid NEXIS | F2X
- Avid NEXIS | F5
- g
Scale-Out is the best choice for Media Mirroring. Media Mirroring is not supported on Avid NEXIS | PRO+, Avid NEXIS | F2 SSD, or Avid NEXIS | F5 NL.
System Performance (On-Premises) Media Pack Protection MP Protection and Engine Protection Read% Write% None One Two Disk One Disk + Two Disk + Disk Mirroring Mirroring 100 0 480 MB/sec 480 480 480 480 90 10 480 474 468 427 417 80 20 480 468 457 384 369 70 30 480 463 447 349 331 60 40 480 457 436 320 300 50 50 480 452 427 295 274 Usable Storage 100% 89% 80% 44% 40% High Performance The High Performance data in the following table is applicable to these models:
Avid NEXIS | PRO+
- Avid NEXIS | F2 and Avid NEXIS | F2X
Media Mirroring is not supported with High Performance Storage Groups.
Media Pack Protection MP Protection and Engine Protection Read% Write% None One Two Disk One Disk + Two Disk + Disk Mirroring Mirroring 100 0 700 MB/sec 700 700 NA NA 90 10 700 691 683 NA NA 80 20 700 683 667 NA NA 70 30 700 675 651 NA NA 60 40 700 667 636 NA NA 50 50 700 659 622 NA NA Usable Storage 100% 89% 80% NA NA SSD Performance SSD Performance is the only bind option available on Avid NEXIS | F2 SSD Engines.
Media Pack Protection Read% Write% One Disk Two Disk 100 0 4000 4000 90 10 3822 3800 80 20 3644 3600 70 30 3467 3400 60 40 3289 3200 System Performance (On-Premises) Media Pack Protection Read% Write% One Disk Two Disk 50 50 3111 3000 Usable Storage 89% 80% Drive Rebuilds and System Performance When a drive in a Media Pack fails, the data from that drive is rebuilt from the other drives in that Media Pack, and involves only those drives. During a rebuild, the Media Pack’s performance rating drops by the rating of one drive (10%). With no I/O on the system, the fastest a drive can be rebuilt is also equal to the rating of one drive.
On a Media Pack that is under full load (at complete bandwidth capacity), the minimum repair rate is 512KB/s. As the drive is rebuilt it begins contributing to the overall Media Pack performance rate for both reads and writes, so during the rebuild, the rate gradually decreases.
Performance Type Rebuild Rate (Media Pack at 100% Drive Size Estimated Rebuild Time capacity) Scale-Out 48MB/sec 4TB 24 hours 6TB 36 hours 0.17TB/hr or ~6hr/TB 10TB 60 hours 14TB 84 hours 16TB 96 hours High 70MB/sec 4TB 16 hours 6TB 24 hours 0.25TB/hour, or ~4 hr/TB 10TB 40 hours 14TB 56 hours SSD 700MB/sec 3.48TB ~1.3 hours 15.3TB ~6 hours 2.52TB/hour, or ~24 min/TB
> **Note:** 16TB drives are available for Avid NEXIS | F5 NL only.
The rebuild time increases with client load, and decreases as less data remains to be rebuilt.
Workspaces with One-Disk Protection are rebuilt before Workspaces with Two-Disk Protection, due to their higher vulnerability to a second drive failure.
Media Mirroring and System Performance Mirrored Workspaces allow Avid NEXIS clients to continue working through an Engine failure without interruption or needing to reconnect. To ensure all clients can work seamlessly through an Engine failure, provision the shared-storage system with enough bandwidth to account for an Engine being offline.
Known Issues Known Issues The following are known issues with Avid NEXIS software or third-party vendors. When a workaround exists, it appears in the paragraph directly following the issue description.
Avid NEXIS On-Premises Systems Issues New SSENG-43125: After upgrading to 2025.2.0, some Storage Groups may encounter an issue where the Effective, Allocated, and Unallocated fields, as well as some workspaces, show zero capacity, prohibiting write operations.
For customers who have already upgraded to 2025.2.0 and have not encountered this issue, you can continue using this version.
SSENG-41851: An Avid NEXIS server and client compatibility issue has been identified that can cause media consistency issues when using Avid NEXIS 2023.8 or a newer client with Avid NEXIS 2023.8 or an older server. To prevent this, Avid recommends using Avid NEXIS v2023.12 or later for both the server and client. For more details, see the "System Director and Client Version Compatibility" on page 10.
SSENG-41263: Media Pack log file cannot be downloaded from the Management Console in Avid NEXIS v2024.10. An HTML file with an error is downloaded instead.
Workaround: Use the Log Aggregator tool to obtain the Media Pack logs.
(None): A limited number of Avid NEXIS | F2 engines were programmed with serial number different to the label on the rear of the chassis. These units are fully operational and do not qualify for repair or replacement. Please note the serial number displayed in the Avid NEXIS Management Console and the rear label, in case the chassis requires repair or return for other reasons.
SSENG-39347: After installing a self-signed (system-generated) certificate on an Avid NEXIS system that previously used a trusted certificate, the Management Console was slow to load all the page elements in the Microsoft Edge browser.
Workaround: Try one or more of the following:
Keep refreshing the browser until the Management Console fully populates
- Use another browser to log back in after switching certificate types
- Wait an extra five minutes for the Management Console to fully populate
- SSENG-37053: After updating an Avid NEXIS system to version 2023.7.0, some of the Controllers reported
a Firmware Mismatch issue, and indicated that the USM version on the Controller was invalid. The mismatch is caused by extended firmware version checking in 2023.7.0 and does not necessarily indicate a problem.
Workaround:You can either ignore this message (it will clear on its own after about 24 hours) or reboot the Engine.
(None): In the Management Console running Engine mode, the field labeled Storage System Name is incorrect. The value shown is the Engine name. (Engine mode is used only to activate a Modular License on a single Engine.) This will be fixed in a future release.
Known Issues SSENG-36438: If you attempt to bind a Media Pack immediately after unbinding it (for example, to change the bind performance from Scale-Out to High), the system might show an error about inadequate capacity on the license.
Workaround:After unbinding a Media Pack, wait a few minutes before attempting to bind it again. This allows the system to complete its internal status updates.
SSENG-31657 : When configuring an Avid NEXIS F-Series Engine (including Avid NEXIS | PRO+ and Avid NEXIS | SDA+ using the Agent for initial setup, the enclosure ID does not remain set, and continues to display the factory default of 00.
Workaround: Turn all of the power supplies off, then back on, on each Engine after updating the enclosure ID.
(None): When looking at switch statistics (for Dell and NETGEAR switches), you might see the OutDiscard counter (on Dell switches) or the Transmit Packets Discarded counter (on the NETGEAR switch) incrementing. This is acceptable as long as the rate of discards is no more than 1% of the total packets transmitted, or as long as workflows are not experiencing any dropped frames.
(None): Avid recommends avoiding the use of object names that include a pound sign (#) followed by numeric characters. The Macintosh Finder might incorrectly display the contents of folders whose name includes that sequence of characters. For example, “project # 12” might be erroneously displayed with some items duplicated and some items missing.
See the Avid NEXIS Administration Guide for more information on supported and unsupported characters and other restrictions.
Avid NEXIS Client Issues
> **Note:** A user account with Administrator privileges is required to install the Avid NEXIS client software on
your workstations.
New SSENG-41923: After installing the Avid NEXIS Client v2024.11.0, uServerd crashes at system startup or when launching the Client Manager. This issue only occurs on macOS clients that have multiple active network interfaces and happens when a network interface is removed. This may affect clients connecting to Avid NEXIS cloud systems.
SSENG-42763: When installing the NEXIS Client v2025.2.0 on an Apple Silicon Mac (M-series), the installer may prompt for Rosetta installation. To proceed with the installation, choose "Install" when prompted.
SSENG-29506, SSENG-31340: Avid is aware of an issue with intermittent communication, often during system discovery, between an Avid NEXIS and clients running on certain configurations of VMware host systems. For more information, see the following articles:
- Recommended VMware Versions and Settings (Avid Knowledge Base)
- Network timeouts or packet drops with VMware Tools 11.x with Guest Introspection Driver (79185)
(VMware Knowledge Base) Known Issues SSENG-33268: Do not use the Remote Avid NEXIS setting in the Client Manager when on site with the target Avid NEXIS system. This setting is designed for remote connections, especially with Avid NEXIS | EDGE collaboration tool. The Remote Avid NEXIS setting supports proxy workflows and push/pull file copying, but is not supported for on-premises or high resolution workflows.
(None): If you mount a workspace by mapping a network drive in Windows, when you unmount the workspace and then mount a different workspace in Client Manager manually using the same drive letter, Windows Explorer displays the previous workspace name instead of the new workspace name.
(None): The estimated amount of space available (usually measured in an amount of time at a particular resolution) might differ between what Avid NEXIS calculates and what the Avid editing system calculates.
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
Avid NEXIS VFS Gateway Issues Avid NEXIS | VFS Gateway was introduced (as Avid NEXIS | Linux File Gateway) with Avid NEXIS version 2019.12.0. The utility was renamed in version 2022.9.0.
(None): The keyboard actions to select multiple items (using the Shift or Control keys) do not work.
Known Issues Mac Platforms and macOS Issues (None): Avid NEXIS does not by default support using Spotlight search on Workspaces, and does not recommend using it.
SSENG-42693: On macOS client systems with many CPU cores, Adobe Premiere Pro Premiere can intermittently hang when importing P2 media from an Avid NEXIS workspace to the local drive. When this happens, you must reboot the workstation to completely clear the problem.
Workaround: Importing fewer than 10 clips at a time may mitigate the issue.
SSENG-23026, Updated April 2024: Avid Benchmark Utility does not work automatically on Avid NEXIS clients running macOS 12.x (Monterey) and newer. On these clients, you must explicitly allow permission for an application (including Avid Benchmark Utility) to have Full Disk Access.
Requirement: On the macOS client, click System Preferences > Security & Privacy > Privacy > Full Disk Access and check the box for avidbenchmarkd. You might need to provide Administrator credentials to unlock this function (Padlock icon).
If the avidbenchmarkd object is not shown in the list, run a test with the Benchmark Utility against the client; the test will fail, but running it causes the avidbenchmarkd object to appear in the list.
(None): If Macintosh files are copied to a Windows system with the Macintosh resource fork files, the resource fork files cannot be copied to mounted workspaces from a Windows client. Avid NEXIS does not accept Macintosh resource fork files from Windows clients. Appropriate “properties” error messages are displayed if this is attempted.
(None): If the Avid NEXIS Client software is installed accidentally on an unsupported macOS version, running the uninstaller does not work.
Workaround: Use AppCleaner (a free download) to uninstall the Avid NEXIS Client software, as follows:
1. Download AppCleaner from: http://www.freemacsoft.net/appcleaner/
2. Follow the instructions for removing an application (in this case, Avid NEXIS Client).
3. Restart the Mac.
Ubuntu Issues (None): If your MediaCentral Cloud UX server is attached to your network through a 10Gb or greater connection, you might see reduced total bandwidth when using the Ubuntu client (v2023.3 or higher) versus the CentOS client (v2023.3 or higher).
Windows Issues SSENGCS-15: When using the OS Login feature of the Avid NEXIS Client on Windows 11, the connection fails due to a Group Policy change made by Microsoft.
Workaround: Enable this Group Policy for the system: Computer Configuration > Administrative Templates > Windows Components > Windows Logon Options: Enable MPR notifications.
Known Issues SSENG-38317: Uninstalling the Avid NEXIS Client on a Media Indexer server fails to remove temporary installation files from the C:\Windows\System32 folder.
Workaround: Stop the Media Indexer services before uninstalling the Avid NEXIS Client.
SSENG-29069: On Windows 10 clients, when using TeraCopy to move large numbers of files to an Avid NEXIS Workspace (instead of using Windows Explorer), TeraCopy sometimes treats a file as a directory, and the Windows client displays an error that it cannot move the file. Avid strongly recommends not using TeraCopy.
Workaround: Use Windows Explorer or the Avid Data Migration Utility.
SSENG-2571: On Windows 10 clients, automatic Windows driver updates can remove critical NIC driver settings needed for the correct functioning of the Avid Client.
Workaround: To prevent disruption of clients running Windows 10 (Professional and Enterprise), you can defer automatic driver updates as follows:
1. Right-click the “This PC” icon (formerly called “This Computer”).
2. Select Properties.
3. Select Advanced System Settings.
4. Click the Hardware tab, then click Device Installation Settings.
Known Issues
5. Select the option “No” to prevent downloading apps and icons automatically.
6. Click Save Changes.
Special Notes Special Notes This section contains important information about the Avid NEXIS environment.
Qualified and Approved Avid NEXIS Switches For a list of the current qualified and approved switches for use in the Avid NEXIS Production Network (APN), see the Avid NEXIS Network and Switch Guide on the Avid NEXIS Documentation KB page.
> **Note:** The FS SFP28 modules supplied by Avid are specifically branded for Nvidia/Mellanox devices. Use
them only in Nvidia/Mellanox based devices, for example in Avid NEXIS F-Series and PRO+ Engines where applicable. Their operation in devices other than Nvidia/Mellanox has not been tested.
Flow Control Required in Avid Production Networks Avid requires configuring Rx Flow Control (LFC) Enabled on the switch that connects to Avid NEXIS Engines and clients. The client or Engine provides feedback to the switch to honor ‘pause frames’ requests to throttle the send rate to avoid overwhelming the IP stack on the client or Engine, and to buffer at the switch during these short pauses.
Many network switches have Rx Flow Control enabled by default. Consult your switch documentation to verify your switch’s settings.
ATTO® ThunderLink™ 10 GbE and 40 GbE Adapters Avid NEXIS supports using several ATTO ThunderLink adapters for Mac and Windows (10GbE) clients. See see Avid NEXIS Network and Switch Guide on the Avid NEXIS Documentation KB page for supported Intel (and Intel-based ATTO) NICs.
Get the latest ATTO driver from their website. Install the appropriate driver for your operating system. Use all the default values and settings.
> **Note:** On macOS 13 and later, you might need to unblock ATTO from the Security & Privacy preferences in
the System Preferences menu. This also applies to third-party drivers like Sonnet and AJA.
ESXi™ VMware The Avid NEXIS Client is supported with VMware ESXi v6.0.0 (Update 1) using a VMXNET3 adapter with the Mellanox ConnectX-3 adapter and the Mellanox ESX OFED Driver version 1.9.10.2 or later.
VMware on Windows To use VMware on Windows clients, use the 10GbE drivers that come with the Windows OS. The Avid NEXIS Client software no longer changes the speed of the VMware virtual NIC to 1 GbE.
LDAP Requires ASCII User Names and Passwords The Avid implementation of LDAP (Lightweight Directory Access Protocol) requires that you restrict LDAP user names and passwords to ASCII. The LDAP/Avid NEXIS Account Synchronizer searches for groups and their users on an LDAP server and synchronizes (reconciles) user and group accounts by adding or removing users and/or groups from Avid NEXIS.
Fast User Switching Not Supported Fast User Switching is a Windows feature that allows multiple user accounts to log on to a computer simultaneously. Fast User Switching is enabled by default in Windows computers. The Fast User Switching Special Notes feature and multiple concurrent logged on user modes are not supported in the Avid NEXIS environment.
The Avid NEXIS software does not distinguish the different drive letters mapped to the same workspaces on the same computer. Conflicts appear in the following two scenarios:
When one user maps a drive letter to one workspace and another user maps the same drive letter to
- a different workspace
When one user maps a workspace to one drive letter, and another user maps a different drive letter
- for the same workspace
Special Notes