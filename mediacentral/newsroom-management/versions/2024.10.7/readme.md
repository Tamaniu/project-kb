---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2024.10.7"
doc-type: readme
source: pdf
source-file: MCNM_2024.10.7_ReadMe.pdf
confidentiality: public
date-added: 27/04/2026
last-updated: 27/04/2026
status: current
products-affected: [mediacentral-newsroom-management, inews-workstation, wsapi, mos-gateway, data-receiver, fts, kafka]
feature-tags: [readme, compatibility, upgrade, new-features, bug-fixes, limitations, smtp, idp, kafka, themes, chromium, cloud-ux]
---

# MediaCentral | Newsroom Management — ReadMe v2024.10.7

**Source PDF:** MCNM_2024.10.7_ReadMe.pdf
**Document revised:** 09/03/2026
**KB article index:** <https://kb.avid.com/articles/en_US/user_guide/MediaCentral-Newsroom-Management>

> This ReadMe is a cumulative document covering all patches in the 2024.10.x release series.
> For earlier releases, refer to the ReadMe documentation for those versions.

---

## Revision History

| Date | Changes |
|---|---|
| March 2026 | Added compatibility updates, new features, fixed issues & limitation workaround for 2024.10.7 |
| December 2025 | Added fixed issues for 2024.10.6 |
| November 2025 | Added compatibility updates, fixed issues, etc. for 2024.10.5 |
| June 2025 | Added some new features and fixed issues for 2024.10.4 |
| May 2025 | Added fixed issues & upgrading procedure for 2024.10.3 |
| March 2025 | Added fixed issues & upgrading procedure for 2024.10.2 |
| March 2025 | Added fixed issues & upgrading procedure for 2024.10.1 |
| October 2024 | Initial publication: compatibility content, new features and fixed issues for 2024.10 |

---

## Security Guidelines

Avid allows installation of an endpoint detection and response solution on Newsroom Management systems (single-server and cluster). Avid does not support a specific solution but general guidelines for CrowdStrike Falcon are available:
<https://kb.avid.com/articles/en_US/troubleshooting/en239659>

---

## Compatibility

### Build Number Reference

| Version | Build Number |
|---|---|
| 2024.10.7 | 10.2.2 |
| 2024.10.6 | 10.2.1 |
| 2024.10.5 | 10.2 |
| 2024.10.4 | 10.1 |
| 2024.10.x | 10.0.x |
| 2023.7.x | 9.1.x |

### Client / Server Compatibility Matrix

| Client \ Server | 2023.7.x | 2024.10.x |
|---|---|---|
| 2023.7.x | A | A |
| 2024.10.x | NA | A |

A = Allowed · NA = Not Allowed

> **Note:** A 2024.10.x client cannot be used to log in to a 2023.7.x server. For compatibility of
> earlier versions, refer to the ReadMe for those releases. Latest compatibility matrix:
> <https://resources.avid.com/SupportFiles/Attachments/MediaCentral_Compatibility_Matrix.pdf>

### Newsroom Management Server

- Qualified OS: **Ubuntu 22.04 LTS only**
- Avid recommends keeping servers up-to-date with latest patches to avoid Linux kernel vulnerabilities
- If configuration has more than one server, a NTP server is recommended to sync time and avoid story lock/saving issues

### iNEWS Workstation

- Compatible with **Windows 10 and Windows 11** only
- Updated to **Chromium Embedded Framework (CEF) version 116** in this release
- Not officially supported on any other Windows OS

### Additional Component Compatibility

| Component | Supported OS / Version | Notes |
|---|---|---|
| WSAPI | Windows Server 2022, Windows Server 2025 | Requires Tomcat 10.0 with Java 17 |
| MOS Gateway | Windows Server 2022, Windows Server 2025 | Requires v2022.3 for subscription licensing; Port 921 |
| Data Receiver | Windows Server 2022, Windows Server 2025 | Version 3.5 |
| Full Text Search (FTS) | — | v4.1 or later required |
| Command (VID-DURATION) | — | Version 2022.3 required |
| Virtualisation | — | Supported; see iNEWS Server Enterprise Virtualisation Reference Guide |

---

## Upgrade and Downgrade Paths

### Upgrading to 2024.10.7

- Standard upgrade path is **from 2024.10.5 or later**
- The iNEWS Workstation client version for 2024.10.7 is **10.2.11**
- 2024.10.6 was a **client-only update** (no server changes in 2024.10.6)

