---
product: nexis
product-area: shared-storage
version: "2023.12.0"
release-date: 01/12/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid NEXIS® ReadMe Version 2023.12 Avid recommends that you read all the information in this ReadMe file thoroughly before installing software or attempting to use the Avid NEXIS system. This ReadMe provides information that is not in the other Avid NEXIS documentation. This ReadMe is cumulative for the 2023.x release stream.
This ReadMe provides hardware and software requirements, an overview of the major features of this release, and limitations and known issues. See the appropriate Avid NEXIS Setup Guide for information on physical connection of the system and loading the system and client software. You can access the documentation, including previous versions of the ReadMe, from the Avid NEXIS Knowledge Base.
> **Note:** For information about Avid’s security recommendations specific to Avid products, and our responses to
current world-wide security issues, see Avid Security Guidelines and Best Practices for Dealing with Virus Threats.
For compatibility with other Avid products, see the Knowledge Base page for Avid Audio and Video Compatibility Charts.
> **Note:** Avid recommends that you purchase installation services with your Avid NEXIS system.
Revision History Date Version Changes Dec. 05, 2023 2023.12.0 See "What’s New in Avid NEXIS 2023.12" on page 6 (Updated Feb 28, 2024) Nov. 22, 2023 2023.8.3 Patch for Windows clients only; see "What’s New in Avid NEXIS 2023.8.3" Oct. 11, 2023 2023.8.1 New issue identified; see "Known Issues" on page 24 Oct. 6, 2023 2023.8.1 Added new section for Avid NEXIS | EDGE fixes. "What’s New in Avid NEXIS Aug. 9, 2023 2023.8.0 See "What’s New in Avid NEXIS 2023.8.0 (On-Premises Only)" on page 11 Jul. 31, 2023 2023.7.0 Withdrawn due to incorrect read issue; fixed in 2023.8.0.
All Avid NEXIS | PRO+ and Avid NEXIS F-Series customers running version 2023.7.0 must upgrade to 2023.8.0 as soon as possible.
> **Note:** For customers with current or lapsed Cloudspaces subscriptions, see
"End of Support for Avid NEXIS | Cloudspaces (Amended August 2023)" on page 12 Apr. 25, 2023 2023.3.0 Updates:
- Added support for macOS 13 (Ventura) for client systems; see
"Supported Client Operating Systems " on page 16 Date Version Changes
- Revised the Aggregate Performance and Drive Rebuild numbers for
F2 SSD systems (see "SSD Performance Updated values April 2023" on page 22 and "Drive Rebuilds and System Performance Updated SSD values April 2023" on page 22) Mar. 28, 2023 2023.3.0 See "What's New in Avid NEXIS 2023.3.0" on page 13 Contents What’s New in Avid NEXIS 2023.8.0 (On-Premises Only) 11 What’s New in Avid NEXIS 2023.7.0 11 What's New in Avid NEXIS 2023.3.0 13 Updated Security Guidelines 15 Secure Data Deletion 15 Hardware and Software Requirements 15 Supported Upgrade Paths 15 System Director and Client Version Compatibility 16 Supported Client Operating Systems 16 CentOS Version Compatibility with Avid NEXIS Client and VFS Gateway Versions 17 Supported Browsers in an Avid NEXIS On-Premises Environment 17 Compatibility with Other Avid Products 17 Third Party Editor Compatibility 17 System Configuration Limits 18 System Performance (On-Premises) 20 Known Issues 24 Special Notes 29 Legal Notices 30 Accessing the Online Documentation The Avid NEXIS documentation is accessible in PDF format from the Avid NEXIS Knowledge Base.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
If you encounter a problem with the file system after an upgrade, and rebooting the system (or initiating a Controller switchover) once does not resolve the problem, open a case with Avid Customer Success. Repeatedly rebooting the system or performing multiple Controller switchovers can cause more serious issues.
2. Check the documentation that came with your Avid application or your hardware for maintenance or
hardware-related issues.
3. Visit the online Knowledge Base at avid.com/learn-and-support. Online services are available 24
hours per day, 7 days per week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message- board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
Avid NEXIS Enterprise customers can access online training from the following URL: How to Activate Avid NEXIS Enterprise Training For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/US/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
Recommended and Required Releases The newest release is always recommended. The following Avid NEXIS | FS releases are either recommended or required in the cases listed below.
According to Avid’s Customer Support Contract Terms and Conditions, customers are required to upgrade regularly to benefit from fixes and stability enhancements. It is important to keep the Avid NEXIS infrastructure on a recent release, therefore all customers must plan to upgrade at least once per year to a recommended release from the table below. Avid NEXIS Server and Clients can be upgraded without forcing an upgrade to other Avid and third party devices. See here for Avid Supported Software Releases (and end of support dates): Link to Avid Supported Software Releases
> **Note:** An Avid NEXIS system (server) can be updated before the clients to allow server-only fixes to be
deployed faster. We recommend upgrading clients as soon as possible thereafter.
Avid NEXIS System (Server) and Client Releases Product Version Guidance Server and 2023.12.0 Recommended all Avid NEXIS systems (on-premises and Cloud).
Clients See "What’s New in Avid NEXIS 2023.12" on the next page.
Windows 2023.8.3 Minimum required version for all installations using Crowdstrike. See Clients only "What’s New in Avid NEXIS 2023.8.3" on page 9.
Server and 2023.8.x Support for 175 million files with SDA+, 5 million files with PRO+; support Clients for Windows 10 Build 22H2. Fixes for issues in 2023.8.0 and 2023.8.1.
See "What’s New in Avid NEXIS 2023.8.2" on page 9.
See also "What’s New in Avid NEXIS 2023.8.1" on page 9 and "What’s New in Avid NEXIS 2023.8.0 (On-Premises Only)" on page 11.
Server and 2023.7.0 Withdrawn. All Avid NEXIS | PRO+ and Avid NEXIS F-Series customers Clients running version 2023.7.0 must upgrade to 2023.8.3 or newer (Server) and 2023.8.3 or newer (Client) as soon as possible.
Introduced modular licenses for F-Series Engines and the PRO+; see "What’s New in Avid NEXIS 2023.7.0" on page 11 for more information.
Server and 2023.3.0 Introduced Avid NEXIS | F2 SSD.
Clients See "What's New in Avid NEXIS 2023.3.0" on page 13 for more information.
Server and 2022.12.0 Minimum version for all Avid NEXIS | EDGE workflows.
Clients
- Support for Windows Server 2022 on clients
- Final USM upgrade for Enterprise, SDA, and PRO systems
Avid NEXIS versions 2020.x and 2021.x are no longer recommended for new installations. Avid NEXIS version 2019 and older are no longer supported.
Avid NEXIS Version Downgrades Installing an older software version on Avid NEXIS systems is not supported and can result in unforeseen consequences, up to and including data loss.
What’s New in Avid NEXIS 2023.12 Avid NEXIS version 2023.12 is a major release that supports the following:
- Avid NEXIS Client kit for Ubuntu Cloud deployments
- Windows 11 Build 22H2 for client systems (see "Supported Client Operating Systems " on page 16)
- Management Console usability improvements
- Improvements for Avid Pro Tools running against an Avid NEXIS | F2 SSD system
- Increased system security for the Management Console by removing the FTP protocol from the
software.
Support for Avid NEXIS Client for Ubuntu Linux OS in the Cloud In the Management Console in an Avid NEXIS | Cloud Storage system you can now download an Avid NEXIS Client kit for Ubuntu to use with MediaCentral | Cloud UX.
> **Note:** The Ubuntu Client kit supports command-line operations only.
Management Console Improvements This release includes the following improvement in the Management Console.
Changes Pending to Workspace Access When you make a change to the Workspace Access for a user or group, the value in the Access column turns orange and italicized, with an asterisk to indicate a pending change, as shown in the following figure:
This makes the Management Console more similar to Media Composer and MediaCentral for how pending changes are displayed.
Workspace Deletion Indicator Workspaces marked for deletion now have the suffix “_deleting” added to the name, to indicate that Workspaces are in the process of deleting disk blocks or cloud objects. The modified name is displayed in the Workspaces list when deleting Workspaces with large amounts of media.
Performance Improvements for Pro Tools with Avid NEXIS | F2 SSD In response to customer feedback, Avid has improved the performance of Avid NEXIS systems comprising Avid NEXIS | F2 SSD Engines for clients running Avid Pro Tools. Avid recommends that Pro Tools clients with high track counts are connected to the network via compatible 10GbE switches. See the Avid NEXIS Network and Switch Guide for more information.
The performance improvements include:
Up to 4000 voices (channels) per SSD Media Pack
- Reduced the punch-in (destructive punch) preparation delay by a factor of 6 on Avid NEXIS | F2 SSD
- and by a factor of 2 on Avid NEXIS HDD systems
Improved ‘Save’ times especially on HDD systems
- Full support of Apple Silicon (M1/M2) systems using Rosetta2
- Improved System Security
Avid has removed the FTP protocol and replaced it with the HTTPS protocol for internal communication between the System Directgor and Engines during an upgrade.
Server Fixes This release includes the following Server (Avid NEXIS core) fixes.
- SSENG-32119 The System Monitor View incorrectly timed out after two hours.
- SSENG-34593 Multiple failed attempts by one user to log into an Avid NEXIS | EDGE system caused
the system to block logins by all other users for at least 20 minutes.
- SSENG-34850 In some cases the serial number on the physical label on the chassis was different
from the serial number displayed in the Management Console or Agent.
- SSENG-36422 In Engine mode the Product Name field in the Management Console was empty.
(Engine mode is typically used only when activating a modular license on an individual Engine.) SSENG-37273 In some cases the Engine name field displayed the Storage System Name.
SSENG-37279 & SSENG-37971In Avid NEXIS version 2023.8.2, the system reported a version
- mismatch and invalid USM version for some Avid NEXIS | F2 and Avid NEXIS | F2X chassis.
- SSENG-37497 After a customer upgraded their Avid NEXIS systems and clients to version 2023.7.x or
2023.8.x, Pro Tools workflows experienced distortions in recorded audio and WAV file corruption.
- SSENG-38059 After a customer upgraded their Avid NEXIS system to 2023.8.1, they could not
activate a modular license to add another Engine to the configuration. The system reported a SOAP error.
Client Fixes This release includes the following Client fixes.
- SSENG-34940 Apple Silicon M1 clients running macOS 12 (Monterey) and Avid NEXIS versions 2022.5
through 2022.12 were unable to create TAR files.
- SSENG-36843 After upgrading an Avid NEXIS client to version 2022.3 the Media Indexer average scan
time increased unexpectedly after file deletions.
SSENG-37240 Pro Tools connected to Avid NEXIS storage performing destructive punch-in
- experienced long delays. This has been reduced by a factor of 6 for Avid NEXIS | F2 SSD Engines and
a factor of 2 for Avid NEXIS HDD Engines.
- SSENG-38076 The Client Manager now honors a user-selected drive letter for a Workspace (using the
Assign Mount Point function).
- SSENG-38221, SSENG-38314Fixed an issue with clients running Crowdstrike version 7.04, as reported
on the following Knowledge Base page: Crowdstrike v7.04 and Avid NEXIS Clients.
SSENG-38317 Uninstalling Avid NEXIS Client version 2023.8.1 failed to remove temporary installation
- C:\Windows\System32
files from the folder.
What’s New in Avid NEXIS 2023.8.3 Avid NEXIS version 2023.8.3 is a patch release that fixes the following:
- [SSENG-38221] Solved Avid MediaCentral Transfer Engine problems with small files on Send To
Playback (STP) process.
- [SSENG-38314] Fixed an issue with Avid NEXIS Clients running the Windows operating system and
Crowdstrike v7.04 (and potentially higher), as reported on the following Knowledge Base page:
Crowdstrike v7.04 and Avid NEXIS Clients.
What’s New in Avid NEXIS 2023.8.2 Avid NEXIS version 2023.8.2 is a patch release for both on-premises and Cloud systems.
g If your configuration does not include an SDA+ with All-Mirror Engines, or Teams whose collective quota allocation exceeds 50% of the Storage Group space, you can apply this patch only on clients but skip upgrading the server (minimum version of 2022.5 required).
Client Fixes This patch includes the following fixes for Avid NEXIS clients:
- [SSENG-36129] When sending from MediaCentral | Cloud UX to Playback, the temporary STP Encode
files were not being cleaned up.
- [SSENG-33194] Pro Tools running on Apple Silicon (M1/M2) machines using Rosetta2 sometimes could
not reopen a recent session in Pro Tools or import AAF sequences due to a reported “bad address.” Server Fixes This patch includes the following fixes for Avid NEXIS core:
- [SSENG-38012] Fixed a problem that prevented upgrades on configurations with an Avid NEXIS | SDA+
and All-Mirror Engines (either E-Series All-Mirror Engines, or F-Series with the All-Mirror license).
- [SSENG-38151] On a system with Teams that had quotas collectively exceeding 50% of the Storage
Group capacity, after upgrading to version 2023.8.1 Workspaces were no longer visible in the Management Console.
What’s New in Avid NEXIS 2023.8.1 Avid NEXIS version 2023.8.1 is a patch release for both on-premises and Cloud systems.
New Features The 2023.8 release now supports up to 5 million files on systems with an Avid NEXIS | PRO+ running the System Director, and any combination of PRO and PRO+ Engines. See "System Configuration Limits" on page 18 for more information.
[NEW] This release also supports Ubuntu 22.04 for all clients (originally supported only for MediaCentral | Cloud UX). The Avid NEXIS Client Setup and User Guide now includes steps to install and configure Ubuntu on client systems.
> **Note:** The Ubuntu kit does not support the Client Manager GUI.
Client Fixes This patch includes the following fixes for Avid NEXIS clients:
If a client mounts Workspaces from more than one Avid NEXIS | Cloud Storage system at the same
- time, unexpected behavior can occur. This happens if the mounted Workspaces have the same
names, even if they are on different Avid NEXIS | Cloud Storage systems.
- [SSENG-37493 & 37525] Resolved an issue that caused Media Composer running on macOS clients to
halt with the error message “VideoEffectConsumer::ChangePixelFormat()” when using Avid NEXIS client 2023.7.0 or 2023.8.0 and sequences with effects such as TC burn layer or swish pans.
Server Fixes This patch includes the following fixes for Avid NEXIS core:
- [SSENG-37504, 37174, 37344] Resolved an issue that prevented customers from seeing all Avid NEXIS
Workspaces when using version 2023.8.x on the system and version 2023.3.0 on clients.
- [SSENG-37249] Occasionally when creating a new file system on Avid NEXIS | SDA+ a spurious error
message was displayed that the System Director was not running. The message could be safely ignored, and the file system creation process would complete normally.
- [SSENG-37190] Some customers experienced an unexpected restart of the Avid NEXIS System
Director on versions 2023.7.0 and 2023.8.0. This was caused by a race condition affecting a critical resource, and is fixed in this patch.
Avid NEXIS | EDGE Fixes and Notes [SSENG-37504, 37174, 37344] Resolved an issue that prevented customers from seeing all Avid NEXIS
- Workspaces when using version 2023.8.x on the system and version 2023.3.0 on clients.
The fix for this issue in on-premises systems disabled some workflow improvements for EDGE. To enable those improvements, you must install the 2023.8.1 software with toggles.
In the Management Console > System Setup > Install page, there is a field labeled Options, in which you type a string to set one or more toggles. Toggles can be combined, separated by commas, to reduce the number of times the system will need to be restarted.
To enable the workflow improvements for EDGE, use the 2023.8.0 client and type the following in the Options field when installing this patch on the server:
--toggles=dir_search_streaming:1 The Install page will look like the following:
- [SSENG-37286] File system notifications to Avid NEXIS | EDGE are occasionally lost. Avid is continuing
to work on this issue.
Type the following in the Options field to restart the communication process daily at 03:00 (3:00 AM local time):
--toggles=rabbitmq_restart:1 TIP: To combine both toggles in the same operation, type the following:
--toggles=dir_search_streaming:1,rabbitmq_restart:1 What’s New in Avid NEXIS 2023.8.0 (On-Premises Only) Avid NEXIS version 2023.8.0 is a major release for on-premises systems only that contains the following features and fixes:
- Support for 175 Million files using the Avid NEXIS | SDA+
- Support for using Windows 10 build 22H2 on Avid NEXIS clients
- Improved remote performance (in Avid NEXIS | EDGE workflows), especially for listing directories with
large numbers of files Customers with Avid NEXIS | SDA+ and All-Mirror Engines or licenses should not upgrade to version 2023.8.0 or 2023.8.1. See "Known Issues" on page 24 for more information.
Support for 175 Million Files with Avid NEXIS | SDA+ This release includes support for up to 175 million files on a system that includes an Avid NEXIS | SDA+, the Avid NEXIS | FS Advanced license, and any combination of E-Series and F-Series Engines See "System Configuration Limits" on page 18 for more information.
The actual file limit can vary depending on the length of the file and directory names (less than or equal to 64 bytes/ASCII characters). Files with special characters (non-ASCII, such as letters with diacritical marks) will reduce the file count limit.
If a system is nearing the maximum number of files, a message to check the event logs is shown on the Management Console. The event log contains a warning when the file system is 90% and 95% full.
Windows 10 Builds: Added and Removed Support With the addition of support for Windows 10 build 22H2, Avid has dropped support for the following Windows 10 builds because Microsoft is no longer offering security patches for them: Build 21H2, 21H1, 20H2, and 2004.
VFS Gateway Fixes [SSENG-34729] Improved the behavior of LDAP log files. A new log file is started weekly or whenever
- the current log file reaches 20MB. The current log file contents are copied to a file named
ldap.log.<datestamp>.
A maximum of 10 log files are kept, with the oldest being replaced as needed to prevent the log file folder from growing excessively.
Server Fixes [SSENG-37057] After upgrading an Avid NEXIS system to version 2023.7.0, F-series and PRO+
- Engines reported an invalid USM firmware version. This issue did not affect Avid NEXIS E-series or PRO
40TB Engines and did not affect system operation.
- [SSENG-37157] Resolved an issue introduced in Avid NEXIS | VFS version 2023.7.0 that caused
incorrect reads of small files, especially those written frequently and read by multiple readers. All customers running version 2023.7.0 must upgrade as soon as possible to version 2023.8.0 (or higher).
[SSENG-36967] In the Management Console (full system mode and Engine mode) the Storage System
- Name is now consistent with the same field in the Agent. When running in Engine mode, the display
now includes the Storage System Name and the Engine name.
What’s New in Avid NEXIS 2023.7.0 Avid has removed version 2023.7.0 from the Downloads site and recommends upgrading to version 2023.8.0 or higher as soon as possible, especially for installations using Avid Media Composer.
Avid NEXIS version 2023.7.0 is a major release that supports the following.
Simplification of Avid NEXIS Licensing Model This release introduces Modular Licensing for perpetual (Integrated Solution) Engines, to better support moving Engines into and out of systems as your project demands change, and to simplify the workflow for rental houses deploying Engines on a project basis to their customers. The Avid NEXIS Administration Guide and Avid NEXIS Setup and Maintenance Guide have been updated to describe the changes, how to activate a modular license on an Engine, and how to add that engine to a system. Capacity licensing will continue to be used for subscription systems.
Modular Licensing FAQs
- Upgrading an existing shared-storage system to Avid NEXIS v2023.7.0 does not require any changes
to your current licensing schema.
- After the upgrade, a new column called Modular License is displayed on the Media Packs page,
indicating whether the Media Pack is in an Engine with a Modular License. Before the license is activated, the column displays N/A. After the modular license is activated, the column displays either Flexible Protection or All Mirror Protection, depending on the license details.
- You can add new Engines with Modular Licenses to your existing system with no effect on the
capacity license already in place.
- Modular licenses allow an Engine to function as a System Director for a new system, or as a storage-
only Engine in a new or existing system. You can enable or disable the System Director service on the Engine as needed through the Agent. There is no limit to how often an Engine can change roles in this way.
- If you purchase a new set of Engines and an SDA+, each will have a unique System ID. The SDA+ will
still require a capacity license (to enable the System Director functionality and either Flexible or All- Mirror protection for the entire system), but each Engine will have a Modular License. You can create a new shared-storage system with these components, and get the flexibility to remove or add more Engines to this system without affecting the capacity license.
End of Support for Avid NEXIS | Cloudspaces (Amended August 2023) The Avid NEXIS Cloudspaces feature is no longer supported in version 2023.7.0 and higher. It will continue to appear in the Management Console until further notice.
Do not upgrade to Avid NEXIS version 2023.7.0 if you have an active or expired Cloudspaces subscription. Contact Customer Support for assistance.
24-Hour Time Format All fields in the Management Console that accept user input for the time now indicate that time must be entered in 24-hour format. For example, 4 PM must be entered as 16:00.
Corrections to Update Procedure for Avid NEXIS | VFS Gateway The procedure in the Avid NEXIS | VFS Gateway Guide for upgrading the Client and VFS Gateway software on a CentOS VM has been updated based on recent changes to the contents of the Client software kit.
SSD Firmware Update for Avid NEXIS | PRO 40TB The firmware on the SSD system drives used in Avid NEXIS | PRO 40TB Engines will be automatically updated when you upgrade to version 2023.7.0. This firmware update provides improved stability and reliability, and adds no perceptible time to the system upgrade process.
If you replace a failed SSD with a shelf spare in a PRO 40TB running version 2023.7.0 (or higher), the firmware on the replacement SSD is automatically updated then.
Server Fixes
- SSENG-34217: After importing a file system onto an Avid NEXIS system, attempts to modify a
Workspace (size or other attributes) in the Management Console resulted in a SOAP error.
- SSENG-36379, SSENG-36096: System stopped responding when one client deleted a file in a
mirrored Workspace while another client was reading the file.
- SSENG-34813: Corrected how the system handles Storage Group names when importing a file
system. This error occurred after migrating the System Director service from an Engine (embedded) to a System Director Appliance (external). After the migration, new Media Packs could not be bound to the system.
- SSENG-28086: On the Workspaces page in the Management Console, added a column showing the
percent of space used in the Workspaces.
Cloud Fixes SSENG-35033: Offline license activation now works correctly.
- Client Fixes
- SSENG-31166: EDIUS editor stopped working when a client, running Avid NEXIS Client software
versions 21.8 and higher, saved a project on an Avid NEXIS system.
- SSENG-33292: On a CentOS client system, a CIFS-mounted Workspace showed a different file count
than the same Workspace shared through Avid NEXIS | VFS Gateway.
- SSENG-35214: System became unresponsive while handling I/O on bins that had Japanese
characters in the bin names in some versions of Media Composer.
SSENG-35252: Avid NEXIS Client version 2023.3.0 was not honoring Bandwidth Limits set for devices.
- What's New in Avid NEXIS 2023.3.0
This is a major release that introduces the following new features and platforms:
- Avid NEXIS | F2 SSD is a new double-density all-Flash Engine offering flexibility, redundancy, and
expansion. For more information, see "About Avid NEXIS | F2 SSD" on the next page.
Improved power supply units for Avid NEXIS F-Series systems and Avid NEXIS | PRO+ that meet a
- stricter standard for energy efficiency. The label on the new power supply units includes the suffix -
ECO to distinguish them from the older models with the suffix -HE. The part numbers on the ECO models have changed as well.
> **Note:** See the Avid NEXIS Setup and Maintenance Guide for details on the old and new labels and part
numbers.
Within one Engine, the power supply units must be the same type, either HE or ECO. In a shared- storage system of multiple Engines, there can be a mix of HE and ECO power supplies.
- Allows a greater than 20-minute change in the system time with no effect on an existing license. In
Avid NEXIS versions 2022.5.x through 2022.12.0, changing the system time by more than 20 minutes would invalidate the license. This could happen if the time was entered in 12-hour format and later changed to 24-hour format. This fix allows the time to change by a larger amount, including to correct the time to 24-hour format.
> **Note:** Changing the time zone, and the change between Standard Time and Daylight Saving Time, do
not affect the license.
All time fields in the Agent and the [[[Undefined variable Title.MgtCons]]] require 24-hour format.
For example, to enter a time of 4:00 PM, enter 16:00, not 04:00. The Avid NEXIS documentation now contains this information.
Supports a new licensing model for Avid NEXIS | Cloud Storage systems. Existing Avid NEXIS | Cloud
- Storage systems can be upgraded to version 2023.3.0 to take advantage of this new support. Before
the upgrade, the [[[Undefined variable Title.MgtCons]]] contains a button to deactivate the current license. After the upgrade, that button is no longer displayed. After you upgrade to this version, your system will need a new license if you want to change the capacity or the renewal date. (See also "Avid NEXIS Client Issues" on page 25.)
- Added an Avid NEXIS Client installer kit for Ubuntu LTS 22.04 Linux to support newer versions of
MediaCentral | Platform. (Note: Client Manager GUI support is not included. This release supports Ubuntu command-line operations only.) See MediaCentral | Cloud UX documentation for installation and migration steps.
About Avid NEXIS | F2 SSD Avid NEXIS | F2 SSD supports redundant controllers, each with dual 100GbE interfaces. This model supports one or two all-SSD Media Packs and up to two spare drives as follows:
- 3.84TBdrives, yielding a total Engine capacity of 38.4TB (one Media Pack) or 76.8TB (two Media
Packs) 15.36TB drives, yielding a total Engine capacity of 153.6TB (one Media Pack) or 307TB (two Media
- Packs)
When running the embedded System Director Service, up to four Avid NEXIS | F2 SSD Engines can be combined in one shared-storage system (up to 4 Media Packs total).
Engine Capacity vs. License Capacity for Avid NEXIS | F2 SSD Avid NEXIS licenses are capacity based, but the Avid licensing infrastructure is integer based. Therefore, licenses for Avid NEXIS | F2 SSD are rounded up as follows:
Number of Media Packs Total Engine Capacity License Capacity 1 38.4TB 39TB 2 76.8TB 78TB 1 153.6TB 154TB 2 307.2TB 308TB The Avid NEXIS | F2 SSD can also be added to an existing shared-storage system where another Engine runs the embedded System Director, or one that uses a [[[Undefined variable Title.SDA-long]]].
The documentation has been updated to fully describe this new model and how it can be used.
Server Fixes in This Release
- SSENG-33705 Avid NEXIS | F5 NL systems now support LACP.
- SSENG-34136 Corrected a discrepancy between the system time as set in the Agent during initial
setup and the time displayed in the Management Console on the fully-configured system. This mismatch occurred only on Avid NEXIS F-Series, Avid NEXIS | PRO+, and Avid NEXIS | SDA+ models and in some cases inactivated the license.
- SSENG-34717 Applying a client bandwidth value greater than 10 caused an error.
- SSENG-35045 Corrected how the Storage Manager handles client speed values. The bug caused
systems to report Delayed Write Failures and No Connection errors when copying files to a Workspace.
Client Fixes in This Release
- SSENG-30949, SSENG-32268, SSENG-32360, SSENG-32635, SSENG-32754, SSENG-32941, SSENG-
33129 Compressed the Avid NEXIS code to work in the smaller stack available on Apple M1 Silicon systems. This prevents many of the kernel panics (related to stack overflow issues) seen on this platform.
SSENG-33648 On Avid NEXIS clients running version 2022.9, mixdown/export of large sequences
- took much longer than on previous versions. This has been fixed in version 2023.3.0.
Cloud Fixes in This Release
- SSENG-33556 Improved the delete performance for Avid NEXIS | Cloud Storage systems.
Updated Security Guidelines As system and network security attacks become increasingly more inventive and persistent, Avid is adopting a new security strategy to help you, our customer and partner, better protect your assets and intellectual property. As you might know, Avid has traditionally recommended Symantec Endpoint Protection as the preferred and qualified solution for much of the Avid product line. As of Q3, 2020, Avid is introducing a more flexible strategy that provides general guidelines for protecting your Avid systems. This new policy allows you to choose the best security solution for your organization, while still following Avid best practices. For more information, see Avid Security Guidelines and Best Practices for Dealing with Virus Threats.
Secure Data Deletion For customers who require a guarantee that all deleted data is done so completely and securely (after deleting a Workspace), see the following URL for Secure Data Deletion tools available from Seagate, officially supported by Avid NEXIS: https://www.seagate.com/support/secure-erase-matrix/ Hardware and Software Requirements To meet the stringent needs of media applications the Avid NEXIS family of storage solutions is built using patented intellectual property in Avid NEXIS software running on Avid NEXIS hardware. Avid tests and qualifies configurations of Avid NEXIS software deployed on Avid NEXIS hardware. The Avid NEXIS System Director is designed to allow the binding of Avid NEXIS only. Avid has not published its file system specifications, protocols, or file system APIs used among the components of the file system (Avid NEXIS System Director, Avid NEXIS client, Avid NEXIS expansion engines) and these are subject to change without notice. Therefore, any connection of third party storage as part of an Avid NEXIS file system is not a licensed, approved or supported configuration.
Supported Upgrade Paths You can upgrade any Avid NEXIS system according to the upgrade path described next. For instructions on how to upgrade an Engine or System Director Appliance, see the Avid NEXIS Setup and Maintenance Guide, or the Avid NEXIS Administration Guide.
All Avid NEXIS systems can upgrade to the following versions.
Current Avid NEXIS Version Can Upgrade Directly To On-premises systems 6.x, 7.x, 2018.x, 2019.x, 2023.12.0 2020.x, 2021.x, 2022.x, 2023.x Do not upgrade any on-premises system to 2023.7.0.
Do not upgrade any system that has or has previously had Avid NEXIS | Cloudspaces to Current Avid NEXIS Version Can Upgrade Directly To 2023.8.0 or higher.
Avid NEXIS | Cloud 2021.3.1 and newer 2023.12 Storage systems To upgrade Avid NEXIS | Cloud Do not upgrade any Avid NEXIS Cloud Storage Storage 2020.7.x and earlier system to 2023.7.0 or 2023.8.0.
to Avid NEXIS | FS version 2021.x, please contact Avid Customer Service or your sales representative to assist with the upgrade.
System Director and Client Version Compatibility An Avid NEXIS server and client compatibility issue has been identified that can cause media consistency errors when using Avid NEXIS 2023.8 or a newer client with Avid NEXIS 2023.8 or an older server. If the issue occurs, it will most likely impact media files that are frequently modified. Although rare, it may cause portions of media to be unreadable. Avid strongly recommends that customers upgrade the Avid NEXIS core to the minimum recommended version of Avid NEXIS 2023.12 immediately.
See the Avid NEXIS Compatibility Notice and FAQ on the Avid Knowledge Base for more information.
Supported Client Operating Systems The following table lists the currently supported client operating systems with Avid NEXIS. All of the listed client operating systems support single or dual 10Gb Ethernet network interface cards.
All client computer names must be unique to connect to Avid NEXIS. A client computer name is treated as a user name, and all user names on a shared-storage system must be unique.
Operating Supported Versions Notes System
> **Note:** macOS 13.x (Ventura) with latest updates
macOS clients are not supported with Avid NEXIS | Cloud Storage 12.x (Monterey) with latest updates systems.
11.x (Big Sur) with latest updates CentOS 7.9, 7.8, 7.7, 7.6 General Avid NEXIS Client use 7.5, kernel 4.4.174-1.el7 Supported only on MediaCentral | Cloud UX systems running CentOS 7.5 7.5, kernel 3.10.0-862.el7.x86_64 See the Avid Audio and Video Compatibility Charts on the Avid Knowledge Base page for more information on compatibility.
7.4, kernel version 3.10.0-693.17 Specifically for use with AutoDesk Flame 2021; also see "Hardware and Software Requirements" on the previous page.
Ubuntu 22.04 To migrate MediaCentral | Cloud UX Operating Supported Versions Notes System systems from CentOS to Ubuntu, see the MediaCentral Cloud UX Documentation.
Windows 11 build 22H2 11 build 21H2 See "Windows 10 Issues" on page 27.
10 build 22H2 Windows Server 2022 with latest Service Pack 2019 with latest Service Pack CentOS Version Compatibility with Avid NEXIS Client and VFS Gateway Versions The following versions of CentOS support the specified versions of the Avid NEXIS Client software and the Avid NEXIS | VFS Gateway (formerly Avid NEXIS | Linux File Gateway) software.
On a given CentOS VM version, you can run any of the following versions of the Client and Gateway.
CentOS Version Supported Avid NEXIS Client and VFS Gateway Versions 7.9 2022.9.0 and higher 7.8 2021.3.x through 2022.5.x (inclusive) 7.5 2019.12.0 through 2021.3.x (inclusive) Supported Browsers in an Avid NEXIS On-Premises Environment The following are the minimum browser versions qualified for the current Avid NEXIS release stream. These browsers were qualified with the client operating systems supported in the current release.
Operating Supported Browsers System Windows Microsoft Edge, Mozilla Firefox, Google Chrome macOS Apple Safari, Mozilla Firefox, Google Chrome
> **Note:** On macOS v10.15 (Catalina), do not use Chrome for initial system setup or to access the
Agent. Use Safari instead.
Compatibility with Other Avid Products This Avid NEXIS version is broadly compatible with other Avid and third-party products.
The full compatibility matrix of Avid editors and hardware is available on the Avid support site at the following URL: Avid Audio and Video Compatibility Charts Third Party Editor Compatibility Avid NEXIS Workspaces are optimized for Media and Entertainment workflows and can be successfully used with most industry standard editing, finishing, compositing, grading and animation applications, including but not limited to:
Adobe® After Effects®
- Adobe® Premiere® Pro
- Apple Final Cut®1
- Autodesk Flame®2
- Autodesk Maya®
- Blackmagic Design DaVinci Resolve
- Foundry Nuke®
- Grass Valley® EDIUS® Pro
- Maxon Cinema 4D®
- System Configuration Limits
The following table lists the configuration limits for on-premises and Avid NEXIS | Cloud Storage systems in the current release.
On-Premises Limits Item Embedded System Director System Director Appliance Media Packs (per 4, in any combination of Scale-Out and 8 in a High Performance Storage Group system) High Performance 24 total (optionally including up to 8 in a High Performance Storage Group) with the Avid NEXIS | VFS Standard or Avid NEXIS | FS Standard license and any combination of Avid NEXIS Engines 64 total (optionally including up to 8 in a High Performance Storage Group) with the Avid NEXIS | VFS Advanced or Avid NEXIS | FS Advanced license, and any combination of Avid NEXIS Engines Media Packs (per 1 in all 2U chassis (Avid NEXIS | E2, Avid NEXIS | E2 All-Mirror, Avid NEXIS | E2 SSD, Avid Engine) NEXIS | PRO, Avid NEXIS | F2, Avid NEXIS | F2X, Avid NEXIS | PRO+) 1-2 in Avid NEXIS | F2 SSD 1–2 in all 4U chassis (Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror) 4–8 in all 5U chassis (Avid NEXIS | E5, Avid NEXIS | E5 NL, Avid NEXIS | E5 All-Mirror, Avid NEXIS | F5, Avid NEXIS | F5 NL) Storage Groups 4, optionally including one High 32, optionally including one High Performance Storage Group Performance Storage Group Workspaces 1024 (including Workspaces for Teams) 3072 (including Workspaces for Teams) Teams 19 80 Team Quotas Up to 255 Team Quotas per system (Teams have only one quota per Storage Group — which can be increased or decreased — As of Final Cut Pro X10.4, you can store library files on Avid NEXIS instead of on local drives.
You must use the CentOS 7.4 kernel specified by Autodesk based on the Flame version you intend to use for connecting to Avid NEXIS.
Item Embedded System Director System Director Appliance but can have a quota in multiple Storage Groups) Team Admin Users No enforced limit Users (Clients) 5640 (including Users in Teams) User Groups 1028 (including User Groups in Teams) Group Non-Team users can belong to 71 non-Team user groups Memberships per Team users can belong to 71 user groups in the same Team User Connected (Active) 40 with Avid NEXIS E-Series/F-Series 165 with Avid NEXIS | VFS Standard or Avid Clients Engines NEXIS | FS Standard license 30 with Avid NEXIS | PRO or Avid NEXIS | 330 with Avid NEXIS | VFS Advanced or Avid PRO+ NEXIS | FS Advanced license Up to 10 to a High Performance Storage Group (Avid strongly recommends no more than 10) Files and Folders 8 million in Avid NEXIS E-series/F-Series 175 million in configurations with an Avid configurations NEXIS | SDA+ and the Avid NEXIS | FS Advanced license running Avid NEXIS 5 million in configurations where the version 2023.8.0 or higher System Director service runs on an Avid NEXIS | PRO+ 28.4 million in configurations with an Avid NEXIS | SDA or Avid NEXIS | SDA+ with the 3 million in configurations where the Avid NEXIS | FS Standard license.
System Director service runs on Avid NEXIS
> **Note:** | PRO
Actual limit depends on file name length. Limit assumes 67 ASCII characters (67 bytes). Longer average file names reduce the file count limit.
Files per folder Avid recommends no more than 5000 files per folder in Workspaces.
Pathnames Total bytes = 255 (Workspace name + path + filename)
> **Note:** Unicode characters can be multi-byte.
Cloud System Limits Avid NEXIS uses UDP datagrams for control traffic. Networks supporting Avid NEXIS must allow framgmented UDP traffic and minimize reordering of fragments because operating systems reject out- of-order fragments.
Item Limit Media Packs (per system) 1 (2PB capacity) Workspaces 3072 Teams 80 Workspaces, users, and groups created by a Team count against the overall system limits.
Item Limit Team Quotas Up to 255 Team Quotas per system (Teams have only one quota per Storage Group — which can be increased or decreased — but can have a quota in multiple Storage Groups) Team Admin Users No enforced limit Users (Clients) 5640 (including Users in Teams) User Groups 1028 (including User Groups in Teams) Group Memberships per User Non-Team users can belong to 15 non-Team user groups Team users can belong to 15 user groups in the same Team Connected (Active) Clients 330 Files and Folders 28.4 million
> **Note:** Actual limit depends on file name length. Limit assumes 67 ASCII characters
(67 bytes). Longer average file names reduce the file count limit.
Files per folder Avid recommends no more than 10,000 files per folder, particularly for Workspaces used by Avid MediaCentral | Production Management (formerly Avid Interplay | Production).
Pathnames Total bytes = 255 (Workspace name + path + filename)
> **Note:** Unicode characters can be multi-byte.
System Performance (On-Premises) This section describes the bandwidth for the different Media Pack bind options, and the aggregate throughput for Storage Groups using those Media Packs.
Bandwidth by Media Pack Bind Setting The nominal bandwidth rating for all-read workflows depends on the Engine type and Media Pack Bind Setting, as follows:
Bind Option Bandwidth Rating (Nominal) Supported On Scale Out 480MB/sec Avid NEXIS | PRO+ Avid NEXIS | F2, Avid NEXIS | F2X, Avid NEXIS | F5 High Performance 700MB/sec Avid NEXIS | PRO+ Avid NEXIS | F2, Avid NEXIS | F2X SSD, 1 Media Pack All Reads: 4GB/sec Avid NEXIS | F2 SSD only All Writes: 2GB/sec GB/sec Write SSD, 2 Media All Reads: 8GB/sec Packs All Writes: 4GB/sec Bind Option Bandwidth Rating (Nominal) Supported On 50/50 reads/writes: 4GB/sec Read, 2GB/sec Write Aggregate Bandwidth by Media Pack Protection Type The actual write bandwidth depends on protection type. Aggregate bandwidth is therefore a function of protection type and the proportion of reads to writes in the workflow.
> **Note:** In a mixed configuration of Avid NEXIS E-series and Avid NEXIS F-Series Engines in a Storage Group, the
throughput will be between the ratings for an all E-series or all F-series system.
The following tables provide data on the expected bandwidth for Avid NEXIS F-Series Engines (including Avid NEXIS | PRO+ ) as an aggregate of all the Media Packs in a given Engine by protection type and R/W proportion per Media Pack.
To calculate total system performance, multiply these figures by the number of Media Packs in the Storage Group. A typical workflow is 80% reads and 20% writes.
Scale-Out Performance Scale-Out performance is available on all models except Avid NEXIS | F5 NL. Scale-Out is the best choice for Media Mirroring (not supported on Avid NEXIS | F5 NL or Avid NEXIS | PRO+).
Media Pack Protection MP Protection and Engine Protection Read% Write% None One Two Disk One Disk + Two Disk + Disk Mirroring Mirroring 100 0 480 MB/sec 480 480 480 480 90 10 480 474 468 427 417 80 20 480 468 457 384 369 70 30 480 463 447 349 331 60 40 480 457 436 320 300 50 50 480 452 427 295 274 Usable Storage 100% 89% 80% 44% 40% High Performance High Performance is available on Avid NEXIS | PRO+, Avid NEXIS | F2 and Avid NEXIS | F2X. Media Mirroring is not supported with High Performance Storage Groups.
Media Pack Protection MP Protection and Engine Protection Read% Write% None One Two Disk One Disk + Two Disk + Disk Mirroring Mirroring 100 0 700 MB/sec 700 700 NA NA 90 10 700 691 683 NA NA 80 20 700 683 667 NA NA 70 30 700 675 651 NA NA Media Pack Protection MP Protection and Engine Protection Read% Write% None One Two Disk One Disk + Two Disk + Disk Mirroring Mirroring 60 40 700 667 636 NA NA 50 50 700 659 622 NA NA Usable Storage 100% 89% 80% NA NA SSD Performance Updated values April 2023 SSD Performance is the only bind option available on Avid NEXIS | F2 SSD Engines. Media Mirroring is not supported for Avid NEXIS | F2 SSD Engines.
Media Pack Protection Read% Write% One Disk Two Disk 100 0 4000 4000 90 10 3822 3800 80 20 3644 3600 70 30 3467 3400 60 40 3289 3200 50 50 3111 3000 Usable Storage 89% 80% Drive Rebuilds and System Performance Updated SSD values April 2023 When a drive in a Media Pack fails, the data from that drive is rebuilt from the other drives in that Media Pack, and involves only those drives. During a rebuild, the Media Pack’s performance rating drops by the rating of one drive (10%). With no I/O on the system, the fastest a drive can be rebuilt is also equal to the rating of one drive.
On a Media Pack that is under full load (at complete bandwidth capacity), the minimum repair rate is 512KB/s. As the drive is rebuilt it begins contributing to the overall Media Pack performance rate for both reads and writes, so during the rebuild, the rate gradually decreases.
Performance Type Rebuild Rate (Media Pack at 100% capacity) Drive Size Estimated Rebuild Time Scale-Out 48MB/sec 4TB 24 hours 6TB 36 hours 0.17TB/hr or ~6hr/TB 10TB 60 hours 14TB 84 hours 16TB 96 hours High 70MB/sec 4TB 16 hours 0.25TB/hour, or ~4 hr/TB 6TB 24 hours 10TB 40 hours 14TB 56 hours Performance Type Rebuild Rate (Media Pack at 100% capacity) Drive Size Estimated Rebuild Time SSD 700MB/sec 3.48TB ~1.3 hours 2.52TB/hour, or ~24 min/TB 15.3TB ~6 hours
> **Note:** 16TB drives are available for Avid NEXIS | F5 NL only.
The rebuild time increases with client load, and decreases as less data remains to be rebuilt.
Workspaces with One-Disk Protection are rebuilt before Workspaces with Two-Disk Protection, due to their higher vulnerability to a second drive failure.
Media Mirroring and System Performance Mirrored Workspaces allow Avid NEXIS clients to continue working through an Engine failure without interruption or needing to reconnect. To ensure all clients can work seamlessly through an Engine failure, provision the shared-storage system with enough bandwidth to account for an Engine being offline.
Known Issues The following are known issues with Avid NEXIS software or third-party vendors.
Avid NEXIS On-Premises Systems Issues Issue Number SSENG-37053: After updating an Avid NEXIS system to version 2023.7.0, some of the Controllers reported a Firmware Mismatch issue, and indicated that the USM version on the Controller was invalid. The mismatch is caused by extended firmware version checking in 2023.7.0 and does not necessarily indicate a problem.
Workaround:You can either ignore this message (it will clear on its own after about 24 hours) or reboot the Engine.
Issue Number (None): In the Management Console running Engine mode, the field labeled Storage System Name is incorrect. The value shown is the Engine name. (Engine mode is used only to activate a Modular License on a single Engine.) This will be fixed in a future release.
Issue Number SSENG-36438: If you attempt to bind a Media Pack immediately after unbinding it (for example, to change the bind performance from Scale-Out to High), the system might show an error about inadequate capacity on the license.
Workaround:After unbinding a Media Pack, wait a few minutes before attempting to bind it again. This allows the system to complete its internal status updates.
Issue Number SSENGHW-122, SSENGHW-123, SSENGHW-124: On Avid NEXIS | PRO+, and any Avid NEXIS F- Series with a single Controller, the amber Module Fault LED on the Controller remains lit, which normally indicates an error condition. However if the system reports no errors on the Dashboard and is functioning normally, you can disregard this LED state. This problem has been traced to an internal firmware issue and the fix will be in a later release.
Issue Number SSENG-31657 : When configuring an Avid NEXIS F-Series Engine (including Avid NEXIS | PRO+ and Avid NEXIS | SDA+ using the Agent for initial setup, the enclosure ID does not remain set, and continues to display the factory default of 00.
Workaround: Turn all of the power supplies off, then back on, on each Engine after updating the enclosure ID.
Issue Number (None): When looking at switch statistics (for Dell and NETGEAR switches), you might see the OutDiscard counter (on Dell switches) or the Transmit Packets Discarded counter (on the NETGEAR switch) incrementing. This is acceptable as long as the rate of discards is no more than 1% of the total packets transmitted, or as long as workflows are not experiencing any dropped frames.
Issue Number (None): Avid recommends avoiding the use of object names that include a pound sign (#) followed by numeric characters. The Macintosh Finder might incorrectly display the contents of folders whose name includes that sequence of characters. For example, “project # 12” might be erroneously displayed with some items duplicated and some items missing.
See the Avid NEXIS Administration Guide for more information on supported and unsupported characters and other restrictions.
Avid NEXIS | Cloud Storage Issues Issue Number SSENG-36923: You might see an error about the license directory being unavailable when trying to activate a license on a newly deployed Avid NEXIS | Cloud Storage system.
Workaround: Restart the Avid NEXIS | Cloud Storage system and try activating the license again.
Issue Number (None): You might run into issues running clients with multiple NICs, each of which is able to connect to an Avid NEXIS | Cloud Storage system.
Workaround: In clients that are specifically connecting to Avid NEXIS | Cloud Storage, enable only one NIC.
Avid NEXIS VFS Gateway Issues Avid NEXIS | VFS Gateway was introduced (as Avid NEXIS | Linux File Gateway) with Avid NEXIS version 2019.12.0. The utility was renamed in version 2022.9.0.
Issue Number (None): The keyboard actions to select multiple items (using the Shift or Control keys) do not work.
Issue Number SSENG-36654: The VFS Gateway tool cannot process Active Directory Groups or Users with wildcard characters in the Organizational Unit string (for example, OU=*Groups). Groups with special characters or wildcards can return unexpected results or no results at all.
Avid NEXIS Client Issues When a workaround exists, it appears in the paragraph directly following the issue description.
> **Note:** A user account with Administrator privileges is required to install the Avid NEXIS client software on your
workstations.
Issue Number SSENG-29506, SSENG-31340: Avid is aware of an issue with intermittent communication, often during system discovery, between an Avid NEXIS and clients running on certain configurations of VMware host systems. For more information, see the following articles:
- Recommended VMware Versions and Settings (Avid Knowledge Base)
- Network timeouts or packet drops with VMware Tools 11.x with Guest Introspection Driver (79185)
(VMware Knowledge Base) Issue Number SSENG-33268: Do not use the Remote Avid NEXIS setting in the Client Manager when on site with the target Avid NEXIS system. This setting is designed for remote connections, especially with the upcoming Avid NEXIS | EDGE collaboration tool. The Remote Avid NEXIS setting supports proxy workflows and push/pull file copying, but is not supported for on-premises or high resolution workflows. For all on- premises workflows, use the local, physical network and gateway connection.
Issue Number (None): If you mount a workspace by mapping a network drive in Windows, when you unmount the workspace and then mount a different workspace in Client Manager manually using the same drive letter, Windows Explorer displays the previous workspace name instead of the new workspace name.
Issue Number (None): The estimated amount of space available (usually measured in an amount of time at a particular resolution) might differ between what Avid NEXIS calculates and what the Avid editing system calculates. Avid NEXIS accurately reports the amount of space available for file storage. The Avid editing application accounts for overhead in formatting of the media and is more conservative in reporting how much space is available.
Issue Number (None): The Avid NEXIS Log Utility may occasionally fail to generate logs with the error message “Couldn’t find OAM logs”.
Workaround: Close the error message and generate the logs again.
Issue Number (None): If the Client Manager is connected to an Avid NEXIS system with dual controllers and the System Director service has switched over to the second controller, the Management Console launch button in the Client Manager does not redirect to the new System Director and cannot successfully open the Management Console.
Workaround: To launch the Management Console for an Avid NEXIS system, either open a browser and enter its IP address, or add the IP address of the redundant controller to the Remote Hosts list in the Client Manager.
Issue Number (None): On a client with multiple NICs, all network paths from the client to a particular Avid NEXIS must be via NICs with the same speed.
Mac Platforms and macOS Issues Issue Number SSENG-31725, SSENG-32551: The Apple Silicon (including M1, M2, etc.) processor has decreased the stack size allowed for the Avid NEXIS Client by 75%. Avid has been able to decrease the application size by half of what is needed, but there remain known kernel panics and other issues with this processor.
Issue Number SSENG-23026, Updated August 2021: Avid Benchmark Utility does not work automatically on Avid NEXIS clients running macOS 10.15 (Catalina) and newer. On these clients, you must explicitly allow permission for an application (including Avid Benchmark Utility) to have Full Disk Access.
Workaround: On the macOS client, click System Preferences > Security & Privacy > Privacy > Full Disk Access and check the box for avidbenchmarkd. You might need to provide Administrator credentials to unlock this function (Padlock icon).
avidbenchmarkd If the object is not shown in the list, run a test with the Benchmark Utility against the client; the test will fail, but running it causes the avidbenchmarkd object to appear in the list.
Issue Number (None): If Macintosh files are copied to a Windows system with the Macintosh resource fork files, the resource fork files cannot be copied to mounted workspaces from a Windows client. Avid NEXIS does not accept Macintosh resource fork files from Windows clients. Appropriate “properties” error messages are displayed if this is attempted.
Issue Number (None): If the Avid NEXIS Client software is installed accidentally on an unsupported macOS version, running the uninstaller does not work.
Workaround: Use AppCleaner (a free download) to uninstall the Avid NEXIS Client software, as follows:
1. Download AppCleaner from: http://www.freemacsoft.net/appcleaner/
2. Follow the instructions for removing an application (in this case, Avid NEXIS Client).
3. Restart the Mac.
CentOS Issues Issue Number SSENG-34797: The Avid NEXIS Client kit for CentOS does not install the Client Manager GUI.
Workaround: Do the following:
1. Extract the Avid NEXIS GUI Tools application from the installer kit using 7Zip on a Windows system.
2. Use WinSCP to move the GUI Tools application into the Downloads directory on the CentoOS client
system .
3. As the root user, install the GUI Tools with the following command:
[sudo] rpm -Uhv AvidNEXISGUITools-<version>.el.centos.x86_164.rpm --nodep
4. As the root user, launch the Application from the command line as follows:
[sudo] /usr/bin/avidnexisclientmanager Issue Number (None): Avid recommends not using the Development and Creative Workstation option when deploying CentOS 7.8 on an Avid NEXIS Client system as it can create a dependency conflict for packages required to install Avid NEXIS Client software. For existing CentOS clients, when upgrading the Avid NEXIS Client, if the installation fails with specific FUSE library conflicts, remove the existing FUSE libraries and retry the Avid NEXIS Client installation. Using the Development and Creative Workstation option can also create conflicts in port usage for Avid Benchmark Agent. If the ports are already in use, reboot the client to free up the ports.
Issue Number (None): CentOS clients using the GUI can experience a delay in seeing all files when browsing contents of Cloudspaces with more than a few thousand files. Browsing Cloudspaces files using the terminal avoids the delay.
Ubuntu Issues Issue Number (None): If your MediaCentral Cloud UX server is attached to your network through a 10Gb or greater connection, you might see reduced total bandwidth when using the Ubuntu client (v2023.3 or higher) versus the CentOS client (v2023.3 or higher).
Windows 10 Issues Issue Number SSENG-29069: On Windows 10 clients, when using TeraCopy to move large numbers of files to an Avid NEXIS Workspace (instead of using Windows Explorer), TeraCopy sometimes treats a file as a directory, and the Windows client displays an error that it cannot move the file. Avid strongly recommends not using TeraCopy.
Workaround: Use Windows Explorer or the Avid Data Migration Utility.
Issue Number SSENG-2571: On Windows 10 clients, automatic Windows driver updates can remove critical NIC driver settings needed for the correct functioning of the Avid Client.
Workaround: To prevent disruption of clients running Windows 10 (Professional and Enterprise), you can defer automatic driver updates as follows:
1. Right-click the “This PC” icon (formerly called “This Computer”).
2. Select Properties.
3. Select Advanced System Settings.
4. Click the Hardware tab, then click Device Installation Settings.
5. Select the option “No” to prevent downloading apps and icons automatically.
6. Click Save Changes.
Special Notes This section contains important information about the Avid NEXIS environment.
LDAP Requires ASCII User Names and Passwords The Avid implementation of LDAP (Lightweight Directory Access Protocol) requires that you restrict LDAP user names and passwords to ASCII. The LDAP/Avid NEXIS Account Synchronizer searches for groups and their users on an LDAP server and synchronizes (reconciles) user and group accounts by adding or removing users and/or groups from Avid NEXIS.
Fast User Switching Not Supported Fast User Switching is a Windows feature that allows multiple user accounts to log on to a computer simultaneously. Fast User Switching is enabled by default in Windows computers. The Fast User Switching feature and multiple concurrent logged on user modes are not supported in the Avid NEXIS environment. The Avid NEXIS software does not distinguish the different drive letters mapped to the same workspaces on the same computer. Conflicts appear in the following two scenarios:
When one user maps a drive letter to one workspace and another user maps the same drive letter to a
- different workspace
- When one user maps a workspace to one drive letter, and another user maps a different drive letter
for the same workspace