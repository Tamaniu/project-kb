---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2026.4"
release-date: 01/04/2026
doc-type: readme
source: pdf
confidentiality: public
date-added: 08/06/2026
status: current
---

k Avid MediaCentral | Newsroom Management Version 2026.4 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
> **Note:** The content herein applies to the aforementioned version, and contains the latest information that
might not have been available when product guides were published. However, for previous versions, users should reference older ReadMe documentation for additional information related to those earlier releases.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Newsroom Management documentation (all releases):
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-Newsroom-Management Revision History Date Revised Changes Made May 2026 Initial publication: Updated compatibility content, and added new features and fixed issues for 2026.4 Security Guidelines Security Guidelines Avid allows you to install an endpoint detection and response solution on your Newsroom Management system. This applies to both single-server and cluster environments. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page: https://kb.avid.com/articles/en_US/troubleshooting/en239659 Compatibility Notes and Issues This section contains compatibility information. Specific versions are mentioned when pertinent.
Workstation & Server Compatibility Chart The following charts show the compatibility matrix for client/server versions of Newsroom Management.
Typically, older client versions may be used to log in to servers of the same or newer versions. However, newer client versions cannot be used to log in to servers with older versions.
Each column represents Server Versions, while rows represent Client Versions.
MCNM 2024.10.x 2026.4 2024.10.x A A 2026.4 NA A 1A = Allowed | NA = Not Allowed
> **Note:** For information about compatibility of earlier versions, please refer to the ReadMe documentation
for those earlier releases. Also, for the latest, most up-to-date information on Avid systems compatibility, see the MediaCentral Compatibility Matrix available on the Avid Knowledge Base at: https://resources.avid.com/SupportFiles/Attachments/MediaCentral_Compatibility_Matrix.pdf.
Qualified Operating Systems Avid performs extensive testing on specific hardware and/or software to verify full compatibility with Newsroom Management. Those that pass these tests are considered qualified by Avid.
Newsroom Management Server Newsroom Management Server (formerly called iNEWS Server) is qualified and supported for use with Ubuntu 24.04 LTS only. Avid recommends the servers be kept up-to-date with the latest patch to avoid any vulnerability issues in the Linux kernel.
> **Note:** Avid also recommends using an NTP server to sync time between servers if your configuration
consists of more than one server to avoid story lock/saving issues.
iNEWS Workstation The client software is compatible for use on Windows 11. This version of Newsroom Management is not officially supported for use on any other Windows operating system.
> **Note:** This version of iNEWS Workstation uses Chromium Embedded Framework version 116.
Compatibility Notes and Issues Servers and Operating Systems Compatibility Matrix The following matrix displays compatibility information for Newsroom Management version 2024.10.7 and later.
> **Note:** For previous versions, not shown here, please refer to the ReadMe documentation for those earlier
releases.
> **Note:** Not shown in matrix, Windows Server 2025 (or Windows Server 2022) with Tomcat 10.0 is qualified
for WSAPI and FileLink server.
Other Supported Avid Systems Command The Newsroom Management Server is compatible for use with Command version 2022.3 for proper integration with the VID-DURATION feature.
Data Receiver Version 3.6 of Data Receiver Server is supported for use on Windows Server 2025 (or Windows Server 2022). Data Receiver Administrator Application is additionally supported for Windows 11.
This version of Data Receiver is not supported on any other Windows operating system.
External Users (LDAP) This version is tested with LDAP TLS.
Fast Text Search (FTS) Version 4.3 or later of FTS is required for this version of Newsroom Management Server on both Windows Server 2022 and 2025.
FTS is compatible in a virtualized environment when the guest OS instance meets the application's minimum system requirements.
Media | Index Newsroom Management version 2024.10 or later is only supported with Kafka for MediaCentral | Cloud UX search.
MOS Gateway MOS Gateway is qualified with Windows 2025 (or Windows 2022).
Deprecations The Newsroom Management system is compatible with MOS Gateway 2022.3 for subscription licensing.
Port 921 should be enabled for MOS Gateway communication. Please refer to the MOS Gateway Operations Guide for how to configure the port if needed to use a different port.
Virtualization Environments The Newsroom Management Server software is supported in a virtualized environment.
Minimum specifications are provided in the Avid iNEWS Server Enterprise Virtualization Reference Guide for the Newsroom Management Server (iNEWS), the FTS/Data Receiver Server, Command Server, and MOS Gateway Server.
Deprecations This section lists software components that are deprecated.
iNEWS Web Services API (WSAPI) With the Newsroom Management 2026.4 release, the Newsroom Connectivity Toolkit Connector for the MediaCentral | Media Suite API (iNEWS CTC) will reach feature parity with the existing iNEWS Web Services API.
As a result, the iNEWS Web Services will be deprecated starting with the 2026.4 LTM release.
What does this mean?
iNEWS CTC becomes the recommended integration path going forward
- iNEWS Web Services will be maintained for the 2026.4 LTM
- For information on the MediaCentral | Media Suite API please visit the related section on the Avid
Developer site (developer.avid.com) that include Quick Start, Concepts, and a How-To for getting familiar as well as the API Reference of available Connectivity Toolkit Connectors.
Install and Upgrade Notes and Issues Install and Upgrade Notes and Issues This section contains pertinent information specifically related to upgrading from previous versions of the software to the latest version represented by this ReadMe.
For a standard upgrade procedure of the server, see chapter “Upgrading the Newsroom Management Server” in the Newsroom Management Install Quick Guide.
> **Note:** The database migration, described in the guide, is not required for all server updates.
The required preparation before deploying a new client version is described in that same guide, in the chapter “Upgrading the iNEWS Workstation (Client)”.
Known Install Issue Bug Number: IN- 181029. When running the installation script (./install), you may see syntax warnings about an invalid escape sequence; these are printed by an included third-party Python library and do not indicate an actual problem with the installation. No action is required.
Upgrading to 2026.4 Upgrading from 2024.10.x to 2026.4 does not require a database migration; however, you should still do a backup before conducting the update.
> **Note:** The upgrade might fail if the system is not updated to the latest patch or not rebooted (such as
upgrade utility / workserver port conflicts).
To update to 2026.4:
1. Back up the database.
2. Update Ubuntu 22.04 to the latest patches.
> **Note:** Do not forget that you may need to enable updates and clean up old kernels from /boot
folder.
3. Reboot the system.
4. Upgrade to Ubuntu 24.04 and latest patches (currently 24.04.4)
5. Reboot the system.
6. Update Newsroom Management.
> **Note:** Ubuntu 24.04 enables Transport Layer Security (TLS) 1.3 and TLS 1.2. TLS 1.0 and TLS 1.1—both
of which were deprecated in March 2021 by the IETF (RFC8996)—are disabled by default, and the iNEWS installer will not enable them.
Enabling Older TLS Versions on Older iNEWS Workstations All iNEWS Workstations running client software versions 2024.10 and later support TLS 1.3 and TLS 1.2.
However, iNEWS Workstations on version 2023.7 support only TLS 1.0.
Using old TLS versions or unencrypted password transfers are a security risk.
Still, there are two options for enabling TLS 1.0 or TLS 1.1 on older clients.
Enable TLS 1.0 and 1.1 on all iNEWS servers in /etc/ssl/openssl.cnf Downgrade Notes and Issues [ssl_sect] system_default = system_default_sect [system_default_sect] MinProtocol = TLSv1 CipherString = DEFAULT:@SECLEVEL=0 Utilize no encryption on the client by setting the UseEncryption environment variable on the workstation.
Registry DWord UseEncryption = 0 in HKLM \SYSTEM\CurrentControlSet\ Control\Session Manager\Environment Upgrading to Earlier Versions Please consult the ReadMe documentation of previous releases for upgrade information pertaining to all versions prior to this release.
Downgrade Notes and Issues This section contains information related to downgrading to previous versions of the software.
2026.4 Downgrading to 2024.10.x from 2026.4 requires a re-installation, as Ubuntu does not support a downgrade of version 24.04 to 22.04.
2024.10.5 Downgrading to previous 2024.10.x from 2024.10.5 is a standard downgrade.
2024.10.4 Downgrading to 2024.10 from 2024.10.4 is a standard downgrade.
2024.10 Downgrading to a previous version from 2024.10 requires the old isam and database file be restored from backup. Contact Avid Customer Support for assistance.
New Features in 2026.4 This topic provides an overview of the major new features in this release of Newsroom Management.
On the Newsroom Management Server Feature Description CTC to INWS parity API for topline messaging is now available via iNEWS CTC. Now all functionality provided by the Newsroom Management Web Services API is supported by iNEWS CTC.
Notification filtering The iNEWS notify server now includes the folder or queue path as “common:path” enhancement in Kafka notifications. This allows Kafka consumers to filter for specific queues or folders.
New Features in 2026.4 On the iNEWS Workstation Feature Description Copying color rules The menu Tools > Options > Colors now has new submenu options. Now, the between themes submenu options for color rules are:
- Edit Rules - This opens the Color Rule dialog.
- Reset Rules - This resets all color rules of the current theme to their defaults.
- Copy Rules from Theme - This lets you copy all color rules defined for
another theme as rules for the current theme.
> **Note:** For more information, see "Changing Workspace Color Settings" in the
Newsroom Management User Guide.
New options in User The User Preferences dialog now includes property pages for Mail and Spelling Preferences dialog options. Administrators can set default values in User Preferences when creating or modifying a user account.
> **Note:** For more information, see "Changing User Preferences" in the Newsroom
Management User Guide.
Uppercase spell Spell checking of uppercase words will now suggest corrections in all uppercase checking improved letters.
Users can now decide to ignore uppercase words by selecting (checking) the "Ignore Words in Uppercase" context menu option.
Dialog resizing iNEWS Workstation will now display a frame while resizing or moving a dialog box, as shown in the following example:
New Features in 2026.4 Feature Description This is similar to turning the Windows performance option “Show windows contents while dragging” off.
The drawing of the dialog content for Newsroom Management can be enabled by LiveResizing Computer\HKEY_ setting the key to 1 in Registry setting:
CURRENT_USER\Software\Avid Technology\iNEWS
> **Note:** For more information, see "LiveResizing" in Appendix D of the Newsroom
Management Setup and Configuration Guide.
Timing clock modes The Tools > Show Timing menu now displays the timing clock mode (in parentheses) indicating how the user activated the clocks:
- When Tools > Show Timing is used to activate the clocks and control the
rundown's show timing, the menu will display:
- When View > Toolbars is used to display the show timing clocks, the
Tools > Show Timing menu will display:
Fixed in Version 2026.4 Feature Description Diagnostic Collection To help with troubleshooting issues on the workstation, a new script and build are Script and a Workstation available to collect diagnostic information. The PowerShell script is used to Diagnostic Build configure diagnostic logging and enable Windows Error Reporting (WER) crash dump collection.
iNEWS Workstation Diagnostic Build contains additional information (debug symbols) for client and libraries. Using the diagnostic build improves the quality of crash dump analysis and significantly.
> **Note:** The distribution has two types of workstation installs: the regular
iNEWS Workstation and the diagnostic build. The diagnostic build comes with its own ReadMe file called "ReadMe.md", which explains when and how to use the script and build.
Fixed in Version 2026.4 The following issues have been resolved in MediaCentral | Newsroom Management v2026.4.
Bug Number: IN-6390. A limitation, documented in previous versions, pertaining to the list of plugins (via Tools > Plugins) not refreshing when connecting the client to different servers, is fixed.
Bug Number: IN-180793 and IN-180991. Previously, differences in Identity Provider behavior could cause a doubling of user account creation. For example, if you logged into the Newsroom Management system for the first time in an IdP environment—either using the user name john.doe or the email address john.doe@wavd.com—the system would create a Newsroom Management user account called john.doe. If you were to then log into Cloud UX, it would create an email address account, john.doe@wavd.com, because it would not recognize the already existing john.doe account.
Bug Number: IN-180861. Previously, the iNEWS Workstation did not properly handle macro recursion (macro within a macro) during playback.
Bug Number: IN-180864. Group checking is now properly reporting recursive group definitions.
Bug Number: IN-180865, IN-180899, IN-180901, IN-180935, IN-180950, IN-180952, IN-180975, and IN-
180982. Previously, some sites experienced several instances of crashes caused by access to non-
initialized or freed-up resources. These have been fixed. Additionally, Windows messaging for re-entrance issues were addressed by now using non-modal dialogs for error messages.
Bug Number: IN-180867. Toolbar states of the classic theme are now automatically transferred to Light and Dark theme, if there are no new toolbar settings present.
Fixed in Version 2026.4 Bug Number: IN-180869. Previously, preselection in combo-boxes did not work with non-alphanumerical characters. This has been fixed. Preselection based on text in edit box has been added.
Bug Number: IN-180872. In a previous version, the iNEWS Workstation would crash if the user opened the Print dialog while screen scaling was set above 100%.
Bug Number: IN-180873 and IN-180887. In some previous versions, zooming into the Story panel and scrolling, either by dragging the bar or using the mouse wheel, as soon as the user stopped scrolling, the screen would jump back to the original cursor location in the story.
Bug Number: IN-180885. Previously, while some users were working with plug-ins, the iNEWS Workstation displayed "Out of Memory" error messages. This version has improved GDI resource management to address the issue.
Bug Number: IN-180890. In previous versions, the iNEWS Workstation could crash during DPI Changed processing. Also during application exiting when some users closed the iNEWS Workstation, the software would crash, causing "crash dumps" to be generated.
Bug Number: IN-180904. In some previous versions, iNEWS Workstation now uses modified User Account Control (UAC) policies. UAC virtualization is now disabled, allowing plugins to write to the Windows Registry instead of a virtualized area, which may have caused plugins to crash. The UAC execution level for plugins is now set to the same as the workstation.
Bug Number: IN-180906. In previous versions, a macro that opened a menu would fail if the mouse pointer was positioned over the space occupied by the opened menu.
Bug Number: IN-180926 and IN-181002.In previous versions, incorrect font size and printable area calculations affected print output, resulting in issues when printing concatenation sheets. These calculations have been fixed to prevent the issues from recurring.
Bug Number: IN-180928. In versions 2024.10.5 and 2024.10.6, spacebar functionality in read-only clients quit working as expected while a producer was timing a show at another workstation. It now works as expected—and does not advance the timing bar. In addition, the mode of Show Timing– Control or View only– is now indicated on the Show Timing menu item in the Tools menu.
Bug Number: IN-180930. In some previous versions, using Alt-Page-Up and Alt-Page-Down while zoomed in (Alt-Z) to the Story panel with the focus in a production cue, generated an "Encountered an improper argument" message.
Bug Number: IN-180931.The Title Entry combo-box drop-down list now resizes to fit the content of the entry, but still not exceeding the edge of dialog.
Bug Number: IN-180951. In some previous versions, if a user started the iNEWS Workstation application multiple times and each time closed the application by clicking the X button (in top-right corner) without selecting "Connect" first, then each time, an new additional iNEWS Workstation (32bit) process would remain resident in the Task Manager, requiring manual removal.
Fixed in Version 2026.4 Bug Number: IN-180954. Previously, the Edit Lock icon didn’t appear in the status bar (of classic theme) when Windows scaling was set to 125% or 150%. It now appears correctly when set to 100% or scaled to anything above 100%.
Bug Number: IN-180958. In some previous versions, delays in loading speeds for stories containing a large number of production cues were observed.
Bug Number: IN-180963. Parsing of style settings for colors have been fixed. The setting name “WinColrPI” has been corrected to “WinColorPI”.
Bug Number: IN-180971. Redrawing of the queue panel has been reduced for a steadier user interface during updates by other users.
Bug Number: IN-180972. Previously, in version 2024.10.6, the Queue panel became unresponsive if a user double-clicked in the Story Group column while selecting a queue that contained a large number of stories.
Bug Number: IN-180973. CTC now has improved handling of story identifiers when receiving search results from FTS.
Bug Number: IN-180978. In previous versions, whenever the logs written by programs ftssearch.exe and ftsindex.exe reached 10 MB, those executable programs crashed.
Bug Number: IN-180979. Users can now display the show timing (follow the show) without the need to have the permission to re-order stories. The permission is still required to perform Sync Timing.
Bug Number: IN-180981. In version 2024.10.5, some sites experienced issues where Chinese characters were lost in stories uploaded via FTP to a Newsroom Management system.
Bug Number: IN-180985. In previous versions 2024.10.5 and 2024.10.6, drag-and-dropping a story to a custom toolbar button with a Navigate To function would not work; the story was not copied to the destination.
Bug Number: IN-180989. In version 2024.10.6, the last-added plugin would remain active but its window would appear invisible after a saved session was loaded, preventing the user from relaunching the plugin.
Bug Number: IN-180990. Rxnet logging now provides more verbose details, including directory listings, instead of brief summaries.
Bug Number: IN-180992. Color rules do not reset anymore on theme changes. In addition, the following two improvements have been added:
Users can copy color rules from another theme to the current theme, easing the migration of color
- rules.
Users can reset all color rules of a theme to their default values, instead on each color rule
- individually.
Limitations and Defects for Earlier Versions Bug Number: IN-180998. Previously, after modifying content in a Story Form field, attempting to highlight text in the story body with the mouse would fail.
Bug Number: IN-181003. Tracking of modifiers has been reworked to disable interferences of user input while macros are running. After playing a macro that opens a new workspace, the user will need to release and press key including modifiers again for the modifiers to take effect.
Bug Number: IN-181014. Previously, the Directory panel would not automatically scroll along with the mouse pointer when a user dragged an item down the directory listing that was expanded beyond the onscreen panel.
Bug Number: IN-181021. In the previous 2024.10.7 version, the iNEWS Workstation could crash during attempts to reconnect to another system.
Bug Number: IN-181034 and IN-181038. In previous versions, users experienced issues where the “Save Old Versions” configuration in Queue Properties did not appear to be honored. When navigating to a specific queue and accessing Properties > Maintain > Save Old Versions, any selected option other than Save All (such as Save None, Save Previous or Save Original) behaved as if “Save All” was consistently applied.
Bug Number: IN-181035. Previously, for site running version 2024.10.5 with MediaCentral Flex Licensing, Newsroom Management systems would lose connection to Cloud UX and enter grace period, which would require a reboot to re-establish connectivity.
Bug Number: IN-181039. Previously, after previewing a story containing a production cue and hovering the mouse cursor near the cue icon, using Shift+Click to select multiple stories in the Queue panel would not highlight selections properly.
Bug Number: IN-181044. Previously, some users were unable to obtain all edit locks, receiving an "Internal Error: unrecognized error code: 9" message when saving iNEWS stories in Cloud UX.
Bug Number: IN-181049. In the previous 2024.10.7 version, with an HTML plugin open, if a user navigated to a remote Community queue and performed a search, that search would fail.
Bug Number: IN-181050. In version 2024.10.7, sometimes the production cue did not update correctly when a user navigated between stories using keyboard arrow keys for up and/or down. When moving through stories that contained production cues, the queue continued to display elements from the previously selected story instead of updating to reflect the currently highlighted story.
Bug Number: IN-181055. Custom color rules do not reset to default anymore on theme changes.
Limitations and Defects for Earlier Versions This topic provides details on limitations discovered in earlier versions of Newsroom Management (formerly iNEWS), and not addressed in this release. Any available workaround procedures are also documented, when possible.
Limitations and Defects for Earlier Versions Microsoft IME Issue Bug Number: IN-180929. Previously, in 2024.10.x versions, users on systems localized for Chinese reported when modifying a story’s form field, typing the first time only permitted input in English. The user was forced to select another field and then return to the prior form field to input Chinese language. This behavior matches issues reported in Windows 11 where the operating system fails to "hand off" input control to the IME on first click.
Workaround: While Microsoft continues to release patches related to this issue, here's the most effective workaround:
1. Check for Windows Updates: Microsoft released specific fixes in late 2025 (such as KB5062660 and
KB5070773) to address these exact focus-shift bugs. Please ensure your system is fully up to date via Windows Update.
2. Enable IME Compatibility Mode: This is the most successful workaround for these types of issues.
a. Go to Settings > Time & language > Language & region.
b. Click the Elipses (...) next to your Chinese language and select Language options.
c. Find the Microsoft IME settings and, under General, toggle "Use previous version of Microsoft IME" to On.
3. Restart the IME Service: If the IME feels "stuck," you can force it to reset. Open Task Manager, find
CTF Loader (ctfmon.exe), and end the task. Windows will instantly restart it, which usually clears any focus hangs.
4. The "Keyboard Toggle" Shortcut: Sometimes, a quick toggle using Win + Space to switch away and
back to the Chinese keyboard will force the IME to recognize the active text field without you having to click around.
Copying Toolbar Settings When copying from a template user to your own user, while logged in, the toolbar settings will not be applied.
Diskcopy reports Critical Error If diskcopy reports messages “diskcopy: 17:09:59 [CRITICAL] first block mirror error: on block 66958 (5:Input/output error)” Users should check the message at the end of the log for actual status. “Successful
  - Disk is mirrored” indicates that the process completed successfully, and the error only indicates that
