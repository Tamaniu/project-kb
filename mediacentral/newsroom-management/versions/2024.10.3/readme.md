---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2024.10.3"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 24/04/2026
status: current
---

Contents Avid MediaCentral | Newsroom Management Version 2024.10.3 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
> **Note:** The content herein applies to the aforementioned version, and contains the latest information that
might not have been available when product guides were published. However, for previous versions, users should reference older ReadMe documentation for additional information related to those earlier releases.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Newsroom Management documentation (all releases):
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-Newsroom-Management Revision History Date Revised Changes Made May 2025 Added fixed issues & upgrading procedure for 2024.10.3 March 2025 Added fixed issues & upgrading procedure for 2024.10.2 March 2025 Added fixed issues & upgrading procedure for 2024.10.1 October 2024 Initial publication: Updated compatibility content, and added some new features and fixed issues for 2024.10 Contents Fixed in Version 2024.10.3 10 Fixed in Version 2024.10.2 11 Fixed in Version 2024.10.1 11 Fixed in Version 2024.10 12 Contents Limitations and Defects for Earlier Versions 15 Configuring Gmail SMTP Relay Server for Sendmail 18 Doc Errata 19 Technical Support Information 20 Security Guidelines Security Guidelines Avid allows you to install an endpoint detection and response solution on your Newsroom Management system. This applies to both single-server and cluster environments. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page: https://kb.avid.com/articles/en_US/troubleshooting/en239659 Compatibility Notes and Issues This section contains compatibility information. Specific versions are mentioned when pertinent.
Workstation & Server Compatibility Chart The following charts show the compatibility matrix for client/server versions of Newsroom Management.
Typically, older client versions may be used to log in to servers of the same or newer versions. However, newer client versions cannot be used to log in to servers with older versions.
Each column represents Server Versions, while rows represent Client Versions.
MCNM 2023.7.x 2024.10.x 2023.7.x A A 2024.10.x NA A 1A = Allowed | NA = Not Allowed
> **Note:** For information about compatibility of earlier versions, please refer to the ReadMe documentation for
those earlier releases. Also, for the latest, most up-to-date information on Avid systems compatibility, see the MediaCentral Compatibility Matrix available on the Avid Knowledge Base at: https://resources.avid.com/SupportFiles/Attachments/MediaCentral_Compatibility_Matrix.pdf.
Qualified Operating Systems Avid performs extensive testing on specific hardware and/or software to verify full compatibility with Newsroom Management. Those that pass these tests are considered qualified by Avid.
Newsroom Management Server Newsroom Management Server (formerly called iNEWS Server) is qualified and supported for use with Ubuntu 22.04 LTS only. Avid recommends the servers be kept up-to-date with the latest patch to avoid any vulnerability issues in the Linux kernel.
> **Note:** Avid also recommends using a NTP server to sync time between servers if your configuration consists
of more than one server to avoid story lock/saving issues.
iNEWS Workstation The client software is compatible for use on Windows 10 and Windows 11. This version of Newsroom Management is not officially supported for use on any other Windows operating system.
> **Note:** This version of iNEWS Workstation is updated to Chromium Embedded Framework version 116.
Compatibility Notes and Issues Servers and Operating Systems Compatibility Matrix The following matrix displays compatibility information for Newsroom Management version 2023.7.x and later.
> **Note:** For previous versions, not shown here, please refer to the ReadMe documentation for those earlier
releases.
> **Note:** Not shown in matrix, Windows Server 2022 with Tomcat 10.0 is qualified for WSAPI and FileLink
server.
WSAPI WSAPI is qualified with Windows Server 2022.
WSAPI is qualified for Tomcat 10.0 with Java 17.
Other Supported Avid Systems Command The Newsroom Management Server is compatible for use with Command version 2022.3 for proper integration with the VID-DURATION feature.
Data Receiver Version 3.x of Data Receiver Server is supported for use on Windows Server 2022 and Windows Server
2019. Data Receiver Administrator Application is additionally supported for Windows 11.
This version of Data Receiver is not supported on any other Windows operating system.
External Users (LDAP) This version is tested with LDAP TLS.
Fast Text Search (FTS) Version 4.1 or later of FTS is required for this version of Newsroom Management Server on both Windows Server 2019 and 2022.
FTS is compatible in a virtualized environment when the guest OS instance meets the application's minimum system requirements.
Media | Index Newsroom Management version 2022.3 or later is only supported with Kafka for MediaCentral | Cloud UX search.
Compatibility Notes and Issues MOS Gateway MOS Gateway is qualified with Windows 2022.
The Newsroom Management system is compatible with MOS Gateway 2022.3 for subscription licensing.
Port 921 should be enabled for MOS Gateway communication. Please refer to the MOS Gateway Operations Guide for how to configure the port if needed to use a different port.
Virtualization Environments The Newsroom Management Server software is supported in a virtualized environment.
Minimum specifications are provided in the Avid iNEWS Server Enterprise Virtualization Reference Guide for the Newsroom Management Server (iNEWS), the FTS/Data Receiver Server, Command Server, and MOS Gateway Server.
Install and Upgrade Notes and Issues Install and Upgrade Notes and Issues This section contains information related to upgrading from previous versions of the software.
Upgrading to 2024.10.3 This release contains an upgraded client and three executables. Before upgrading to 2024.10.3 from any previous version, you must first complete the installer procedure for upgrading to 2024.10 as described in the MediaCentral | Newsroom Management Install Quick Guide. (See also information provided in the "Upgrading to 2024.10" on page 8, a subsection of this ReadMe.) Then, do the following procedure to complete the upgrade process and to allow the new client version and server upgrade for dbvisit, gnews, and utraits:
1. At an iNEWS Workstation, open the queue SYSTEM.CLIENT.VERSIONS.
2. Open the first story (usually named “versions”) in that queue.
3. In that story, insert the client version, 10.0.3.6, onto a separate line.
4. Then, on each Newsroom Management Server, do the following:
a. Copy the dbvisit.gz , gnews.gz, and utraits.gz to the tmp folder and unzip them with:
gzip -d dbvisit.gz gzip -d gnews.gz gzip -d utraits.gz b. Run the following commands to prepare the update and configure the changed client version:
offline configure -n logout all shutdown | y service iNEWS stop c. Run the following commands to backup the old dbvisit, gnews, and utraits, and put the new ones in place:
cd /exc mv dbvisit dbvisit.orig mv /tmp/dbvisit /exc/dbvisit sudo chown so:newssys dbvisit sudo chmod 775 dbvisit mv gnews gnews.orig mv /tmp/gnews /exc/gnews sudo chown so:newssys gnews sudo chmod 775 gnews mv utraits utraits.orig mv /tmp/utraits /exc/utraits sudo chown so:newssys utraits sudo chmod 775 utraits Install and Upgrade Notes and Issues d. Run the following commands to start the Newsroom Management system:
service iNEWS start connect a sudo maketab -i startup
> **Note:** This version also offers an updated WSAPI. For more information on upgrade/installing procedures
for WSAPI, see the WSAPI v2024.10.3 ReadMe.
Upgrading to 2024.10.2 This release contains an upgraded client and two executables. Before upgrading to 2024.10.2 from any previous version, you must first complete the installer procedure for upgrading to 2024.10 as described in the MediaCentral | Newsroom Management Install Quick Guide. (See also information provided in the "Upgrading to 2024.10" on the next page, a subsection of this ReadMe.) Then, do the following procedure to complete the upgrade process and allow the new client version and server upgrade for rxnet and mgwcom:
1. At an iNEWS Workstation, open the queue SYSTEM.CLIENT.VERSIONS.
2. Open the first story (usually named “versions”) in that queue.
3. In that story, insert the client version, 10.0.2.2, onto a separate line.
4. Then, on each Newsroom Management Server, do the following:
a. Copy the mgwcom.gz and rxnet.gz to the tmp folder and unzip with:
gzip -d mgwcom.gz gzip -d rxnet.gz b. Run the following commands to prepare the update and configure the changed client version:
offline configure -n logout all shutdown | y service iNEWS stop c. Run the following commands to backup the old mgwcom and rxnet executables and put the new one in place:
cd /exc mv mgwcom mgwcom.orig mv /tmp/mgwcom /exc/mgwcom mv rxnet rxnet.orig mv /tmp/rxnet /exc/rxnet sudo chmod 775 rxnet sudo chmod 775 mgwcom d. Run the following commands to start the Newsroom Management system:
Downgrade Notes and Issues service iNEWS start connect a startup Upgrading to 2024.10.1 This is a client only release. Before upgrading to 2024.10.1 from any previous version, you must first complete the installer procedure for upgrading to 2024.10 as described in the MediaCentral | Newsroom Management Install Quick Guide. (See also information provided in the "Upgrading to 2024.10" below, a subsection of this ReadMe.) Then, do the following procedure to complete the upgrade process:
1. At an iNEWS Workstation, open the queue SYSTEM.CLIENT.VERSIONS.
2. Open the first story (usually named “versions”) in that queue.
3. In that story, insert the client version, 10.0.1.15, onto a separate line.
4. Then, on each Newsroom Management Server, run the following commands:
offline configure -n online Upgrading to 2024.10 There are major changes in this version, so upgrading to 2024.10 from 2023.7.x or 2023.3x requires isam and database migration—the procedures for which are provided in the MediaCentral | Newsroom Management Install Quick Guide. Please see the section entitled "Upgrading the Newsroom Management Server" for more information.
Upgrading to Earlier Versions Please consult the ReadMe documentation of previous releases for upgrade information pertaining to all versions prior to this release.
Downgrade Notes and Issues This section contains information related to downgrading to previous versions of the software.
2024.10 Downgrading to a previous version from 2024.10 requires the old isam and database file be restored from backup. Contact Avid Customer Support for assistance.
2023.7 Downgrading to version 2023.3 is a standard downgrade.
2023.3 Downgrading to version 2022.12 or earlier is not supported. To use an older version requires the installation of the older server installed on the supported OS and old database file restored from backup.
Contact Avid Customer Support for assistance.
2022.12 and earlier Please consult previous ReadMe documentation for downgrade notes, instructions, or issues.
New Features in MediaCentral | Newsroom Management 2024.10 New Features in MediaCentral | Newsroom Management 2024.10 This topic provides an overview of the major new features in this release of Newsroom Management.
On the Newsroom Management Server Feature Description New Cloud UX wire Cloud UX can now receive wire notifications. When new Urgent, Bulletin, or Flash notifications wires are ingested into the Newsroom Management system's priority queue, the user will now receive notifications in Cloud UX; clicking on the Priority Wire notification will open the wire story in the Cloud UX Rundown App.
Secure Kafka Connection between the Newsroom Sync Agent and MediaCentral Search can Connection now be secured. For more information, see the "Configuring Kafka" section in the Newsroom Management Setup and Configuration Guide.
On the iNEWS Workstation Feature Description New Themes This version of iNEWS Workstation now has two new themes: Light and Dark, in addition to the Original theme.
The Light and Dark themes provide a more modern look and feel thus providing the user a choice of either light tones or darker UI colors.
The Original theme keeps the familiar look and feel of the user interface (UI).
> **Note:** For more information, see "User Interface Themes" in the Getting Started
chapter of the Newsroom Management User Guide.
Newer Chromium This version of iNEWS Workstation is updated to Chromium Embedded Framework Framework version 116.
Identity Provider (IDP) Previously, the user name limit was 20 characters. Beginning in 2024.10, two Support feature toggles — F_LONG_USERNAME and F_EXTERNAL_IDP, defined in /site/dict/features — were introduced for Identity Provider (IDP) support. These, if enabled, can raise the limit to 255 characters.
> **Note:** Clients or Community servers prior to version 2024.10 will not work properly
with long user names or be able to connect, if IDP is enabled. For more information, see the "Utility Features Dictionary" and "Configuring IDP for User Authentication" sections in the Newsroom Management Setup and Configuration Guide New Shortcuts There are new keyboard shortcuts when viewing content in the Browser window to help with quicker navigation and zoom. For more information, see "Browser Shortcuts" in the Newsroom Management User's Guide User Security Feature Description Okta and Newsroom Management supports Identity Providers (IdP) such as Okta or KeyCloak Support KeyCloak through an OAuth workflow when using subscription licensing. This Fixed in Version 2024.10.3 Feature Description includes support of user names up to 255 characters in the Newsroom database and communication.
> **Note:** Using external Identity Providers will not allow connecting older clients or
community servers to the Newsroom Management Server.
More secure connections In this version of Newsroom Management, additional checking of certificates is supported to ensure more secure connections.
This feature is enabled by default through the installer with a default certificate.
Users are advised to replace the default certificate with the one created by their own corporation. This feature may be disabled during client installation by unchecking the SSL checkbox during the installation process. Alternatively, you can disable this feature by setting the VerifyServerCertificate key to zero (0). The key is located in:
Computer\HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Avid Technology\iNEWS Fixed in Version 2024.10.3 The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.3:
Bug Number: IN-180072. In previous versions, if users signed onto the iNEWS Workstation without "-a" or "-b" and launched the HTML5 plugin, they will get an error of "Failed to load URL - http://.....".
Bug Number: IN-180556. In previous 2023.x versions, the spellchecker would flag proper nouns written in all-caps. Words in all-caps are now excluded from the spell-check.
Bug Number: IN-180621. After upgrading to 2024.10, some sites that had selected a language for spell checking without having the related dictionary installed, experienced "language pack" error messages when logging into the Newsroom Management system. The client will now default to an available dictionary.
Bug Number: IN-180633. Previously, users received a "lost connection" error when connecting to the console service within the Newsroom Management system. This was because of a mismatch between versions that did or did not support the long user name feature.
Fixed in Version 2024.10.2 Bug Number: IN-180689. Previously, extended user preferences were not removed by the utraits command when using the -bloblist parameter. Now, they will be.
Bug Number: IN-180695. In previous 2024.10.x versions, the client could crash while restoring the focus to a previously focused element, such as after being restored from minimize status or the application regained focus.
Bug Number: IN-180696. Previously, a user's extended preferences could become corrupted, forcing system administrators to have to delete and recreate the user account. This occurred when running dbvisit with updating the freelist in the database.
Bug Number: IN-180704. Previously, extended user preferences were not stored, if the previous block could not be freed. Now, gnews will continue and store the new preferences.
Bug Number: IN-180705. When updating user settings to the server, the iNEWS Workstation did not store extended user preferences to the Windows Registry.
Bug Number: IN-180307. The WSAPI would convert empty Boolean fields to the value "false" when storing them to the database. This caused the evaluation of Affects Ready fields to deliver wrong results and the Ready fields to be checked even though they shouldn't.
Fixed in Version 2024.10.2 The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.2:
Bug Number: IN-180498 & IN-180638. In some prior releases, the iNEWS Workstation would sometimes stop responding while conducting a search and would remain frozen until the search completed or an error was displayed.
Bug Number: IN-180594 & IN-180663. After upgrading to v.2024.10.x, users' preferences were not retained when they accessed the Newsroom Management database via rxnet or for access through the MOS Gateway. This could result in error messages when changing the preferences (Tools > Options > Preferences) or themes (Tools > Options > Themes).
Fixed in Version 2024.10.1 The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.1:
Bug Number: IN-180528. Previously, iNEWS Workstations did not correctly return Unicode characters, specifically those with macron accents, to HTML5 plugin.
Bug Number: IN-180291. The iNEWS Workstation, running newer versions after v2019.9, take longer to open queues when forms contain very long lists as combo fields.
Bug Number: IN-180581. Previously on iNEWS Workstation v2023.7.5, when installed on a computer with Windows 11 24H2, users encountered issues with altered language and keyboard settings and noticed repeated popup messages when launching the client software and when executing a macro.
Fixed in Version 2024.10 Bug Number: IN-180593. Previously, in older iNEWS Workstation versions that use Journaling Hooks, macro keystrokes can be repeated by holding the modifier key down and repeatedly tapping the action key; however in later workstations with SendInput, the modifier key would have to be toggled for each press of the keystroke. This version restores original older functionality.
Bug Number: IN-180595. Previously on v2024.10 clients, macros were not working on Windows 11 (24H2) and WinServer 2022.
Bug Number: IN-180610. Previously on v2024.10 clients, creating a new user by copying a template did not work correctly.
Bug Number: IN-180631. Previously, after inserting a production cue in the story body (when the story displayed a visible scrollbar), switching focus back to the queue and attempting to then move the cursor within the queue view would fail; cursor focus would return to the story body. This could affect macro playback.
Enhancements The following were improvements in this release made to existing functionality:
Improvement Number: IN-180628. To improve key mapping in macros, the system now checks whether keys can be mapped to virtual keys before playing a macro or saving a toolbar macro, and notifies the user by displaying a confirmation message.
Fixed in Version 2024.10 The following issues have been resolved in MediaCentral | Newsroom Management v2024.10.
Bug Number: IN-179591. In previous versions, a toolbar button macro for queue path would exhibit unexpected behavior when run for a second time with auto-arrange disabled.
Bug Number: IN-179699. Previously, the MsgMailAlert feature did not work as documented in Appendix D of the Newsroom Management Setup and Configuration Guide. Now, enabling the Message Mail Alert feature allows you to change the alert behavior so that the iNEWS Workstation will flash message and/or mail alerts on the status bar for only 15 seconds, rather than persistently.
Bug Number: IN-179748. Previously, when logging in, users sometimes encountered "a networking error while checking the News Server version", which forced the user to log in again.
Bug Number: IN-179804. Now, when drag-and-dropping a MOS item from the HTML5 plugin, the content of the MOS item will be the same as drag-and-dropping a MOS item from an ActiveX plugin.
Bug Number: IN-179810. Previously, mismatched capitalization in the HTML5 plugin configuration could result in an “Unable to invoke Editor” error message when a user later tried to edit a MOS item.
Bug Number: IN-179822. Previously, if the client was closed while the HTML5 plugin was left open, then attempts to use the context menu to open/edit MOS items afterward would fail.
Fixed in Version 2024.10 Bug Number: IN-179825. In previous versions, data in the mos-obj id field is cleared when monitor is turned ON.
Bug Number: IN-179831. Previously, login attempts failed for NRCS tool users with a "space" in their password. "Space" characters are now allowed in the password.
Bug Number: IN-179836. In a previous version, a package is missing from the installer, which caused the FTS service to be unable to start.
Bug Number: IN-179890. In previous versions, In some previous versions, the ENDORSE-BY, CAM fields text color should reflect whether it is over or under; however, when the story with those fields was set to FLOAT, the color of the fields would change to black.
Bug Number: IN-179898. In previous versions, users sometimes got a message of story moved or removed while editing from the Cloud UX Rundown App.
Bug Number: IN-179903. Previously, if a user closes a workspace with active story form, iNEWS Workstation crashed due to de-refencing a null-pointer.
Bug Number: IN-179932. In some previous versions, iNEWS Workstation users might experience an instance where they are scrolling, such as by using the mouse wheel, through text and are automatically scrolled back to wherever the cursor stopped, thus compromising editing or copy/paste operations.
Bug Number: IN-179987. In previous versions, MOS Gateway COM session could not be created for the server in grace mode. A workaround was to copy /etc/pam.d/rxnet file to the same folder location, and rename copy to mgwcom.
Bug Number: IN-179989. In previous versions, having in the NSML body any text in the format of a comment, resulted in that story being inserted into the database with cut text.
Bug Number: IN-179994. In previous 2022 versions, users could not delete an entry in a column with an Endorse-by field property.
Bug Number: IN-179999. In some previous versions, wire stories might display a strange character right before opening double quotation marks.
Bug Number: IN-180012. The repeat macro has a new optional argument to set the number of executions, e.g. {repeat 4} will repeat the macro 4 times.
This will only work with 2024.10 clients; older clients may fail to execute the macro.
Bug Number: IN-180029. During the grace period, newly created wires and mgwcom sessions were not displayed in list output as expected.
Bug Number: IN-180030. During the grace period, MOS Admin would not log in a second time.
Fixed in Version 2024.10 Bug Number: IN-180033. Previously, a story merge error in the inewsctc would cause the inewsctc process to abort.
Bug Number: IN-180044. Previously for sites connected via the Community feature, users at sites that were running older versions could not manually copy a news story from the 2023.7 system.
Bug Number: IN-180067. In previous versions, a locked block would be created if the licensing server could not be reached when an iNEWS Workstation user requested a license.
Bug Number: IN-180072. In previous versions, if users signed onto the iNEWS Workstation without "-a" or "-b" and launched the HTML5 plugin, they will get an error of "Failed to load URL - http://.....".
Bug Number: IN-180073. Previously, if MOS Gateway was set up without a password for the user in the MosAdmin app, then MOS-related services (MosRoStorySendService and MosRouterService) would crash when MOS items were added to stories in a loaded rundown. Now, such misconfiguration is checked during service startup.
Bug Number: IN-180075. Previously, the users list from the User Management dialog would be printed without correct formatting.
Bug Number: IN-180092. Previously, the newsroom database might disappear from the Browse App during production peak times.
Bug Number: IN-180095. In previous versions, the response time of the Newsroom Management system, while using the Cloud UX Rundown App could sometimes be increased due to a lot of allocate session communications.
Bug Number: IN-180098. In previous versions, cybersecurity scanning activity during busy times could cause inewsctc to crash.
Bug Number: IN-180143. Previously, the timing on the status bar would stop counting after an activeX editor was launched.
Bug Number: IN-180144. Previously, if the W_WIRE_FORM token in /site/dict/words was changed to a form that did not exist, the wire device services would stop working.
Bug Number: IN-180188. In previous 2023.7 versions, for Newsroom Management systems using Flex licensing, users could not log onto iNEWS Workstations during the grace period when MediaCentral | Cloud UX was not available.
Bug Number: IN-180217. In previous versions, Cloud UX Rundown App users could not drag-and-drop stories from a remote server to a local server.
Bug Number: IN-180229. Previously, the iNEWS Workstation would sometimes crash when a user with a password longer than 12-characters logged in via Connect to Service.
Limitations and Defects for Earlier Versions Bug Number: IN-180304. In version 2023.7, applying a new license string with different session count could license to become temporarily invalid.
Bug Number: IN-180325. In previous versions, the Newsroom Management system would fail to process a story with usable URL, received from the Data Receiver wire instance, if the story received contained <a> </a> tags.
Bug Number: IN-180333. In previous versions, the iNEWS Workstation would sometimes crash when a user, prompted to save a story, answered No.
Bug Number: IN-180464. After upgrade to previous version, a dbrestore would fail to create some user accounts that fell alphabetically after either the dbmanager or umanager accounts.
Limitations and Defects for Earlier Versions This topic provides details on limitations discovered in earlier versions of Newsroom Management (formerly iNEWS), and not addressed in this release. Any available workaround procedures are also documented, when possible.
Grace Period Delay First discovered in v2023.7, at Newsroom Management sites with subscription licensing, when the
- MediaCentral Server transitions from online to offline, users at iNEWS Workstations may experience
a short delay at log in, while in grace period mode.
Incorrect Timing for Stories with a Predefined Form
- First discovered in v2023.3, when stories with a predefined form are ingested through the wire
server, the contents of all fields will not be preserved and could have incorrect timing information.
Diskcopy reports Critical Error If diskcopy reports messages “diskcopy: 17:09:59 [CRITICAL] first block mirror error: on block 66958 (5:Input/output error)” Users should check the message at the end of the log for actual status. “Successful
  - Disk is mirrored” indicates that the process completed successfully, and the error only indicates that