### Upgrading from 2023.7.x or 2023.3.x to 2024.10

- Requires **isam migration** and a **database migration** — not a simple in-place upgrade
- Review the upgrade procedure fully before proceeding

### Downgrade Restrictions

- Downgrading from **2023.3 to 2022.12 is NOT supported** without a full reinstall and backup restore

---

## New Features in Version 2024.10.7

| Feature | Description |
|---|---|
| Notification filtering | Kafka notification filtering enhanced to support filtering on the `common:path` field |
| Dialog resizing | Dialogs can now be resized using the `LiveResizing` registry key |
| Copying colour rules between themes | Users can now copy colour rules from one theme to another, easing migration of colour settings |

---

## New Features in Version 2024.10.5

| Feature | Description |
|---|---|
| Config files loaded by services | Services now load config files directly; `maketab` and `makemontab` commands are no longer required after config changes |
| Windows Server 2025 support | MOS Gateway, Data Receiver, and FTS are now supported on Windows Server 2025 |
| Dynamic Theme Change | Users can change themes dynamically without logging out and back in |
| High Resolution Display improvements | Improvements to display rendering on high-DPI screens |

---

## New Features in Version 2024.10.4

| Feature | Description |
|---|---|
| Notify Server | New Kafka topic-based notification server for improved real-time alerting |
| iNEWS CTC | Support for the CTMS data model in iNEWS CTC |
| Clear Channel in MOS-MAP | Clear Channel functionality can now be set per-device in MOS-MAP configurations |
| Improved Key Mapping for Macros | System now verifies key-to-virtual-key mapping before playing or saving toolbar macros; notifies user with confirmation message |

---

## New Features in Version 2024.10

| Feature | Description |
|---|---|
| Cloud UX wire notifications | Wire notifications are now surfaced in the MediaCentral Cloud UX interface |
| Secure Kafka Connection | Kafka connections can now be established over SSL/TLS for more secure deployments |
| New Themes | Three new themes available: Light, Dark, and Original |
| Chromium Framework v116 | iNEWS Workstation updated to Chromium Embedded Framework version 116 |
| IDP Support | Identity Provider support added for Okta and KeyCloak; new fields `F_LONG_USERNAME` and `F_EXTERNAL_IDP`; user names now support up to 255 characters. **Note:** Using external IDPs will not allow connecting older clients or community servers to the Newsroom Management Server |
| New Browser Shortcuts | Additional keyboard shortcuts available in the browser-based interfaces |
| More secure connections | Additional certificate checking is now enabled by default through the installer. Users are advised to replace the default certificate with one from their own organisation. Can be disabled during client installation by unchecking the SSL checkbox, or by setting `VerifyServerCertificate` to `0` in `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Avid Technology\iNEWS` |

---

## Fixed in Version 2024.10.7

- **IN-180865, IN-180899, IN-180901, IN-180935, IN-180950, IN-180952, IN-180975, IN-180982:** Several instances of crashes caused by access to non-initialised or freed resources have been fixed. Additionally, Windows messaging for re-entrance issues is now addressed by using non-modal dialogs for error messages.
- **IN-180864:** Group checking is now properly reporting recursive group definitions.
- **IN-180867:** Toolbar states of the classic theme are now automatically transferred to the Light and Dark themes if no new toolbar settings are present.
- **IN-180869:** Preselection in combo-boxes now works with non-alphanumerical characters. Preselection based on text in the edit box has also been added.
- **IN-180926, IN-181002:** Previously, incorrect font size and printable area calculations affected print output, resulting in issues when printing concatenation sheets. These calculations have been fixed.
- **IN-180928:** In versions 2024.10.5 and 2024.10.6, spacebar functionality in read-only clients quit working as expected while a producer was timing a show at another workstation. This has been fixed. Additionally, the mode of Show Timing (Control or View only) is now indicated on the Show Timing menu item in the Tools menu.
- **IN-180931:** The Title Entry combo-box drop-down list now resizes to fit the content of the entry without exceeding the edge of the dialog.
- **IN-180954:** Previously, the Edit Lock icon did not appear in the status bar (classic theme) when Windows scaling was set to 125% or 150%. It now appears correctly at 100% or any scaling above 100%.
- **IN-180963:** Parsing of style settings for colours has been fixed. The setting name "WinColrPI" has been corrected to "WinColorPI".
- **IN-180971:** Redrawing of the queue panel has been reduced for a steadier user interface during updates by other users.
- **IN-180973:** CTC now has improved handling of story identifiers when receiving search results from FTS.
- **IN-180979:** Users can now display the show timing (follow the show) without needing the permission to re-order stories. The permission is still required to perform Sync Timing.
- **IN-180992:** Colour rules no longer reset on theme changes. Two improvements have been added: (1) users can copy colour rules from another theme to the current theme; (2) users can reset all colour rules of a theme to their default values rather than resetting each rule individually.
- **IN-181003:** Tracking of modifiers has been reworked to disable interference of user input while macros are running. After playing a macro that opens a new workspace, the user will need to release and press the key (including modifiers) again for the modifiers to take effect.

