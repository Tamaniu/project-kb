---
product: mediacentral-production-management
product-area: production-management
version: "2023.7.10"
release-date: 01/07/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 08/05/2026
status: current
---

Avid MediaCentral | Command Avid MediaCentral | Command Version 2023.7.10 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
> **Note:** The content herein applies to the aforementioned version, and contains the latest information that
might not have been available when product guides were published. However, for previous versions, users should reference older ReadMe documentation for additional information related to those earlier releases.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Newsroom Management documentation (all releases):
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-Newsroom-Management Revision History Date Revised Changes Made April 14, 2026 Added fixes for 2023.7.10 30 June 2025 Added fixes for 2023.7.8 8 May 2025 Added INWC-2643 to Fixed in Version 2023.7.7.
18 April 2025 Added fixes for 2023.7.7 11 February 2025 Added fixes for 2023.7.6 8 January 2025 Added fixes for 2023.7.5 4 November 2024 Added fixes for 2023.7.4 1 October 2024 Added fixes for 2023.7.3 3 June 2024 Added fixes for 2023.7.2 18 December 2023 Added fix for 2023.7.1 27 July 2023 Initial 2023.7 publication Avid MediaCentral | Command Contents Fixed in Version 2023.7.10 10 Fixed in Version 2023.7.8 10 Fixed in Version 2023.7.7 10 Fixed in Version 2023.7.5 11 Fixed in Version 2023.7.4 12 Fixed in Version 2023.7.3 13 Fixed in Version 2023.7.2 14 Fixed in Version 2023.7.1 14 Fixed in Version 2023.7 14 Doc Errata 14 Limitations and Defects for Earlier Versions 14 Failover Protocol 23 Redundancy Guidelines 23 Technical Support Information 25 Versioning Versioning Avid product now uses new versioning. The following table displays the former numbering scheme aligned with the new versioning method.
Former Versioning New Versioning 3.17.x 2023.7.x 3.16.3 2022.3 3.16.2 2020.9.2 3.16.1 2020.9.1 3.16.0 2020.9 3.15.0 2020.4
> **Note:** For information about versioning of earlier releases, please refer to the ReadMe documentation for
those earlier releases.
Compatibility Notes and Issues This section contains compatibility information. Specific versions are mentioned when pertinent.
Qualified Operating Systems Avid performs extensive testing on specific hardware and/or software to verify full compatibility with MediaCentral | Command. Those that pass these tests are considered qualified by Avid.
Microsoft Windows Operating Systems This version of Command is qualified for use with:
- Windows Server 2022 and Windows Server 2019 (Command Server)
- Windows 11 and Windows 10 (Command Workstation)
Other Supported Avid Systems Avid Device Service The Device Services (such as AMS Device Service, Video Device Service, etc.) that are included with Command have their own version number. This version of Command installs with version 4.3.0 of the device services.
Avid License Service This version of Command is qualified for use with Avid License service version 3.0.5.
Avid Service Framework This version of Command is qualified for use with Avid Service Framework version 1.7.0.
ASF currently requires all TCP and UDP user ports (1024-65535) to be open. Framework uses about
- 100 ports total, but they are unpredictable in that range.
Newsroom Management Server This version of Command supports Newsroom Management v2022.3 or later. Avid recommends using the latest released version of Newsroom Management Server.
Compatibility Notes and Issues iNEWS Workstation This version of Command supports use with any iNEWS Workstation that’s compatible with Newsroom Management Server 2022.3 or later.
Avid Stream IO and FastServe This version of Command Supports Avid Stream IO and FastServe video server through video plug-in.
Other Qualified Protocols, Devices, and Systems MOS Protocol This version of Command is qualified for use with MOS protocol versions 2.6 and 2.8. Avid recommends using MOS 2.8, which is the default.
Ross Xpression This version of Command is qualified for use with Ross Xpression version 6.7.
ENPS This version of Command is qualified for use with ENPS version 4.05 or later. It has been tested and qualified with 8.2.3.
X-Keys Command supports the following X-keys devices in native mode. Macro Works is not needed, nor should it be installed.
- X-keys XK-80 (80 key), XK-0980-UBK80-R
- X-keys XK-60 (60 key), XK-0979-UBK60-R
- X-keys 20 Key, XD-03-USB-R
- X-keys XK24 Programmable Keypad, XK-24-USB-R (Command does not support LED
programming.) X-keys Professional (58 key), XP-05-USB
- X-keys Jog and Shuttle Pro (48 key), XPS-08-USB-R
- GPI/GPO
This version of Command supports the Sealevel 8012s (0 in, 8 out, GPIO) PCI card (GPI and GPO). To configure, use the Sealevel Systems PLC-16.PCI board type, located at:
http://www.sealevel.com/store/8012s-pci-8-reed-relay-output-8-isolated-input-digital-interface-3- 13v.html This version of Command supports the Sealevel 8004e (16 in, 16 out, GPIO) PCIe card (GPI and GPO). To configure, use the Sealevel Systems DIO-32.PCI board type.
This version of Command supports 2 GPI cards installed and configured on a single computer. INWC-535 See Setting up SeaLevel GPI Expansion Cards in this ReadMe for more information.
This version of Command supports Level and Trigger Event for the “Cued:” and “Playing/Stopped:” GPO Settings in Channels. INWC-433, INWC-2164
> **Note:** Command only supports Level Events for “Remote:” GPO Settings in Channels.
Compatibility Notes and Issues Serial Control port servers use the same firmware, and are also considered qualified. Avid recommends version 4.1.5 of the device manager, and version 6.4.4 of the Trueport client.
3rd Party Video Devices This version of Command supports the following devices for network-based control, using the Avid Video Device Service third party plug-in, and they are included in the Command installer:
- Omneon: Spectrum and Media Deck (6.1 and newer), Omneon Spectrum 7000
> **Note:** Command uses the 7.0 version of the omlibplr.dll.
- Grass Valley Video Servers (K2) via the AMP protocol.
Command was previously qualified with other third-party devices for network-based or serial control. For version compatibility, contact the respective vendor.
Harris Nexio and Volt
- EVS
- Harmonic
- DVS Venice
- Grass Valley Group
- Quantel sQ
> **Note:** If Command will be used to control a third-party video device, via VDCP, ensure that a serial card or
serial port server, compatible with your Windows operating system, is used.
3rd Party Graphic Devices Command was previously qualified with the following third-party graphic devices. There are 2 methods for control – via Chyron Intelligent Interface (CII) protocol, or via a Graphic Device Service (GDS) plugin, which is developed by the vendor.
Vendor Product Connection Vizrt l Content Pilot TCP
- MSE
- Pilot Data Server
- Preview Server
Orad Maestro TCP
- Maestro NewsProducer plugin
- MSE
Pixel Power l Clarity TCP
- Logovision
- Newsroom ActiveX
Brainstorm l eStudio TCP
- Aston
Compatibility Notes and Issues
- Infinity Set
Ross Xpression TCP
- Chyron l Lyric Telnet
- Camio/LUCI
Sites who want to use Command with the iNEWS LUCI ActiveX plugin must have the Autocue
- feature turned on.
- For newer versions of Lyric, the chyron profile might need to be changed (HeadLineCount=0) to get
a connection.
> **Note:** GDS plugins must be purchased separately from the respective vendor.
Qualified Localization Languages This version of Command is localized (at the workstation) for the following languages and is also supported with those languages:
- French
- French (Canadian)
- Spanish
- Spanish Latin
- German
- Italian
- Chinese (Traditional)
- Chinese (Simplified)
- Japanese
Install and Upgrade Notes and Issues Install and Upgrade Notes and Issues This section contains information pertinent to installation of Command and the products with which it is integrated. It also provides notes related to upgrading from previous versions of the software.
Setting up SeaLevel GPI Expansion Cards The GPI expansion card types are SeaLevel 8004e & 8011/8012 PCI-e and PCI cards.
For Windows 2022 or Windows 2019 support of these cards, follow these workaround step:
1. Go to the SeaLevel support website at:
https://www.sealevel.com/support/category/driver-downloads-software/operating- system/windows/ Then, select SeaIO Classic V5 – Windows, and download the driver.
2. Once downloaded, install the driver.
3. Open an Admin Command prompt by right clicking on the Start button.
4. In the cmdtool, run the following command: pnputil.exe -I -a“"%WINDIR%\inf\SeaIO.in”"
5. Check Device Manager Control panel for the Seal/O devices to be labeled correctly.
6. Use the VBTest utility under “Program Files (x86)/Sealevel Systems/SeaIO/Utilities” with connection
Install and Upgrade Notes and Issues hardware switches/LED to check card functionality and connectivity.
7. Setup GPI panels in System Config and Command.
Upgrade Notes Command requires that all machines in the Command workgroup be on the same version of Avid Service Framework, Licensing Service, and Command. This means that all machines in the workgroup must be upgraded. The steps to upgrade might vary depending on the version from which you are upgrading.
MediaCentral | Command 2023.7 Avid recommends uninstalling the older version and installing this version afterwards to ensure a clean upgrade.
Please consult the ReadMe documentation of previous releases for upgrade information pertaining to all versions 2022.3 or earlier.
Avid Service Framework When upgrading from Avid Service Framework, the installation process can mess up the quick icons, changing them to a default Windows paper icon. The shortcut itself continues to the correct application.
Users can remake any icons in the quick start bar.
New Features in MediaCentral | Command 2023.7 New Features in MediaCentral | Command 2023.7 release1 This topic provides an overview of the major new features in this of Command.
For information on releases prior to 2023.7, please see the Guides and ReadMe documentation for those earlier versions.
cueEjectOrderOnPlay Previously, when playing an uncued video item, while a current video was either paused or done, the current item was ejected first after which the selected video item was cued and played. Beginning with 2023.7.6, the order of these actions were changed. Now, the selected video item is cued first after which the current video is ejected.
However, if the original order of actions (eject then cue) is preferred, the following can be done to restore the original order:
1. On the server where Command services are running, open the following:
C:\Program Files (x86)\Avid\iNEWS Command\playout\controller\state\config\workgroup.properties
2. Add the following line:
com.avid.automation.news.playlistcontroller.cueEjectOrderOnPlay=0 Play After Current A new context menu item is available to ensure selected video item is automatically played immediately after current item ends. That context menu option (Playout > Play after current) is available via right-click:
> **Note:** The shortcut for the Play after current menu option is the hyphen (-).
This feature is not available by default. To enable this feature:
- Add the registry value, PlayAfterCurrent, on workstation.
Fixed in Version 2023.7.10 When enabled, Play after current is executed only when there is a current video item playing; otherwise, an alert is reported to the user.
> **Note:** Play after current should not be used for devices different than StreamIO.
Newsroom Management Server Feature Description Additional OS Support Command Server is now qualified to run on Windows Server 2022.
Command Workstation is now qualified to run on Windows 11.
Fixed in Version 2023.7.10 Bug Number: INWC-2729. We have fixed an issue where story reordering behaved incorrectly when a rundown created in Newsroom 2024.10.4 was loaded into Command 2023.7.x or earlier, potentially causing the cue to jump or fail to update when stories were moved across the playing or cueing position.
Fixed in Version 2023.7.8 Bug Number: INWC-2615. When selecting the Clips (1080p 59.94 XAVC) format on Command using the Omneon device, the VDS logs showed it as 720p. This error in logging has now been fixed.
Bug Number: INWC-2693. We have resolved an issue where overlapping looping clips could interfere with each other, causing premature playback termination and unintended clip transitions.
Fixed in Version 2023.7.7 Bug Number: INWC-2656. Previously, when an item was selected as Play Next, the cursor would unexpectedly jump. This behavior has been updated to keep the selection/focus on the originally selected item—unless the Play Next item is of the "follow-on" type. A new flag has been added to indicate the CUED + Play After Next state, and a corresponding icon is now displayed in the Status column.
Bug Number: INWC-2583. In a mirrored Channel Group configuration using two Avid Stream IO servers, a specific issue was observed during playback of longer clips. If the primary server was restarted while the mirror server was actively playing a long clip, the secondary server continued playback correctly.
However, once the long clip finished, playback did not resume with the next item in the playlist.
Although the primary server reappeared as online in Command, the playlist did not continue automatically, and manual intervention—unlocking and re-locking the playlist—was required to restore normal behavior.
While the fix for this issue is in this version of Command, it is not enabled by default.
To enable the fix:
1. On the Command Server, navigate to:
C:\Program Files (x86)\Avid\iNEWS Command\playout\controller\state\config\workgroup.properties Fixed in Version 2023.7.5
2. Add the following setting:
com.avid.automation.news.playlistcontroller.followMirrorOnPrimarySilenceM S=450 workgroup.properties
3. After the value is saved in the file, restart services on the Command
Server.
Bug Number: INWC-2643. We have resolved an issue where clips transferred from MediaCentral to Harmonic servers appeared as unavailable or partially available in the Command Inventory, despite playing correctly. The problem was caused by incomplete clip information from Omneon, preventing proper inventory updates.
A new setting allows Command to treat certain CHANGED notifications as ADDED when no previous clip reference is found.
To enable the fix:
1. On the Command Server, navigate to:
C:\Program Files (x86)\Avid\iNEWS Command\device\avidvideodeviceservice\state\config\workgroup.properties
2. Add the following setting:
com.avid.vdcpdeviceprovider.changeNotificationToADDEDIfNoOldClip=1
3. With this setting enabled, VDS will adjust the notification type during processing, improving
inventory accuracy for affected workflows. This can be observed in the log:
[1] 342 2025.03.21 10:07:35:384 FINE CHANGED: OLD: null AvidVideoDeviceService01 29164 server1 [2] 343 2025.03.21 10:07:35:384 FINE CHANGED: NEW: Video Clip: IN1- 20250321-090732084-vs-com107, In/Out: 00:00:00:00/00:00:02:05, Marks:
00:00:00:00/00:00:02:05, Creation Date: 3/21/25 9:07 AM, Modification Date: 3/21/25 9:07 AM, Format: 1080i 25, Slug IN1-20250321-090732084-vs- com107 AvidVideoDeviceService01 29164 server1 [3] 344 2025.03.21 10:07:35:385 WARNING CHANGED [ADDED]: Video Clip: IN1- 20250321-090732084-vs-com107, In/Out: 00:00:00:00/00:00:02:05, Marks:
00:00:00:00/00:00:02:05, Creation Date: 3/21/25 9:07 AM, Modification Date: 3/21/25 9:07 AM, Format: 1080i 25, Slug IN1-20250321-090732084-vs- com107 AvidVideoDeviceService01 29164 server1 Lines [1] and [2] suggest that the OMNEON issue was observed, while line [3] is a result of executing the workaround.
Fixed in Version 2023.7.5 Bug Number: INWC- 2603. In a previous version of Command, the playlist would sometimes display "red X" icons in some rows for items in the rundown while the show was ONAIR, implying a problem, but with no actual impact to the playback of the items. Although the fix for this issue is in this version of Command, it is not enabled by default.
To enable the fix:
Fixed in Version 2023.7.4
1. Enable the prevention of eject item in forbidden time window. To do this, on the Command Server,
navigate to:
C:\Program Files (x86)\Avid\iNEWS Command\playout\controller\state\config\workgroup.properties and then set the numerical value forcom.avid.automation.news.playlistcontroller.ejectForbiddenTimeWindow For example: For a 2-second forbidden window, use 2000 as your value:
com.avid.automation.news.playlistcontroller.ejectForbiddenTimeWindow=2000
2. After the value is saved in the workgroup.properties file, restart services on the Command Server.
3. (Optional) To show the message box when the mechanism caught the problem and report alert in
the UI, set the value of the DWORD to one (1) for the Windows registry:
[HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Avid\iNEWS Command\Misc]\ShowMsgBoxOnCannotEjectForbiddenTimeWindowAlert
4. After the value is saved in the Registry, restart the Command user interface on the workstation.
Bug Number: FSP- 10855. In a previous version of Command, deleting the duplicated video ID from Newsroom Management unloaded the playing video on the video server. Now it is fixed, but it requires plugin upgrade to the following:
StreamIO Plugin for Command 2024.10.1 or later
- FSP Plugin for Command 2024.2.1 or later
- Fixed in Version 2023.7.4
Bug Number: INWC- 2590. In previous versions, Command users would experience problems with playing clips after a plugin upgrade. Although the fix for this issue is in this version of Command, it is not enabled by default.
To enable the fix, two of the following three feature toggles are mandatory:
1. Enable the prevention of play not cued item during switching between lines. To do this, on the
Command Server, navigate to:
C:\Program Files (x86)\Avid\iNEWS Command\playout\controller\state\config\workgroup.properties and then set the numerical value for com.avid.automation.news.playlistcontroller.playNotCuedForbiddenTimeWindow For example: For a 3-second forbidden window, use 3000 as your value:
com.avid.automation.news.playlistcontroller.playNotCuedForbiddenTimeWindo w=3000
2. Block cursor auto-move after play in the UI. To do this, set the value of the DWORD to one (1) for the
Windows registry: [HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Avid\iNEWS Command\Misc]\BlockAutoAdvanceSelectionOnPlay
3. (Optional) To show the message box when the mechanism caught the problem and report alert in
the UI, set the value of the DWORD to one (1) for the Windows registry:
[HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Avid\iNEWS Command\Misc]\ShowMsgBoxOnCannotPlayNotCuedForbiddenTimeWindowAlert Fixed in Version 2023.7.3 Fixed in Version 2023.7.3 Bug Number: INWC- 2575. In previous versions, creating a MOS ID placeholder in an ENPS playlist, for a story already containing a MOS object, could create an object with an invalid objID. This issue is fixed; however, it is disabled on Command by default.
Bug Number: INWC- 2524. Previously, when the videoID field in a Newsroom Management story contained an ID in the wrong case (uppercase vs. lowercase), Command would show the clip ONLINE, but the clip could not be CUED or PLAYED. This was caused by a difference in case-sensitivity on various video servers.
Bug Number: INWC- 2536. Previously, in a playlist containing three or more clips, and with a clip playing in a loop, the selection cursor would sometimes jump from its manually selected location to next clip after the looping clip.
Bug Number: INWC- 2561. Previously, the clock behavior in version 2023.7.2 would fail to adjust properly when a user switched from an open playlist to an open shotbox and back again. This forced the user to have to open a second playlist to force the clocks to refresh correctly.
Bug Number: INWC- 2575. In previous versions, creating a MOS ID placeholder in an ENPS playlist, for a story already containing a MOS object, could create an object with an invalid objID. This issue is fixed; however, it is disabled on Command by default.
To enable this MOS ID placeholder fix:
1. On each server instance running the MOS service, navigate to:
Program Files (x86) > Avid > iNEWS Command > mos > state > config
2. Edit the workgroup.properties file, changing the setting value from its default zero (0) to a one (1)
for com.avid.automation.news.mos.util.checkDepthInExtractFragment so that it appears like this:
com.avid.automation.news.mos.util.checkDepthInExtractFragment=1 Create the entry if it does not already exist in the configuration file.
Fixed in Version 2023.7.2 Fixed in Version 2023.7.2 Bug Number: INWC- 2530, INWC-2532. In previous versions, there was an intermittent issue with clips getting randomly cued or stopped due to X-keys.
Bug Number: INWC- 2534. Previously, the clock behavior in version 2023.7 was different from that experienced in version 2022.3. This was because of a change for shotbox. That change has been reverted, and the clocks should now behave the same as in prior releases.
Fixed in Version 2023.7.1 Bug Number: INWC- 2525. In previous versions, the elapsed and remaining time clocks had delays in reporting time when a playing clip was played again.
Fixed in Version 2023.7 No issues were resolved in version 2023.7 of MediaCentral | Command, but additional OS was qualified.
Please consult the ReadMe documentation of previous releases for further information pertaining to all versions 2022.3 or earlier.
Doc Errata This section of the ReadMe provides errors and edits to information found in guides for prior versions of Command.
MediaCentral | Command Installation and Configuration Guide A new Revision B of the Install/Config Guide for Command version 2019.9.1 was produced with updates made to the procedure for "Configuring VDS for FastServe" on page 38. Please refer to that guide for more information.
Limitations and Defects for Earlier Versions This topic provides details on limitations discovered in earlier versions of Command, and not addressed in this release. Any available workaround procedures are also documented, when possible.
> **Note:** For limitations related to compatibility of this release with previous versions or other products, see
the section of this document entitled, Compatibility Notes and Issues AirSpeed Multi Stream If a recording item crosses the midnight boundary, the starting time is not correctly set to 1:00:00;00, which causes problems with Command’s Count Up/Down clocks. Workaround: Manually set the time to 1:00:00;00 in Newscutter.
Any Command users relying on the autocue feature need to make sure that the AirSpeed Multi Stream Show first of next option is turned off. To do so, go to the AirSpeed Multi Stream application and click File > Preferences > Channel Configuration, and uncheck the Show first of next box for all channels.
Limitations and Defects for Earlier Versions AirSpeed Multi Stream Auto Switch Output Format With the AirSpeed Multi Stream’s Auto Switch Output Format feature, there is a limitation that the channel needs to be idle with Up or Down-converting. This limitation manifests in Command with its Autocue feature. When you play an item, Command automatically precues the next item. If the playing and cued items are different (e.g. HD and SD), the precue will fail, because the channel needs to be idle before the item can be cued.
AirSpeed Multi Stream Up/Down/Cross-Convert With the AirSpeed Multi Stream’s Up/Down/Cross-Convert feature, there is a limitation that the channel needs to be idle when cross-converting (i.e. 720p to 1080i, or vice versa). This limitation manifests in Command with its Autocue feature. When you play an item, Command automatically precues the next item. If the playing and cued items are different (e.g. 720p and 1080i), the precue will fail, because the channel needs to be idle before the item can be cued.
Anti-virus Protection Anti-virus software protection, such as Symantec Endpoint, can cause cueing delays and prevent proper playout.
Workaround: Turn “autoprotection” off.
As Run Logs Despite the fact that as run logs in Command are saved as .csv files, opening them in Microsoft Excel 2003 required a user import the file via the Tools > Data > Import menu.
Workaround: Upgrading Microsoft Excel to a newer version will allow you to double-click on any as run log from Command to open it in Excel.
Avid Service Framework with Command Services If a Command Server running in the backup role is unplugged, users might see availability alerts for the Playlist Store and with regard to the playability of some items. This is caused by Avid Service Framework sending service unavailable notices when the backup is rediscovered.
Occasionally a Command service might not get the correct election priority and Avid Health Monitor will falsely report a critical status for this service.
Workaround: This does not affect proper service functionality, so you may either ignore the status or re the service in question to correct the problem.
Avid Video Device Service The Avid Video device service can only be set to one frame rate; therefore, all of the channels controlled by the VDS (including VDCP, Harris, AMP plugins) will be limited to one frame rate.
> **Note:** Omneon is an exception, as it supports frame rate on a per-item basis.
Channel Assignments When a channel goes down, Command will adjust the channel assignments automatically to not include the down channel. However there are two limitations; Manual ripple (Ctrl+R) ripples with the down channel.
Workaround: Unlock and relock. This will ripple assignments in the playlist with only the connected channels.
Limitations and Defects for Earlier Versions
> **Note:** If the channel goes down while the channel group is locked, the status of the down channel will
remain, meaning that an item cued on C will remain cued after C goes down and the channel is reassigned to B. Despite this, users can ignore the remnant status and continue playing.
Channel Groups Changes to system settings associated with the MOS Communication service might not take affect
- until the service is reed.
Workaround: The MOS service should be reed after changing anything in the MOS section of the system settings.
- If CG channel groups are longer than eight characters, the CG style lists are not sent or received in
iNEWS.
Workaround: This is intentional because iNEWS only displays the first eight characters. Therefore, if using a CG channel group longer than eight characters, only enter the first eight characters in SYSTEM.MAP and SYSTEM.MOS-MAP in iNEWS.
If a channel group gets deleted, then any playlist items depending on channels in that group will
- get marked unplayable. But if you recreate a seemingly identical channel group with the same
name and the same channels, the items will not get marked playable. This is because it isn’t really the same channel group.
Workaround: If someone deletes a channel group that was assigned to pre-existing playlists, the playlists must be recreated via the Inventory panel and dragging the items back in from the newly recreated channel group.
Clear Transfer Status Clear Transfer Status only works for devices controlled by the Video Device Service (i.e. 3rd party video devices). AirSpeed Multi Stream and AirSpeed 5000 also report transfer status, but the Clear Transfer Status menu option does not function.
ENPS Integration
- If there is a communication breakdown between ENPS and Command and the ENPS rundown needs
to be reloaded, the rundown might appear disconnected even though it isn’t.
Workaround: Restart the Command application at the workstation before reloading the rundown.
- ENPS users might see long IDs even though the Command system is set to use short IDs. This can
occur whenever the MOS Communication service loses communication with the Command Inventory Manager.
If a story is updated in ENPS and the channel had been changed from the default, when the
- updated ENPS story is saved, the channel in Command will be reset to the default. This is a problem
with the MOS 2.6 protocol. Avid recommends using MOS 2.8 for the Command MOS ID to avoid this problem.
Follow-on-Playout AirSpeed Multi Stream only supports clips that are 10 seconds or longer.
Limitations and Defects for Earlier Versions GPO Transport Status In a mirrored channel configuration, GPO signals will not be sent to reflect the status of the
- mirrored channel, only for the primary channel.
- If a channel lock is overridden from a different workstation with a different Exclusive Control status
(GPI or Workstation), the Remote status will not change. To work around this issue, toggle the Exclusive control setting which will reflect the proper status.
Graphic Integration For graphic systems that use databases (such and Orad and Pixel Power), leaving the Graphic path blank in the Graphic Editor will cause Command to not send an Intelligent Interface M command.
Harris VDS Plugin Qualification of Command with the Harris Video Device Service plug-in is with the following limitations:
Recue with Goto is a Command feature that, based on testing, does not work with the Harris VDS
- plug-in. This feature is where Command sends a Goto zero command to the device rather than
ejecting and recuing. When integrating Command with the Harris VDS plug-in, users need to make sure the Recue with Goto setting is turned off.
- Rename and Protect status changes are not reported back to Command. If the user does a
Rename, Delete Protect, or Remove Protection in the Inventory panel, the functions successfully complete on the Harris server, but the changed status is not reported back to Command until the Video Device service is reed.
- After setting a Mark In point from the Media Viewer, the clocks in Command do not count when the
item is played; although, the item does play for the correct duration and counting can be seen in the NXOS user interface.
> **Note:** For compatibility information regarding what version of the Harris VDS plug-in is qualified with
Command, see the Compatibility Notes and Issues section in this ReadMe.
Hold Last Frame When an item with a short hold last frame—of 2 seconds or less—finishes playing on an AirSpeed Multi Stream, it ejects as expected, but the next cued item also ejects. This is configuration issue on the AirSpeed Multi Stream. Workaround: On the AirSpeed Multi Stream server, select File > Channel Configuration and deselect the Show first of next checkbox for each channel to resolve this issue.
iNEWS Integration iNEWS must have the video-ID and item-channel fields in the storyform of the rundown. Excluding either of these fields can cause serious problems with Command and iNEWS communication.
Installation Sometimes you might get an Install Shield 1603 error saying, “A file which needs to be replaced may be held in use. Close all applications and try again.” Workaround: Click OK and disregard the message.
Licenses When replacing temporary licenses with a full license, users must delete each TEMP line individually before adding a full license.
Limitations and Defects for Earlier Versions Localization In the German UI, in the Optionen dialog box, the options associated with Shotbox are not contracted into a tree-like structure, but are provided instead as pathnames.
Logging Bug Number: INWC-2619.Clips sent to Command with the Omneon plugin may show a different duration in Command inventory than the duration appearing in logs. This difference in values is acceptable because the log and inventory are displaying different formats.
Looping If the playlist that has been set to loop has been played to the end, it will not loop if selected to play
- a second time.
Workaround: Unlock and relock the channel group to eject playlist or item looping. This fixes the problem.
- For playlist looping, the cursor does not go back to the top when the last item is playing, but cue
does and looped playout will continue as expected.
- If the number of times to loop a playlist is set while the channel group is locked, the playlist loops
one less than the set time. Other anomalies can also occur.
Workaround: The channel group for the playlist must be unlocked when setting the number of times to loop a playlist.
Maney Panel While ControlAir supported Maney Panel with both the Measurement Computing and SeaIO cards, Command supported the use of a Maney Panel device only with the Measurement Computer card.
Manual Cue and Move This version of Command reverted to the following behavior, as the fix to the following set of steps introduced more severe issues.
1. Lock channel group (AB).
2. Manually cue second item on each channel.
3. In iNEWS, reorder the stories that contain the first two items to be immediately underneath the
currently cued items.
4. Cue moves to the ordered two items, rather than staying on the currently cued item.
Workaround: To work around this issue, do one of the following:
- Skip Step 2 - the expected items will cue after the items are reordered in Step 3.
- Manually cue the items after step 4.
Media Viewer Opening graphics in the media viewer may take a little time.
Limitations and Defects for Earlier Versions In the Media Viewer, 1080i scrubbing with AirSpeed Multi Stream is very slow and considered
- unusable, especially for Play While Record workflows. Users may be able to use it in a scenario
where a quick turnaround is not an issue.
- The Media Viewer can only be used to modify the in and out points of a clip. The use of Media Viewer
requires that a browse channel is set up as part of the channel group that is locked.
Mirrored Playout For mirrored, single-channel, follow-on playout, when an item is playable on the mirrored channel
- only, the next item—assuming it is available on both primary and mirrored channels—behaves
differently.
When the item plays on the mirrored channel only, the next item does not cue on the primary channel, nor does the item’s status appear cued in the playlist. Despite this, the next item does play as expected after the mirrored only item finishes playing.
After a primary only or mirrored only follow-on playout, the items are slightly out of sync.
- Newsroom-Controlled Playlist
- If you move an item in a nested newsroom (iNEWS) playlist, it uncues an item in the container
playlist.
Workaround: Float the item before moving it.
- If a large amount of stories (>20) are copied and pasted to the current on-air playlist, you might see
the stories get added to the bottom of the playlist initially and then get placed in the proper location after all of the stories have been inserted into the Command playlist.
Workaround: Close and reopen the playlist. When it reopens, the items will be in the correct order and location.
- Setting MOS Active and Ready-to-Air immediately after each other will cause an ENPS or MOS-
based playlist to incur up to a five-minute delay in Command receiving and loading the playlist. The delay is dependent on the number of items in the playlist.
Workaround: Set the MOS Active flag for the running order long before making it Ready-to-Air.
For ENPS sites: If the primary ENPS server is down for a long period of time (for maintenance, for
- example), then the Command MOS service should be reed to delete any messages that are waiting
to be sent to the Primary. Otherwise it may take some time for these messages to be sent when the Primary s running.
Play While Record When an AirSpeed Multi Stream play while record item finishes playing, it will remain in the playing status, rather than eject and hold last frame.
Workaround: Eject the item or ignore the status; it does not prevent the next item from being played.
Playlist Appearance With “Skip items that are not playable” enabled, when an unplayable clip is cued, the item’s background will not change to the background set in Tools > Options > Playlist and Shotbox Viewers > Appearance. A red X will still appear in the status column in the playlist.
Limitations and Defects for Earlier Versions Playout Follow-on will only work with clips of 2 seconds or greater.
- In previous versions, if a user used the lock and override feature, the playlist and playout
- functionality would not work properly for one to five minutes after a server failover.
Workaround: Unlock and relock, if necessary.
- When an item ID is manually changed, the user must wait 2 to 3 seconds before cueing and playing
that item.
- Preview channels in a channel group don’t show the Preview item playing. Preview channels are not
supported for Command 1.1.x After restoring a Command Server to primary status following a failover, items won’t autocue.
- Workaround: Manually cue the items.
The only supported Control Configuration for AirSpeed with Command is Local/Network Record or
- Play. Unrestricted VDCP is not supported. When using Command to control playout on AirSpeed
video servers, ensure proper configuration on the actual AirSpeed.
To set Control Configurations on an AirSpeed:
1. Select Setup > Channels.
2. Set Control Configurations to Local/Network Record or Play.
When using Command Server offline with AirSpeed video servers that are also used with a different playout control system for on-air broadcasting, this setting must be switched according to which system is controlling the video server.
Recording If a recording item crosses the midnight boundary, the starting time is not correctly set to 1:00:00;00, which causes problems with Command’s Count Up/Down clocks. The workaround is to manually set the time to 1:00:00;00 in Newscutter.
Limitations and Defects for Earlier Versions Redundancy When the backup server loses network connection, the services need to be shut down before
- reconnecting.
- A temporary network interruption is likely should the server running the backup Command services
be disconnected from the network and reconnected. This interruption might appear as a possible loss of follow-on playout or affect the appearance of inventory status.
In a redundant configuration, if the network connection to the server running the Primary
- Command services was lost, if the server was shutdown, or if the server lost power, the Command
system would automatically regain functionality after the workstation shows the alert, “The Playlist Controller is available,” and the alert details state, “Items can be played again.”
- Reconnecting a network connection to a previously dropped primary Command Server will cause a
second interruption in playback. In a redundant configuration, if a network connection to the server running the primary Command services is lost, the Command system will automatically regain functionality after the workstation shows the alert that items can be played again. The limitation comes in if the network connection is restored without the original primary services being reed after the disconnection. For example:
Server A is the primary and Server B is the backup. Server A loses and regains its network connectivity while on-air. In this case, when the Server A regains its network connectivity, there will be a second interruption in playout control. One interruption for the initial disconnect and a second interruption will occur when it regains connectivity.
Workaround: In the example given, shut down Server A until the show is over. This will prevent the second interruption from occurring.
Send to Playback With Command 2.10, renaming an item’s slug on a 3rd party device while Send to Playback is completing will cause the Transfer Status icon to report complete. This known limitation is on the roadmap to be fixed in a future version of Command.
Shotbox Viewer Panel If the Shotbox Viewer panel is docked at the top or bottom of the workspace and its size adjusted, Command will not retain the size if the panel is closed and reopened.
Workaround: Undock the panel and size it, or dock it to the left or right sides of the workspace.
Tablet Application Having a large number of items in a shotbox can cause the Command tablet application on an iPad device to lock up.
Workaround: Users should have no more than 30 items in a single shotbox.
Playability status does not update unless the shotbox is open in the Command Workstation. This means that to see an item change from Unplayable to Playable in the tablet application on an iPad device, the corresponding shotbox must be open in the Command Workstation.
Thunder Thunder follow-on play ignores looped clips.
Workaround: Put a second or third clip in the playlist, and it will play the clip consecutively, as if it were looped.
Limitations and Defects for Earlier Versions UMD If you re-start the UMD device service while clips are already cued (or precued), the UMD device doesn't get status on those clips. It will display clips that are playing out and eventually catch up to the current state. Although the UMD device is not critical to playout, re-starting its service (or any service) in the middle of a show is not recommended.
Upgrades When a major upgrade is done, such as v2.0.3 to v2.1, the install location reverts back to the install default of C:\Program Files\Avid\iNEWS Command. If you installed Command to an alternate location, you need to change the install location at the appropriate time during the upgrade installation process.
User Interface In Windows server 2008, the Command Workstation must be re-started every 24 hours.
- Avid recommends closing the Command Workstation application once per day.
- After creating a new playlist that contains a story (not an item-only playlist), you cannot insert a
- placeholder.
Workaround: Insert a second story first. Or set your options so that new playlists are created as item-only playlists (without stories).
- Improvements were made to the cursor and autoscroll behavior in Command v2.0, but one problem
remains. When unfloating or moving items above the currently playing item, it can still cause the cursor to scroll off screen.
If the Command Workstation is running when Command services are shut down, it might function
- improperly after the services are back up.
Workaround: Ensure that all Command Workstation applications are closed before shutting down or restarting Command services.
- After changing the 'Use short ID' setting in Tools > System Settings > Inventory, you must wait
approximately 30 seconds before the change will be propagated back to the Command Workstation.
Workaround: If you want the setting to take affect sooner, close and reopen the Command Workstation application.
The Apple Quick Time Updater feature causes network flood when it tries to automatically update.
- This can prevent the Command system from functioning as expected.
Workaround: Disable this feature.
- Playlist tabs in the Playlist Viewer are not well separated.
Workaround: Change the display properties to a Windows XP theme.
- If you change the inactive cursor color preference to white and the background is also set to white,
the text will be invisible. Command doesn’t automatically detect these color matches.
VDCP Play While Record does not work with VDCP.
Workflow When you send a package from an editor to your AirSpeed video servers for playout, you must set those AirSpeed video servers up as a studio and transfer to that studio from the editor. If you send to each AirSpeed individually, the clip’s metadata is actually different for each AirSpeed and, therefore, will only show up as available on the first AirSpeed to complete its transfer.
Failover Protocol Workgroup Properties There is a known issue with services migrating to backup server. It involves a setting in the workgroup.
properties (under C:\Program Files (x86)\Avid\Service Framework\AvidSystemConfigurationService \state\config) file "com.avid.workgroup.remoting.redundancy.election.timeout"-Wait this long after last hearing from primary before forcing an election. The default was 4000 (4 seconds). In the lab, when it was changed to 8000, services would not migrate anymore.
Workstation Option Hide Newsroom When the Workstation Option called Hide newsroom story rows with no page numbers is on, the items in the hidden story are still automatically assigned channels when Auto-Assign or Strong Channel assignment is turned on. This will affect playlist ripple sequence, and may cause the displayed items to be out of order, because the hidden items are still part of the ripple sequence.
Failover Protocol The Avid iNEWS Command Best Practices document, which is available as a free download in PDF format on Avid’s Knowledge Base, contains the latest information pertaining to failover and hotswap functionality, including failover scenarios, symptoms, and recommended recovery procedures.
However, some new alterations to the recommended procedure for failover and recovery have been made, and are, therefore, provided in this ReadMe for your convenience.
After primary server failover has occurred, to recover:
1. Continue with current playlist until the show has been finished. If there have been changes to the
rundown after failover occurred, it will be necessary to load the rundown to the backup server. To switch to the newly loaded news rundown, unlock the channel group on the disconnected playlist and lock on the connected playlist.
> **Note:** Do not override the lock on any channel group until at least 5 minutes after the failover
happened.
2. After you have reached an opportune time to bring the Command system back to its
Primary/Backup configuration, shut down all services on the backup server—and primary server, if necessary.
3. Stop all services on the primary server.
4. Wait for at least one minute, and then restart the services on the backup server.
5. Wait 5 minutes before using the Command system.
6. Open the Avid Interplay Health Monitor and confirm that the two servers have the expected primary
and backup status.
> **Note:** After the failover completes, an item’s transport statuses and clocks do not update. For
example, if an item was playing while the failover occurred, the playing status will remain, and clocks may continue to count, even though other items have been subsequently played on the same channel. This is a cosmetic issue, and users can ignore the stale transport statuses and clocks. This known limitation is on the roadmap to be fixed in a future version of Command.
Redundancy Guidelines The following are redundancy guidelines for both administrators and users.
Redundancy Guidelines Administration Command determines primary and backup based on the length of time the service has been running. The server that has been running longer is the primary. Therefore, to get all primary services on one server, it is necessary to the primary server first; when all services have started, start the backup servers.
> **Note:** Not all services run in a primary/backup configuration, such as the iNEWS Communication service.
This means that when a server fails, it loses connection to the NRCS (iNEWS, ENPS, etc.). At that point the playlist becomes disconnected, which is indicated by the flashing red X over the iNEWS or MOS icon. Users are still able to operate the playlist in this mode, but it does not get any updates to the rundown. See below for full details.
Services that are primary show a green dot in the Health Monitor tree. Backup services show a yellow dot.
Non-redundant services do not show a dot. All three are shown here.
Failover Process When a failover happens, here is what the user will see.
The iNEWS or MOS icon will have a flashing red X over it. This indicates that the playlist has been
- disconnected from the newsroom system.
- Several alerts will appear, stating that the workstation is unable to connect to various services.
- The channel lock and transport control icons will show a red X over them, and will be unresponsive.
- Items (both graphic and video) will continue in their existing state, such as a playing item will
continue playing.
Within 15 seconds, the services on the backup Command Server should take over as primary, and restore functionality to the workstation.
Users will see 2 or 3 alerts, the Playlist Store, Playlist Manager, and Playlist Controller services.
- Transport controls will become responsive again, and the red X will be removed.
- At this point, users will be working with the disconnected playlist, so they will not see any updates
- from the Newsroom system.
- In order to restore connection between the newsroom and Command, users will need to reload the
show to the backup server. For iNEWS, this is just a simple MON load to the appropriate Command Server. ENPS users need to do a MOS redirection with the rundown, which requires some initial configuration to support MOS Redirection. See the MediaCentral | Command Install/Configuration Guide for further details.
- The reloaded show will appear as a second playlist in Command, and users will need to switch to
the connected playlist and lock channel groups. This should be done at a convenient time, such as during a commercial break, or weather.
System Recovery After the primary Command server has been restored to functionality, here are the steps to get the system back to its proper state. This should only be when Command is not needed for on-air playout.
Technical Support Information
1. Stop all services on the primary server.
2. Stop all services on the backup server.
3. Start all services on the primary server.
4. Wait a few minutes, and then start all the services on the backup server.
5. Confirm system functionality by loading shows from the newsroom and playing items on all device
channels.
Technical Support Information Most products feature a number of coverage options. Avid Assurance service offerings are designed to facilitate your use of Avid solutions. Service options include extended telephone coverage, automatic software maintenance, extended hardware warranty, and preferred pricing on replacement parts.
Offerings and options may vary by product and are not available for all products.
For more information regarding Avid service offerings, visit www.avid.com/support or call Avid Sales at 800-949-AVID (800-949-2843).
Program availability and details might vary depending on geographic location and are subject to change without notice. Contact your local Avid office or your local Avid Reseller for complete program information and pricing. However, if you need help locating an Avid office or Avid Reseller near you, please visit www.avid.com or call in North America 800-949-AVID (800-949-2843). International users call 978-275- 2480.
Accessing Online Support Avid Online Support is available 24 hours per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read/join online message-board discussions.
To access Avid Online Support:
- Go to www.support.avid.com.
> **Note:** Supplemental documentation for this release, if available, is provided on the Knowledge Base. For
the latest up-to-date information, browse the Knowledge Base at Avid Online Support.
Technical Support Information