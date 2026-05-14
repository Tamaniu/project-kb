---
product: nexis
product-area: shared-storage
version: "2024.5.0"
release-date: 01/05/2024
doc-type: admin-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid NEXIS® Administration Guide Version 2024.5.0 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This information is for deployment and use of Avid-certified cloud solutions. For more information contact your salesperson or reseller.
This guide is protected by copyright. This guide is for your personal use and may not be reproduced or distributed, in whole or in part, without permission of Avid.
Reasonable care has been taken in preparing this guide; however, it may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc.
disclaims liability for all losses incurred through the use of this document. Product specifications are subject to change without notice.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: http://www.avid.com/US/about-avid/legal-notices/trademarks.
Avid NEXIS Administration Guide Version 2024.5.0 • Created 5/17/2024 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.
Using This Guide Using This Guide NEXIS® The Avid software-defined storage system provides a high-performance distributed file system that uses high-capacity shared media storage for workgroups of connected devices. This guide describes how to manage your storage system.
Unless noted otherwise, the material in this document applies to the Windows®, Mac OS® X, and Linux operating systems. The majority of screen shots in this document were captured on a Windows system, but the information applies to all operating systems. Where differences exist, information on the differences is provided.
The documentation describes the features and hardware of all models. Your system might not contain certain features and hardware that are covered in this guide.
Who Should Use This Guide This guide is intended for users who will manage the Avid NEXIS media network. You should have a basic understanding of how to use and manage the Windows operating system or the Mac OS X systems, and you should be familiar with basic workgroup and network concepts.
Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Meaning or Action Convention
> **Note:** A note provides important related information, reminders, recommendations, and
strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
w A warning describes an action that could cause you physical harm. Follow the guidelines in this document or on the unit itself when handling electrical equipment.
g A user tip provides a helpful hint that can aid users in getting the most from their system.
b A shortcut shows the user keyboard or mouse shortcuts for a procedure or command.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
- This symbol indicates a single-step procedure. Multiple arrows in a list indicate that
you perform one of the actions listed.
(Windows), (Windows This text indicates that the information applies only to the specified operating system, only), (macOS), or either Windows or macOS.
(macOS only) Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables.
Using This Guide Symbol or Meaning or Action Convention Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse Press and hold the first key while you press the last key or perform the mouse action.
action For example, Command+Option+C or Ctrl+drag.
| The pipe character is used in some Avid product names, such as Interplay | Production.
In this document, the pipe is used in product names when they are in headings or at their first use in text.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published.
Always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view the online versions, visit the Knowledge Base at www.avid.com/support.
3. Check the documentation that came with your Avid application or your hardware for maintenance or
hardware-related issues.
4. Visit the online Knowledge Base at www.avid.com/support. Online services are available 24 hours per
day, 7 days per week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download upgrades, and to read or join online message-board discussions.
Accessing the Online Documentation The Avid online documentation contains all the product documentation in PDF format. You can access the documentation from the Knowledge Base site specific to your release. Download and install Acrobat Reader before you access the PDF documentation.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
Glossary of Avid NEXIS Terms Glossary of Avid NEXIS Terms Before you begin, review the terms used in Avid NEXIS and this guide.
Some definitions are also in the Avid NEXIS Setup and Maintenance Guide. The terms are listed in roughly hierarchical order, with the entire system first, working down to individual hardware or software components or concepts.
Term Definition Shared-storage system A media-optimized, proprietary file system (name space) manageable as one entity.
(or Avid NEXIS system, An Avid NEXIS system can be completely on-premises (in your facility), completely in or Avid NEXIS) the cloud, or a combination of on-premises storage and cloud storage with an active subscription for Avid NEXIS | Cloudspaces, which allows you to store media on your physical hardware and in the cloud.
A shared-storage system uses a license that supports some or all of the system capacity and features.
You can add more capacity to your system without adding network management complexity.
System Director A rack-mountable, proprietary Avid NEXIS server that performs only system Appliance management and does not provide any media storage.
(On-premises only) A System Director Appliance contains its own power supplies, system drives, and one or two Controllers, but no media storage drives.
A System Director Appliance is required in specific configurations and to support specific features. See the Avid NEXIS Setup and Maintenance Guide for more information.
Engine A rack-mountable chassis that contains one or more Controllers, varying numbers of drives (Media Packs and system drives), and power supplies.
(On-premises only) Engines can be combined through software with other Engines to operate as a single shared-storage system.
In some cases, an Engine can run the System Director service for the shared-storage system to which it belongs.
Expansion chassis A rack-mountable chassis that contains two I/O modules, one Media Pack, and power supplies. Does not contain Controllers.
(On-premises only) Each Expansion chassis (Avid NEXIS | F2X) must be paired with, and cabled to, an Avid NEXIS | F2, in a one-to-one ratio.
System Director The System Director service controls all the functions of an Avid NEXIS system. There is only one System Director.
For on-premises systems the service runs on one Controller, either in an Engine or in a System Director Appliance, and can switch over between redundant Controllers in the same Engine or System Director Appliance.
System Director name The name of the Controller (on-premises systems only) where the System Director (or Host Name) service is running.
The System Director name is shown in the Host Name field in the Management Console Glossary of Avid NEXIS Terms Term Definition Dashboard (see "Dashboard" on page 17).
Management Console The web interface through which you manage and monitor an Avid NEXIS shared- storage system. The Management Console runs in a browser and uses HTML-5.
License A capacity license grants support for the capacity per tier (Online, Nearline, or SSD), Flexible or All-Mirror protection, and the ability to run the System Director service.
Capacity licenses can be perpetual and time-limited (as a subscription), or annual and renewable for up to five years.
A modular license (introduced in Avid NEXIS | VFS version 2023.7.0 and applicable to on-premises systems only), activated directly on each Engine, allows the Engine to run the embedded System Director service as needed and lets you bind its Media Packs to the file system of any shared-storage system running version 2023.7.0 or higher.
Modular licenses support Flexible and All-Mirror protection, and allow you to move an Engine between shared-storage systems with no impact on an existing capacity license.
Modular licenses are perpetual and need no updates from Avid even if the Engine capacity changes (by replacing current Media Packs with larger ones, or fully populating an Engine).
Media Pack A set of ten (10) drives, all of the same capacity and type (HDD or SSD) that the system automatically configures as a drive set managed by a Storage Manager.
Each Media Pack is a RAID set supporting one-disk or two-disk protection (depending on the system configuration).
Avid NEXIS Engines and Expansion chassis can contain one or more Media Packs and in some cases, spare drives (not associated with a Media Pack and available to replace a drive in a Media Pack if one fails). Media Packs are combined to create Storage Groups, which provide a pool of storage in which to create Workspaces.
You can add more Media Packs to an Engine that has at least ten empty slots.
The composition of a Media Pack is subject to timing, based on when the drives start up and are allocated to a Storage Manager. There is no guarantee (or need) for Media Packs to be created from drives in consecutive slot order.
System drives A pair of SSD drives in every Engine and System Director Appliance that contain system metadata. The system drives are initialized at the factory as a mirrored pair and cannot be separated to use one in a different Engine or System Director Appliance.
Expansion chassis do not contain system drives.
Controller A field-replaceable component that contains the network interfaces that connect the shared-storage system to a switch, for access by clients.
All of the system services and processes run on the Controllers, which communicate with each other and all the other hardware components.
If an Engine or the System Director Appliance has two (redundant) Controllers, they share the services between them.
Storage Manager An internal process that manages a Media Pack. One Storage Manager handles one Glossary of Avid NEXIS Terms Term Definition Media Pack.
For on-premises systems if an Engine contains eight Media Packs, eight Storage Managers run.
Storage Group A pool of storage, created from one or more Media Packs. Within a Storage Group, you create Workspaces.
Workspace Addressable, mountable space in which end users (editors, client computers) store and edit media files.
Avid NEXIS Client A utility that lets users connect to a shared-storage system and mount Workspaces on Manager their computers so they can work on media files using other Avid products such as Avid Media Composer. See the Avid NEXIS Client Manager Installation and User’s Guide for more information.
1 Getting Started with Avid NEXIS 1 Getting Started with Avid NEXIS To get started with your system, log in and get familiar with the Management Console and read about the actions available in different areas of the interface. This chapter also describes how to cancel an operation or discard changes.
Many pages of the interface display data in columns, which you can sort and filter to simplify your search for a specific object or related objects.
This chapter also provides guidelines for supported characters in object names, including the maximum length, special character restrictions, and other information.
Opening the Management Console The Management Console runs within one of the following qualified web browsers (see the Avid NEXIS ReadMe for restrictions):
Windows — Mozilla Firefox, Google Chrome, Microsoft Edge
- macOS — Safari, Mozilla Firefox, Google Chrome
- Linux — Mozilla Firefox, Google Chrome
- To open the Management Console as Administrator:
1. Open a web browser and in the address bar type https:// and the IP address of the System
Director. (This is the IP address of the Storage Controller running the System Director, whether in a single- or multi-Engine configuration or in a System Director Appliance.) The Login dialog box for the Management Console opens.
2. Type the user name administrator and the Avid NEXIS administrator password, then click Sign in.
Performing administrative functions in more than one instance of the Management Console at the same time can cause unexpected results.
To log out of the Management Console:
- Open the sub-menu in the upper right corner of the screen and click Log Out, as shown in the
following figure.
For system security, the Management Console session closes (logs out) automatically after two hours of inactivity (even if Continuous Refresh is running — see "Action Tools" on page 15).
> **Note:** To avoid being logged out automatically, see "Avoiding Automatic Logout" on page 17.
Understanding the Management Console Interface The Management Console user interface has the following main components.
1 Getting Started with Avid NEXIS Navigation Main menus for managing the Avid NEXIS system. See "Navigation Sidebar" below.
Sidebar The Management Console presents different functions to different users depending on their access privileges and group roles, among other factors, and shows different menu items for on-premises systems or Avid NEXIS | Cloud Storage systems.
Menu Selection, Displays the name of the selected menu item, and action tools (icons) for available actions Messages, and based on the objects being displayed. See "Action Tools" on page 15.
Action tools bar Also displays error, warning, or status messages relating to actions taken, such as successful completion of an operation.
Main page Displays detailed information for the menu item selected in the navigation sidebar.
Application On the left-hand side, displays the interface name and version in parentheses in YY.M.m.BBBB menu format, where YY=Year, M=Month (or major version), m=minor version, and BBBB=build number.
On the right-hand side, displays the user name currently logged in and contains links that let you:
- Change your password
- Open the System Monitor View (see "Avoiding Automatic Logout" on page 17)
- Log out
Help menu Contains the following links:
Avid NEXIS Documentation Knowledge Base page
- Disk slot diagram that shows the drive slot numbers for all Avid NEXIS models (opens in
- a new browser window) — Available for on-premises systems only
Navigation Sidebar The Navigation sidebar is divided into the following main sections: System, Storage, Monitoring, Teams, Users, and Logs, each of which expands to display functions or objects related to that category.
1 Getting Started with Avid NEXIS Different Looks for Different Users The full set of features and functionality in the Management Console is available only to system administrators, and only for on-premises systems. Other user types see a subset of features in a section, or do not see a section at all, depending on their privilege level.
System Section The System section contains links to these pages:
- Dashboard (displayed by default when you log into a running, configured system) — Displays overall
health and status information about the system. You can display a dashboard for the Avid NEXIS system as a whole, or just for Avid NEXIS | Cloudspaces, if configured. See "Dashboard" on page 17.
Bandwidth Limits — Lets you create, edit, sort and manage bandwidth limits for clients.
- Installers — Provides links to the installers for the Avid NEXIS Toolbox, LDAP Sync Tool, Avid NEXIS
- Client software, and Avid NEXIS software to install on other Engines.
- System Setup — Displays the system name and lets you change the date and time or configure an
NTP server, view installation logs, install the Avid NEXIS software, and apply a system license.
- Settings — Manages system preferences, the file system setup, and metadata.
> **Note:** These settings are not commonly changed unless you are advised to do so by Avid support.
Services — Displays details about any optional services you subscribe to, such as Avid NEXIS |
- Cloudspaces, including the subscription plan and status and the amount of storage and download
data included in the plan.
- Snapshots — Lets you create a record (snapshot) of the current state of the Avid NEXIS system.
Storage Section The Storage section contains links to these pages (not all of these are visible to all user types):
- Workspaces — Displays current Workspaces and lets you create, modify and delete Workspaces and
their attributes.
Storage Groups — Displays current Storage Groups and lets you create, modify and delete Storage
- Groups and their attributes.
Engines — Displays the Engines in the shared-storage system and lets you modify some of their
- attributes.
- Controllers — Displays current Controller information and lets you modify some Controller attributes.
- Media Packs — Displays current Media Pack information and lets you modify some Media Pack
attributes.
Monitoring Section The Monitoring section contains links to these pages (this section is not visible to all user types):
Client Bandwidth — Displays total system bandwidth use, and bandwidth consumption of each
- connected system.
Connection Status — Displays the users and other entities connected to (or logged into) the system,
- including internal users such as the Storage Managers.
- Redistribution — Displays information about any in-progress redistributions, and which Media Packs
are involved.
- Reservations — Displays any bandwidth reservations set inside the Client Manager.
1 Getting Started with Avid NEXIS Teams Section The Teams section (not visible to all user types) lets you create and manage Avid NEXIS Teams, which are groups of users (and a Team administrator) who can see and use only some of the total storage available on the system. See "Managing Avid NEXIS Teams" on page 94 for more information.
Users Section The Users section contains links to these pages (not all of these are visible to all user types):
- Users — Lets you create, edit, sort and manage user accounts.
- Groups — Lets you create, edit, sort and manage user groups.
- Notifications — Lets you configure an SMTP server for email notifications, add contacts to receive
email about different system events, and filter which types of system events are sent to those contacts.
External Authentication — Lets you configure and manage external user authentication servers.
- Administrator — Lets you change the administrator password if you have the appropriate privileges.
- Logs Section
The Logs section (not visible to all user types) contains links to these pages:
Event History — Displays the past 5 days (96 hours) of system status information. You can download
- the history as a zip file, and then send the file to Avid Customer Care upon request.
- System Logs — Lets you select from various logs to display.
- Media Pack Logs — Displays log files for the Media Packs in the system.
Action Tools Depending on which section is open in the System Navigation sidebar, various action tools (listed here alphabetically) are displayed.
> **Note:** In the procedures in this guide, the icons are referred to by the name shown when you hover over the
icon. For example, a step will say “Click Add.” Icon Action Description Add Allows you to create a new workspace, user, user group, storage group, bandwidth limit, or contact for email notification.
Advanced Menu Applies to Engines, Controllers, and Media Packs.
Lets you view details about the selected component of the shared- storage system, such as hardware status (fans, system temperature, and other data), and disk status (operational status, slot number, SSD health if applicable, and other data).
Bind Applies to Media Packs. Associates (binds) the selected Media Pack to the file system. After the Media Pack is bound, you can add it to a Storage Group.
Clear History On the Logs page in the Event History section, clears the history status Status Flag flags.
Reset Event In the Logs page, in the System Logs section, clears the log viewer.
Delete (or Delete Applies to bandwidth limits, snapshots and archives, Workspaces and All) 1 Getting Started with Avid NEXIS Icon Action Description Storage Groups, users and user groups, system logs and Media Pack logs.
Deletes the selected object or all relevant objects.
Disable Logs Applies to Media Pack Logs only.
Lets you disable or enable collection of Media Pack logs. The color of the action tool indicates its current state:
- Gray — Disabled
- White — Enabled
Download In the Logs–Event History section, lets you download the event history to a file which you can send to Avid Customer Care if requested.
Dump All Logs Applies to Media Pack Logs only.
Lets you create a dump file of all the Media Pack logs. You can retrieve and send this file to Avid Customer Care if requested.
Duplicate Applies to Workspaces and users.
Lets you duplicate a Workspace or user.
Edit Toggles Edit Mode for an object, which also displays additional details for an object. Select a different object to edit it or display its details.
Click Edit again to close edit mode.
Filter When clicked, displays filter options for the displayed objects. See "Sorting and Searching" on the next page.
Redistribution Applies to on-premises Workspaces only.
menu Allows you to start, suspend, and resume Workspace redistribution.
Refresh (or Refreshes the display. If a down arrow is present, lets you select Continuous between Refresh (which refreshes the display once) or Continuous Refresh) Refresh (which continues to refresh the display until either you leave the screen or disable Continuous Refresh mode).
In Continuous Refresh mode, blue text displays “Continuous refresh enabled” and the blue Refresh icon spins.
Reset Applies in Edit mode only.
Undoes any changes you have made to an object (name, size, password, or other attributes).
Take New Applies to Snapshots and Archives.
Snapshot (or Creates a new system snapshot, or a new archive of existing snapshots.
Archive) Unbind Applies to Media Packs. Disassociates (unbinds) the Media Pack from the file system. After it is unbound, you can bind it again (for example, with a different bind option; see "Binding Media Packs to the File System" on page 34) and then add it to a Storage Group.
1 Getting Started with Avid NEXIS Dashboard The Management Console System dashboard provides high-level system details and current activity, and displays warning or error messages about system events or component failures you might need to correct.
The panels in the System dashboard display the following data:
Performance — Displays system traffic, opened files, and connection status for the entire system
- Bandwidth — Displays current read and write operations and bandwidth per client
- Status — Displays current storage statistics and system messages
- System — Displays the system name, version, usage data, and Media Pack information.
- Avoiding Automatic Logout
The Management Console closes after two hours of inactivity. However after you log in, you can switch to System Monitor view, which does not time out.
Only System Admins can run the System Monitor. (For more information about System Admins, see "Adding Users to the System Administrators Group" on page 89.) To run the System Monitor View:
- In the Application menu, select System Monitor View.
System Monitor view constantly displays the Dashboard without the navigation sidebar.
This lets you keep system information visible on a screen without allowing another user to accidentally or intentionally make changes to the configuration, and is a safe way to continuously watch system performance and see any alerts or warnings. You can toggle the display to view information for the whole system or only the cloud.
- Click Exit View to log in again for full administrator access.
Canceling an Operation or Ignoring Changes During any operation where you are adding an object (such as a Workspace, Storage Group, or User) or making changes to an object (such as changing a name, size, or other attributes) the Save button becomes active. If you decide not to complete the operation, click Refresh to trigger a warning message that your changes have not been saved.
- Click Cancel to stay in Edit mode so you can make more changes or save the current changes.
- Click Discard to discard your changes and exit Edit mode. The display refreshes and restores the
original information.
Sorting and Searching To sort information on a page with columns, click any column heading.
Click the Search icon to open a text field and a list of object types to search within. For example, on the Workspaces page click Search, select Name from the list, and type “B” in the filter field to display only Workspaces that start with or contain the letter B. Type more characters to narrow the search accordingly.
To clear the filter results (and display all objects), click Refresh.
Selecting Multiple Items You can select multiple items in many Management Console windows, as follows, similar to selecting multiple items in Windows Explorer or the Mac Finder:
1 Getting Started with Avid NEXIS To Select This Do This One item Click the item or its check box.
Multiple, non-contiguous Ctrl+click each item you want to select, or click the check box for each item.
items Multiple, contiguous items Click the first item, then Shift+click on the last item, or click the check box for each item.
All items Click the Select All check box.
Updating the Display You can update the Management Console information to reflect recent system changes by clicking Refresh.
You can also set the display to refresh continuously.
To enable Continuous Refresh:
- On any screen that displays the Refresh icon with a down arrow, open the list box and select
Continuous refresh.
Continuous refresh mode is enabled, the refresh icon spins continuously, and a status message is shown on the screen as long as it remains enabled.
To disable Continuous Refresh, do any of the following:
- Click the spinning Refresh icon
- Click any other action button
- Click a different navigation sidebar menu item
Guidelines for Names and Passwords Text fields in the Management Console have different rules or requirements for allowed characters, character sets, and length.
Case Sensitivity Object names (such as users, groups, Teams, and Workspaces) are not case sensitive. For example, the user name “Adam” is considered the same as “adam” or “ADAM.” However, object names are case preserving; if you enter a name as Adam, the system preserves the uppercasing of the first letter in all displays, statuses and messages.
Passwords are case sensitive. For example, if you create a user with the password “abCde”, the user must enter it exactly as specified, not as “ABCDE” or “Abcde.” Character Restrictions and Name Length Text fields in Avid NEXIS support the following different characters and length limits.
Notes:
- If ASCII is specified, it means only the letters in the English alphabet (upper- and lowercase),
numerals (0-9), and the characters available from the number row with or without the Shift key. If Unicode is supported (which includes ASCII), it means the letters or characters available in any language (upper- and lowercase, as applicable), along with the characters available from the number row with or without the Shift key.
1 Getting Started with Avid NEXIS If Unicode is specified, the length of the field is limited by the number of bytes used by the variable-
- length UTF-8 encoding of its characters. For example, the 9-character English name Workspace,
when encoded as UTF-8, consumes nine bytes, but the 7-character word Workspace in Japanese, when encoded as UTF-8, consumes 21 bytes. The byte length of any Unicode field’s UTF-8 encoding must fit within the specified limit.
Do not use the same name for both the Avid NEXIS shared-storage system and any other entity on
- the network, such as the DNS domain.
For example, if your domain name is “mycompany.internal”, do not name a shared-storage system “mycompany.” Clients that do not use Net BIOS are incompatible with the default DFSN (Distributed File System Namespace) behavior and will fail to distinguish between the domain name and the Avid NEXIS name, since DFS client names take precedence.
For more information on this issue and correctly configuring DFS, see the following Microsoft article:
Configuring DFS to use fully qualified domain names.
Object Max Length Case Notes or Restrictions Sensitive?
(Listed in alphabetical Order) Controller name Auto-generated. NA Created automatically based on the Engine (host name) Limit is 25, name, with a positional suffix indicating the including the position in the Engine (left or right, top or characters in the bottom). These names cannot be changed Engine name manually.
To change a Controller name, change the Engine name (you cannot edit or delete the positional suffix).
Engine name 18 (is used to No • English alphanumeric characters (ASCII), (Configured auto-generate upper- and lowercase (A-Z and a-z) during Engine the Controller • Must start with a letter setup) names) • Can contain, but not end with, a dash or hyphen (-) Shared-storage 31 No • English alphanumeric characters (ASCII), system name upper- and lowercase (A-Z and a-z) • Must start and end with a letter or number • Can contain a dash or hyphen (-) Password 127 characters or Yes ASCII only (Unicode not supported), in the range bytes of 32 (the space character) through 126 (the ~ character), inclusive. This range includes all English upper- and lowercase letters. See the ASCII Table for more information.
(Remote LDAP user passwords are controlled by the authentication server) Storage Group 31 No • Unicode upper- and lowercase name • Cannot start or end with a period 1 Getting Started with Avid NEXIS Object Max Length Case Notes or Restrictions Sensitive?
(Listed in alphabetical Order) • Can include spaces Team name 31 No • Unicode upper- and lowercase • Cannot start or end with a period • Can include spaces g A Team prefix (if used) counts toward the Team name limit.
User name 31 No • Unicode upper- and lowercase • Numbers 0-9 • The following punctuation marks:
!, #, $, &, (, ), -, _, ‘, `, ~ g A Team prefix (if used) counts toward the user group name limit.
User Group name 31 No • Unicode upper- and lowercase • Cannot start or end with a period • Can include spaces g A Team prefix (if used) counts toward the user group name limit.
Workspace name 31 No • Unicode upper- and lowercase • Cannot start or end with a period • Can include spaces (unless prevented by Team Policy; see "Managing Avid NEXIS Teams" on page 94) g A Team prefix (if used) counts toward the Workspace name limit.
Unsupported Characters in Workspace, File, and Directory Names Avid NEXIS supports several different client operating systems, each with their own rules for valid and invalid characters.
> **Note:** To simplify the display of object names on any client system, do not use control characters or the
following special characters in any Workspace, file, or directory name (within a Workspace).
1 Getting Started with Avid NEXIS Character Name Character Name @ At symbol (Commercial At) [ ] Left and right square brackets * Asterisk < > Less-than and greater-than signs \ / Backslash and forward slash % Percent sign ^ Circumflex accent (also called . Period caret) ; : Colon and semicolon + Plus sign , Comma ? Question mark | “ Double quotation mark Vertical line (pipe) = Equals sign 2 Configuring and Licensing the System 2 Configuring and Licensing the System This chapter describes how to complete the setup of a new Avid NEXIS system. For on-premises systems, this chapter assumes the hardware has already been installed in your environment and updated from the factory version to the latest Avid NEXIS software version. For instructions, see the Avid NEXIS Setup and Maintenance Guide.
Fully configuring an Avid NEXIS system involves the following procedures, in this and later chapters:
Action Required?
"Creating the File System" below Yes "Configuring DNS Service " on the next page Yes (to activate a license online and to support trusted certificates) "Activating the License" on page 25 Yes in some cases.
See "About Avid NEXIS Subscriptions and Licenses" on "Binding Media Packs to the File System" on page 34 Yes "Configuring the Notification Service" on page 37 Recommended "Setting the System Time" on page 36 Strongly recommended for licensed systems; see "Licenses and System Time" on page 25.
"Changing the Default System Passwords" on Recommended "Securing the Avid NEXIS Infrastructure" on page 1 Recommended "Configuring SNMP Monitoring" on page 42 No "Enabling Link Aggregation" on page 43 No Creating user accounts and groups: see "Managing Yes (for users; groups are optional) Creating Avid NEXIS Teams; see "Managing Avid No "Creating Storage Groups" on page 50 Yes "Creating Workspaces" on page 54 Yes Creating the File System Creating a new file system is the first step to making the storage space usable.
If a file system already exists, creating a new one permanently deletes it and all users, groups, Workspaces, Storage Groups and other objects. All Media Packs are unbound, and all other settings, such as External Authentication and Notification Service, are cleared (deleted). You must reconfigure the system setting after the new file system is created. The Administrator (Management Console) password reverts to the default.
To log in, use the “administrator” user name and the administrator password, which is one of the following:
2 Configuring and Licensing the System For systems manufactured before April 1, 2020, and before a file system has been created: the
- se-admin.
default password is
- For systems manufactured on or after April 1, 2020, and before a file system has been created: the
default password is the last eight characters of the Controller serial number (printed on a label on the Controller housing. Partly remove the Controller from the Engine to see the label).
For systems with an existing file system, the password is either blank (no password) or the currently
- configured administrator password.
To create a new file system:
1. Open a browser and type the IP address of the System Director.
The Management Console login window opens.
2. Type the user name “administrator” and the administrator password and click Sign In.
3. In the navigation sidebar, click System, then Settings.
4. Click File System.
5. From the list box, select Create New File System, then click Submit.
6. In the dialog box, click OK.
Any existing data is destroyed as the new file system is created.
The Results area displays progress messages. When the file system is created, you can complete the system configuration.
Configuring DNS Service If your network environment includes one or more Domain Name servers, you can reciprocally add the Avid NEXIS system to the DNS domain (typically handled by the IT administrator), and add the DNS domain information to Avid NEXIS (in the Management Console).
> **Note:** To avoid conflicts, do not use the same name for both the DNS domain and the Avid NEXIS shared-
storage system.
Configuring DNS service is required to activate an Avid NEXIS license using the online method and when using a trusted certificate from a certificate authority, to avoid issues later if any of the registered IP addresses change.
In addition, configuring DNS service lets you:
- Log into the Management Console using the System Director host name, instead of the IP address
- Use LDAP servers for external authentication of users to log into the Management Console or the
Client Manager ("Configuring External Authentication of Users" on page 79) To configure DNS:
1. In the Management Console navigation sidebar, click System, then System Setup.
2. In the Domain Name Service area, type the following information:
  - The DNS domain for your organization.
  - One or more IP addresses for the DNS servers separated by spaces
  - (Optional) Additional domains in your environment (if applicable) to search through when
trying to resolve a host name.
3. Click Save.
2 Configuring and Licensing the System If you type an invalid IP address, an error occurs.
4. Add the Avid NEXIS system information to your DNS service. (Ask your IT administrator for help if
necessary.) About Avid NEXIS Subscriptions and Licenses A license is required to control functionality of the system, such as running the System Director service, choosing between Flexible or All-Mirror Protection, system limits, and the subscription end date and licensed capacity.
An Avid NEXISshared-storage system can have one of the following license configurations.
Modular License A Modular license, (introduced in Avid NEXIS version 2023.7.0) activated directly on each Engine (but not on Avid NEXIS | F2X), allows the Engine to run the embedded System Director(supported on Avid NEXIS | PRO+, Avid NEXIS | F2, Avid NEXIS | F2 SSD Engines) as needed and lets you bind the Media Packs to the file system of any shared-storage system runnin version 2023.7.0 or higher. Modular licenses support Flexible and All Mirror protection (depending onthe Engine type and configuration rules), and allow you to move an Engine between shared-storage systems with no impact on an existing capacity license.
Modular licenses are perpetual and need no updates from Avid even if the Engine capacity changes (by replacing Media Packs with larger capacity ones or fully populating an Engine).
For example, rental houses can purchase and activate a modular license on an Engine that becomes part of their rental inventory. They can add it to a customer’s shared-storage system for the duration of a project, then remove the Engine and bring it back to the rental house. The Engine retains its own license and can be redeployed to a different customer. For facilities that own their equipment, a modular Engine license also makes it easy to move Engines like building blocks between systems as capacity or project needs change.
System Capacity License A system capacity license, activated on the SDA+ or the Engine running the embedded System Director, applies to the entire shared storage system (for all systems before v2023.7.0 and subscription systems running 2023.7.0 and higher) and grants support for the capacity per tier (Online, Nearline, or SSD), Flexible or All Mirror protection, and the ability to run the System Director service.
Capacity licenses can be perpetual or time-limited (as a subscription) renewable for up to five years.
Avid NEXIS | FLEX is an annual subscription to Avid NEXIS | VFS software, for use with an on-premises Avid NEXIS | F Series system, with the option to migrate the subscription to Avid supported cloud storage.
Sixty (60) days before the subscription expiration date, the Avid NEXIS system displays alerts about the upcoming end of the subscription. Alerts are shown on all pages of the Avid NEXIS Management Console and optionally can generate an email notification if configured. In addition, each Avid NEXIS | FLEX system has a licensing page that you can view any time to verify the expiration date.
Your subscription term is enforced by your license. You can renew and update the license at any time before it expires. After subscription expiration, the system will permanently allow two Avid NEXIS client connections to allow for copying media off the system.
> **Note:** In existing installations of Avid NEXIS using a Perpetual Capacity license, you can add new Engines
with Modular licenses if the entire system is running Avid NEXIS | VFS 2023.7.0 or higher.
Legacy Systems (Avid NEXIS E-Series and Avid NEXIS | PRO 40TB) Perpetual configurations of all Avid NEXIS | PRO 40TB or E-Series Engines (with or without an SDA) do not require a license. However, these systems can have a crossgrade subscription for support and the ability to download and use new releases of the Avid NEXIS software until further notice.
2 Configuring and Licensing the System Licenses and System Time Avid NEXIS licenses are sensitive to a change in the system time. Avid NEXIS | VFS 2023.3.0 and higher can accommodate system time changes of up to 72 hours. However, previous versions can accommodate only a 20 minute time change. If the system time changes by more than those amounts, depending on your version, your license can become invalid.
To ensure that the system time is accurate and does not change by a large amount, Avid strongly recommends configuring the system to use a Network Time Protocol (NTP) server.
If you do not have an NTP server in your environment and the Avid NEXIS system has access to the Internet, you can use a public NTP server; see NTP.org for more information. Make sure all Avid NEXIS systems and clients synchronize with the NTP server to provide consistent time and avoid license disruption; see "Setting the System Time" on page 36.
> **Note:** On a system that is not using an NTP server, manually changing the time zone, or the yearly switch
between Daylight Saving Time and Standard Time, has no effect on the license.
If your license becomes invalid due to a large difference between system time and actual time, contact Avid support for assistance.
Activating the License You can activate a capacity license or a modular license online or offline in the Management Console, depending on whether the Avid NEXIS system is on a network with Internet access.
- When you purchase a license for a system that did not have one previously, you receive a redemption
code which you use to register the product in your MyAvid account. After redeeming the code, an Activation ID and a System ID are available in your MyAvid account. You can optionally download a license file for offline activation.
- When you renew or upgrade a license, a new Activation ID is deposited in your MyAvid account. You
do not receive a new redemption code. The Avid NEXIS system uses the same System ID as before.
- When you purchase a new Engine with a modular license (version 2023.7.0 and higher), an Activation
ID and system ID for that license is deposited in your MyAvid account.
Crossgrade subscriptions and all license renewals are deposited in your MyAvid account, in your products list.
Activating a System Capacity License Online Before activating a capacity license for a shared-storage system, make sure the system time is set to the for more information.) To use online activation, make sure the system has DNS configured (see "Configuring DNS Service" on page 1) and is connected to a network that has Internet access.
To activate the license online:
1. Purchase a license from Avid for your product and configuration.
For new systems, you will receive a redemption code in email or registered in your MyAvid account, which lets you review your license information. For license renewals, you will receive a new Activation ID for the previously licensed system.
> **Note:** The System ID is permanently associated with this system and does not change if you renew or
upgrade your license. The Activation ID changes with each license renewal or upgrade.
2. Log into your My Avid account (or create one).
3. Do one of the following:
2 Configuring and Licensing the System
  - If you received a redemption code in email, click Register Software With Code, then type the