---

## Fixed in Version 2024.10.6

> 2024.10.6 was a client-only update. No server changes were made in this release.

- **IN-180861:** Previously, the iNEWS Workstation did not properly handle macro recursion (macro within a macro) during playback.
- **IN-180872:** Previously, the iNEWS Workstation would crash if the user opened the Print dialog while screen scaling was set above 100%.

---

## Fixed in Version 2024.10.5

- **IN-180598:** In some previous versions, using the ALT key to enter unicode characters (e.g. accented letters for Spanish) did not work consistently.
- **IN-180730:** Previously, running the `unbusy` command at the server could cause a user with an edited, unsaved story at an iNEWS Workstation to lose connection, because the gnews service would crash.
- **IN-180733:** Previously, in version 2024.10.3, users could see client crash issues when opening plugins, moving notes, or working in queues with the "refresh" trait, whenever the system experienced queue loading failures or network connection issues. Error handling improvements have been implemented to prevent such future client incidents.
- **IN-180752:** Previously, when an action server used the `mailto` command, the mailserver exited unexpectedly, leaving the mail story in SYSTEM.MAIL.OUT.
- **IN-180759:** The gnew service no longer prints trace messages by default; messages are only printed if explicitly enabled via `utraits user +log`.
- **IN-180769:** Previously, some macros using the right CTRL key would not behave as expected. They now work regardless of whether the right or left CTRL key is used in the macro.
- **IN-180785:** After an upgrade to version 2024.10.4, the Newsroom Management database no longer appeared in Cloud UX. This has been fixed.
- **IN-180788:** Previously, RXNET sometimes failed to apply default translation values, which prevented the prompter from connecting via FTP.
- **IN-180800:** Previously, when using Windows 11 in Chinese, the Maximum Hits and Number of Paragraphs fields were not visible in the Find All dialog box.
- **IN-180809:** On iNEWS Workstations with version 2024.10 (or 2024.10.4) running on Windows 10 or Windows 11, users of the Stratus ActiveX plugin experienced an unexpected client software crash when attempting to change the Item Channel.
- **IN-180810:** Previously, the macro character size limit was too small, so longer macros (such as macros 1660 characters in length) did not work in some later versions of Newsroom Management. The size limit for toolbar macros has now been removed.
- **IN-180813:** On iNEWS Workstations with version 2024.10.3, in the German language, Print Style settings had no effect when printing stories. For example, the Story Form was printed regardless of WINFORM being set to NEIN in SYSTEM.STYLES.
- **IN-180814:** In some previous versions, a macro using `{tab}` in the Mail dialog would not work properly — the cursor would not advance to the next field as expected.
- **IN-180815:** Previously, inewsctc would automatically create user accounts when connected to an LDAP server. Now, such user accounts are only created automatically if the system is connected to an IDP.
- **IN-180818:** In version 2024.10.4, when scrolling through a story body that contains a production cue, the cursor would inexplicably jump back to the top of the story.
- **IN-180837:** In version 2024.10.4, after creating and restoring a dbdump, a directory with the sequential flag was restored with alphabetically sorted content instead of the expected sequential order.

---

## Fixed in Version 2024.10.4

