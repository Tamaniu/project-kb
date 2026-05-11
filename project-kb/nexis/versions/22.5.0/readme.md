---
product: nexis
product-area: shared-storage
version: "22.5.0"
release-date: 01/05/22
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid NEXIS® ReadMe Version 2022.5.0 Avid recommends that you read all the information in this ReadMe file thoroughly before installing software or attempting to use the Avid NEXIS system. This ReadMe provides information that is not in the other Avid NEXIS documentation. This ReadMe is cumulative. The versions covered in this document include all the functionality and bug fixes of the previous versions, which run on Avid NEXIS infrastructures.
This ReadMe provides hardware and software requirements, an overview of the major features of this release, and limitations and known issues. See the appropriate Avid NEXIS Setup Guide for information on physical connection of the system and loading the system and client software. You can access the documentation, including previous versions of the ReadMe, from the Avid NEXIS Knowledge Base.
> **Note:** For information about Avid’s security recommendations specific to Avid products, and our responses
to current world-wide security issues, see Avid Security Guidelines and Best Practices for Dealing with Virus Threats.
For compatibility with other Avid products, see the Knowledge Base page for Avid Audio and Video Compatibility Charts.
> **Note:** Avid recommends that you purchase installation services with your Avid NEXIS system.
Revision History Date Release Changes Made Contents Hardware and Software Requirements . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10 System Configuration Limits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 13 System Performance (On-Premises) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 15 Known Issues. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 18 Special Notes. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 26 Legal Notices. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 28 Accessing the Online Documentation Accessing the Online Documentation The Avid NEXIS documentation is accessible in PDF format from the Avid NEXIS Knowledge Base.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is
especially important to check each step of your workflow.
2. Check the documentation that came with your Avid application or your hardware for
maintenance or hardware-related issues.
3. Visit the online Knowledge Base at www.avid.com/US/support. Online services are available 24
hours per day, 7 days per week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient.
Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
g Avid NEXIS Enterprise customers can access online training from the following URL: How to Activate Avid NEXIS Enterprise Training For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
Recommended and Required Releases Recommended and Required Releases Avid NEXIS System and Client Releases The newest release is always recommended. The following Avid NEXIS | FS releases are either recommended or required in the cases listed below. reconcile with any patches since last release
> **Note:** Avid NEXIS system (server) can be updated before the clients to allow server-only fixes to be
deployed faster. We recommend upgrading clients as soon as possible thereafter.
Server Client Guidance 2022.5.0 2022.5.0 Recommended for all Avid NEXIS systems and clients. Required for all systems using subscriptions, and clients running macOS® 12 (Monterey) or Windows® 11.
2021.12.1 2021.12.1 Required minimum release for:
• All clients using the Remote Avid NEXIS setting • All systems, for stability and disk performance issues (fixed in v2021.12.0) • All systems with 10TB or larger HDD drives g LDAP authentication using DIGEST-MD5 is no longer recommended. Avid supports TLS version 1.2, and strongly recommends that you enable TLS on the LDAP Domain controllers in your environment.
2021.8.x 2021.8.x No longer recommended — Upgrade as soon as possible.
2021.5.1a 2021.5.0 Supported; minimum version for all systems that do not include 10TB or larger HDD drives.
--- 2021.3.x Avid NEXIS Client version recommended for MediaCentral | Production Management (Interplay) servers, including Media Indexer.
Other Avid NEXIS releases are supported but not recommended due to disk issues resolved in recent releases. Customers should plan to upgrade as soon as possible.
a. Avid NEXIS Client version 2021.5.0 is not recommended for Windows clients due to fixes in later releases.
Avid NEXIS Version Downgrades On Avid NEXIS systems, installing an older version is not supported and can result in unforeseen consequences, up to and including data loss.
USM Firmware Releases The USM firmware package is a bundle of firmware for the hardware components in an Avid NEXIS, such as the power supply units, Controllers, and the BMC. Certain USM firmware versions are supported only with certain Avid NEXIS versions; see the following table for details.
USM upgrades are currently performed remotely by Avid. Contact Avid Global Customer Services for details.
Secure Data Deletion USM Firmware Minimum Avid NEXIS Version Required BMC versionb Versiona Package USM 1.37/1.37a 0.01.003c Avid NEXIS 2019.2 through 2022.5, on Avid NEXIS Enterprise, Avid NEXIS | SDA, and Avid NEXIS | PRO 40TB with Controller 10 Can use USM 1.37 and 1.37a in the same Engine for models that support dual controllers 4.1.16d or 4.1.16g 2.0.0002 (for 4.1.16d) Avid NEXIS 2019.2 through 2022.5, on Avid NEXIS | PRO 20TB and Avid NEXIS | PRO 40TB with purple 2.00.1093c (for 4.1.16g) fascia Controller USM 1.32 0.01.0034 Avid NEXIS 7.9.1 USM 1.16 0.01.0013 Avid NEXIS 6.x a. The USM version is shown on the Controllers page and the Engines page in the Management Console, as of Avid NEXIS version 2020.3.0. See the Avid NEXIS Administration Guide for details.
b. The BMC version is shown on the Controllers page in the Avid NEXIS Management Console.
Secure Data Deletion For customers who require a guarantee that all deleted data is done so completely and securely (after deleting a Workspace), see the following URL for Secure Data Deletion tools available from Seagate, officially supported by Avid NEXIS: https://www.seagate.com/support/secure-erase-matrix/ What’s New in Avid NEXIS v2022.5.0 Avid NEXIS version 2022.5.0 is a major release that allows subscription licensing for your system, adds newer client operating systems, and includes other improvements and fixes.
Support for Avid NEXIS Subscriptions Avid NEXIS 2022.5.0 includes system licensing to manage and control subscriptions for on-premises systems. Avid is introducing innovative commercial models as an alternative to the previous Integrated Solution (perpetual) capital expenditure (CapEx) model. Avid NEXIS subscription models are available now and include:
• Purchase of new systems — annual Avid NEXIS | VFS Software Subscription combine with a one-time, hardware-only purchase • Crossgrade of current maintenance contract to subscription Annual subscriptions offer the following advantages:
• Lower up-front investment • Option to migrate to Avid NEXIS | Cloud Storage • Predictable recurring costs (operating expenditure, or OpEx) You can activate a license either online (the system is connected to a network with Internet access) or offline. To activate a license online, the system must have DNS configured.
What’s New in Avid NEXIS v2022.5.0 For details, contact your Avid supplier.
Activating a License Online The system must have DNS configured and be connected to a network that has Internet access.
1. Purchase a license from Avid for the support level you want.
You will receive email from Avid with the Activation ID and System ID. Have this information ready.
2. Upgrade the system to version 2022.5.0.
3. When the upgrade completes, log in again and click System, System Setup, and the blue
License tab, then do the following:
a. In the Activation section, select the Online Activation Method.
b. Type (or copy and paste) the Activation ID and System ID you received from Avid.
c. Click Activate.
d. In the confirmation dialog, click Continue.
The system licensing process starts. When complete, click Close and log back in to continue.
4. (Optional) Look at the License page again to confirm the license is now activated.
Activating the License Offline If your Avid NEXIS system is not on a network with outside access, you can generate and download a binary file (.bin file) and upload it to the system.
1. Purchase a license from Avid for the support level you want.
You will receive email from Avid with the Activation ID and System ID. Have this information ready.
2. Upgrade the system to version 2022.5.0.
3. When the upgrade completes, log in again and click System, System Setup, and the blue
License tab.
4. Copy or write down the Device ID.
5. On a computer with Internet access, go to the following page: https://avid.com/license
6. Do the following:
a. Type the Activation ID you received from Avid.
The Activation ID is verified, and the System ID field is displayed.
b. Type (or copy and paste) the Device ID (from the Management Console) and System ID.
c. Type your email address, then click Submit.
d. Click Download to save the license file to the computer (which you can connect to the Avid NEXIS system), a USB drive, or a network location where you can access it from within the Management Console.
7. Return to the Management Console, and do the following:
a. Select the Offline Activation Method.
b. Type (or copy and paste) the Activation ID and System ID you received from Avid.
What’s New in Avid NEXIS v2022.5.0 c. Click Choose File and navigate to the location of the license file.
d. Click Activate.
e. In the confirmation dialog, click OK.
The system licensing process starts, and can take several minutes.
When complete, click Close and log back in to continue. (Avid recommends closing the browser tab and opening a new one, to make sure the browser cache is clear.)
8. (Optional) Look at the License page again to confirm the license is now activated.
Improvements to Remote Client Connection Workflows Avid NEXIS version 2022.5.0 adds several improvements for Avid NEXIS clients connecting to a remote Avid NEXIS system:
• Clients running macOS can connect to a remote Avid NEXIS system through a VPN (such as Cisco) and run CrowdStrike Endpoint Protection, with filters enabled. (Windows client support for remote Avid NEXIS systems was introduced in Avid NEXIS v2021.8.0.) • Avid NEXIS Client support for OpenVPN to connect to a remote Avid NEXIS system.
Client Operating System Support Avid NEXIS version 2022.5.0 adds support for the following operating systems on clients:
• Windows 11; see “Supported Client Operating Systems” on page 11 for more information [] • Windows 10 build 21H2 on Avid NEXIS clients; see “Supported Client Operating Systems” on page 11 for more information • macOS 12 (Monterey) on Avid NEXIS clients; see “Supported Client Operating Systems” on page 11 for more information Server Fixes Avid NEXIS version 2022.5.0 includes the following fixes to Avid NEXIS software (on-premises systems).
• [Server and Client] Investigated all Avid NEXIS code for vulnerability to the Apache Log4j2 issue (see CVE-2021-44832). Avid has determined that Avid NEXIS software does not use the affected Java library and is therefore not affected by this issue. For information about other Avid products, see the Avid Technology Log4j Security Assessment.
• Closed a security hole in the Avid NEXIS kernel that allowed unprivileged users to gain root privileges to the system (see CVE-2022-0847).
• [SSENG-31159] The Log Aggregation tool was not correctly collecting the BMC log file.
• [SSENG-31167, 31822] On some Avid NEXIS systems, the fan speed was incorrectly reported and displayed.
• [SSENG-31509] On some Avid NEXIS | PRO systems, the hardware information did not display in the Management Console.
Supported Upgrade Paths • [SSENG-31668] On some systems with mirrored Workspaces, continuous updates to the same area of a file over an extended period of time could lead to timing problems resulting in a forced stop of a particular Media Pack.
• [SSENG-31977] On the User Groups page in the Workspace Access area, when selecting all Workspaces using the All button, a symbol was displayed instead of the number of selected Workspaces. Also corrected a spelling error.
Cloud Fixes Avid NEXIS version 2022.5.0 includes the following fix for the Avid NEXIS | Cloud Storage solution.
• [SSENG-31633] Fixed an issue that prevented the deployment of new Avid NEXIS | Cloud Storage systems.
• [SSENG-31661] Improved performance when deleting files in Avid NEXIS | Cloud Storage.
• [SSENG-31743] Improved performance for exporting Adobe Premiere sequences to a Workspace (both on-premises and Cloud).
• [SSENG-31755] On Avid NEXIS | Cloud Storage, fixed an issue in which the OAM service on the NEXIS client could crash and restart, causing slow or failed reads and writes.
Client Fixes Avid NEXIS version 2022.5.0 includes the following fixes to the Avid NEXIS software running on clients (Client Manager).
• [SSENG-29673] Avid NEXIS Clients running macOS 11.x (Big Sur) and later can now use content network filters (such as CrowdStrike Falcon Endpoint Protection Platform) that previously prevented the client from connecting to an Avid NEXIS System.
• [SSENG-31258] Fixed an issue with clients using Cisco AnyConnect and macOS 11.x (Big Sur) and later, with disruptions caused by content filters. Previously, on those clients we advised disabling the system extension and instead running the legacy kernel extension, as documented in Section 4 in the AnyConnect macOS 11 Big Sur Advisory.
• [SSENG-30847] Fixed an issue that caused a system panic on Mac computers that use the Apple® M1, M1 Pro, or M1 Max processors.
• [SSENG-31468 and SSENG-31432] In some workflows, Avid NEXIS clients running CentOS became unresponsive.
Supported Upgrade Paths You can upgrade any Avid NEXIS E-Series Engine, System Director Appliance, or Avid NEXIS | PRO according to the upgrade path described next. For instructions on how to upgrade an Engine or System Director Appliance, see the Avid NEXIS Setup and Maintenance Guide, or the Avid NEXIS Administration Guide.
Avid NEXIS Upgrade Paths The Avid NEXIS | Enterprise Engines, the System Director Appliance, and the Avid NEXIS | PRO can upgrade to the following versions.
System Director and Client Version Compatibility Can Upgrade Directly To Current Avid NEXIS Versiona On-premises systems: 6.x, 7.x, 2018.x, 2019.x, 2020.xb, 2021.3.x, 2021.5.x, 2022.5.0 2021.8.x, 2021.12.x Avid NEXIS | Cloud Storage systems: 2021.3.1 and newer 2022.5.0
> **Note:** To upgrade Avid NEXIS | Cloud Storage 2020.7.x and earlier to Avid
NEXIS | FS version 2021.x, please contact Avid Customer Service or your sales representative to assist with the upgrade.
a. ISIS 1000 systems running version 6.x or 7.x should be upgraded directly to 2019.12.1 or newer, not to an interim version.
b. Avid identified an issue when upgrading from 2020.3.0 directly to 2020.7.0. This specific upgrade path is not supported. If you have already upgraded from 2020.3.0 to 2020.7.0 and encountered a problem, contact Avid Customer Care.
System Director and Client Version Compatibility The Avid NEXIS Client software works with the following versions:
Client Version Shared-Storage System Version newera 2019.xb 2019.x and and newer 2019.x, 2020.7.xc Avid ISIS version 4.7.5 and newer (minimum v4.7.9 recommended) a. If using the Remote Avid NEXIS setting in the Client Manager, use Avid NEXIS Client version 2021.12.1 or newer, due to numerous fixes for remote connections.
b. Since Avid NEXIS v2019.2, the Shared Storage system can have a newer version than the client to allow deployment of server-only fixes. Avid recommends upgrading all clients to the same version as soon as practical.
c. Avid NEXIS v2020.7.x is the last release stream to support client connections to Avid ISIS v4.7.9 and newer.
Workflows that require connection to both ISIS and Avid NEXIS can continue to use client version 2020.7.x until further notice.
> **Note:** The Avid NEXIS Toolbox and other utilities are tested and known to work only against a System
Director of the same version. If you want to install two different versions of the Toolbox on the same system, install one of them into a directory other than the default.
Compatibility with Recent Avid Product Releases Avid NEXIS version 2022.5.0 is broadly compatible with other Avid and third-party products. (See the Avid Audio and Video Compatibility Charts Knowledge Base page for details about all Avid tools and older releases.) The following table is a quick reference for the currently supported Avid products and versions.
Avid NEXIS Version 2022.5.0 (Server/System Director) Works With:
Avid NEXIS Clients 2019.x and newer MediaCentral | Cloud UX 2019.x and newer MediaCentral | Production Management 2018.6 and newer Hardware and Software Requirements Avid NEXIS Version 2022.5.0 (Server/System Director) Works With: (Continued) MediaCentral | Stream 2020.12 - 2022.3 (with Avid NEXIS Client 2021.12 and newer) Interplay Production (Legacy) 3.5 - 3.8, 2017.2 Avid FastServe Ingest: 2022.3 Playout: 2022.2 Hardware and Software Requirements To meet the stringent needs of media applications the Avid NEXIS family of storage solutions is built using patented intellectual property in Avid NEXIS software running on Avid NEXIS hardware. Avid tests and qualifies configurations of Avid NEXIS software deployed on Avid NEXIS hardware. The Avid NEXIS System Director is designed to allow the binding of Avid NEXIS only. Avid has not published its file system specifications, protocols, or file system APIs used among the components of the file system (Avid NEXIS System Director, Avid NEXIS client, Avid NEXIS expansion engines) and these are subject to change without notice. Therefore, any connection of third party storage as part of an Avid NEXIS file system is not a licensed, approved or supported configuration.
> **Note:** Avid NEXIS | Cloud Storage does not support third-party editing clients.
The full compatibility matrix of Avid editors and hardware is available on the Avid support site at the following URL: http://avid.force.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility- Charts The following table lists the compatibility between Avid NEXIS and editors from vendors other than Avid:
Qualified Third-Party Editing Clients on On-Premises Avid NEXIS Workspaces Editor Version Autodesk Flame 2021 You must use the CentOS 7.4 kernel specified by AutoDesk based on the Flame version you intend to use for connecting to Avid NEXIS.
Apple Final Cut Pro X (see “Final Cut Pro 10.4.2 and newer X Software” on page 27) n As of Final Cut Pro X 10.4, you can store library files on Avid NEXIS instead of on local drives.
Adobe Premiere Creative Cloud Premiere Pro 2018 (v12.1.1) and newer Blackmagic Design DaVinci Resolve 14.3 and newer Grass Valley EDIUS Pro 9 and newer Hardware and Software Requirements Supported Client Operating Systems The following table lists the currently supported client operating systems with on-premises Avid NEXIS. All of the listed client operating systems support single or dual 10Gb Ethernet network interface cards.
All client computer names must be unique to connect to Avid NEXIS. A client computer name is treated as a user name, and all user names on a shared-storage system must be unique.
> **Note:** Avid NEXIS | Cloud Storage supports only Windows® and Linux® clients.
Operating System Supported Versions Notes macOS 12.x (Monterey) with latest updates See “Security Considerations and Known Issues with macOS” on page 21 and the Knowledge Base page:
11.x (Big Sur) with latest updates Avid Products and macOS Catalina Support 10.15.x (Catalina ) with latest updates CentOS 7.9, 7.8, 7.7, 7.6 General Avid NEXIS Client use 7.5, kernel 4.4.174-1.el7 and 7.5, kernel Supported only on MediaCentral | Cloud UX systems 3.10.0-862.el7.x86_64 running CentOS 7.5 See the Avid Audio and Video Compatibility Charts on the Avid Knowledge Base page for more information on compatibility.
7.4, kernel version 3.10.0-693.17 Specifically for use with AutoDesk Flame 2021; also see “Hardware and Software Requirements” on page 10.
Windows 11 10 Build 21H2 See “Known Issues with Windows 10” on page 20.
10 Build 21H1 10 Build 20H2 (October 2020) 10 Build 2004 (May 2020) 8.1 with latest updates Windows Server 2019 with latest Service Pack 2016 with latest Service Pack 2012 R2 with latest Service Pack Supported Browsers in an Avid NEXIS On-Premises Environment The following are the minimum browser versions qualified for the current Avid NEXIS release stream. These browsers were qualified with the client operating systems supported in the current release.
Hardware and Software Requirements Supported Client Browser per Operating System Operating System Supported Browsers Edgea, Windows Microsoft Mozilla Firefox, Google Chrome Chromeb macOS Apple Safari, Mozilla Firefox, Google a. Not recommended for initial installations or system upgrades.
b. On macOS v10.15 (Catalina), do not use Chrome for initial system setup or to access the Agent. Use Safari instead.
Updated Security Guidelines As system and network security attacks become increasingly more inventive and persistent, Avid is adopting a new security strategy to help you, our customer and partner, better protect your assets and intellectual property. As you might know, Avid has traditionally recommended Symantec Endpoint Protection as the preferred and qualified solution for much of the Avid product line. As of Q3, 2020, Avid is introducing a more flexible strategy that provides general guidelines for protecting your Avid systems. This new policy allows you to choose the best security solution for your organization, while still following Avid best practices. For more information, see Avid Security Guidelines and Best Practices for Dealing with Virus Threats.
ATTO® ThunderLink™ 10 GbE and 40 GbE Adapters for macOS Avid NEXIS v2018.5 and newer supports using several ATTO ThunderLink adapters for Mac clients.
See the Avid NEXIS Network and Switch Guide for details.
Get the latest ATTO driver from their website. Install the appropriate driver for your operating system. Use all the default values and settings.
> **Note:** On macOS 10.15 clients, you might need to unblock ATTO from the Security & Privacy preferences
in the System Preferences menu.
“Intel® For Windows clients using ATTO 10GbE adapters, see Adapters and Drivers” on page 13.
Myricom® Driver for macOS
> **Note:** macOS 11 (Big Sur) and later do not support Myricom drivers. Clients can still run older supported
macOS versions and use Myricom drivers with Avid NEXIS.
The Avid NEXIS kit includes the Myricom driver called myri10GE-1.3.6-MTU1500- Installer.dmg to enable 10Gb connections to clients running macOS 10.15.x.
Install the driver from the Drivers\Avid NEXIS Client\Myricom folder in the Avid NEXIS software kit.
> **Note:** If using VMWare on Windows clients, use the 10GbE drivers that come with the Windows OS, not the
Myricom driver.
> **Note:** On macOS 10.15 clients, you might need to unblock Myricom from the Security & Privacy
preferences in the System Preferences menu.
System Configuration Limits Intel® Adapters and Drivers See the Avid NEXIS Network and Switch Guide on the Avid NEXIS Documentation KB page for supported Intel (and Intel-based ATTO) NICs.
VMWare ESXi™ The Avid NEXIS v2018.5 Client and newer is supported with VMWare ESXi v6.0.0 (Update 1) using a VMXNET3 adapter with the Mellanox ConnectX-3 adapter and the Mellanox ESX OFED Driver version 1.9.10.2 or later.
VMWare on Windows To use VMWare on Windows clients, use the 10GbE drivers that come with the Windows OS, not the Myricom drivers. The Avid NEXIS Client software no longer changes the speed of the VMWare virtual NIC to 1 Gb.
Qualified and Approved Avid NEXIS Switches For a list of the current qualified and approved switches for use in the Avid NEXIS Production Network (APN), see the Avid NEXIS Network and Switch Guide on the Avid NEXIS Documentation KB page.
System Configuration Limits The following table lists the configuration limits for on-premises and Avid NEXIS | Cloud Storage systems in the current release.
> **Note:** An Avid NEXIS | Cloudspaces subscription (available in v2019.4.0 and newer) is part of an on-
premises Avid NEXIS system.
On-Premises Systems Limits Item Directora System Director Appliance Embedded system systemb) Media Packs (per 4 24 with the Avid NEXIS | FS Extended
> **Note:** license and any combination of Avid
If Avid NEXIS | Cloudspaces is NEXIS | Enterprise Engines activated, one of the Media Packs can be Cloud performance. 64 with the Avid NEXIS | FS Advanced license, Avid NEXIS v2018.3 and newer, and any combination of Avid NEXIS | Enterprise Engines
> **Note:** If Avid NEXIS | Cloudspaces is
activated, one of the Media Packs can be Cloud performance.
Media Packs (per Engine) 1: Avid NEXIS | E2, Avid NEXIS | E2 All-Mirror, Avid NEXIS | E2 SSD, Avid NEXIS | PRO 1–2: Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror 4–8: Avid NEXIS | E5, Avid NEXIS | E5 NL, Avid NEXIS | E5 All-Mirror System Configuration Limits On-Premises Systems Limits (Continued) Item Embedded system Directora System Director Appliance 32c Workspaces 1024 3072 Teamsd 19 80 Team Quotas Up to 255 Team Quotas per system (Teams have only one quota per Storage Group — which can be increased or decreased — but can have a quota in multiple Storage Groups) Team Admin Users No enforced limit Users (Clients) 5640 User Groups 1028, any combination of non-Team and Team User Groups Group Memberships per User • Non-Team users can belong to 15 non-Team user groups • Team users can belong to 15 user groups in the same Team Connected (Active) Clients 40 (Avid NEXIS | Enterprise) 165 with Avid NEXIS | FS Extended license 24 (Avid NEXIS | PRO) 330 with Avid NEXIS | FS Advanced license millione Files and Folders 8 million (Avid NEXIS | Enterprise) 28.4 3 million (Avid NEXIS | PRO) Files per folder Avid recommends no more than 10,000 files per folder, particularly for Workspaces used by Avid MediaCentral | Production Management (formerly Avid Interplay | Production).
Pathnames Total bytes = 255 (Workspace name + path + filename).
> **Note:** Unicode characters can be multi-byte.
a. System Director service runs on an Engine in the configuration.
b. Can include one Cloud Media Pack if Avid NEXIS | Cloudspaces is activated.
c. Can optionally include one Cloud Storage Group if Avid NEXIS | Cloudspaces is activated, and one High Performance Storage Group, leaving up to 30 additional Storage Groups in any combination of SSD and Scale-Out.
d. Workspaces, Users, and User Groups for Teams count against the overall system limits.
e. Actual limit depends on file name length. Limit assumes 67 ASCII characters (67 bytes). Longer average file names reduce the file count limit.
Avid NEXIS | Cloud Storage System Limits Item Limit Media Packs (per system) 1 (2PB capacity) Workspaces 3072 Teams 80
> **Note:** Workspaces, users, and groups created by a Team count against the overall
system limits.
Team Quotas Up to 255 Team Quotas per system (Teams have only one quota per Storage Group — which can be increased or decreased — but can have a quota in multiple Storage Groups) System Performance (On-Premises) Avid NEXIS | Cloud Storage System Limits (Continued) Item Limit Team Admin Users No enforced limit Users (Clients) 5640 User Groups 1028, any combination of non-Team and Team User Groups Group Memberships per User • Non-Team users can belong to 15 non-Team user groups • Team users can belong to 15 user groups in the same Team Connected (Active) Clients 330 milliona Files and Folders 28.4 Files per folder Avid recommends no more than 10,000 files per folder, particularly for Workspaces used by Avid MediaCentral | Production Management (formerly Avid Interplay | Production).
Pathnames Total bytes = 255 (Workspace name + path + filename).
> **Note:** Unicode characters can be multi-byte.
a. Actual limit depends on file name length. Limit assumes 67 ASCII characters (67 bytes). Longer average file names reduce the file count limit.
System Performance (On-Premises) The nominal bandwidth rating for all-read workflows depends on the Engine type and Media Pack Bind Setting, as follows:
Bind Option Bandwidth Rating (Nominal) Supported On Scale Out 400MB/sec Avid NEXIS | PRO Avid NEXIS | E2, Avid NEXIS | E2 All-Mirror Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror Avid NEXIS | E5, Avid NEXIS | E5 All-Mirror Avid NEXIS | E5 NL High Performance 600MB/sec Avid NEXIS | PRO Avid NEXIS | E2 Avid NEXIS | E4 SSD 3000MB/sec Avid NEXIS | E2 SSD only The actual write bandwidth depends on protection type. Aggregate bandwidth is therefore a function of protection type and the proportion of reads to writes in the workflow.
The following tables provide details on aggregate bandwidth for Avid NEXIS E-series Engines (including Avid NEXIS | PRO) by protection type and R/W proportion per Media Pack. To calculate total system performance, multiply these figures by the number of Media Packs in the Storage Group. A typical workflow is 80% reads and 20% writes.
System Performance (On-Premises) Scale-Out performance is supported on all models except Avid NEXIS | E2 SSD, and is the best choice for media mirroring (not supported with Avid NEXIS | PRO).
Aggregate Throughput per Scale-Out Performance Media Pack (MB/Sec) Workspace Protection Read % Write % No One Disk Two Disk One Disk + Two Disk + Protection Mirroring Mirroring 100 0 400 400 400 400 400 90 10 400 396 392 378 376 80 20 400 391 384 356 352 70 30 400 387 376 334 328 60 40 400 382 368 311 304 50 50 400 378 360 289 280 Usable Storage 100% 89% 80% 44% 40% High performance is supported on Avid NEXIS | E2, Avid NEXIS | E4, and Avid NEXIS | PRO, and does not support media mirroring.
Aggregate Throughput per High Performance Media Pack (MB/Sec) Note: Media Mirroring is not supported in High Performance Storage Groups.
Workspace Protection Read % Write % No Protection One Disk Two Disk 100 0 600 600 600 90 10 600 593 588 80 20 600 587 576 70 30 600 580 564 60 40 600 573 552 50 50 600 567 540 Usable Storage 100% 89% 80%
> **Note:** Linux 10GbE clients can experience lower throughput than Windows and macOS clients against both
Avid NEXIS | PRO and Avid NEXIS | Enterprise Engines.
SSD performance is available only on Avid NEXIS | E2 SSD.
System Performance (On-Premises) Aggregate Throughput per SSD Performance Media Pack (MB/Sec)a Workspace Protection Read % Write % No One Disk Two Disk One Disk + Two Disk + Protection Mirroring Mirroring 100 0 3000 3000 3000 3000 3000 90 10 2900 2900 2860 2790 2780 80 20 2800 2760 2720 2580 2560 70 30 2700 2640 2580 2370 2340 60 40 2600 2520 2440 2160 2120 50 50 2500 2400 2300 1950 1900 Usable Storage 100% 89% 80% 44% 40% a. One-Disk and Two-Disk with Mirroring performance is based on 19.2TB Media Packs with Avid Part Number 7020-71306-01 and higher, or 38.4TB Media Packs. 960GB Media Packs might have lower performance numbers in mirror configurations.
Drive Rebuilds and System Performance When a drive in a Media Pack fails, the data from that drive is rebuilt from the other drives in that Media Pack, and involves only those drives. During a rebuild, the Media Pack’s performance rating drops by the rating of one drive (10%). With no I/O on the system, the fastest a drive can be rebuilt is also equal to the rating of one drive.
On a Media Pack that is under full load (at complete bandwidth capacity), the minimum repair rate is 512KB/s. As the drive is rebuilt it begins contributing to the overall Media Pack performance rate for both reads and writes, so during the rebuild, the rate gradually decreases.
Performance Type Rebuild Rate Estimated Rebuild Time (Media Pack at 100% capacity) Scale-Out (Avid NEXIS 40MB/sec (0.14TB/hour) or ~7 hr/TB 16TB Drive = 112 hours E-series and Avid NEXIS | 10TB Drive = 72 hours PRO) 4TB Drive = 28 hours 2TB Drive = 14 hours High 60MB/sec (0.22TB/hr) or ~5 hr/TB 14TB Drive = 70 hours 10TB Drive = 50 hours 2TB Drive = 10 hours SSD (Avid NEXIS | E2 300MB/sec (1.08TB/hr), or ~3.125 hr/TB 3.84TB Drive = 12 hours SSD) 1.92TB Drive = 6 hours 960GB (.96TB) Drive = 3 hours The rebuild time increases with client load, and decreases as less data remains to be rebuilt.
Known Issues Workspaces with One-Disk Protection are rebuilt before Workspaces with Two-Disk Protection, due to their higher vulnerability to a second drive failure.
Media Mirroring and System Performance For mirrored Workspaces, Avid NEXIS clients can continue working through an Engine failure without interruption or needing to reconnect. To ensure all clients can work seamlessly through an Engine failure, provision the shared-storage system with enough bandwidth to account for an Engine being offline.
Known Issues The following are known issues with Avid NEXIS software or third-party vendors.
Known Issues with Avid NEXIS On-Premises Systems a [SSENG-32024] Cannot deactivate a license using the offline method. Although you can activate a license on an Avid NEXIS system that is isolated from any external network (offline), you cannot deactivate it while the system is offline.
a On older HP workstations, the Velocity implementation uses a filter driver called LiveQoS® that causes Media Composer errors such as:
• Delayed write failures • “InitBinIndexDone: GetResult() failed” • “Project setting is not saved due to an error. Exception: FILE_OTHER,filename...” Workaround: On HP workstations with HP Velocity, disable the LiveQoS filter driver on the NICs used for Avid NEXIS connections. There are no known issues with Avid NEXIS when enabling HP® Velocity inside Remote Boost for workstations.
a When looking at switch statistics for the Dell N2024, Dell N3024, and NETGEAR XS712T, you might see the OutDiscard counter (on Dell switches) or the Transmit Packets Discarded counter (on the NETGEAR switch) incrementing. This is acceptable as long as the rate of discards is no more than 1% of the total packets transmitted, or as long as workflows are not experiencing any dropped frames.
Known Issues with Avid NEXIS | Cloudspaces Avid NEXIS | Cloudspaces was introduced in Avid NEXIS version 2019.4.
a If an Avid NEXIS system with Cloudspaces activated does not have NTP time synchronization enabled and its local time in UTC is behind (earlier than) the Azure time by 15 or more minutes, no communication to Azure can be made and all requests fail with the following authentication error:
“Server failed to authenticate the request. Make sure the value of Authorization header is formed correctly including the signature.” Workaround: Configure NTP Server time synchronization on the Avid NEXIS system or manually adjust the local system time to less than 15 minutes different from the Azure time.
Known Issues Known Issues with Avid NEXIS | Cloud Storage a You might run into issues running clients with multiple NICs, each of which is able to connect to an Avid NEXIS | Cloud Storage system.
Workaround: In clients that are specifically connecting to Avid NEXIS | Cloud Storage, enable only one NIC.
Known Issues with Avid NEXIS Client When a workaround exists, it appears in the paragraph directly following the issue description.
a If one workspace in Client Manager is mounted by Mapping a Network drive in Windows, when you unmount the workspace and then mount a different workspace in Client Manager manually using the same drive letter, Windows Explorer displays the previous workspace name instead of the new workspace name.
a The estimated amount of space available (usually measured in an amount of time at a particular resolution) might differ between what Avid NEXIS calculates and what the Avid editing system calculates. Avid NEXIS accurately reports the amount of space available for file storage. The Avid editing application accounts for overhead in formatting of the media and is more conservative in reporting how much space is available.
a The Macintosh Finder might display the Avid NEXIS folder contents incorrectly, such as the contents of folders containing items whose name includes a pound sign (#) followed by numeric characters. For example, “project # 12” might be erroneously displayed with some items duplicated and some items missing.
Workaround: Avid recommends avoiding the use of names that include a pound sign (#) followed by numeric characters.
a The Avid NEXIS Log Utility may occasionally fail to generate logs with the error message “Couldn’t find OAM logs”.
Workaround: Close the error message and generate the logs again.
a If the Client Manager is connected to an Avid NEXIS system with dual controllers and the System Director service has switched over to the second controller, the Management Console launch button in the Client Manager does not redirect to the new System Director and cannot successfully open the Management Console.
Workaround: To launch the Management Console for an Avid NEXIS system, either open a browser and enter its IP address, or add the IP address of the redundant controller to the Remote Hosts list in the Client Manager.
a During Media Pack rebuilds the Engine performance might not reach the full Engine rating.
a On a client with multiple NICs, all network paths from the client to a particular Avid NEXIS must be via NICs with the same speed.
a If the Avid NEXIS Client software is installed accidentally on OS X 8.5 (or any other unsupported OS X version), running the uninstaller does not work.
Known Issues Workaround: Use AppCleaner (a free download) to uninstall the Avid NEXIS Client software.
1. Download AppCleaner from: http://www.freemacsoft.net/appcleaner/
2. Follow the instructions for removing an application (in this case, Avid NEXIS Client).
3. Restart the Mac.
Known Issues with Avid NEXIS | Linux File Gateway Avid NEXIS | Linux File Gateway was introduced with Avid NEXIS version 2019.12.0.
a The keyboard actions to select multiple items (using the Shift or Control keys) do not work.
Known Issues with Windows 10 a On Windows 10 clients, when using TeraCopy to move large numbers of files to an Avid NEXIS Workspace (instead of using Windows Explorer), TeraCopy sometimes treats a file as a directory, and the Windows client displays an error that it cannot move the file. Avid strongly recommends not using TeraCopy.
Workaround: Use Windows Explorer or the Avid Data Migration Utility.
a On Windows 10 build 20H2 clients, Windows Defender might prevent Avid Pro Tools from starting a session on an Avid NEXIS Workspace.
Workaround: In Windows Defender, add Pro Tools as an exclusion from the antivirus scans.
a On Windows 10 clients, automatic Windows driver updates can remove critical NIC driver settings needed for the correct functioning of the Avid Client.
To prevent disruption of clients running Windows 10 (Professional and Enterprise), you can defer automatic driver updates as follows:
1. Right-click the “This PC” icon (formerly called “This Computer”).
2. Select Properties.
3. Select Advanced System Settings.
4. Click the Hardware tab, then click Device Installation Settings.
Known Issues
5. Select the option “No” to prevent downloading apps and icons automatically.
6. Click Save Changes.
Known Issues with Mac Platforms a On Mac Pro 5,1 using a 2 x 1GbE connection to the Avid NEXIS system, you might not receive expected data rates.
Security Considerations and Known Issues with macOS a macOS 10.13 and newer has enhanced security. By default, third-party kernel extensions that were not previously installed are denied. If you are installing the Avid NEXIS client on a macOS system, during the installation process, watch for the System Extension Blocked alert, and click OK to allow the Avid NEXIS client installer to complete. See the Apple Technical Note TN2459.
To see if anything was denied during installation and allow it, do the following:
1. As Administrator, open System Preferences.
2. Click Security and Privacy.
3. Click the General tab.
Known Issues
4. Click the lock button to make changes.
5. See if any applications or drivers are listed in the dialog box as having been denied. If so, click
Allow apps downloaded from the App Store and identified developers.
6. Close the System Preferences window.
a For macOS 11 (Big Sur) and macOS 12 (Monterey) running on an Apple M1 Silicon system, you must perform a few steps before installing Avid NEXIS Client software (whether installing for the first time, or after uninstalling a previous version and rebooting), as follows:
1. Reboot the macOS Apple M1 Silicon client system into Recovery mode.
2. Set the security level to Reduced security.
3. Allow loading of third-party kexts (kernel extensions).
4. Reboot back to normal operation.
5. Download the macOS Avid NEXIS Client software kit, and open it, then do the following:
a. On the Welcome screen, click Continue.
b. On the Software License Agreement screen, click Continue.
Known Issues c. In the License dialog box, read the license agreement, then click Agree.
d. Enter your user name and password, then click Install Software.
e. In the popup window, click Open Security Preferences.
Known Issues f. Click the lock icon to allow changes.
g. In the “Allow apps” dialog box, click Allow.
h. In the Avid NEXIS Client Installation window, click Close.
Known Issues i. In the “Restart” dialog box, click Restart.
6. Wait for the system to load the kext and rebuild the auxiliary kext collection.
After the system reboots, you might again see the System Extension Updated dialog box. If so, repeat the following steps:
1. Open the Security & Privacy System Preferences (see step 5e in the previous procedure).
2. Authenticate to make changes (steps 5f and 5g).
3. Allow the system to load your kext (step 5h).
4. Wait for the system to load the kext and rebuild the auxiliary kext collection.
5. Restart the system to load the new auxiliary kext collection (step 5i).
a Avid Benchmark Utility does not work automatically on Avid NEXIS clients running macOS 10.15 (Catalina) and newer. On clients running macOS 10.15 and newer, you must explicitly allow permission for an application (including Avid Benchmark Utility) to have Full Disk Access.
On the macOS client, click System Preferences > Security & Privacy > Privacy > Full Disk Access and check the box for avidbenchmarkd. You might need to provide Administrator credentials to unlock this function (Padlock icon). If the avidbenchmarkd object is not shown in the list, run a test with the Benchmark Utility against the client; the test will fail, but running it causes the avidbenchmarkd object to appear in the list.
Special Notes a Starting with macOS 10.15.4, when you install a new Avid NEXIS Client kit on a system running this OS version, a Legacy System Extension warning is displayed when the Avid NEXIS Client kit loads and again periodically advising you to “contact the developer for support” for future releases of the client kit. Avid is working to keep our system extensions current with advancing requirements from Apple.
a (The following issue has been observed and is under investigation by Avid and Apple) USB-C to 1Gb RJ45 Ethernet adapters cannot be used to connect using the Avid NEXIS Client because macOS 10.15 (Catalina) and newer reports the interface speed as zero Mbps.
Workaround: Use Thunderbolt 3-to-Thunderbolt 2 and Thunderbolt 2-to-1Gb Ethernet adapters.
Thunderbolt 3 to 10Gbps and 40Gbps adapters are supported with macOS 10.15 and newer with the Avid NEXIS Client.
Known Issues with CentOS a Avid recommends not using the Development and Creative Workstation option when deploying CentOS 7.8 on an Avid NEXIS Client system as it can create a dependency conflict for packages required to install Avid NEXIS Client software. For existing CentOS clients, when upgrading the Avid NEXIS Client, if the installation fails with specific FUSE library conflicts, remove the existing FUSE libraries and retry the Avid NEXIS Client installation. Using the Development and Creative Workstation option can also create conflicts in port usage for Avid Benchmark Agent. If the ports are already in use, reboot the client to free up the ports.
a CentOS clients using the GUI can experience a delay in seeing all files when browsing contents of Cloudspaces with more than a few thousand files. Browsing Cloudspaces files using the terminal avoids the delay.
Special Notes This section contains important information about the Avid NEXIS environment.
User Permissions A user account with Administrator privileges is required to install the Avid NEXIS client software on your workstations.
LDAP Requires ASCII User Names and Passwords The Avid implementation of LDAP (Lightweight Directory Access Protocol) requires that you restrict LDAP user names and passwords to ASCII. The LDAP/Avid NEXIS Account Synchronizer searches for groups and their users on an LDAP server and synchronizes (reconciles) user and group accounts by adding or removing users and/or groups from Avid NEXIS.
Fast User Switching Not Supported Fast User Switching is a Windows feature that allows multiple user accounts to log on to a computer simultaneously. Fast User Switching is enabled by default in Windows computers. The Fast User Switching feature and multiple concurrent logged on user modes are not supported in the Avid Special Notes NEXIS environment. The Avid NEXIS software does not distinguish the different drive letters mapped to the same workspaces on the same computer. Conflicts appear in the following two scenarios:
• When one user maps a drive letter to one workspace and another user maps the same drive letter to a different workspace • When one user maps a workspace to one drive letter, and another user maps a different drive letter for the same workspace.
Macintosh Resource Files and Windows Clients If Macintosh files are copied to a Windows system with the Macintosh resource fork files, the resource fork files cannot be copied to mounted workspaces from a Windows client. Avid NEXIS does not accept Macintosh resource fork files from Windows clients. Appropriate “properties” error messages are displayed if this is attempted.
Adobe Premiere Pro Avid has tested Adobe Premiere Pro as a client in Avid NEXIS environments.
Adobe Premiere clients follow the same guidelines for Client Manager Preference settings as Avid editors. The default Client Type setting is set to Medium Resolution (limited to resolutions that draw 16 MB/s or less). Use the High Resolution setting when working with High Definition media (resolutions that draw more than 16 MB/s). There are some HD resolutions that draw less than 16 MB/s for a single stream, but you should still use the High Resolution setting (for example, XDCAMHD 50). For more information, see the Knowledge Base at www.avid.com/support.
Final Cut Pro X Software Avid has tested Final Cut Pro X as a client in the Avid NEXIS environments. There is no Avid restriction on the QuickTime version. Use the QuickTime version recommended in the Final Cut Pro application. Avid NEXIS supports Final Cut Pro X Macintosh clients in Switched Media Network and 3) environments.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This product may be protected by one or more U.S. and non-U.S patents. Details are available at www.avid.com/patents.
This guide is protected by copyright. This guide is for your personal use and may not be reproduced or distributed, in whole or in part, without permission of Avid. Reasonable care has been taken in preparing this guide; however, it may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc. disclaims liability for all losses incurred through the use of this document. Product specifications are subject to change without notice.
This product includes software developed by the OpenSSL Project for use in the OpenSSL Toolkit (http://www.openssl.org/).
Part of the software embedded in this product is gSOAP software.
Portions created by gSOAP are Copyright (C) 2001-2004 Robert A. van Engelen, Genivia inc. All Rights Reserved.
THE SOFTWARE IN THIS PRODUCT WAS IN PART PROVIDED BY GENIVIA INC AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
The following disclaimer is required by Apple Computer, Inc.:
APPLE COMPUTER, INC. MAKES NO WARRANTIES WHATSOEVER, EITHER EXPRESS OR IMPLIED, REGARDING THIS PRODUCT, INCLUDING WARRANTIES WITH RESPECT TO ITS MERCHANTABILITY OR ITS FITNESS FOR ANY PARTICULAR PURPOSE. THE EXCLUSION OF IMPLIED WARRANTIES IS NOT PERMITTED BY SOME STATES. THE ABOVE EXCLUSION MAY NOT APPLY TO YOU.
THIS WARRANTY PROVIDES YOU WITH SPECIFIC LEGAL RIGHTS. THERE MAY BE OTHER RIGHTS THAT YOU MAY HAVE WHICH VARY FROM STATE TO STATE.
The following disclaimer is required by Sam Leffler and Silicon Graphics, Inc. for the use of their TIFF library:
Copyright © 1988–1997 Sam Leffler Copyright © 1991–1997 Silicon Graphics, Inc.
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
THIS SOFTWARE IS BEING PROVIDED "AS IS", WITHOUT ANY EXPRESS OR IMPLIED WARRANTY. IN PARTICULAR, NEITHER THE AUTHOR NOR AT&T MAKES ANY REPRESENTATION OR WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF THIS SOFTWARE OR ITS FITNESS FOR ANY PARTICULAR PURPOSE.
This product includes software developed by the University of California, Berkeley and its contributors.
The following disclaimer is required by Paradigm Matrix:
Portions of this software licensed from Paradigm Matrix.
The following disclaimer is required by Ray Sauers Associates, Inc.:
“Install-It” is licensed from Ray Sauers Associates, Inc. End-User is prohibited from taking any action to derive a source code equivalent of “Install-It,” including by reverse assembly or reverse compilation, Ray Sauers Associates, Inc. shall in no event be liable for any damages resulting from reseller’s failure to perform reseller’s obligation; or any damages arising from use or operation of reseller’s products or the software; or any other damages, including but not limited to, incidental, direct, indirect, special or consequential Damages including lost profits, or damages resulting from loss of use or inability to use reseller’s products or the software for any reason including copyright or patent infringement, or lost data, even if Ray Sauers Associates has been advised, knew or should have known of the possibility of such damages.
The following disclaimer is required by Videomedia, Inc.:
“Videomedia, Inc. makes no warranties whatsoever, either express or implied, regarding this product, including warranties with respect to its merchantability or its fitness for any particular purpose.” “This software contains V-LAN ver. 3.0 Command Protocols which communicate with V-LAN ver. 3.0 products developed by Videomedia, Inc. and V- LAN ver. 3.0 compatible products developed by third parties under license from Videomedia, Inc. Use of this software will allow “frame accurate” editing control of applicable videotape recorder decks, videodisc recorders/players and the like.” The following disclaimer is required by Altura Software, Inc. for the use of its Mac2Win software and Sample Source Code:
©1993–1998 Altura Software, Inc.
The following disclaimer is required by Ultimatte Corporation:
Certain real-time compositing capabilities are provided under a license of such technology from Ultimatte Corporation and are subject to copyright protection.
The following disclaimer is required by 3Prong.com Inc.:
Certain waveform and vector monitoring capabilities are provided under a license from 3Prong.com Inc.
The following disclaimer is required by Interplay Entertainment Corp.:
The “Interplay” name is used with the permission of Interplay Entertainment Corp., which bears no responsibility for Avid products.
This product includes portions of the Alloy Look & Feel software from Incors GmbH.
This product includes software developed by the Apache Software Foundation (http://www.apache.org/).
© DevelopMentor This product may include the JCifs library, for which the following notice applies:
JCifs © Copyright 2004, The JCIFS Project,is licensed under LGPL (http://jcifs.samba.org/). See the LGPL.txt file in the Third Party Software directory on the installation CD.
Avid Interplay contains components licensed from LavanTech. These components may only be used as part of and in connection with Avid Interplay.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid NEXIS ReadMe Version 2022.5.0 • May 2022