redemption code into the field, then click Register Product.
  - If your license information is already in your account, click View My Products.
4. Click the product you just registered.
The System ID and Activation ID are shown. Copy or write them down.
5. Start the Management Console and click System, System Setup, and the License tab, then do the
following:
a. In the Activation section, select the Online Activation Method.
b. Type (or copy and paste) the Activation ID and System ID (for new systems only) you received from Avid.
c. Click Activate.
d. In the confirmation dialog, click Continue.
e. The system licensing process starts. When complete, click Close.
6. Close the browser tab and start a new one. (Avid recommends this to make sure the browser cache is
clear.)
7. Log into the system again and click System, then System Setup, then the blue License tab again.
Verify that the license is now activated. (For new systems, the System ID on the dashboard might take a few minutes to be displayed.) In the Capacity section, verify the amount of capacity and Tiers for your license. When you bind Media Packs, you can choose how much capacity to apply to each Tier.
8. Continue with "Binding Media Packs to the File System" on page 34.
Activating the System Capacity License Offline If your Avid NEXIS system is not on a network with outside access, use the following procedure. You will need a computer with Internet access and on which you can log into the Management Console. This can be the same computer; in one browser, run the Management Console and in another, log into your MyAvid account.
To activate a license offline:
1. Purchase a license from Avid for your product and configuration.
You will receive a redemption code in email or registered in your MyAvid account, which lets you review your license information.
> **Note:** The System ID is permanently associated with this system and does not change if you renew or
upgrade your license. The Activation ID changes with each license renewal or upgrade.
2. On a computer, start the Management Console for the Avid NEXIS system and click System, System
Setup, and the blue License tab. Keep this tab open; you will need information from this screen in the following steps.
3. In a separate browser tab, go to the following page: https://avid.com/license
4. Do the following:
a. Type the Activation ID you received from Avid and the Device ID from the Avid NEXIS system.
The Activation ID is verified, and the System ID field is displayed.
b. Type (or copy and paste) the Device ID from the Management Console and the System ID you received in the email from Avid.
2 Configuring and Licensing the System c. Type your email address, then click Submit.
d. A license file is created.
e. Click Download to save the license file to the computer.
5. In the Management Console, do the following:
a. On the License tab, select the Offline Activation method.
b. Type (or copy and paste) the Activation ID and the System ID you received in the email from Avid.
c. Click Choose File and navigate to the location of the license file.
d. Click Activate.
6. In the confirmation dialog, click OK.
The system licensing process starts and can take several minutes. When complete, click Close.
7. Close the browser tab and start a new one. (Avid recommends this to make sure the browser cache is
clear.)
8. Log into the system again and click System, then System Setup, then the blue License tab again.
Verify that the license is now activated. (For new systems, the System ID on the dashboard might take a few minutes to be displayed.) In the Capacity section, verify the amount of capacity and Tiers you purchased. When you bind Media Packs, you can choose how much capacity to apply to each Tier.
9. Continue with "Binding Media Packs to the File System" on page 34.
Activating a Modular License Avid NEXIS | VFS version 2023.7.0 introduced modular licenses for F-Series Engines and the PRO+. You can activate a modular license before or after adding the Engine to an existing shared-storage system.
g For Avid NEXIS | F2, the modular license is activated only on the F2 and applies to an F2X, regardless of when they are paired.
> **Note:** If two Controllers are installed, use the IP address of the top Controller (in a 2U) or left Controller (in a
5U). In the PRO+, only one Controller is supported, and is installed upside-down in the bottom slot.
Make sure to activate the correct license for the Engine you are logged into. Once the license is active, you cannot remove it without help from Customer Care.
To activate a Modular License:
1. In a browser, type the IP address of the Controller in the Engine.
2. On the Login screen, enter the Administrator user name and the password.
The Management Console opens in Engine mode (no System Director is running). Engine mode supports only two operations: installing the software and activating the license.
3. Do one of the following:
- For ONLINE activation:
a. Click the blue License tab.
b. In the Activation section, select the Online Activation Method.
c. Type (or copy and paste) the Activation ID and System ID (for new systems only) you received from Avid.
2 Configuring and Licensing the System d. Click Activate.
e. In the confirmation dialog, click Continue.
f. The system licensing process starts. When complete, click Close.
- For OFFLINE activation:
a. In a separate browser tab, go to the following page: https://avid.com/license b. Type the Activation ID you received from Avid and the Device ID from the Avid NEXIS system.
The Activation ID is verified, and the System ID field is displayed.
c. Type (or copy and paste) the Device ID from the Management Console and the System ID you received in the email from Avid.
d. Type your email address, then click Submit.
A license file is created.
e. Click Download to save the license file to the computer.
f. In the Management Console, click the blue License tab.
g. Select the Offline Activation method.
h. Type (or copy and paste) the Activation ID and the System ID you received in the email from Avid.
i. Click Choose File and navigate to the location of the license file.
j. Click Activate.
k. In the Warning dialog, click OK to continue.
The Engine reboots to complete the activation process.
4. Log back into the Management Console and confirm the license information.
The Entitlements field displays the license type, and the Details pane fields show the information for this license.
You can add it to an existing shared-storage system or use it as a standalone system (if configured to run the System Director service). You can bind the Media Packs in the Engine with no effect on the system capacity license (if applicable).
2 Configuring and Licensing the System Updating a Capacity License You can update a current, unexpired capacity license if, for example, you purchase more storage or additional features while the license is active.
g Modular licenses remain activated for the serviceable life of the Engine and never need an upgrade.
During the license update, the system will not accept reads or writes. Perform this operation during an idle period, if possible, or notify clients of the disruption.
To update a license:
1. Purchase or renew a license from Avid to cover the updated storage or features.
2. Log into your MyAvid account to retrieve the new or updated license. (If you will update the license
offline, see "Activating the System Capacity License Offline" on page 26 for information on generating and downloading the license file.) Your MyAvid account contains license information for all your Avid NEXIS systems. Make sure to select the correct license type and size (capacity) for the system you are updating.
3. In the Management Console, click System, then System Setup.
4. In the Update License section, select Online or Offline from the list.
5. Type the new Activation ID you received from Avid. (The System ID remains the same.)
6. [Offline Activation only] In the License File field, click Choose File and navigate to the location where
you downloaded the license file.
7. Click Update.
8. In the confirmation message, click OK.
9. When the license is updated, click Close and log back in. (Avid recommends closing the browser tab
and opening a new one to make sure the cache is clean.)
10. If you updated an expired license, notify the users that they can reconnect (only two connections are
supported while a license is expired).
Using a Trusted Certificate By default, Avid NEXIS uses a self-signed certificate, but starting with version 2024.5.0 you can instead use a trusted certificate from a trusted authority.
About Self-Signed Certificates A self-signed certificate prompts a browser warning when connecting with HTTPS. You can accept the certificate to continue making the HTTPS connection; for example, on Chrome, click Advanced, and then click Continue to <IP_address>. On Microsoft Edge, click Details, then click Go on to the webpage.
From then on, whenever you connect to the Management Console in the same browser, you are no longer shown the security warning.
Browsers do not consider self-signed certificates secure since they are not signed by a certificate authority, so your browser might continue to show the connection as insecure even after you connect through HTTPS, although the connection is more secure than using HTTP.
For example, when logged in to a system using a self-signed certificate, the URL field looks like the following:
2 Configuring and Licensing the System About Trusted Certificates A trusted certificate is issued by a recognized certificate authority. Organizations can even create their own trusted certificates. Trusted certificates ensure that the URLs for an Avid NEXIS system are validated, that everyone is who they say they are.
Avid NEXIS supports the use of a PKIX (Public Key Infrastructure X.509) certificate that follows the RSA standard, with an unencrypted (or decrypted) private key (requires Avid NEXIS version 2024.5.0 or higher).
The key must be at least 2048 bits, up to a maximum of 4096 bits.
> **Note:** Only system administrators (the default Administrator account or a member of the System
Administrators user group) can apply a certificate. See "Applying a Trusted Certificate " on the next page.
Rental houses can still use a self-signed certificate before they lend equipment to their customers and when the equipment is returned, to reconfigure for another client. (See "Using a Self-Signed Certificate (Stop Using a Trusted Certificate)" on page 33.) The client customer can apply a trusted certificate when they add the Engine to their system.
Certificate Expiration Both trusted and self-signed certificates have an expiration date. The system continues to be accessible and usable with an expired certificate; when you log in the first time after the certificate expires, the browser warning is shown again.
- Trusted certificates typically expire after one or more years (controlled by the issuer). The system
displays warnings at 60, 30, and 7 days before expiration, and the messages change color at each interval. If you configure email notifications, warnings are also sent by email (see "Configuring the Notification Service" on page 37). You can view the trusted certificate expiration date on the System > System Setup > Security tab.
When a trusted certificate expires, the system remains usable. To continue using a trusted certificate, you must contact the certificate issuer for a new one, which you can then upload and apply to the Avid NEXIS system.
Self-signed certificates expire after two (2) years and are regenerated automatically every time the
- system reboots, even if not expired. No message are displayed about self-signed certificate
expiration. You can view the self-signed certificate expiration date on the System > System Setup > Security tab.
Required Information for a Trusted Certificate If you plan to use a trusted certificate, provide the certificate authority (CA) with the following information specific to the Avid NEXIS system:
Required Information Applicable Notes Platforms Shared-storage system All For on-premises systems, configure DNS in the Management name (the FQDN that Console (see "Configuring DNS Service " on page 23).
serves as the host name For Cloud systems, make sure DNS is configured as part of the for DNS) deployment. Log into the cloud provider’s console to find the DNS name for your deployment or get this information from your IT personnel.
Domain names of every On-premises Engine and System Director Appliance (if 2 Configuring and Licensing the System Required Information Applicable Notes Platforms applicable) IP addresses of all the On-premises Provide the addresses for all Controllers in all Engines and the network interface ports SDA, where applicable.
(data ports), including Adding each Engine’s Controller IP addresses allows the netmask and gateway certificate to validate the IP address when you log into an individual Engine. (A replacement Controller uses the same IP address as the one it replaces.) If possible and if allowed by your security team, include the addresses for any additional Engines or redundant Controllers that are planned but not yet installed. This will reduce the need to request an update to the certificate later.
Virtual IP address of the On-premises Only if different from the IP address of the Controller running System Director the embedded SD service IP address of the Avid Cloud Avid recommends using a static IP address if possible. A NEXIS system VM dynamic address changes whenever the VM is restarted, and complicates the certificate recognition.
DNS domain name where All the Avid NEXIS system is registered List of DNS servers and On-premises For more information see "Configuring DNS Service " on The certificate authority provides you with the following:
A certificate file (can have the extension .crt, .cert, or .pem)
- A key file (typically with the extension .key)
- Applying a Trusted Certificate
When you receive your certificate and public key files, make sure they are decrypted, then upload (or copy and paste) them and apply them to the Avid NEXIS system.
g Open the key file in any text editor. If it begins with the string “RSA encrypted key starts here,” the file is encrypted. Contact your IT administrator to decrypt it.
This procedure applies when applying the trusted certificate for the first time and if you need to update your certificate (for example, if you added more IP addresses or Engine names).
Changing the certificate type (trusted to self-signed or the reverse) requires a reboot and interrupts user workflows. Plan accordingly.
To apply a new or updated trusted certificate:
1. On a computer accessible to the Avid NEXIS system, download the certificate and key files (or their
contents) from the issuer.
2. Log into the Management Console and click System, then System Setup.
3. Click the Security tab.
2 Configuring and Licensing the System The Certificate Information panel contains fields for the name of the issuing authority, the expiration date, and whether or not a private key is installed.
4. In the Action Tools area (see "Understanding the Management Console Interface" on page 12), click
Edit Certificate.
5. In the Engines list, click one or more Engine names, and the System Director Appliance if applicable,
to select it (or click the Select All button).
> **Note:** Make sure to select the Engine running the embedded System Director, if no SDA is present.
6. Select an installation method, either:
  - Using files
  - Using text strings that you copy and paste from the files
7. Do one of the following:
a. If you selected Using files, click Choose File to navigate to the location of the certificate file and the private key file, select them, then click Install.
b. If you selected Using text strings, copy and paste the entire contents of the certificate file and the private key file including the “-----BEGIN CERTIFICATE-----” and “-----END CERTIFICATE-----” strings into the respective text boxes, then click Install.
Make sure the pasted text looks similar to the following example:
The system reboots and the connection is lost.
Close the browser tab and open a new one to log back in.
When you log in again, the browser connection is secure and you no longer see the warning.
Viewing Certificate Details For both self-signed and trusted certificates, you can display the details in the Management Console.
2 Configuring and Licensing the System To see certificate information and details:
1. Open the Management Console and click System, then System Setup.
2. Click the blue Security tab.
The Certificate Information panel shows the issuer, expiration date, and status of the private key.
3. To see more detail, click Certificate Content.
The content field expands to display the certificate content, similar to the following (for security, the private key content is not displayed):
> **Note:** You can click and drag the bottom right corner of the Certificate Content field to enlarge it even
more.
Using a Self-Signed Certificate (Stop Using a Trusted Certificate) At any point you can switch the system (or one or more Engines)back to using a self-signed certificate; for example, if you rented equipment and are preparing to return it, or if you are at a rental house resetting returned equipment.
Changing the certificate type (trusted to self-signed or the reverse) requires a reboot and interrupts user workflows. Plan accordingly.
To use a self-signed certificate instead of a currently applied trusted certificate:
1. Open the Management Console and click System, then System Setup.
2. Click the Security tab.
3. In the Action Tools area (see "Understanding the Management Console Interface" on page 12), click
Edit Certificate.
2 Configuring and Licensing the System The display changes to show the Install Certificate options, and the Engines list lets you select one or more (or all) Engines.
4. In the Engines list, click an Engine name to select it (or click the Select All button).
5. Click Install self-signed certificate.
6. In the warning dialog, click OK to continue.
The system reboots and the connection is lost.
Close the browser tab and open a new one to log back in.
When you log in the next time, the browser behavior is the same as before you used a trusted certificate. After you accept the certificate, the browser no longer shows the warning on subsequent logins (see "Using a Trusted Certificate " on page 29).
Binding Media Packs to the File System After you have created a file system (on a new system) or added a new Engine to an existing shared- storage system, bind the Media Packs to it.
The available bind options depend on the Engine type, and do or do not support media mirroring, as follows.
Bind Option Available On Media Mirroring Supported?
Scale-Out E2 Y (512KB strip size) E4 Y Intended for all workflows and formats, and for 10 or more clients E5 Y (up to the supported client count for your Avid NEXIS model).
E2 All-Mirror Y E4 All-Mirror Y E5 All-Mirror Y E5 Nearline N PRO N 2 Configuring and Licensing the System Bind Option Available On Media Mirroring Supported?
F2 Y F2X Y F5 Y F5 Nearline N PRO+ N High Performance E2 N (1024KB strip size) E4 N Intended for demanding workflows with low client counts (10 or PRO N fewer).
F2 N F2X N PRO+ N SSD E2 SSD1 Y Intended for ultra-high bandwidth media playback.
F2 SSD N Supports Media Mirroring only with the E2 SSD.
g Media Pack performance types cannot be changed after the pack is bound. To change a Media Pack’s performance type, unbind it and then rebind it as a different performance type, if available.
To bind Media Packs:
1. In the navigation sidebar, click Storage, then Media Packs.
2. Select a Media Pack.
3. Click Bind.
4. In the message box, click OK.
The Media Pack Configuration dialog box opens.
- If the system has a capacity license, the Media Pack Configuration dialog shows the total space
allowed by the license, and the available space for binding additional Media Packs. Make sure there is enough available space to bind the selected Media Pack (compare the Total Capacity of the Media Pack in the Details area to the Available space for the license).
g If no licensed capacity is shown, click the link to go to the License tab of the System > System Setup page to see the current license details.
1 Media mirroring is supported with E2 SSD to provide high availability without dual Controllers.
2 Configuring and Licensing the System g
- If the Media Pack is in an Engine with a modular license (or no license), no capacity information
is shown.
- In some cases, the Media Pack Configuration dialog may not offer a choice of Performance
options (for example, in all-SSD Engines or Cloud deployments), or may show the only supported option.
5. Select or confirm the bind settings for the Media Pack, then click Apply.
> **Note:** If you plan to add the Media Pack to a mirror-capable Storage Group, select the Scale-Out
option.
When the Media Pack is bound, its icon changes from white to green, and the state is Spare - Bound.
6. Add the Media Pack to an existing Storage Group or use it to create a new one. See "Managing
Storage Groups" on page 45.
Setting the System Time For on-premises systems, you can configure the system time manually or use one or two NTP servers, in your environment or a public server (see NTP.org). Because licenses are sensitive to time changes, Avid strongly recommends using an NTP server.
Avid strongly recommends setting the system time or time or configuring NTP servers during initial system setup, to avoid issues when applying a license.
2 Configuring and Licensing the System To set system time, or configure an NTP server:
1. In the navigation sidebar, click System, then System Setup.
2. Click the Date/Time tab.
3. Do one of the following:
  - To configure an NTP server, click the box and type the IP addresses or host names for up to two
NTP servers.
  - To set the date and time manually, type the correct date and time in 24-hour format in the
field and select a time zone from the list.
4. Click Save.
5. In the dialog box, click OK.
Configuring the Notification Service The Notification service watches the system logs and sends email to one or more addresses you configure.
> **Note:** Avid strongly recommends configuring notification so that you (and others you add to the list) are
alerted to system problems — such as disk failures and other critical hardware issues — immediately.
You can apply filters to include or exclude messages from the following subsystems based on the severity level (Error, Warning, and Informational):
Subsystem Reported Information Server Control Problems or actions involving internal operations including problems saving metadata to disk System Director Problems or actions involving the file system, metadata, memory, system drives (on-premises only), the System Director IP address, and networking Avid Storage General Problems or actions involving Workspaces, Media Packs, and network communication errors detected by an Avid NEXIS component Password changes Storage Manager General Problems or actions involving Media Pack operations such as initialization and status changes g Informational messages cover every action that happens on a system and can flood the recipients’ mailboxes.
To configure the Notification Service:
1. In the navigation sidebar, click Users, then Notifications.
2. In the Configuration area, do the following:
a. Type the IP address or host name of your network’s SMTP (email) server.
b. (Optional) If your SMTP server uses a port other than 25 (default), type the port number. Port 25 is appropriate for most cases.
c. In the Email Address field, type an address for the sender of the email messages. This will be the name and address in the “From:” field of all email messages sent from this system; for example, “Ace NEWS NEXIS.” (By default, email messages also contain the IP address and host 2 Configuring and Licensing the System name of the system that sent them.) d. Click Save.
3. In the Contacts area, type a name and a valid email address for the primary recipient of the email
notifications. The Name field can be different from the recipient’s actual name; for example, “Ace NEWS NEXIS Admin.”
4. Click Save.
5. (Optional) Click Run Test to make sure the Configuration information is correct. If successful, the
Results area displays a Success message and the primary contact will receive email from the configured address.
6. To add more contacts, click Add Contact and type the additional names and email addresses. There
is no hard limit to the number of Contacts you can add.
7. In the Filters area, click the boxes for the types of events and subsystems you want the system to
send notifications for.
8. Click Save.
The Results area displays a confirmation message.
The status of the Notification Service is shown in the Management Console as either Stopped or Running.
9. (Optional) To test the filters settings, click Run Test.
The Results area displays the status (success or failure) of the test, and all the configured contacts receive email listing the filters being tested.
Changing the Default System Passwords The Avid NEXIS system has several passwords:
The password for the Agent, used for initial system setup and for logging into the Agent.
> **Note:** The Agent password can also be used to log into the Management Console. This is intended
behavior to provide an emergency method of logging in to the system. Therefore, Avid recommends changing both the Agent password (see the Avid NEXIS Setup and Maintenance Guide) and the Management Console password.
The Administrator password, used when you log into the Management Console.
- You can change this after creating a file system. This password is separate from the one for the
Agent. Avid highly recommends that you change the Administrator password when you configure a system.
- The password for the BMC (Baseboard Management Controller), which is a low-level process on the
Storage Controller that manages the BIOS, MAC addresses, and other internal functions (on- premises only). See "Changing the BMC Password" on the next page.
If the file system exists, the default password is blank. Avid highly recommends that you set or change the Administrator password when you configure your system.
See "Guidelines for Names and Passwords" on page 18 for valid password characters and the maximum length.
To change the Administrator password:
1. In the navigation sidebar, click Users, then Administrator.
2. Type the current Administrator password in the Current Password field.
3. Type the new Administrator password in the New Password field.
2 Configuring and Licensing the System
4. Type the new Administrator password again in the Verify Password field.
5. Click Submit.
  - The Administrator Password is changed to the new value.
  - The Results area displays a confirmation message.