- **IN-180175:** Previously, the monitor server would become stuck, preventing a user from unloading the monitor from the iNEWS Workstation.
- **IN-180273:** The wire server initialisation sequence has been changed. Sessions are now only retrieved after a device is allocated.
- **IN-180274:** In previous versions, the wire server would check upfront for a configured MOS-MAP story, even if not needed. This could cause the wire server to stop working even when there were no MOS attachments to process. Now, the MOS-MAP story is only loaded and checked (mosID validated) when the first MOS attachment is received. If the MOS-MAP story is missing or misconfigured, the wire server logs the error but does not stop working.
- **IN-180483:** Users who did a drag-and-drop from the Camio HTML plugin on version 2023.7.4 of the iNEWS Workstation would receive parsing errors if an empty `<item>` tag was contained in the MOS XML.
- **IN-180522:** Previously, a network failover adversely impacted reconnection and communication between Newsroom Management and Command Workstations and/or Servers; this issue delayed recovery times and was especially compounded when the monitor server was loaded (mon load) during a broadcast.
- **IN-180544:** Previously, when new user credentials were added, the vaultctl utility would acknowledge the addition but fail to automatically copy the vault files to other servers because of incorrectly added spaces between server host names.
- **IN-180546:** Previously, launching the Connect to Service dialog on a 9.x client connected to a 10.0 server resulted in network loss and corruption of the entries in the Connect to Service dialog after reconnection.
- **IN-180564:** Previously, the iNEWS Workstation would stop rotating server names (i.e. -A, -B, -C) to attempt to establish a connection after receiving an unsuccessful response from the workserver.
- **IN-180575:** In some previous versions, using "Print selected portion of queue" from the Print Preview would only print the queue's topmost story, even if that story was not part of the stories selected for print.
- **IN-180720:** Previously, when creating a new user from a template user, the toolbar settings were not correctly copied.
- **IN-180721:** Previously, group modifications — such as adding a new user to the group — made on an iNEWS Workstation would display "GROUP TEXT OK", but sending emails to the updated group would fail to deliver to the new user in the group without notification of that failure. Delivery only worked again after grpcheck was manually run via the console.

### Enhancements in 2024.10.4

- **IN-180689:** The utraits parameter `-bloblist` now resets or removes extended user preferences.
- **IN-180704:** gnews will now save extended user preferences even when it cannot free the previously allocated blocks in the database.
- **IN-180705:** The iNEWS Workstation now updates user settings to the local registry, including extended user preferences, even if the update to the database fails.
- **IN-180711:** The list command now has a new option (`list u-e`) for extended user preferences.

---

## Fixed in Version 2024.10.3

- **IN-180072:** In previous versions, if users signed onto the iNEWS Workstation without "-a" or "-b" and launched the HTML5 plugin, they would get an error of "Failed to load URL - http://.....".
- **IN-180307:** The WSAPI would convert empty Boolean fields to the value "false" when storing them to the database. This caused the evaluation of Affects Ready fields to deliver wrong results and the Ready fields to be checked even though they should not have been.
- **IN-180556:** In previous 2023.x versions, the spellchecker would flag proper nouns written in all-caps. Words in all-caps are now excluded from spell-check.
- **IN-180621:** After upgrading to 2024.10, some sites that had selected a language for spell checking without having the related dictionary installed experienced "language pack" error messages when logging into the Newsroom Management system. The client will now default to an available dictionary.
- **IN-180633:** Previously, users received a "lost connection" error when connecting to the console service within the Newsroom Management system. This was caused by a mismatch between versions that did or did not support the long user name feature.
- **IN-180689:** Previously, extended user preferences were not removed by the utraits command when using the `-bloblist` parameter. Now they will be.
- **IN-180695:** In previous 2024.10.x versions, the client could crash while restoring focus to a previously focused element, such as after being restored from minimised status or when the application regained focus.
- **IN-180696:** Previously, a user's extended preferences could become corrupted, forcing system administrators to delete and recreate the user account. This occurred when running dbvisit with updating the freelist in the database.
- **IN-180704:** Previously, extended user preferences were not stored if the previous block could not be freed. gnews will now continue and store the new preferences.
- **IN-180705:** When updating user settings to the server, the iNEWS Workstation did not store extended user preferences to the Windows Registry.

---

## Fixed in Version 2024.10.2

- **IN-180498 & IN-180638:** In some prior releases, the iNEWS Workstation would sometimes stop responding while conducting a search and would remain frozen until the search completed or an error was displayed.
- **IN-180594 & IN-180663:** After upgrading to v2024.10.x, users' preferences were not retained when they accessed the Newsroom Management database via rxnet or through the MOS Gateway. This could result in error messages when changing preferences (Tools > Options > Preferences) or themes (Tools > Options > Themes).