there are empty blocks that could not be copied.
Edit Locks Information about edit locks may contain a session identifier if the username is not known. This is the case for locks acquired though inewsctc API.
Information about a user who has an edit lock could be incorrect when the user signs off without releasing edit locks and signs on, reusing the same session.
> **Note:** The new user does not have the edit lock, and the lock will expire in its pre-defined timeout.
Invalid User Credentials Bug Number: IN- 7154. ∙ Previously, an error stating “Invalid User Name/Password” would appear if an older version of the iNEWS Workstation is used with version 2021.11 server, and if the server cannot acquire a session license from the MediaCentral Licensing server when subscription licensing is used. Now, you will get an error message stating “Cannot obtain new user session from Cloud UX (licensing server)”.
Limitations and Defects for Earlier Versions Internationalization Issues This topic provides details related to localization to various non-English languages.
Chinese IME Mode Avid recommends do not use key strokes in Chinese IME mode.
Chinese DaYi Chinese input method DaYi cannot be used to create new queues or folders.
Divehi Support With the new richedit control, sometimes the last line of text will align to the left for a right-aligned story.
Local Database To download print styles and story forms to your local computer for use when working offline, you must have Read Access to the Newsroom Management Server directories where styles and forms are located.
This is by design.
Localhost Server It is recommended to use localhost IP address "127.0.0.1" instead of alias "localhost" in case of telnet connection to localhost server.
Macros and Keystrokes Some PCs, when upgraded from older versions of Internet Explorer (such as IE 6, 7 or 8) will experience issues with macros that perform several functions in rapid succession; the macros might not complete all assigned activity in iNEWS. Avid is working with Microsoft on this issue, which is most apparent with macros that trigger the Local Print dialog box or the User Preferences dialog box.
Workaround: Place the name of the dialog box after the K_WINDOW token value immediately following the keystroke that opens the dialog box. For instance, instead of just {ctrl p} to open the Local Print dialog, the macro should be: {ctrl p}{window Local Printing}. The text following ‘window’ must match exactly the name of the dialog box as it appears in the title bar. The ‘K_WINDOW /window’ token can be changed in /site/dict/keymacros.
Another available workaround is to add {pause <#>} statements of one or two seconds to problem macros at the point in the macro where activity ceases. In the example of the Local Printing macros, the pauses are likely needed when typing a name of a printer or changing a print style.
MAP Story Limit The limit of devices for a rundown in the MAP story is 20. Having more than 20 devices configured for a rundown in the MAP story will result in a client crash when attempting to open the Monitor dialog.
MediaCentral Cloud UX Integration If the same Newsroom Management user name is used on multiple sessions on the same computer to log into MediaCentral | Cloud UX, it will only consume a single session.
Multiple Monitors If running the iNEWS client software on a dual monitor workstation, there are some key issues you could encounter:
Limitations and Defects for Earlier Versions If the application is maximized when closed, it will be maximized on the primary monitor when it is
- reopened, regardless of which monitor it was on when closed.
- Moving a user from a dual monitor machine to a single monitor machine, such as an undocked
laptop, could result in the application opening to a screen that no longer exists.
Workaround: Right click on iNEWS in the Windows taskbar and select Move. Then press one of the arrow keys on the keyboard; this will lock the application’s window to the mouse. You can then move the mouse pointer onto the screen and the iNEWS main window will move with it.
Netstation Bug Number: IN- 3269. ∙ Fields carried over from Avid Netstation template are skipped from indexing.
Plug-ins Some plug-ins may not paint correctly in Newsroom Management.
Workaround: Complete the following procedure to resolve the painting issue.
> **Note:** AMG Journalist is used in the procedure as a plug-in example.
1. In the iNEWS executable directory, create a new text file named ActiveXRedraw.txt.
- For 64 bit workstations, the directory is located at: C:\Program Files (x86)\Avid\iNEWS\
- For 32 bit workstations, the directory is located at: C:\Program Files\Avid\iNEWS\
2. Open the registry editor, using regedit in the Run dialog box.
3. Select Edit > Find > AMG Journalist and locate the CLSID for the plug-in.
- For 64 bit workstations, the CLSID is located at: Computer\HKEY_CLASSES_
ROOT\Wow6432Node\CLSID\
- For 32 bit workstations, the CLSID is located at: Computer\HKEY_CLASSES_ROOT\CLSID\
4. Take the CLSID, which is the folder name, and put it into the ActiveXRedraw.txt file.
Configuring Gmail SMTP Relay Server for Sendmail
5. Save the file.
6. Reload iNEWS. The painting problem for the plug-ins will be resolved.
UNC Paths As a result of the server-side URL changes in iNEWS 3.4.2, UNC paths with spaces no longer work
- correctly in the iNEWS client software. In a future version of the iNEWS client software, these links
will be client-only, allowing a user to launch them from the iNEWS Workstation without saving them as URLs on the iNEWS Server.
iNEWS integration with Intelliscribe printing should be configured at 300 DPI with "Enhanced
- Features" disabled. Setting a higher DPI or enabling enhanced features can cause long delays in
printing.
- There are screen painting issues when the Vertigo Xmedia plug-in and the Aurora Assignment List
plug-in (version 7 or later) are both installed on the same client. The Xmedia splash screen can cause the Xmedia tree to be inaccessible.
Workaround: When this issue occurs, the workaround is to rename or remove skinCrafter3_ vs2008.dll from the Assignment List installation directory.
Configuring Gmail SMTP Relay Server for Sendmail Configuring the Gmail SMTP relay server for sendmail involves generating a Gmail application password, updating the sendmail configuration, and adding lines to an authinfo file. The steps for these are in following subsections of this readme:
Generate Gmail Application Password To generate a Gmail application password:
1. Log in to you Gmail account and go to the Manage you Google Account page.
2. Go to the Security page.
3. Enable 2-Step Verification if it is not enabled yet.
4. Click on the App passwords link.
5. In the Select app drop-down menu, select Mail.
6. In the Select device drop-down menu, select Other.
7. Enter the name for your application, such as iNEWS.
8. Click GENERATE.
9. Copy your password from the pop-up window.
Update sendmail configuration To update the sendmail configuration:
Doc Errata
- Add the following lines to the /etc/mail/sendmail.mc file before the MAILER(smtp)dnl line:
dnl # dnl # Defining Gmail Smarthost for sendmail define(`SMART_HOST',`[smtp.gmail.com]')dnl define(`RELAY_MAILER_ARGS', `TCP $h 587')dnl define(`ESMTP_MAILER_ARGS', `TCP $h 587')dnl define(`confAUTH_OPTIONS', `A p')dnl TRUST_AUTH_MECH(`EXTERNAL DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl FEATURE(`authinfo',`hash -o /etc/mail/authinfo')dnl Modify the AuthInfo File To modify the AuthInfo file:
1. Add the following lines to the /etc/mail/authinfo file
AuthInfo: "U:smmtp" "I:EMAIL" "P:PASSWORD" Replace the above 'EMAIL' and 'PASSWORD' with your actual Gmail email and application password.
2. Create database map from authinfo file using makemap utility as below:
$ sudo makemap hash /etc/mail/authinfo </etc/mail/authinfo
3. You may now generate the final sendmail configuration and restart the service by entering the
following commands as a root:
$sudo sendmailconfig $ systemctl restart sendmail.service Doc Errata MediaCentral Newsroom Management Setup and Configuration Guide In Appendix A of the 2023.3 version of the guide, in the Job List Commands section, the command bpoll has the following note:
> **Note:** This feature is only enabled if the environment variable RESTARTDURINGPOLLINGPERIOD=1 is set in
/site/action.
The wording /site/action should be /site/env/action:
> **Note:** This feature is only enabled if the environment variable RESTARTDURINGPOLLINGPERIOD=1 is set in
/site/env/action.
Technical Support Information Technical Support Information Most products feature a number of coverage options. Avid Assurance service offerings are designed to facilitate your use of Avid solutions. Service options include extended telephone coverage, automatic software maintenance, extended hardware warranty, and preferred pricing on replacement parts.
Offerings and options may vary by product and are not available for all products.
For more information regarding Avid service offerings, visit www.avid.com/support or call Avid Sales at 800-949-AVID (800-949-2843).
Program availability and details might vary depending on geographic location and are subject to change without notice. Contact your local Avid office or your local Avid Reseller for complete program information and pricing. However, if you need help locating an Avid office or Avid Reseller near you, please visit www.avid.com or call in North America 800-949-AVID (800-949-2843). International users call 978-275- 2480.
Accessing Online Support Avid Online Support is available 24 hours per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read/join online message-board discussions.
To access Avid Online Support:
- Go to www.support.avid.com.
> **Note:** Supplemental documentation for this release, if available, is provided on the Knowledge Base. For the
latest up-to-date information, browse the Knowledge Base at Avid Online Support.
Technical Support Information