> **Note:** If you forget the Administrator password you have created, contact Avid Customer Care.
Changing the BMC Password You can change the BMC password on Avid NEXIS | E Series Engines to prevent unauthorized access to the hardware and to assign the same password to all Controllers for ease of management. This is useful for Controllers made after April 2020, which each have a unique default password.
Avid no longer recommends changing the BMC password on Avid NEXIS F-Series or PRO+.
A Controller and its BMC process use the same password, which is one of the following:
Manufacture Applicable to Default password Date Before April 1, Avid NEXIS E-series, Avid NEXIS | se-admin 2020 PRO, System Director Appliance On or after April 1, Avid NEXIS E-series, Avid NEXIS | Last 8 characters of the Controller serial number (on 2020 PRO 40TB, System Director the label) Appliance For example, if a Controller has the serial number RMS1005576G008Y, the default password is 576G008Y.
Changing the BMC Password on Avid NEXIS E-Series This procedure applies to all Avid NEXIS Enterprise (E-series), Avid NEXIS | PRO, and Avid NEXIS | SDA, regardless of the Controller manufacturing date.
To change the BMC password on Avid NEXIS | E Series and Avid NEXIS | PRO:
1. Connect a computer or laptop to the Management Port on the Storage Controller, as shown:
2. Open a browser window and go to the address: 169.254.10.250, which is the default IP address of
the BMC controller.
3. Log in using the user name root and the default BMC password.
2 Configuring and Licensing the System
4. In the BMC interface, click the Configuration tab.
5. Select Users from the pull-down menu.
2 Configuring and Licensing the System
6. Click Modify User.
7. Click Change Password, type a new password in the Password and Confirm Password fields, then
click Modify.
8. Click OK.
9. Log out of the BMC interface.
Changing the Default System Settings The Avid NEXIS system has a set of factory-default settings that govern its behavior. Typically you do not need to change these.
2 Configuring and Licensing the System To display the system settings:
1. In the navigation sidebar, click System, then Settings.
2. Click Preferences.
3. If needed, change one or more settings according to the following table.
As soon as you make a change, the Save icon changes to orange.
4. (Optional) To revert all options to the previously saved values, click Reset.
5. Click Save.
These settings include:
- Logging Preferences — These control what types of logs are collected and the severity and verbosity
of the event being logged.
Do not change the logging preferences unless instructed to do so by Avid Customer Care.
General Preferences — These control general system behaviors and are described in the following
- table.
Option Type Default Description Total System text (numeric) 1000 MB/sec Total reservation bandwidth allowed by the system, in Bandwidth MB/sec. When this value has been reached, Avid NEXIS (MB/sec) will no longer accept bandwidth reservations from clients.
This value does not represent the bandwidth capabilities of the Avid NEXIS system. For more information about Avid NEXIS bandwidth capabilities, see the product specifications for your system components.
Default text (numeric) 0 Bandwidth limitation for devices that are automatically Bandwidth for created at connection time.
Auto Created The default value (0) grants unlimited bandwidth.
Devices (MB/sec) Force Manual check box Disabled If enabled, clients without an entry in the Bandwidth Device Creation Limits list are not allowed to connect. Manually create an entry for every client computer that is expected to connect to the Avid NEXIS system.
History Data check box Enabled When enabled (default), collects system history data Collection (see "Displaying Event History" on page 127. If disabled (for support use only), the system stops collecting new data, but existing data is retained.
Configuring SNMP Monitoring You can monitor your Avid NEXIS system using an SNMPv2 (Simple Network Management Protocol) application.
Avid provides a MIB (Management Information Base) file, which is a virtual database that describes the objects available from the managed device. Using this information, you can send queries for objects specified in the MIB file.
Avid NEXIS supports only unidirectional (read-only) SNMP communication.
2 Configuring and Licensing the System To use SNMP monitoring, you download the MIB file and then enable SNMP monitoring on the Avid NEXIS system.
To download the MIB file:
1. In the navigation sidebar, click System, then Settings.
2. Click the SNMP tab.
3. Click Download next to the Avid NEXIS MIB file and load it into your SNMP manager.
To enable SNMP monitoring:
1. In the navigation sidebar, click System, then Settings.
2. Click the SNMP tab.
3. Click the box to enable SNMP, and type the following information. All fields are optional (except
Community string) and can have up to 255 alphanumeric characters.
  - Community string — Set to the read-only string ‘public’ by default. Change this to the string
recognized by your SNMP manager.
  - System name — Name of the Avid NEXIS shared-storage system
  - Location — Description of where this Avid NEXIS system is located (for example, building name,
floor, department, or any description that is useful to your organization)
  - Contact — Name of the person to contact about SNMP query results. Can include an email
address and phone number.
4. Click Save.
Enabling Link Aggregation If your environment supports and requires it, you can configure link aggregation (also called redundant networking, NIC teaming, link bundling, or port trunking) on the network ports on each controller, which provides redundancy in case one network port fails. The Avid NEXIS implementation follows the Link Aggregation Control Protocol (LACP) standard.
> **Note:** Link aggregation is not supported on Avid NEXIS | PRO or Avid NEXIS | PRO+.
g Enabling link aggregation is a disruptive process that temporarily causes loss of connection. Therefore Avid recommends enabling LACP during initial system setup and configuration, or during a maintenance window, and connecting a computer to the Management Port on the target Engine or SDA to maintain access.
LACP is supported in systems with one or two Controllers, but if two Controllers are present, it is enabled on both. Connect the Ethernet ports on all installed Controllers to one or more supported switches.
In a configuration with multiple Engines or a System Director Appliance, you enable LACP on each Engine and the System Director Appliance individually, in any order. Furthermore, you can enable LACP on different chassis in the same shared-storage system. For instance, you can enable LACP only on the Engine running the System Director (or the System Director Appliance), or on all Engines (and the System Director Appliance), or any combination.
The overall procedure for enabling LACP is as follows:
1. Enable LACP on the switch.
2. Enable LACP on the Avid NEXIS.
3. Connect the cables between the switch and the Avid NEXIS.
2 Configuring and Licensing the System To enable link aggregation:
1. Enable link aggregation on the connected switch or switches. For more information, see the Avid
NEXIS Network and Switch Guide.
The switch will lose connectivity to the Avid NEXIS system until LACP is enabled on Avid NEXIS and the cables are connected.
2. Connect a computer to the Avid NEXIS Engine or SDA via the Management Port.
3. In the navigation sidebar, click System, then System Setup.
4. Click Interfaces.
5. In the Data Interface section, click the box for Link Aggregation.
6. Click Save.
7. In the dialog box, click OK.
When the system restarts, link aggregation is enabled on the network ports on all installed controllers.
If an error occurs with the LACP configuration, a status message is shown.
8. Connect cables from both NIC ports on the Controllers to the LACP-enabled switch. See the Avid
NEXIS Setup and Maintenance Guide for example LACP cable configurations.
9. Repeat steps 2 through 7 on all chassis (Engines or SDA) on which you want LACP enabled.
To disable link aggregation:
1. In the navigation sidebar, click System, then System Setup.
2. Click Interfaces.
3. In the Data Interfaces section, deselect the box for Link Aggregation.
4. Click Save.
5. In the dialog box, click OK.
When the system restarts, link aggregation is disabled on the network ports on all installed controllers.
To verify or monitor the status of link aggregation on the controllers, see "Displaying Controller Information" on page 115.
3 Managing Storage Groups 3 Managing Storage Groups Managing Storage Groups includes creating them, adding or removing Media Packs, renaming, or deleting them.
About Storage Groups Storage Groups are collections of Media Packs, enabling you to create large pools of storage for media files accessible within a shared-storage environment. Storage Groups give you flexibility in allocating storage capacity and bandwidth among users or groups with different functions or workflow requirements, or as a means of mitigating the risk of various disk failure scenarios.
Within Storage Groups, you create Workspaces; virtual volumes that can be resized dynamically.
Workspaces allow you to subdivide the space in the Storage Groups to accommodate projects and users.
Clients mount Workspaces to capture, edit, and play back media files.
On-premises Storage Groups can be:
Mirror-capable (also called flexible), which protects against the failure of an Engine. The Storage
- Group supports the creation of both mirrored Workspaces and unmirrored Workspaces.
- All-Mirror. The Storage Group uses only Media Packs in branded, Avid NEXIS All-Mirror Engines. All the
Workspaces in this Storage Group are mandatorily mirrored by default.
For more information, see "Storage Group Options" below and the Avid NEXIS Setup and Maintenance Guide.
You can increase the amount of space in a Storage Group at any time, with some exceptions. For more information, see "Adding Unassigned Media Packs to Storage Groups" on page 107.
Storage Group Options You can have multiple Storage Groups depending on your workflow requirements.
Storage Groups and Media Pack Bind Options Storage Groups support several different Media Pack bind options, and Engine and Media Pack protection options, depending on your hardware and license. The total Storage Group capacity is based on the number and capacity of all the Media Packs in the group, and the types of Media Pack protections you select.
Using a single Storage group provides the highest bandwidth to all users and Workspaces. The Workspaces can use different disk protection modes (called Media Pack protection) in the same Storage Group. Unless you have specialized needs, Avid recommends creating a single Storage Group containing multiple Workspaces, each with different protection schemes as needed.
Storage Group Space and Media Pack Capacity Both Media Pack capacity and Storage Group capacity are based on the smallest component: the smallest drive in a Media Pack, or the smallest Media Pack in a Storage Group.
If necessary, you can use a larger capacity drive to replace a smaller one in a Media Pack, but the extra capacity of the larger drive is not used. However, a Media Pack will not accept a smaller drive to replace a larger drive.
Avid recommends always using the same capacity drives in a Media Pack, and the same capacity Media Packs in a Storage Group. Consider the following examples:
3 Managing Storage Groups Number and Size Resulting Capacity 9 10TB drives + 1 12TB drive 100TB Media Pack Why: Only 10TB of the smallest drive is available to the Media Pack 2 60TB Media Packs + 2 140TB 240TB Storage Group Media Packs Why: Only 60TB of the two larger Media Packs is available to the Storage Group space (4 x 60 = 240TB) You get the benefit of the full amount of storage on the drives or Media Packs only when all the members of each are the same capacity.
Storage Group Performance Options The performance type of a Storage Group depends on the bind option of the Media Packs in the Storage Group, which must be the same (see "Binding Media Packs to the File System" on page 34).
All Storage Group performance types can be part of the same Avid NEXIS shared-storage system: your configuration can include a combination of Scale-Out, High Performance, SSD performance, and Nearline Storage Groups.
Within the restrictions described previously, the Storage Groups can be All-Mirror, mirror capable, or neither.
> **Note:** Avid NEXIS | PRO or Avid NEXIS | PRO+ Engines cannot be mixed with Avid NEXIS Enterprise (E-series or
F-series) Engines in the same shared-storage system.
Protecting Workspaces from Engine Failure Storage Groups can be configured to protect Workspaces against the failure of an entire Engine (all of its Media Packs) through media mirroring (also called Engine Protection).
Media mirroring duplicates, or mirrors, the Workspace data onto other Media Packs in separate Engines, all within the same Storage Group. In the event of an Engine failure, the Workspace remains usable with no data loss.
> **Note:** If your workflow requires 24/7 uptime, Avid strongly recommends using media mirroring.
Media Mirroring Restrictions Because media mirroring protects against the loss of an Engine, it requires the use of a System Director Appliance so that the System Director service is not lost if the Engine it is running on fails. In addition, some configurations are designed for speed rather than redundancy, where mirroring is contraindicated.
Therefore Media Mirroring is not supported:
- In Avid NEXIS | PRO+ and Avid NEXIS | PRO configurations (cannot be used with a System Director
Appliance) With High Performance Media Packs
- With Avid NEXIS | F2 SSD Engines
- Flexible, Mirror-Capable Storage Groups
You can create a flexible, mirror-capable Storage Group or an All-Mirror Storage Group, each of which supports different operations and Workspace protection types.
A flexible, mirror-capable Storage Group can consist of the following:
3 Managing Storage Groups Scale-Out Media Packs from any combination of E-Series and F-Series Engines, including Nearline
- models (Avid NEXIS | E5 NL and Avid NEXIS | F5 NL)
- SSD Media Packs in Avid NEXIS | E2 SSD Engines only
Mirror-capable Storage Groups support:
- Both mirrored and unmirrored Workspaces in the same group
- Some Workspace move operations ("Moving a Workspace" on page 67)
- Media Pack or Engine removal in some cases (see "Removing Media Packs from a Storage Group" on
page 109) To be (or become) mirror capable, a Storage Group:
Requires a System Director Appliance (System Director Appliance or Avid NEXIS | SDA+) in the shared-
- storage configuration
- Requires the Online Flexible Protection license option on the Media Packs in any Avid NEXIS F-Series
Engines that belong to the group
- Can be mirror capable immediately (when you create it) or over time, as follows:
  - Add the same type of Engines, with the same number of Media Packs, to the Storage Group
until it contains at least three identical or equivalent Engines (see "Valid Mirror-Capable Configurations" below for examples)
  - Add more Media Packs to less-than-fully populated Engines already in the Storage Group (new
Media Packs must be bound and licensed the same as the current ones) Before a Storage Group becomes mirror capable, the Mirror Capable column on the Storage Groups page displays the word No. When it becomes mirror capable, the column displays the word Yes, as shown in the following figure:
All writes to a mirrored Workspace are duplicated (mirrored) to another Engine in the Storage Group, so if an entire Engine fails, the data and the Workspace remain available.
Valid Mirror-Capable Configurations To be or become mirror capable, a Storage Group must contain at least three identical or equivalent Engines, each with the same number and capacity of Media Packs:
For example, a flexible mirror-capable Storage Group can include:
Three Avid NEXIS | E2, or one Avid NEXIS | E2 and two Avid NEXIS | F2, all bound as Scale-Out
- Three Avid NEXIS | E4, or two Avid NEXIS | E4 and a paired Avid NEXIS | F2 and Avid NEXIS | F2X, all
- bound as Scale-Out
Three Avid NEXIS | E5, or three Avid NEXIS | F5, or a combination (at least three Engines total), all
- bound as Scale-Out
- Three Avid NEXIS | E2 SSD (all bound as SSD by definition)
3 Managing Storage Groups All-Mirror Configurations An Avid NEXIS All-Mirror Storage Group is immediately mirror capable, by definition, and:
Requires a System Director Appliance (System Director Appliance or Avid NEXIS | SDA+) in the shared-
- storage configuration
Must start with at least three All-Mirror Engines or at least three Media Packs bound as All Mirror
- Protection (from identical Engines) at the time you create the group
- Supports One Disk or Two Disk Media Pack protection on Workspaces
- Does not support removing Media Packs or Engines that result in less than the minimum configuration
- Supports Workspace moves only to and from other All-Mirror Storage Groups
When a Storage Group is All-Mirror, the Mirror Capable column on the Storage Groups page displays the word Enforced, as shown in the following figure:
All writes to any Workspace in an All-Mirror Storage Group are duplicated (mirrored) to another Engine by design.
Distributing Engines Among Mirror-Capable Storage Groups Avid does not recommend splitting the Engines between multiple mirror-capable Storage Groups. For example, consider three 5U Engines, each with eight Media Packs. Add all 24 Media Packs to the same Storage Group (which will be mirror-capable; in blue, as shown):
With the same three 5U Engines, you can divide the Media Packs into one mirror-capable Storage Group (blue), and one or more non-mirror-capable Storage Groups (purple and green):
3 Managing Storage Groups However, Avid does not recommend creating multiple mirror-capable Storage Groups from the same set of Engines, because the failure of any one Engine affects multiple Storage Groups:
Storage Group Space and Media Mirroring Media mirroring prevents media loss if an entire Engine fails, but reduces the overall amount of usable space in the Storage Group. Because all writes to a mirrored Workspace are made to two Engines in the Storage Group, the Storage Group capacity is reduced by the amount of space used by the mirrored Workspaces.
Mirrored Workspaces can use either One Disk or Two Disk protection. The protection mode cannot be changed later. Disk protection is used with mirrored Workspaces to repair and rebuild data if a drive fails in a Media Pack.
Net usable space in the Storage Group is reduced by the Media Pack protection mode on the Workspaces and by whether Workspaces are mirrored, as follows:
Workspace Allocation Media Pack Protection Multiplier Actual Space Used 1000GB One Disk: 1.125 1125GB (2250 if Mirrored) 1000GB Two Disk: 1.25 1250GB (2500 if Mirrored) 3 Managing Storage Groups Storage Groups and Team Quotas Each Avid NEXIS Team requires a quota in at least one Storage Group for their exclusive use (see "Managing Avid NEXIS Teams" on page 94). Quotas are space that no other user (including a System Admin) or Team Administrator can see or use. Teams are not aware of another Team’s quota, or even that other Teams exist on the system.
A Storage Group supports one quota per Team. A Team might have a quota in only one Storage Group, or a quota in every Storage Group (if applicable). Within their quotas, each Team Admin can create Workspaces. Team Admins cannot change their own quotas.
> **Note:** Team quotas decrease the amount of space available in the Storage Group for other purposes such as
non-Team Workspaces or quotas for additional Teams.
Creating Storage Groups To create a Storage Group the system must have at least one bound Media Pack. See "Binding Media Packs to the File System" on page 34 and "Storage Group Performance Options " on page 46 for more information. Ideally, create Storage Groups from Media Packs of the same size (capacity).
To use media mirroring (on-premises only), the Storage Group must be mirror-capable or All-Mirror. See "Protecting Workspaces from Engine Failure " on page 46.
> **Note:** Storage Group names must be unique within the shared-storage system.
To create a Storage Group:
1. In the navigation sidebar, click Storage, then Storage Groups.
2. Click Add.
3. In the Name field, type a name for the Storage Group. See "Guidelines for Names and Passwords" on
page 18 for more information.
4. In the Media Packs list, select the Media Packs you want to add to the new Storage Group.
If you select Media Packs of different performance types or from incompatible Engines, the system displays an error message. To create an All-Mirror Storage Group, select at least three All-Mirror Media Packs from at least three identical All-Mirror Engines in one operation.
5. Click Add.
6. Click Save.
The Media Pack state changes to Active - Bound, and the Storage Group is created.
Renaming Storage Groups Only a System Admin can rename a Storage Group. (You cannot rename the Avid NEXIS | Cloudspaces Storage Group.) Storage Group names must be unique within a shared-storage system. For other limitations, see "Guidelines for Names and Passwords" on page 18.
To rename a Storage Group:
1. In the navigation sidebar, click Storage, then Storage Groups.
2. Select the Storage Group you want to rename and click Edit.
3. Change the Storage Group name, then click Save.
Changing a Storage Group’s Capacity A Storage Group’s capacity is the product of the smallest Media Pack in it, multiplied by the total number of Media Packs in that group. For more information, see "Storage Group Options" on page 45.
3 Managing Storage Groups You can change the Storage Group’s total capacity as follows:
- Add more Media Packs ("Adding Unassigned Media Packs to Storage Groups" on page 107).
- Remove one or more Media Packs, within certain restrictions. See "Removing Media Packs from a
Storage Group" on page 109.
- Replace smaller Media Packs with larger ones through a series of add and remove operations, which
trigger Workspace redistribution (see "About Workspace Redistribution" on page 68). When all the Media Packs are replaced and the Workspace redistributions are complete, the Storage Group reflects the additional space.
Only an administrator can change a Storage Group’s capacity.
Displaying Storage Group Information Only an administrator can display information about Storage Groups.
The Storage Groups page displays the following information. Click any column heading to sort the information. Also see "Sorting and Searching" on page 17.
Heading Description Name Displays the name of the Storage Group Performance Displays the performance bind setting of the Media Packs in the Storage Group, which determines which workflow the Workspaces can support.
Mirror Capable Displays whether the Storage Group supports Engine protection on Workspaces in the group (see "Protecting Workspaces from Engine Failure " on page 46). Values are Yes or No.
Capacity Displays the total storage capacity of the Storage Group Effective Displays the effective amount of storage capacity of the Storage Group based on Media Mirroring and Workspace Protection attributes).
Used Displays the amount of storage space that currently contains user data (does not include space used by Teams) Unused Displays the amount of unused storage space in the Storage Group Allocated Displays the amount of storage space assigned to Workspaces in the Storage Group Available Displays the amount of storage space remaining in the Storage Group for other uses (Workspaces or Team quotas). Equal to the total capacity of the Storage Group minus any space for Team quotas (Team Reserved space), and minus any Allocated space.
means that no Team quotas have been set. ) Files Displays the number of files in all Workspaces in the Storage Group Directories Displays the number of directories in all Workspaces in the Storage Group To see or hide the Media Packs in a Storage Group:
1. In the navigation sidebar, click Storage, then Storage Groups.
2. Double-click a Storage Group or select it and click Edit.
Edit mode shows the same information as the List view, and also shows information for the Media Packs it contains.
3 Managing Storage Groups Deleting Storage Groups An administrator can delete a Storage Group if it does not contain any Workspaces or Team quotas. (See "Deleting Workspaces" on page 71 and "Deleting a Quota" on page 102).
To delete a Storage Group:
1. In the navigation sidebar, click Storage, then Storage Groups.
2. In the Storage Groups list, select one or more Storage Groups (or click Select to select all Storage
Groups) to delete.
3. Click Delete.
4. In the dialog box, click Yes.
The selected Storage Groups are deleted, and all the Media Packs that used to belong to them display a status of Spare.
4 Managing Workspaces 4 Managing Workspaces Workspaces are virtual storage objects that clients mount and use. The term Workspace also applies to Avid NEXIS | Cloudspaces, an optional subscription that provides additional storage in the cloud. You manage both Avid NEXIS | Cloudspaces and Workspaces from the Workspaces menu in the Management Console shared-storage system.
Workspaces can have their own access privileges, permissions, protection modes (on-premises only), and event triggers. At least one Storage Group must exist before you can create a Workspace; see "Creating Storage Groups" on page 50.
See "Groups and Roles at a Glance" on page 75 for information on which user types can perform Workspace operations.
Workspace Considerations Consider the following before you create Workspaces:
Number and size allocation — Determine how many Workspaces you need and how much storage
- each Workspace requires. This might be a function of project size, number of clients, media duration,
or media resolution. For example, you can create Workspaces for specific projects, groups, individual clients, streaming bit rates, media types, media distributors, or a combination of these.
For on-premises systems, also decide which type of storage to use for the Workspaces (the local, physical Storage Groups or Avid NEXIS | Cloudspaces, if applicable).
Avid NEXIS systems work reliably even when 100% full. However, Avid suggests reserving some space in on-premises Storage Groups rather than assigning all of it immediately to Workspaces. Allocated space tends to be filled quickly and you might need more later to accommodate a new project, client, or Team, to increase the size of a Workspace. In these situations, it is easier to use space held in reserve than to take it away from an existing Workspace.
Decide whether you will create Teams, and what their Workspace needs are. Either you (or any
- System Admin) or the Team Admins can create the Workspaces they will need. See "Managing Avid
NEXIS Teams" on page 94 for more information.
- Determine the Media Pack protection type you want (see "Workspace Protection Methods" below)
and the performance requirements. For more information see "Storage Group Options" on page 45.
For Teams, you can apply a policy that lets them select the Media Pack protection mode, or that restricts them to a specific option.
Access restrictions and type — You can apply policies on Teams that allow or restrict various
- operations on Workspaces.
For users who do not belong to a Team, you can apply access permissions at the Workspace level (see "Managing User and Group Access to Workspaces" on page 64), and on folders within the Workspaces through a set of application programming interfaces (APIs) available for download from Avid (only supported for the default administrator; see "Appendix — Managing Folder Level Permissions" on page 149).
Workspace Protection Methods Workspaces serve different purposes, and might need different levels of protection against data loss, such as when a drive in a Media Pack fails, or when an entire Engine fails. Avid recommends protecting all your Workspaces whenever possible.
> **Note:** This section does not apply to Avid NEXIS | Cloudspaces.
4 Managing Workspaces
> **Note:** Depending on the Team policy, some protections options might be enforced or not available to Team
Admins.
Protecting Workspaces from Drive Failure Media Pack protection guards against Workspace data loss from a drive failure within a Media Pack, but uses slightly more space in the Storage Group. Select from these options when you create the Workspace (availability depends on the Storage Group).
Media Pack Protection Type Description Two Disk l Workspace tolerates the simultaneous failure of two drives per Media Pack.
(Available in Scale-Out, SSD, Offers the best protection but requires the most space in the Storage and High performance Storage l Group.
Groups) Multiply the Workspace size by 1.25 to determine the total amount of
- space the Workspace will consume. For example, a 1000GB Workspace
uses 1250GB of space.
One Disk l Workspace tolerates the failure of one drive per Media Pack.
- Offers some protection, but requires timely replacement of failed or
(Available in Scale-Out, SSD, failing drives.
and High performance Storage Groups) Multiply the Workspace size by 1.125 to determine the total amount of
- space the Workspace will consume. For example, a 1000GB Workspace
uses 1125GB of space.
If a Storage Group contains Workspaces with different protection modes, when Media Pack drives fail, the Workspaces with One Disk protection are rebuilt at a higher priority than those with Two Disk protection.
After One Disk protected Workspaces are rebuilt, the Two Disk protected Workspace rebuilds begin. The Workspaces list displays the rebuild operations pending and in progress (including percent done) for all Workspaces.
Protecting Workspaces from Engine Failure Engine protection, through Mirrored Workspaces, guards against data loss if an Engine fails.
> **Note:** Engine protection does not apply to Avid NEXIS | Cloudspaces.
To create mirrored Workspaces, the Storage Group must be mirror-capable or All-Mirror (see "Protecting Workspaces from Engine Failure " on page 46). If so, the Mirror Capable column on the Storage Groups page displays Yes (for flexible Storage Groups) or Enforced (for All-Mirror Storage Groups). See "Displaying Storage Group Information" on page 51.
If you enable Engine protection (mirroring) on a Workspace, you cannot disable it later.
Creating Workspaces Each Workspace must have a unique name within the shared-storage system, even if they are in different Storage Groups.
Notes for Team Admins
- As the Team Admin, you create and manage the Workspaces your Team members will use, within the
restrictions of any policy for your Team (see "Your Team Properties" on page 103).
You can create Workspaces only in a Storage Group in which you have a quota. If applicable, you
- select the Storage Group when you create the Workspace.
4 Managing Workspaces If your Team policy allows it, you can apply either or both of the following options to Workspaces:
  - Engine Protection Mode — Protects the Workspace from the failure of an entire storage engine
(all its Media Packs). If the Storage Group supports this protection, and your policy lets you choose, you can select either Unprotected (if the Engine fails, the data is unavailable) or Mirrored (if the Engine fails, your data remains available from a mirrored copy).
> **Note:** Mirrored protection requires two times the size of the Workspace.
  - Media Pack Protection Mode — Protects the Workspace from the failure of one or more drives
(disks) in the Media Pack. If your policy lets you choose, you can select either One Disk Protection or Two Disk Protection, to ensure the Workspace remains available it one disk or two disks fail, respectively. One Disk protection uses 1.125 times the Workspace capacity.
> **Note:** Two Disk protection uses 1.25 times the Workspace capacity.
You can request more space in a Storage Group from the Avid NEXIS administrator.
- If allowed by your Team policy, you can delete Workspaces. Deleting a Workspace releases its space
- back to your quota, making it available for you to create other Workspaces or increase the size of
existing ones.
- If your Team policy requires a prefix on your Workspaces, you cannot change or delete the prefix. It is
automatically applied when you create a Workspace.
To create a new Workspace:
1. In the navigation sidebar, click Storage, then Workspaces.
2. Click Add.
Workspace Edit Mode opens, with the Attributes and User Access areas displayed. In the Capacity Tracker, select the Storage Group where you want to create the Workspace to see its available space and other information.
> **Note:** Team Admins do not see the Team Reserved space in the Capacity Tracker.
3. In the Attributes panel, type a name for the Workspace in the Name field. See "Guidelines for Names
and Passwords" on page 18 for more information.
4. (Optional - for System Admins) Select a Team who will use the Workspace (default is No Team).
(Workspace Admins cannot select a Team.) The selected Team’s policies are applied automatically: the Team prefix (if applicable to Workspaces) is added to the Workspace name, and the Team’s Engine Protection Mode and Media Pack Protection mode are also applied.
After Workspace creation, only other System Admins and the Team Admin for that Team can see or modify the Workspace.
5. If applicable, click the Storage Group list box and select the Storage Group in which you want to
create the Workspace. If you are a Team Admin, you must have a quota in more than one Storage Group to choose one.
> **Note:** The Capacity Tracker lets you compare Storage Groups (for example, to see your Team quota in
each one, if applicable, or to see which has the most free space). Selecting a Storage Group in the Capacity Tracker does not select the Storage Group for the Workspace.
6. For an on-premises Workspace, do the following, otherwise skip to the next step:
4 Managing Workspaces a. If applicable, select an Engine Protection Mode (if the Storage Group supports it): either Unprotected (default) or Mirrored.
b. Select a Media Pack Protection Mode. Each Workspace in a Storage Group can use a different mode.
> **Note:** If the Storage Group does not support the selected protection mode, select a different Storage
Group or a different protection mode. If you are a Team Administrator, these protection types might be controlled by the policy set by the Avid NEXIS administrator and you cannot change them.
7. Type a size for the Workspace in the Capacity field. The maximum size is shown next to the Capacity
field. (If there is not enough space, you can reduce the size of existing Workspaces to make more space available. See "Resizing Workspaces" on page 65.)
8. Do either or both of the following:
  - In the Warning Event Trigger list box, select either Used % > or Unused GB < and type a value in
the next field.
  - In the Error Event Trigger list box, select either Used % > or Unused GB < and type a value in the
next field.
> **Note:** For more information, see "Setting Event Triggers " on page 66. Event triggers send email to the Avid NEXIS administrator when a Workspace reaches the
set value, and change the Workspace icon color in the Management Console from green to yellow (Warning) or red (Error). If you are a Team Admin you do not receive notification of these events. The Avid NEXIS administrator can increase the size of the Workspace for you, or let you know to do so.
9. In the User Access panel, select the users and groups who will use the Workspace and click the type
of access to give them.
You can give different access to different sets of users or groups; for example:
a. Select one set of users and groups and click the Read Access icon.
b. Deselect those users and groups.
c. Select different users and groups and click the Read-Write Access (or No Access) icon.
10. Click Save.
The new Workspace is shown in the Workspaces list.
Displaying Workspace Information The Workspaces page shows the following information.
g You can display more details for a Workspace by double-clicking a Workspace to open the Details view.
Click any column heading to sort the information. Also see "Sorting and Searching" on page 17.
4 Managing Workspaces Heading Description Name Lists the names of all Workspaces in the selected Storage Groups and an icon indicating the Workspace status.
- Green — Workspace is OK
- Green with UP arrow — Workspace is High Performance or SSD performance and is
OK
- Yellow — Media Packs are rebuilding a drive, or a threshold alert has been
generated Storage Group Displays the Storage Group that contains the Workspace.
Team Shows the Team associated with the Workspace, if applicable.
Capacity Lists the total storage capacity of each Workspace The Workspace capacity shown in the Management Console and the Client Manager can differ from the value shown in the native operating system of the client machine (such as Windows Explorer) due to differences in the multiplier for each OS. For example, Windows and CentOS use KiB (1024 bytes), while macOS and Avid NEXIS use KB (1000 bytes).
Maximum Displays the maximum potential size for the Workspace (the largest you can increase it to).
> **Note:** As you increase the size of a Workspace, the Maximum value for all Workspaces in the
same Storage Group decreases.
Performance Displays the bind setting on the Media Pack (see "Binding Media Packs to the File System" on page 34) Engine Protection (On-premises systems only) Displays the Engine protection mode applied to the Mode Workspace (Mirrored or Unprotected for on-premises Workspaces) Media Pack Displays the Media Pack protection mode applied to the Workspace (Two Disk Protection, Protection Mode One Disk Protection) Used Displays the amount of storage space currently in use in the Workspace in GB % Used Displays the amount of storage space currently in use in the Workspace as a percentage of the total Workspace size Unused Lists the amount of storage space that currently has no data written on it in each Workspace Space on Disk Lists the amount of space actually used by the data in the Workspace, accounting for the Media Pack protection mode and some overhead.
4 Managing Workspaces Heading Description Status Displays the Workspace status, such as:
Workspace is about to be deleted (“Delete pending”)
- Workspace is running out of space
- Workspace is full
- Redistribution pending
- Redistribution in progress
- Rebuild pending (after a drive in a Media Pack failed)
- Rebuild in progress (shows percent done)
- Config Changes Displays the number of changes to a Workspace that involve moving data within its
Storage Group — for example, the number of times a Media Pack has been added or removed Files Lists the total number of files stored in the Workspace To see detailed information about a Workspace:
- In the Workspaces list, double-click a Workspace name or select it and click Edit.
To close the Details view (Edit mode):
- Click Edit or Refresh.
The Details view (Edit mode) contains the same information as the Workspaces list and includes these additional functions and information:
Resize slider, which lets you quickly change the Workspace capacity (to change the size to a specific
- value, type a number in the Capacity field instead. See "Resizing Workspaces" on page 65.)
- Number of directories in the Workspace
- Warning event trigger — the value in used percentage (%) or unused gigabytes (GB) of storage at
which a warning event is written to the Event Log
- Error event trigger — the value in used percentage (%) or unused gigabytes (GB) of storage at which
an error event is written to the Event Log User access list — all users and groups and their respective privileges. For information on access
- privileges, see "Managing User Access Privileges for Workspaces" below.
Managing User Access Privileges for Workspaces By default, new user accounts do not have access privileges to Workspaces until an administrator assigns them (see "Creating (Adding) Users" on page 76). You can customize access for each client to every Workspace, if necessary.
You can control access to Workspace in any or all of the following ways:
- At the user level—change the user account to control their access to Workspaces
- At the Workspace level—change the Workspace attributes to give read-only, read-write, or no access
to specific users and groups At the user group level—change the group attributes to give all members of the group the same
- access to one or more Workspaces
4 Managing Workspaces Understanding Access Privilege Combinations The permissions set for users, groups, and Workspaces work together to grant the highest level of privilege of the combination. More privilege (such as read-write) supersedes less privilege (such as read-only).
Consider the following examples, where RO = read-only, and RW = read-write.
Example 1: User with No Access Added to Group with Access The user Betty has no access to any Workspaces. She is added to a group that has RO access to Workspace1, and gains that privilege. The Workspace Access details for her account show that she belongs to the group WS1group and has the Effective Access of Read+Write to Workspace1 because she Inherited that access from the group.
> **Note:** The Inherited value applies only to access inherited from groups, not from access granted directly on a
Workspace.
If Betty is removed from the group, she can no longer access that Workspace.
Example 2: User with Workspace Access added to Group with No Access The user Sue has RO access to Workspace1, and RW access to Workspace2. Sue is added to a group with no access to any Workspaces, but she retains her RO access as before because her account grants more privilege than the group she belongs to.
No Inherited value is shown. (The Inherited field only shows increased access due to group membership, if applicable.) 4 Managing Workspaces Example 3: User Belongs to Groups with Different Access to Workspaces The user Tom has no access to any Workspaces. Tom is added to two groups: WS1group, with RW access to Workspace1, and WS2group, with RO access to Workspace2.
Tom’s Workspace Access details show that he has Effective Access of RW and RO, respectively, to those Workspaces because he Inherited those privileges from the groups:
If Tom is then added to the group AllAccess, with RW privileges to all Workspaces, he gains Effective Access of RW to all Workspaces. Note that his access to Workspace2 increases (from RO to RW) because he Inherited that from the AllAccess group:
4 Managing Workspaces Example 4: User Has Higher Privilege than Group The user Carlos belongs to the group ProdAssistants, which has RO access to five Workspaces:
However, Carlos needs to edit some of files in Workspace2. The Administrator gives Carlos RW access to Workspace2.
Because his privilege level is now higher than the group’s, nothing is shown in the Inheritedcolumn for Workspace2 because he did not inherit that increased access from the ProdAssistants group:
4 Managing Workspaces Example 5: Workspace Grants Access to Users and Groups No user or group has access to Workspace5. The administrator edits the Workspace to give RO access to Betty, and RW access to Tom. The text shown in red italics indicates the permissions that will become effective when you click Save:
Betty’s and Tom’s accounts now show they have the respective access to Workspace5, but nothing is shown in the Inherited column for Workspace Access because they did not inherit their access from a group:
4 Managing Workspaces The dark text in the Access column means that the user’s access is overridden by the more permissive Effective Access they inherited from the group. The Effective Access column is the source of truth. If that column is empty, then the Access column is the source of truth.
Which Approach is Best?
It depends on your system and security needs. You can create all the users with no access to Workspaces, then add them to different groups with access to specific Workspaces (Example 1). This approach lets you disable access to all the users in a group at once (by changing the group’s access to the Workspace) rather than searching for all users with access and changing them one by one.
Even if a user belongs to a group with no access to a particular Workspace, you can give that user access as an exception (Example 2) because more privilege supersedes less privilege.
You can also create users and groups with no access, then enable access to specific users or groups at the Workspace level (Example 5).
> **Note:** To modify an individual client’s or group’s access privileges, see "Changing User Properties" on
page 85. To control access to a Workspace for all users and groups, see "Managing User and Group Access to Workspaces" on the next page.
Changes to Workspace privileges take effect immediately, with the following implications in the Client Manager:
4 Managing Workspaces Current Privilege New Privilege Result:
None RO or RW After a few seconds, the user will see the Workspace in the Client Manager Workspaces list if they are connected to the Avid NEXIS system.
RO RW If the Workspace is already mounted, users can add, remove, and modify files in the Workspace.
RW RO If the Workspace is mounted and the user is accessing files, the process is interrupted with the message that they need permission to access that Workspace.
RO or RW None If the user can see a Workspace in the Client Manager when RW or RO access is removed, the Workspace remains in the display but its icon becomes yellow (Workspace inaccessible). Future attempts to access the Workspace will be unsuccessful.
Managing User and Group Access to Workspaces In addition to managing specific users’ or groups’ access to Workspaces through the Users and Groups menus, you can also change the properties of the Workspace itself to grant or restrict access for multiple users and groups in one operation. (See also "Changing User Properties" on page 85 or "Changing User Group Properties" on page 90).
> **Note:** Make sure you have permission to perform this operation. See "Groups and Roles at a Glance" on
page 75 for information on user account types and what each type can manage.
> **Note:** Make sure all users have unmounted the Workspace before you change its access privileges.
To set or change user or user group access to a Workspace:
1. In the navigation sidebar, click Storage, then Workspaces.
2. Double-click a Workspace or select it and click Edit.
3. In the User Access panel, select the users and groups who will use the Workspace and click the type
of access to give them.
4. Click Save.
Batching Several Changes At Once You can give different access to different sets of users or groups in the same operation (without having to click Save for each access type); for example:
1. Select one set of users and groups and click Read+Write.
The orange Save icon becomes active, but you can continue to change other users and groups before saving.
2. Deselect those users and groups (or click Select All twice: once to select all and again to deselect all).
3. Select different users and groups and click Read-Only.
4. Deselect those users and groups (or click Select All twice: once to select all and again to deselect all).
5. Select other users and groups and click No Access.
6. Click Save to save all the changes at the same time.
4 Managing Workspaces Resizing Workspaces If event triggers are set on a Workspace and you receive notification that a Workspace is running out of free space, you can increase its size. Alternatively, you might need to make a Workspace smaller to create space in the Storage Group for other Workspaces or to reserve storage for future use.
> **Note:** If the Workspace is associated with a Team, a System Admin or the Team Admin can increase its size
within the quota for that Storage Group.
The Storage Group must contain at least as much available space as the amount by which you want to increase the Workspace. If not, you can add more Media Packs to the Storage Group first; see "Adding Unassigned Media Packs to Storage Groups" on page 107.
There are two ways to change the size of a Workspace, both of which are available in Edit mode:
- Use the slider to change the size without requiring confirmation. You cannot undo this operation.
The numbers shown in each slider use different scales for on-premises versus cloud Storage Groups.
- Type a new value in the Capacity field. Click Save to make the change take effect, or click Reset to
undo the change.
To change the size of a Workspace:
1. In the navigation sidebar, click Storage, then Workspaces.
2. Double-click a Workspace or select it and click Edit.
Expand the Capacity Tracker to display a pie chart that shows the real-time effect on the Storage Group of changing the Workspace size.
3. Do either of the following:
  - Change the size using the slider.
  - Type the new size in the Capacity field and click Save.