---

## Fixed in Version 2024.10.1

- **IN-180291:** The iNEWS Workstation, running newer versions after v2019.9, takes longer to open queues when forms contain very long lists as combo fields.
- **IN-180528:** Previously, iNEWS Workstations did not correctly return Unicode characters, specifically those with macron accents, to the HTML5 plugin.
- **IN-180581:** Previously on iNEWS Workstation v2023.7.5, when installed on a computer with Windows 11 24H2, users encountered issues with altered language and keyboard settings and noticed repeated popup messages when launching the client software and when executing a macro.
- **IN-180593:** Previously, in older iNEWS Workstation versions that use Journaling Hooks, macro keystrokes could be repeated by holding the modifier key down and repeatedly tapping the action key; however, in later workstations with SendInput, the modifier key would have to be toggled for each press of the keystroke. This version restores the original older functionality.
- **IN-180595:** Previously on v2024.10 clients, macros were not working on Windows 11 (24H2) and WinServer 2022.
- **IN-180610:** Previously on v2024.10 clients, creating a new user by copying a template did not work correctly.
- **IN-180631:** Previously, after inserting a production cue in the story body (when the story displayed a visible scrollbar), switching focus back to the queue and attempting to then move the cursor within the queue view would fail; cursor focus would return to the story body. This could affect macro playback.

### Enhancement in 2024.10.1

- **IN-180628:** To improve key mapping in macros, the system now checks whether keys can be mapped to virtual keys before playing a macro or saving a toolbar macro, and notifies the user by displaying a confirmation message.

---

## Fixed in Version 2024.10

