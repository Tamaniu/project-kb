---
product: nexis
product-area: shared-storage
version: "2022.12.0"
release-date: 01/12/2022
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

® Avid NEXIS ReadMe Version 2022.12.0 Avid recommends that you read all the information in this ReadMe file thoroughly before installing software or attempting to use the Avid NEXIS system. This ReadMe provides information that is not in the other Avid NEXIS documentation. This ReadMe is cumulative for the 2022.x release stream.
This ReadMe provides hardware and software requirements, an overview of the major features of this release, and limitations and known issues. See the appropriate Avid NEXIS Setup Guide for information on physical connection of the system and loading the system and client software. You can access the documentation, including previous versions of the ReadMe, from the Avid NEXIS Knowledge Base.
> **Note:** For information about Avid’s security recommendations specific to Avid products, and our responses to
current world-wide security issues, see Avid Security Guidelines and Best Practices for Dealing with Virus Threats.
For compatibility with other Avid products, see the Knowledge Base page for Avid Audio and Video Compatibility Charts.
> **Note:** Avid recommends that you purchase installation services with your Avid NEXIS system.
Revision History Date Release Changes 01/25/2023 2022.12.0 Added SSENG-33909 to fixes in v2022.12.0; revised the table in "Compatibility with Other Avid Products" on page 11 01/18/2023 2022.12.0 See "What’s New in Avid NEXIS v2022.12.0" 10/19/2022 2022.9.0 See "What’s New in Avid NEXIS v.2022.9.0" on 07/19/2022 2022.5.0 Updated the Aggregate Throughput tables in "System Performance (On-Premises) " on page 14 07/12/2022 2022.5.0 See "What’s New in Avid NEXIS v2022.5.0 – Accessing the Online Documentation The Avid NEXIS documentation is accessible in PDF format from the Avid NEXIS Knowledge Base.
If You Need Help If you are having trouble using your Avid product:
- 1 - Avid Training Services
1. Retry the action, carefully following the instructions given for that task in this guide. It is
especially important to check each step of your workflow
2. Check the documentation that came with your Avid application or your hardware for
maintenance or hardware-related issues.
3. Visit the online Knowledge Base at www.avid.com/US/support. Online services are available 24
hours per day, 7 days per week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
Avid NEXIS Enterprise customers can access online training from the following URL: How to Activate Avid NEXIS Enterprise Training For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/US/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
Recommended and Required Releases Avid NEXIS System and Client Releases The newest release is always recommended. The following Avid NEXIS | FS releases are either recommended or required in the cases listed below.
> **Note:** Avid NEXIS system (server) can be updated before the clients to allow server-only fixes to be deployed
faster. We recommend upgrading clients as soon as possible thereafter.
Product Version Guidance Server and Clients 2022.12.0 Recommended for all Avid NEXIS systems and clients.
Required for all Avid NEXIS | EDGE workflows.
Support for Windows Server 2022 on clients Final USM upgrade for Enterprise, SDA, and PRO systems Server and Clients 2022.9.0 Recommended for all Avid NEXIS systems and clients.
- Licensing improvements and updates
- Renamed Avid NEXIS | VFS Gateway, and added
support for CentOS 7.9; fixed a Samba vulnerability Increased user group membership limit
- Addresses security issues
- Server and Clients 2022.5.0 Update July 2022: Required for all systems that include
an Avid NEXIS F-Series engine or Avid NEXIS | PRO+; see "What’s New in Avid NEXIS v2022.5.0 – Revised Dec - 2 - Recommended and Required Releases Product Version Guidance Recommended minimum for all Avid NEXIS systems and clients. Required for all systems using subscriptions, and clients running macOS® 12 (Monterey) or Windows® 11.
Server and Clients 2021.12.1 Supported for clients using the Remote Avid NEXIS setting; all Avid NEXIS systems, for stability and disk performance issues.
Required minimum for all systems with 10TB or larger HDD drives
> **Note:** LDAP authentication using DIGEST-MD5 is no longer
recommended. Avid supports TLS version 1.2, and strongly recommends that you enable TLS on the LDAP Domain controllers in your environment.
Server and Clients 2021.8.x No longer recommended — Upgrade as soon as possible.
Clients 2021.3.x Avid NEXIS Client version recommended for MediaCentral | Production Management (Interplay) servers, including Media Indexer.
Other Avid NEXIS releases are supported but not recommended due to disk issues resolved in recent releases. Customers should plan to upgrade as soon as possible.
Avid NEXIS Version Downgrades Installing an older software version on Avid NEXIS systems is not supported and can result in unforeseen consequences, up to and including data loss.
USM Versions The Unified System Management (USM) firmware package is a bundle of firmware for the hardware components in an Avid NEXIS, such as the power supply units, Controllers, and the Baseboard Management Controller (BMC).
- The USM version is shown on the Controllers page and the Engines page in the Management
Console, as of Avid NEXIS version 2020.3.0.
The BMC version is shown on the Controllers page in the Avid NEXIS Management Console.
- USM upgrades are currently performed remotely by Avid. Contact Avid Global Customer Services for
details.
Some USM firmware versions are supported only with certain Avid NEXIS versions and models; see the following table for details.
USM Version BMC version Minimum Avid Supported Models NEXIS Version 1.37B 0.01.0041 2022.12.0 Avid NEXIS E-series, including Avid NEXIS | PRO 40TB with Controller 10 Avid NEXIS | SDA Redundant Controllers in the same chassis must both run USM 1.37B.
- 3 - What’s New in Avid NEXIS v2022.12.0 USM Version BMC version Minimum Avid Supported Models NEXIS Version BON 45 2022.5.0 Avid NEXIS F-Series, Avid NEXIS | SDA+, and Avid NEXIS | PRO+ 1.37a 0.01.003c 2019.2.0 Avid NEXIS E-series, including Avid NEXIS | PRO 40TB with Controller 10 Can use USM 1.37 and 1.37a in the same Engine for models that support dual controllers 1.37 0.01.003c 2019.2.0 4.1.16g 2.00.1093c 2019.2.0 Avid NEXIS | PRO 20TB and Avid NEXIS | PRO 40TB with purple fascia Controller 4.1.16d 2.0.0002 1.32 0.01.0034 7.9.1 Legacy Avid NEXIS E-series 1.16 0.01.0013 6.x Legacy Avid NEXIS E-series What’s New in Avid NEXIS v2022.12.0 Avid NEXIS version 2022.12.0 is a major release that includes the following:
- Support for Windows Server 2022 on 1GbE, 2x1GbE, 10GbE, 2x10GbE, and 40GbE Avid NEXIS
clients.
- Removed support for Unprotected Workspaces in any Storage Group (applies only to Media Pack
Protection).
After you upgrade to this release, existing Unprotected Workspaces remain the same, and you can continue to change the name, size, Storage Group, and other attributes of any existing Unprotected Workspaces. However, you can only create new Workspaces with One Disk or Two Disk Media Pack protection. If you duplicate an Unprotected Workspace, you can choose either One Disk or Two Disk protection for the new Workspace.
If you use DMU to migrate an Unprotected Workspace to an Avid NEXIS system running version 2022.12.0 or higher, the default Media Pack Protection for the destination Storage Group will be applied to the incoming Workspace.
- Final USM version (1.37B) for E-Series Engines, System Director Appliance, and Avid NEXIS | PRO
models. See "USM Versions" on the previous page for more information.
- Guidelines for the performance expectations for Avid NEXIS | EDGE users, available here: Avid
NEXIS EDGE Documentation. Troubleshooting information for customers and support personnel is available here: Avid NEXIS | EDGE Proxy workflow troubleshooting & FAQ.
> **Note:** When using the Remote Avid NEXIS setting in the Client Manager, you can include both local (on-
premises) and remote (long-distance, or high latency) Avid NEXIS systems in the remote hosts list.
For all other client type settings, remove any long distance or high latency Avid NEXIS systems from the remote hosts list, to avoid performance issues including long project open times or significant delays when opening media creation settings.
- 4 - What’s New in Avid NEXIS v.2022.9.0 New Connection Test button in the Avid NEXIS Client Manager to help you quantify your Avid
- NEXIS | EDGE workflow experience. The Avid NEXIS Client Setup and User Guide describes this
feature.
> **Note:** On Windows clients, you must run the Client Manager as an administrator to perform the
Connection Test.
New General Preferences option in the Avid NEXIS Client Manager to display the IP address of a
- connected Avid NEXIS system. The Avid NEXIS Client Setup and User Guide describes this option.
- Replacement of Russian with Ukrainian as a language option in the Avid NEXIS Client Manager.
Server Fixes in This Release
- SSENG-29749 Updated the date and time formatting in Management Console to be more
universal. The current time and time zone is now shown after the full date (on the System Setup page, Date/Time tab, Current Time field).
SSENG-32605 While upgrading the USM firmware bundle on an Avid NEXIS | PRO 20TB, the
- system could not retrieve its BMC boot version and could not complete the update.
SSENG-32641 After a Controller was replaced, the system lost contact with some Media Packs.
- SSENG-33786 An Avid NEXIS | F2 Engine was displaying 24 disk slots but no F2X Expansion Engine
- was present.
- [Added Jan 25, 2023] SSENG-33909 An internal timing issue in a workflow with mirrored writes
caused Media Packs to restart unexpectedly.
- SSENG-34068 Improved TCP connection behavior that in certain cases caused Network Degraded
errors or Delayed Write Failures during Workspace redistribution.
Client Fixes in This Release SSENG-33643 In an Avid NEXIS | Cloud Storage deployment, clients were experiencing delayed
- write failures (DWF) due to a mismatch between the system time on the Avid NEXIS | Cloud
Storage system and the Azure Blob Store time.
- Substantially improved stability for Apple Silicon systems.
Cloud Fixes in This Release Updated the Avid NEXIS to Microsoft Azure Storage Connector to avoid long command times (slow reads and delayed write failures).
What’s New in Avid NEXIS v.2022.9.0 Avid NEXIS version 2022.9.0 is a major release that introduces the following:
• New branding for Avid NEXIS | VFS Gateway; support for CentOS 7.9 on VFS Gateway VMs; fixed a security vulnerability • Updates to Avid NEXIS | FLEX Subscription licensing • Increased group membership for users, which can allow the use of Active Directory groups to manage Workspace permissions, by creating a read-only and read-write group for each Workspace.
• Bug fixes and improvements - 5 - What’s New in Avid NEXIS v.2022.9.0 Product Renaming This release renames Avid NEXIS | VFS Gateway (formerly Avid NEXIS | Linux File Gateway) and supports CentOS v7.9 on the virtual machine for the deployment.
In addition, Avid fixed a vulnerability in the Avid NEXIS | VFS Gateway for CVE-2021-44142.
Updates to Avid NEXIS | FLEX Subscription Licensing This release simplifies the process of renewing or updating an existing license on a system. After updating to this version, you can update an existing license which automatically deactivates the current one and activates a new one.
The updated license can support the same Media Pack capacity and mirroring features that you already have but extend the term of subscription. Alternatively, the updated license can add more capacity or features, or extend the term of your subscription, or both.
The Avid NEXIS Administration Guide describes how to update a license. If your license expires before you can update it, contact Avid or your reseller for more information.
Increased User Groups This release raises the limit on the number of groups a user (Team user or non-Team user) can belong to from 15 to 71. See "System Configuration Limits" on page 11.
Server Fixes Avid NEXIS version 2022.9.0 includes the following fixes to the Avid NEXIS server software:
• Several security fixes. Contact Avid or your reseller for more information.
• [SSENG-31632] After upgrading a system from version 2021.12.0 to 2021.12.1, the Engines page incorrectly reported that the Controllers had different memory sizes.
• [SSENG-31994] Enabled the Notifications service on Avid NEXIS | Cloud Storage.
• [SSENG-32169] The Avid NEXIS system stopped responding while creating Workspaces.
• [SSENG-32390] An incorrect “LACP degraded” error was displayed in the Management Console for Avid NEXIS | F5 Controllers with LACP enabled.
• [SSENG-32655] Could not change a Workspace (size, name) if the user attempting to change it belonged to a user group that had an ampersand character (&) in the group name (for example, Editors&Producers). The ampersand is a valid character in group names.
• [SSENG-32833] After an administrator deleted a Team, the Team name remained on the Teams page and the Storage Groups page did not recalculate and display the updated Team Reserved value.
• [SSENG-32839] Added the ability to shut down the Controller in Avid NEXIS | F2 and Avid NEXIS | PRO+.
• [SSENG-33122] In version 2022.5.0, the Management Interface port was not working correctly.
• [SSENG-33171] The Avid NEXIS system stopped responding when an existing file was extended in a Workspace tied to specific ingest workflow operations.
• [SSENG-33277] In version 2022.5.0, changes to the size of mirrored Workspaces were not calculated correctly, resulting in an incorrect “out of space” error.
- 6 - What’s New in Avid NEXIS v2022.5.0 – Revised Dec 2022 Client Fixes Avid NEXIS version 2022.9.0 includes the following fixes to the Avid NEXIS Client software:
• [SSENG-23512, 32421] USB-C to 1Gb RJ45 Ethernet adapters did not work in an Avid NEXIS Client running macOS 10.15 (Catalina) and newer, which falsely reported the interface speed as zero Mbps.
• [SSENG-29643] In Avid NEXIS Client version 2021.5, an ingest operation could fail due to an incorrect return code.
• [SSENG-31070] In Avid NEXIS Client version 2021.8 and 2021.12, Adobe Premiere was unable to play back, save, or link media due to problems in the Avid NEXIS Client code for handling ‘file open’ and ‘file close’ operations for media with any shared parent folder or directory.
What’s New in Avid NEXIS v2022.5.0 – Revised Dec 2022 Avid NEXIS version 2022.5.0 introduces a new hardware platform, allows subscription licensing for your system, adds newer client operating systems, and includes other improvements and fixes.
JULY 12, 2022 – Introducing Avid NEXIS F-Series, Avid NEXIS | SDA+ and Avid NEXIS | PRO+ Avid announces a new platform line for shared storage: The F-Series (Faster and more Flexible), which includes the following models:
Avid NEXIS | F2, a 2U chassis with one Media Pack (compatible with Avid NEXIS | E2
- Avid NEXIS | F2X, a 2U expansion chassis with one Media Pack and two SAS I/O modules and
- (optional) one or two spare drives, but no Controllers. An expansion chassis pairs with an Avid
NEXIS | F2, which together are compatible with Avid NEXIS | E4
- Avid NEXIS | F5, a 5U chassis with up to eight Media Packs, for large-scale configurations
(compatible with Avid NEXIS | E5) Avid NEXIS | F5 NL, a 5U chassis with up to eight Media Packs that connects to a 10GbE switch for
- nearline workflows (compatible with Avid NEXIS | E5 NL
Avid NEXIS | SDA+, a Avid NEXIS | SDA that can manage provides higher scaling and enables
- engine protection
- Avid NEXIS | PRO+, a 2U chassis with one Media Pack, intended for small teams
These new models are the next generation of Avid NEXIS storage, and use a new Controller with faster performance. The new Controllers support the current 10GbE and 40GbE Ethernet connections, and add support for 25GbE and 50GbE Ethernet connections with a suitable switch.
[Added September 2022] This release also supports clients with 25GbE and 50GbE NICs. See the Avid NEXIS Network and Switch Guide for more information.
Avid NEXIS version 2022.5.0 supports the new models. After upgrading an existing system to version 2022.5.0, you can add Avid NEXIS F-Series Engines to the shared-storage system, and add Avid NEXIS | PRO+ to current Avid NEXIS | PRO configurations, to maximize your current infrastructure investment.
The Avid NEXIS Administration Guide, Avid NEXIS Setup and Maintenance Guide, and Avid NEXIS Network and Switch Guide have been updated to describe the new models, supported switches, and how to use them in a new or existing shared-storage system. See the Avid NEXIS Documentation Knowledge Base page for the latest version of these documents.
- 7 - What’s New in Avid NEXIS v2022.5.0 – Revised Dec 2022 July 12, 2022 — Introducing Avid NEXIS | F-Series Licensing With Avid NEXIS F-Series, Avid introduces Avid NEXIS | F-Series Licensing, required to deploy any Avid NEXIS F-Series Engine, Avid NEXIS | SDA+, or Avid NEXIS | PRO+ in new or existing (Avid NEXIS E-series) configurations. The license includes a defined set of features on a system, including your choice of Protection Mode (Flexible or All-Mirror).
See the Avid NEXIS Administration Guide for more information about activating a license.
Support for Avid NEXIS Subscriptions Avid NEXIS 2022.5.0 includes system licensing to manage and control subscriptions for on-premises systems. Avid is introducing innovative commercial models as an alternative to the previous Integrated Solution (perpetual) capital expenditure (CapEx) model. Avid NEXIS subscription models are available now and include:
• Purchase of new systems — annual Avid NEXIS | Flex Software Subscription combine with a one- time, hardware-only purchase • Crossgrade of current maintenance contract to subscription Annual subscriptions offer the following advantages:
• Lower up-front investment • Option to migrate to Avid NEXIS | Cloud Storage • Predictable recurring costs (operating expenditure, or OpEx) You can activate a license either online (the system is connected to a network with Internet access) or offline. To activate a license online, the system must have DNS configured. See the Avid NEXIS Administration Guide for information on activating a license.
For details about purchasing a license, contact your Avid supplier.
Improvements to Remote Client Connection Workflows Avid NEXIS version 2022.5.0 adds several improvements for Avid NEXIS clients connecting to a remote Avid NEXIS system:
• Avid NEXIS 1GbE Clients running macOS 11.x (Big Sur) and later can connect to a remote Avid NEXIS system through a VPN (such as Cisco) and run CrowdStrike Endpoint Protection, with filters enabled. (Windows 1GbE client support for remote Avid NEXIS systems was introduced in Avid NEXIS v2021.8.0.) • Avid NEXIS Client support for OpenVPN to connect to a remote Avid NEXIS system.
Client Operating System Support Avid NEXIS version 2022.5.0 adds support for the following operating systems on clients:
• Windows 11; see "Supported Client Operating Systems " on page 19 for more information • Windows 10 build 21H2 on Avid NEXIS clients; see "Supported Client Operating Systems " on page 19 for more information • macOS 12 (Monterey) on Avid NEXIS clients; see "Supported Client Operating Systems " on page 19 for more information - 8 - What’s New in Avid NEXIS v2022.5.0 – Revised Dec 2022 Server Fixes Avid NEXIS version 2022.5.0 includes the following fixes to Avid NEXIS software (on-premises systems).
• [Server and Client] Investigated all Avid NEXIS code for vulnerability to the Apache Log4j2 issue (see CVE-2021-44832). Avid has determined that Avid NEXIS software does not use the affected Java library and is therefore not affected by this issue. For information about other Avid products, see the Avid Technology Log4j Security Assessment.
• Closed a security hole in the Avid NEXIS kernel that allowed unprivileged users to gain root privileges to the system (see CVE-2022-0847).
• [SSENG-31159] The Log Aggregation tool was not correctly collecting the BMC log file.
• [SSENG-31167, 31822] On some Avid NEXIS systems, the fan speed was incorrectly reported and displayed.
• [SSENG-31509] On some Avid NEXIS | PRO systems, the hardware information did not display in the Management Console.
• [SSENG-31668] On some systems with mirrored Workspaces, continuous updates to the same area of a file over an extended period of time could lead to timing problems resulting in a forced stop of a particular Media Pack.
• [SSENG-31977] On the User Groups page in the Workspace Access area, when selecting all Workspaces using the All button, a symbol was displayed instead of the number of selected Workspaces. Also corrected a spelling error.
Cloud Fixes Avid NEXIS version 2022.5.0 includes the following fix for the Avid NEXIS | Cloud Storage solution.
• [SSENG-31633] Could not deploy new Avid NEXIS | Cloud Storage systems.
• [SSENG-31661] Improved performance when deleting files in Avid NEXIS | Cloud Storage.
• [SSENG-31743] Improved performance for exporting Adobe Premiere sequences to a Workspace (both on-premises and Cloud).
• [SSENG-31755] On Avid NEXIS | Cloud Storage, the OAM service on the NEXIS client could crash and restart, causing slow or failed reads and writes.
Client Fixes [Updated July 27, 2022] Avid NEXIS version 2022.5.0 includes the following fixes to the Avid NEXIS software running on clients (Client Manager).
• [SSENG-29673] Avid NEXIS 1GbE Clients running macOS 11.x (Big Sur) and later can now use content network filters (such as CrowdStrike Falcon Endpoint Protection Platform) that previously prevented the client from connecting to an Avid NEXIS System.
• [SSENG-31258] Clients using Cisco AnyConnect and macOS 11.x (Big Sur) and later experienced disruptions caused by content filters. Previously, on those clients we advised disabling the system extension and instead running the legacy kernel extension, as documented in Section 4 in the AnyConnect macOS 11 Big Sur Advisory.
Apple® • [SSENG-30847] In some circumstances, Mac computers that use the Silicon (M1, M1 Pro, or M1 Max) processors could experience a system panic.
- 9 - Supported Upgrade Paths • [SSENG-31468 and SSENG-31432] In some workflows, Avid NEXIS clients running CentOS became unresponsive.
• [*SSENG-31292--Update] After upgrading a client from version 2021.3 to 2021.12, the Database Backup utility stopped properly handling pathnames that ended with a slash (\), which is a valid character in a path name.
Supported Upgrade Paths You can upgrade any Avid NEXIS system according to the upgrade path described next. For instructions on how to upgrade an Engine or System Director Appliance, see the Avid NEXIS Setup and Maintenance Guide, or the Avid NEXIS Administration Guide.
Avid NEXIS Upgrade Paths All Avid NEXIS systems can upgrade to the following versions.
Current Avid NEXIS Version Can Upgrade Directly To On-premises systems: 6.x, 7.x, 2018.x, 2019.x, 2020.x, 2021.x, 2022.12.0 2022.x Avid NEXIS | Cloud Storage systems: 2021.3.1 and newer 2022.12.0 To upgrade Avid NEXIS | Cloud Storage 2020.7.x and earlier to Avid NEXIS | FS version 2021.x, please contact Avid Customer Service or your sales representative to assist with the upgrade.
> **Note:** ISIS 1000 systems running versions 6.x or 7.x should be upgraded directly to version 2019.12.1 or higher,
not to an interim version.
> **Note:** Avid identified an issue when upgrading from 2020.3.0 directly to 2020.7.0. This specific upgrade path
is not supported. If you have already upgraded from 2020.3.0 to 2020.7.0 and encountered a problem, contact Avid Customer Care.
System Director and Client Version Compatibility Since Avid NEXIS v2019.2, the Shared Storage system can have a newer version than the client to allow deployment of server-only fixes. Avid recommends upgrading all clients to the same version as soon as practical.
The Avid NEXIS Client software works with the following versions:
Client Version Shared-Storage System Version 2019.x and newer Avid NEXIS version 2019.x and newer
> **Note:** If using the Remote Avid NEXIS setting in the
Client Manager, use Avid NEXIS version 2020.9.0 or newer due to numerous fixes.
2019.x, 2020.7.x Avid ISIS version 4.7.5 and newer (minimum v4.7.9 recommended)
> **Note:** Avid NEXIS v2020.7.x is the last release
stream to support client connections to Avid ISIS v4.7.9 and newer. Workflows that require connection to both ISIS and Avid NEXIS can - 10 - Compatibility with Other Avid Products Client Version Shared-Storage System Version use client version 2020.7.x until further notice.
> **Note:** The Avid NEXIS Toolbox and other utilities are tested and known to work only against a System Director
of the same version. If you want to install two different versions of the Toolbox on the same system, install one of them into a directory other than the default.
Compatibility with Other Avid Products Avid NEXIS version 2022.12.0 is broadly compatible with other Avid and third-party products. (See the Avid Audio and Video Compatibility Charts Knowledge Base page for details about all Avid tools and older releases.) The following table is a quick reference for the currently supported Avid products and versions.
Avid NEXIS Version 2022.12.0 (Server/System Director) Works With:
Avid NEXIS Clients 2019.x and newer MediaCentral | Cloud UX 2019.x and newer MediaCentral | Production Management 2018.6 and newer MediaCentral | Stream 2020.12 - 2022.3 (with Avid NEXIS Client 2021.12 and newer) Media Composer 2019.12.5 and newer (recommended) 2018.12.x Pro Tools 2021.R1 (v2021.3), 2021.10, 2021.12, 2022.4, 2022.5.0– 2022.10 FastServe Ingest: 2022.9.0 Playout: 2022.8 Use Avid NEXIS v2019.4.x with FastServe v2018.3.2– 2018.3.4, 2019.1–2019.12.1, and 2020.4.x.
Interplay Production (Legacy) 3.5 - 3.8, 2017.2 System Configuration Limits The following table lists the configuration limits for on-premises and Avid NEXIS | Cloud Storage systems in the current release.
> **Note:** An Avid NEXIS | Cloudspaces subscription (available in v2019.4.0 and newer) is part of an on-premises
Avid NEXIS system.
- 11 - System Configuration Limits On-Premises Limits On-Premises Systems Limits Item Embedded System Director System Director Appliance Media Packs (per 4, in any combination of Scale- 8 in a High Performance Storage system) Out and High Performance, Group optionally including 1 Avid NEXIS | 24 total (optionally including up to Cloudspaces Media Pack 8 in a High Performance Storage Group) with the Avid NEXIS | VFS Standard or Avid NEXIS | FS Extended (Standard) license and any combination of Avid NEXIS Engines 64 total (optionally including up to 8 in a High Performance Storage Group) with the Avid NEXIS | VFS Advanced or Avid NEXIS | FS Advanced license, and any combination of Avid NEXIS Engines Media Packs (per 1 in all 2U chassis (Avid NEXIS | E2, Avid NEXIS | E2 All-Mirror, Avid NEXIS | Engine) E2 SSD, Avid NEXIS | PRO, Avid NEXIS | F2, Avid NEXIS | F2X, Avid NEXIS | PRO+) 1–2 in all 4U chassis (Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror) 4–8 in all 5U chassis (Avid NEXIS | E5, Avid NEXIS | E5 NL, Avid NEXIS | E5 All-Mirror, Avid NEXIS | F5, Avid NEXIS | F5 NL) Storage Groups 4, optionally including one High 32, optionally including one High Performance Storage Group and Performance Storage Group and one Avid NEXIS | Cloudspaces one Avid NEXIS | Cloudspaces Storage Group Storage Group Workspaces 1024 (including Workspaces for 3072 (including Workspaces for Teams) Teams) Teams 19 80 Team Quotas Up to 255 Team Quotas per system (Teams have only one quota per Storage Group — which can be increased or decreased — but can have a quota in multiple Storage Groups) Team Admin Users No enforced limit Users (Clients) 5640 (including Users in Teams) User Groups 1028 (including User Groups in Teams) Group Memberships Non-Team users can belong to 71 non-Team user groups per User Team users can belong to 71 user groups in the same Team Connected (Active) 40 (Avid NEXIS E-Series/F-Series 165 with Avid NEXIS | VFS - 12 - System Configuration Limits On-Premises Systems Limits Item Embedded System Director System Director Appliance Clients Engines) Standard or Avid NEXIS | FS Extended (Standard) license 30 (Avid NEXIS | PRO or Avid NEXIS | PRO+) 330 with Avid NEXIS | VFS Advanced or Avid NEXIS | FS Advanced license Up to 10 to a High Performance Storage Group (Avid strongly recommends no more than 10) Files and Folders 8 million (Avid NEXIS E-series/F- 28.4 million Series configurations) (Actual limit depends on file name 3 million (Avid NEXIS | PRO/Avid length. Limit assumes 67 ASCII NEXIS | PRO+ configurations) characters (67 bytes). Longer average file names reduce the file count limit.) Files per folder Avid recommends no more than 10,000 files per folder, particularly for Workspaces used by Avid MediaCentral | Production Management (formerly Avid Interplay | Production).
Pathnames Total bytes = 255 (Workspace name + path + filename).
Unicode characters can be multi-byte.
Cloud System Limits Avid NEXIS | Cloud Storage System Limits Item Limit Media Packs (per system) 1 (2PB capacity) Workspaces 3072 Teams 80 Workspaces, users, and groups created by a Team count against the overall system limits.
Team Quotas Up to 255 Team Quotas per system (Teams have only one quota per Storage Group — which can be increased or decreased — but can have a quota in multiple Storage Groups) Team Admin Users No enforced limit Users (Clients) 5640 (including Users in Teams) User Groups 1028 (including User Groups in Teams) Group Memberships per Non-Team users can belong to 15 non-Team user groups User Team users can belong to 15 user groups in the same Team - 13 - System Performance (On-Premises) Avid NEXIS | Cloud Storage System Limits Item Limit Connected (Active) Clients 330 Files and Folders 28.4 million (Actual limit depends on file name length. Limit assumes 67 ASCII characters (67 bytes). Longer average file names reduce the file count limit.) Files per folder Avid recommends no more than 10,000 files per folder, particularly for Workspaces used by Avid MediaCentral | Production Management (formerly Avid Interplay | Production).
Pathnames Total bytes = 255 (Workspace name + path + filename).
Unicode characters can be multi-byte.
System Performance (On-Premises) This section describes the bandwidth for the different Media Pack bind options, and the aggregate throughput for Storage Groups using those Media Packs, for Avid NEXIS F-Series and Avid NEXIS E-series systems.
Bandwidth by Media Pack Bind Setting The nominal bandwidth rating for all-read workflows depends on the Engine type and Media Pack Bind Setting, as follows:
Bind Option Bandwidth Rating Supported On (Nominal) Scale Out 400MB/sec Avid NEXIS | PRO Avid NEXIS | E2, Avid NEXIS | E4, Avid NEXIS | E5 and their All-Mirror versions 480MB/sec Avid NEXIS | PRO+ Avid NEXIS | F2, Avid NEXIS | F2X, Avid NEXIS | F5 High Performance 600MB/sec Avid NEXIS | PRO Avid NEXIS | E2, Avid NEXIS | E4 700MB/sec Avid NEXIS | PRO+ Avid NEXIS | F2, Avid NEXIS | F2X SSD 3000MB/sec Avid NEXIS | E2 SSD only Aggregate Bandwidth by Media Pack Protection Type The actual write bandwidth depends on protection type. Aggregate bandwidth is therefore a function of protection type and the proportion of reads to writes in the workflow.
> **Note:** In a mixed configuration of Avid NEXIS E-series and Avid NEXIS F-Series Engines in a Storage Group, the
throughput will be between the ratings for an all E-series or all F-series system.
- 14 - System Performance (On-Premises) The following tables provide data on the expected bandwidth for Avid NEXIS F-Series and Avid NEXIS E- series Engines (including Avid NEXIS | PRO+ and Avid NEXIS | PRO) as an aggregate of all the Media Packs in a given Engine by protection type and R/W proportion per Media Pack.
To calculate total system performance, multiply these figures by the number of Media Packs in the Storage Group. A typical workflow is 80% reads and 20% writes.
Avid NEXIS F-Series Aggregate Throughput per Media Pack by Performance Type (Bind Option), Workspace Protection, and Engine Protection, in MB/Sec Scale-Out Performance Scale-Out performance is available on all models except Avid NEXIS | F5 NL. Scale-Out is the best choice for Media Mirroring (not supported on Avid NEXIS | F5 NL or Avid NEXIS | PRO+).
Scale-Out Performance on Avid NEXIS F-Series Read% Write% No One Two One Disk Two Disk + Protection Disk Disk + Mirroring Mirroring 100 0 480 480 480 480 480 90 10 480 474 468 427 417 80 20 480 468 457 384 369 70 30 480 463 447 349 331 60 40 480 457 436 320 300 50 50 480 452 427 295 274 Usable Storage 100% 89% 80% 44% 40% High Performance High Performance is available on Avid NEXIS | PRO+, Avid NEXIS | F2 and Avid NEXIS | F2X. Media Mirroring is not supported with High Performance Storage Groups.
High Performance on Avid NEXIS F-Series Read% Write% No One Two One Disk Two Disk + Protection Disk Disk + Mirroring Mirroring 100% 0 700 700 700 NA NA 90% 10 700 691 683 NA NA 80% 20 700 683 667 NA NA 70% 30 700 675 651 NA NA 60% 40 700 667 636 NA NA 50% 50% 700 659 622 NA NA Usable Storage 100% 89% 80% NA NA - 15 - System Performance (On-Premises) Avid NEXIS E-Series Aggregate Throughput per Media Pack by Performance Type (Bind Option), Workspace Protection, and Engine Protection, in MB/Sec Scale-Out Performance Scale-Out performance is available on all models except Avid NEXIS | E5 NL. Scale-Out is the best choice for Media Mirroring (not supported on Avid NEXIS | E5 NL or Avid NEXIS | PRO).
Scale-Out Performance on Avid NEXIS E-series Read% Write% No One Two One Disk Two Disk + Protection Disk Disk + Mirroring Mirroring 100 0 400 400 400 400 400 90 10 400 395 390 356 348 80 20 400 390 381 320 308 70 30 400 386 372 291 276 60 40 400 381 364 267 250 50 50 400 376 356 246 229 Usable Storage 100% 89% 80% 44% 40% High Performance High Performance is available on Avid NEXIS | PRO, Avid NEXIS | E2, and Avid NEXIS | E4. Media Mirroring is not supported with High Performance Storage Groups.
High Performance on Avid NEXIS E-series Read% Write% No One Two One Disk Two Disk + Protection Disk Disk + Mirroring Mirroring 100 0 600 600 600 NA NA 90 10 600 593 585 NA NA 80 20 600 585 571 NA NA 70 30 600 578 558 NA NA 60 40 600 571 545 NA NA 50 50 600 565 533 NA NA Usable Storage 100% 89% 80% NA NA SSD Performance SSD Performance is available only on Avid NEXIS | E2 SSD, and does support Media Mirroring.
- 16 - System Performance (On-Premises) SSD Performance on Avid NEXIS E-series Read% Write% No One Two One Disk Two Disk Protection Disk Disk + + Mirroring Mirroring 100 0 3000 3000 3000 3000 3000 90 10 2857 2807 2759 2424 2353 80 20 2727 2637 2553 2034 1935 70 30 2609 2487 2376 1752 1644 60 40 2500 2353 2222 1538 1429 50 50 2400 2233 2087 1371 1263 Usable Storage 100% 89% 80% 44% 40%
> **Note:** One-Disk and Two-Disk with Mirroring performance is based on 19.2TB Media Packs with Avid Part
Number 7020-71306-01 and higher, or 38.4TB Media Packs. 960GB Media Packs might have lower performance numbers in mirror configurations.
> **Note:** Linux 10GbE clients can experience lower throughput than Windows and macOS clients against both
Avid NEXIS | PRO and Avid NEXIS | Enterprise Engines.
Drive Rebuilds and System Performance When a drive in a Media Pack fails, the data from that drive is rebuilt from the other drives in that Media Pack, and involves only those drives. During a rebuild, the Media Pack’s performance rating drops by the rating of one drive (10%). With no I/O on the system, the fastest a drive can be rebuilt is also equal to the rating of one drive.
On a Media Pack that is under full load (at complete bandwidth capacity), the minimum repair rate is 512KB/s. As the drive is rebuilt it begins contributing to the overall Media Pack performance rate for both reads and writes, so during the rebuild, the rate gradually decreases.
Performance Type Rebuild Rate Estimated Rebuild Time (Media Pack at 100% capacity) Avid NEXIS F-Series and Avid NEXIS | PRO+ Scale-Out 48MB/sec (0.17TB/hour), or ~6 16TB Drive = 96 hours hr/TB 14TB Drive = 84 hours 10TB Drive = 60 hours 6TB Drive = 36 hours 4TB Drive = 24 hours High 70MB/sec (0.25TB/hour) or ~4 14TB Drive = 56 hours hr/TB 10TB Drive = 40 hours 6TB Drive = 24 hours 4TB Drive = 16 hours - 17 - Hardware and Software Requirements Performance Type Rebuild Rate Estimated Rebuild Time (Media Pack at 100% capacity) Avid NEXIS E-series and Avid NEXIS | PRO Scale-Out 40MB/sec (0.14TB/hour) or ~7 16TB Drive = 112 hours hr/TB 14TB Drive = 98 hours 10TB Drive = 72 hours 6TB Drive = 42 hours 4TB Drive = 28 hours 2TB Drive = 14 hours High 60MB/sec (0.22TB/hr) or ~5 14TB Drive = 70 hours hr/TB 10TB Drive = 50 hours 2TB Drive = 10 hours SSD 300MB/sec (1.08TB/hr), or 3.84TB Drive = 12 hours ~3.125 hr/TB 1.92TB Drive = 6 hours hours
> **Note:** 16TB drives are available in Avid NEXIS | F5 NL and Avid NEXIS | E5 NL only.
The rebuild time increases with client load, and decreases as less data remains to be rebuilt.
Workspaces with One-Disk Protection are rebuilt before Workspaces with Two-Disk Protection, due to their higher vulnerability to a second drive failure.
Media Mirroring and System Performance Mirrored Workspaces allow Avid NEXIS clients to continue working through an Engine failure without interruption or needing to reconnect. To ensure all clients can work seamlessly through an Engine failure, provision the shared-storage system with enough bandwidth to account for an Engine being offline.
Hardware and Software Requirements To meet the stringent needs of media applications the Avid NEXIS family of storage solutions is built using patented intellectual property in Avid NEXIS software running on Avid NEXIS hardware. Avid tests and qualifies configurations of Avid NEXIS software deployed on Avid NEXIS hardware. The Avid NEXIS System Director is designed to allow the binding of Avid NEXIS only. Avid has not published its file system specifications, protocols, or file system APIs used among the components of the file system (Avid NEXIS System Director, Avid NEXIS client, Avid NEXIS expansion engines) and these are subject to change without notice. Therefore, any connection of third party storage as part of an Avid NEXIS file system is not a licensed, approved or supported configuration.
> **Note:** Avid NEXIS | Cloud Storage does not support third-party editing clients.
The full compatibility matrix of Avid editors and hardware is available on the Avid support site at the following URL: Avid Audio and Video Compatibility Charts The following table lists the compatibility between Avid NEXIS and editors from vendors other than Avid:
- 18 - Supported Client Operating Systems Qualified Third-Party Editing Clients on On-Premises Avid NEXIS Workspaces Editor Version Autodesk Flame 2021 You must use the CentOS 7.4 kernel specified by AutoDesk based on the Flame version you intend to use for connecting to Avid NEXIS.
Apple Final Cut Pro X (see "Final Cut 10.4.2 and newer Pro X Software" on page 27) As of Final Cut Pro X 10.4, you can store library files on Avid NEXIS instead of on local drives.
Adobe Premiere Creative Cloud Premiere Pro 2018 (v12.1.1) and newer Blackmagic Design DaVinci Resolve 14.3 and newer Grass Valley EDIUS Pro 9 and newer Supported Client Operating Systems The following table lists the currently supported client operating systems with Avid NEXIS. All of the listed client operating systems support single or dual 10Gb Ethernet network interface cards.
All client computer names must be unique to connect to Avid NEXIS. A client computer name is treated as a user name, and all user names on a shared-storage system must be unique.
Operating System Supported Versions Notes macOS 12.x (Monterey) with latest See and the Knowledge Base page: Avid updates Products and macOS Catalina Support
> **Note:** macOS clients are
not supported with Avid NEXIS | Cloud Storage systems.
11.x (Big Sur) with latest updates 10.15.x (Catalina) with latest updates CentOS 7.9, 7.8, 7.7, 7.6 General Avid NEXIS Client use 7.5, kernel 4.4.174-1.el7 Supported only on MediaCentral | Cloud UX and 7.5, kernel 3.10.0- systems running CentOS 7.5 862.el7.x86_64 See the Avid Audio and Video Compatibility Charts on the Avid Knowledge Base page for more information on compatibility.
7.4, kernel version 3.10.0- Specifically for use with AutoDesk Flame 693.17 2021; also see "Hardware and Software Requirements" on the previous page.
- 19 - Supported Browsers in an Avid NEXIS On-Premises Environment Operating System Supported Versions Notes Windows 11 10 Build 21H2 See "Known Issues with Windows 10" on page 24.
10 Build 21H1 10 Build 20H2 (October 2020) 10 Build 2004 (May 2020) 8.1 with latest updates Windows Server 2022 with latest Service Pack 2019 with latest Service Pack 2016 with latest Service Pack 2012 R2 with latest Service Pack Supported Browsers in an Avid NEXIS On-Premises Environment The following are the minimum browser versions qualified for the current Avid NEXIS release stream.
These browsers were qualified with the client operating systems supported in the current release.
Supported Client Browser per Operating System Operating System Supported Browsers Windows Microsoft Edge, Mozilla Firefox, Google Chrome macOS Apple Safari, Mozilla Firefox, Google Chrome
> **Note:** On macOS v10.15 (Catalina), do not use Chrome
for initial system setup or to access the Agent. Use Safari instead.
Updated Security Guidelines As system and network security attacks become increasingly more inventive and persistent, Avid is adopting a new security strategy to help you, our customer and partner, better protect your assets and intellectual property. As you might know, Avid has traditionally recommended Symantec Endpoint Protection as the preferred and qualified solution for much of the Avid product line. As of Q3, 2020, Avid is introducing a more flexible strategy that provides general guidelines for protecting your Avid systems.
This new policy allows you to choose the best security solution for your organization, while still following Avid best practices. For more information, see Avid Security Guidelines and Best Practices for Dealing with Virus Threats.
- 20 - Secure Data Deletion Secure Data Deletion For customers who require a guarantee that all deleted data is done so completely and securely (after deleting a Workspace), see the following URL for Secure Data Deletion tools available from Seagate, officially supported by Avid NEXIS: https://www.seagate.com/support/secure-erase-matrix/ Switches, Adapters, and Drivers Qualified and Approved Avid NEXIS Switches For a list of the current qualified and approved switches for use in the Avid NEXIS Production Network (APN), see the Avid NEXIS Network and Switch Guide on the Avid NEXIS Documentation KB page.
Flow Control Required in Avid Production Networks Avid requires configuring Rx Flow Control (LFC) Enabled on the switch that connects to Avid NEXIS Engines and clients. The client or Engine provides feedback to the switch to honor ‘pause frames’ requests to throttle the send rate to avoid overwhelming the IP stack on the client or Engine, and to buffer at the switch during these short pauses.
Many network switches have Rx Flow Control enabled by default. Consult your switch documentation to verify your switch’s settings.
ATTO® ThunderLink™ 10 GbE and 40 GbE Adapters Avid NEXIS supports using several ATTO ThunderLink adapters for Mac and Windows (10GbE) clients.
See see Avid NEXIS Network and Switch Guide on the Avid NEXIS Documentation KB page for supported Intel (and Intel-based ATTO) NICs.
Get the latest ATTO driver from their website. Install the appropriate driver for your operating system.
Use all the default values and settings.
> **Note:** On macOS 10.15 clients, you might need to unblock ATTO from the Security & Privacy preferences in the
System Preferences menu.
Myricom® Driver for macOS
> **Note:** macOS 11 (Big Sur) and later do not support Myricom drivers. Clients can still run older supported macOS
versions and use Myricom drivers with Avid NEXIS.
myri10GE-1.3.6-MTU1500-Installer.dmg The Avid NEXIS kit includes the Myricom driver called to enable 10Gb connections to clients running macOS 10.15.x.
Install the driver from the Drivers\Avid NEXIS Client\Myricom folder in the Avid NEXIS software kit.
> **Note:** If using VMWare on Windows clients, use the 10GbE drivers that come with the Windows OS, not the
Myricom driver.
> **Note:** On macOS 10.15 clients, you might need to unblock Myricom from the Security & Privacy preferences in
the System Preferences menu.
VMware ESXi™ The Avid NEXIS Client is supported with VMware ESXi v6.0.0 (Update 1) using a VMXNET3 adapter with the Mellanox ConnectX-3 adapter and the Mellanox ESX OFED Driver version 1.9.10.2 or later.
- 21 - Known Issues VMware on Windows To use VMware on Windows clients, use the 10GbE drivers that come with the Windows OS, not the Myricom drivers. The Avid NEXIS Client software no longer changes the speed of the VMware virtual NIC to 1 GbE.
Known Issues The following are known issues with Avid NEXIS software or third-party vendors.
Known Issues with Avid NEXIS On-Premises Systems Bug Number: SSENG-33705. Avid NEXIS | F5 NL systems do not support LACP.
Bug Number: SSENG-33703, SSENG-33328. On Avid NEXIS systems that are licensed, but not using an NTP server to synchronize system time, if you adjust the system time manually by more than 20 minutes, the license is deactivated. This issue can also happen if you switch from manually setting the time on the system to using an NTP server, or vice versa, and the time differs by more than 20 minutes.
> **Note:** Note: Manually changing the time zone, and the switch between Daylight Saving Time and Standard
Time (where applicable), has no effect on the license.
Workaround: If possible, always configure the system to use an NTP server, or set the correct system time before activating a license. If your environment does not have its own NTP server, public ones are available online. See NTP.org for more information.
Bug Number: SSENGHW-122, SSENGHW-123, SSENGHW-124. On Avid NEXIS | PRO+, and any Avid NEXIS F-Series with a single Controller, the amber Module Fault LED on the Controller remains lit, which normally indicates an error condition. However if the system reports no errors on the Dashboard and is functioning normally, you can disregard this LED state. This problem has been traced to an internal firmware issue and the fix will be in a later release.
Bug Number: SSENG-31657. When configuring an Avid NEXIS | F2 (initial setup in the Agent), the enclosure ID does not remain set, and continues to display the factory default of 00.
Workaround: Reboot the Engine after updating the enclosure ID.
Bug Number: (None). When looking at switch statistics (for Dell and NETGEAR switches), you might see the OutDiscard counter (on Dell switches) or the Transmit Packets Discarded counter (on the NETGEAR switch) incrementing. This is acceptable as long as the rate of discards is no more than 1% of the total packets transmitted, or as long as workflows are not experiencing any dropped frames.
Bug Number: (None). Avid recommends avoiding the use of object names that include a pound sign (#) followed by numeric characters. The Macintosh Finder might incorrectly display the contents of folders whose name includes that sequence of characters. For example, “project # 12” might be erroneously displayed with some items duplicated and some items missing.
See the Avid NEXIS Administration Guide for more information on supported and unsupported characters and other restrictions.
Known Issues with Avid NEXIS | Cloudspaces Avid NEXIS | Cloudspaces was introduced in Avid NEXIS version 2019.4.
- 22 - Known Issues Bug Number: (None). If an Avid NEXIS system with Cloudspaces activated does not have NTP time synchronization enabled and its local time in UTC is behind (earlier than) the Azure time by 15 or more minutes, no communication to Azure can be made and all requests fail with the following authentication error: “Server failed to authenticate the request. Make sure the value of Authorization header is formed correctly including the signature.” Workaround: Configure NTP Server time synchronization on the Avid NEXIS system or manually adjust the local system time to less than 15 minutes different from the Azure time.
Known Issues with Avid NEXIS | Cloud Storage Bug Number: (None). You might run into issues running clients with multiple NICs, each of which is able to connect to an Avid NEXIS | Cloud Storage system.
Workaround: In clients that are specifically connecting to Avid NEXIS | Cloud Storage, enable only one NIC.
Known Issues with Avid NEXIS Client When a workaround exists, it appears in the paragraph directly following the issue description.
> **Note:** A user account with Administrator privileges is required to install the Avid NEXIS client software on your
workstations.
Bug Number: SSENG-29506, SSENG-31340. Avid is aware of an issue with intermittent communication, often during system discovery, between an Avid NEXIS and clients running on certain configurations of VMware host systems. For more information, see the following articles:
Recommended VMware Versions and Settings (Avid Knowledge Base)
- Network timeouts or packet drops with VMware Tools 11.x with Guest Introspection Driver (79185)
- (VMware Knowledge Base)
Bug Number: SSENG-33268. Do not use the Remote Avid NEXIS setting in the Client Manager when on site with the target Avid NEXIS system. This setting is designed for remote connections, especially with the upcoming Avid NEXIS | EDGE collaboration tool. The Remote Avid NEXIS setting supports proxy workflows and push/pull file copying, but is not supported for on-premises or high resolution workflows.
For all on-premises workflows, use the local, physical network and gateway connection.
Bug Number: If you mount a workspace by mapping a network drive in Windows, when you unmount the workspace and then mount a different workspace in Client Manager manually using the same drive letter, Windows Explorer displays the previous workspace name instead of the new workspace name.
Bug Number: (None). The estimated amount of space available (usually measured in an amount of time at a particular resolution) might differ between what Avid NEXIS calculates and what the Avid editing system calculates. Avid NEXIS accurately reports the amount of space available for file storage. The Avid editing application accounts for overhead in formatting of the media and is more conservative in reporting how much space is available.
Bug Number:(None). The Avid NEXIS Log Utility may occasionally fail to generate logs with the error message “Couldn’t find OAM logs”.
Workaround: Close the error message and generate the logs again.
- 23 - Known Issues Bug Number: (None). If the Client Manager is connected to an Avid NEXIS system with dual controllers and the System Director service has switched over to the second controller, the Management Console launch button in the Client Manager does not redirect to the new System Director and cannot successfully open the Management Console.
Workaround: To launch the Management Console for an Avid NEXIS system, either open a browser and enter its IP address, or add the IP address of the redundant controller to the Remote Hosts list in the Client Manager.
Bug Number: (None). On a client with multiple NICs, all network paths from the client to a particular Avid NEXIS must be via NICs with the same speed.
Known Issues with Avid NEXIS | VFS Gateway Avid NEXIS | VFS Gateway was introduced (as Avid NEXIS | Linux File Gateway) with Avid NEXIS version 2019.12.0. The utility was renamed in version 2022.9.0.
Bug Number: (None). The keyboard actions to select multiple items (using the Shift or Control keys) do not work.
Known Issues with Windows 10 Bug Number: SSENG-29069 . On Windows 10 clients, when using TeraCopy to move large numbers of files to an Avid NEXIS Workspace (instead of using Windows Explorer), TeraCopy sometimes treats a file as a directory, and the Windows client displays an error that it cannot move the file. Avid strongly recommends not using TeraCopy.
Workaround: Use Windows Explorer or the Avid Data Migration Utility.
Bug Number: SSENG-28533. On Windows 10 build 20H2 clients, Windows Defender might prevent Avid Pro Tools from starting a session on an Avid NEXIS Workspace.
Workaround: In Windows Defender, add Pro Tools as an exclusion from the antivirus scans.
Bug Number: SSENG-2571. On Windows 10 clients, automatic Windows driver updates can remove critical NIC driver settings needed for the correct functioning of the Avid Client.
Workaround: To prevent disruption of clients running Windows 10 (Professional and Enterprise), you can defer automatic driver updates as follows:
1. Right-click the “This PC” icon (formerly called “This Computer”).
2. Select Properties.
3. Select Advanced System Settings.
- 24 - Known Issues
4. Click the Hardware tab, then click Device Installation Settings.
5. Select the option “No” to prevent downloading apps and icons automatically.
- 25 - Known Issues
6. Click Save Changes.
Known Issues with Mac Platforms and macOS Bug Number: SSENG-30949, SSENG-31725, SSENG-32268, SSENG-32360, SSENG-32551, SSENG- 32635, SSENG-32754, SSENG-32941, SSENG-33129. The Apple Silicon (including M1, M2, etc.) processor has decreased the stack size allowed for the Avid NEXIS Client by 75%. Avid has been able to decrease the application size by half of what is needed, but there remain known kernel panics and other issues with Silicon processors.
Bug Number: SSENG-23026 . UPDATED Aug 2021 Avid Benchmark Utility does not work automatically on Avid NEXIS clients running macOS 10.15 (Catalina) and newer. On these clients, you must explicitly allow permission for an application (including Avid Benchmark Utility) to have Full Disk Access.
Workaround: On the macOS client, click System Preferences > Security & Privacy > Privacy > Full Disk Access and check the box for avidbenchmarkd. You might need to provide Administrator credentials to unlock this function (Padlock icon).
If the avidbenchmarkd object is not shown in the list, run a test with the Benchmark Utility against the client; the test will fail, but running it causes the avidbenchmarkd object to appear in the list.
Bug Number: (None). If Macintosh files are copied to a Windows system with the Macintosh resource fork files, the resource fork files cannot be copied to mounted workspaces from a Windows client. Avid NEXIS does not accept Macintosh resource fork files from Windows clients. Appropriate “properties” error messages are displayed if this is attempted.
Bug Number: (None). If the Avid NEXIS Client software is installed accidentally on an unsupported macOS version, running the uninstaller does not work.
Workaround: Use AppCleaner (a free download) to uninstall the Avid NEXIS Client software, as follows:
1. Download AppCleaner from: http://www.freemacsoft.net/appcleaner/
2. Follow the instructions for removing an application (in this case, Avid NEXIS Client).
3. Restart the Mac.
- 26 - LDAP Requires ASCII User Names and Passwords Known Issues with CentOS Bug Number: (None). Avid recommends not using the Development and Creative Workstation option when deploying CentOS 7.8 on an Avid NEXIS Client system as it can create a dependency conflict for packages required to install Avid NEXIS Client software. For existing CentOS clients, when upgrading the Avid NEXIS Client, if the installation fails with specific FUSE library conflicts, remove the existing FUSE libraries and retry the Avid NEXIS Client installation. Using the Development and Creative Workstation option can also create conflicts in port usage for Avid Benchmark Agent. If the ports are already in use, reboot the client to free up the ports.
Bug Number: (None). CentOS clients using the GUI can experience a delay in seeing all files when browsing contents of Cloudspaces with more than a few thousand files. Browsing Cloudspaces files using the terminal avoids the delay.
Special Notes This section contains important information about the Avid NEXIS environment.
LDAP Requires ASCII User Names and Passwords The Avid implementation of LDAP (Lightweight Directory Access Protocol) requires that you restrict LDAP user names and passwords to ASCII. The LDAP/Avid NEXIS Account Synchronizer searches for groups and their users on an LDAP server and synchronizes (reconciles) user and group accounts by adding or removing users and/or groups from Avid NEXIS.
Fast User Switching Not Supported Fast User Switching is a Windows feature that allows multiple user accounts to log on to a computer simultaneously. Fast User Switching is enabled by default in Windows computers. The Fast User Switching feature and multiple concurrent logged on user modes are not supported in the Avid NEXIS environment. The Avid NEXIS software does not distinguish the different drive letters mapped to the same workspaces on the same computer. Conflicts appear in the following two scenarios:
When one user maps a drive letter to one workspace and another user maps the same drive letter
- to a different workspace
- When one user maps a workspace to one drive letter, and another user maps a different drive
letter for the same workspace Adobe Premiere Pro Avid has tested Adobe Premiere Pro as a client in Avid NEXIS environments.
Adobe Premiere clients follow the same guidelines for Client Manager Preference settings as Avid editors.
The default Client Type setting is set to Medium Resolution (limited to resolutions that draw 16 MB/s or less). Use the High Resolution setting when working with High Definition media (resolutions that draw more than 16 MB/s). There are some HD resolutions that draw less than 16 MB/s for a single stream, but you should still use the High Resolution setting (for example, XDCAMHD 50). For more information, see the Knowledge Base at www.avid.com/US/support.
Final Cut Pro X Software Avid has tested Final Cut Pro X as a client in the Avid NEXIS environments. There is no Avid restriction on the QuickTime version. Use the QuickTime version recommended in the Final Cut Pro application. Avid NEXIS supports Final Cut Pro X Macintosh clients in Switched Media Network (Layer 2), Routed Media Network (Layer 3), and Non-media Optimized Network (Mixed Layer 2 and 3) environments.
- 27 - Final Cut Pro X Software