Duplicating (Copying) Workspaces You can duplicate a Workspace to create a new one with many or all of the properties of the original. This is a fast way to create multiple Workspaces with similar attributes.
When you duplicate a Workspace, the new Workspace inherits the attributes of the original, but not the data in it. You can change any of the attributes on the new Workspace that display a list box or an editable field.
> **Note:** See "Groups and Roles at a Glance" on page 75 for information on user account types and what
operations each type can do.
A duplicated Workspace inherits all the attributes of the original, but you can change the following:
Workspace name — by default, the new Workspace has the same name as the original, with a
- sequential number added to the end starting with 1, unless a Workspace with the resulting name
already exists. If so, the next available sequential number is added.
- Team prefix, if applicable
- Team association and policies, if any
- Size and event triggers
- If the original Workspace used no Media Pack protection (Unprotected), you must select either One
Disk or Two Disk for the new one.
- User and Group access
4 Managing Workspaces To duplicate a Workspace:
1. In the navigation sidebar, click Storage, then Workspaces.
2. Select the Workspace you want to duplicate.
3. Click Duplicate.
4. (Optional) Change the name, Team, size, event triggers, Media Pack protection (on-premises only)
and user access as needed.
> **Note:** If the Storage Group has less available space than the size of the duplicated Workspace, you
can type a size up to the remaining space available, shown in the Maximum field, bot not less than the minimum allowed Workspace size.
5. Click Save.
Edit mode closes and the new Workspace is shown in the Workspace list.
Renaming Workspaces You can rename a Workspace at any time, even when it is being used by client workstations and mapped to a local drive or by letterless mapping (to a Universal Naming Convention path) on the client system. The Workspace name will be different the next time clients need to access it.
> **Note:** See "Groups and Roles at a Glance" on page 75 for information on user account types and what
operations each type can do.
If a Team policy applies to the Workspace (such as requiring a prefix or not allowing spaces in the name), the policy applies to System Admins as well as the Team Admin.
As a best practice, Avid recommends that users unmount the Workspace you want to rename before you proceed.
To rename a Workspace:
1. In the navigation sidebar, click Storage, then Workspaces.
2. Double-click a Workspace or select it and click Edit.
3. Type a new name in the Name field.
For information on valid and invalid characters, see "Guidelines for Names and Passwords" on page 18.
4. (Optional) Click Reset to undo any modifications made to the Workspace information.
5. Click Save.
Setting Event Triggers Event triggers write events to the Event log when Workspace capacity is less than a specified value, or when used Workspace capacity exceeds a specified percentage.
You can set event triggers on Team Workspaces. However, Avid does not recommend adding Team Admins to the list of contacts for notifications, because they will receive mail about all system events, not only those for their Workspaces. System Admins can inform the Team Admins about Workspaces running out of space, and either a System Admin or the Team Admin can increase it.
> **Note:** See "Groups and Roles at a Glance" on page 75 for information on user account types and what
operations each type can do.
You can create triggers for both Warning and Error events:
4 Managing Workspaces Warning events indicate that the amount of used or unused space in the Workspace is nearing a
- threshold that you set, and you have time to take action (increase the size of the Workspace or
change the event trigger) before it can cause problems.
- Error events indicate that the amount of used or unused space in the Workspace has already met the
critical threshold that you set. Take immediate action to correct the problem.
If you enabled notifications, you receive email when Workspace capacity events occur. For more information, see "Configuring the Notification Service" on page 37.
To set an event trigger:
1. In the navigation sidebar, click Storage, then Workspaces.
2. Double-click a Workspace or select it and click Edit.
3. Do either or both of the following:
  - In the Warning Event Trigger list box, select either Used % > or Unused GB < and type a value in
the next field.
  - In the Error Event Trigger list box, select either Used % > or Unused GB < and type a value in the
next field.
4. Click Save.
Moving a Workspace You can move Workspaces between Storage Groups as follows:
Between different Scale-Out Storage Groups, but not between flexible Storage Groups and All-Mirror
- Storage Groups (see "Managing Storage Groups" on page 45).
Between Scale-Out Storage Groups and SSD Storage Groups
- Between different Scale-Out All-Mirror Storage Groups
- On Avid NEXIS | PRO or Avid NEXIS | PRO+ systems, between different Scale-Out Storage Groups
- Moving a Workspace is subject to these conditions:
- If the Workspace is associated with a Team and the Team policy prevents Workspace moves, you
cannot move it.
- The destination Storage Group must have free space equal to the size of the Workspace you are
moving into it, also accounting for any Team quotas. Check the Capacity Tracker to make sure the Storage Group has enough space to allow the move. You can add more Media Packs to the Storage Group first; see "Adding Unassigned Media Packs to Storage Groups" on page 107.
- If the Workspace is mirrored, it can move only to another mirror-capable Storage Group.
- The Media Pack protection of the Workspace remains the same and cannot be changed during or
after the move.
- Workspaces cannot move into or out of a High Performance Storage Group.
The Workspace can remain in use during the move operation — clients do not have to unmount or stop using it.
Information for Team Administrators If you have quotas in multiple Storage Groups, you can move Workspaces between compatible Storage Groups if your Team policy permits it.
For example, your editors might start working on files in a Workspace in a Scale-Out Performance Storage Group, but for bandwidth-intensive tasks such as color grading, you might want to move the Workspace to an SSD Performance Storage Group.
4 Managing Workspaces Moving a Team Workspace is subject to these conditions:
- Your Team must have a quota in the target Storage Group as large as or larger than the size of the
Workspace you are moving.
- The Media Pack protection of the Workspace remains the same and cannot be changed during or
after the move.
If the Workspace is mirrored, it can move only to another mirror-capable Storage Group. (On the
- Workspaces page, the Engine Protection Mode says Mirrored.)
Clients can continue using the Workspace while it moves.
> **Note:** See "Groups and Roles at a Glance" on page 75 for information on user account types and what
operations each type can do.
To move a Workspace to another Storage Group:
1. In the navigation sidebar, click Storage, then Workspaces.
2. Double-click a Workspace or select it and click Edit.
3. In the Attributes panel, select a different Storage Group for the Workspace from the list box. Only
supported destination Storage Groups are listed in the list box. If no appropriate Storage Groups are available, no list box is shown.
4. Click Save.
5. In the dialog box, click OK.
The Workspace starts moving to the new Storage Group, and displays the status ‘redistribution pending’ or ‘redistribution in progress’ until the move is complete.
About Workspace Redistribution Redistribution is an operation that occurs only in on-premises systems, and evenly distributes all files in a Workspace across the Media Packs in the Storage Group to provide optimal file system performance. Data chunks are distributed across multiple Media Packs to ensure redundancy and protect against data loss.
Redistribution affects all the Workspaces in a Storage Group.
The following actions initiate redistribution:
- Adding or removing Media Packs from a Storage Group
- Deleting Workspaces
- Moving Workspaces to a different Storage Group
About Configuration Changes The configuration of a Storage Group is based on the Media Packs that make up that group. When you add or remove Media Packs from the Storage Group:
- A configuration change is made. On the Workspaces list page, the Config Changes count for the
affected Workspaces in that Storage Group is incremented.
- An incremental redistribution is performed to balance the files in the Storage Group across the Media
Packs.
Deleting and moving Workspaces results in a redistribution but does not cause a configuration change. You can see the number of configuration changes that have been applied to a Workspace; see "Displaying Workspace Information" on page 56.
4 Managing Workspaces After 20 configuration changes, the Workspaces page displays a warning to perform a full redistribution.
You can manually initiate a Full Redistribution for a non-mirror-capable Storage Group at any time using the Workspaces page in the Management Console. Until then, the system continues to function, but the affected Workspaces and the system status remain at Warning until a full redistribution is performed (see "Performing a Full Redistribution" below).
After 30 configuration changes without a full redistribution, the system will perform a full redistribution automatically. This could significantly reduce system performance until the redistribution operation has completed.
Redistribution Reference Information and Restrictions Avid NEXIS supports add, remove, and full redistributions under load for all Storage Groups.
- A load condition exists when the Workspace has active clients (reading and writing to the
Workspace).
A no-load condition exists when a Workspace is not mounted or has inactive clients (the Workspace
- might be mounted but clients are not performing reads or writes).
When redistributing under load, allow the redistribution to complete before initiating a second
- redistribution.
- System performance can degrade significantly during redistribution in a Storage Group with the
maximum client count. Reducing the number of clients allows the active clients using the Storage Group to continue successful playback and captures. Perform redistributions during periods of light client activity, or reduce the overall load if client performance degrades (for example, the client experiences dropped frames, underruns, and failed captures). Limitations on expected client performance during redistribution include:
- Reducing audio tracks from 8 to 4 during playback might be required during redistribution. (Normal
operation supports 2 streams of video 8 tracks of audio.) Reducing the number of video streams from 2 to 1 might be required during redistribution. (Normal
- operation supports 2 streams of video.)
You can suspend and resume redistribution on all Workspaces as needed.
- The amount of time a redistribution takes depends on whether the Workspace is in a load or a no load
- condition, whether you are adding or removing a Media Pack, and how much data in the
Storage Group will be redistributed.
- Redistributions are performed on 20 Workspaces at a time. If your Storage Group exceeds
20 Workspaces, the Workspace status shows “Redistribution In Process” for the first 20 Workspaces and “Redistribution Pending” for the rest of the Workspaces in that Storage Group. As Workspaces finish with the redistribution, the Workspaces with “Redistribution Pending” status start to redistribute until all the Workspaces in that Storage Group have finished the redistribution.
- Do not unbind or physically remove a Media Pack until the redistribution is complete and it has been
removed from the Storage Group.
Data loss can occur if you do any of the following:
- Remove or unbind a Media Pack before redistribution is complete - Remove more than one Media Pack from a Storage Group before performing a redistribution - Turn off any Engine before redistribution is complete Performing a Full Redistribution In addition to automatic redistribution operations (see "About Workspace Redistribution" on the previous page), you can also initiate redistribution manually, for example to perform a full redistribution when the Config Changes count exceeds 20. (For information about Config Changes, see "Displaying Workspace Information" on page 56.) 4 Managing Workspaces
> **Note:** When the Config Changes count reaches 20, the system displays a message recommending that you
perform redistribution.
Initiating, suspending, and resuming redistribution applies to all Workspaces in the Storage Group. You can also perform redistribution on multiple Storage Groups at the same time.
Only a System Admin can use the Redistribution menu actions. However, Team Admins can cause redistribution by moving Workspaces between Storage Groups, if permitted.
> **Note:** See "Groups and Roles at a Glance" on page 75 for information on user account types and what
operations each type can do.
To redistribute Workspaces manually:
1. In the navigation sidebar, click Storage, then Workspaces.
2. Select one or more Workspaces. (Click Select to select all Workspaces.)
3. Click the Redistribution tool icon.
4. Click Start Redistribution.
5. In the dialog box, click OK.
Files are redistributed, and the count in the Config Changes column is reset to zero. The amount of time required for the redistribution depends on the amount of data in the Workspaces.
Suspending Redistribution Under some conditions, you might have to suspend or resume an in-progress redistribution.
The Resume Redistribution and Suspend Redistribution options can result in degraded system performance. Suspending redistributions can have serious consequences for the file system if not monitored closely. These two Advanced Commands options should be used by Avid Customer Care personnel or under Avid Customer Care direction.
To suspend a redistribution:
1. In the navigation sidebar, click Storage, then Workspaces.
2. Select one or more Workspaces. (Click Select to select all Workspaces.)
3. Click the Redistribution tool icon.
4. Click Suspend Redistribution.
Continuous Refresh is enabled automatically. All Workspaces show the status “redistribution suspended.”
5. Resume redistribution when appropriate. See "Resuming Redistribution" below.
Resuming Redistribution If you suspend a redistribution, make sure to resume it. Do not leave Workspaces in the suspended state for extended periods of time.
To resume a redistribution:
1. In the navigation sidebar, click Storage, then Workspaces.
2. Select one or more Workspaces. (Click Select to select all Workspaces.)
3. Click the Redistribution tool icon.
4 Managing Workspaces
4. Click Resume Redistribution.
5. In the dialog box, click OK.
Redistribution is resumed for all Workspaces in the selected Storage Groups.
Redistribution Status Definitions The following table lists the status messages relating to redistribution, and a brief description.
> **Note:** Some Media Pack errors, not strictly related to redistribution, can interrupt redistribution or cause it to
fail. See "Understanding Media Pack Status" on page 106.
Status Comments initializing The Media Pack is determining which blocks will be moved.
redistribution redistribution Workspace redistribution is about to start, either automatically as the result of pending configuration changes, or because it was manually restarted.
If a Storage Group contains more than 20 Workspaces, they are redistributed in batches of 20 at a time.
redistribution in Workspaces are being evenly redistributed across all the Media Packs in the Storage Group.
progress The time it takes to redistribute the data depends on the amount of data in the Storage Group.
redistribution Workspace redistribution was manually suspended.
suspended stalled The Media Pack is currently stalled while trying to move blocks to other Media Packs. This redistribution might be a temporary condition. If it persists and the overall redistribution has been determined to be stalled contact Avid Customer Care.
Deleting Workspaces You can delete Workspaces that are not currently being accessed by any clients, whether or not the Workspaces have media files stored on them. Deleting a Workspace returns its capacity to the amount of available space in the Storage Group, and to the Team quota in that Storage Group, if applicable.
> **Note:** If you are a Team Admin, you might not be allowed to delete a Workspace, according to the Team
policy set by the AVID NEXIS administrator.
g If your environment requires a guarantee that data has been completely deleted, you can use Secure Data Deletion tools from Seagate, which manufactures the Avid NEXIS hardware. For information on secure deletion, see the following URL: https://www.seagate.com/support/secure-erase-matrix/ DELETING A WORKSPACE IS A PERMANENT, IRREVERSIBLE OPERATION. Before you delete a Workspace, make sure that its media is moved, backed up, or no longer needed.
If you delete a Workspace that has been mapped to a local drive by a client, the client can no longer access that Workspace. Clients should unmap the deleted Workspace using the Avid Client Manager. For more information, see the Avid NEXIS Client Manager Installation and User’s Guide or the Client Manager Help.
> **Note:** For on-premises Workspaces, redistribution starts automatically when you delete a Workspace. During
periods of high client usage, this might reduce client performance, resulting in dropped frames, underruns, and failed captures. If possible, delete Workspaces during periods of light client activity.
You can suspend and resume redistribution as needed.
4 Managing Workspaces
> **Note:** Make sure you have the correct permissions to delete a Workspace. See "Groups and Roles at a
Glance" on page 75 for information on user account types and what operations each type can do.
To delete one or more Workspaces:
1. In the navigation sidebar, click Storage, then Workspaces.
2. In the Workspaces list, select one or more Workspaces to delete. (Click Select to select all
Workspaces.)
3. Click Delete.
4. Confirm the Workspaces to be deleted and click Continue.
The Workspace is permanently and irreversibly deleted.
5 Managing Users and Groups 5 Managing Users and Groups A user is a person or device (such as a client computer) that needs to access an Avid NEXIS shared-storage network. User accounts on Avid NEXIS allow this access and prevent unauthorized users from accessing other users’ data. You can create users manually, and you can configure external authentication to allow LDAP users to connect to Avid NEXIS. To import LDAP users, see "Importing Users from a Server " on page 78.
User groups help you organize users by their privileges, department, or access to specific Workspaces. For more information see "Understanding Groups and Group Roles " below.
You can also create Avid NEXIS Teams, which have their own users and groups; for more information, see "Managing Avid NEXIS Teams" on page 94.
Some functionality overlaps between the Users, Groups, and Workspaces pages. The most convenient method depends on what you want to do; for example:
To change several attributes for a user (such as which groups they belong to, or their access
- privileges to multiple Workspaces), use the Users page in Edit mode (see "Changing User Properties"
on page 85).
- To change several attributes for a group (such as adding or removing multiple users), or to change
the Workspace access privileges for all or many group members, use the Groups page in Edit mode (see "Changing User Group Properties" on page 90).
To change the access privileges to a specific Workspace for multiple users or groups, use the
- Workspaces page in Edit mode (see "Managing User and Group Access to Workspaces" on page 64).
In addition to a name and password, users can have optional flags that control what they can do or how they are authenticated; see "About User Flags" on page 76. You can also control the bandwidth available to a user; see "Controlling Client Bandwidth" on page 91.
Every Avid NEXIS system has two built-in users that cannot be renamed or deleted: Administrator and Guest (the Guest account is available for on-premises systems only). By default, the Guest account has no password. Anyone can use the Guest account if no password has been set, or if they know the password.
For this reason, the Guest account can see only the Installers page.
Users can have various administrative privilege levels, group membership types, and Workspace access privileges (read-only, read-write, or none) that controls their access to Workspaces and their contents. In addition, groups can have attributes that grant all members the same privileges or functions. Before creating users or groups, see "Understanding Groups and Group Roles " below.
> **Note:** Users must have access to at least one Workspace before they can use the shared-storage network.
The Avid NEXIS system maintains a record of all connected clients (users or devices). See "Monitoring the System" on page 122 for more information.
Understanding Groups and Group Roles Avid NEXIS supports user groups with specific administrative roles, allowing you to delegate some management responsibilities to members of trusted groups.
> **Note:** Group Roles do not apply to Avid NEXIS Teams.
The System Administrators Group and the System Admin Role The System Administrators group is present in Avid NEXIS version 2021.8.0 and later. The preexisting administrator account is always a member of this group but is not shown in the list of members. This group has a special role called System Admin, and is the only group that has that role, which cannot be 5 Managing Users and Groups unselected. The administrator can manage this group (add or remove members), who then become System Admins. See "Adding Users to the System Administrators Group" on page 89.
Adding other users to the System Administrators group lets you delegate administrative privilege to users besides the preexisting administrator account, which allows for flexibility in managing the system, so that one person is not responsible for all management operations. For example, when you add other users to the System Administrators group, they can:
- Download, install and use the LDAP Sync Tool and the Toolbox
- Download and install the Client kits
- Upgrade the system, and apply or upgrade the license
- Create, modify, and delete Teams, users, groups
- Manage Storage Groups and Workspaces
- Create a new file system (which completely deletes all existing system information and user data in
Workspaces) Shut down the system and perform all other system-wide operations Because members of this group can do everything that the preexisting administrator account can do, except change the default Administrator password, make sure only trusted users belong to the System Administrators group.
Allowing multiple users to perform administrative functions also allows for better security. Each member of the System Administrators group has a unique user name and password, so users are not sharing the same credentials. The system logs record all operations performed by an administrator.
> **Note:** For system security, you cannot add the Guest user account to the System Administrators group.
The Workspace Admin Role A System Admin can apply the Workspace Admin role to any new or existing group except a Team group.
(The System Administrators group already has this role by design.) Members of a group with this role (called Workspace Admins) can create, modify, and delete Workspaces and manage user access privileges to Workspaces. Workspace Admins also have access to the Dashboard and the Installers, but no other functionality in the Management Console.
This role is used primarily by Avid | Edit On Demand customers. For more information, see the Avid | Edit On Demand Knowledge Base.
Workspace Admin and User Admin Roles A System Admin can apply both the Workspace Admin and User Admin roles to a new or existing group, except a Team group. (The System Administrators group already has this role by design.) Members of a group with both roles can do all the things a Workspace Admin can do, and can create, modify, and delete users and user groups, including any groups of which the user is a member. If external authentication is configured, members of this group can add, modify, and delete LDAP users. Workspace and User Admins also have access to the Dashboard and the Installers, but no other functionality in the Management Console.
> **Note:** The User Admin role is not typically applied to a group without also applying the Workspace Admin
role.
5 Managing Users and Groups Groups and Roles at a Glance The following table outlines the respective levels of administrative control for users who belong to groups with specific roles, in decreasing system access and abilities.
Role or Group Membership Capabilities System Administrators Can manage the entire system, with the same capabilities as the default Administrator account, except only the default Administrator (The System Administrators account can change its own password.
group has a role called System Admin. That role Members of this group can use the APIs (see "Appendix — Managing cannot be applied to any Folder Level Permissions" on page 149).
other group.) Can create and manage groups and their roles (including groups to which they belong), and Teams.
Members of this group already have the capabilities of the User and Workspace Administrator roles.
Workspace and User Can perform all the operations of both Workspace Administrators and Administrators User Administrators.
(Separate roles that can be Workspace Administrator only: Can see and use the Dashboard, applied independently, but Installers, and Workspaces pages in the Management Console. Can most useful together) create and manage all Workspaces on the system (except those belonging to a Team), but not user or group access to them.
User Administrator only: Can see and use Dashboard, Installers, Users, and Groups pages in the Management Console Can create and manage all Users and Groups on the system (except those belonging to a Team), but not their Workspace access.
Team Admin and any other Can see and use the Installers, Users, Groups, and Workspaces pages users in the Team in the Management Console, but can see and manage only the Administrator group Workspaces, Users, and Groups belonging to their Avid NEXIS Team.
Some Team Admin capabilities are controlled by policies (such as the ability to delete Workspaces or move them between Storage Groups), which are set by a member of the System Administrators group.
For more information on Teams, see "Managing Avid NEXIS Teams" on page 94.
Managing Users You can create, modify, and delete user accounts, assign users to specific groups or Teams, and manage access privileges for all users by the individual user, by user groups, and by Workspaces. Some user groups have additional capabilities (see "Understanding Groups and Group Roles " on page 73). You can add users to groups with those roles to grant the users those privileges, and you can apply roles to an existing group to give all the members the same privileges.
> **Note:** Some operations are not supported for users who belong to an Avid NEXIS Team.
See the Avid NEXIS ReadMe for your Avid NEXIS version on the Avid NEXIS Documentation Knowledge Base for information on how many users and groups you can create, and the client connection limits. A system can support more users than the number of supported connections. However, if all the supported connections are in use at any one time, additional users (clients) cannot connect.
5 Managing Users and Groups Standard Avid NEXIS client users can log in to the Management Console, but will have limited access to the Management Console interface depending on the privileges they have. They can see certain information about the network through the Client Manager. For more information, see the Avid NEXIS Client Manager Installation and User’s Guide.
A client computer name is treated as a user name, and all user names on a shared-storage system must be unique. Make sure all client computer names are unique to connect to Avid NEXIS.
About User Flags User flags control what users can do or how they are authenticated.
Flag Description Can resize Allows the user to change the size of Workspaces they can access.
> **Note:** Not supported for Avid NEXIS Teams
Remote LDAP user Indicates that the user’s account is managed by an external LDAP server.
The user name must exactly match the name configured in the authentication server for that user.
Disable user Disables the user account. The account remains on the system so you can enable it again later.
Temporary Forces the user to change their password upon the next login.
password
> **Note:** This flag is not supported for LDAP users. The authentication server controls the
user passwords and how often they must be changed.
For new, manually-created users, type a temporary password and click the box to prompt the user to change their password when they connect to this system either through the Management Console login or through the Avid NEXIS Client Manager.
Let the user know the temporary password.
For existing users, a password must exist already. If no password exists, create one and let the user know it for their next login attempt.
Click this box to prompt the user to change their password when they connect to this system either through the Management Console or through the Avid NEXIS Client Manager. They will need to change it again then.
g The Avid NEXIS Client Manager Installation and User’s Guide documents this behavior for users.
Creating (Adding) Users Avid NEXIS supports any combination of local and remote users, up to the limit listed in the Avid NEXIS ReadMe for your version of Avid NEXIS.
Local users authenticate against the Avid NEXIS system itself. Remote users authenticate against a server in your environment. System Admins can create the remote user accounts directly on the Avid NEXIS system or import them using the LDAP Sync Tool (see "Importing Users from a Server " on page 78).
5 Managing Users and Groups Notes for Team Administrators Your Team can include local users (who authenticate against the Avid NEXIS system) and remote
- users (who authenticate against an external authentication server). You and an Avid NEXIS
administrator can create your Team’s users. If an Avid NEXIS administrator created users or groups for your Team, the Management Console displays them.
- You can add local and remote users to your Team Administrator group so they can help you manage
the Team and your Workspaces.
The Team field for all your Team users is set to the name of your Team, and cannot be changed. (The
- Bandwidth field is controlled by the Avid NEXIS administrator.)
If your Team has a prefix (set by the Avid NEXIS administrator), it is shown in the Name field for all the
- objects to which it applies (Workspaces, groups and local users).
- See "Guidelines for Names and Passwords" on page 18 for the length and allowed characters in user
names and passwords. The length limit of a name includes both the prefix (if any) and the unique name you type. For example, if the prefix is four characters long (such as Ace-), you can add 27 more characters, resulting in a name such as: Ace-Amelia Earhart Famous Pilot.
Required and Optional Attributes for User Accounts Users must or can have the following properties:
- User name (required). For a local user, the name must follow the "Guidelines for Names and
Passwords" on page 18. For remote LDAP users that you are creating manually, use the same name as on the authentication server. (If you import users, you do not need to create them yourself.) Password (required for local users only)
- Bandwidth limit (optional; for more information, see "Controlling Client Bandwidth" on page 91)
- Team membership (optional; for more information, see "Managing Avid NEXIS Teams" on page 94)
- Group membership (optional; you can add the user to a group when you create the account or later)
- Workspace access (optional; you can assign Workspace access privileges when you create the
- account or later)
To create a user account:
1. In the navigation sidebar, click Users, then Users.
2. In the Action tools bar, click Add.
3. Do one of the following:
  - For a local user:
a. Type a unique user name (see "Guidelines for Names and Passwords" on page 18).
b. Type and verify a unique password for the user.
  - For a remote LDAP user that you are adding manually:
a. Type the user name exactly as it is configured on the authentication server.
b. Leave the password fields empty. The user password is authenticated by the remote server.
4. (Optional) Type the amount of system bandwidth the account can use. The default bandwidth is 0,
meaning unlimited.
> **Note:** System Admins can set bandwidth limits on users in a Avid NEXIS Team. Team Admins can see,
but cannot change, their users’ bandwidth.
5. (Optional) Select the Avid NEXIS Team the user will belong to.
5 Managing Users and Groups
> **Note:** (Only System Admins can add a user to a Team.)
If you select a Team, some flags and other options become unavailable. You cannot change a user’s Team association later. Instead, delete the user and re-create it, selecting a different Team (or no Team).
6. In the User Flags section, click the appropriate boxes (see "About User Flags" on page 76 for more
information).
7. In the Group Membership list, select a group and click Member to add the user that group. By
default, new users are not members of any group. (Some groups might not be selectable; for example, if you add the user to a Team, only that Team’s other groups, if any, are selectable.) The Group Membership panel shows the number of groups available on the system, the number currently selected (if any), and how many groups the user currently belongs to. As you select more groups, the selected value increases, but the Current membership count does not change until you click Save. (See the Avid NEXIS ReadMe for the limit on the number of groups a user can belong to.) The user inherits the roles of any group you add them to (see "Understanding Groups and Group Roles " on page 73).
8. In the Workspace Access list, select one or more Workspaces and click one of the following access
types:
(Some Workspaces might not be selectable; for example, if you add the user to a Team, only Team Workspaces are selectable.) By default, new users have no access to Workspaces. (For information on permissions for Workspace access in the network, see "Managing User Access Privileges for Workspaces" on page 58.)
9. Click Save.
Importing Users from a Server Instead of (or in addition to) creating users on the Avid NEXIS system manually, you can import them from an LDAP server in your environment.
LDAP (Lightweight Directory Access Protocol) is an Internet protocol that some applications use to retrieve account information, user names, and groups, from a server.
The LDAP Sync tool allows a System Admin to import and synchronize LDAP user accounts to an Avid NEXIS system and to create or modify a large number of users and groups within the Avid NEXIS system.
The LDAP Sync tool lets you:
Display user accounts available within a given LDAP service but not in the Avid NEXIS system, and
- vice versa
Search for groups and their members on an LDAP serverRemove user membership from a group in
- Avid NEXIS if the user no longer belongs to that group on the LDAP server
- Generate reports of account actions and see synchronization history
- Users synchronized by the LDAP Sync tool will automatically be added as “Remote” users for
authentication to the LDAP server.
> **Note:** Any member of the System Administrators group, which can include local and remote LDAP users, can
install and run the LDAP Sync Tool.
5 Managing Users and Groups Prerequisites To enable using the LDAP Sync Tool, enable DNS and configure external authentication on the Avid NEXIS system. For more information, see "Configuring DNS Service " on page 23 and "Configuring External Authentication of Users" below If you are using Avid NEXIS Teams (see "Managing Avid NEXIS Teams" on page 94 for more information), you can add the user names for the intended Teams to your authentication server and then import them. This can simplify the creation and deletion of users who might change frequently, as Teams come and go over time. When you delete a Team, all its users (local and remote) are deleted from the Avid NEXIS system, eliminating the risk of users retaining access to Workspaces they no longer should.
Avid NEXIS supports the following mechanisms for LDAP authentication:
LDAP over TLS (Transport Layer Security) — Recommended. The System Director tries to use this first.
- SASL DIGEST-MD5 — (Supported for legacy compatibility; no longer supported by Microsoft.) If the
- configured LDAP server does not use TLS, the System Director uses this instead.
> **Note:** Avid NEXIS currently supports only Microsoft Active Directory, and might not be compatible with other
LDAP implementations.
When using TLS, the server can use either a CA-signed certificate or a self-signed certificate. Most Microsoft Active directory servers support DIGEST-MD5.
TLS more strictly enforces Domain Name settings than DIGEST-MD5 did. Specifically, add the domain name without the TLD (Top Level Domain); for example, type yourDomain, not yourDomain.com. Make sure to modify your top-level domain entry and if necessary remove .com, .net, .edu, or any other TLD component.
Configuring External Authentication of Users External authentication lets you add users to the Avid NEXIS system who are already configured as LDAP accounts in your environment. When a remote LDAP user logs into the Management Console or connects to Avid NEXIS through the Client Manager, the system checks with an external LDAP server instead of the local user database to authenticate the user. You can configure up to three external LDAP servers for authentication.
Configuring external authentication and using the LDAP Sync Tool is optional, but recommended for large numbers of users. Alternatively, you can create each user account individually; see "Managing User Groups" on page 88. You can use both external authentication and accounts you create on the Avid NEXIS.
See the Avid NEXIS ReadMe for the supported number of user accounts based on your model and version.
To configure external authentication:
1. In navigation sidebar, click Users, then External Authentication.
2. In the Domain section, click Enable.
The Domain Name field becomes active.
3. In the Domain Name field, type the domain name of the network to which the LDAP server belongs,
including subdomain, if applicable. Do not include the TLD.
> **Note:** A domain name has several parts, separated by a period or dot; for example,
americas.avid.com. The subdomain in this name is “americas;” the assigned domain is “avid;” and the top-level domain (TLD) is “com.” Contact your IT administrator for the Legacy Domain Name (or NETBIOS Domain Name) to type into this field.
5 Managing Users and Groups
4. Select Server 0.
The Address field becomes active.
5. In the Address field, type the fully-qualified domain name (FQDN) of the LDAP server.
Use the format servername.subdomain.domain.tld; for example:
server1.americas.example.com
6. In the Port field, type the port number of the LDAP service; usually 389.
> **Note:** The Avid NEXIS system works with LDAP servers that use either LDAP over TLS (recommended) or
SASL DIGEST-MD5 (legacy), but not with LDAPS protocol using port 636 (secure socket).
7. (Optional) Repeat steps 3 – 5 (selecting the “Server 1” and “Server 2” options, as applicable) to
configure additional backup LDAP servers.
8. When finished, click Submit.
The domain and LDAP server information is added to the Avid NEXIS database, and the Results area shows confirmation.
Installing the LDAP Sync Tool The LDAP Sync Tool is part of the Avid NEXIS software kit, but is not installed by default.
To install the LDAP Sync Tool:
1. In the navigation sidebar, click System, then Installers.
2. Click the LDAP Sync Tool executable file appropriate for your operating system.
3. Save the executable file to your computer and install it.
Opening the LDAP Sync Tool To open the LDAP Sync Tool:
1. Do one of the following:
  - (Windows) From the Start menu select Avid > LDAPSyncTool > Avid LDAP Sync Tool.
  - (Mac) Select Applications > Avid NEXIS Tools > LDAP Sync Tool.
The Avid NEXIS Login dialog box opens.
2. In the Hostname field, type the host name or IP address of the System Director.
3. Type your administrator user name and password.
4. Click Connect.
5 Managing Users and Groups
  - If no LDAP server is configured, the Connect to LDAP Server dialog box opens. Type the
information for your LDAP server as shown in the following example and click Connect.
Contact your IT administrator to obtain your LDAP login information. Three failed connection attempts might result in your LDAP user account being disabled.
  - If an LDAP server is configured, the LDAP Group Selection list opens. See "Synchronizing LDAP
and Avid NEXIS Accounts" on page 83.
  - If the tool has been used before on this computer, the main window opens.