- **IN-179591:** In previous versions, a toolbar button macro for queue path would exhibit unexpected behaviour when run for a second time with auto-arrange disabled.
- **IN-179699:** Previously, the MsgMailAlert feature did not work as documented in Appendix D of the Newsroom Management Setup and Configuration Guide. Enabling the Message Mail Alert feature now allows changing the alert behaviour so that the iNEWS Workstation will flash message and/or mail alerts on the status bar for only 15 seconds rather than persistently.
- **IN-179748:** Previously, when logging in, users sometimes encountered "a networking error while checking the News Server version", which forced the user to log in again.
- **IN-179804:** Now, when drag-and-dropping a MOS item from the HTML5 plugin, the content of the MOS item will be the same as drag-and-dropping a MOS item from an ActiveX plugin.
- **IN-179810:** Previously, mismatched capitalisation in the HTML5 plugin configuration could result in an "Unable to invoke Editor" error message when a user later tried to edit a MOS item.
- **IN-179822:** Previously, if the client was closed while the HTML5 plugin was left open, attempts to use the context menu to open/edit MOS items afterward would fail.
- **IN-179825:** In previous versions, data in the mos-obj id field was cleared when monitor was turned ON.
- **IN-179831:** Previously, login attempts failed for NRCS tool users with a "space" in their password. Space characters are now allowed in the password.
- **IN-179836:** In a previous version, a package was missing from the installer, which caused the FTS service to be unable to start.
- **IN-179890:** In previous versions, ENDORSE-BY and CAM field text colour should reflect whether it is over or under; however, when the story with those fields was set to FLOAT, the colour of the fields would change to black.
- **IN-179898:** In previous versions, users sometimes got a message of "story moved or removed" while editing from the Cloud UX Rundown App.
- **IN-179903:** Previously, if a user closed a workspace with an active story form, iNEWS Workstation crashed due to de-referencing a null-pointer.
- **IN-179932:** In some previous versions, iNEWS Workstation users might experience an instance where they are scrolling (e.g. using the mouse wheel) through text and are automatically scrolled back to wherever the cursor stopped, thus compromising editing or copy/paste operations.
- **IN-179987:** In previous versions, the MOS Gateway COM session could not be created for the server in grace mode. A workaround was to copy `/etc/pam.d/rxnet` to the same folder location and rename the copy to `mgwcom`.
- **IN-179989:** In previous versions, having in the NSML body any text in the format of a comment resulted in that story being inserted into the database with cut text.
- **IN-179994:** In previous 2022 versions, users could not delete an entry in a column with an Endorse-by field property.
- **IN-179999:** In some previous versions, wire stories might display a strange character right before opening double quotation marks.
- **IN-180012:** The repeat macro now has a new optional argument to set the number of executions, e.g. `{repeat 4}` will repeat the macro 4 times. **Note:** This will only work with 2024.10 clients; older clients may fail to execute the macro.
- **IN-180029:** During the grace period, newly created wires and mgwcom sessions were not displayed in list output as expected.
- **IN-180030:** During the grace period, MOS Admin would not log in a second time.
- **IN-180033:** Previously, a story merge error in inewsctc would cause the inewsctc process to abort.
- **IN-180044:** Previously, for sites connected via the Community feature, users at sites running older versions could not manually copy a news story from the 2023.7 system.
- **IN-180067:** In previous versions, a locked block would be created if the licensing server could not be reached when an iNEWS Workstation user requested a licence.
- **IN-180072:** In previous versions, if users signed onto the iNEWS Workstation without "-a" or "-b" and launched the HTML5 plugin, they would get an error of "Failed to load URL - http://.....".
- **IN-180073:** Previously, if MOS Gateway was set up without a password for the user in the MosAdmin app, then MOS-related services (MosRoStorySendService and MosRouterService) would crash when MOS items were added to stories in a loaded rundown. Such misconfiguration is now checked during service startup.
- **IN-180075:** Previously, the users list from the User Management dialog would be printed without correct formatting.
- **IN-180092:** Previously, the newsroom database might disappear from the Browse App during production peak times.
- **IN-180095:** In previous versions, the response time of the Newsroom Management system while using the Cloud UX Rundown App could sometimes be increased due to a lot of allocate session communications.
- **IN-180098:** In previous versions, cybersecurity scanning activity during busy times could cause inewsctc to crash.
- **IN-180143:** Previously, the timing on the status bar would stop counting after an activeX editor was launched.
- **IN-180144:** Previously, if the `W_WIRE_FORM` token in `/site/dict/words` was changed to a form that did not exist, the wire device services would stop working.
- **IN-180188:** In previous 2023.7 versions, for Newsroom Management systems using Flex licensing, users could not log onto iNEWS Workstations during the grace period when MediaCentral | Cloud UX was not available.
- **IN-180217:** Previously, Cloud UX Rundown App users could not drag-and-drop stories from a remote server to a local server.
- **IN-180229:** Previously, the iNEWS Workstation would sometimes crash when a user with a password longer than 12 characters logged in via Connect to Service.
- **IN-180304:** In version 2023.7, applying a new licence string with different session count could cause the licence to become temporarily invalid.
- **IN-180325:** In previous versions, the Newsroom Management system would fail to process a story with a usable URL, received from the Data Receiver wire instance, if the story received contained `<a></a>` tags.
- **IN-180333:** In previous versions, the iNEWS Workstation would sometimes crash when a user, prompted to save a story, answered No.
- **IN-180464:** After upgrade to a previous version, a dbrestore would fail to create some user accounts that fell alphabetically after either the dbmanager or umanager accounts.

---

## Limitations and Defects for Earlier Versions

> This section documents known limitations not addressed in this release. Workarounds are provided where available.

### Microsoft IME Issue (2024.10.x)

**IN-180929:** On systems localised for Chinese, when modifying a story's form field, typing the first time only permitted input in English. The user was forced to select another field and then return to the prior form field to input Chinese. This behaviour matches issues reported in Windows 11 where the operating system fails to "hand off" input control to the IME on first click.

**Workarounds (in order of effectiveness):**
1. **Check for Windows Updates:** Microsoft released specific fixes in late 2025 (KB5062660 and KB5070773) to address these focus-shift bugs. Ensure the system is fully up to date via Windows Update.
2. **Enable IME Compatibility Mode:** Go to Settings > Time & language > Language & region. Click the Elipses (…) next to the Chinese language and select Language options. Find the Microsoft IME settings and, under General, toggle "Use previous version of Microsoft IME" to On.
3. **Restart the IME Service:** If the IME feels "stuck", open Task Manager, find CTF Loader (ctfmon.exe), and end the task. Windows will instantly restart it.
4. **Keyboard Toggle Shortcut:** Use Win + Space to switch away from and back to the Chinese keyboard — this can force the IME to recognise the active text field.

### Copying Toolbar Settings

When copying from a template user to your own user whilst logged in, the toolbar settings will not be applied.

