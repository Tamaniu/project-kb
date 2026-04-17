---
product: nexis
product-area: shared-storage
version: "2021.8.2"
release-date: 01/08/2021
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid NEXIS® ReadMe Version 2021.8.2 Avid recommends that you read all the information in this ReadMe file thoroughly before installing software or attempting to use the Avid NEXIS system. This ReadMe provides information that is not in the other Avid NEXIS documentation. This ReadMe applies to the v2021.x software releases of Avid NEXIS, which run on Avid NEXIS infrastructures.
> **Note:** Search the Avid Knowledge Base for the most up-to-date ReadMe file, which contains the latest
information that might have become available after the documentation was published. To view the online version, visit the Knowledge Base at www.avid.com/support.
This ReadMe provides hardware and software requirements, an overview of the major features of this release, and limitations and known issues. See the appropriate Avid NEXIS Setup Guide for information on physical connection of the system and loading the system and client software. You can access the documentation from the Avid NEXIS Knowledge Base.
For compatibility with other Avid products, see the Knowledge Base page for Avid Audio and Video Compatibility Charts.
> **Note:** Avid recommends that you purchase installation services with your Avid NEXIS system.
Revision History Date Release Changes Made 07/12/2021 2021.5.1 See “What’s New in Avid NEXIS 2021.5.1 (Clients Only)” on page 11 06/15/2021 2021.5.0 See “What’s New in Avid NEXIS 2021.5.0” on page 11 04/13/2021 2021.3.1 See “What’s New in Avid NEXIS 2021.3.1” on page 12 03/30/2021 2021.3.0 See “What’s New in Avid NEXIS 2021.3.0 (On-Premises Only)” on page 13 Contents What’s New in Avid NEXIS 2021.5.1 (Clients Only). . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 What’s New in Avid NEXIS 2021.5.0. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 What’s New in Avid NEXIS 2021.3.1. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12 What’s New in Avid NEXIS 2021.3.0 (On-Premises Only) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 13 Supported Upgrade Paths . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 14 System Director and Client Version Compatibility. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 15 Hardware and Software Requirements . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 15 System Configuration Limits . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19 System Performance (On-Premises) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 21 Known Issues. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24 Special Notes. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 29 Legal Notices. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 31 Accessing the Online Documentation Accessing the Online Documentation The Avid NEXIS documentation is accessible in PDF format from the Avid NEXIS Knowledge Base.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is
especially important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published.
New information is provided in the ReadMe file, available online.
You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view the online versions, visit the Knowledge Base at www.avid.com/US/support.
3. Check the documentation that came with your Avid application or your hardware for
maintenance or hardware-related issues.
4. Visit the online Knowledge Base at www.avid.com/US/support. Online services are available 24
hours per day, 7 days per week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient.
Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
g Avid NEXIS Enterprise customers can access online training from the following URL: How to Activate Avid NEXIS Enterprise Training For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
Recommended and Required Releases Recommended and Required Releases Avid NEXIS System and Client Releases The newest release is always recommended. The following Avid NEXIS | FS releases are either recommended or required in the cases listed below.
> **Note:** Avid NEXIS system (server) can be updated before the clients to allow server-only fixes to be
deployed faster. We recommend upgrading clients as soon as possible thereafter.
Server Client Guidance 2021.8.2 2021.8.x Strongly recommended for all Avid NEXIS systems (storage engines and SDA), and 2021.8.x Client for all except clients running on MediaCentral | Production Management (Interplay) servers.
Server fixes Avid NEXIS 2021.x is the last release stream to support LDAP authentication using DIGEST-MD5. Avid strongly recommends using TLS; enable TLS on the LDAP Domain controllers in your environment.
2021.8.1 2021.8.x Recommended for all Avid NEXIS systems Ability to grant administrative privileges to other users Support for client connections to remote Avid NEXIS systems, with network bandwidth and latency monitoring in Client Manager Support for Apple M1 Silicon Support for CentOS 7.9 as a client operating system Resolved issue in Avid NEXIS 2021.8.0 when adding a Storage Group Resolved Windows client permission issues seen in Avid NEXIS 2021.5.x Improved monitoring and handling of HDD health 2021.5.0 2021.5.1 Supported for all Cloud systems and new on-premises installations Updates to Avid NEXIS | Linux File Gateway; reduced email notifications from informational journal log entries; bug fixes
> **Note:** Avid NEXIS Client version 2021.5.0 is not recommended for Windows clients due
to the fix in v2021.8.x.
2021.3.1 2021.3.1 Supported for all Cloud systems and new on-premises installations.
Use 2021.3.1 Client version for clients running on MediaCentral | Production Management (Interplay) servers.
Installation Wizard fix, Avid NEXIS | Cloud Storage fixes, Improved handling of mirror writes during potential Delayed Write Failure conditions 2020.7.6 2020.7.6 Minimum version for all Avid NEXIS systems Important disk fixes for Media Mirroring.
Note: Avid NEXIS 2020.7.x is the last release stream to support:
• Red Hat Linux 6.5 as a client operating system • Avid NEXIS client connections to Avid ISIS storage Other Avid NEXIS releases are supported but not recommended due to disk issues resolved in recent releases. Customers should plan to upgrade as soon as possible.
Secure Data Deletion Avid NEXIS Version Downgrades On Avid NEXIS systems, installing an older version is not supported and can result in unforeseen consequences, up to and including data loss.
USM Firmware Releases The USM firmware package is a bundle of firmware for the hardware components in an Avid NEXIS, such as the power supply units, Controllers, and the BMC. Certain USM firmware versions are supported only with certain Avid NEXIS versions; see the following table for details.
USM upgrades are currently performed remotely by Avid. Contact Avid Global Customer Services for details.
USM Firmware Versiona versionb Package BMC Minimum Avid NEXIS Version Required USM 1.37/1.37a 0.01.003c Avid NEXIS 2019.2 and higher, on Avid NEXIS Enterprise, Avid NEXIS SDA, and Avid NEXIS | PRO 40TB with Controller 10 Can use USM 1.37 and 1.37a in the same Engine for models that support dual controllers 4.1.16d or 4.1.16g 2.0.0002 (for 4.1.16d) Avid NEXIS 2019.2 and higher, on Avid NEXIS | PRO 20TB and Avid NEXIS | PRO 40TB with purple fascia 2.00.1093c (for 4.1.16g) Controller USM 1.32 0.01.0034 Avid NEXIS 7.9.1 USM 1.16 0.01.0013 Avid NEXIS 6.x a. The USM version is shown on the Controllers page and the Engines page in the Management Console, as of Avid NEXIS version 2020.3.0. See the Avid NEXIS Administration Guide for details.
b. The BMC version is shown on the Controllers page in the Avid NEXIS Management Console.
Secure Data Deletion For customers who require a guarantee that all deleted data is done so completely and securely (after deleting a Workspace), see the following URL for Secure Data Deletion tools available from Seagate, the Avid NEXIS hardware manufacturer: https://www.seagate.com/support/secure-erase-matrix/ What’s New in Avid NEXIS 2021.8.2 What’s New in Avid NEXIS 2021.8.2 Avid NEXIS Version 2021.8.2 is a patch release that fixes the following issues:
• [SSENG-29984] Corrected a false warning message about some drives needing a firmware upgrade.
• [SSENG-29358] Fixed an error in Avid NEXIS 2020.7.5 and higher, where, when a Workspace reached a capacity that triggered a warning event (and the Workspace icon turned amber), after increasing the size of a Workspace and saving the change, the Workspace icon did not turn green again until the page display was changed.
• [SSENG-30129] During a redistribution after the addition of more Media Packs to a Storage Group with heavy client load (reads or playback) on the system, some Media Packs restarted, slowing down redistribution and degrading system performance.
What’s New in Avid NEXIS 2021.8.1 Avid NEXIS Version 2021.8.1 is a patch release that fixes the following Server issue:
• [SSENG-29947] On all Avid NEXIS systems, on-premises and Cloud, after upgrading to Avid NEXIS 2021.8.0 or installing it on a new system, adding a Storage Group can fail making the system unusable.
What’s New in Avid NEXIS 2021.8.0 (Revised) Avid NEXIS Version 2021.8.0 includes the following updates:
• The Avid NEXIS administrator can now allow other users to perform administrative operations on the system. The administrator adds users to a new group called System Administrators, who can then perform all the same management functions as the default administrator, including system upgrades and changes to the configuration. This offloads the management responsibilities from one person, and provides each trusted user with their own credentials (for better system security and management). The Avid NEXIS Administration Guide describes this feature.
> **Note:** Before upgrading to Avid NEXIS version 2021.8.0, make sure your system does not already have a
user group named System Administrators, or change the group name before performing the upgrade.
• (Updated Sept 2, 2021) The Client Manager now supports a new client resolution type, called Remote Avid NEXIS, that allows connections from an on-premises Windows client to an Avid NEXIS system connected through a public Internet connection secured by a VPN. This supports editors accessing media on an Avid NEXIS at their facility while they work from home. This is designed for low bandwidth media such as proxies and connections in the vicinity of the Avid NEXIS storage (not long-distance connections). Wi-Fi connections are also now supported in or outside the facility using the Remote Avid NEXIS setting. The Client Manager UI now shows read and write bandwidth and latency between the client and the Avid NEXIS system.
Performance and responsiveness will vary due to variations in Internet or Wi-Fi bandwidth and latency. The Avid NEXIS Client Guide describes these features.
• Improved the handling and automatic repair of Media Pack HDD drives in infrequent cases where a single slow or failed drive could slow the whole Storage Group and workflow.
What’s New in Avid NEXIS 2021.8.0 (Revised) • Support for CentOS 7.9 as a client operating system.
• Support for Apple M1 Silicon-based client computers (using ARM64e chips). Installing Avid NEXIS Client software on these systems requires some additional steps; see “Special Installation Notes for Avid NEXIS Client v2021.8.0 on Apple M1 Silicon Systems” on page 7.
Avid NEXIS Version 2021.8.0 includes the following bug fixes.
Server Fixes • [SSENG-28599] Fixed an issue with drive errors that caused Delayed Write Failures.
• [SSENG-28692] Fixed an issue with logging buffers that caused the system to stop responding after an upgrade from version 2019.10 to 2020.7.5.
• [SSENG-28886] Due to an underlying change in the Avid NEXIS operating system in version 2021.3.0 regarding how network interfaces are assigned, on Avid NEXIS | PRO Engines the Hardware Status field in the Management Console (Engines > Advanced > Hardware tab) displayed the error message “NIC-SETTINGS.” Client Fixes • [SSENG-29452] When an Avid NEXIS Linux client has a connection to a Workspace that is being monitored by Avid Media Indexer, an issue was found where, if an application looking at files in that Workspace set an attribute that had not changed, the Linux client reported this apparent change to the Avid NEXIS System Director, causing Media Indexer to receive excessive (erroneous) notifications about changed file attributes.
• [SSENG-29620] Using Windows Explorer to move files between folders of a Workspace caused a resource leak. This eventually led to a permissions issue and the client being unusable.
Rebooting the client temporarily resolved the issue. This condition has been fixed.
Special Installation Notes for Avid NEXIS Client v2021.8.0 on Apple M1 Silicon Systems For macOS 11 and later running on an Apple M1 Silicon system, you must perform a few steps before installing Avid NEXIS Client software, as follows:
1. Reboot the macOS Apple M1 Silicon client system into Recovery mode.
2. Set the security level to Reduced security.
3. Allow loading of third-party kexts (kernel extensions).
4. Reboot back to normal operation.
What’s New in Avid NEXIS 2021.8.0 (Revised)
5. Download the macOS Avid NEXIS Client software kit, and open it, then do the following:
a. On the Welcome screen, click Continue.
b. On the Software License Agreement screen, click Continue.
c. In the License dialog box, read the license agreement, then click Agree.
d. Enter your user name and password, then click Install Software.
What’s New in Avid NEXIS 2021.8.0 (Revised) e. In the popup window, click Open Security Preferences.
f. Click the lock icon to allow changes.
What’s New in Avid NEXIS 2021.8.0 (Revised) g. In the “Allow apps” dialog box, click Allow.
h. In the Avid NEXIS Client Installation window, click Close.
i. In the “Restart” dialog box, click Restart.
What’s New in Avid NEXIS 2021.5.1 (Clients Only)
6. Wait for the system to load the kext and rebuild the auxiliary kext collection.
After the system reboots, you might again see the System Extension Updated dialog box. If so, repeat the following steps:
1. Open the Security & Privacy System Preferences (see step 5e in the previous procedure).
2. Authenticate to make changes (steps 5f and 5g).
3. Allow the system to load your kext (step 5h).
4. Wait for the system to load the kext and rebuild the auxiliary kext collection.
5. Restart the system to load the new auxiliary kext collection (step 5i).
What’s New in Avid NEXIS 2021.5.1 (Clients Only) Avid NEXIS Version 2021.5.1 is a client-only patch that fixes the following bugs.
Client Fixes • [SSENG-29322] When transferring files from an on-premises Avid NEXIS system to an Avid NEXIS | Cloud Storage system, a timing issue related to client connection status caused the client to miss outstanding I/Os and fail to transfer some files.
• [SSENG-29452] On Linux clients connected to an Avid Media Indexer system, excessive change notifications caused the Media Indexer to stop responding.
What’s New in Avid NEXIS 2021.5.0 Avid NEXIS Version 2021.5.0 includes the following updates:
• Avid NEXIS | Linux File Gateway now includes a configuration test wizard that checks whether the information required to provide connection between the File Gateway and a remote Active Directory server was entered correctly, and a connection can be established. A configuration test wizard also checks information when using the integrated, local LDAP service inside File Gateway. The Avid NEXIS | Linux File Gateway Guide describes this new feature.
• Significantly reduced the number of informational messages that generate email notification.
• The Guest user account and group have been removed for Avid NEXIS | Cloud Storage systems only, for both new deployments and upgrades from an older version of Avid NEXIS. (The Guest user and group are still available for on-premises Avid NEXIS systems.) If you are using the Guest account or Guest user group on an Avid NEXIS | Cloud Storage system, remove all Workspace access for the Guest user, remove the Guest user from all user groups, and remove all other users from the Guest group before upgrading to this release.
What’s New in Avid NEXIS 2021.3.1 Avid NEXIS Version 2021.5.0 includes the following bug fixes.
Server Fixes • [SSENG-29356] On Avid NEXIS | PRO systems, the Hardware Monitor process could cause unexpected Controller reboots while collecting network statistics.
• [SSENG-29349] If the Guest user account had access to Workspaces on an Avid NEXIS | Cloud Storage system running version 2020.7.4 (or earlier), which was then upgraded to 2021.3.1, the system stopped working. The Guest user account and group was removed from Avid NEXIS | Cloud Storage in Avid NEXIS version 2021.3.1 due to security concerns. The Guest user account no longer existed after the upgrade, which caused a problem when updating the system metadata.
Client Fixes • [FSI-8200, FSI-7240] Improved the client logic that manages connections to Avid NEXIS servers to achieve better performance in certain busy contexts. One such context is FastServe Ingest for an XDCAM workflow with proxy generation, which can at times demonstrate slow transfer rates to Avid NEXIS storage. This change is expected to effectively eliminate that issue.
• [FSI-9105, FSI-9032, SSENG-29330, SSENG-24753] Fixed a resource leak that, depending on use and workflow, can cause gradual, unlimited growth of the virtual memory used by an individual Avid NEXIS Linux client.
• [SSENG-27409, SSENG-27744, SSENG-27552] On some Windows clients the Windows Explorer auto-refresh feature stopped working when a Workspace was mounted using UNC.
What’s New in Avid NEXIS 2021.3.1 Avid NEXIS Version 2021.3.1 is a patch release for all Avid NEXIS systems, including Avid NEXIS | Cloud Storage.
This release fixes the following issues:
Server Fixes • [SSENG-28795] Fixed an issue that prevented the previous release (Avid NEXIS 2021.3.0) from being installed on Avid NEXIS | Cloud Storage systems.
• [SSENG-28722] When installing Avid NEXIS version 2021.3.0 on a new on-premises system (initial configuration), the STATUS tab was displayed instead of the Configuration Wizard.
What’s New in Avid NEXIS 2021.3.0 (On-Premises Only) What’s New in Avid NEXIS 2021.3.0 (On-Premises Only) Avid NEXIS Version 2021.3.0 is a release for on-premises systems that introduces the following new features:
• Avid NEXIS Administrators can now assign specific administrative privileges to user groups, allowing members of those groups to manage Workspaces, users, or both. This allows the administrator to delegate some operations to trusted people. See the Avid NEXIS Administration Guide for more information.
• Avid NEXIS Administrators can now create new users with temporary passwords, and make the password for existing users temporary, for added security. This forces the user to change their password the next time they use the Client Manager to connect to an Avid NEXIS system (requires that both the Avid NEXIS system and the Client Manger are Avid NEXIS version 2021.3.0).
• Support for CentOS 7.8 as a client operating system, with some restrictions, and for Avid NEXIS | Linux File Gateway VMs. See “Avid NEXIS Client” on page 27 for more information.
• Avid NEXIS | Linux File Gateway can be deployed on CentOS 7.8 VMs; administrators can edit the Shared names, and Shared names no longer include the Avid NEXIS system name by default.
You can also upgrade to Avid NEXIS | Linux File Gateway version 2021.3.0 on existing CentOS 7.5 VMs. See the updated Avid NEXIS | Linux File Gateway guide.
• Support for Windows 10 build 20H2 and build 2004 as client operating systems.
• The Avid NEXIS icon has changed, and the Client Manager has new icons.
• CrowdStrike Endpoint protection is supported for Avid NEXIS 1GbE clients.
This release also includes fixes for the following issues:
Server Fixes • [SSENG-28389] Fixed an issue for systems using Avid NEXIS Mirror protected workspaces. If a write to the primary location experiences a potential Delayed Write Failure (DWF) after 14 seconds, the non-primary mirror will create the quorum consensus copy (3rd location) to ensure the write is successful to two mirror locations. In systems without Media Mirroring, Delayed Write Failures (DWFs) can still occur.
• [SSENG-28669] Fixed an issue caused by a slow disk read during a Read/Modify/Write operation resulting in unreadable media.
• [SSENG-27535] In the Management Console, removed the Preferences (on the System > Settings page) for Default LCT Threshold and Default Hard Disk Error Threshold. Modifying the default values for these settings has led to system errors. It is rarely necessary to change these values, and only with Avid Support guidance.
• [SSENG-27884] Under certain conditions with a full Workspace with an Error Event Trigger set to “Unused GB < 0” or “Used % > 100”, multiple writes to a file that is larger than the available free space caused excessive ‘Workspace full’ emails.
• [SSENG-27840] The Management Console continued to display a failed disk that had been removed from the system.
• [SSENG-27593] Improved reporting messages to the Management Console for bad disks.
• [SSENG-28046] Fixed an error for the percentage used value for System Director Metadata in the Management Console.
Supported Upgrade Paths • [SSENG-27839] The flag indicating an automatic system metadata backup had failed was not cleared when the backup later succeeded.
• [SSENG-27850] When a vulnerability scan was run against Avid NEXIS, excessive notification emails were generated.
• [SSENG-27491] The notification service was sending emails for events that should not have triggered a message, and was sending emails too often.
• [SSENG-28232] Fixed a memory leak issue in the Notification Service.
• [SSENG-26208, SSENG-25331] After an upgrade, Avid NEXIS reported error messages in the system logs for files that did not exist.
• [SSENG-28167] Fixed an issue where files with double-byte characters in the file name could not be copied to Avid NEXIS.
• [SSENG-28079] Removed obsolete logging functionality that caused a System Director crash.
• [SSENG-28019] Fixed an error reported when two Controllers in the same Engine were running slightly different USM versions (1.37 and 1.37A). These USM versions are supported on Controllers within the same Engine or SDA.
• [SSENG-27426] Changed the LACP configuration to improve load balancing in environments with equal-cost (ECMP) network firewall or router configurations.
• [SSENG-28443] Fixed an issue with the LDAP Sync Tool which did not recognize a slash character (/) in the CN (common name) attribute and could not import the user.
• [SSENG-28223] Fixed an issue on Avid NEXIS | PRO systems where the Network Status information was not shown on the Controllers page.
Client Fixes • [SSENG-28437] Fixed an issue where copying a file that included a double-byte character caused the Avid NEXIS Client to become unresponsive.
See also “Avid NEXIS On-Premises Systems” on page 26.
Supported Upgrade Paths You can upgrade any Avid NEXIS E-Series Engine, System Director Appliance, or Avid NEXIS | PRO according to the upgrade path described next. For instructions on how to upgrade an Engine or System Director Appliance, see the Avid NEXIS Setup and Maintenance Guide, or the Avid NEXIS Administration Guide.
Avid NEXIS Upgrade Paths The Avid NEXIS | Enterprise Engines, the System Director Appliance, and the Avid NEXIS | PRO can upgrade to the following versions.
Current Avid NEXIS Versiona Can Upgrade Directly To On-premises systems: 6.x, 7.x, 2018.x, 2019.x, 2020.xb, 2021.3.x, 2021.5.x, 2021.8.2 2021.8.x System Director and Client Version Compatibility Versiona Current Avid NEXIS Can Upgrade Directly To Avid NEXIS | Cloud Storage systems: 2021.3.1 and higher 2021.8.2
> **Note:** To upgrade Avid NEXIS | Cloud Storage 2020.7.x and earlier to Avid
NEXIS | FS version 2021.x, please contact Avid Customer Service or your sales representative to assist with the upgrade.
a. ISIS 1000 systems running version 6.x or 7.x should be upgraded directly to 2019.12.1 or higher, not to an interim version.
b. Avid identified an issue when upgrading from 2020.3.0 directly to 2020.7.0. This specific upgrade path is not supported. If you have already upgraded from 2020.3.0 to 2020.7.0 and encountered a problem, contact Avid Customer Care.
System Director and Client Version Compatibility The Avid NEXIS Client software works with the following versions:
Client Version Shared-Storage System Version 2019.x, 2020.7.x Avid ISIS version 4.7.5 and higher (minimum v4.7.9 recommended)
> **Note:** Avid NEXIS version 2020.7.x is the last Avid NEXIS release
stream that supports Avid NEXIS client connections to Avid ISIS v4.7.9 and newer. Because Avid NEXIS allows the system (server) version to be newer than the client, workflows that require connection to both Avid ISIS and Avid NEXIS can continue to use Avid NEXIS Client version 2020.7.x. for the foreseeable future.
2019.xa, 2019.x, 2020.x, 2021.3.x, 2021.5.0, 2020.x, 2021.3.x, 2021.5.0, 2021.8.x 2021.8.x a. Since Avid NEXIS v2019.2, the Shared Storage system can have a higher version than the client to allow deployment of server-only fixes. Avid recommends upgrading all clients to the same version as soon as practical.
> **Note:** The Avid NEXIS Toolbox and other utilities are tested and known to work only against a System
Director of the same version. If you want to install two different versions of the Toolbox on the same system, install one of them into a directory other than the default.
Hardware and Software Requirements To meet the stringent needs of media applications the Avid NEXIS family of storage solutions is built using patented intellectual property in Avid NEXIS software running on Avid NEXIS hardware. Avid tests and qualifies configurations of Avid NEXIS software deployed on Avid NEXIS hardware. The Avid NEXIS System Director is designed to allow the binding of Avid NEXIS only. Avid has not published its file system specifications, protocols, or file system APIs used among the components of the file system (Avid NEXIS System Director, Avid NEXIS client, Avid NEXIS expansion engines) and these are subject to change without notice. Therefore, any connection of third party storage as part of an Avid NEXIS file system is not a licensed, approved or supported configuration.
> **Note:** Avid NEXIS | Cloud Storage does not support third-party editing clients.
Hardware and Software Requirements The full compatibility matrix of Avid editors and hardware is available on the Avid support site at the following URL: http://avid.force.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility- Charts The following table lists the compatibility between Avid NEXIS and editors from vendors other than Avid:
Qualified Third-Party Editing Clients on On-Premises Avid NEXIS Workspaces Software Version Autodesk Flame 2021 You must use the CentOS 7.4 kernel specified by AutoDesk based on the Flame version you intend to use for connecting to Avid NEXIS.
Apple Final Cut Pro X (see “Final Cut Pro X 10.4.2 and higher Software” on page 30) n As of Final Cut Pro X 10.4, you can store library files on Avid NEXIS instead of on local drives.
Adobe Premiere Creative Cloud Premiere Pro 2018 (v12.1.1) and higher Blackmagic Design DaVinci Resolve 14.3 and higher Grass Valley EDIUS Pro 9 and higher Supported Client Operating Systems The following table lists the currently supported client operating systems with on-premises Avid NEXIS. All of the listed client operating systems support single or dual 10Gb Ethernet network interface cards.
> **Note:** Avid NEXIS | Cloud Storage supports only Windows and Linux clients.
Supported Client Operating Systems and Updates Operating System Version and Notes macOS 11.x (Big Sur) with latest updates 10.15.x (Catalina ) with latest updates; see also “macOS Clients” on page 26 and the following Knowledge Base page: Avid Products and macOS Catalina Support 10.14.x (Mojave) 64-bit with latest updates; see “macOS 10.14.5 and 10.14.6 Limited Support with Previous Avid NEXIS Client Versions” on page 17 Hardware and Software Requirements Supported Client Operating Systems and Updates Operating System Version and Notes CentOS Linux 7.9, kernel version 3.10.0-1160.15.2.el7.x86_64 7.8, kernel version 3.10.0-1127.el7.x86_64 7.7, kernel version 3.10.0-1062.1.1.el7.x86_64 7.6, kernel 3.10.0-957.el7.x86_64 7.5, kernel 4.4.174-1.el7 and 7.5, kernel 3.10.0-862.el7.x86_64
> **Note:** Avid supports CentOS 7.5 for use with MediaCentral | Cloud UX only. Refer to the
following Avid Knowledge Base page for more information on compatibility: Avid Audio and Video Compatibility Charts 7.4, kernel version 3.10.0-693.17
> **Note:** Avid supports CentOS 7.4 for use with Autodesk Flame 2021 only; see “Hardware and
Software Requirements” on page 15 Windows 10, build 20H2 (October 2020) 10, build 2004 (May 2020) 10, build 1909
> **Note:** For Windows 10 clients, see also “Windows 10 Clients and TeraCopy” on page 24 and
“Preventing Windows 10 Automatic Driver Updates” on page 24.
8.1 with latest updates Windows Server 2019 with latest Service Pack 2016 with latest Service Pack 2012 R2 with latest Service Pack macOS 10.14.5 and 10.14.6 Limited Support with Previous Avid NEXIS Client Versions In macOS 10.14.5 and higher, Apple has instituted a new notarization requirement that makes it and 10.14.6 incompatible with some Avid NEXIS client versions, as follows:
macOS Version Versiona Avid NEXIS Client 10.13.x 10.14.0-10.14.4 10.14.5 10.14.6 2019.2.0, 2019.2.2, 2019.4.0 Y Y Y Y 2019.4.1, 2019.4.2, 2019.5, 2019.6 Y Y N N 2019.8.0 and higher Y Y Y Y a. Avid NEXIS Client versions 2019.2.0 through 2019.4.0 are “grandfathered” for use with macOS 10.14.5 and 10.14.6.
Upgrading Avid NEXIS Client Software on Linux For information on upgrading Avid NEXIS Client software on a Linux client, see the Avid NEXIS Client Guide and this link: Ugrading Linux Clients from a bin File on a MediaCentral Server.
Hardware and Software Requirements Supported Browsers in an Avid NEXIS On-Premises Environment The following are the minimum browser versions qualified for the current Avid NEXIS release stream. These browsers were qualified with the client operating systems supported in the current release.
Supported Client Browser per Operating System Operating System Supported Browsers Windows Microsoft Edgea Mozilla Firefox Google Chrome macOS Apple Safari Mozilla Firefox Chromeb Google a. Not recommended for initial installations or system upgrades.
b. On macOS v10.15 (Catalina), do not use Chrome for initial system setup or to access the Agent. Use Safari instead.
Updated Security Guidelines As system and network security attacks become increasingly more inventive and persistent, Avid is adopting a new security strategy to help you, our customer and partner, better protect your assets and intellectual property. As you might know, Avid has traditionally recommended Symantec Endpoint Protection as the preferred and qualified solution for much of the Avid product line. As of Q3, 2020, Avid is introducing a more flexible strategy that provides general guidelines for protecting your Avid systems. This new policy allows you to choose the best security solution for your organization, while still following Avid best practices. For more information, see Avid Security Guidelines and Best Practices for Dealing with Virus Threats.
ATTO® ThunderLink™ 10 GbE and 40 GbE Adapters for Mac Avid NEXIS v2018.5 and higher supports using several ATTO ThunderLink adapters for Mac clients. See the Avid NEXIS Network and Switch Guide for details.
Get the latest ATTO driver from their website. Install the appropriate driver for your operating system. Use all the default values and settings.
> **Note:** On macOS 10.14 and higher clients, you might need to unblock ATTO from the Security & Privacy
preferences in the System Preferences menu.
“Intel® For Windows clients using ATTO 10GbE adapters, see Adapters and Drivers” on page 19.
Myricom® Driver for Mac OS
> **Note:** macOS 11 (Big Sur) does not support Myricom drivers. Myricom/ARIA are aware of this issue.
Clients can still run older supported macOS versions and use Myricom drivers with Avid NEXIS v2020.12.
System Configuration Limits The Avid NEXIS kit includes the Myricom driver called myri10GE-1.3.6-MTU1500- Installer.dmg to enable 10Gb connections to clients running macOS 10.14.x and 10.15.x.
Install the driver from the folder in the Avid NEXIS Drivers\Avid NEXIS Client\Myricom software kit.
> **Note:** If using VMWare on Windows clients, use the 10GbE drivers that come with the Windows OS, not the
Myricom driver.
> **Note:** On macOS 10.14 and higher clients, you might need to unblock Myricom from the Security &
Privacy preferences in the System Preferences menu.
Intel® Adapters and Drivers See the Avid NEXIS Network and Switch Guide on the Avid NEXIS Documentation KB page for supported Intel (and Intel-based ATTO) NICs.
VMWare ESXi™ The Avid NEXIS v2018.5 Client and higher is supported with VMWare ESXi v6.0.0 (Update 1) using a VMXNET3 adapter with the Mellanox ConnectX-3 adapter and the Mellanox ESX OFED Driver version 1.9.10.2 or later.
VMWare on Windows To use VMWare on Windows clients, use the 10GbE drivers that come with the Windows OS, not the Myricom drivers. The Avid NEXIS Client software no longer changes the speed of the VMWare virtual NIC to 1 Gb.
Qualified and Approved Avid NEXIS Switches For a list of the current qualified and approved switches for use in the Avid NEXIS Production Network (APN), see the Avid NEXIS Network and Switch Guide on the Avid NEXIS Documentation KB page.
System Configuration Limits Different configuration limits apply to on-premises versus Avid NEXIS | Cloud Storage systems.
> **Note:** Avid NEXIS | Cloudspaces, available in Avid NEXIS v2019.4.0 and higher, is considered part of an
on-premises Avid NEXIS system. The On-premises limits table reflects updates for Avid NEXIS | Cloudspaces support.
On-premises Limits The following table lists the system configuration limits for all Avid NEXIS on-premises platforms.
System Configuration Limits Item Limit Media Packs with embedded • 4 with all Avid NEXIS | PRO (with any combination of 20TB and 40TB System Director (includes all Media Packs) Avid NEXIS | PRO • 4 with any combination of Avid NEXIS | E2 or Avid NEXIS | E4 Engines configurations) and the Avid NEXIS | FS Foundation license • 4 with all Avid NEXIS | E2 SSD Engines, all running 2018.5 and higher • Any of the above plus 1 Cloud performance Media Pack (when Avid NEXIS | Cloudspaces is activated) Media Packs with System • 24 with the Avid NEXIS | FS Extended license and any combination of Director Appliance Avid NEXIS | Enterprise Engines • 64 with the Avid NEXIS | FS Advanced license, Avid NEXIS v2018.3 or higher, and any combination of Avid NEXIS | Enterprise Engines • Any of the above plus 1 Cloud performance Media Pack (when Avid NEXIS | Cloudspaces is activated) Media Packs per Engine • 1–2 in Avid NEXIS | E4 (No Media Packs in a System • 4–8 in Avid NEXIS | E5, Avid NEXIS | E5 NL Director Appliance) • 1 in Avid NEXIS | PRO, Avid NEXIS | E2, Avid NEXIS | E2 SSD Storage Groups with embedded • 1–4 with any combination of Avid NEXIS | Enterprise Engines System Directora • 1–4 with all Avid NEXIS | PRO • 1–4 with all Avid NEXIS | E2 SSD Storage Groups with System Up to 32 per shared storage system, in the following combinations:
Director Appliance • All SSD performance • All Scale-Out performance • Combination of SSD and Scale-out • SSD and/or Scale Out with 1 High Performance (up to 8 Media Packs) • SSD and/or Scale Out with 1 Cloud Performance (1 Cloud Media Pack) • SSD and/or Scale Out with 1 High Performance and 1 Cloud performance Workspaces 1024 with an embedded System Director 3072 with a System Director Appliance Users 5640 (all configurations) User Groups 1028 (all configurations; a user can belong to 15 groups) Connected Clients • 40 active clients with the Avid NEXIS | FS Foundation license (embedded System Director) • 165 active clients with the Avid NEXIS | FS Extended license (and a System Director Appliance) • 330 active with the Avid NEXIS | FS Advanced license (and a System Director Appliance) • 24 active (30 connected) in Avid NEXIS | PRO System Performance (On-Premises) Item Limit Files and Folders • 8 million on Avid NEXIS | E2 and Avid NEXIS | E4 • 3 million on Avid NEXIS | PRO • 28.4 million on any on-premises configuration with a System Director Appliance; actual limit depends on the file name length. This limit assumes 67 ASCII characters (67 bytes). Longer average file names reduce the file count limit.
a. All numbers can optionally include one Cloud Storage Group if Avid NEXIS | Cloudspaces is activated, and one High Performance Storage Group.
Avid NEXIS | Cloud Storage Limits The following table lists the system configuration limits for Avid NEXIS | Cloud Storage systems.
Item Limit Media Packs per shared-storage system One Media Pack (virtualized) with 2PB capacity Storage Groups One Storage Group (virtualized) Workspaces 3072 Users 5640 User Groups 1028 (all configurations; a user can belong to 15 groups) Connected Clients 330 Files and Folders 28.4 million on Avid NEXIS | Cloud Storage; actual limit depends on the file name length. This limit assumes 67 ASCII characters (67 bytes). Longer average file names reduce the file count limit.
System Performance (On-Premises) The nominal bandwidth rating for all-read workflows is 400MB/sec per Media Pack bound with the Scale-Out Performance setting regardless of protection type, and 600MB/sec per Media Pack bound with the High Performance setting. The actual write bandwidth depends on protection type.
Aggregate bandwidth is therefore a function of protection type and proportion of reads to writes in the workflow.
The following table provides details on aggregate bandwidth by protection scheme and workflow proportion per Media Pack. To calculate the total performance of an Avid NEXIS system, multiply these figures by the number of Media Packs in the Storage Group. For design guidance a typical workflow is 80% reads and 20% writes.
Aggregate Throughput per Media Pack with Scale-Out Performance Bind Setting (MBytes/Sec) Workspace Protection One-Disk + Two Disk + Read % Write % No Protection One Disk Two Disk Mirroring Mirroring 100% 0% 400 400 400 400 400 90% 10% 400 396 392 378 376 System Performance (On-Premises) Aggregate Throughput per Media Pack with Scale-Out Performance Bind Setting (MBytes/Sec) Workspace Protection One-Disk + Two Disk + Read % Write % No Protection One Disk Two Disk Mirroring Mirroring 80% 20% 400 392 384 356 352 70% 30% 400 388 376 334 328 60% 40% 400 384 368 312 304 50% 50% 400 380 360 290 280 Usable Storage 100% 89% 80% 44% 40% Aggregate Throughput per Media Pack with High Performance Bind Setting (MBytes/Sec) Note: Media Mirroring is not supported in High Performance Storage Groups.
Workspace Protection Read % Write % No Protection One Disk Two Disk 100% 0% 600 600 600 90% 10% 600 594 588 80% 20% 600 588 576 70% 30% 600 582 564 60% 40% 600 576 552 50% 50% 600 570 540 Usable Storage 100% 89% 80%
> **Note:** Microsoft® Windows® X®
Linux 10GbE clients can experience lower throughput than and macOS clients against both Avid NEXIS | PRO and Avid NEXIS | Enterprise Engines.
Aggregate Throughput per Media Pack with SSD Performance Bind Setting (MBytes/Sec)a Workspace Protection One-Disk + Two-Disk + Read% Write% No Protection One Disk Two Disk Mirroring Mirroring 100% 0% 3000 3000 3000 3000 3000 90% 10% 2900 3000 2860 2790 2780 80% 20% 2800 2760 2720 2580 2560 70% 30% 2700 2640 2580 2370 2340 System Performance (On-Premises) (MBytes/Sec)a Aggregate Throughput per Media Pack with SSD Performance Bind Setting Workspace Protection One-Disk + Two-Disk + Read% Write% No Protection One Disk Two Disk Mirroring Mirroring 60% 40% 2600 2520 2440 2160 2120 50% 50% 2500 2400 2300 1950 1900 40% 60% 2400 2280 2160 1740 1680 30% 70% 2300 2160 2020 1530 1460 20% 80% 2200 2040 1880 1320 1240 10% 90% 2100 1920 1740 1110 1020 0% 100% 2000 1800 1600 900 800 Usable Storage 100% 89% 80% 44% 40% a. One-Disk and Two-Disk with Mirroring performance is based on 19.2TB Media Packs with Avid Part Number 7020-71306-01 and higher, or 38.4TB Media Packs. 960GB Media Packs might have lower performance numbers in mirror configurations.
Drive Rebuilds and System Performance When a drive in a Media Pack fails, the data from that drive is rebuilt from the other drives in that Media Pack, and involves only those drives. During a rebuild, the Media Pack’s performance rating drops by the rating of one drive, or 40MB/sec (for Scale-Out Performance) or 60MB/sec (for High Performance).
With no I/O on the system, the fastest a drive can be rebuilt is 40MB/sec (for Scale-Out Performance) or 60MB/sec (for High Performance). On a Media Pack that is under full load (at complete bandwidth capacity), the minimum repair rate is 512KB/s. As the drive is rebuilt it begins contributing to the overall Media Pack performance rate for both reads and writes, so during the rebuild, the rate of 40MB/sec or 60MB/sec gradually decreases.
Rebuild Rate (Media Pack at 100% Performance Type capacity) Estimated Rebuild Time Scale-Out 7 hours per TB 16TB Drive = 112 hours 10TB Drive = 100 hours 2TB Drive = 14 hours High Performance 5 hours per TB 14TB Drive = 70 hours 10TB Drive = 50 hours 2TB Drive = 10 hours SSD Performance 3.125 hours per TB 3.84TB Drive = 12 hours 1.92TB Drive = 6 hours 960GB (.96TB) Drive = 3 hours The rebuild time increases with client load, and decreases as less data remains to be rebuilt.
Known Issues Workspaces with One-Disk Protection are rebuilt before Workspaces with Two-Disk Protection, due to their higher vulnerability to a second drive failure.
Media Mirroring and System Performance For mirrored Workspaces, Avid NEXIS clients can continue working through an Engine failure without interruption or needing to reconnect. To ensure all clients can work seamlessly through an Engine failure, provision the shared-storage system with enough bandwidth to account for an Engine being offline.
Known Issues The following are known issues with Avid NEXIS software or third-party vendors.
Windows 10 Clients and TeraCopy a On Windows 10 clients, there is a known issue when using TeraCopy to move large numbers of files to an Avid NEXIS Workspace, instead of using Windows Explorer. In some cases, TeraCopy treats a file as a directory, and the Windows client displays an error that it cannot move the file. Avid strongly recommends not using TeraCopy.
Workaround: You can use Windows Explorer or the Avid Data Migration Utility.
a On Windows 10 build 1909 and 20H2 clients, Windows Defender might prevent Avid Pro Tools from starting a session on an Avid NEXIS Workspace.
Workaround: In Windows Defender, add Pro Tools as an exclusion from the antivirus scans.
Preventing Windows 10 Automatic Driver Updates On client systems running Windows 10, automatic Windows driver updates can remove critical NIC driver settings needed for the correct functioning of the Avid Client. To prevent disruption of clients running Windows 10 (Professional and Enterprise), you can defer automatic driver updates as follows:
1. Right-click the “This PC” icon (formerly called “This Computer”).
2. Select Properties.
3. Select Advanced System Settings.
Known Issues
4. Click the Hardware tab, then click Device Installation Settings.
5. Select the option “No” to prevent downloading apps and icons automatically.
6. Click Save Changes.
Known Issues macOS Clients Avid has noted the following issues with the specified versions of macOS.
• [SSENG-29304] On a macOS 11.x (Big Sur) client system, you might be prompted twice to allow software from Avid to be installed, even if you rebooted the client after the first time you allowed it.
• [SSENG-29673] On macOS 11 (Big Sur) and later, some third-party applications that install content network filters (including Cisco AnyConnect Secure Mobility Client and CrowdStrike Falcon Endpoint Protection Platform) will prevent the Avid NEXIS Client from connecting to an Avid NEXIS System. If you encounter this issue, disable Network Content filters in the System Preferences > Network menu.
> **Note:** Some network filters are automatically restarted when the system reboots, and must be disabled each
time.
• [SSENG-23026-UPDATED Aug 2021] Avid Benchmark Utility does not work automatically on Avid NEXIS clients running macOS 10.15 (Catalina) or higher. On clients running macOS 10.15 and higher, you must explicitly allow permission for an application (including Avid Benchmark Utility) to have Full Disk Access.
On the macOS client, click System Preferences > Security & Privacy > Privacy > Full Disk Access and check the box for avidbenchmarkd. You might need to provide Administrator credentials to unlock this function (Padlock icon). If the avidbenchmarkd object is not shown in the list, run a test with the Benchmark Utility against the client; the test will fail, but running it causes the object to appear in the list.
avidbenchmarkd • Starting with macOS 10.15.4, when you install a new Avid NEXIS Client kit on a system running this OS version, a Legacy System Extension warning is displayed when the Avid NEXIS Client kit loads and again periodically advising you to “contact the developer for support” for future releases of the client kit. Avid is working to keep our system extensions current with advancing requirements from Apple.
• (The following issue has been observed and is under investigation by Avid & Apple) USB-C to 1Gb RJ45 Ethernet adapters cannot be used to connect using the Avid NEXIS Client because macOS 10.15 (Catalina) and higher reports the interface speed as zero Mbps.
Workaround: Use Thunderbolt 3-to-Thunderbolt 2 and Thunderbolt 2-to-1Gb Ethernet adapters. Thunderbolt 3 to 10Gbps and 40Gbps adapters are supported with macOS 10.15 and higher with the Avid NEXIS Client.
Avid NEXIS On-Premises Systems The following issues relate to the Avid NEXIS system (including hardware) and Management Console.
a On older HP workstations, the Velocity implementation uses a filter driver called LiveQoS® that causes Media Composer errors such as:
• Delayed write failures • “InitBinIndexDone: GetResult() failed” • “Project setting is not saved due to an error. Exception: FILE_OTHER,filename...” Known Issues Workaround: On HP workstations with HP Velocity, disable the LiveQoS filter driver on the NICs used for Avid NEXIS connections. There are no known issues with Avid NEXIS when enabling Velocity inside Remote Boost for HP® workstations.
a When looking at switch statistics for the Dell N2024, Dell N3024, and NETGEAR XS712T, you might see the OutDiscard counter (on Dell switches) or the Transmit Packets Discarded counter (on the NETGEAR switch) incrementing. This is acceptable as long as the rate of discards is no more than 1% of the total packets transmitted, or as long as workflows are not experiencing any dropped frames.
Avid NEXIS | Cloudspaces The following are known issues with the Avid NEXIS | Cloudspaces, introduced in Avid NEXIS version 2019.4.
a If an Avid NEXIS system with Cloudspaces activated does not have NTP time synchronization enabled and its local time in UTC is behind (earlier than) the Azure time by 15 or more minutes, no communication to Azure can be made and all requests fail with the following authentication error:
“Server failed to authenticate the request. Make sure the value of Authorization header is formed correctly including the signature.” Workaround: Configure NTP Server time synchronization on the Avid NEXIS system or manually adjust the local system time to less than 15 minutes different from the Azure time.
Avid NEXIS | Cloud Storage The following are known issues with Avid NEXIS | Cloud Storage, which was introduced in Avid NEXIS version 2018.6.
a You might run into issues running clients with multiple NICs, each of which is able to connect to an Avid NEXIS | Cloud Storage system.
Workaround: In clients that are specifically connecting to Avid NEXIS | Cloud Storage, enable only one NIC.
Data Migration Utility The following are known issues with the Avid NEXIS Data Migration Utility, which was introduced in Avid NEXIS version 2018.9.
a During a migration, if either the source or destination system is disconnected from within the Client manager interface, the migration is interrupted and fails.
Workaround: Do not disconnect from systems in the Client Manager while a migration is occurring.
Avid NEXIS Client The following are known issues with the Avid NEXIS client software. When a workaround exists, it appears in the paragraph directly following the issue description.
Known Issues a Avid recommends not using the Development and Creative Workstation option when deploying CentOS 7.8 on an Avid NEXIS Client system as it can create a dependency conflict for packages required to install Avid NEXIS Client software for Linux. For existing CentOS clients, when upgrading the Avid NEXIS Client for Linux, if the installation fails with specific FUSE library conflicts, remove the existing FUSE libraries and retry the Avid NEXIS Linux Client installation.
Using the Development and Creative Workstation option can also create conflicts in port usage for Avid Benchmark Agent. If the ports are already in use, reboot the client to free up the ports.
a CentOS Linux clients using the Linux GUI can experience a delay in seeing all files when browsing contents of Cloudspaces with more than a few thousand files. Browsing Cloudspaces files using the terminal avoids the delay.
a The Avid NEXIS Log Utility may occasionally fail to generate logs with the error message “Couldn’t find OAM logs”.
Workaround: Close the error message and generate the logs again.
a If the Client Manager is connected to an Avid NEXIS system with dual controllers and the System Director service has failed over to the second controller, the Management Console launch button in the Client Manager does not redirect to the new System Director and cannot successfully open the Management Console.
Workaround: To launch the Management Console for an Avid NEXIS system, either open a browser and enter its IP address, or add the IP address of the redundant controller to the Remote Hosts list in the Client Manager.
a macOS 10.13 and higher has enhanced security. By default, third-party kernel extensions that were not previously installed are denied. If you are installing the Avid NEXIS client on a macOS 10.13 or higher system, during the installation process, watch for the System Extension Blocked alert, and click OK to allow the Avid NEXIS client installer to complete. See the Apple Technical Note TN2459.
Workaround: To see if anything was denied during installation and allow it, do the following:
1. As Administrator, open System Preferences.
2. Click Security and Privacy.
3. Click the General tab.
4. Click the lock button to make changes.
5. See if any applications or drivers are listed in the dialog box as having been denied. If so, click
Allow apps downloaded from the App Store and identified developers.
6. Close the System Preferences window.
a On a client with multiple NICs, all network paths from the client to a particular Avid NEXIS must be via NICs with the same speed.
a Do not use a computer running macOS Sierra to install Avid NEXIS software on a new Engine or System Director Appliance.
a If the Avid NEXIS Client software is installed accidentally on OS X 8.5 (or any other unsupported OS X version), running the uninstaller does not work.
Special Notes Workaround: Use AppCleaner (a free download) to uninstall the Avid NEXIS Client software.
1. Download AppCleaner from: http://www.freemacsoft.net/appcleaner/
2. Follow the instructions for removing an application (in this case, Avid NEXIS Client).
3. Restart the Mac.
a On Mac Pro 5,1 using a 2 x 1GbE connection to the Avid NEXIS system, you might not receive expected data rates.
a During Media Pack rebuilds the Engine performance might not reach the full Engine rating.
a If one workspace in Client Manager is mounted by Mapping a Network drive in Windows, when you unmount the workspace and then mount a different workspace in Client Manager manually using the same drive letter, Windows Explorer displays the previous workspace name instead of the new workspace name.
a The estimated amount of space available (usually measured in an amount of time at a particular resolution) might differ between what Avid NEXIS calculates and what the Avid editing system calculates. Avid NEXIS accurately reports the amount of space available for file storage. The Avid editing application accounts for overhead in formatting of the media and is more conservative in reporting how much space is available.
a The Macintosh Finder might display the Avid NEXIS folder contents incorrectly, such as the contents of folders containing items whose name includes a pound sign (#) followed by numeric characters. For example, “project # 12” might be erroneously displayed with some items duplicated and some items missing.
Workaround: Avid recommends avoiding the use of names that include a pound sign (#) followed by numeric characters.
Avid NEXIS | Linux File Gateway The following are known issues with the Avid NEXIS | Linux File Gateway software that runs on a virtual machine, introduced with Avid NEXIS version 2019.12.0.
a The keyboard actions to select multiple items (using the Shift or Control keys) do not work.
Special Notes This section contains important information about the Avid NEXIS environment.
User Permissions A user account with Administrator privileges is required to install the Avid NEXIS client software on your workstations.
Special Notes LDAP Requires ASCII User Names and Passwords The Avid implementation of LDAP (Lightweight Directory Access Protocol) requires that you restrict LDAP user names and passwords to ASCII. The LDAP/Avid NEXIS Account Synchronizer searches for groups and their users on an LDAP server and synchronizes (reconciles) user and group accounts by adding or removing users and/or groups from Avid NEXIS.
Fast User Switching Not Supported Fast User Switching is a Windows feature that allows multiple user accounts to log on to a computer simultaneously. Fast User Switching is enabled by default in Windows computers. The Fast User Switching feature and multiple concurrent logged on user modes are not supported in the Avid NEXIS environment. The Avid NEXIS software does not distinguish the different drive letters mapped to the same workspaces on the same computer. Conflicts appear in the following two scenarios:
• When one user maps a drive letter to one workspace and another user maps the same drive letter to a different workspace • When one user maps a workspace to one drive letter, and another user maps a different drive letter for the same workspace.
Macintosh Resource Files and Windows Clients If Macintosh files are copied to a Windows system with the Macintosh resource fork files, the resource fork files cannot be copied to mounted workspaces from a Windows client. Avid NEXIS does not accept Macintosh resource fork files from Windows clients. Appropriate “properties” error messages are displayed if this is attempted.
Adobe Premiere Pro Avid has tested Adobe Premiere Pro as a client in Avid NEXIS environments.
Adobe Premiere clients follow the same guidelines for Client Manager Preference settings as Avid editors. The default Client Type setting is set to Medium Resolution (limited to resolutions that draw 16 MB/s or less). Use the High Resolution setting when working with High Definition media (resolutions that draw higher than 16 MB/s). There are some HD resolutions that draw less than 16 MB/s for a single stream, but you should still use the High Resolution setting (for example, XDCAMHD 50). For more information, see the Knowledge Base at www.avid.com/support.
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
Avid NEXIS ReadMe Version 2021.8.2 • September 2021