there are empty blocks that could not be copied.
Edit Locks Information about edit locks may contain a session identifier if the username is not known. This is the case for locks acquired though inewsctc API.
Information about a user who has an edit lock could be incorrect when the user signs off without releasing edit locks and signs on, reusing the same session.
> **Note:** The new user does not have the edit lock, and the lock will expire in its pre-defined timeout.
Limitations and Defects for Earlier Versions Grace Period Delay First discovered in v2023.7, at Newsroom Management sites with subscription licensing, when the
- MediaCentral Server transitions from online to offline, users at iNEWS Workstations may experience
a short delay at log in, while in grace period mode.
Incorrect Timing for Stories with a Predefined Form First discovered in v2023.3, when stories with a predefined form are ingested through the wire
- server, the contents of all fields will not be preserved and could have incorrect timing information.
Invalid User Credentials Bug Number: IN- 7154. ∙ Previously, an error stating “Invalid User Name/Password” would appear if an older version of the iNEWS Workstation is used with version 2021.11 server, and if the server cannot acquire a session license from the MediaCentral Licensing server when subscription licensing is used. Now, you will get an error message stating “Cannot obtain new user session from Cloud UX (licensing server)”.
Internationalization Issues This topic provides details related to localization to various non-English languages.
Chinese IME Mode Avid recommends do not use key strokes in Chinese IME mode.
Chinese DaYi Chinese input method DaYi cannot be used to create new queues or folders.
Divehi Support With the new richedit control, sometimes the last line of text will align to the left for a right-aligned story.
Local Database To download print styles and story forms to your local computer for use when working offline, you must have Read Access to the Newsroom Management Server directories where styles and forms are located.
This is by design.
Localhost Server It is recommended to use localhost IP address "127.0.0.1" instead of alias "localhost" in case of telnet connection to localhost server.
Macros and Keystrokes Some PCs, when upgraded from older versions of Internet Explorer (such as IE 6, 7 or 8) will experience issues with macros that perform several functions in rapid succession; the macros might not complete all assigned activity in iNEWS. Avid is working with Microsoft on this issue, which is most apparent with macros that trigger the Local Print dialog box or the User Preferences dialog box.
Workaround: Place the name of the dialog box after the K_WINDOW token value immediately following the keystroke that opens the dialog box. For instance, instead of just {ctrl p} to open the Local Print dialog, the macro should be: {ctrl p}{window Local Printing}. The text following ‘window’ must match exactly the name of the dialog box as it appears in the title bar. The ‘K_WINDOW /window’ token can be changed in /site/dict/keymacros.
NRCS Tool Another available workaround is to add {pause <#>} statements of one or two seconds to problem macros at the point in the macro where activity ceases. In the example of the Local Printing macros, the pauses are likely needed when typing a name of a printer or changing a print style.
MAP Story Limit The limit of devices for a rundown in the MAP story is 20. Having more than 20 devices configured for a rundown in the MAP story will result in a client crash when attempting to open the Monitor dialog.
MediaCentral Cloud UX Integration If the same Newsroom Management user name is used on multiple sessions on the same computer to log into MediaCentral | Cloud UX, it will only consume a single session.
Multiple Monitors If running the iNEWS client software on a dual monitor workstation, there are some key issues you could encounter:
- If the application is maximized when closed, it will be maximized on the primary monitor when it is
reopened, regardless of which monitor it was on when closed.
- Moving a user from a dual monitor machine to a single monitor machine, such as an undocked
laptop, could result in the application opening to a screen that no longer exists.
Workaround: Right click on iNEWS in the Windows taskbar and select Move. Then press one of the arrow keys on the keyboard; this will lock the application’s window to the mouse. You can then move the mouse pointer onto the screen and the iNEWS main window will move with it.
Netstation Bug Number: IN- 3269. ∙ Fields carried over from Avid Netstation template are skipped from indexing.
NRCS Tool Bug Number: IN- 180732. ∙ The NRCS Tool allows login for users with names up to 20 characters, but not any longer. The API used by Media Composer for story locking does not support longer names and is deprecated.
Workaround: Ensure account user names are 20 characters or shorter, even when using external IDPs, such as Okta or KeyCloak.
Plug-ins Some plug-ins may not paint correctly in Newsroom Management.
Workaround: Complete the following procedure to resolve the painting issue.
> **Note:** AMG Journalist is used in the procedure as a plug-in example.
1. In the iNEWS executable directory, create a new text file named ActiveXRedraw.txt.
- For 64 bit workstations, the directory is located at: C:\Program Files (x86)\Avid\iNEWS\
- For 32 bit workstations, the directory is located at: C:\Program Files\Avid\iNEWS\
2. Open the registry editor, using regedit in the Run dialog box.
Configuring Gmail SMTP Relay Server for Sendmail
3. Select Edit > Find > AMG Journalist and locate the CLSID for the plug-in.
- For 64 bit workstations, the CLSID is located at: Computer\HKEY_CLASSES_
ROOT\Wow6432Node\CLSID\
- For 32 bit workstations, the CLSID is located at: Computer\HKEY_CLASSES_ROOT\CLSID\
4. Take the CLSID, which is the folder name, and put it into the ActiveXRedraw.txt file.
5. Save the file.
6. Reload iNEWS. The painting problem for the plug-ins will be resolved.
UNC Paths
- As a result of the server-side URL changes in iNEWS 3.4.2, UNC paths with spaces no longer work
correctly in the iNEWS client software. In a future version of the iNEWS client software, these links will be client-only, allowing a user to launch them from the iNEWS Workstation without saving them as URLs on the iNEWS Server.
- iNEWS integration with Intelliscribe printing should be configured at 300 DPI with "Enhanced
Features" disabled. Setting a higher DPI or enabling enhanced features can cause long delays in printing.
There are screen painting issues when the Vertigo Xmedia plug-in and the Aurora Assignment List
- plug-in (version 7 or later) are both installed on the same client. The Xmedia splash screen can
cause the Xmedia tree to be inaccessible.
Workaround: When this issue occurs, the workaround is to rename or remove skinCrafter3_ vs2008.dll from the Assignment List installation directory.
Configuring Gmail SMTP Relay Server for Sendmail Configuring the Gmail SMTP relay server for sendmail involves generating a Gmail application password, updating the sendmail configuration, and adding lines to an authinfo file. The steps for these are in following subsections of this readme:
Configuring Gmail SMTP Relay Server for Sendmail Generate Gmail Application Password To generate a Gmail application password:
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
- Add the following lines to the /etc/mail/sendmail.mc file before the MAILER(smtp)dnl line:
dnl # dnl # Defining Gmail Smarthost for sendmail define(`SMART_HOST',`[smtp.gmail.com]')dnl define(`RELAY_MAILER_ARGS', `TCP $h 587')dnl define(`ESMTP_MAILER_ARGS', `TCP $h 587')dnl define(`confAUTH_OPTIONS', `A p')dnl TRUST_AUTH_MECH(`EXTERNAL DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl FEATURE(`authinfo',`hash -o /etc/mail/authinfo')dnl Modify the AuthInfo File To modify the AuthInfo file:
1. Add the following lines to the /etc/mail/authinfo file
AuthInfo: "U:smmtp" "I:EMAIL" "P:PASSWORD" Replace the above 'EMAIL' and 'PASSWORD' with your actual Gmail email and application password.
2. Create database map from authinfo file using makemap utility as below:
$ sudo makemap hash /etc/mail/authinfo </etc/mail/authinfo
3. You may now generate the final sendmail configuration and restart the service by entering the
following commands as a root:
$sudo sendmailconfig $ systemctl restart sendmail.service Doc Errata Doc Errata MediaCentral Newsroom Management Setup and Configuration Guide In Appendix A of the 2023.3 version of the guide, in the Job List Commands section, the command bpoll has the following note:
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
> **Note:** Supplemental documentation for this release, if available, is provided on the Knowledge Base. For
the latest up-to-date information, browse the Knowledge Base at Avid Online Support.
Technical Support Information