### Diskcopy Reports Critical Error

If diskcopy reports messages like "diskcopy: 17:09:59 [CRITICAL] first block mirror error: on block 66958 (5:Input/output error)", users should check the message at the end of the log for actual status. "Successful – Disk is mirrored" indicates the process completed successfully; the error only indicates that there are empty blocks that could not be copied.

### Edit Locks

- Information about edit locks may contain a session identifier if the username is not known. This is the case for locks acquired through the inewsctc API.
- Information about a user who has an edit lock could be incorrect when the user signs off without releasing edit locks and signs on reusing the same session.
- Note: the new user does not have the edit lock, and the lock will expire in its pre-defined timeout.

### Grace Period Delay

First discovered in v2023.7: at Newsroom Management sites with subscription licensing, when the MediaCentral Server transitions from online to offline, users at iNEWS Workstations may experience a short delay at log in while in grace period mode.

### Incorrect Timing for Stories with a Predefined Form

First discovered in v2023.3: when stories with a predefined form are ingested through the wire server, the contents of all fields will not be preserved and could have incorrect timing information.

### Invalid User Credentials

**IN-7154:** Previously, an error stating "Invalid User Name/Password" would appear if an older version of the iNEWS Workstation is used with a version 2021.11 server and if the server cannot acquire a session licence from the MediaCentral Licensing server when subscription licensing is used. The error message now reads: "Cannot obtain new user session from Cloud UX (licensing server)".

### Internationalisation Issues

- **Chinese IME Mode:** Avid recommends do not use key strokes in Chinese IME mode.
- **Chinese DaYi:** The Chinese input method DaYi cannot be used to create new queues or folders.
- **Divehi Support:** With the new richedit control, sometimes the last line of text will align to the left for a right-aligned story.

### Local Database

To download print styles and story forms to a local computer for use when working offline, the user must have Read Access to the Newsroom Management Server directories where styles and forms are located. This is by design.

### Localhost Server

It is recommended to use the localhost IP address `127.0.0.1` instead of the alias `localhost` in case of telnet connections to the localhost server.

### Macros and Keystrokes

Some PCs, when upgraded from older versions of Internet Explorer (IE 6, 7, or 8), will experience issues with macros that perform several functions in rapid succession; the macros might not complete all assigned activity in iNEWS.

**Workarounds:**
- Place the name of the dialog box after the `K_WINDOW` token value immediately following the keystroke that opens the dialog box. For example, instead of just `{ctrl p}` to open the Local Print dialog, the macro should be: `{ctrl p}{window Local Printing}`. The text following 'window' must match exactly the name of the dialog box as it appears in the title bar. The `K_WINDOW /window` token can be changed in `/site/dict/keymacros`.
- Alternatively, add `{pause <#>}` statements of one or two seconds to problem macros at the point in the macro where activity ceases.

### MAP Story Limit

The limit of devices for a rundown in the MAP story is 20. Having more than 20 devices configured for a rundown in the MAP story will result in a client crash when attempting to open the Monitor dialog.

### MediaCentral Cloud UX Integration

If the same Newsroom Management user name is used on multiple sessions on the same computer to log into MediaCentral | Cloud UX, it will only consume a single session.

### Multiple Monitors

- If the application is maximised when closed, it will be maximised on the primary monitor when reopened, regardless of which monitor it was on when closed.
- Moving a user from a dual monitor machine to a single monitor machine (e.g. an undocked laptop) could result in the application opening to a screen that no longer exists.
  - **Workaround:** Right click on iNEWS in the Windows taskbar and select Move. Then press one of the arrow keys on the keyboard; this will lock the application's window to the mouse. Move the mouse pointer onto the screen and the iNEWS main window will move with it.

### Netstation

**IN-3269:** Fields carried over from Avid Netstation templates are skipped from indexing.

### NRCS Tool

**IN-180732:** The NRCS Tool allows login for users with names up to 20 characters, but not any longer. The API used by Media Composer for story locking does not support longer names and is deprecated.

**Workaround:** Ensure account user names are 20 characters or shorter, even when using external IDPs such as Okta or KeyCloak.

### Plug-ins

Some plug-ins may not paint correctly in Newsroom Management.