Using the LDAP Sync Tool The main window of the Avid NEXIS LDAP Sync Tool is the Account Synchronizer. Use the Account Synchronizer to search the LDAP user accounts, synchronize (reconcile) user accounts by adding or removing users from the Avid NEXIS users list, generate a report of the account actions, and see a history of the accounts. You can also modify the display of the Account Synchronizer to filter out unneeded account information.
The connection status icons indicate whether or not the LDAP Sync Tool is connected to the Avid NEXIS system and the LDAP server.
When connected, the icons contain a green checkmark, as follows:
- When disconnected, the icons contain a red X, as follows:
You can use the connection status buttons to manually disconnect from and reconnect to the LDAP server.
(If the connection to the Avid NEXIS is broken, close the LDAP Sync Tool, then restart it and log in again.) The button icons change depending on your current connection status.
The connection is broken automatically when their respective session time-out periods are exceeded.
To disconnect from the LDAP server:
- Click LDAP.
The LDAP Sync Tool disconnects from the LDAP server, and the LDAP connection status button icon changes to Disconnected.
To connect (or reconnect) to the LDAP server:
1. Click LDAP.
The Connect to LDAP Server window opens. The text fields will be filled in for you if you have previously logged into the LDAP server within the same session.
5 Managing Users and Groups
2. Click Connect.
> **Note:** All LDAP reconciliation session data, such as reports and history, are stored locally. If you log into
another workstation and/or as a different user, this information will not be available.
When you connect to the Avid NEXIS and the LDAP server, the Account Synchronizer checks the users in the selected LDAP groups against the Avid NEXIS database and builds a set of actions to reconcile the two.
> **Note:** To sort the display click any column header.
The Sync Status column displays the complete set of groups, using buttons with colors and icons to indicate the reconciliation status of each group.
Icon Meaning The group is in the LDAP database, but not in Avid NEXIS. The default action is to add the group and all users to Avid NEXIS.
The group is in both LDAP and Avid NEXIS, but the users are different between the two:
If the user is in LDAP but not Avid NEXIS, the user will be added to Avid NEXIS.
- If the user is in Avid NEXIS but not in LDAP, the user will be removed from Avid NEXIS.
> **Note:** The user will no longer share privileges with the group. The user will still be able to access
the system, and membership in other local or LDAP groups is unaffected.
- If the same user name is in both groups but they are intended for different users (for example,
have different passwords), the credentials will be validated against LDAP.
> **Note:** LDAP supports having users with the same name but in different OUs, but Avid NEXIS does
not check OUs.
The group is in both LDAP and Avid NEXIS, and all users are reconciled. No action is taken by default.
The user and/or group is in Avid NEXIS, but not LDAP.
By default, all users and groups in this entry will be permanently deleted. To prevent this, manually override the default action before performing a Reconcile action.
The user is in only an Avid NEXIS group.
By default, all users and groups in this entry will be permanently deleted. To prevent this, manually override the default action before performing a Reconcile action.
5 Managing Users and Groups Synchronizing LDAP and Avid NEXIS Accounts Synchronizing the LDAP/Active Directory and Avid NEXIS user lists consists of the following steps:
1. Selecting LDAP groups
2. Specifying user-specific synchronization actions, if applicable
3. Performing the synchronization process
> **Note:** The synchronization process reads from the LDAP/Active Directory user list, but does not change it.
To synchronize LDAP and Avid NEXIS accounts:
1. If the groups you want to synchronize are not listed, click Select Groups.
The LDAP Group Selection window opens.
The next time you open the LDAP Sync Tool (on the same computer and with the same credentials), the main window will display the selected groups from the last session.
2. Select the groups to be synchronized:
  - To select a single group, click its name.
  - To select multiple groups that are not contiguous, press and hold Crtl and click each name.
  - To select multiple contiguous groups, click the first name, then press Shift and click the last
name.
  - To select all groups, press Crtl-A.
3. Click Add Selected.
The LDAP Sync Tool builds a list of sync actions for the selected groups, and displays the selected groups in the main window.
4. To remove groups you do not want to synchronize, select one or more and click Clear Selected (or
click Clear All to remove all groups).
5. By default, all users in a listed group are reconciled between the LDAP server and the Avid NEXIS
system. To override the default reconciliation action for users in a group, do the following:
a. Click the row in the Sync Status column for the appropriate group (each row in the Sync Status column is a button).
A dialog box opens displaying the name of the group, its members, and the default action.
(Click Show All to see all users in the group.) 5 Managing Users and Groups b. To override the default action for one or more users, deselect the “Avid NEXIS Sync Action” column to disable the action.
c. (Optional) To print a report of the user list and selections, click Print.
d. Click Close to close the user selection window and return to the main window.
6. When all the groups you want to synchronize are shown and you have overridden the action for any
specific users, click Synchronized Marked.
The Account Synchronization Summary dialog box opens, showing the groups and users that will be reconciled and the specific action that will occur.
7. Review the list to make sure it looks correct. When ready, click Yes to perform the synchronization.
The LDAP Sync Tool performs the reconciliation actions, then displays the groups status in the main window.
8. Optionally, do one or more of the following:
  - Click Reload All to refresh the display.
  - Click History to see or print the history log. From the Synchronization History window, click
either Delete History or Print. Click Close when done.
  - In the main LDAP Sync Tool window, click Print to print the table of groups, group IDs, and the
