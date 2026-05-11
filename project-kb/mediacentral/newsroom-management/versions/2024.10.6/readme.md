---
product: mediacentral-newsroom-management
product-area: newsroom
version: "2024.10.6"
release-date: 01/12/2024
doc-type: readme
source: avid-official
confidentiality: public
date-added: 16/04/2026
status: current
feature-tags: [inews, newsroom-management]
---

Avid MediaCentral | Newsroom Management
Version 2024.10.6 ReadMe
Important Information
Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using
the software described in this document.
n The content herein applies to the aforementioned version, and contains the latest information that
might not have been available when product guides were published. However, for previous versions,
users should reference older ReadMe documentation for additional information related to those
earlier releases.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Newsroom
Management documentation (all releases):
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-Newsroom-Management
Revision History
Contents
Contents 1
Security Guidelines 3
Compatibility Notes and Issues 3
Install and Upgrade Notes and Issues 6
Upgrading to 2024.10.6 6
Downgrade Notes and Issues 6
New Features in MediaCentral | Newsroom Management 2024.10.5 7
Date Revised Changes Made
December 2025 Added fixed issues for 2024.10.6
November 2025 Added compatibility updates, fixed issues, etc. for 2024.10.5
June 2025 Added some new features and fixed issues for 2024.10.4
May 2025 Added fixed issues & upgrading procedure for 2024.10.3
March 2025 Added fixed issues & upgrading procedure for 2024.10.2
March 2025 Added fixed issues & upgrading procedure for 2024.10.1
October 2024 Initial publication: Updated compatibility content, and added some new
features and fixed issues for 2024.10
1Contents
New Features in MediaCentral | Newsroom Management 2024.10.4 8
New Features in MediaCentral | Newsroom Management 2024.10 9
Fixed in Version 2024.10.6 10
Fixed in Version 2024.10.5 11
Fixed in Version 2024.10.4 12
Fixed in Version 2024.10.3 13
Fixed in Version 2024.10.2 14
Fixed in Version 2024.10.1 14
Fixed in Version 2024.10 15
Limitations and Defects for Earlier Versions 18
NRCS Tool 20
Configuring Gmail SMTP Relay Server for Sendmail 21
Doc Errata 23
Technical Support Information 24
2Security Guidelines
Security Guidelines
Avid allows you to install an endpoint detection and response solution on your Newsroom Management
system. This applies to both single-server and cluster environments. While Avid does not support any
specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the
following Avid Knowledge Base page: https://kb.avid.com/articles/en_US/troubleshooting/en239659
Compatibility Notes and Issues
This section contains compatibility information. Specific versions are mentioned when pertinent.
Workstation & Server Compatibility Chart
The following charts show the compatibility matrix for client/server versions of Newsroom Management.
Typically, older client versions may be used to log in to servers of the same or newer versions. However,
newer client versions cannot be used to log in to servers with older versions.
Each column represents Server Versions, while rows represent Client Versions.
MCNM 2023.7.x 2024.10.x
2023.7.x A A
2024.10.x NA A
1A = Allowed | NA = Not Allowed
n For information about compatibility of earlier versions, please refer to the ReadMe documentation
for those earlier releases. Also, for the latest, most up-to-date information on Avid systems
compatibility, see the MediaCentral Compatibility Matrix available on the Avid Knowledge Base
at: https://resources.avid.com/SupportFiles/Attachments/MediaCentral_Compatibility_Matrix.pdf.
Qualified Operating Systems
Avid performs extensive testing on specific hardware and/or software to verify full compatibility with
Newsroom Management. Those that pass these tests are considered qualified by Avid.
Newsroom Management Server
Newsroom Management Server (formerly called iNEWS Server) is qualified and supported for use with
Ubuntu 22.04 LTS only. Avid recommends the servers be kept up-to-date with the latest patch to avoid
any vulnerability issues in the Linux kernel.
n Avid also recommends using a NTP server to sync time between servers if your configuration consists
of more than one server to avoid story lock/saving issues.
iNEWS Workstation
The client software is compatible for use on Windows 10 and Windows 11. This version of Newsroom
Management is not officially supported for use on any other Windows operating system.
n This version of iNEWS Workstation is updated to Chromium Embedded Framework version 116.
3Compatibility Notes and Issues
Servers and Operating Systems Compatibility Matrix
The following matrix displays compatibility information for Newsroom Management version 2023.7.x and
later.
n For previous versions, not shown here, please refer to the ReadMe documentation for those earlier
releases.
n Not shown in matrix, Windows Server 2022 with Tomcat 10.0 is qualified for WSAPI and FileLink
server.
WSAPI
WSAPI is qualified with Windows Server 2022 and 2025.
WSAPI is qualified for Tomcat 10.0 with Java 17.
Other Supported Avid Systems
Command
The Newsroom Management Server is compatible for use with Command version 2022.3 for proper
integration with the VID-DURATION feature.
Data Receiver
Version 3.5 of Data Receiver Server is supported for use on Windows Server 2025 (or Windows Server
2022). Data Receiver Administrator Application is additionally supported for Windows 11.
This version of Data Receiver is not supported on any other Windows operating system.
External Users (LDAP)
This version is tested with LDAP TLS.
Fast Text Search (FTS)
Version 4.1 or later of FTS is required for this version of Newsroom Management Server on both Windows
Server 2022 and 2025.
FTS is compatible in a virtualized environment when the guest OS instance meets the application's
minimum system requirements.
4Compatibility Notes and Issues
Media | Index
UX search.
Newsroom Management version 2022.3 or later is only supported with Kafka for MediaCentral | Cloud
MOS Gateway
MOS Gateway is qualified with Windows 2025 (or Windows 2022).
The Newsroom Management system is compatible with MOS Gateway 2022.3 for subscription licensing.
Port 921 should be enabled for MOS Gateway communication. Please refer to the MOS Gateway
Operations Guide for how to configure the port if needed to use a different port.
Virtualization Environments
The Newsroom Management Server software is supported in a virtualized environment.
Minimum specifications are provided in the Avid iNEWS Server Enterprise Virtualization Reference Guide
for the Newsroom Management Server (iNEWS), the FTS/Data Receiver Server, Command Server, and
MOS Gateway Server.
5Install and Upgrade Notes and Issues
Install and Upgrade Notes and Issues
This section contains information related to upgrading from previous versions of the software.
Upgrading to 2024.10.6
This version is a client update only. Upgrading from 2024.10 or later to 2024.10.6 is a standard upgrade.
Before the upgrade, open the first story in queue SYSTEM.CLIENT.VERSIONS and insert the new client
version, 10.2.1.4, onto a separate line.
Upgrading to 2024.10.5
Upgrading from 2024.10 or later to 2024.10.5 is a standard upgrade.
Upgrading from 2024.10 to 2024.10.4
Upgrading from 2024.10 to 2024.10.4 is a standard upgrade.
Upgrading to 2024.10
There are major changes in this version, so upgrading to 2024.10 from 2023.7.x or 2023.3x requires isam
and database migration—the procedures for which are provided in the MediaCentral | Newsroom
Management Install Quick Guide. Please see the section entitled "Upgrading the Newsroom Management
Server" for more information.
Upgrading to Earlier Versions
Please consult the ReadMe documentation of previous releases for upgrade information pertaining to all
versions prior to this release.
Downgrade Notes and Issues
This section contains information related to downgrading to previous versions of the software.
2024.10.5
Downgrading to previous 2024.10.x from 2024.10.5 is a standard downgrade.
2024.10.4
Downgrading to 2024.10 from 2024.10.4 is a standard downgrade.
2024.10
Downgrading to a previous version from 2024.10 requires the old isam and database file be restored from
backup. Contact Avid Customer Support for assistance.
2023.7
Downgrading to version 2023.3 is a standard downgrade.
2023.3
Downgrading to version 2022.12 or earlier is not supported. To use an older version requires the
installation of the older server installed on the supported OS and old database file restored from backup.
Contact Avid Customer Support for assistance.
2022.12 and earlier
Please consult previous ReadMe documentation for downgrade notes, instructions, or issues.
6New Features in MediaCentral | Newsroom Management 2024.10.5
New Features in MediaCentral | Newsroom Management
2024.10.5
This topic provides an overview of the major new features in this release of Newsroom Management.
On the Newsroom Management Server
Feature Description
Configuration
files loaded by
services
Windows Server
2025 Support
Embedding configuration information using maketab or makemontab is no longer
required. After changing the configuration files, it is sufficient to restart the services. The
services changed include: gnews, inewsctc, news, snews, nxserver, newsmail, and
monitor.
So, maketab and makemontab are no longer necessary, and thus removed from
procedures and appendices in the Newsroom Management Setup and Configuration
Guide and Newsroom Management Administration Guide.
Windows Server 2025 was added as the primary supported platform for MOS Gateway,
Data Receiver, and FTS. Windows Server 2022 is still supported, but Windows 2019 is
discontinued.
On the iNEWS Workstation
Feature Description
Dynamic Theme
Change
High Resolution
Display / Sizing
Previously, changing themes —Original, Light, and Dark— required the user to restart
the application and re-login. That is no longer the case. Now, the user can dynamically
change the theme without any restart, and the status of the workspaces are restored
after the user changes the theme from the current setting to any other.
n Browser history is not restored after changing the theme.
Previously, changing the resolution could make the display of icons appear tiny or
blurry. Now, for this release, several enhancements were made to the
iNEWS Workstation user interface that improve dynamic high resolution display and
usability.
l The application automatically scales based on the monitor's pixels per inch
(PPI), taking screen scaling into account.
l Icons are now vector graphics for Light and Dark Theme and scaled images for
Classic Theme
l Toolbars now have a visual indicator for "grabbers". They can be turned off via
the Show grabbers check box option in the Toolbars customization settings.
l More formats are available for custom icons (BMP, PNG, JPG, GIF, TIFF, and
ICO)
l All dialogs are now resizable. The action buttons of the dialogs have been
arranged to remain consistent.
l The main menu can be docked to either border of the application and menus
can be hidden.
n If the main menu is hidden, menu accelerators will not work, which will affect
macros that use them.
7New Features in MediaCentral | Newsroom Management 2024.10.4
New Features in MediaCentral | Newsroom Management
2024.10.4
This topic provides an overview of the major new features in this release of Newsroom Management.
On the Newsroom Management Server
Feature Description
Notify Server iNEWS CTC You can use some environment variable settings to configure the notify server,
allowing it to send messages about change events related to folders, queues, or
stories to a Kafka topic. Other systems can then pick up these messages to react
on changes occurring in the Newsroom Management system. This feature is
planned for future use in integrations, such as with the Cloud UX Rules Engine, so
it should only be enabled if an integration is using the notifications.
For more information, see the "Notify Server Environment Variables" section in the
Appendices of the Newsroom Management Setup and Configuration Guide.
Newsroom Management now delivers a more comprehensive and dynamically
built CTMS data model. For faster delivery, the model is stored to the queue
defined by Q_SYSTEM_MODEL. For more information see the "Queues Dictionary"
section in the Appendices of the Newsroom Management Setup and Configuration
Guide.
On the iNEWS Workstation
Feature Description
Clear Channel option in
MOS-MAP
Improved Key Mapping
for Macros
Previously, an environment variable, ClearChannelOnMOSDrop, was introduced
to let users decide whether the channel is cleared in the Story Form panel when a
MOS item is dragged and dropped onto a story. This setting applied to the channel
regardless of the MOS device.
To control clearing of the item-channel field, per device, during MOS drag-and-
drop operations, system administrators can edit the SYSTEM.MOS-MAP story. Add
the <clearChannelOnDrop> token in the device table for each specific
MOS device for which you want the channel cleared.
n The environment variable will override any per-device configuration in the
SYSTEM.MOS-MAP story, so it should be turned off via the Registry Editor at
the workstation. For more information, see the "ClearChannelOnMOSDrop"
section in the Appendices of the Newsroom Management Setup and
Configuration Guide.
To improve key mapping in macros, the system checks whether keys can be
mapped to virtual keys before playing a macro or saving a toolbar macro, and if
there is a problem, notifies the user by displaying a confirmation message. For
more information, see "Macros" in the Newsroom Management User Guide.
8New Features in MediaCentral | Newsroom Management 2024.10
New Features in MediaCentral | Newsroom Management 2024.10
This topic provides an overview of the major new features in this release of Newsroom Management.
On the Newsroom Management Server
Feature Description
New Cloud UX wire
notifications
Secure Kafka
Connection
Cloud UX can now receive wire notifications. When new Urgent, Bulletin, or Flash
wires are ingested into the Newsroom Management system's priority queue, the
user will now receive notifications in Cloud UX; clicking on the Priority Wire
notification will open the wire story in the Cloud UX Rundown App.
Connection between the Newsroom Sync Agent and MediaCentral Search can
now be secured. For more information, see the "Configuring Kafka" section in the
Newsroom Management Setup and Configuration Guide.
On the iNEWS Workstation
Feature Description
New Themes Newer Chromium
Framework
Identity Provider (IDP)
Support
New Shortcuts This version of iNEWS Workstation now has two new themes: Light and Dark, in
addition to the Original theme.
The Light and Dark themes provide a more modern look and feel thus providing the
user a choice of either light tones or darker UI colors.
The Original theme keeps the familiar look and feel of the user interface (UI).
n For more information, see "User Interface Themes" in the Getting Started
chapter of the Newsroom Management User Guide.
This version of iNEWS Workstation is updated to Chromium Embedded Framework
version 116.
Previously, the user name limit was 20 characters. Beginning in 2024.10, two
feature toggles — F_LONG_USERNAME and F_EXTERNAL_IDP, defined in
/site/dict/features — were introduced for Identity Provider (IDP) support. These, if
enabled, can raise the limit to 255 characters.
n Clients or Community servers prior to version 2024.10 will not work properly
with long user names or be able to connect, if IDP is enabled. For more
information, see the "Utility Features Dictionary" and "Configuring IDP for User
Authentication" sections in the Newsroom Management Setup and
Configuration Guide
There are new keyboard shortcuts when viewing content in the Browser window to
help with quicker navigation and zoom. For more information, see "Browser
Shortcuts" in the Newsroom Management User's Guide
User Security
Feature Description
Okta and
KeyCloak Support
Newsroom Management supports Identity Providers (IdP) such as Okta or
KeyCloak through an OAuth workflow when using subscription licensing. This
9Fixed in Version 2024.10.6
Feature Description
More secure connections includes support of user names up to 255 characters in the Newsroom database
and communication.
n Using external Identity Providers will not allow connecting older clients or
community servers to the Newsroom Management Server.
In this version of Newsroom Management, additional checking of certificates is
supported to ensure more secure connections.
This feature is enabled by default through the installer with a default certificate.
Users are advised to replace the default certificate with the one created by their
own corporation. This feature may be disabled during client installation by
unchecking the SSL checkbox during the installation process. Alternatively, you
can disable this feature by setting the VerifyServerCertificate key to zero (0). The
key is located in:
Computer\HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Avid
Technology\iNEWS
Fixed in Version 2024.10.6
The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.6.
Bug Number: IN- 180861. Prevously, the iNEWS Workstation did not properly handle macro recursion
(macro within a macro) during playback.
Bug Number: IN- 180872. In the previous version, the iNEWS Workstation would crash if the user opened
the Print dialog while screen scaling was set above 100%.
Bug Number: IN- 180873, IN-180887. In some previous versions, zooming into the Story panel and scrolling,
either by dragging the bar or using the mouse wheel, as soon as the user stopped scrolling, the screen
would jump back to the original cursor location in the story.
Bug Number: IN- 180885. Previously, while some users were working with plug-ins, the iNEWS Workstation
displayed "Out of Memory" error messages. This version has improved GDI resource management to
address the issue.
10Fixed in Version 2024.10.5
Bug Number: IN-180890. In previous versions, the iNEWS Workstation could crash during DPI Changed
processing. Also during application exiting when some users closed the iNEWS Workstation, the software
would crash, causing "crash dumps" to be generated.
Bug Number: IN-180904. In some previous versions, iNEWS Workstation now uses modified User Account
Control (UAC) policies. UAC virtualization is now disabled, allowing plugins to write to the Windows
Registry instead of a virtualized area, which may have caused plugins to crash. The UAC execution level
for plugins is now set to the same as the workstation.
Fixed in Version 2024.10.5
The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.5.
Bug Number: IN- 180598. In some previous versions, using the ALT key to enter unicode characters, like
accented letters for Spanish, did not work consistently.
Bug Number: IN- 180730. Previously, running the unbusy command at the server could cause a user with
an edited, unsaved story at an iNEWS Workstation to lose connection. This occurred because the gnews
service would crash.
Bug Number: IN- 180733. Previously, in version 2024.10.3, users could see client crash issues when opening
plugins, moving notes, or working in queues with the "refresh" trait, whenever the system experienced
queue loading failures or network connection issues. Error handling improvements were implemented to
prevent such future client incidents.
Bug Number: IN- 180752. Previously, when an action server used the mailto command, the mailserver
exited unexpectedly, leaving the mail story in SYSTEM.MAIL.OUT.
Bug Number: IN- 180759. The gnew service no longer prints trace messages by default, but only if
explicitly enabled via utraits user +log.
Bug Number: IN- 180769. Previously, some macros using the right CTRL key would not behave as
expected. Now, they work regardless of whether the right or left CTRL key is used in the macro.
Bug Number: IN- 180785. After an upgrade to version 2024.10.4, the Newsroom Management database no
longer appeared in Cloud UX.
Bug Number: IN- 180788. Previously, RXNET sometimes failed to apply default translation values, which
prevented the prompter from connecting via FTP.
Bug Number: IN- 180800. Previously, when using Windows 11 in Chinese, the Maximum Hits and Number of
Paragraphs fields were not visible in the Find All dialog box.
Bug Number: IN- 180809. On iNEWS Workstations with version 2024.10 (or 2024.10.4) running on Windows
10 or Windows 11 computers, users of the Stratus ActiveX plugin experienced an unexpected client
software crash when attempting to change the Item Channel.
11Fixed in Version 2024.10.4
Bug Number: IN- 180810. Previously, the macro character size limit was too small, so longer macros (such
as macros 1660 characters in length) did not work in some later versions of Newsroom Management. Now,
the size limit for toolbar macros have been removed.
Bug Number: IN- 180813. On iNEWS Workstations with version 2024.10.3, in the German language, the
Print Style settings had no effect when printing stories. For example, the Story Form was printed
regardless of WINFORM being set to NEIN in SYSTEM.STYLES.
Bug Number: IN- 180814. In some previous versions, a macro using {tab} in the Mail dialog would not
work properly, meaning the cursor would not advance to the next field as expected.
Bug Number: IN- 180815. Previously, inewsctc would automatically create user accounts when connected
to an LDAP server. Now, such user accounts are only created automatically if the system is connected to
an IDP.
Bug Number: IN- 180818. In version 2024.10.4, when scrolling through a story body that contains a
production cue, the cursor would inexplicably jump back to the top of the story.
Bug Number: IN- 180837. In version 2024.10.4, after creating and restoring a dbdump, a directory with the
sequential flag was restored with alphabetically sorted content instead of in the expected sequential
order.
Fixed in Version 2024.10.4
The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.4.
Bug Number: IN- 180175. Previously, the monitor server would become stuck preventing a user from
unloading monitor from the iNEWS Workstation.
Bug Number: IN- 180273. The wire server initialization sequence has been changed. Now, sessions are only
retrieved after a device is allocated.
Bug Number: IN- 180274. In previous versions, the wire server would check upfront for a configured MOS-
MAP story, even if not needed. This could cause the wire server to stop working even when there were no
MOS attachments to process. Now, the MOS-MAP story is only loaded & checked (the
mosID validated) when the first MOS attachment is received. If the MOS-MAP story is missing or
misconfigured, the wire server logs the error but doesn't stop working.
Bug Number: IN- 180483. Users who did a drag-and-drop from the Camio HTML plugin on version 2023.7.4
of the iNEWS Workstation would receive parsing errors if an empty <item> tag was contained in the
MOS XML.
Bug Number: IN- 180522. Previously, a network failover adversely impacted reconnection and
communication between Newsroom Management and Command Workstations and/or Servers; this issue
delayed recovery times and was especially compounded when the monitor server was loaded (mon
load) during a broadcast.
12Fixed in Version 2024.10.3
Bug Number: IN- 180544. Previously, when new user credentials were added, the vaultctl utility would
acknowledge the addition but fail to automatically copy the vault files to other servers because of
incorrectly added spaces in between the server host names.
Bug Number: IN- 180546. Previously, launching the Connect to Service dialog on a 9.x client that was
connected to a 10.0 server resulted in network loss and corruption of the entries in the Connect to Service
dialog after reconnection.
Bug Number: IN- 180564. Previously, the iNEWS Workstation would stop rotating server names (i.e. -A, -B,
-C) to attempt to establish a connection after receiving an unsuccessful response from the workserver.
Bug Number: IN- 180575. In some previous versions, using "Print selected portion of queue" from the Print
Preview would only print the queue's topmost story, even if that story wasn't part of the stories selected
for print.
Bug Number: IN- 180720. Previously, when creating a new user from a template user, the toolbar setting
were not correctly copied.
Bug Number: IN- 180721. Previously, group modifications—such as adding a new user to the group—made
on an iNEWS Workstation would display "GROUP TEXT OK," but sending emails to the updated group
would fail to deliver to the new user in the group without notification of that failure. Delivery only worked
again after grpcheck was manually run via the console.
Enhancements
The following were improvements in this release made to existing functionality, as they each relate to
extended user preferences:
Improvement Number: IN-180689. The utraits parameter, -bloblist, now resets or removes extended
user preferences.
Improvement Number: IN-180704. Now, gnews will save extended user preferences even when it cannot
free the previously allocated blocks in the database.
Improvement Number: IN-180705. The iNEWS Workstation now updates user settings to the local registry,
including extended user preferences, even if the update to the database fails.
Improvement Number: IN-180711. The list command now has a new option (list u-e) for extended user
preferences.
Fixed in Version 2024.10.3
The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.3:
Bug Number: IN-180072. In previous versions, if users signed onto the iNEWS Workstation without "-a" or
"-b" and launched the HTML5 plugin, they will get an error of "Failed to load URL - http://.....".
13Fixed in Version 2024.10.2
Bug Number: IN-180556. In previous 2023.x versions, the spellchecker would flag proper nouns written in
all-caps. Words in all-caps are now excluded from the spell-check.
Bug Number: IN-180621. After upgrading to 2024.10, some sites that had selected a language for spell
checking without having the related dictionary installed, experienced "language pack" error messages
when logging into the Newsroom Management system. The client will now default to an available
dictionary.
Bug Number: IN-180633. Previously, users received a "lost connection" error when connecting to the
console service within the Newsroom Management system. This was because of a mismatch between
versions that did or did not support the long user name feature.
Bug Number: IN-180689. Previously, extended user preferences were not removed by the utraits command
when using the -bloblist parameter. Now, they will be.
Bug Number: IN-180695. In previous 2024.10.x versions, the client could crash while restoring the focus to
a previously focused element, such as after being restored from minimize status or the application
regained focus.
Bug Number: IN-180696. Previously, a user's extended preferences could become corrupted, forcing
system administrators to have to delete and recreate the user account. This occurred when running dbvisit
with updating the freelist in the database.
Bug Number: IN-180704. Previously, extended user preferences were not stored, if the previous block could
not be freed. Now, gnews will continue and store the new preferences.
Bug Number: IN-180705. When updating user settings to the server, the iNEWS Workstation did not store
extended user preferences to the Windows Registry.
Bug Number: IN-180307. The WSAPI would convert empty Boolean fields to the value "false" when storing
them to the database. This caused the evaluation of Affects Ready fields to deliver wrong results and the
Ready fields to be checked even though they shouldn't.
Fixed in Version 2024.10.2
The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.2:
Bug Number: IN-180498 & IN-180638. In some prior releases, the iNEWS Workstation would sometimes
stop responding while conducting a search and would remain frozen until the search completed or an
error was displayed.
Bug Number: IN-180594 & IN-180663. After upgrading to v.2024.10.x, users' preferences were not retained
when they accessed the Newsroom Management database via rxnet or for access through the
MOS Gateway. This could result in error messages when changing the preferences (Tools > Options
> Preferences) or themes (Tools > Options > Themes).
Fixed in Version 2024.10.1
The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.1:
14Fixed in Version 2024.10
Bug Number: IN-180528. Previously, iNEWS Workstations did not correctly return Unicode characters,
specifically those with macron accents, to HTML5 plugin.
Bug Number: IN-180291. The iNEWS Workstation, running newer versions after v2019.9, take longer to
open queues when forms contain very long lists as combo fields.
Bug Number: IN-180581. Previously on iNEWS Workstation v2023.7.5, when installed on a computer with
Windows 11 24H2, users encountered issues with altered language and keyboard settings and noticed
repeated popup messages when launching the client software and when executing a macro.
Bug Number: IN-180593. Previously, in older iNEWS Workstation versions that use Journaling Hooks,
macro keystrokes can be repeated by holding the modifier key down and repeatedly tapping the action
key; however in later workstations with SendInput, the modifier key would have to be toggled for each
press of the keystroke. This version restores original older functionality.
Bug Number: IN-180595. Previously on v2024.10 clients, macros were not working on Windows 11 (24H2)
and WinServer 2022.
Bug Number: IN-180610. Previously on v2024.10 clients, creating a new user by copying a template did not
work correctly.
Bug Number: IN-180631. Previously, after inserting a production cue in the story body (when the story
displayed a visible scrollbar), switching focus back to the queue and attempting to then move the cursor
within the queue view would fail; cursor focus would return to the story body. This could affect macro
playback.
Enhancements
The following were improvements in this release made to existing functionality:
Improvement Number: IN-180628. To improve key mapping in macros, the system now checks whether
keys can be mapped to virtual keys before playing a macro or saving a toolbar macro, and notifies the
user by displaying a confirmation message.
Fixed in Version 2024.10
The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.
Bug Number: IN- 179591. In previous versions, a toolbar button macro for queue path would exhibit
unexpected behavior when run for a second time with auto-arrange disabled.
Bug Number: IN- 179699. Previously, the MsgMailAlert feature did not work as documented in Appendix D
of the Newsroom Management Setup and Configuration Guide. Now, enabling the Message Mail Alert
feature allows you to change the alert behavior so that the iNEWS Workstation will flash message and/or
mail alerts on the status bar for only 15 seconds, rather than persistently.
Bug Number: IN-179748. Previously, when logging in, users sometimes encountered "a networking error
while checking the News Server version", which forced the user to log in again.
15Fixed in Version 2024.10
Bug Number: IN-179804. Now, when drag-and-dropping a MOS item from the HTML5 plugin, the content
of the MOS item will be the same as drag-and-dropping a MOS item from an ActiveX plugin.
Bug Number: IN-179810. Previously, mismatched capitalization in the HTML5 plugin configuration could
result in an “Unable to invoke Editor” error message when a user later tried to edit a MOS item.
Bug Number: IN-179822. Previously, if the client was closed while the HTML5 plugin was left open, then
attempts to use the context menu to open/edit MOS items afterward would fail.
Bug Number: IN-179825. In previous versions, data in the mos-obj id field is cleared when monitor is turned
ON.
Bug Number: IN-179831. Previously, login attempts failed for NRCS tool users with a "space" in their
password. "Space" characters are now allowed in the password.
Bug Number: IN-179836. In a previous version, a package is missing from the installer, which caused the
FTS service to be unable to start.
Bug Number: IN-179890. In previous versions, In some previous versions, the ENDORSE-BY, CAM fields text
color should reflect whether it is over or under; however, when the story with those fields was set to
FLOAT, the color of the fields would change to black.
Bug Number: IN-179898. In previous versions, users sometimes got a message of story moved or removed
while editing from the Cloud UX Rundown App.
Bug Number: IN-179903. Previously, if a user closes a workspace with active story form, iNEWS
Workstation crashed due to de-refencing a null-pointer.
Bug Number: IN-179932. In some previous versions, iNEWS Workstation users might experience an instance
where they are scrolling, such as by using the mouse wheel, through text and are automatically scrolled
back to wherever the cursor stopped, thus compromising editing or copy/paste operations.
Bug Number: IN-179987. In previous versions, MOS Gateway COM session could not be created for the
server in grace mode. A workaround was to copy /etc/pam.d/rxnet file to the same folder location, and
rename copy to mgwcom.
Bug Number: IN-179989. In previous versions, having in the NSML body any text in the format of a
comment, resulted in that story being inserted into the database with cut text.
Bug Number: IN-179994. In previous 2022 versions, users could not delete an entry in a column with an
Endorse-by field property.
Bug Number: IN-179999. In some previous versions, wire stories might display a strange character right
before opening double quotation marks.
16Fixed in Version 2024.10
Bug Number: IN-180012. The repeat macro has a new optional argument to set the number of executions,
e.g. {repeat 4} will repeat the macro 4 times.
c This will only work with 2024.10 clients; older clients may fail to execute the macro.
Bug Number: IN-180029. During the grace period, newly created wires and mgwcom sessions were not
displayed in list output as expected.
Bug Number: IN-180030. During the grace period, MOS Admin would not log in a second time.
Bug Number: IN-180033. Previously, a story merge error in the inewsctc would cause the inewsctc process
to abort.
Bug Number: IN-180044. Previously for sites connected via the Community feature, users at sites that
were running older versions could not manually copy a news story from the 2023.7 system.
Bug Number: IN-180067. In previous versions, a locked block would be created if the licensing server could
not be reached when an iNEWS Workstation user requested a license.
Bug Number: IN-180072. In previous versions, if users signed onto the iNEWS Workstation without "-a" or
"-b" and launched the HTML5 plugin, they will get an error of "Failed to load URL - http://.....".
Bug Number: IN-180073. Previously, if MOS Gateway was set up without a password for the user in the
MosAdmin app, then MOS-related services (MosRoStorySendService and MosRouterService) would crash
when MOS items were added to stories in a loaded rundown. Now, such misconfiguration is checked
during service startup.
Bug Number: IN-180075. Previously, the users list from the User Management dialog would be printed
without correct formatting.
Bug Number: IN-180092. Previously, the newsroom database might disappear from the Browse App during
production peak times.
Bug Number: IN-180095. In previous versions, the response time of the Newsroom Management system,
while using the Cloud UX Rundown App could sometimes be increased due to a lot of allocate session
communications.
Bug Number: IN-180098. In previous versions, cybersecurity scanning activity during busy times could
cause inewsctc to crash.
Bug Number: IN-180143. Previously, the timing on the status bar would stop counting after an activeX
editor was launched.
Bug Number: IN-180144. Previously, if the W_WIRE_FORM token in /site/dict/words was changed to a
form that did not exist, the wire device services would stop working.
17Limitations and Defects for Earlier Versions
Bug Number: IN-180188. In previous 2023.7 versions, for Newsroom Management systems using Flex
licensing, users could not log onto iNEWS Workstations during the grace period when
MediaCentral | Cloud UX was not available.
Bug Number: IN-180217. In previous versions, Cloud UX Rundown App users could not drag-and-drop
stories from a remote server to a local server.
Bug Number: IN-180229. Previously, the iNEWS Workstation would sometimes crash when a user with a
password longer than 12-characters logged in via Connect to Service.
Bug Number: IN-180304. In version 2023.7, applying a new license string with different session count could
license to become temporarily invalid.
Bug Number: IN-180325. In previous versions, the Newsroom Management system would fail to process a
story with usable URL, received from the Data Receiver wire instance, if the story received contained <a>
</a> tags.
Bug Number: IN-180333. In previous versions, the iNEWS Workstation would sometimes crash when a user,
prompted to save a story, answered No.
Bug Number: IN-180464. After upgrade to previous version, a dbrestore would fail to create some user
accounts that fell alphabetically after either the dbmanager or umanager accounts.
Limitations and Defects for Earlier Versions
This topic provides details on limitations discovered in earlier versions of Newsroom Management (formerly
iNEWS), and not addressed in this release. Any available workaround procedures are also documented,
when possible.
Grace Period Delay
l First discovered in v2023.7, at Newsroom Management sites with subscription licensing, when the
MediaCentral Server transitions from online to offline, users at iNEWS Workstations may experience
a short delay at log in, while in grace period mode.
Incorrect Timing for Stories with a Predefined Form
l First discovered in v2023.3, when stories with a predefined form are ingested through the wire
server, the contents of all fields will not be preserved and could have incorrect timing information.
Copying Toolbar Settings
applied.
When copying from a template user to your own user, while logged in, the toolbar settings will not be
Diskcopy reports Critical Error
If diskcopy reports messages “diskcopy: 17:09:59 [CRITICAL] first block mirror error: on block 66958
(5:Input/output error)” Users should check the message at the end of the log for actual status. “Successful
– Disk is mirrored” indicates that the process completed successfully, and the error only indicates that
there are empty blocks that could not be copied.
18Limitations and Defects for Earlier Versions
Edit Locks
Information about edit locks may contain a session identifier if the username is not known. This is the case
for locks acquired though inewsctc API.
Information about a user who has an edit lock could be incorrect when the user signs off without releasing
edit locks and signs on, reusing the same session.
n The new user does not have the edit lock, and the lock will expire in its pre-defined timeout.
Invalid User Credentials
Bug Number: IN- 7154.∙ Previously, an error stating “Invalid User Name/Password” would appear if an
older version of the iNEWS Workstation is used with version 2021.11 server, and if the server cannot acquire
a session license from the MediaCentral Licensing server when subscription licensing is used. Now, you will
get an error message stating “Cannot obtain new user session from Cloud UX (licensing server)”.
Internationalization Issues
This topic provides details related to localization to various non-English languages.
Chinese IME Mode
Avid recommends do not use key strokes in Chinese IME mode.
Chinese DaYi
Chinese input method DaYi cannot be used to create new queues or folders.
Divehi Support
With the new richedit control, sometimes the last line of text will align to the left for a right-aligned story.
Local Database
To download print styles and story forms to your local computer for use when working offline, you must
have Read Access to the Newsroom Management Server directories where styles and forms are located.
This is by design.
Localhost Server
It is recommended to use localhost IP address "127.0.0.1" instead of alias "localhost" in case of telnet
connection to localhost server.
Macros and Keystrokes
Some PCs, when upgraded from older versions of Internet Explorer (such as IE 6, 7 or 8) will experience
issues with macros that perform several functions in rapid succession; the macros might not complete all
assigned activity in iNEWS. Avid is working with Microsoft on this issue, which is most apparent with
macros that trigger the Local Print dialog box or the User Preferences dialog box.
Workaround: Place the name of the dialog box after the K_WINDOW token value immediately following
the keystroke that opens the dialog box. For instance, instead of just {ctrl p} to open the Local Print dialog,
the macro should be: {ctrl p}{window Local Printing}. The text following ‘window’ must match exactly the
name of the dialog box as it appears in the title bar. The ‘K_WINDOW /window’ token can be changed in
/site/dict/keymacros.
19NRCS Tool
Another available workaround is to add {pause <#>} statements of one or two seconds to problem macros
at the point in the macro where activity ceases. In the example of the Local Printing macros, the pauses
are likely needed when typing a name of a printer or changing a print style.
MAP Story Limit
The limit of devices for a rundown in the MAP story is 20. Having more than 20 devices configured for a
rundown in the MAP story will result in a client crash when attempting to open the Monitor dialog.
MediaCentral Cloud UX Integration
If the same Newsroom Management user name is used on multiple sessions on the same computer to log
into MediaCentral | Cloud UX, it will only consume a single session.
Multiple Monitors
encounter:
If running the iNEWS client software on a dual monitor workstation, there are some key issues you could
l If the application is maximized when closed, it will be maximized on the primary monitor when it is
reopened, regardless of which monitor it was on when closed.
l Moving a user from a dual monitor machine to a single monitor machine, such as an undocked
laptop, could result in the application opening to a screen that no longer exists.
Workaround: Right click on iNEWS in the Windows taskbar and select Move. Then press one of the
arrow keys on the keyboard; this will lock the application’s window to the mouse. You can then
move the mouse pointer onto the screen and the iNEWS main window will move with it.
Netstation
Bug Number: IN- 3269.∙ Fields carried over from Avid Netstation template are skipped from indexing.
NRCS Tool
Bug Number: IN- 180732.∙ The NRCS Tool allows login for users with names up to 20 characters, but not
any longer. The API used by Media Composer for story locking does not support longer names and is
deprecated.
Workaround: Ensure account user names are 20 characters or shorter, even when using external IDPs,
such as Okta or KeyCloak.
Plug-ins
Some plug-ins may not paint correctly in Newsroom Management.
Workaround: Complete the following procedure to resolve the painting issue.
n AMG Journalist is used in the procedure as a plug-in example.
1. 2. In the iNEWS executable directory, create a new text file named ActiveXRedraw.txt.
t For 64 bit workstations, the directory is located at: C:\Program Files (x86)\Avid\iNEWS\
t For 32 bit workstations, the directory is located at: C:\Program Files\Avid\iNEWS\
Open the registry editor, using regedit in the Run dialog box.
203. Configuring Gmail SMTP Relay Server for Sendmail
Select Edit > Find > AMG Journalist and locate the CLSID for the plug-in.
t For 64 bit workstations, the CLSID is located at: Computer\HKEY_CLASSES_
ROOT\Wow6432Node\CLSID\
t For 32 bit workstations, the CLSID is located at: Computer\HKEY_CLASSES_ROOT\CLSID\
4. Take the CLSID, which is the folder name, and put it into the ActiveXRedraw.txt file.
5. Save the file.
6. UNC Paths
Reload iNEWS. The painting problem for the plug-ins will be resolved.
l As a result of the server-side URL changes in iNEWS 3.4.2, UNC paths with spaces no longer work
correctly in the iNEWS client software. In a future version of the iNEWS client software, these links
will be client-only, allowing a user to launch them from the iNEWS Workstation without saving them
as URLs on the iNEWS Server.
l iNEWS integration with Intelliscribe printing should be configured at 300 DPI with "Enhanced
Features" disabled. Setting a higher DPI or enabling enhanced features can cause long delays in
printing.
l There are screen painting issues when the Vertigo Xmedia plug-in and the Aurora Assignment List
plug-in (version 7 or later) are both installed on the same client. The Xmedia splash screen can
cause the Xmedia tree to be inaccessible.
Workaround: When this issue occurs, the workaround is to rename or remove skinCrafter3_
vs2008.dll from the Assignment List installation directory.
Configuring Gmail SMTP Relay Server for Sendmail
Configuring the Gmail SMTP relay server for sendmail involves generating a Gmail application password,
updating the sendmail configuration, and adding lines to an authinfo file. The steps for these are in
following subsections of this readme:
21Configuring Gmail SMTP Relay Server for Sendmail
Generate Gmail Application Password
To generate a Gmail application password:
1. 2. 3. 4. 5. 6. 7. Log in to you Gmail account and go to the Manage you Google Account page.
Go to the Security page.
Enable 2-Step Verification if it is not enabled yet.
Click on the App passwords link.
In the Select app drop-down menu, select Mail.
In the Select device drop-down menu, select Other.
Enter the name for your application, such as iNEWS.
8. Click GENERATE.
9. Copy your password from the pop-up window.
Update sendmail configuration
To update the sendmail configuration:
t Add the following lines to the /etc/mail/sendmail.mc file before the MAILER(smtp)dnl line:
dnl #
dnl # Defining Gmail Smarthost for sendmail
define(`SMART_HOST',`[smtp.gmail.com]')dnl
define(`RELAY_MAILER_ARGS', `TCP $h 587')dnl
define(`ESMTP_MAILER_ARGS', `TCP $h 587')dnl
define(`confAUTH_OPTIONS', `A p')dnl
TRUST_AUTH_MECH(`EXTERNAL DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN
PLAIN')dnl
FEATURE(`authinfo',`hash -o /etc/mail/authinfo')dnl
Modify the AuthInfo File
To modify the AuthInfo file:
1. Add the following lines to the /etc/mail/authinfo file
2. 3. AuthInfo: "U:smmtp" "I:EMAIL" "P:PASSWORD"
Replace the above 'EMAIL' and 'PASSWORD' with your actual Gmail email and application
password.
Create database map from authinfo file using makemap utility as below:
$ sudo makemap hash /etc/mail/authinfo </etc/mail/authinfo
You may now generate the final sendmail configuration and restart the service by entering the
following commands as a root:
$sudo sendmailconfig
$ systemctl restart sendmail.service
22Doc Errata
Doc Errata
MediaCentral Newsroom Management Setup and Configuration Guide
In Appendix A of the 2023.3 version of the guide, in the Job List Commands section, the command bpoll
has the following note:
n This feature is only enabled if the environment variable RESTARTDURINGPOLLINGPERIOD=1 is set in
/site/action.
The wording /site/action should be /site/env/action:
n This feature is only enabled if the environment variable RESTARTDURINGPOLLINGPERIOD=1 is set in
/site/env/action.
23Technical Support Information
Technical Support Information
Most products feature a number of coverage options. Avid Assurance service offerings are designed to
facilitate your use of Avid solutions. Service options include extended telephone coverage, automatic
software maintenance, extended hardware warranty, and preferred pricing on replacement parts.
Offerings and options may vary by product and are not available for all products.
For more information regarding Avid service offerings, visit www.avid.com/support or call Avid Sales at
800-949-AVID (800-949-2843).
Program availability and details might vary depending on geographic location and are subject to change
without notice. Contact your local Avid office or your local Avid Reseller for complete program information
and pricing. However, if you need help locating an Avid office or Avid Reseller near you, please visit
www.avid.com or call in North America 800-949-AVID (800-949-2843). International users call 978-275-
2480.
Accessing Online Support
Avid Online Support is available 24 hours per day, 7 days per week. Search the Knowledge Base to find
answers, to view error messages, to access troubleshooting tips, to download updates, and to read/join
online message-board discussions.
To access Avid Online Support:
t Go to www.support.avid.com.
n Supplemental documentation for this release, if available, is provided on the Knowledge Base. For
the latest up-to-date information, browse the Knowledge Base at Avid Online Support.
24Technical Support Information
Legal Notices
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance
with the license agreement.
This product may be protected by one or more U.S. and non-U.S patents. Details are available at www.avid.com/patents.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for
any purpose without the express written permission of Avid Technology, Inc.
Copyright © 2025 Avid Technology, Inc. and its licensors. All rights reserved.
Portions © Copyright 2003-2007 of MOG Solutions.
Attn. Government User(s). Restricted Rights Legend
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software
documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with
respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as
applicable.
Trademarks
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox,
MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and
logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the
permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective
owners. For a full list of Avid trademarks, see: http://www.avid.com/US/about-avid/legal-notices/trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and
Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of
Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
MediaCentral | Newsroom Management ReadMe • Revised Monday, December 8, 2025
This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.