**Workaround:**
1. In the iNEWS executable directory, create a new text file named `ActiveXRedraw.txt`:
   - 64-bit workstations: `C:\Program Files (x86)\Avid\iNEWS\`
   - 32-bit workstations: `C:\Program Files\Avid\iNEWS\`
2. Open the registry editor (regedit).
3. Select Edit > Find > AMG Journalist and locate the CLSID for the plug-in:
   - 64-bit: `Computer\HKEY_CLASSES_ROOT\Wow6432Node\CLSID\`
   - 32-bit: `Computer\HKEY_CLASSES_ROOT\CLSID\`
4. Take the CLSID (the folder name) and put it into the `ActiveXRedraw.txt` file.
5. Save the file.
6. Reload iNEWS.

### UNC Paths

- As a result of server-side URL changes in iNEWS 3.4.2, UNC paths with spaces no longer work correctly in the iNEWS client software. In a future version, these links will be client-only, allowing a user to launch them from the iNEWS Workstation without saving them as URLs on the iNEWS Server.
- iNEWS integration with Intelliscribe printing should be configured at 300 DPI with "Enhanced Features" disabled. Setting a higher DPI or enabling enhanced features can cause long delays in printing.
- If the Vertigo Xmedia plug-in and the Aurora Assignment List plug-in (version 7 or later) are both installed on the same client, the Xmedia splash screen can cause the Xmedia tree to be inaccessible.
  - **Workaround:** Rename or remove `skinCrafter3_vs2008.dll` from the Assignment List installation directory.

---

## Configuring Gmail SMTP Relay Server for Sendmail

Configuring the Gmail SMTP relay server for sendmail involves three steps: generating a Gmail application password, updating the sendmail configuration, and adding lines to an authinfo file.

### Step 1 — Generate Gmail Application Password

1. Log in to your Gmail account and go to the Manage your Google Account page.
2. Go to the Security page.
3. Enable 2-Step Verification if it is not enabled yet.
4. Click on the App passwords link.
5. In the Select app drop-down menu, select Mail.
6. In the Select device drop-down menu, select Other.
7. Enter the name for your application, such as iNEWS.
8. Click GENERATE.
9. Copy your password from the pop-up window.

### Step 2 — Update sendmail Configuration

Add the following lines to the `/etc/mail/sendmail.mc` file before the `MAILER(smtp)dnl` line:

```
dnl #
dnl # Defining Gmail Smarthost for sendmail
define(`SMART_HOST',`[smtp.gmail.com]')dnl
define(`RELAY_MAILER_ARGS', `TCP $h 587')dnl
define(`ESMTP_MAILER_ARGS', `TCP $h 587')dnl
define(`confAUTH_OPTIONS', `A p')dnl
TRUST_AUTH_MECH(`EXTERNAL DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
FEATURE(`authinfo',`hash -o /etc/mail/authinfo')dnl
```

### Step 3 — Modify the AuthInfo File

1. Add the following line to the `/etc/mail/authinfo` file:
   ```
   AuthInfo: "U:smmtp" "I:EMAIL" "P:PASSWORD"
   ```
   Replace EMAIL and PASSWORD with your actual Gmail email address and application password.

2. Create the database map from the authinfo file using the makemap utility:
   ```
   $ sudo makemap hash /etc/mail/authinfo </etc/mail/authinfo
   ```

3. Generate the final sendmail configuration and restart the service:
   ```
   $ sudo sendmailconfig
   $ systemctl restart sendmail.service
   ```

---

## Doc Errata

### MediaCentral Newsroom Management Setup and Configuration Guide (2023.3)

In Appendix A of the 2023.3 version of the guide, in the Job List Commands section, the `bpoll` command has the following note:

> *This feature is only enabled if the environment variable RESTARTDURINGPOLLINGPERIOD=1 is set in /site/action.*

The wording `/site/action` should be `/site/env/action`:

> *This feature is only enabled if the environment variable RESTARTDURINGPOLLINGPERIOD=1 is set in /site/env/action.*

---

## Technical Support Information

For Avid service offerings (Avid Assurance), visit <https://www.avid.com/support> or call Avid Sales at:
- North America: 800-949-AVID (800-949-2843)
- International: 978-275-2480

Avid Online Support is available 24 hours per day, 7 days per week:
<https://www.support.avid.com>

> Supplemental documentation for this release, if available, is provided on the Knowledge Base.
> For the latest up-to-date information, browse the Knowledge Base at Avid Online Support.