current sync status.
9. To exit the LDAP Sync Tool, click File > Exit or click the Close button in the upper-right corner.
Handling LDAP Users with Incorrectly Formatted LDAP UIDs When synchronizing users from the LDAP Synchronization Tool, the User ID (or UID) must contain characters that Avid NEXIS allows for valid user names. The entry in the User ID column is used as the Avid NEXIS Username. All LDAP user names and passwords must use only ASCII characters. See "Guidelines for Names and Passwords" on page 18 for more information about valid and invalid characters.
If the User ID contains any invalid characters:
The user will not be added to Avid NEXIS
- The synchronization for the group is aborted
- Any subsequent user accounts in the group are not reconciled
- In such cases, do one of the following:
Create the user in Avid NEXIS with a user name that does not contain these illegal characters, and
- manually add them to groups.
- Update the user entry in the LDAP database with a UID that contains no illegal characters, then run
the LDAP Sync Tool again to reconcile the users.
5 Managing Users and Groups Duplicating (Copying) User Accounts You can duplicate a user account (both local and remote) to quickly create more users with the same attributes. For example, if you have a user who belongs to a group named Editors, all of whom have Read or Read-Write access to the same Workspaces, you can copy one user in that group to create a new user belonging to the same group and with the same Workspace access.
Depending on who is duplicating a user account, duplicated users inherit the following attributes of the original account:
When an administrator or Team Admin duplicates a user, the new user inherits the Team, user flags,
- group memberships, and Workspace access of the original user. (Team Admins can add the
duplicated user to any Team group, including the Team Administrator group.) When a Team Admin duplicates a user, the new user also inherits the bandwidth (if any) set by the Avid NEXIS administrator. The Team Admin cannot change it.
When a User Admin (or combination Workspace and User Admin) duplicates a user, the new user
- inherits the access flags and group memberships of the original user, but not the Workspace access
of the original user. User Admins cannot see any users who belong to a Team, or any Team groups.
- Workspace Admins cannot duplicate users.
To duplicate a user account:
1. In the navigation sidebar, click Users, then Users.
2. In the Users list, select the user account you want to duplicate.
3. In the Action tools bar, click Duplicate.
4. (Optional) Modify any of the attributes of the new user. For more information see "Changing User
Properties" below.
5. Click Save.
The new user is shown in the Users page.
6. Click Edit to close Edit mode.
Changing User Properties A user has the following properties:
- Attributes—Name, password, bandwidth limit, and Team
- User flags (see "About User Flags" on page 76)
- Group membership
- Workspace access
You can change various properties of a local user account at any time, depending on your own account type and the type of user you want to change, as described in the following table.
5 Managing Users and Groups Account Being Who Can Do What Changed Team Admin When logged in as a Team Admin or System Admin, you can:
- Change the name or password, or make it a temporary password
- Enable or disable the account (if a Team Admin disables their own account and
logs out, only a System Admin can re-enable it.)
- Change the Group membership (only to other Groups associated with that Team)
- Change the Workspace access (only to other Workspaces associated with that
Team)
- Delete the account (only a System Admin can re-create it)
User in a Team When logged in as a Team Admin or System Admin, you can:
- Change the name or password, or make it a temporary password
- Enable or disable the account
- Change the Group membership (only to other Groups associated with that Team)
- Change the Workspace access (only to other Workspaces associated with that
Team)
- Delete the account
User not in a Avid When logged in as a User Admin or System Admin, you can:
NEXIS Team
- Change the name or password, or make it a temporary password
- Enable or disable the account
- Change the Group membership (but not to any Team groups)
- Change the Workspace access (but not to any Team Workspaces)
- Delete the account
Guest account When logged in as a User Admin or System Admin, you can:
- Change the password or make it a temporary password
- Enable or disable the account
- Change the Group membership (but not to any Team groups or the System
Administrators group)
- Change the Workspace access (but not to any Team Workspaces)
For a remote LDAP user, you can only enable or disable the account and change their group membership or Workspace access.
> **Note:** Changing a user’s Workspace access takes effect immediately and can disrupt a workflow. Avid
recommends that users unmount a Workspace in the Client Manager before you change their access to it (including changing their group membership if that also changes their Workspace access).
To modify a user account:
1. In the navigation sidebar, click Users.
2. Double-click a user name or select it and click Edit.
The Details view (Edit mode) displays all the information for the selected user.
5 Managing Users and Groups
3. Change the user name or password (local users only), enable or disable the account, and change
group memberships and Workspace access as needed.
The Group Membership panel shows the number of groups on the system, the number currently selected (if any), and how many groups the user currently belongs to.
As you select more groups, the selected value increases, but the Current membership count does not change until you click Save. (See the Avid NEXIS ReadMe for the limit on the number of groups a user can belong to.)
> **Note:** Instead of changing a local user’s password, you can set the Temporary Password flag. The next
time the user logs into the Client Manager, they will have to change their password.
4. (Optional) Click Reset to undo any modifications made to the user information.
5. Click Save.
Displaying User Details The Users page displays the name, Team assignment, user flags, and bandwidth for all the users. More detailed information is available.
To see details about a user:
1. In the navigation sidebar, click Users, then Users.
2. Double-click a user or select it and click Edit.
To close the User Details area (Edit mode), do one of the following:
Click Refresh.
- Click Edit.
- Disabling and Enabling Users
You can disable and enable a user account any time (within the restrictions described in "Changing User Properties" on page 85).
Disabling an account prevents the user from logging in or using Workspaces, but preserves the account information so you can enable it again later.
To disable or enable a user account:
1. Make sure that the client account to be disabled is not currently active.
2. In the navigation sidebar, click Users, then Users.
3. Double-click a user or select it and click Edit.
4. Select or deselect the “disable user” option.
5. (Optional) Click Reset to undo any modifications made to the user information.
6. Click Save.
Deleting Users You can delete a local or remote user account at any time (within the restrictions described in "Changing User Properties" on page 85).
Deleting a user removes them from any groups they belonged to. You can delete all the users in a group, but the group itself is not deleted.
> **Note:** Deleted users immediately lose their connection to the Avid NEXIS system and their Workspaces are
unmounted.
5 Managing Users and Groups g Instead of deleting a user, you can disable it to temporarily prevent access to the shared-storage network (see "Disabling and Enabling Users" on the previous page).
To delete a user account:
1. Ensure that the client account to be deleted is not currently active.
2. In the Users list, select one or more users (or click Select to select all users) to delete.
> **Note:** By default, the first name on each page of the Users list is automatically selected. Make sure to
deselect it if you do not want to delete that user.
g Check the list of selected users to make sure your own account is not included. If you are a Team Admin and delete your account by mistake, only an Avid NEXIS administrator can re-create it for you.
3. In the Action tools bar click Delete.
4. In the dialog box, click OK.
Managing User Groups User groups allow you to organize and manage users based on their common properties, such as by Workspace access, LDAP users (on-premises only), roles, or or job function (editors, production assistants, interns).
User groups allow you to organize and manage users based on their common properties, such as Workspace access System Admins and Team Admins can change the group membership or Workspace access for an Avid NEXIS Team group. If you are a Team Admin, see "Managing Your Team’s Users, Groups, and Workspaces" on page 103).
> **Note:** You cannot change the name of the System Administrators group or delete it. You can add users to,
and remove them from, this group: see "Adding Users to the System Administrators Group" on the next page.
Creating User Groups See the Avid NEXIS ReadMe for the user groups limit in your configuration.
To add a user group:
1. In the navigation sidebar, click Users, then Groups.
2. Click Add.
3. Type a user group name in the Name field. (If you are a Team Admin, you cannot change or delete the
Team prefix, if any.) If an error indicates that a user group with the name already exists, type a different name.
> **Note:** For information on valid and invalid characters, see "Guidelines for Names and Passwords" on
page 18.
4. (Not applicable to Team Admins) Select an available Avid NEXIS Team to assign the group to that
Team.
5. (Not applicable to Team Admins) In the Group Roles section, click to select the extra privileges you
want members of the new group to have. (If you selected a Team in the previous step, the Group Roles become unavailable.) See "Understanding Groups and Group Roles " on page 73 for more 5 Managing Users and Groups information.
6. In the User Membership list, click Member next to a user name to make the user a group member. If
you selected a Team, only users in that Team are selectable.
7. In the Workspace Access list, set the access privilege for each Workspace as applicable.
If you selected a Team, only Team Workspaces are selectable. Unless overridden on a per-user or per-Workspace basis (see "Managing User and Group Access to Workspaces" on page 64), all the group members have the same access to any given Workspace.
8. Click Save.
Adding Users to the System Administrators Group The System Administrators group is present on an Avid NEXIS system upgraded to, or already running Avid NEXIS version 2021.8.0 or later.
Initially, only the pre-existing administrator account is a member of the System Administrators group, but is not shown in the Management Console (and cannot be removed from the group). You can add more users– both local users and remote LDAP users–to this group to delegate system administration responsibilities among trusted people in your organization. Only members of the System Administrators group (System Admins) can change the membership of this group.
> **Note:** You cannot add Team Users, Team Admins, or the Guest user to the System Administrators group.
Because the System Administrators group has full management capabilities for the Avid NEXIS system, it is not necessary to add its members to any other groups (such as a Workspace Admin or User Admin group).
Keep the members of this group separate from other groups to avoid unintended interactions or conflicts among the privileges they could receive as members of multiple groups, and to reduce management complexity.
> **Note:** Before you begin, check the Users page to see if the intended users are already members of other
groups. If so, you can remove them from those other groups before or after adding them to the System Administrators group. If any of these users are logged into the Management Console or the Avid NEXIS Client Manager at the time, they might notice changes to what operations they can perform or Workspaces they can see and use.
To add users to the System Administrators group:
1. In the navigation sidebar, click Users, then Groups.
2. Double-click the System Administrators group to open Edit mode.
The group already has the System Admin role, which cannot be changed. No other group roles are available, because System Administrators already have full system management capabilities.
3. The User membership list shows all the users configured on the system. Click the box next to one or
more users (any combination of local and remote LDAP users), then click the Member icon.
4. (Optional) In the Workspace Access area, select one or more Workspaces and apply the appropriate
access type, in separate steps per type; for example:
a. To give the group members read-write access to Workspaces, select the appropriate Workspaces, click the Read-Write icon, then click Save.
> **Note:** After you apply one access type, you can sort the Workspace list by the Access column to
more easily apply a different access type to others.
b. To give the group members read-only access to Workspaces, select the appropriate Workspaces, click the Read-Only icon, and click Save.
5 Managing Users and Groups Changing User Group Properties You can rename a user group, change its user membership, change group roles, and modify its users’ Workspace access at any time, however you cannot:
Change the name of the Guest group or System Administrators group
- Add User or Workspace Admin roles to the Guest group, the System Administrators group, or any
- group in a Team
Add Team Admins or users who belong to a Team to any group not associated with that Team
- Group Details includes the following information:
- Attributes — Group name (Because users do not see their group name in the Client Manager, changes
to the group name do not affect them.)
- Group Roles — Lists any special privileges given to the group (see "Understanding Groups and Group
Roles " on page 73) User Membership — Lists all the users on the system and how many groups they belong to
- Workspace Access — Lists the access granted to all group members for each Workspace
- Changing a group’s Workspace access takes effect immediately and can disrupt a workflow. Avid
recommends that group members unmount a Workspace in the Client Manager before you change their access to it (including changing their group membership if that also changes their Workspace access).
Changes to a user’s Workspace access, group roles, or group membership are saved immediately, but do not affect a user who is currently logged in to the Management Console. From the user’s perspective, the changes take effect the next time they log in.
> **Note:** If you are a User Admin and you remove yourself from a group with the User Admin role, only an
administrator can re-add you to the group.
To modify a user group account:
1. In the navigation sidebar, click Users, then Groups.
2. Double-click a user group or select it and click Edit.
The Details area (Edit mode) displays information about the selected user group account.
3. Modify the user group name, members, or Workspace access e as required. (If you are a Team
Administrator, you cannot change or delete the Team prefix, if any.) If an error indicates that a user group with the name already exists, type a different name.
> **Note:** For information on valid and invalid characters, see "Guidelines for Names and Passwords" on
page 18.
4. Select one or more Group Roles to add those privileges to members of the group.
5. Modify user membership for the user group as required. Select one or more group members, or click
Select to select all members of the group:
  - Click Member to make the user a member in the user group.
  - Click Non-Member to remove the user from the user group.
6. Modify Workspace access for the user group as required. Select one or more Workspaces, or click
Select to select all Workspaces:
5 Managing Users and Groups
  - Click No Access to remove Workspace access privileges for the user group.
  - Click Read Access to set read-only Workspace access for the user group.
  - Click Read-Write Access to set both read and write Workspace access for the user group.
For information on permissions for Workspace access in the network, see "Managing User and Group Access to Workspaces" on page 64.
7. (Optional) Click Reset to undo any modifications made to the client information.
8. Click Save.
Displaying User Group Details The Groups page displays the name, Team assignment, and Group Roles for all user groups. Additional details are available.
To see detailed information about a user group:
1. In the navigation sidebar, click Users, then Groups.
2. Double-click a user group or select it and click Edit.
The Details area (Edit mode) displays all the information for the selected user group.
To close the Details area (Edit mode):
- Double-click any Group name or click Edit again.
Deleting User Groups Depending on your account privileges (user or group roles), you can delete any user group except:
- Guest group (present in on-premises systems only)
- System Administrators group
- A Team Administrator group (to delete a Team Administrator group, delete the entire Team).
If the group has roles assigned (Workspace Admin or User Admin or both), the group members lose those attributes when you delete the group.
If you are a Team Administrator, you can delete any Team user group except your Team Admin group. (You cannot delete your own Team.)
> **Note:** Deleting a group does not delete the members (user accounts) in the group.
To delete a user group:
1. In the navigation sidebar, click Users, then Groups.
2. Select one or more user groups (or click Select to select all user groups) to delete.
By default, the first group in the Groups list is automatically selected. Make sure to deselect it if you do not want to delete that group.
3. Click Delete.
4. In the dialog box, click OK.
Controlling Client Bandwidth Some client applications try to use as much bandwidth as possible (for example, Avid AirSpeed servers), potentially throttling other users of the system. To control this, you can set the maximum bandwidth a client can use. See "Changing Bandwidth Limits" on page 93.
5 Managing Users and Groups If the combined bandwidth requirement of connected components equals the system limit for bandwidth use, some clients might not be able to connect to the shared-storage network. To check current system bandwidth usage, see "Displaying Client Bandwidth" below.
Adding Bandwidth Limits Avid NEXIS supports bandwidth limits you create and those created automatically when a client connects to the Avid NEXIS for the first time. You can also prevent the automatic creation of client bandwidth entries by changing the system preferences; see "Changing the Default System Settings" on page 41.
> **Note:** Only System Admins can set Bandwidth limits for users in an Avid NEXIS Team. (User Admins cannot see
users in Teams.) Team Admins can see the bandwidth limits set on their users, but cannot change or remove them.
For automatically created entries, the default bandwidth is determined by the system preference setting called Default Bandwidth for Auto Created Devices (MB/sec). The default value of zero (0) means the client has no bandwidth limit. See "Changing the Default System Settings" on page 41 for more information.
> **Note:** The Management Console displays only the client-to-server (client to Avid NEXIS system) bandwidth
(see "Displaying Client Bandwidth" below). For unmirrored Workspaces, the bandwidth displayed reflects the actual bandwidth used for writes. For mirrored Workspaces, the actual bandwidth is twice what is displayed for writes, because the bandwidth is occurring between the Media Packs and the server for the mirrored writes, not between the client and the server.
To prevent automatic creation of bandwidth limits:
1. In the navigation sidebar, click System, then Settings.
2. Click Preferences if not already selected.
3. Click the option to Force Manual Device Creation.
To manually create a bandwidth limit:
1. In the navigation sidebar, click System, then Bandwidth Limits.
2. Click Add.
3. Type the name of the device in the Name field.
If an error indicates that a device with the name already exists, type a different name.
> **Note:** For information on valid and invalid characters, see "Guidelines for Names and Passwords" on
page 18.
4. Type a value in the Bandwidth field to set the amount of read/write bandwidth (in MB/s) to allocate to
the device. A value of 0 (zero) indicates that bandwidth will not be metered.
5. (Optional) Type a description in the Description field.
6. Click Save.
The Bandwidth Limits list refreshes and displays the new client.
7. Repeat steps 2 through 6 to add more clients.
Displaying Client Bandwidth The Dashboard displays system usage in MB/sec for both reads and writes. You can toggle the display to show reads only, writes only, or both. The Dashboard displays the bandwidth of each connected client, with separate columns for reads and writes.
5 Managing Users and Groups
> **Note:** The Management Console displays only the client-to-server (client to Avid NEXIS system) bandwidth
(see "Displaying Client Bandwidth" on the previous page). For unmirrored Workspaces, the bandwidth displayed reflects the actual bandwidth used for writes. For mirrored Workspaces, the actual bandwidth is twice what is displayed for writes, because the bandwidth is occurring between the Media Packs and the server for the mirrored writes, not between the client and the server.
More detail is available on the Client Bandwidth page, including system usage, including total system bandwidth use, reads, writes, and consumption by each connected system.
To display client bandwidth:
- In the navigation sidebar, click Monitoring, then Client Bandwidth.
All connected clients are listed, and Continuous Refresh is enabled so you can see the bandwidth usage change in real time. You can sort clients by name.
Changing Bandwidth Limits You can rename an entry or change the allocated bandwidth or description at any time. Any changes take effect immediately, even while a user is connected.
> **Note:** Changing the bandwidth limit for a client has no effect on the actual system bandwidth usage for
client writes to a mirrored Workspace. For more information, see "Adding Bandwidth Limits" on the previous page To modify a Bandwidth Limit entry:
1. In the navigation sidebar, click System, then Bandwidth Limits.
2. Double-click an entry or select it and click Edit.
3. Modify the options as required.
4. (Optional) Click Reset to undo any modifications.
5. Click Save.
Deleting Bandwidth Limits You can delete a Bandwidth Limit entry for user-created clients or any entry you have modified.
To delete a Bandwidth Limit:
1. Make sure that the client account is not currently connected.
2. In the navigation sidebar, click System, then Bandwidth Limits.
3. Select the one or more entries to delete (or click Select to select all bandwidth limit entries).
4. Click Delete.
5. Click OK.
6 Managing Avid NEXIS Teams 6 Managing Avid NEXIS Teams An Avid NEXIS Team is a collection of people who can use an isolated portion of the shared storage on an Avid NEXIS system. Teams differ from Avid NEXIS Groups in that the people in a Team might not be employees of the company that owns and manages the Avid NEXIS system. The members of an Avid NEXIS user group can potentially see other Workspaces, users, and groups on a shared-storage system, and have no limit on the amount of space they can use in a Storage Group. In contrast, you can create Teams:
- In facilities where suites are often rented to different companies, such as advertisers working on
commercials for competitive products For employees within your company who are working on a sensitive project – such as investigative
- journalism – that you want to protect from wide visibility
For large productions (such as reality programs) where you might want to delegate certain
- administrative tasks (manging Workspaces, users, groups, and their permissions) to Production
Assistants, Assistant Editors or other personnel, within a specific amount of storage space Team personnel can see and manage only the Workspaces, users, and groups within their dedicated quota of space in Storage Groups, and cannot view or change other teams or take system-wide actions.
Only System Admins (see "Understanding Groups and Group Roles " on page 73) can create, modify, and delete Teams.
See the Avid NEXIS ReadMe for the number of Teams supported on your system and other Team-specific limits.
Properties of Teams Teams have the following properties, some of which are required. Each of these properties is explained in more detail later in this chapter.
To help clarify each attribute, this table lists the properties of a Team for a company named Ace Entertainment.
Attribute Description Example Team name Required — Name for the Team. Each Team name ACE Entertainment must be unique on the system.
Description (Optional) — Description of the Team or the project reality show they are working on (visible only to System Admins) ACE- Prefix Recommended — A text string that is applied to all the Workspaces, Users, and Groups created for or by the Team, if the appropriate policy is set.
ACE-Managers Team Required — A group whose members can manage the Administrator Team and its objects. The initial Team Administrator Group User belongs to this group automatically, and can add other Team Users to it later.
Team Required — A unique user account that you must ACE-Admin1 Administrator create when you create the Team.
User This user can manage the Team and create more users, groups, and Workspaces for the Team. The initial Team Administrator User automatically belongs to the Team Administrator Group.
6 Managing Avid NEXIS Teams Attribute Description Example The password is temporary, by default. The first time the Team Admin logs in, they must change their password for security.
Policies Optional — Options that control what the Team is The ACE Team can delete able to do on the system. Also controls where the Workspaces but cannot move Team Prefix (if any) is applied. them between Storage Groups.
Can create Workspace names that contain spaces.
The prefix ACE- applies to all Team Workspaces, users, and groups.
Storage Quota Required — The amount of storage space in the one The ACE Team has 1500GB in or more Storage Groups for the Team’s exclusive StorageGroupA, 1TB in use. StorageGroupB, and no space in any other Storage Group on the system.
Team Administrator User and Team Administrator Group Each Team requires at least one unique Team Administrator User and a Team Administrator group to which the Team Administrator User belongs. You create the Team Administrator User (hereafter called the Team Admin) and Group when you create the Team. From then on, the Team Admin can create additional Team users, groups, and Workspaces for their Team, and can add Team users to the Team Administrator Group to share administrative duties, and to other Team groups. Team Admins can control the type of access their Team users have to their Team Workspaces.
To protect the system from unexpected or unauthorized changes, Team Admins can see only a subset of the full Management Console functionality, and can perform only the following operations:
- Create and manage users and groups for their Team
- Create and manage Workspaces for their Team
- Apply and change user and group access privileges (read-only, read-write, or none) for the
Workspaces for their Team
- (Optional) Download the Avid NEXIS Client kit from the Installers page (either you or the Team Admin
can install the Client Manager onto the computers of all the Team users).
A System Admin or the Team Admin can create all the users for the Team, in any combination of local users (who authenticate against the Avid NEXIS system) or remote users (who authenticate against your facility’s authentication server).
If you plan to import users, configure External Authentication on the system (see "Configuring External Authentication of Users" on page 79) and add all the users for each Team to your authentication server.
Then import the users with the LDAP Sync Tool and add them to the respective Teams (see "Importing Users from a Server " on page 78 and "Adding Remote (Imported) Users to an Avid NEXIS Team" on page 99 more information).
Only one person should create the users for the Teams to avoid possible confusion or name collision.
If the System Admin creates or imports user accounts and adds them to the Teams, the Team Admin
- sees those users when they log into the Management Console. They can then create Team groups
and assign the users to them.
6 Managing Avid NEXIS Teams If the Team Admin will create the user accounts, they can decide the names for their local users but
- for remote users they must enter the names exactly as configured on the authentication server.
Team Users and Their Capabilities Users in a Team can run the Client Manager and connect to an Avid NEXIS system, mount and use Workspaces, and change their password (in the Client Manager itself), but cannot log into the Management Console.
You or the Team Admin can download and install the Client Manager onto the users’ computers.
Team Prefix A prefix is any text string you want that helps distinguish Team Groups, Users, and Workspaces from others on the same system. Keep the prefix short (a few characters) but descriptive enough to be useful.
Requiring a prefix prevents multiple Teams from inadvertently creating name conflicts on the shared- storage system, because all Workspace, Group, and User names on an Avid NEXIS system must be unique.
For example, consider two Teams who each create a Workspace called Ingest.
If created by a Team with the prefix ACE-, their Workspace name becomes ACE-Ingest.
- If created by a Team with the prefix ACME-, the Workspace name becomes ACME-Ingest.
- When creating a Team, if you enter and apply the prefix to Team group or user names, it is immediately
added to the Team Administrator group and Team Administrator User names that you are creating.
For example, if you apply the prefix ACE- to Groups and Users, the Team Administrator group name and Team Administrator User name also immediately include the prefix ACE-.
If you do not create a prefix, choose a name that uniquely identifies each Team Administrator group and Team Administrator User from any other groups and users on the system.
Team Policies You can set policies to control what Team Admins can do within their view of the system:
Workspace deletion — Prevent (default) or allow Team Admins to delete any Workspace they have
- created.
- Workspace move — Prevent (default) or allow Team Admins to move any Team Workspace to another
Storage Group on the system, if they have space (quotas) in other Storage Groups, and subject to the restrictions in "Moving a Workspace" on page 67. For example, if the system has both Scale-Out and SSD Storage Groups, you can allow the Team Admin to move Workspaces from one to the other for high compute operations such as rendering.
> **Note:** Moving a Team Workspace does not change the Team’s quota in the source or destination
Storage Groups.
Spaces in Workspace names — Prevent (default) or allow Team Admins to create Workspaces with a
- space character in the name, or to add spaces to a Workspace name. (By default, spaces in
Workspace names are allowed, but you might want to limit that behavior. Some applications and operating systems do not support names with spaces.)
- Add Team Prefix to Workspace Names, Group Names, or User Names — (Optional but recommended).
Team Admins cannot change this setting. Requiring a prefix for all objects created by a Team Admin can help avoid name collisions. Team Admins can see only the objects belonging to their own Team, so they will not know if a name for a Workspace, User, or Group already exists.
6 Managing Avid NEXIS Teams As a best practice, avoid changing the policies or prefix for a Team once it is in use. Changing (or adding) a prefix or where it is applied does not update existing Team objects, which can result in them no longer complying with the new policies. Users might be unable to connect to the Client Manager or to their Workspaces, if those names change due to prefix changes. Before creating a Team, carefully plan its name, prefix, where a prefix will be applied, and other Team attributes.
Storage Group Quotas You grant space to a Team through quotas in the one or more Storage Groups. Quotas are in units of GB, rather than a percentage of the total space available in the Storage Group. The quota for any Team does not change if the size of the Storage Group changes (for example, if you add more Engines or Media Packs).
The quota for a Team can be any amount up to the total amount of free space in the Storage Group.
g Consider reserving some space in Storage Groups for future Teams, to increase a Team’s quota, and for other non-Team use.
Team Admins can create Workspaces only in Storage Groups in which they have a quota, and can increase the size of their Workspaces, but not beyond their quota in the Storage Group.
Within a Storage Group, you can create quotas for multiple Teams. (A Team has only one quota in a given Storage Group. If the Team needs more space you can increase their quota.) Team Admins cannot see the total amount of space available in a Storage Group, and cannot see any other Team’s quotas. They also cannot see any Storage Groups in which they have no quota.
For on-premises systems only, you can specify the protection options a Team Admin can apply to their Workspaces:
- Media Pack Protection options: One Disk, Two Disk (default), or User Select, which lets the Team
Admin select either One Disk or Two Disk for a Workspace.
- Engine Protection options: Unprotected (default) or Mirrored (available in a mirror-capable or All-
Mirror Storage Group).
All of the objects created by Teams (Workspaces, users, and groups) count against the system limits (listed in the Avid NEXIS ReadMe). In addition, quotas decrease the total available space in a Storage Group for other purposes.
Planning for Teams Before you create Teams, carefully plan for their current and future needs, and the implications for the entire Avid NEXIS system. All objects on the system must have unique names, therefore Avid strongly recommends using a prefix for each Team and requiring it for all Workspaces, users, and groups the Team creates.
> **Note:** All Team policies and prefix requirements apply to System Admins as well as the Team, with the
exception that a System Admin can always delete any Workspace. If a System Admin creates a Workspace for a Team, the space comes from the Team’s quota, and the Team’s Media Pack and Engine protection modes apply. If a Team Admin cannot move Workspaces between Storage Groups, neither can a System Admin.
Changing the Team prefix or its policies once a Team is in use can result in existing Team objects no longer complying with the new policy (because existing objects are not changed by changing the prefix). In addition, some changes to Teams do not take effect for the Team Admin until they log out and log back in.
Changing a Team’s Workspace policies (such as whether or not the Team Admin can delete Workspaces or move them between Storage Groups) can have unintended consequences. For example, if a Team Admin was previously allowed to delete their Workspaces but is later prevented from it, the Team can run out of space in their Storage Group quota sooner than expected.
6 Managing Avid NEXIS Teams If you change whether or not a Team Admin can move Workspaces between Storage Groups, Workspaces they moved when they had permission to do so can become stranded in the destination Storage Group. In addition, the Team Admin might rely on the ability to create a Workspace in a Storage Group with a particular performance type for some workflows and then move it to a Storage Group with a different performance type for other workflows.
Make sure you understand the Team’s project and space needs before you create the Team and set its policies.
Creating Teams Create a Team for each client company who rents space on the Avid NEXIS system, or for a confidential project.
To create a Team:
1. In the navigation sidebar, click Teams.
2. In the Action tools bar, click Add.
3. Type a name for the Team (required), a description (optional) and a prefix (recommended).
g The prefix is retroactively added to the Team Administrator User and the Team Administrator group names as soon as you click the respective boxes in the Policy section in a later step.
4. Type a name for the Team Administrator group.
5. Type a name and password for the Team Administrator User. This must be a name that does not
already exist on the system. You cannot use the name of a remote LDAP user for the initial Team Admin.
6. Select the appropriate policies.
7. Specify which objects will include the prefix.
g If applied to user names and group names, the prefix is immediately added to the Team Administrator User and the Team Administrator group names you entered in the previous steps.
8. In the Storage Quota section, select a Storage Group from the list box and type a value (at least 1GB)
up to the amount of available space in the Storage Group.
9. Select the Media Pack Protection and Engine Protection options you want to enforce for this Team.
10. To add a quota in another Storage Group, click Add and repeat steps 8 and 9. (To support
Workspace moves, the Team must have a quota in more than one Storage Group.)
11. Click Save.
The Team is created.
The Team details view shows the name of the Team Administrator Group. To see the name of the Team Administrator, click Users in the navigation sidebar.
12. Securely provide the following information to each Team Admin:
Team name
- Team Admin user name (including the Team prefix, if applicable) and temporary password
- Name and IP address of the Avid NEXIS system they will use
- Team prefix and where it is enforced
- Storage Group names, quotas within each, and performance type (relevant if you allow Team Admins
- to move Workspaces between Storage Groups, and so the Team Admin can choose the best Storage
Group for a Workspace based on its performance needs) 6 Managing Avid NEXIS Teams Policy for deleting or moving Workspaces, or using spaces in Workspace names
- Workspace (Media Pack) protection options and what they mean
- Engine protection options, if applicable, and what they mean
- Displaying Team Details
The Teams page shows the Team name, description, and collective storage quota (the sum in all Storage Groups) and usage information. More details for a Team are available, such as the prefix and policy settings and the quota in each Storage Group.
To see detailed information about a Team:
1. In the navigation sidebar, click Teams.
2. Double-click a Team or select it and click Edit.
The Details area (Edit mode) shows all the information for the selected Team.
> **Note:** To see the Users in a Team, including the Team Admin, click Users in the navigation sidebar.
Creating or Modifying Workspaces for Teams As a System Admin, you can create any or all of the Team Workspaces, or let the Team Admins create them, or both.
A Team Admin can create their own Workspaces and use those created for them, and they can modify any of their Workspaces subject to their Team policy, if applicable.
For example, the Team Admin can change the Workspace name, size, or Storage Group if allowed by their policy.
Creating or Importing Users for Teams System Admins and Team Admins can create users for a Team.
> **Note:** Only a member of the System Admin group can import users to the Avid NEXIS system. Once imported,
you can add them to the respective Teams.
See "Creating (Adding) Users" on page 76 to create users manually and add them to Teams. See "Importing Users from a Server " on page 78 to import users with the LDAP Sync Tool.
Team Admins can also create their own users and groups, and manage those created for them by a System Administrator. If the Team Admin will create accounts for remote LDAP users, make sure to provide them with the exact user names as configured on the authentication server.
Adding Remote (Imported) Users to an Avid NEXIS Team When you use the LDAP Sync Tool to import users, the groups they belong to on the authentication server are imported as well. You can add imported users to a Team only if they do not belong to another group on the Avid NEXIS system. You can remove the users from the imported AD groups individually, or delete the imported groups in the Management Console (deleting groups does not delete their members). After saving the changes you can add each user to the appropriate Team.
> **Note:** Keep track of the names of the imported groups so you do not delete local groups by mistake.
6 Managing Avid NEXIS Teams To remove imported users from their imported groups:
1. In the Management Console navigation sidebar, click Users, then Groups.
2. Select one or more imported LDAP groups.
3. Click Delete.
4. In the dialog box, click OK.
The groups are deleted but the imported users remain.
To add imported users to a Team:
1. In the navigation sidebar, click Users, then Users.
2. Double-click a user or select it and click Edit.
3. In the Teams list box, select the Team for the user, then click Save.
4. (Optional) To add the user to one or more Team groups or to give the user access to Team
Workspaces, see "Changing User Properties" on page 85.
Changing a Team’s Name System Admins can change the name of a Team at any time.
Changing the Team name has no impact on the Team’s objects or the Team Admin’s capabilities.
> **Note:** Team Administrators can see their Team name in the Management Console but it is chiefly a reference
for System Admins to support identifying, sorting, and filtering Team objects. For Team Administrators, the Team Name change becomes visible on their next login.
To change a Team’s name:
1. In the navigation sidebar, click Teams.
2. Double-click a Team or select it and click Edit.
3. Type a new name for the Team.
4. Click Save.
Changing a Team’s Prefix or Policies If necessary, you can change the prefix and policies of a Team at any time, but ideally before the Team is in use.
Avid strongly discourages changing the prefix or policies for a Team once it is in use. Changing (or adding) a prefix, or changing where it is applied, has no effect on existing Team objects, and can result in them no longer complying with the new policies.
Adding, removing, or changing a prefix can also potentially prevent users from connecting to the Client Manager (if their user name changes) or to their Workspaces (if the Workspace name changes).
Before creating a Team, carefully plan its name, use of a prefix (recommended) and where it will be applied, and other Team attributes, and carefully consider the effects of changing the prefix or policies for a Team in active use.
If the Team is already in use, the Team Admin is subject to the changes as follows:
6 Managing Avid NEXIS Teams Immediately (in their current login session) for allowing or preventing spaces in Workspace names
- On their next login for changes to the policies for moving Workspaces between Storage Groups,
- deleting Workspaces, and the prefix and where it is required
To change a Team’s prefix or policies (Strongly discouraged if the Team is in active use):
1. In the navigation sidebar, click Teams.
2. Double-click a Team or select it and click Edit.
3. Do any of the following:
  - Add, edit or a delete a Team prefix.
  - Change the selection for Workspace deletion, Workspace move, or Spaces in Workspace
name.
  - If applicable, select where the prefix will be enforced. (If you deleted the prefix, deselect all
three options.)
4. Click Save.
Increasing or Decreasing Quotas System Admins can increase a Team’s quota if the Storage Group has available space, and can decrease a Team’s quota, but not to below the amount of space already used by the Team’s Workspaces. The Team Admin is subject to the changes immediately.
To increase or decrease an existing quota:
1. In the navigation sidebar, click Teams.
2. Double-click a Team or select it and click Edit.
3. Type a new value in the Quota field for the appropriate Storage Groups.
4. Click Save.
Adding a Quota in Another Storage Group System Admins can give a Team a quota in another Storage Group, if the Storage Group has available space. The Team Admin can use the new quota immediately.
To add a quota in another Storage Group:
1. In the navigation sidebar, click Teams.
2. Double-click a Team or select it and click Edit.
3. Click Add.
4. Select a Storage Group, type a quota amount, and select the Media Pack and Engine Protection
modes.
5. Click Save.
Changing the Protection Modes for a Quota If a Team has no Workspaces in a Storage Group, you can change the Media Pack and Engine Protection modes for an existing Team quota. The Team Admin is subject to the changes immediately.
To change the protection modes for a Team quota:
1. In the navigation sidebar, click Teams.
2. Double-click a Team or select it and click Edit.
3. Click Remove Team Quota next to the quota you want to edit.
6 Managing Avid NEXIS Teams
4. Click Add.
5. Select the same Storage Group and re-type the same quota value, then select the new Media Pack
and Engine Protection modes. This combines two operations in one: deleting the current quota with the original protection modes, and re-creating the quota with the new protection modes.
6. Click Save.
Deleting a Quota Every Team must have a quota in at least one Storage Group.
System Admins can delete a Team’s quota in one Storage Group as long as:
- The Team has no Workspaces in the Storage Group
- The Team has a quota in another Storage Group (if not, add one)
To delete a Team quota:
1. In the navigation sidebar, click Teams.
2. Double-click a Team or select it and click Edit.
3. Click Remove Team Quota next to the quota you want to delete. (The Team must have a quota in at
least one Storage Group.)
4. Click Save.
The Team’s quota is effective immediately. The Team Admin does not need to log out and back in to see the change.
Deleting a Team When a client customer is finished with their project and no longer needs access to the shared storage, a System Admin can delete the Team.
Deleting a Team also deletes all its Workspaces, Users, and Groups, and deletes the Team Administrator User. All quotas assigned to the Team are removed and the space becomes available in the Storage Groups for other uses.
To delete a Team:
1. In the navigation sidebar, click Teams.
2. Select a Team and click Delete.
3. In the dialog box, click each tab to review and confirm the Team’s Workspaces, Groups, and Users to
be deleted.
4. Click Delete to delete the Team and all its objects.
The Results area displays a status message about the progress of the deletions.
7 Managing Your Team’s Users, Groups, and Workspaces 7 Managing Your Team’s Users, Groups, and Work- spaces This chapter is intended for Team Administrator Users. An Avid NEXIS Team is a collection of people who can use an isolated portion of the shared storage on an Avid NEXIS system. As the administrator for your Team, you can manage the users, groups, and Workspaces your Team needs.
If you are unfamiliar with the terms used in this chapter, see "Glossary of Avid NEXIS Terms " on page 9.
Your Team Properties The administrator of the Avid NEXIS system your Team will use will provide you with the following information:
- Name and IP address of the Avid NEXIS system
- Your Team Admin user name and temporary password
- Team name and prefix, if applicable, and where it is applied. A Team prefix is included automatically
in any user name, group name, or Workspace name that requires it.
g Although you cannot change or delete a prefix, it is helpful to know what it is and where it will be applied when you create your users, groups, and Workspaces.
- The Storage Groups in which you have space (quotas), and the size of the quotas in each
- Team policies for whether you can:
  - Delete Workspaces
  - Move Workspaces between compatible Storage Groups (only if you have quotas in more than
one Storage Group, and subject to certain restrictions)
  - Use spaces in Workspace names (spaces are always allowed in user and group names)
Getting Started You manage all your Team’s users, groups, and Workspaces through the Avid NEXIS Management Console, a web-based interface that runs on the following operating systems and browsers:
- Windows — Mozilla Firefox, Google Chrome, Microsoft Edge
- macOS — Safari, Mozilla Firefox, Google Chrome
- Linux — Mozilla Firefox, Google Chrome
To log into the Management Console:
1. Open a web browser and in the address bar type the IP address of the Avid NEXIS system designated
for your Team use.
The Login dialog box for the Management Console opens.
2. Type your Team Admin name and password. The user name is not case sensitive.
3. Click Sign In or press Enter.
4. The first time you log in, you are prompted to change the temporary password. Retype the
temporary password, type and confirm a new password, and click Submit.
5. Log in again, with the new password.
The Management Console opens to the Workspaces page by default, as shown in the following figure.
7 Managing Your Team’s Users, Groups, and Workspaces If the Avid NEXIS Administrator created any users, groups or Workspaces for your Team, they are displayed in the Management Console. You can manage them and create others.
The Navigation sidebar (on the left side of the Management Console) contains links that open the pages where you manage the users, groups, and Workspaces for your Team.
You can create your users, groups, and Workspaces in any order, and manage the relationships between them as needed; for example:
Create the users first, then optionally organize them into Groups: see "Managing Users" on page 75 .
- Create user groups first, then create the users and make them members of the appropriate groups:
Create the Workspaces first, then create the users (and optionally groups) that will use them and
- configure the appropriate access: "Managing Workspaces" on page 1.
8 Managing System Components 8 Managing System Components The system components include physical Media Packs (drives), Engines and optionally Expansion Chassis (Avid NEXIS | F2X), and Controllers.
> **Note:** Make sure you have the correct permissions to manage system hardware. See "Groups and Roles at a
Glance" on page 75 for information on user account types and what operations each type can do.
Managing Media Packs Managing Media Packs includes viewing details, adding unassigned Media Packs to a Storage Group, removing a Media Pack from a Storage Group, finding the slot number of a failed drive, clearing a foreign disk error (not common), and unbinding Media Packs from the file system.
> **Note:** System disks (on-premises systems only) are not part of a Media Pack; to see information about
system disks, see "Displaying Drive Details" on page 109.
Displaying Media Pack Information The Media Packs page shows the following information. Some headings are not applicable and not shown in Cloud deployments.
g You can display more details for a Media Pack by double-clicking it to open the Details view. The Details area (Edit mode) shows the same information as in the List view, but you can click the blue tabs to see additional information.
Click any column heading to sort the information. Also see "Sorting and Searching" on page 17.
Heading Description (Icon indicating Each Media Pack has a colored icon indicating its status:
status at a
- Green—OK
glance)
- Green with up arrow— (on-premises only) Media Pack is bound as High Performance
or SSD and is OK White—Not bound to the file system
- Yellow— (on-premises only) Media Pack might be experiencing degraded
- performance
Blue—An installation or software upgrade is in progress
- Red— (on-premises only) Problem within the Media Pack, such as a disk failure
- Name Name of the Media Pack.
Media Pack names are assigned by the system and have the format MPnnn, where nnn is a sequential number indicating the order in which the Media Pack was bound to the system.
Media Pack names cannot be changed.
Performance Performance type of the Media Pack, which indicates the bind setting Type If applicable displays any special properties of the Media Pack Host Name Name of the Engine or System Director Appliance, where applicable Modular License Whether or not the Media Pack is managed through a Modular License (applicable to on- premises systems only; in Cloud deployments this column always displays N/A) 8 Managing System Components Heading Description Status Media Pack status (see "Understanding Media Pack Status" below) State Media Pack state:
- bound or unbound
- active (in a Storage Group)
- spare (available to add to a Storage Group)
Uptime How long the Media Pack has been running since the last reboot Capacity Total capacity in GB Usable The amount of usable space on the Media Pack Used The amount of used space on the Media Pack Engine serial Serial number of the Engine where the Media Pack is installed (on-premises only) number Storage Group Name of the Storage Group to which the Media Pack belongs (if no Storage Group is listed, the Media Pack might be a spare and available to add)
> **Note:** If a Media Pack contains a replacement drive of a different size than the others, the actual disk size is
shown in the Disks list in the Details area, but the Media Pack uses only the amount of space that equals the smaller disk sizes. You can replace a smaller drive with a larger drive, but not vice versa.
Understanding Media Pack Status The Status column reports the status of the Media Packs logged by the System Director.
g For Media Packs in correct working order, the Status field is empty.
A Media Pack can have one of the following status values, in alphabetical order.
Status Description Database Failure Media pack metadata cannot be read. Call Avid Customer Care.
Disk Failure The hard disk error threshold for a disk has been exceeded and the Media Pack has set the disk offline. The threshold is 25 hard errors.
Disk full One or more Media Packs in a Storage Group has reached its full capacity. Even if some of the Media Packs still have available space, the Storage Group is considered full as soon as one Media Pack is filled. As data is written and deleted, some Media Packs are filled before others. During redistribution, the data is redistributed evenly among the Media Packs.
Disk Performance Disk performance is reduced, for one of the following reasons. Replace the disk as soon as Degraded possible.
- A disk has logged an unacceptable number of Long Command Times over a rolling
two-day period. If the disk reaches DPD L2 (warning message shown on the Management Console), replace it as soon as possible.
- A disk has logged more than five (5) extreme LCT events (read/write) lasting more
than 25 seconds over a rolling two-day period.
- A disk has reached 50% of its hard error threshold (10 total disk I/O errors). Replace
the disk soon.
8 Managing System Components Status Description The system has detected an increase in bad drive sectors in the past week.
- Drive rebuilding The contents of a data drive are being rebuilt from the other drives in the Media Pack (after
you replace a failed drive) Initializing Media Pack is initializing (for example after a reboot). This is normal and non-disruptive.
Initializing A redistribution operation involving this Media Pack is getting ready to start redistribution Invalid number of The Media Pack is missing one or more drives drives Metadata newer The metadata on the Media Pack is newer than the System Director metadata. This can than SD happen when you import and use an older version of the file system (typically only with Customer Support assistance).
Missing Disks - The system starts a Storage Manager process for every Media Pack that the Engine can unbound support, whether drives are available or not. When enough drives are found, a Storage Manager creates a Media Pack from those drives. If a Storage Manager cannot find disks it had previously, it reports them as missing.
Network The IP interfaces on the Media Pack have failed or the Media Pack has experienced at least degraded a 10% error rate (usually due to lost packets), indicating a network communication problem (possibly a cable or switch issue).
Although the Media Pack is reporting and detecting the errors, it is usually not the Media Pack itself that is the problem. Each Media Pack has an associated Storage Manager that could be experiencing a problem.
Offline A Media Pack was set offline by the system.
Orphaned A Media Pack has become dissociated from the file system it was bound to. Contact Avid Customer Care.
Recovering The Avid NEXIS system is rebuilding a mirrored Workspace from its mirrors.
Mirrors Rectifying Files The Avid NEXIS system is verifying the status of deleted files and verifying existing blocks on Media Packs. This occurs every time the system restarts and every 10 days thereafter. Each Media Pack staggers its process so that they do not run simultaneously.
Redistributing The Media Pack is involved in a Workspace redistribution operation.
Redistribution The Media Pack experienced an error during a Workspace redistribution operation. See the details available logs for more information.
Server The system is busy and the Media Pack has run out of cache memory. This status is cleared performance when the system catches up to the load.
degraded Stalled A redistribution operation with this Media Pack has stalled.
redistribution Adding Unassigned Media Packs to Storage Groups An unassigned Media Packs has been bound to the file system, but not yet added to a Storage Group. On the Media Packs page in the Management Console, they are shown with the state Spare - Bound.
8 Managing System Components You can add bound Media Packs to an existing Storage Group with other compatible Media Packs (with the and "Storage Group Options" on page 45 for restrictions.
Adding and removing Media Packs redistributes files in the Storage Group across the currently available Media Packs. For more information, see "About Workspace Redistribution" on page 68.
To add Media Packs to a Storage Group:
1. In the navigation sidebar, click Storage, then Storage Groups.
2. Select a Storage Group and click Edit.
3. Select one or more available Media Packs (with a state of Spare - Bound), or click Select to select all
available Media Packs.
4. Click Add to add the selected unassigned Media Packs to the Storage Group.
5. Click Save.
The Media Packs are added to the Storage Group and any necessary redistribution is performed.
> **Note:** After 20 configuration changes, the system recommends that you perform a full redistribution.
Redistribution is not required until 30 configuration changes are recorded, in which case the redistribution occurs automatically. You can suspend and resume the redistribution as needed. See "Suspending Redistribution" on page 70.
About Removing Media Packs from Storage Groups You can remove a Media Pack from a Storage Group:
- Add it to another Storage Group (performance types must match)
- Remove it from the Engine
- Replace it with a larger-capacity Media Pack (see "Adding Unassigned Media Packs to
Storage Groups" on the previous page) You cannot remove a Media Pack from a Storage Group if:
The Storage Group does not have at least as much free space as the capacity of the Media Pack you
- want to remove. (Removing a Media Pack triggers redistribution; see "About Workspace
Redistribution" on page 68).
- The Storage Group will have less than either the used space or the allocated space. To make enough
free space, you can delete files from the current Workspaces, or reduce or delete Workspaces themselves. See "Resizing Workspaces" on page 65 and "Deleting Workspaces" on page 71.
The Media Pack belongs to a Flexible, Mirror-Capable Storage group that currently or previously
- contained a mirrored Workspace, and removing the Media Pack would make the Storage Group non-
mirror-capable. This applies even if there are no more mirrored Workspaces in the Storage Group.
- The Storage Group has only one Media Pack. If no Workspaces exist, you can delete the Storage
Group itself, which returns the Media Pack to the spare state.
> **Note:** In an All-Mirror Storage Group, the system prevents you from removing a Media Pack if doing so would
violate the All-Mirror requirements.
Media Packs removed from the Storage Group are returned to the state of Active - Spare. You can then either unbind them (before physically removing them from the system) or add them to a different Storage Group.
8 Managing System Components Removing a Media Pack during high client usage can reduce performance on your clients, possibly resulting in dropped frames, underruns, and failed captures. To avoid this, remove Media Packs during periods of light client activity, or temporarily suspend distribution and resume it when the system is less busy.
Removing Media Packs from a Storage Group See "About Removing Media Packs from Storage Groups" on the previous page before you proceed.
To remove Media Packs from a Storage Group:
1. In the navigation sidebar, click Storage, then Storage Groups.
2. In the Storage Groups list, double-click the Storage Group that contains the Media Packs you want
to remove, or select it and click Edit.
The Details area (Edit mode) displays all the information for the selected Storage Group.
3. In the Media Packs list, select the Media Packs you want to remove from the Storage Group, or click
Select to select all Media Packs.
4. Click Remove.
5. In the dialog box, click OK.
6. Click Save.
The Media Packs list refreshes and displays the selected Media Packs as Spare. If Workspaces need to be moved (on-premises only), redistribution begins automatically.
Displaying Drive Details You can display detailed information about the drives in a Media Pack, spare drives in the Engine or expansion chassis (if applicable), and the system drives.
To see detailed information about Media Pack drives:
1. In the navigation sidebar, click Storage, then Media Packs.
2. Double-click a Media Pack or select it and click Advanced
3. Click a blue tab to see additional details.
> **Note:** If you replace a failed drive with a larger drive, the actual size is shown in the Capacity field, but the
Media Pack uses only the capacity equal to the size of the original drive. You cannot replace a larger drive with a smaller drive.
To see detailed information about a spare or system drive:
1. In the navigation sidebar, click Storage, then Engines.
2. Double-click an Engine or select it and click Advanced
> **Note:** To see information for drives in an expansion chassis, select the associated Avid NEXIS | F2
Engine.
3. Click the blue Disks tab.
For SSDs (system drives and all drives in Avid NEXIS | E2 SSD Engines), the SSD Health is also displayed, showing a percentage of life left. When the SSD Health drops to 25% (the warning threshold) notification is sent to the administrator (see "Displaying SSD Health" on the next page).
To close the Details area (Edit mode):
- Click Advanced.
8 Managing System Components Displaying SSD Health In all Engines and the System Director Appliance, the system drives are solid-state (SSDs). In Avid NEXIS | E2 SSD and Avid NEXIS | F2 SSD Engines, Media Pack drives are also SSDs.
To display the health status of the SSDs, do either of the following:
On the Engines page, click Advanced, then click the blue Disks tab. SSD Health is a column in the
- Disks table.
- On the Media Packs page, click Advanced, then click the blue Disks tab. SSD Health is a column in the
Disks table.
When an SSD reaches a Warning or Critical threshold the system sends notification to all configured contacts (see "Configuring the Notification Service" on page 37) and the Management Console displays the status.
SSD Health Values SSD health is reported as a percentage of SSD life remaining, starting at 100% (full drive life remaining) and decreasing over time. SSD life can vary, but is expected to be about five years, or at least as long as the life of the Engine. When an SSD reaches the Warning threshold, or even the Critical threshold, you will have enough time to order and receive a replacement.
Life Remaining Percentage Severity Level Action to Take 100-11% None None — SSD is healthy 10% Warning Near end of life. Order a replacement SSD.
5% Critical At end of life. Replace the SSD.
Understanding Disk Status Media Pack drives and system drives can have these status values:
Status Applies To: Description Capacity System The drive is not the appropriate size for the Engine it is in. Replace the drive Insufficient drives only with one of the minimum required size.
Empty System The system requires two blank metadata (system) drives. Insert another drives only blank drive of the same or greater capacity as the other one.
Failed All The drive has failed and must be replaced. You cannot reuse it. See "Identifying the Slot Number for a Failing or Failed Drive" on the next page, and see the Avid NEXIS Setup and Maintenance Guide for instructions on replacing a drive.
- Replace a failed system drive with a drive of the same or greater
capacity.
Within a Media Pack, you can replace a smaller drive with a larger
- one (for example, use a 6TB drive to replace a failed 2TB drive), but
the Media Pack will use only 2TB of space on the drive. You cannot replace a larger drive with a smaller one in a Media Pack.
All Failing The drive is failing. Although there is no way to tell how much time you have before the drive fails, this status alerts you to obtain a replacement drive as soon as possible.
See "Identifying the Slot Number for a Failing or Failed Drive" on the next 8 Managing System Components Status Applies To: Description page, and see the Avid NEXIS Setup and Maintenance Guide for instructions on replacing a drive.
Foreign Media Pack The drive possibly came from a different Engine, or was removed and drives only replaced by a spare. To use it, clear the foreign drive configuration; see "Clearing a Foreign Disk Error" below.
Incompatible Media Pack The drives are not the right type for the Engine:
drives only The Engine is expecting HDD Media Pack drives
- The Engine is expecting SSD Media Pack drives (only in the Avid
- NEXIS | E2 SSD Engine)
Initializing All The Engine is starting up (for example, after a reboot) and performing internal housekeeping. This is normal and non-disruptive.
Invalid mount point System The system drives cannot be accessed. Contact Avid Customer Care.
drives only Missing/Empty All A drive is missing or the slot is empty. To help you identify which drive is missing, the status includes the serial number.
g You can put any drive (Media Pack or system) into any empty slot.
Operational All The drive is functioning normally.
Partition System The drive is partitioned for a different Engine than the one it is in, or some Unsupported drives only partitions are missing or the wrong size. Remove the drive and insert a blank drive or one partitioned correctly for this Engine.
Rebuilding All The data on the drive is being rebuilt from the other drives in the Media Pack, or from the other system drive. This status occurs after you replace a failed drive.
Spare Media Pack The drive is a spare. To see all the drives in an Engine, see "Displaying drives only Drive Details" on page 109.
Unmirrored System The drive is not accessible, leaving the remaining system drive unpaired.
drives only Insert an blank system (metadata) drive. See the Avid NEXIS Setup and Maintenance Guide for information about supported system drive types.
Unsupported All The drive was not purchased from Avid and cannot be used in the Engine.
Identifying the Slot Number for a Failing or Failed Drive When a drive is failing or has failed, its status is shown:
In the System Dashboard
- On the Engines page in the Storage menu. Click Advanced, then click the blue Disks tab. The slot
- number is shown in the disk details table. (An Avid NEXIS | F2 Engine displays the information for the
drives in its associated expansion chassis, if applicable.)
- On the Media Packs page in the Storage menu. Click Advanced, then click the blue Disks tab. The slot
number is shown in the disk details table.
You can also make the drive LEDs blink to help you find it physically in your equipment room. See "Displaying Engine and System Director Appliance Details" on page 113.
Clearing a Foreign Disk Error This section does not apply to Avid NEXIS | Cloud Storage.
8 Managing System Components The Foreign Disk error occurs in the following cases:
- When a drive came from a different Media Pack (usually from a different Engine)
- When the drive has been out of the Engine for longer than five minutes, and replaced by a spare
drive, then reinserted into the same Engine.
(If a drive is removed accidentally, the Media Pack requests its return for five minutes. If it is reinserted within those five minutes, the Media Pack resumes normal operation. After five minutes, if it was replaced by a spare drive and then reinserted, it is marked Foreign. If a spare drive did not replace the removed drive, the removed drive can rejoin the Media Pack at any time.)
> **Note:** You cannot clear the foreign configuration on a system drive. If a system drive is reporting a status of
foreign, contact Avid Customer Care.
If the drive has failed, you cannot reuse the drive even if you clear the configuration.
Clearing the foreign disk configuration deletes all data on the drive, and is a permanent operation. If you are using a drive that came from a different Media Pack, make sure the original Media Pack no longer needs it.
To replace media drives, see the Avid NEXIS Setup and Maintenance Guide.
To clear the Foreign Drive status:
1. In the navigation sidebar, click Storage, then Engines.
> **Note:** For a disk in an expansion chassis, select the associated Avid NEXIS | F2 Engine.
2. Click Advanced, then Disks.
3. Next to the drive, click Clear Foreign Config.
4. In the dialog box, type the words Destroy My Data in the text field and click OK to continue.
5. After the old configuration is cleared, the drive gets assigned to any Media Pack that needs one, or
becomes a spare (if supported in this Engine type).
Unbinding Media Packs from the Avid NEXIS File System Unbinding a Media Pack clears the system metadata from it, removes its bind setting, and (if applicable) returns its capacity to the pool of available capacity in the license. You can then move the Media Pack to a different Engine or shared-storage system or rebind it with a different performance type (bind setting). You can also bind it with a different license type, if your license has multiple tiers and enough capacity. For example, you can initially bind a Media Pack as Flexible mirror capacity, then later unbind it and rebind as All-Mirror capacity.
Before you can unbind the Media Pack, remove it from its current Storage Group (if it belongs to one).
> **Note:** You cannot unbind a Media Pack if it has any drive errors or is missing drives. Replace missing or failed
drives.
Removing a Media Pack from an on-premises Storage Group starts a redistribution of all its data to other Media Packs in the same Storage Group. For more information, see "About Removing Media Packs from Storage Groups" on page 108. When the Media Pack has been removed, its state changes to Spare - Bound.
All the Media Packs you want to unbind must be in the Spare state (not assigned to a Storage Group).
Unbinding a Media Pack when redistribution has not completed will result in permanent data loss!
8 Managing System Components Redistribution can take a long time. Open the Redistribution Monitor tool to track the progress and estimate the time remaining (see "Monitoring Redistributions " on page 126).
To unbind a Media Pack from the Avid NEXIS file system:
1. In the navigation sidebar, click Storage, then Media Packs.
2. Select one or more Media Packs to unbind. Click Select to select all Media Packs.
3. Click Unbind.
4. In the dialog box, click Yes.
The selected Media Pack is removed from the Avid NEXIS file system and its state changes to Unbound.
You can physically remove the media drives from the Engine, or rebind them with a different bind setting.
See "Binding Media Packs to the File System" on page 34.
If you move drives from one Engine to another, they are reported as foreign. To use the drives in the new Engine. clear the Foreign Disk Error on each drive (see "Clearing a Foreign Disk Error" on page 111).
Engines and the System Director Appliance You can set or change the enclosure ID for an Engine and check its status, as indicated by messages on the Management Console. For information about adding or removing Controllers, see the Avid NEXIS Setup and Maintenance Guide.
Only a System Admin can manage Engines.
Adding or Changing an Enclosure ID During initial Engine setup, you can enter an enclosure ID to help you identify a specific chassis in your equipment room. You can add or change the enclosure ID at any time.
(If you added an expansion chassis [Avid NEXIS | F2X] to your configuration, the following procedure is the only way to add an ID.) The Enclosure ID can be any one- or two-digit number from 0-99. The value you enter is also shown on the Control Panel on the Engine or chassis, and is limited to two digits.
If you have several racks of Avid NEXIS hardware, you can number the Engines (and expansion chassis, if applicable) and the System Director Appliances according to the rack they are installed in. For example, you might assign IDs 10-19 for the equipment in rack 1, 20-29 in rack 2, and so on, or any other numbering scheme that makes sense in your environment: floor number, department, or other identifying criteria.
To add or change and Enclosure ID:
1. In the Management Console, click System Setup.
2. Select the appropriate Engine or System Director Appliance, if applicable.
3. Type a number from 0-99 in the Enclosure ID field, then click Save.
4. Click OK to apply the change.
5. Repeat steps 2 through 4 for additional Engines.
Displaying Engine and System Director Appliance Details The Engines page displays the following information. You can also see more details about an Engine than are shown on this page.
Click any column heading to sort the information. Also see "Sorting and Searching" on page 17.
8 Managing System Components Heading Description Name Displays the user-created name of the Engine or System Director Appliance Product Displays the Avid model name Product Part Displays the Avid part number Number Enclosure ID Displays a number (from 00 - 99) assigned to the Engine (see the Avid NEXIS Setup and Maintenance Guide and "Adding or Changing an Enclosure ID " on the previous page). In an equipment room with many Avid NEXIS systems, assigning an Enclosure ID can help you identify a particular Engine. The Enclosure ID is also displayed on the Control Panel on the chassis.
Serial Number Serial number of the Engine or System Director Appliance Status Time Shows the last time the System Director logged the status of the Engine Status Displays changes in the working status due to upgrade installation or failure. See "Understanding Engine, System Director Appliance, and Storage Controller Status" on the next page.
Available MP Lists the number of unbound (available) Media Packs in each Engine Spare MP Lists the number of spare Media Packs in each Engine (the Media Pack is bound but not part of a Storage Group) Active MP Lists the number of active Media Packs in each Engine Type Indicates the function of the Engine, and can be one of these values:
Storage with SD — Storage Engine running the embedded System Director
- SDA — A System Director Appliance (does not provide storage)
- Storage Engine — Storage engine only
- To see detailed information about an Engine:
1. In the navigation sidebar, click Storage, then Engines.
2. Double-click an Engine name or select it and click Advanced.
The following tabs are displayed:
  - Details — (Default) Displays additional information about the Engine, such as the Storage
Controllers and Media Packs physically located in that Engine.
An expansion chassis (Avid NEXIS | F2X) is not listed as a separate Engine; its serial number, enclosure ID (if set), and Media Pack are shown in the Details view for the Avid NEXIS | F2 it is paired with. See the Avid NEXIS Setup and Maintenance Guide for information on adding an expansion chassis to your system.
If your system includes more than one expansion chassis, you must look at the associated Engine to see its details. (Using enclosure IDs can help with identifying a pair; see "Adding or Changing an Enclosure ID " on the previous page.)
  - Hardware — Displays the status of the fans and power supplies in the Engine, and the version
of the system components.
  - Disks — Displays details about the disks in the Engine, such as serial number, slot number,
capacity, which Media Pack they are part of, and firmware version. Also lets you toggle the disk LED on and off to help find it in your equipment room.
To close the Details view:
- Double-click the Engine name or click Advanced.
8 Managing System Components Understanding Engine, System Director Appliance, and Storage Controller Status Engines or Storage Controllers can have one of the following status values that relate to the software installed on them, or to their validity in the configuration. If the field is empty, the Engine or Storage Controller is operating normally.
Status Message Description Installing The Avid NEXIS software is being installed Install failed The software installation failed. Contact Customer Care.
Install waiting The installation is in progress Install needed This status can mean either of the following, but always applies to a multi-Engine configuration:
The System Director is running a different version from the other Engines (version
- mismatch)
The other Engines completed their upgrades before the System Director did, and
- were communicating with the System Director before it had restarted due to its
upgrade. Their version status is accurately reported but fenced themselves off the rest of the system to avoid file system corruption. To resolve this issue, reboot the Engines displaying this status.
Install The Avid NEXIS software kit is downloading from the Avid support site.
downloading Install Phase (1, 2, The software installation is in the specified phase 3) Invalid An unsupported Storage Controller is present in the Engine. Remove it and replace it with a Configuration valid Storage Controller for the Engine type. For more information, see the Avid NEXIS Setup and Maintenance Guide.
Displaying Controller Information The Controllers page displays information about all the Controllers in the shared-storage system. You can also display more details than are shown on this page.
Click any column heading to sort the information. Also see "Sorting and Searching" on page 17.
Heading Description Host Name Displays the name of the Engine or System Director Appliance in which the Controller is installed Status Time The last time the System Director logged the status of the Engine Status Displays changes in the working status due to upgrade installation or failure. See "Understanding Engine, System Director Appliance, and Storage Controller Status" above.
Avid NEXIS Displays the Avid version installed on the Controller Version USM Version Displays a value for the suite of component firmware versions (for more information, see "Displaying System Component Versions" on page 123) Controller Serial number of the Controller Serial Number Engine Serial Serial number of the Engine in which the Controller is installed 8 Managing System Components Heading Description Number Free Memory The amount of available memory on the Controller Total Memory The total amount of memory on the Controller To see detailed information about a Controller:
1. In the navigation sidebar, click Storage, then Controllers.
2. Double-click a Controller name or select it and click Advanced.
The following tabs are displayed:
  - Details — (Default) Displays additional information about the Controller, such as the part
number, slot number and position, and more memory information. Also shows the Media Packs this Controller is managing.
  - Network — Displays the interface addresses and status, including LACP (Link Aggregation
Control Protocol) status, port information, and interface statistics. See "Understanding Controller Network Status" below.
  - Services — Displays the services running on this Controller and their status.
  - System — Displays the operating system version, processor type, number of processors, and
how long the Controller has been running since last reboot. Also display disk space usage information.
  - Tools — Lets you reboot or shut down the entire system.
To close the Details view:
- Double-click the Engine name or click Advanced.
Understanding Controller Network Status The two Data Interface ports on a controller are used to connect the Engine (or System Director Appliance) and one or more switches. If using LACP, both ports on the controller (or controllers) must be connected to one or more switches. A system can have one controller and still use LACP.
The Interconnect Interface is used to connect redundant controllers.
The Management Interface port is typically used only to connect the system to a computer, such as during software installation and initial configuration.
The Network status values have the following meanings:
Status Description up LACP is enabled, port is up, and the network connection is OK down LACP is not enabled, and the port is not in use. This is not an error condition.
degraded LACP is enabled, but a network error exists:
- Make sure LACP is enabled on all the connected switches
- Check the switches and your network
- Check the cables between the ports and the switches
Not Found or The system has no information about the port. This is not an error condition; for example, the no status Management Interface port is not commonly in use during normal system operation. It reports shown no status to the System Director.
8 Managing System Components Upgrading the System When new releases of the Avid NEXIS software are available, you can upgrade the Avid NEXIS clients and system to take advantage of new features and bug fixes.
> **Note:** To upgrade client systems, see the Avid NEXIS Client Manager Installation and User’s Guide.
All the system components (Engines and System Director Appliance, if applicable) are updated at the same time, through one operation.
> **Note:** Starting with Avid NEXIS version 2020.7, you can upgrade an Avid NEXIS | Cloud Storage system from
the Management Console. (Avid NEXIS version 2020.7 must already be installed for this feature to be available.) To upgrade an Avid NEXIS System:
1. On your local computer, download the new software from Avid, using your support account.
Make sure to download the correct file for either an on-premises system or an Avid NEXIS | Cloud Storage system.
2. Unzip the software on your computer.
3. In the navigation sidebar, click System, then System Setup.
4. Click the Install tab.
5. Click Choose File (or Browse on Firefox), and navigate to the location of the software kit contents
that you just unzipped.
6. Select the .bin file.
7. Click Upgrade.
8. In the dialog box, click OK.
The kit is installed on each Engine and the System Director Appliance if present.
After the kit is uploaded and the system prepares to upgrade, the current login session ends, closing the Management Console. When the system reboots, the login screen is shown.
9. Close the browser or tab.
g Closing the browser window or tab clears the cache and forces the browser to load the login screen for the new software version.
10. Open the browser or a new tab and type either the host name (if DNS is configured) or the IP address
of the System Director.
The Management Console login window opens.
> **Note:** The login screen is available before the file system might be ready to support logins. If you log in
before the system is ready, a counter indicates that the system will retry your login up to four times. If the system is still not ready after four tries, it displays the message “System not responding.” Wait a few more minutes and try again.
11. Log back in to the Management Console.
12. Click Dashboard (if not already displayed) and look in the System area to confirm the new version.
Changing the Storage System Name The Storage System name represents the entire shared-storage system.
8 Managing System Components Do not rename a storage system that has Avid NEXIS | Cloudspaces activated and in use. Changing the name will cause you to lose access to your cloud data.
See "Guidelines for Names and Passwords" on page 18 for details on name limits and valid characters.
Renaming the system requires a reboot. To minimize disruption to clients, you can perform this change when clients are not connected and actively using the system.
> **Note:** Change all the non-System Director Engines first, then change the SDA or Engine running the System
Director last.
To change the Storage System Name:
1. In the navigation sidebar, click System, then System Setup.
2. Select any Engine not running the System Director. Click System.
3. Type a new name into the Storage System Name field, then click Save.
4. In the dialog box, click OK.
5. When the system reboots, you can log into the Management Console again.
> **Note:** The login screen is available before the file system might be ready to support logins. When you
log in, if the system is not ready, a counter indicates that the system will retry your login up to four times. If the system is still not ready after four tries, the system displays the message “System not responding.” Wait a few more minutes and try again.
6. Repeat this procedure on all Engines except the SDA or the one running the System Director.
7. Change the Storage System Name on the SDA or the Engine running the System Director. Make sure
this is the last Engine to be changed.
When the last Engine has rebooted, clients can reconnect to the system. Users might have to refresh the host list in the Client Manager to see the new name.
Changing the System IP Address In rare cases you might need to change the IP address of your system, for example if your network changes or you move the equipment to a different network.
Changing the system IP address is a disruptive procedure. Clients must disconnect, and then use the new IP address to reconnect. Schedule this operation during a maintenance window or idle time.
Changing the IP Address When you change the IP address of a shared-storage system, you must also change the IP addresses of all the Controllers in all Engines and the System Director Appliance, if applicable.
> **Note:** The Avid NEXIS system will reboot during this process. Make sure clients are not trying to access
Workspaces.
If the system uses NTP servers, DNS, LDAP, SNMP or SMTP, and those servers’ addresses are also changing, you can change the configuration while changing the Avid NEXIS IP addresses.
If any Interplay | Media Indexer servers or MediaCentral Media Index services are connected to the Avid NEXIS, place them into standby mode until after all the IP addresses are changed and the entire shared-storage system has finished rebooting.
8 Managing System Components Before You Begin Make sure you have the following:
Range of new IP addresses for all the system components
- For Avid NEXIS systems using external servers for services, new IP addresses of these servers if they
- are also changing
To change the system IP addresses:
1. In the navigation sidebar, click System, then System Setup.
2. Select the SDA, if applicable, or any Engine.
3. On the blue System tab, if using DNS, edit the DNS domain, server list and search list, if they are also
changing.
4. Click the blue Interfaces tab.
5. Edit the IP address, netmask and gateway for the Top or Left Controller, depending on the Engine
type.
6. Edit the IP address for the other Controller, if present. (The second Controller inherits the netmask
and gateway values from the other one automatically.)
7. If you are using NTP and the NTP server IP address is also changing, click Date/Time.
8. Edit the NTP server IP addresses.
9. Click Save.
10. In the dialog box, click OK.
11. After the system reboots, open the Management Console and verify that all the Engines and the SDA
are reported.
After you have changed all the IP addresses and the system is back up and running, do the following as applicable.
If Email notification, LDAP, or SNMP is configured and those server IP addresses also changed, make
- sure to update them on the Avid NEXIS system.
Open the Client Manager on all client systems that formerly had access to the Avid NEXIS system and
- make sure they can reconnect to the system. You might have to change the Avid NEXIS system IP
address in the Remote Hosts settings. For more information, see theAvid NEXIS Client Manager Installation and User’s Guide.
Shutting Down the System Under normal working conditions the system can remain running all the time. All FRU components are hot- swappable (drives, controllers, power supplies and fans) so that if a component fails you can replace it while the system remains running.
However there might be cases where you have to cleanly shut down the entire Avid NEXIS system; for example, a site-wide power shutdown, equipment room move, or some other disruptive procedure.
In a multi-Engine system, with or without an SDA, you shut down the storage Engines first (one Controller at a time), then shut down the SDA or Engine running the embedded System Director last (also one Controller at a time).
8 Managing System Components To shut down the entire Avid NEXIS system:
1. Notify all clients to stop using and unmount all Workspaces.
2. In the navigation sidebar, click Storage, then Engines.
3. Identify the Engines used only for storage (on the Engines page, the Type field displays Storage
Engine, not SDA or Storage with SD). Shut these down first.
4. Click Controllers. Identify the Controller(s) in the Engine you want to shut down. (The Controller
names are based on the Engine name, with a suffix of -left, -right, -top, or -bottom, designating their relative slot positions.)
5. Select a Controller and click Tools.
6. In the CONTROLLER SHUTDOWN field, type the Agent administrator password (see the Avid NEXIS
Setup and Maintenance Guide for more information) and click Shutdown.
7. In the dialog box, click OK.
8. If the Engine has a second Controller, shut it down.
9. Shut down the other storage-only Engines, until only the SDA (if applicable) or the Engine running the
System Director remains.
10. On the SDA or Engine running the System Director, if two controllers are present, identify the one
running the System Director service, as follows:
a. In the navigation sidebar, click Storage, then Controllers.
b. Click Advanced.
c. Click the Services tab.
d. Look for services named adminServer and indexServer, as shown in the following figure (these two services are always paired on a Controller):
11. Select the other Controller (the one not running these services) and shut it down.
12. Select the last Controller (running the adminServer and indexServer services) and shut it down.
The entire Avid NEXIS system is now shut down. You lose access to the Management Console for the system.
13. Turn off the switches on all the power supplies in all Engines and the SDA, and unplug the power
cables from the power source.
Restarting the System If you have completely shut down an on-premises Avid NEXIS system, follow this procedure to start it again.
8 Managing System Components To restart an Avid NEXIS system:
- If the power supplies are not plugged in to AC power, connect them and turn on the power supply
switches.
- If the power supplies are connected to AC power, turn off the power supply switches for a few
seconds, then turn them on again.
The system begins its power-on self test (POST) process. After several minutes the fans start running at full speed. No matter which Engine starts first, eventually all the Engines and the SDA (if applicable) or Engine running the System Director communicate with each other and reestablish the shared-storage system. In a few more minutes the system becomes available on the network, and you can open a browser (or a new tab) and log into the Management Console.
9 Monitoring the System 9 Monitoring the System This chapter describes monitoring and logging for the Avid NEXIS shared-storage network and creating snapshots for Avid Customer Care.
> **Note:** Make sure you have the correct permissions to monitor system hardware. See "Groups and Roles at a
Glance" on page 75 for information on user account types and what operations each type can do.
Displaying System Connection Status System connections are all clients and components of the shared-storage system itself that are communicating with the System Director.
> **Note:** Some clients might not be able to connect to the shared-storage network if the combined bandwidth
requirement of connected components equals the system limit for bandwidth use.
To display system connection status:
- To see a quick summary, in the navigation sidebar, click System, then Dashboard.
The Connection Status panel of the Dashboard displays high-level status only: name, type, and number of messages. The Status panel shows the number of currently connected clients.
- To see the connected client details, in the navigation sidebar, click Monitoring, then Connection
Status.
The Connection Status page shows the information described in the following table. Continuous Refresh is enabled automatically so you can see the changes in real time.
Click any column heading to sort the information. Also see "Sorting and Searching" on page 17.
Heading Description Name The name of the component connected to the Avid NEXIS. This can be an external client host name or a process running on the Avid NEXIS system itself, such as the Storage Managers.
ID An internal numeric identifier, assigned when a system first contact the System Director, to represent the connected component OS The operating system running on the connected system (for example, Linux can represent components of the Avid NEXIS system itself) Type The category or principal function of the connected system, such as Client or StorageManager (every Media Pack has an associated Storage Manager) 9 Monitoring the System Heading Description License Indicates whether or not the connection is from an external client and counts towards the maximum number of allowed client connections.
Client
- Connections of type are external and show a value of 1.
StorageManager Admin
- Connections of type or are internal and do not count
towards the limit, and always show 0.
Messages/Second The number of messages per second being sent between the connected system and the Avid NEXIS Last Seen Displays the date and time when the component last sent its status to the System Director.
The System Director removes information about components that have not been seen for a week, unless the component’s bandwidth limit is configured to custom values or the Default Device Bandwidth option in the Preferences dialog box is selected.
Displaying System Component Versions Along with updates to Avid NEXIS software, Avid occasionally makes system component firmware updates available as well. The suite of component firmware versions is identified by its USM (Unified System Management) version.
The USM version refers to a specific set of firmware versions for the underlying system components, such as the BMC, power supplies, and cooling modules.
> **Note:** Avid NEXIS | PRO 20TB systems do not report a USM version due to the Controller type they use.
The Avid NEXIS ReadMe lists the recommended and required USM versions for the various Avid NEXIS versions. USM versions are updated by Avid Customer Care personnel.
To see the USM version of your system, do either of the following:
- On the Engines page, double-click an Engine and then click the Hardware tab. The Hardware Status
table shows the USM version.
- On the Controllers page, double-click a Controller. The Attributes table shows the USM version.
About License Status Messages The system displays the following messages about license status.
g The Management Console displays a message in the title bar when the subscription for a capacity license is close to expiring (stating the number of days remaining) and when it has expired. This message is also shown when running System Monitor View.
9 Monitoring the System License Message Where Shown Explanation NO LICENSE Details table on System (or Engine) has not been licensed the License page Warning! The system is not Dashboard page Capacity license subscription has expired or will soon.
licensed. The system will stop When the license expires, the system allows only two working in <number> days. clients to connect.
The license has expired. System Messages Activate a new license or renew your license as soon as System will stop working section on the possible to gain or restore access to the full system within <number> days. Dashboard page capacity and features.
LICENSE INACTIVE Details table on License has expired. Activate a new one as soon as the License page possible to regain full use of the system. Only the default Administrator can log into the system.
Attention! The license will Dashboard page The license will expire in the stated number of days. The expire in <number> days. message is first shown 60 days before the expiration date.
Attention! The license will System Messages Activate a new license or renew your license as soon as expire within <number> days. section on the possible to retain access to the full system capacity and Dashboard page features.
LICENSE ACTIVE Details table on System is using an active license the License page No adequate capacity license Configuration You are trying to bind a Media Pack that is larger than found for this Media Pack. dialog box on the the capacity allowed in your license.
Media Packs page Check the license you purchased and make sure its capacity is the same as (or more than) the capacity of the Media Packs you want to bind.
You can display details about a system capacity license and any individual Engine’s modular license, as applicable.
Displaying Capacity License Details
> **Note:** To see details about the modular license on a particular Engine, see "Displaying Modular License
Details " on the next page.
To see the status and expiration of a system (capacity) license:
1. Click System, then System Setup.
2. Click the blue License tab.
The Details section displays the following information:
  - Status — Whether a license is activated or not
  - Device ID — A unique string generated by the system
  - Activation ID — A unique string that is specific to the license activated on this system
  - System ID — A unique string generated by Avid that associates this Avid NEXIS system to a
9 Monitoring the System specific license
  - Expiration Time — The date and time at which the license expires. After this date and time, the
entire system, or specific features or storage capacity, will be restricted.
In addition, one or more of the following sections are displayed, depending on your configuration and license:
  - The Capacity section displays the total amount of storage supported by the license, how much
has been bound to the file system, and the remaining space available to bind in different tiers (if applicable).
  - If you have an Avid NEXIS | SDA+, the Avid NEXIS | System Director Appliance section shows the
type of license applied.
  - If your configuration includes Avid NEXIS E-series Engines, the Avid NEXIS | Crossgrade
Subscription section shows the details for the subscription.
The License tab also lets you upgrade a license; for details, see "Updating a Capacity License" on page 29.
To activate a new license, see "Activating the License" on page 25.
Displaying Modular License Details
> **Note:** To see details about the capacity license for the entire shared-storage system, see "Displaying
Capacity License Details " on the previous page.
If you do not know which Engines in a system have a modular license, do the following. If you do, see "Displaying the Details for a Known Engine" below.
Identifying Engines with Modular Licenses To find out which Engines in a system have a modular license:
1. Click Storage, then Media Packs.
2. Look at the Modular License column.
If a Media Pack belongs to an Engine with a modular license, the column displays either Flexible Protection or All Mirror. (If not, the column displays N/A.)
3. Look at the Host Name column.
The Host Name field lists the name of the Controller in the Engine containing the Media Pack. The host name is built from the Engine name, plus the Controller slot position (top, bottom, left, or right).
4. Identify the name of the relevant Engine and continue with the next procedure.
Displaying the Details for a Known Engine To see details about the modular license for an Engine:
1. Click Storage, then Engines.
2. Open Details mode for an Engine with a modular license (double-click the Engine name).
3. In the Attributes pane, look for the IP Address.
4. In a new browser tab or window, log into that IP address with the administrator user name and
the password for this Engine (either the last 8 characters of the Controller serial number, or the password you changed it to during initial setup).
The Management Console opens in Engine Mode.
9 Monitoring the System
5. Click the blue License tab.
The License Details pane displays the license status and other information. For modular licenses, the Expiration Time is set to Perpetual. The Entitlements field indicates this is a modular license.
Monitoring Redistributions You can display detailed information about the progress of redistributions, such as the rate and remaining time, and which Workspaces and Storage Groups are involved.
To display details about redistribution:
- In the navigation sidebar, click Monitoring, then Redistribution.
The Redistribution Monitor displays the overall system redistribution status, including a progress indicator, the redistribution rate, an estimate of the time remaining, the total GB to be moved, and the total GB that have been moved.
The Workspaces list (under the System Information table) shows more detail about the Workspaces involved in the redistribution.
Monitoring Client Reservations You can display the status of client reservations, client system name, and the value of the reservation in MB/sec.
9 Monitoring the System
> **Note:** Client reservations are not set on or by the Avid NEXIS system. Typically, bandwidth reservations are
initiated and configured automatically by Avid applications based on bandwidth requirements, but you can limit the bandwidth available to client systems. In addition, client workstation users can use the Client Manager to obtain a default bandwidth reservation on the Avid NEXIS system. See the Avid NEXIS Client Manager Installation and User’s Guide for information on setting and applying bandwidth reservations.
To display client reservations:
- In the navigation sidebar, click Monitoring, then Reservations.
Click any column heading to sort the information. Also see "Sorting and Searching" on page 17.
The actual bandwidth available to the client is the lowest of the following values:
- The default bandwidth requested by the Client Manager
- The maximum bandwidth assigned by the Avid NEXIS Administrator to the user
- The maximum bandwidth value assigned by the Management Console, either per-device or by the
default bandwidth allocation for auto-created devices The bandwidth limitation of the client device
- Displaying Event History
The Event History page displays the past 5 days (96 hours) of system events. You can download the history as a zip file, and then send the file to Avid Customer Care for analysis.
To open the Status History page:
- In the navigation sidebar, click Logs, then Event History.
The current day’s events are at the top of the list. Click the icons to show or hide events for:
Information
- Upgrades
- Warnings
- Errors
- To see all the events for a specific date:
- Click the date you want to look at.
The System Events panel automatically updates the display with detailed information about the selected day’s recorded events, including the specific time, event type, which Engine reported the event, and a description.
To clear Status History Event flag:
- Click Clear History Status Flag.
The status event history panel indicator is cleared.
> **Note:** This command clears the status event history but does not remove any status event history entries.
To download the status history:
- Click Download.
9 Monitoring the System The status event history is saved to a file (named history.zip). If prompted to open or save the file, click Save. The file is saved to the Downloads directory on the computer running the Management Console. You can then send it to Avid Customer Care.
Displaying System Logs The System Logs page provides a complete view of the system-generated events and provide detailed status information that is especially useful to Avid Customer Care personnel for monitoring system status during prolonged operations.
You can filter the log reports to display messages in a particular category (Information, Warnings, Errors), by date, time, subsystem or host (Storage Controller) that generated the event, or by words in the messages themselves.
To display the system logs:
1. In the navigation sidebar, click Logs, then System Logs.
2. If multiple Engines are present (on-premises only), select the Engine whose logs you want to see. You
can sort the Engines by name.
3. In the Select Log list, select a file to display. Your Avid Customer Care representative can guide you in
selecting the file to view.
The selected log is shown.
4. The log might have several pages of entries. Click the page numbers or the Next Page, Previous Page,
Last Page, First Page icons to display different pages of the log:
Clearing System Logs Clearing the logs empties the log of all event entries and resets the logging process.
To clear logs:
1. Click Logs, then System Logs.
2. From the pick list, select a log file.
3. Click Clear Log.
The event log for the selected category is cleared, and logging is reset to start recording new events.
Working with Media Pack Logs Media Pack logs contain information about the drives in the Media Packs, primarily for Avid Customer Care use. You can filter the information that gets collected in the logs, if requested by Avid Customer Care to help resolve an issue. Otherwise you do not need to set or change any of the filter settings.
You can download a specific log file or all log files as instructed, and then send the file to Avid Customer Care for analysis.
To open the Media Pack Logs page:
- In the navigation sidebar, click Logs, then Media Pack Logs.
Filtering Media Pack Logs You can turn certain log levels on to capture specific information as requested by Avid Customer Care.
9 Monitoring the System To filter the Media Pack logs:
1. In the navigation sidebar, click Logs, then Media Pack Logs.
2. Click the Filters tab.
3. As instructed, select a log level and click the boxes for the requested filters.
Downloading Media Pack Logs You can download a Media Pack log to send to Avid Customer Care for further analysis.
To download a Media Pack log:
1. In the navigation sidebar, click Logs, then Media Pack Logs.
2. Click the Logs tab if not already selected.
3. As instructed, select a log and click Download next to the log file.
Dumping All Media Pack Logs You can dump (download) all the Media Pack logs into a file to send to Avid Customer Care for further analysis.
To dump all Media Pack logs:
1. In the navigation sidebar, click Logs, then Media Pack Logs.
2. Click the Logs tab if not already selected.
3. Click Dump All Logs.
A status message indicates the operation was successful. Avid Customer Care can instruct you how to find and send the dump file.
Deleting All Media Pack Logs You can delete all the Media Pack logs.
To delete all Media Pack logs:
1. In the navigation sidebar, click Logs, then Media Pack Logs.
2. Click the Logs tab if not already selected.
3. Click Delete All Logs.
4. In the dialog box, click OK.
All the Media Pack logs are deleted.
Disabling Media Pack Logging Media Pack logs are enabled by default and continue to accumulate. If requested by Avid Customer Care, you can temporarily disable logging, delete the existing logs, re-enable logging and start a test to isolate a specific problem. Avid Customer Care will guide you in the precise order of operations based on the circumstances.
Media Pack logs are independent of each other. You can enable and disable logging for individual Media Packs or several.
To disable Media Pack logs:
1. In the navigation sidebar, click Logs, then Media Pack Logs.
2. Click the Logs tab if not already selected.
3. Select a Media Pack, then click Disable Logs.
9 Monitoring the System The icon changes to blue, meaning that logging is disabled.
4. Repeat the last step as needed for any other Media Packs.
Creating Avid NEXIS Snapshots and Archives Avid NEXIS Snapshots capture the current state of the system and store that information for you to examine or download later. You can combine several snapshots into an archive.
Avid Customer Care personnel can use this information, coupled with the system logs collected by the Log Aggregator tool (see "Log Aggregator Tool" on page 134), to diagnose and troubleshoot problems.
The following information is collected:
System Director name (host name), storage system name, the date the snapshot was collected, and
- the name of the zip file containing the snapshot. The System Director name is the name of the
Controller running the System Director service.
- The system component information (in .csv and .zip files), including any current warnings or errors
and their details
- System Director status and metadata
- All currently configured system preferences
Creating a Snapshot To create a snapshot:
1. In the navigation sidebar, click System, then Snapshots.
2. Click Take New Snapshot.
3. Type a name for the snapshot and click Create.
The snapshot is created and the details are displayed in the Snapshots window.
To see a snapshot:
- The most recent snapshot is shown automatically. To see a different snapshot, select one from the list.
Downloading a Snapshot To download a snapshot:
1. In the navigation sidebar, click System, then Snapshots.
2. Select the snapshot to download.
3. Click Download.
Depending on your browser, the file might be downloaded automatically to the computer’s Downloads folder, or you are asked to select whether to save the file or open it. Save the file. Avid Customer Care might ask you to send them that file.
To view the contents of the file, unzip or extract the file.
Deleting One or All Snapshots To delete a snapshot:
1. Click Delete next to the snapshot you want to delete.
2. In the dialog box, click OK.
The selected snapshot is deleted.
9 Monitoring the System To delete all snapshots:
1. Click Delete All (next to the Take New Snapshot icon).
2. In the dialog box, click OK.
All snapshots are deleted.
Managing Snapshot Archives When you create a snapshot, the Avid NEXIS Snapshots tool creates a folder which includes a compressed file containing all the collected information. You can combine all the system snapshots into an archive to keep track of the system status—for example, you can archive snapshots weekly or monthly. The Snapshot tool compresses archives in a ZIP file (archivename.zip).
The compressed archive uses the same file name format as the snapshot folder.
> **Note:** If no snapshots exist, you cannot create an archive.
You can download the archive in compressed form as a ZIP file by clicking Download.
Creating a Snapshot Archive To create a snapshot archive:
1. In the navigation sidebar, click System, then Snapshots.
2. On the Snapshots page, click Archives.
3. Click Take New Archive.Type a name for the archive and click Create.
4. Click OK to confirm building a new archive from all current snapshots.
The archive is created and listed in the Archives list box. After you create an archive, the snapshots are no longer available to view on the Snapshots screen.
Deleting One or All Snapshot Archives To delete a snapshot archive:
1. Click Delete next to the archive you want to delete.
2. In the dialog box, click OK.
The selected archive is deleted.
To delete all archives:
1. Click Delete All (next to the Take New Archive icon).
2. In the dialog box, click OK.
All archives are deleted.
10 Avid NEXIS Toolbox 10 Avid NEXIS Toolbox The Avid NEXIS Toolbox is a collection of tools any System Admin can use to monitor and perform diagnostic operations on all your Avid NEXIS hardware. The Avid NEXIS Toolbox is included in the Avid NEXIS software kit, but is not installed automatically. You can install it from the Management Console Installers link.
The Avid NEXIS Toolbox includes the following tools:
- Connection Analyzer Tool — Check the connection status of Media Packs
- Log Aggregator Tool — Collect event logs and system statistics
- Disk Analyzer Tool — Run disk performance tests
- Media Pack Parameters Tool — Collect Media Pack logs for Customer Care
- Media Pack Log Viewer — Display Media Pack events (mainly for Customer Care)
> **Note:** For information about client tools (Avid NEXIS Log Utility and Avid NEXIS PathDiag), see the Avid NEXIS
Client Manager Installation and User’s Guide.
Installing the Avid NEXIS Toolbox To install the Toolbox:
1. In the navigation sidebar, click System, then Installers.
2. Click the Toolbox file appropriate for your operating system. This downloads the file to your
computer .
3. Install the file.
Opening the Avid NEXIS Toolbox Make sure the Avid NEXIS Toolbox is installed.
To open the Toolbox:
1. On Windows computers select Start, then Avid, then Toolbox, then Avid NEXIS Toolbox.
2. If any site security warnings open, click Yes to accept the certificate. If you are not sure about the
security requirements of your shared-storage network, see your network administrator.
3. In the Login screen, type the host name or IP address of your System Director (this might be filled in
for you), your administrator user name and password, then click OK.
10 Avid NEXIS Toolbox The Avid NEXIS Toolbox opens.
Connection Analyzer Tool The Connection Analyzer provides a quick look at the connection status of all Media Packs in the shared- storage network.
To open the Connection Analyzer and test the connection status of Media Packs:
- In the Avid NEXIS Toolbox, click Connection Analyzer in the left panel.
The Connection Analyzer window opens and checks the connection status of all Media Packs in the network. The tool displays results in a color-coded grid.
Icon Label Status Session Active Source Media Pack has a session with the target Media Pack Session Failed Source Media Pack does not have a session with the target Media Pack No Connection Target Media Pack is not communicating with the System Director Storage Server Microserver failure — Failure in the request to the Media Pack for session Not Running information — for example, a failed request resulting from the Media Pack not 10 Avid NEXIS Toolbox Icon Label Status running or the Media Pack not servicing the request before it timed out System Not Communication failure — Unable to determine status — for example, there is a Responding network problem between the Connection Analyzer tool and the Media Pack Place your pointer over a block in the Connection States column to display a tooltip with details about the Media Pack. If there are more Media Packs than can be displayed in the dialog box, use the scroll bars to see a specific connection.
To update the status of Media Packs:
1. Click Start to update the status of Media Packs without reloading the entire list from the
System Director.
2. (Optional) To stop the status update operation, do the following:
a. Click Stop.
b. In the dialog box, click Yes.
The update process stops and the main display returns to the previous result.
Log Aggregator Tool The Log Aggregator tool, included in the Avid NEXIS Toolbox, allows you to collect a full set of the event logs and system statistics of a network, including installation logs, active Media Packs, and the System Director.
Run the Log Aggregator from a system with network access to the entire shared-storage network.
Otherwise, the tool cannot collect logs for all systems connected to the network.
Do not use the Log Aggregator unless instructed to do so by Avid Customer Care. Improper use could result in system downtime or degraded performance.
The Log Aggregator lists all components of the shared-storage network in a tree view. You can see events:
For all components in the shared-storage network by selecting all active Avid NEXIS systems in the
- Selection window (the highest level in the tree view).
- For any subset of components by selecting one or more entries in the Selection window (at a level
lower than the Avid NEXIS Systems in the tree view).
You can select which information — from the network, the System Director software, and Media Packs — you want to collect in the log reports. This provides you with a system record that you can use to see error and status messages. The logs provide detailed status information that is especially useful to Avid Customer Care personnel for monitoring system status during prolonged operations.
10 Avid NEXIS Toolbox Using the Log Aggregator Tool To use the Log Aggregator tool:
1. In the Avid NEXIS Toolbox, click Log Aggregator in the left panel.
The Log Aggregator window opens.
2. In the Selection window, do one of the following:
  - Select all active Avid NEXIS systems to see events from all components in the shared-storage
network.
  - Select one or more components to see events from specific System Directors, Engines, Media
Packs, and clients attached to the network.
3. Click Configure.
The Aggregation Options dialog box opens.
4. Select the types of data you want collected in the event logs and the archive options, then click OK.
5. (Optional) In the Output Directory text section, click Browse to navigate to a directory where you
C:\Users\username.
want the logs to be saved, if different from
6. Click Start.
The progress bar indicates the status of the log aggregation. When complete, the Log Aggregator displays a Success icon (green) or a Fail icon (red) for each system and component logged.
7. To cancel the log aggregation process, click Stop.
Displaying Aggregate Logs The Log Aggregator saves individual logs in a log directory called LogAggregator_date-time at the location indicated in the Output Directory section in the Log Aggregator. Subdirectories include separate logs for each component in the network for which you created logs. The Log Aggregator also creates a compressed file containing all logs in the top-level folder (aggregator_results.zip). You can forward this compressed file to your Avid Customer Care representative if requested.
To see saved logs:
1. Navigate to the directory where the Log Aggregator saved the collected logs.
2. Double-click the file name of the log you want to see.
10 Avid NEXIS Toolbox Disk Analyzer Tool The Disk Analyzer runs the following basic disk performance tests on your Media Packs, which you can run in either Sequential or in Random access mode:
Read test
- Write test
- Read/Write test
- Erase test
- You can also use the Disk Analyzer to collect statistics on the status of Media Packs and network use and
redistribution actions, including the statistics generated by Self-Monitoring, Analysis, and Reporting Technology (S.M.A.R.T.) and by local Media Pack processes.
> **Note:** S.M.A.R.T. data is also available through the Log Aggregator tool.
You can run the Disk Analyzer on more than one Media Pack at a time, but this might degrade performance on the shared-storage network.
Do not run the Disk Analyzer unless instructed to do so by Avid Customer Care, and only during a maintenance window.
Running Tests with the Disk Analyzer Tool To open the Disk Analyzer tool and run tests:
1. In the Avid NEXIS Toolbox, click Disk Analyzer in the left panel.
The Disk Analyzer window opens.
2. In the Selection window, do one of the following:
  - Select the System Director to test all Media Packs in the system.
  - Select one or more Engines to test all the Media Packs in those Engines.
  - Expand an Engine, and select one or more Media Packs to test specific components in the
network.
3. In the Action list, choose from the following:
10 Avid NEXIS Toolbox
  - Execute disk tests (default)
  - Collect disk statistics (can degrade system performance)
  - Collect network statistics
  - Collect redistribution statistics
4. Click Start.
If you selected Execute disk tests, the Disk Test Options dialog box opens. Configure the appropriate options for the test you want to run:
  - Test Type: Select the type of test to run
  - Access Mode: Choose either sequential or random access
  - Duration: Enter how long you want the test to run, in either minutes or number of passes
  - Refresh Rate: Move the slider bar to select how often the test will refresh
  - Reattach to existing test: By default, starting a new test stops any currently running tests and
deletes the results. Select this option to continue any current tests and keep the results.
5. Click OK to close the Disk Test Options dialog box and return to the Disk Analyzer.
Results of the test display in the Results panel.
To stop the test at any time, click Stop.
Updating the Disk Analyzer Tool Display To update the display:
- Click Refresh System List.
Saving Disk Analyzer Test Results You can save the results of the Disk Analyzer tests to your local system. The test results are saved in comma separated value (CSV) format.
To save the results of the Disk Analyzer tests:
1. Click Save Results.
The Save Results window opens.
2. Browse to the location on your local system where you want to save the test results and click Save.
The test results are saved to the specified location.
Media Pack Parameters Tool The Media Pack Parameters tool, included in the Avid NEXIS Toolbox, allows you to set and retrieve Media Pack logging and redistribution flags. This status information is useful to Avid Customer Care personnel for monitoring system status during prolonged operations.
> **Note:** Run the Media Pack Parameters tool from a system with network access to the entire shared-storage
network. Otherwise, the tool cannot collect logs for all systems connected to the network.
The Media Pack Parameters tool lists all components of the shared-storage network in a tree view. You can see events for:
All components in the shared-storage network — Select all active Avid NEXIS systems in the Selection
- window (the highest level in the tree view).
Any subset of components — Select one or more entries in the Selection window (at a level lower than
- the Avid NEXIS Systems in the tree view).
10 Avid NEXIS Toolbox Do not use the Media Pack Parameters tool unless instructed to do so by Avid Customer Care.
Improper use could result in system downtime or degraded performance.
To use the Media Pack Parameters tool:
1. In the Avid NEXIS Toolbox, click Media Pack Parameters in the left panel.
The Media Pack Parameters window opens.
2. In the Selection window, do one of the following:
  - Select all System Directors to see events from all components in the shared-storage network.
  - Expand a System Director name to display its components, then select one or more Engines or
Media Packs.
3. Click Configure .
The Media Pack Parameters dialog box opens.
4. Do one of the following:
  - Click the No filtering box to select all the possible parameters.
  - Click one or more specific filter boxes to select those specific parameters.
Do not change the Log Level or Throttle setting unless instructed to do so by Avid Customer Care. Improper use could result in system downtime or degraded performance.
5. Click OK to close the Media Pack Parameters dialog box.
6. Click Start.
The Media Pack displays the retrieved information.
Media Pack Log Viewer The Media Pack Log Viewer is a utility that displays event information about Media Packs. You cannot save the information displayed in the Log Viewer, but you can copy it to a word processing application, such as Notepad. You can also save event logs displayed in the Logging tab. The information is used primarily by Avid Customer Care personnel to help analyze problems with Media Packs.
10 Avid NEXIS Toolbox To use the Media Pack Log Viewer:
1. In the Avid NEXIS Toolbox, click Media Pack Log Viewer.
The Log Viewer opens.
> **Note:** If the Avid NEXIS system has no Media Pack event logs, nothing is shown.
2. Expand the list of Engines, then select a Media Pack. (The Log Viewer displays information for only
one Media Pack at a time.) The panel on the right displays the logs for the selected Media Pack.
3. Do one or more of the following:
  - Pause the log (temporarily stops monitoring Media Pack events)
  - Clear the log (clears all event data from the Console View)
  - Resync the log (restore any previously cleared data to the Console View)
  - Disable or enable automatic scrolling of the log data
  - Change the refresh rate (default is every 5 seconds)
4. Optionally, select another Media Pack to view its logs.
5. Close the Toolbox when done. (Optional; you can leave the Toolbox utility open with no effect on the
system or performance.) 11 Data Migration Utility 11 Data Migration Utility The Data Migration Utility (DMU) is included with the Avid NEXIS software kit for copying data from one on- premises Avid storage system to another, such as:
Between two Avid NEXIS shared-storage systems
- From an Avid ISIS system to an Avid NEXIS system
> **Note:** The Data Migration Utility does not support transfers into or out of Avid NEXIS | Cloudspaces Storage
Groups or Avid NEXIS | Cloud Storage systems.
DMU copies all the data from selected Workspaces on a source system to new or existing Workspaces with matching names in a Storage Group on the destination system. The source and destination Workspace names must be the same. If no Workspace with the same name exists on the destination system, DMU creates it. If a Workspace with the same name exists, DMU copies files to it, based on the settings you select for that transfer.
Prerequisites for DMU Before you can use DMU:
1. On your Windows or macOS client, update or install the appropriate Avid NEXIS client software
version (see the Avid NEXIS Client Manager Installation and User’s Guide).
2. Connect your shared storage network cables:
  - Windows client — To the network adapter on your Windows client
  - macOS client — To the built-in Ethernet port on your Mac client
3. Install the Avid Data Migration software; see "Installing the Data Migration Utility" below.
4. Log into the Management Console on the destination shared-storage system and make sure at least
one Storage Group exists.
Installing the Data Migration Utility To install the Data Migration Utility (Windows):
\AvidNEXISUtilities\Data Migration Utility
1. Browse to the folder and double-click the
file named AvidNEXISDataMigrationUtility_Win64.exe.
2. Install the utility in the following location: \Program Files\Avid\Data Migration Utility
To install the Data Migration Utility (macOS):
1. Browse to the\AvidNEXISUtilities\Data Migration Utility folder and double-click the file
named AvidNEXISDataMigrationUtility_MacOSX.dmg.
2. Install the utility in the following location: /Applications/Avid/Data Migration Utility
Connecting to the Source and Target Systems To use the Data Migration Utility, you must connect to the source and destination shared-storage systems as Administrator in the Client Manager to allow DMU to detect both systems.
To prepare for the transfer:
1. Log into the Client Manager and connect to the source and destination systems as the Administrator
for each system.
2. Start the Data Migration Utility as follows for your client operating system:
11 Data Migration Utility
  - [Windows] Click Start, Programs, Avid, Data Migration Utility, and select Data Migration
Utility.
  - [macOS] Click Go, Applications, AvidNEXIS Folder, Data Migration Utility.
3. The System Login Dialog box opens and displays the shared-storage systems you are connected to in
the Client Manager and populates the Source and Destination list boxes.
4. Do the following:
a. In the Source field, select the appropriate source system and type the administrator password.
b. Click Connect or press Enter.
c. In the Destination field, select the appropriate destination system and type the Administrator password.
d. Click Connect or press Enter.
5. Click the green check mark to log in or the red X to close the utility.
Data Migration Window The following illustration describes the sections of the Data Migration Utility window.
11 Data Migration Utility Description Functionality Data Migration Lets you:
toolbar Disconnect (close) the current DMU session
- Show or hide the Select Workspaces and Verify and Copy Data panels
- Show or hide the Transfer Queue panel
- Configure transfer preferences
- Get help (link to Avid NEXIS documentation Knowledge Base page)
- Selection panel Lets you select the Workspaces to be copied and configure the properties of the Workspace to
be created.
Storage Group Lists the Workspaces being migrated, total amount of data to be copied, and estimated panel amount of transfer time. Lists the name of the destination Storage Group and whether there is enough unallocated space in the Storage Group for the selected Workspaces to be copied.
Workspace Lists the Workspace names, their destination Storage Group, amount of data and estimated panel amount of time to copy each Workspace, and position of the Workspace in the transfer queue.
Start Migration Starts the migration after you select the Workspaces to copy and Storage Group destination button g Button is active only if the destination Storage Group has enough available space for the transfer.
Transfer Queue Displays the transfer progress, lets you pause or cancel the transfer and view logs of the panel transferred and failed files.
Sizing sliders Lets you enlarge or reduce the display area for the Source, Destination, or Transfer Queue.
Data Migration Buttons The following figure and table describe the Data Migration Utility buttons. Hold the cursor over a button to get a tool tip on its function.
11 Data Migration Utility Button Description Disconnect this Disconnects from both shared-storage systems session Hide Migration Shows or hides the “Select Workspaces” and “Verify and Copy Data” panels.
Selection Panels The Select Workspaces panel lists all the Workspaces and Allocation Groups or Storage Groups in both the source and destination systems.
Hide Transfer Shows or hides the Transfer Queue panel.
Panel The Transfer Queue shows the data migration logs, including the files that were successfully transferred and files that failed the transfer (if any).
Display Transfer Opens the Transfer Preferences dialog box. See "Transfer Preferences" on page 145.
Preferences Display Help Opens the Client Manager Help Select all Selects all the listed Workspaces Workspaces Deselect all Deselects all selected Workspaces Workspaces Refresh source Deselects all Workspaces and clears the information in all DMU panels.
and destination data Compare source Compares and calculates the differences between the source and destination Workspaces and destination since the last migration. Displays the number of new files in the New Files column in the Select Workspaces panel. Scroll right to see the column.
11 Data Migration Utility Button Description Start migration Starts the data copy operation. Button is disabled if the amount of data in the source is greater than destination capacity.
Clear finished Clears the Transfer Queue panel of Completed, Failed and Canceled transfers. This button transfers does not clear Active, Pending and Paused transfers.
Pause or resume Select an in-process transfer to pause it. Click again to resume.
selected transfers Cancel selected Select an in-process transfer to cancel it.
transfers Show transfer Opens a text editor (such as Notepad on Windows clients) and displays the activity from the log file selected transfer Migration Options The source and destination systems might support different protection options. Depending on what the destination Avid NEXIS system supports, you can select from several options when migrating Workspaces.
Engine Protection Mode If the destination Avid NEXIS shared-storage system supports Media Mirroring (also called Engine Protection), you can migrate ISIS or Avid NEXIS Workspaces into a Workspace with Engine protection (mirroring) configured. This protects the migrated Workspaces from data loss if an entire Engine fails, because the Workspace data is mirrored onto at least one other Engine.
Media Pack Protection Mode Avid NEXIS shared-storage systems support Media Pack protection, which protects the Workspaces from the failure of one or more drives in a Media Pack. See "Workspace Protection Methods" on page 53 for more information. When selecting the Workspaces to migrate, you can apply any Workspace protection method supported by the destination Storage Group.
Data Migration Considerations for Teams If the destination system uses Teams, you can migrate a Workspace to a Team. Before the migration, you or a Team Admin must create the Team Workspace on the destination system, with the same name as the source Workspace. (If the destination system has no Workspace with the same name, a new Workspace is created but will not be in the Team’s quota, and will not be visible to the Team.) For Teams with a Workspace prefix policy in effect, rename the source Workspace to match the target (add the Team prefix to the source Workspace name).
Any System Administrator or the Team Admin can create the target Team Workspace ahead of time. After the migration, the Team Admin sees the Workspace in their list, and can set user and group access and make other changes.
> **Note:** If the source Workspace content changes and you want to migrate the differences, the source and
destination Workspace names must remain or be made identical.
Default Migration Options for ISIS Workspaces ISIS Workspaces with the following protections are migrated to Avid NEXIS Workspaces that most closely match those protections, as follows:
11 Data Migration Utility ISIS Option Default Avid NEXIS Option ISIS 7x00 Mirrored Two Disk and Media Mirroring (if supported) ISIS 5x00 HW RAID-5 Two Disk ISIS 2x00 SW RAID-6 Two Disk Differential Migration The Data Migration Utility lets you migrate a Workspace over time while still using it on the source system (called differential migration).
You can configure DMU to compare the Workspaces on the source and destination systems and identify all files that have changed, been added, or deleted, and make the destination Workspace match the source every time.
Initially, the source and destination Workspaces are the same size, but the unit of measure is converted from MiB and TiB on ISIS to MB and TB on Avid NEXIS. With differential migration, as the source Workspace grows or shrinks, the destination Workspace size is adjusted to match.
Transfer Preferences You can set the following transfer preference options, which control how and which files will be migrated.
You set these options for each transfer, as a step in the overall migration process (see "Running the Data Migration Utility" on the next page).
Transfer Description and Use Cases Preference Option Preserve file and When selected, keeps the same time and date information on the files in the destination directory Workspace as exist on the source Workspace. Useful if the source and destination timestamps shared-storage systems have different date and time information.
If unselected the current date is used.
Overwrite existing Copies files even if they already exist (from a prior migration) on the destination files Workspace. This makes sure that the data in the destination always matches the source, even if the file in the destination has been modified since the last migration.
If Workspaces or folders already exist, files are added to those existing Workspaces and folders.
Select this option to use one or both of the next two options.
Overwrite files even Requires selection of ‘Overwrite existing files’ option if the timestamps Copies files regardless of timestamp matching.
are the same 11 Data Migration Utility Transfer Description and Use Cases Preference Option Overwrite read-only Requires selection of ‘Overwrite existing files’ option files Without selecting this option, read-only files are silently ignored.
Forcibly updates (or deletes) files with read-only permission. This saves you the step of manually checking and updating permissions on the destination files.
Delete files that do Compares the files in the source and destination Workspaces, and deletes files in the not exist on source destination that no longer exist in the source. Also deletes files in the destination that are (make Workspaces not found in the source. This option makes the two Workspaces match exactly.
match) If you think some files have read-only permission, also select the Overwrite read-only files option to forcibly delete them.
Running the Data Migration Utility You can run DMU iteratively, while continuing to use Workspaces on the source system, until all the data is migrated.
DMU automatically creates Workspaces on the Avid NEXIS system with the same names as the source Workspaces. A progress bar in the Transfer Queue panel displays the status of the migrations.
If the destination Avid NEXIS Storage Group does not have enough space, the Data Migration button does not become active.
> **Note:** Do not run multiple instances of the Data Migration Utility on the same client. You can run DMU on
multiple clients to migrate several Workspaces from the same source system to the same destination system to take advantage of the bandwidth of multiple clients.
You can pause and resume the migration at any time. If you cancel the migration, any files already copied to the Avid NEXIS are usable. The next time you migrate that source Workspace, open the Transfer Preferences dialog and click the options to overwrite existing files even if they have the same timestamp.
This makes sure the full file is copied in the next migration.
You can change the client type (resolution) at any time with no reboot required. To prevent DMU operations from interfering with higher priority real-time operations, open the Client Manager and set the Client type for the system running DMU to Medium Resolution before starting migrations. See the Avid NEXIS Client Manager Installation and User’s Guide for more information.
When you are not using DMU, change the client type back to the appropriate resolution to support high bandwidth real-time operations.
> **Note:** You do not need to mount Workspaces to migrate them.
To copy data:
1. Open the Data Migration Utility. (See "Connecting to the Source and Target Systems" on page 140.)
2. Select one or more Workspaces on the source system in the Select Workspaces list.
3. Select the destination Storage Group on the Avid NEXIS. If only one Storage Group is available, it is
selected automatically.
> **Note:** The destination Storage Group must exist on Avid NEXIS before you start the Data Migration
Utility.
11 Data Migration Utility
4. Click Display Transfer Preferences and select from the options (see "Transfer Preferences" on
page 145).
5. Click Apply Changes to save and apply the preference options.
6. Click Start Migration to begin migration.
This button is disabled if there is not enough space in the destination Storage Group or you have not selected the required parameters. If the destination Storage Group does not have enough space, the Verify and Copy Data panel displays “Fail” in the Capacity column.
If the connection is lost, the disconnection event displays in the Transfer Log.
Status bars show progress in Transfer Queue.
7. (Optional) Check the transfer result logs.
To pause a transfer:
- Select one or more transfers in the queue and click Pause.
To resume a transfer:
- Select one or more transfers in the queue and click Resume.
To cancel a transfer:
- Select one or more transfers in the queue and click Cancel.
If no transfers are selected, this button is disabled.
To view the files that have been added or deleted in the source since the last migration:
1. Select the Workspace.
2. Click New File Refresh.
The New Files column lists the number of new files in the selected Workspace that have not yet been migrated.
11 Data Migration Utility Viewing and Saving the Transfer Queue and Logs The Data Migration Utility keeps a log of all the activity from the current session, including files transferred and files that failed to transfer. You can view the log in the Transfer Queue section of the Data Migration Utility window. The log file is automatically deleted and a new one is started every time you open the Data Migration Utility. Before exiting DMU, you can save a copy of the log.
> **Note:** The Data Migration Utility clears the log when you exit the application.
To view data in the Transfer Queue:
1. Open the Data Migration Utility. (See "Connecting to the Source and Target Systems" on page 140.)
2. If the Transfer Queue panel is not displayed, click the Show Transfer Queue button to display the
panel.
The Transfer Queue panel is the bottom section of the Data Migration Utility window. You can sort the list in the window by clicking the headings at the top of the Transfer Queue panel. Click the blue arrow to sort the Workspace field in ascending or descending order.
To save a copy of the Data Migration Utility log:
1. Click the Transfer Log file button.
2. The Log file opens in a text editor.
3. In the editor, click File, then Save As, and navigate to the location where you want to save the log.
4. Type a name for the file and save it.
To clear transferred file data in the Transfer Queue panel:
- Click Clear.
This clears any finished transfers (those that have been canceled, failed, or completed). Any pending or paused transfers remain in the queue.
Appendix — Managing Folder Level Permissions Appendix — Managing Folder Level Permissions While the Avid NEXIS Management Console lets you manage permissions on Workspaces, in some cases you might want to apply finer-grained permissions on specific folders within a Workspace. Although you cannot see folders in the Management Console, you can use a set of REST APIs (application programming interfaces) to manage permissions on folders.
> **Note:** Make sure you have the correct permissions to use the APIs. See "Groups and Roles at a Glance" on
page 75 for information on user account types and what operations each type can do.
> **Note:** This section does not apply to Avid NEXIS | Cloud Storage.
The Folder-Level Permissions APIs are available for download from Avid NEXIS | Management API Documentation.
API requests are available over HTTPS, and consist of the following:
Type API Call Function login POST Logs you into an Avid NEXIS system. Returns an authentication token that you supply to the other API calls to perform folder-level permission operations.
logout POST Logs you out of the Avid NEXIS system and invalidates the authentication token.
fs/node/access POST Gets the current permissions on a folder within a Workspace through the full path to the folder (Workspace/folder/[...]) PUT fs/node/access Sets permissions for users or group to a folder within a Workspace (Workspace/folder/[...]) through the full path to the folder PUT fs/node/removeacl Removes all custom permissions on a folder within a Workspace through the full path to the folder (Workspace/folder/[...]).
Afterward, the permissions of the parent folder or Workspace apply.
POST fs/node/aclnodes Lists all folders in a Workspace that have custom permissions set Requests must include the content-type application/json in the header, and all request bodies must be provided in JSON format.
The APIs for folder-level permissions generate access control lists (ACLs) on the folders and subfolders within a Workspace, and apply hierarchically. Permissions applied to the Workspace apply to all folders and subfolders within it, unless countermanded by a folder-specific ACL.
General API Usage Information This section describes the requirements for using the folder-level permissions APIs.
- The prefix is nxapi. For example: https://10.10.10.10/nxapi/login
- APIs require a session token to be added to any request header. To retrieve a token, log in with NEXIS
administrator credentials APIs are available over HTTPS
- Include content-type: application/json set in the request header
Appendix — Managing Folder Level Permissions Include the session token: [session token string] in the request header for all requests except login.
- The token is provided after successfully logging in.
- Provide request Body (if applicable) in JSON format
Return Codes and Values Each API returns two codes: HTTP and application code.
HTTP status code is provided via response object status.
- HTTP status code less than 400 indicates success. Values over 400 indicate an error. For details, see
- https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
- Application code is provided in response body code attribute
- Application codes follow Avid API guidelines and contain a prefix and a code; for example, 110000 or
100069:
  - The first two digits describe the component responsible for this code generation
  - The last four digits describe the result code for the current request
- When responding to batch API requests (for example, PUT fs/node/access), the code attribute is
provided as an array, which can hold one or more errors encountered during the request execution.
The literal description for each error is added to the message attribute.
> **Note:** The meaning of the application code is also reflected literally in the response body message attribute.
Customizing Folder Permissions Avid NEXIS allows or restricts access for users and groups to entire Workspaces, not the files within them. To allow access to specific files in a Workspace to some users or groups but not others, you can use APIs to manage permissions for specific users or groups.
> **Note:** Users and groups must have at least read access to a Workspace for folder-level permissions to be
effective.
The following examples describe different scenarios.
Disabling Access to Files for a Specific User Group Consider a Workspace named WorkingTitle containing files for upcoming films. At the Workspace level, members of the EditorsMovie1 and EditorsMovie2 groups have read-write permission to the whole Workspace. But only the editors working on a specific movie need read-write access to that folder. Using the APIs, you can disable read-write to Movie1 for the editors of Movie2, and vice versa.
The following example shows how to set customer permissions for the group EditorsMovie1 to None for Movie2 using the APIs. The example code shown is the cURL code from the API call.
1. Connect to the Avid NEXIS:
curl --location --request POST 'https://<AvidNEXIS_IP_address>/nxapi/login' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "user": "administrator", "pass":"<password>" }'
2. Using the token from the login call, display the current permissions on the folder Movie2 in the
Workspace named WorkingTitle:
Appendix — Managing Folder Level Permissions curl --location --request POST 'https://<AvidNEXIS_IP_address>/nxap- i/fs/node/access' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "fullpath":"WorkingTitle/Movie2" }' { "status": "success", "code": 110000, "message": "", "inherited": false, "accesslist": [ { "accesstype": "read", "principalname": "Guest", "principaltype": "group" }, { "accesstype": "read", "principalname": "Legal", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "producers", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "EditorsMovie1", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "EditorsMovie2", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "Administrator", "principaltype": "user" } ] }
> **Note:** Note that the group EditorsMovie1 has full read/write access to that folder.
3. Use the API to change the permission for the group EditorsMovie1 to None for this folder:
curl --location --request PUT 'https://<AvidNEXIS_IP_address>/ \ nxapi/fs/node/access' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ Appendix — Managing Folder Level Permissions "fullpath":"WorkingTitle/Movie2", "accesslist": [ { "accesstype": "none", "principalname": "EditorsMovie1", "principaltype": "group" } ] }'
4. Recheck the permissions for the folder Movie2 and confirm the group EditorsMovie1 no longer has
access (the group is no longer shown in the list):
{ "status": "success", "code": 110000, "message": "", "inherited": false, "accesslist": [ { "accesstype": "read", "principalname": "Guest", "principaltype": "group" }, { "accesstype": "read", "principalname": "Legal", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "producers", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "EditorsMovie2", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "Administrator", "principaltype": "user" } ] }
5. You can recheck the access permissions for the Workspace and see that the group EditorsMovie1 still
has access to the other folders in the Workspace named WorkingTitle:
curl --location --request POST 'https://<AvidNEXIS_IP_address>/ \ nxapi/fs/node/access' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "fullpath":"WorkingTitle" Appendix — Managing Folder Level Permissions }' { "status": "success", "code": 110000, "message": "", "inherited": false, "accesslist": [ { "accesstype": "read", "principalname": "Guest", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "EditorsMovie1", "principaltype": "group" }, { "accesstype": "read", "principalname": "Legal", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "producers", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "EditorsMovie2", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "Administrator", "principaltype": "user" } ] } Enabling Read-Write Access to Files in a Read-Only Workspace Now consider a Workspace called ThatSitCom containing the “gold” files for a season’s worth of shows, with a folder for each episode. Since these are masters for a finished season, at the Workspace level all users and groups have either read-only permission or no access.
Appendix — Managing Folder Level Permissions However, the producers of a particular episode might need read-write access to the episode they worked on. Using APIs, the Workspace can remain read-only, and you can keep all the files related to that show or season together in one Workspace, but the appropriate producers can have read-write access to the folder of interest to them inside it. You can change the permissions for individual producers in the Producers group.
For example, the members of the Producers group on the Avid NEXIS system are Kristen, Leslie, and Steve:
If Kristen is the producer for Season 1, and Leslie is the producer for Season 2, you can use APIs to grant Kristen read-write access to the Season 1 folder, and grant Leslie read-write access to Season 2.
Appendix — Managing Folder Level Permissions
1. Connect to the Avid NEXIS:
curl --location --request POST 'https://<AvidNEXIS_IP_address>/nxapi/login' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "user": "administrator", "pass":"<password>" }'
2. Using the token from the login call, display the current permissions on the folder Season1 in the
Workspace ThatSitCom:
curl --location --request POST 'https://<AvidNEXIS_IP_address>/ nxapi/fs/node/access' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "fullpath": "ThatSitCom/Season1" }' { "status": "success", "code": 110000, "message": "", "inherited": true, "accesslist": [ { "accesstype": "read", "principalname": "producers", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "Administrator", "principaltype": "user" } ] }
3. Give Kristen read/write permission to the Season1 folder:
curl --location --request PUT 'https://<AvidNEXIS_IP_address>/ nxapi/fs/node/access' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "fullpath": "ThatSitCom/Season1", "accesslist": [ { "accesstype": "readwrite", "principalname": "Kristen", "principaltype": "user" } ] }' Appendix — Managing Folder Level Permissions
4. Recheck the access permissions for the folder Season 1 and confirm that the Producers group still has
read-only access, but Kristen now has read-write:
curl --location --request POST 'https://<AvidNEXIS_IP_address>/ \ nxapi/fs/node/access' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "fullpath": "ThatSitCom/Season1" }' { "status": "success", "code": 110000, "message": "", "inherited": false, "accesslist": [ { "accesstype": "read", "principalname": "producers", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "Administrator", "principaltype": "user" }, { "accesstype": "readwrite", "principalname": "Kristen", "principaltype": "user" } ] }
5. Perform a similar operation for Leslie, giving her read-write access to the Season 2 folder.
At the end, the access permissions for the Workspace and its folders are as follows:
Appendix — Managing Folder Level Permissions Disabling Read-Write Access for One User and Enabling Read-Write for a Different User Now suppose that producer Kristen starts working on a different show and no longer needs read-write access to the Season1 “gold” folder. Producer Steve takes over that responsibility. Using the APIs you can change Kristen’s access to none and instead grant read-write access to Steve.
1. Display the access permissions set for the folder Season1:
curl --location --request POST 'https://<AvidNEXIS_IP_address>/ \ nxapi/fs/node/access' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "fullpath": "ThatSitCom/Season1" }' { "status": "success", "code": 110000, "message": "", "inherited": false, "accesslist": [ { "accesstype": "read", "principalname": "producers", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "Administrator", "principaltype": "user" }, { "accesstype": "readwrite", "principalname": "Kristen", "principaltype": "user" } ] }
2. Set Kristen’s access to none:
curl --location --request PUT 'https://<AvidNEXIS_IP_address>/ \ nxapi/fs/node/access' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "fullpath": "ThatSitCom/Season1", "accesslist": [ { "accesstype": "none", "principalname": "Kristen", "principaltype": "user" } ] }' Appendix — Managing Folder Level Permissions
3. Apply read-write access for Steve:
curl --location --request PUT 'https://<AvidNEXIS_IP_address>/ \ nxapi/fs/node/access' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "fullpath": "ThatSitCom/Season1", "accesslist": [ { "accesstype": "readwrite", "principalname": "Steve", "principaltype": "user" } ] }'
4. Display the access to the Season1 folder again to confirm the changes:
curl --location --request POST 'https://<AvidNEXIS_IP_address>/ \ nxapi/fs/node/access' \ --header 'token: 3870343368833550234' \ --header 'Content-Type: application/json' \ --data-raw '{ "fullpath": "ThatSitCom/Season1" }' { "status": "success", "code": 110000, "message": "", "inherited": false, "accesslist": [ { "accesstype": "read", "principalname": "producers", "principaltype": "group" }, { "accesstype": "readwrite", "principalname": "Administrator", "principaltype": "user" }, { "accesstype": "readwrite", "principalname": "Steve", "principaltype": "user" }, { "accesstype": "none", "principalname": "Kristen", "principaltype": "user" } ] }