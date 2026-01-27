MediaCentral® | Command
Version 2022.3 ReadMe



Date Revised	Changes Made
March 2022	Added changes related to v2022.3 release
November 2021	Added changes related to v2020.9.2 release
Dec 2020	Added changes related to v2020.9.1 release
Sept 2020	Added changes related to v2020.9 release
Apr 2020	Added changes related to v2020.4 release
Nov 2019	Added changes related to v2019.9.1 release
Sept 2019	Added changes related to v2019.9 release
July 2019	Added changes related to v2019.6.1 release
June 2019	Added changes related to v2019.6 release
February 2019	Added changes related to v2019.2 release
December 2018	Added changes related to v2018.11 release
September 2018	Added changes related to v2018.9 release
June/August 2018	Added changes related to v2018.6 release (Rev B)
December 2017	Added changes related to v2017.2 release, inc. product rebranding
September 2017	Initial 2017.1 Version
 
Versioning
Avid product now uses new versioning. The following table displays the former numbering scheme aligned with the new versioning method.

Former Versioning	New Versioning		Former Versioning	New Versioning
3.16.3	2022.3		3.13.0	2019.6
3.16.2	2020.9.2		3.12.0	2019.2
3.16.1	2020.9.1		3.11.0	2018.11
3.16.0	2020.9		3.10.0	2018.9
3.15.0	2020.4		3.9.0	2018.6
3.14.1	2019.9.1		3.8.0	2017.2
3.14.0	2019.9		3.7.0	2017.1
3.13.1	2019.6.1			


Important Information
Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Note: Search the Avid Knowledge Base (http://www.avid.com/onlinesupport) for the most up-to-date ReadMe file, which contains the latest information that might have become available after the documentation was published.
This document describes compatibility issues with previous releases, hardware and software requirements, software installation instructions, and summary information on system and memory requirements, when applicable. This document also lists any hardware and/or software limitations.
 
Contents
 
Versioning	2
Important Information	2
Compatibility	6
Microsoft Windows Operating Systems	6
Apple Operating Systems	6
Microsoft Azure	6
Avid Device Services	6
Avid License Service	6
Avid Service Framework	6
Avid Interplay	6
Newsroom Management Server	6
iNEWS Workstation	6
AirSpeed Multi Stream and AirSpeed 5000	7
FastServe Video Server	7
MOS	7
Ross Xpression	7
ENPS	7
X-Keys	7
3rd Party Video Devices	7
3rd Party Graphic Devices	8
GPI / GPO	9
Serial Control	9
Qualified Localization Languages	10
Installation Notes	10
Setting up SeaLevel GPI Expansion Cards for Windows 2019 or 2016 Server	10
Upgrade Notes	12
MediaCentral | Command v2017.2	12
Command v3.1.3	12
AirSpeed Multi Stream	12
Command v2.7	12
Avid Service Framework	12
Hardware and Software Changes	13
Between 2020.9.1 and 2022.3	13
Between 2020.9 and 2020.9.1	13
Between 2020.4 and 2020.9	13
Between 2019.9.1 and 2020.4	13
Between 2019.9 and 2019.9.1	13
Between 2019.6.1 and 2019.9	14
Between 2019.6 and 2019.6.1	14
Between 2019.2 and 2019.6	14
Between 2018.11 and 2019.2	14
Between 2018.9 and 2018.11	15
Between 2018.6 and 2018.9	15
Between 2017.2 and 2018.6	15
Between 2017.1 and 2017.2	16
Between 3.6.1 and 2017.1	16
New Features	17
New Features in 2020.9.1	17
New Features in 2020.9	17
New Features in 2020.4	18
New Features in 2019.9.1	19
New Features in 2019.9	19
New Features in 2019.6	19
New Features in 2018.11	23
New Features in 2018.9	24
New Features in 2018.6	26
New Features in 2017.1	27
Failover Protocol	28
Redundancy Guidelines	28
Administration	28
Failover Process	29
System Recovery	29
Known Limitations	30
Workgroup.Properties	30
Playlist Appearance	30
Manual Cue and Move	30
Clear Transfer Status	30
AirSpeed Multi Stream Up/Down/Cross-Convert	30
AirSpeed Multi Stream Auto Switch Output Format	30
Workstation Option Hide Newsroom	31
Tablet Application	31
Follow-on Playout	31
Media Viewer	31
Harris VDS Plug-in	31
Send to Playback	31
iNEWS Integration	32
Recording	32
AirSpeed Multi Stream	32
Graphic Integration	32
Maney Panel	32
Play While Record	32
Avid Video Device Service	32
As Run Logs	32
Hold Last Frame	32
Licenses	33
VDCP	33
Channel Assignments	33
Playout	33
Redundancy	34
GPO Transport Status	34
UMD	35
Anti-Virus Protection	35
Upgrades	35
ENPS Integration	35
Looping	35
Mirrored Playout	35
Localization	36
Newsroom-Controlled Playlist	36
User Interface	36
Shotbox Viewer Panel	37
Installation	37
Avid Service Framework with Command Services	37
Channel Groups	37
Thunder	38
Workflow	38
Technical Support Information	39
Accessing Online Support	39
 

Compatibility
This MediaCentral Command release is compatible with the following:
Note: For the latest specifications regarding minimum system requirements, please visit: http://www.avid.com/products/mediacentral-command.

Microsoft Windows Operating Systems
This version of MediaCentral Command is qualified for use with:
∙	Windows Server 2019 and Windows Server 2016 (Command server)
∙	Windows 10 (Command workstation)
Apple Operating Systems
This version of the Command tablet application is qualified for use with any tablet that supports:
∙	iOS11
∙	iOS10
Microsoft Azure
This version of Command supports Newsroom Management Azure virtual machine environment (Newsroom Management server in Azure & Command on site).

Avid Device Services
The Device Services (such as AMS Device Service, Video Device Service, etc.) that are included with Command have their own version number. This version of Command installs with version 4.3.0 of the device services.

Avid License Service
This version of Command is qualified for use with Avid License service version 3.0.5.

Avid Service Framework
This version of Command is qualified for use with Avid Service Framework version 1.7.0.
∙	ASF currently requires all TCP and UDP user ports (1024-65535) to be open. Framework uses about 100 ports total, but they are unpredictable in that range.

Avid Interplay
This version of Command is qualified for use with the Avid Interplay 1.1 or later.

Newsroom Management Server
This version of Command is qualified for use with iNEWS Server 2.8.8 or later, but Avid recommends using the latest released version.

iNEWS Workstation
This version of Command is qualified for use with any iNEWS Workstation that’s compatible with iNEWS Server 2.8.8 or later.
 

AirSpeed Multi Stream and AirSpeed 5000
This version of Command is qualified for use with AirSpeed Multi Stream version 1.8.17 or later, and AirSpeed 5000 version 2.9.5 or later. For this release, the most recent Airspeed software version 3.0.10 has been qualified with AirSpeed 5000 on Command.
CAUTION: Users who upgrade to the Command 2.9 version (or later) of the AMS device service MUST ALSO UPGRADE their AirSpeed Multi Stream to version 1.7.6 or later. The 2.9 AMS device service is incompatible with all earlier versions of AirSpeed Multi Stream. As noted, the AMS Device Service has its own version number.
With Command controlling the AirSpeed 5000, the Show first of next option must be turned off. To turn off this option, navigate to the AirSpeed 5000 Web configuration at http://<Airspeedhostname>, log in, select Playback/Output, and uncheck the Show first of next box for all channels.

FastServe Video Server
This version of Command no longer includes the “FastServe” plugin. Customers should get the version of plugin as recommended for their FastServe server from their Avid account at:

 


MOS
 
https://my.avid.com/account/orientation?websource=avid.


This version of Command is qualified for use with MOS protocol versions 2.6 and 2.8. Avid recommends using MOS 2.8, which is the default.
 
Ross Xpression
This version of Command is qualified for use with Ross Xpression version 6.7.
ENPS
This version of Command is qualified for use with ENPS version 4.05 or later. It has been tested and qualified with 8.2.3.
X-	Keys
Command now supports the following X-keys devices in native mode. Macro Works is not needed, nor should it be installed.
∙	X-keys XK-80 (80 key), XK-0980-UBK80-R
∙	X-keys XK-60 (60 key), XK-0979-UBK60-R
∙	X-keys 20 Key, XD-03-USB-R
∙	X-keys XK24 Programmable Keypad, XK-24-USB-R (Command does not support LED programming.)
∙	X-keys Professional (58 key), XP-05-USB
∙	X-keys Jog and Shuttle Pro (48 key), XPS-08-USB-R
3rd Party Video Devices
This version of Command is qualified with the following devices for network-based control using the Avid Video Device Service third party plug-in and included in the Command installer:
∙	Omneon: Spectrum and Media Deck (6.1 and newer), Omneon Spectrum 7000
NOTE: Command 3.0.4 uses the omlibplr.dll version 6.1. Command 3.1 uses the 7.0 version of the omlibplr.dll.
∙	Grass Valley Video Servers (K2) via the AMP protocol.
 


This version of Command is qualified with the following devices for network-based control using the Avid Video Device Service third party plug-in, which must be purchased from the vendor:
∙	Harris Nexio and Volt, with version 1.1.0.6 of the Harris Video Device Service plug-in.
This version of Command is qualified with the following devices for serial control (RS422) by the Avid Video device service via VDCP:
∙	EVS (10.04 and newer) EVS XS3
∙	Harmonic Spectrum MediaDeck v8.2 (Omneon)
∙	DVS Venice (3.0.1.6 and 2.9.2.18)
∙	Grass Valley Group: K2 and Summit
∙	Quantel sQ
∙	360 Systems Image Server
NOTE: If Command will be used to control a third-party video device, via VDCP, ensure that a serial card (W2003 only) or serial port server (2008 only) is used.
3rd Party Graphic Devices
The following table shows the 3rd party graphic devices qualified with Command. There are 2 methods for control – via Chyron Intelligent Interface (CII) protocol, or via a Graphic Device Service (GDS) plugin, which is developed by the vendor.
Version Notes:
∙	The plugin version specifically means the GDS plugin, which is a separate installer from the GDS itself, and can be seen as a line item in the Control Panel, Programs and Features (e.g., Vizrt iNEWS Command plugin). This version is determined by the vendor, and may be different from the Vendor and Command version numbers

Vendor	Product (Version)	Control
(Plugin Version)	Connection	Compatibility (Plugin only)
Vizrt	∙	Content Pilot (5.7.4)
∙	MSE (3.1)
∙	Pilot Data Server (6.0)
∙	Preview Server (3.0.0.1722)	Plugin (3.3)	TCP	Command 3.3
Vizrt	∙	Content Pilot (7.0.0)
∙	MSE (4.1.0)
∙	Pilot Data Server (7.0.0)
∙	Preview Server (4.0.0)	Plugin (3.0.1)	TCP	Command 2017.1
Orad	∙	Maestro 6.8
∙	Maestro NewsProducer plugin
6.8MSE (1.23)	Plugin (1.0.0)	TCP	Command 3.1.8
Pixel Power	∙	Clarity (7.2.9.5 or 9.5.7.6)
∙	Logovision (7.2.9.5 or	Plugin (1.4.0)	TCP	Command 3.1.3
 


	9.5.7.6)
∙	Newsroom ActiveX (6.0.0.5)			
Brainstorm	∙	eStudio (13.0)
∙	Aston (3D 1.4)
∙	Infinity Set (1.2)	Plugin (4.1)	TCP	Command 3.3
Ross	Xpression (6.7)	Plugin (6.7)	TCP	Command 3.6
Orad	Maestro (6.0)	CII	Telnet	N/A
Chyron	∙	Lyric (6.5/7.1)*
∙	Camio/LUCI	CII	Telnet	N/A

∙	The vendor version is a minimum version. For example, the two versions listed in the Pixel Power section mean that both 7.2.9.5 and 9.5.7.6 are the minimum numbers for each respective version. If the version number is not listed in this table, the compatible version must be confirmed directly with the vendor.
∙	There were significant changes to the Graphic Device Service between Command 2.10 and 3.0. Because of these changes, GDS plugins are only compatible with a specific Command version, which is listed in the Compatibility column. This limitation does not apply to CII control
∙	Command is qualified with Chyron Lyric v6.5 and newer. Sites who want to use Command with the iNEWS LUCI ActiveX plugin, should use Lyric v7.1 (or newer), and must have the Autocue feature turned on.
∙	For newer version of Lyric, the chyron profile might need to be changed (HeadLineCount=0) to get a connection.
NOTE: GDS plugins must be purchased separately from the respective vendor.

GPI / GPO
This version of Command is qualified for use with the Sealevel 8012s (0in, 8 out, GPIO) PCI card (GPI and GPO). To configure, use the Sealevel Systems PLC-16.PCI board type, located at: http://www.sealevel.com/store/8012s-pci-8-reed-relay-output-8-isolated-input-digital-interface-3-13v.html
NOTE: The card only has drivers for Windows 7.
This version of Command is qualified for use with the Sealevel 8004e (16 in, 16 out, GPIO) PCIe card (GPI and GPO). To configure, use the Sealevel Systems DIO-32.PCI board type.
This version of Command supports 2 GPI cards installed and configured on a single computer. INWC-535 See “Installation Notes: Setting up Sealevel GPI Expansion Cards for Windows 2019 or 2016 Server” in this ReadMe for more information.
This version of Command supports Level and Trigger Event for the “Cued:” and “Playing/Stopped:” GPO Settings in Channels. INWC-433, INWC-2164
NOTE: Command only supports Level Events for “Remote:” GPO Settings in Channels.

Serial Control
This version of MediaCentral Command is qualified for use with the Perle IOLAN SDS 8 port server. Although not tested, the 16, 4, and 2 port servers use the same firmware, and are also considered qualified. Avid recommends version 4.1.5 of the device manager, and version 6.4.4 of the Trueport client.
 

Qualified Localization Languages
This version of Command is localized (at the workstation) for the following languages and is also supported with those languages:

∙	French
∙	French (Canadian)
∙	Spanish
∙	Spanish Latin
∙	German	∙	Italian
∙	Chinese (Traditional)
∙	Chinese (Simplified)
∙	Japanese

Installation Notes
The following sections provide notes pertinent to the installation of Command and products with which it is integrated.

Setting up SeaLevel GPI Expansion Cards for Windows 2019 or 2016 Server
The GPI expansion card types are SeaLevel 8004e & 8011/8012 PCI-e and PCI cards.
For Windows 2019 or Windows 2016 support of these cards, follow these workaround step:
1.	Go to the SeaLevel support website at http://www.sealevel.com/support, select SeaIO Classic V5 – Windows, and download the driver.
2.	Once downloaded, install the driver.
3.	Open an Admin Command prompt by right clicking on the Start button.
4.	In the cmdtool, run the following command:
pnputil.exe -I -a“"%WINDIR%\inf\SeaIO.in”"
5.	Check Device Manager Control panel for the Seal/O devices to be labeled correctly.
 


 

6.	Use low level tools like vCtest, or VBTest to prove card functionality and connectivity.

7.	Setup GPI panels in System Config and Command.
 

Upgrade Notes
Command requires that all machines in the Command workgroup be on the same version of Avid Service Framework, Licensing Service, and Command. This means that all machines in the workgroup must be upgraded. The steps to upgrade might vary depending on the version from which you are upgrading.

MediaCentral | Command v2017.2
Avid recommends uninstalling the older version and installing this version afterwards to ensure a clean upgrade.

Command v3.1.3
Command 3.1.3 requires an update to both the Service Framework (1.7.0) and Licensing Service (3.0.5). Command 3.1.4 uses the same Service Framework and License Service version as 3.1.3.
NOTE: The Licensing Service should ONLY be installed on machines where it is already running, so unlike Framework and Command, it is not installed on every machine in the workgroup.

AirSpeed Multi Stream
CAUTION: Users who upgrade to the Command 2.9 version of the AMS device service MUST ALSO UPGRADE their AirSpeed Multi Stream to version 1.7.5 or later. The 2.9 AMS device service is incompatible with all earlier versions of AirSpeed Multi Stream. Also note that the AMS Device Service has its own version number, which is wna common 3.3.0.
Command v2.7
Command v2.7 has some features that were released in conjunction with AirSpeed Multi Stream 1.6. In order to utilize the following new features, users need to upgrade the Avid Multi Stream device service. Those features are:
∙	Subclips
∙	UDX and Auto Switch output format
Avid Service Framework
When upgrading from Avid Service Framework, the installation process can mess up the quick icons, changing them to a default Windows paper icon. The shortcut itself continues to the correct application. Users can remake any icons in the quick start bar.
 

Hardware and Software Changes
The following changes or enhancements were made to existing features in MediaCentral Command.

Between 2020.9.2 and 2022.3
∙	The 2022.3 release is a re-versioning of the v2020.9.2 release.
Between 2020.9.1 and 2020.9.2
∙	Previously, when a site used time-of-day timecode, the countdown and count-up clocks in a Command playlist would not begin to count down/up when a clip was played if the timecode start was closer to 00:00:00 than the duration of the clip. This is fixed. INWC-2240
∙	Previously, when recording using Capture, the duration in Command would not update correctly. This is fixed. INWC-2496
∙	Previously, Command would display inaccurate, mismatched timecodes during play while transfer (PWT). This is fixed. INWC-2492
∙	Previously, Command would reset duration if the same clip was played on two different channels in a rundown. This is fixed. INWC-2495
∙	In previous versions, for tagged graphics, sometimes the graphics did not play or was delayed in playing after the video was triggered. It is fixed now. INWC-2494

Between 2020.9 and 2020.9.1
∙	Previously, the channel duration clocks in the clock panel could disappear if using X-keys or if F5 was pressed with an opened playlist. This is fixed. INWC-2485

Between 2020.4 and 2020.9
∙	Previously, when loading a clip from AirSpeed inventory to the Media Viewer and creating a sub- clip, users were unable to change the OUT point, only the IN point. This is fixed. INWC-1980
∙	Previously, when a clip was paused, and then played again (to continue), the clip appeared to continue to the end correctly, but the duration clock restarted at zero and the remaining clock restarted at the clip duration. This is fixed so that the duration clock counts up correctly and the remaining clock continues to count down to 0:00 as expected. INWC-2448
∙	Previously, Play-While-Transfer items on a FastServer | Playout server were reported as "Failed to Play" in Command. This is fixed. INWC-2429

Between 2019.9.1 and 2020.4
∙	In previous version, changing options might cause Command to crash sometimes. This issue is fixed. INWC-214, INWC-907
∙	Previously, Command would crash whenever stories with an OFFLINE status were moved around. This is fixed. INWC-2326, INWC-2317, INWC-2385
∙	In previous versions, a zero setting in the “delete unused after (days)” did not disable the deletion of unused placeholders. This is fixed so that unused placeholders are not deleted. INWC-2396
∙	Previously, two clips might erroneously become cued on the same channel after unfloating a story in a playlist where auto-cue and auto-assign are enabled. This is fixed now. INWC-1774

Between 2019.9 and 2019.9.1
∙	In version 2018.11 to 2019.9, GDS using CII connection could not connect. This issue is fixed. INWC-2287
∙	Previously, the rundown would be disconnected whenever a user changed any information of the Video ID or Channel ID of a playing clip, which caused the iNEWS communication service to crash. This issue is fixed. INWC-2279
∙	In previous versions, exporting Playlist or PlaylistView resulted in an empty file. This issue is fixed. INWC-2305
 


∙	In previous versions, playing a looped clip from another looped clip would not work correctly for any Video Device Service (VDS) that was using VDCP configuration. It is now fixed. INWC-2173

Between 2019.6.1 and 2019.9
∙	Previously, the Initialize command could be blocked from being sent to the graphic device because certain graphic status was not being set. This issue is now fixed. INWC-2236
∙	Previously, the graphic title display could display “Null” if the configured setting returns null. Now, it will use a fallback mechanism to display the graphic object ID. This is fixed. INWC-2212

Between 2019.6 and 2019.6.1
∙	In previous Command versions, automatic timecode-triggered graphics did not work as expected. It is now fixed. INWC-2208

Command supports the ability to trigger graphics automatically based on the video elapsed time. When using a newsroom system, such as MediaCentral Newsroom Management, this feature requires that the graphic system’s iNEWS ActiveX plugin support the ability to set an In and Out/Duration.
Note: Some graphic systems use Duration, and some use Out.
When the rundown is loaded to Command, it parses the itemEdStart and itemEdDur fields in the graphic. This feature is not supported with hand-entered graphics. After the video is played, when the video elapsed time reaches the Invalue, Command sends a Play command to the graphic device channel, and when the item’s duration is reached, Command sends an Eject. If the In point of the next graphic is before the Duration/Out value, Command sends a Play command for the next item and does not send an Eject. This allows the graphic device to execute an update motion rather than having to eject and play consecutive items. Operators can override the In or Duration/Out value in the Command Workstation by opening the graphic in the media viewer and adjusting the time. Likewise, users can create standalone playlists with time-code triggered graphics. The feature requires stories in the standalone playlist, which can be turned on by going to Tools > Options > Playlists, and then unchecking Create item-only standalone playlists. The video must be in the story form, or if added as a production cue, it needs to be the first item in the story.

Between 2019.2 and 2019.6
∙	In Command version 2019.2, the channel specific PLAY did not work. It is now fixed. INWC-2110
∙	In previous versions, duplicate or invalid short ID placeholders were generated if a user selected a date format that was different from the default setting. It is now fixed. INWC-2129

Between 2018.11 and 2019.2
•	Previously, Command used a different timecode convention in processing and converting timecode of clips from Fastserve device. This would lead to the frame portion of the timecode getting converted improperly for clips with a framerate greater than 30 (such as 720p50 and 1080p50 clips), which would result in incorrect clip duration in inventory and playout. This is fixed. INWC- 1967
•	Previously, when the "Auto-assign channels" setting in Shotbox behavior option is set to "Alternating channels", then playing any clip with auto-assigned channel would result in an immediate eject. This is fixed. INWC-1968
∙	Previously, Shotbox keeps the playing state after the end of a Fastserve video server playout, when the frame portion of the clip mark out timecode is with an odd number or is greater than 30. Then the next operation on the same channel would fail. This is fixed.INWC-1979
∙	Previously, during a loop play transition in Fastserve video server playout, the image between the end of the current loop play to the beginning of the next loop play could freeze for some frames for half a second more or less, the expected behavior is a clean loop transition without any freeze frames in between loops. This is fixed. INWC-2077
 


∙	Previously, looping a clip (either infinite or finite loops) on a Fastserve video server could get stuck with a playing status or could stop after a few loop plays, then consecutive playing of other clips in the same channel would fail. This is fixed. INWC-2078
∙	Previously, when Fastserve video server cues or plays an uncued clip, performance is slow and unpredictable, making back to back play with looping clips taking a lot of time. And sometimes user could not cue another clip on the same channel during the play of a clip in loop mode. This is fixed. INWC-2079
∙	Previously, with a Fastserve video server playing clips on multiple channels simultaneously, transition to play next set of clips on those channels could be very slow.This is fixed. INWC-2080
∙	Previously, in a primary/mirror setup, the next pre-cue clip failed to cue when it becomes available on the backup video server first. This is fixed. INWC-1035
∙	Previously, with the X-Key, sometimes it would generate two PLAY event with a single click which caused an item to play for a few seconds and then stop. This is fixed. INWC-1879
∙	Previously, the video device service was crashing when the video-id from omneon was 50 characters. This is fixed. INWC-2011

Between 2018.9 and 2018.11
∙	Previously, a cued clip on the channel would play automatically when the current playing clip was stopped. This is fixed. INWC-1994
∙	Previously, double-clicking in the Inventory panel on a subclip with a duration of 00:00:00:00 would sometimes cause the Command client to crash. This is fixed. INWC-1937

Between 2018.6 and 2018.9
∙	Previously, users experienced In/Out timecode issues while using Command with the FastServe plugin. This is fixed. INWC-1762
∙	Previously, Command would incorrectly show the duration of a clip. This is fixed. INWC-1696
Between 2017.2 and 2018.6
∙	Previously, character sequence like <…> in the fulfillment data would cause both the iNEWS communication service and the Maestro graphic plugin to crash when iNEWS sends the data to Maestro, causing the CG-items on the playlist to become red for 1-2 minutes. This is fixed. INWC- 1794, INWC-1695
∙	Previously, pinning in a shotbox would be undone and channel assignments would not be retained if channel groups were locked and unlocked multiple times. This is fixed. INWC-1491
∙	Previously, creating placeholders before a video clip was available in manual playlists, the clip was transferred with valid ID, but a duration that did not reflect the actual playlist duration. This could cause the clip to eject prematurely on-air. This is fixed. INWC-1431
∙	Previously, when changes were made to a playing clip which causes a duplicate entry to be created to hold the changed information, the status of the current item was not reported back to iNEWS correctly. This is fixed. INWC-1646
∙	Previously, a framerate mismatch could cause clip durations and remaining time calculations to be incorrect. This is fixed accordingly:
o	The number of frames reported will be doubled for 720p 50 format video, but you will need to add a parameter com.avid.vdcpdeviceprovider.SDCompatible=0 to the file workgroup.properties in C:\Program Files (x86)\Avid\iNEWS Command\device\avidvideodeviceservice\state\config
o	The countdown would skip (at around 10s) for 1080i 25 format video (for a 28s clip, it will count from 28 to 19 normally then jump to 6 and count down from there to 23:23:47) VOEN-3336
∙	Previously, when changes were made to the in/out point for a clip in the Media Viewer without a browse channel set up, the duration clocks would not work after closing and re-opening the playlist. This is fixed. INWC-784.
 

Between 2017.1 and 2017.2
∙	Beginning with this version, the product formerly called Avid iNEWS Command was rebranded as MediaCentral Command.
∙	Previously, Main Level and Show Duration in shot box may overlap (appear jumbled) depending on the font and the point size of each. This is fixed. INWC-1518
∙	In previous versions, the lightning icon used to indicate transfer in progress did not appear. Instead, media would just appear in the inventory upon transfer completion. This is fixed. INWC-1475

Between 3.6.1 and 2017.1
∙	Previously, creating Omneon clip names of 52+ characters would cause the video device service (VDS) to crash. This is fixed. INWC-1378
∙	Previously, when a user attempted to delete an unlocked, connected newsroom playlist, it resulted in failed playlist updates. This is fixed. INWC-762
∙	Previously, both VDS and GDS crashes when run under Windows Server 2016. This is fixed INWC-1258
 

New Features
The following section provides new features first made available in the specified release.

New Features in 2020.9.1
∙	In this version, a new section is added to health monitor for video plug-in to display plug-in information, as shown:
 

New Features in 2020.9
∙	In this version, a new option was added for Keyboard setup that allows users to disable the numpad. The “Enable Numpad” option is enabled by default and would behave the same as previous versions. With the “Enable Numpad” option unchecked, the numpad will be disabled.
 
∙	In this version, the Channel toolbar was enhanced to also display the name of the workstation that has a channel locked. This helps users determine whether it can be considered safe to override the lock of another workstation. The following images show the Lock section of the toolbar, before and after the
 


change.
 

New Features in 2020.4
∙	Previously in System Settings, the deletion and protection of inventory was a single setting. Beginning with this version, they are separate settings, which lets users enable them individually.
 

∙	Also, in System Settings, a new option has been added to the Cue control section under System Settings>Playout. The new option—Disable recue of a playing clip—may be used to protect a clip from re-cue when it is playing. By default, it is not enabled. INWC-1370
 


 
∙	This version includes an enhancement to GPO trigger event. You can now select to trigger a GPO trigger event when a channel is PLAYED and EJECTED. INWC-1
Note:“Send GPO” would only happen when the playout setting “Send PLAYED status to iNEWS” is enabled.
∙	Beginning with this version, a new video format—1080p 59.94—is supported. INWC-1971

New Features in 2019.9.1
∙	The GPO trigger event is added to the Channel GPO setting. Now, you can select to trigger a GPO trigger event when a channel is either CUED or PLAYING/STOPPED. INWC-2164
∙	This version of Command adds support for Windows server 2019.
New Features in 2019.9
∙	A new Command configuration flag for supporting the Fastserve Play While Transfer (PWT) function was added to the Playlist Controller workgroup.properties file under:
C:\Program Files (x86)\Avid\iNEWS Command\playout\controller\state\config

That flag is: com.avid.playlistcontroller.videochannelplayouttransportimpl.setnomarkoutforpwt=0 Currently, Fastserve does support PWT without using this flag; therefore, to start with, this flag should always be set to zero (0). Only when Fastserve has a problem executing PWT—meaning playout of a transferring clip does not play to the clip’s full duration when no mark-out is specified—then set this flag to 1 to ensure Command sends an empty mark-out to FastServe for Play While Transfer clips.
Note: The FastServe server should play the clips to the end if there is no mark-out.

New Features in 2019.6
∙	This version of Command has enhancements related to restricting multiple instances of Command at a workstation. Command will now warn a user if there is already a workstation instance running, but still
 


allow the user the option to start another instance, unless the administrator restricts instances with a new registry key. The key is a DWORD DisallowMultipleWorkstationInstances under HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Avid\iNEWS Command. Setting it to one
(1) will ensure only one instance of Command can be run on the computer.

∙	Beginning with this version of Command, after a playlist is set as a “Time of Day” playlist—that is, it is set to automatically begin playing at a time of day specified in the Playlist Properties—it will update automatically when building the playlist.


Previously, the Time of Day column in a playlist was only updated when a user adjusted the settings, such as changing the start time in the Playlist Properties.
 


 

∙	A new menu option is also now available (Edit > Recalculate Hit Time) to enable the user to manually trigger an update in the playlist’s Time of Day column.
 


∙	This version of Command now supports programming CII commands for plugins, like the macro supported when plugins are not used.
Note: For this to work, the plugins must support the new CII command API in the SDK.
To be able to send CII commands, the command strings must first be entered to the new tab for the GDS plugin.

Then, a channel must be set up, mapping the GDS channel to an index. You can configure up to 16.

 


Lastly, set up the X-key by selecting the corresponding index and the macro entry. For more details, see the MediaCentral | Command Installation and Configuration Guide.

New Features in 2018.11
∙	This version of Command supports new CII commands for the Maestro plugin: Load All and Unload All. These new commands are available in the right-click context menu (as shown below in a playlist and a shotbox), and will send the corresponding CII commands to Maestro Graphics through the new plugin.

 


 
New Features in 2018.9
∙	This version of Command supports an improvement in the ability to monitor and configure the Clock panel window for Shotbox. The Clock panel will display the active countdown and count up clock for each channel used by that shotbox playlist. The clocks per channel act independently and by default are in sync with the master playlist clocks on the left- and right-hand side of the top of the Shotbox panel, they can also be configured to display differently from the master playlist clocks.
∙	This version of Command supports improved Autocue settings for shotboxes. The Autocue options are now divided into two categories: Playlist Autocue feature selections and Shotbox Autocue feature selections. The Autocue settings for each act independently of each other. For the Shotbox Autocue settings, the Autocue logic will respect the settings in the Shotbox Viewer Behavior, which includesinclude the Auto-Assign Channels behavior specifically for shotboxes. These new features are documented in the “System Settings” chapter of the latest version of the MediaCentral
| Command Administration Guide.
∙	A new option has been added to the Command Settings to enable/disable tool tips for the “slug/title” column in a playlist. The new option is under the Tools> Options > Playlist and Shotbox Viewers >Playlist Viewer menu. The new option “Show slug/title tooltip” allows the user to toggle off or on the slug tooltips.
 


 

∙	This version of Command includes the FastServe plugin in VDS selection and Maestro | News plugin in GDS selection.
∙	New for this release, Shotbox rundowns have several new options which are user customizable as to aesthetic look of the rundown. Along with the Thumbnail display there is now Slug ID and/or Item ID selections that can be displayed in the Shotbox rundown.

Here is an example of the Slug ID and the Item ID displayed (along with thumbnails) in the Shotbox rundown.
 


 

Both Shotbox and ItemID can be displayed independently or together, depending on the information in the rundown.

Shotbox rundown displays in a small area where additional elements can cause overcrowding easily. For Shotbox rundowns to be effective and look esthetically pleasing, please keep in mind the following guidelines:
∙	Font sizes larger than 16pt in either the Slug iD, Item ID or the Display clock field could result with bottom of text line touching another or cutoff text. To correct the issue, simply reduce the font point size slightly.
∙	If Thumbnails are chosen not to be displayed, but the Slug ID and Item ID are, then it may throw off the text fields and cause some text jumbling and spacing issues. To correct, display thumbnails or reduce font point size
∙	Shotbox point sizes larger than 20pt in the Display clock may result in Shotbox to cut off the bottoms of text lines. To correct, simply reduce font point size.
∙	In the Display clock, certain fonts will overlap with the channel pin icon, and also run off the page under the Channel assignments box. To correct, change the desired font and/or point size.


New Features in 2018.6
∙	With this version of Command, users can now configure the date format used in placeholders. For more information, please see the updated MediaCentral | Command Administration Guide, provided with this release, or downloaded from Avid’s Knowledge Base website.
∙	This version of Command supports XKEY-80.
 


∙	This version of Command has specific changes to support FastServe as the video server. The FastServe specific support enable external video items to be updated, but need the following options in the workgroup.properties:
Under:
c:\Program Files (x86)\Avid\iNEWS Command\inventorymanager\state\config please change the value from 0 to 1 in com.avid.inventorymanager.playlistrefresh.forcegetclipcalltodevice=0
Under:
c:\Program Files (x86)\Avid\iNEWS Command\device\avidvideodeviceservice\state\config please change the value from 0 to 1 in com.avid.vdcpdeviceprovider.forcegetclipcalltodevice=0

Note: Be aware that these options are incompatible with other video servers, and you cannot have other video server running in the same workgroup.
∙	This version of Command has a new option to enable sending of graphic ID when passing channel specific commands to a device (such as via XKey controller). The new option “Find Item ID and pass it to Graphic Device” checkbox is under the “System Settings/Playout” tab.

New Features in 2017.1
This version of Command supports two additional graphic device services, expanding the number of supported graphic devices on a server to ten.
This version of Command adds support for Windows server 2016.
 

Failover Protocol
The Avid iNEWS Command Best Practices document, which is available as a free download in PDF format on Avid’s Knowledge Base, contains the latest information pertaining to failover and hotswap functionality, including failover scenarios, symptoms, and recommended recovery procedures.
However, some new alterations to the recommended procedure for failover and recovery have been made, and are, therefore, provided in this ReadMe for your convenience.
After primary server failover has occurred, to recover:
1.	Continue with current playlist until the show has been finished.

If there have been changes to the rundown after failover occurred, it will be necessary to load the rundown to the backup server. To switch to the newly loaded news rundown, unlock the channel group on the disconnected playlist and lock on the connected playlist.
NOTE: Do not override the lock on any channel group until at least 5 minutes after the failover happened.
2.	After you have reached an opportune time to bring the Command system back to its Primary/Backup configuration, shut down all services on the backup server—and primary server, if necessary.
3.	all services on the primary server.
4.	Wait for at least one minute, and then re the services on the backup server.
5.	Wait 5 minutes before using the Command system.
6.	Open the Avid Interplay Health Monitor and confirm that the two servers have the expected primary and backup status.
NOTE: After the failover completes, an item’s transport statuses and clocks do not update. For example, if an item was playing while the failover occurred, the playing status will remain, and clocks may continue to count, even though other items have been subsequently played on the same channel. This is a cosmetic issue, and users can ignore the stale transport statuses and clocks. This known limitation is on the roadmap to be fixed in a future version of Command.

Redundancy Guidelines
The following are redundancy guidelines for both administrators and users.

Administration
Command determines primary and backup based on the length of time the service has been running. The server that has been running longer is the primary. Therefore, to get all primary services on one server, it is necessary to the primary server first; when all services have started, start the backup servers.
NOTE: Not all services run in a primary/backup configuration, such as the iNEWS Communication service. This means that when a server fails, it loses connection to the NRCS (iNEWS, ENPS, etc.). At that point the playlist becomes disconnected, which is indicated by the flashing red X over the iNEWS or MOS icon. Users are still able to operate the playlist in this mode, but it does not get any updates to the rundown. See below for full details.
 


Services that are primary show a green dot in the Health Monitor tree. Backup services show a yellow dot. Non-redundant services do not show a dot. All three are shown here.


Failover Process
When a failover happens, here is what the user will see.
∙	The iNEWS or MOS icon will have a flashing red X over it. This indicates that the playlist has been disconnected from the newsroom system.
∙	Several alerts will appear, stating that the workstation is unable to connect to various services.
∙	The channel lock and transport control icons will show a red X over them, and will be unresponsive.
∙	Items (both graphic and video) will continue in their existing state, such as a playing item will continue playing.
Within 15 seconds, the services on the backup Command server should take over as primary, and restore functionality to the workstation.
∙	Users will see 2 or 3 alerts, the Playlist Store, Playlist Manager, and Playlist Controller services.
∙	Transport controls will become responsive again, and the red X will be removed.
∙	At this point, users will be working with the disconnected playlist, so they will not see any updates from the Newsroom system.
∙	In order to restore connection between the newsroom and Command, users will need to reload the show to the backup server. For iNEWS, this is just a simple MON load to the appropriate Command server. ENPS users need to do a MOS redirection with the rundown, which requires some initial configuration to support MOS Redirection. See the MediaCentral | Command Install/Configuration Guide for further details.
∙	The reloaded show will appear as a second playlist in Command, and users will need to switch to the connected playlist and lock channel groups. This should be done at a convenient time, such as during a commercial break, or weather.

System Recovery
After the primary Command server has been restored to functionality, here are the steps to get the system back to its proper state. This should only be when Command is not needed for on-air playout.
1.	Stop all services on the primary server.
2.	Stop all services on the backup server.
3.	Start all services on the primary server.
4.	Wait a few minutes, and then start all the services on the backup server.
5.	Confirm system functionality by loading shows from the newsroom and playing items on all device channels.
 

Known Limitations
This section provides information on known limitations that were not addressed in this release. Any available workaround procedures are also documented, when possible.
NOTE: For limitations related to compatibility of this release with previous versions/other products, see the section of this document entitled, Compatibility.

Workgroup.Properties
There is a known issue with services migrating to backup server. It involves a setting in the workgroup. properties (under C:\Program Files (x86)\Avid\Service Framework\AvidSystemConfigurationService
\state\config) file "com.avid.workgroup.remoting.redundancy.election.timeout"-Wait this long after last hearing from primary before forcing an election. The default was 4000 (4 seconds). In the lab, when it was changed to 8000, services would not migrate anymore.

Playlist Appearance
With “Skip items that are not playable” enabled, when an unplayable clip is cued, the item’s background will not change to the background set in Tools > Options > Playlist and Shotbox Viewers > Appearance. A red X will still appear in the status column in the playlist.

Manual Cue and Move
This version of Command reverted to the following behavior, as the fix to the following set of steps introduced more severe issues.
1.	Lock channel group (AB).
2.	Manually cue second item on each channel.
3.	In iNEWS, reorder the stories that contain the first two items to be immediately underneath the currently cued items.
4.	Cue moves to the ordered two items, rather than staying on the currently cued item.
Workaround: To work around this issue, do one of the following:
∙	Skip Step 2 - the expected items will cue after the items are reordered in Step 3.
∙	Manually cue the items after step 4.
Clear Transfer Status
Clear Transfer Status only works for devices controlled by the Video Device Service (i.e. 3rd party video devices). AirSpeed Multi Stream and AirSpeed 5000 also report transfer status, but the Clear Transfer Status menu option does not function.

AirSpeed Multi Stream Up/Down/Cross-Convert
With the AirSpeed Multi Stream’s Up/Down/Cross-Convert feature, there is a limitation that the channel needs to be idle when cross-converting (i.e. 720p to 1080i, or vice versa). This limitation manifests in Command with its Autocue feature. When you play an item, Command automatically precues the next item. If the playing and cued items are different (e.g. 720p and 1080i), the precue will fail, because the channel needs to be idle before the item can be cued.

AirSpeed Multi Stream Auto Switch Output Format
With the AirSpeed Multi Stream’s Auto Switch Output Format feature, there is a limitation that the channel needs to be idle with Up or Down-converting. This limitation manifests in Command with its Autocue feature. When you play an item, Command automatically precues the next item. If the playing and cued
 


items are different (e.g. HD and SD), the precue will fail, because the channel needs to be idle before the item can be cued.

Workstation Option Hide Newsroom
When the Workstation Option called Hide newsroom story rows with no page numbers is on, the items in the hidden story are still automatically assigned channels when Auto-Assign or Strong Channel assignment is turned on. This will affect playlist ripple sequence, and may cause the displayed items to be out of order, because the hidden items are still part of the ripple sequence.

Tablet Application
∙	Having a large number of items in a shotbox can cause the Command tablet application on an iPad device to lock up.

Workaround: Users should have no more than 30 items in a single shotbox.
∙	Playability status does not update unless the shotbox is open in the Command Workstation. This means that to see an item change from Unplayable to Playable in the tablet application on an iPad device, the corresponding shotbox must be open in the Command Workstation.

Follow-on Playout
AirSpeed Multi Stream only supports clips that are 10 seconds or longer.

Media Viewer
Opening graphics in the media viewer may take a little time.
∙	In the Media Viewer, 1080i scrubbing with AirSpeed Multi Stream is very slow and considered unusable, especially for Play While Record workflows. Users may be able to use it in a scenario where a quick turnaround is not an issue.
∙	The Media Viewer can only be used to modify the in and out points of a clip. The use of Media Viewer requires that a browse channel is set up as part of the channel group that is locked.

Harris VDS Plug-in
Qualification of Command with the Harris Video Device Service plug-in is with the following limitations:
∙	Recue with Goto is a Command feature that, based on testing, does not work with the Harris VDS plug- in. This feature is where Command sends a Goto zero command to the device rather than ejecting and recuing. When integrating Command with the Harris VDS plug-in, users need to make sure the Recue with Goto setting is turned off.
∙	Rename and Protect status changes are not reported back to Command. If the user does a Rename, Delete Protect, or Remove Protection in the Inventory panel, the functions successfully complete on the Harris server, but the changed status is not reported back to Command until the Video Device service is reed.
∙	After setting a Mark In point from the Media Viewer, the clocks in Command do not count when the item is played; although, the item does play for the correct duration and counting can be seen in the NXOS user interface.
NOTE: For compatibility information regarding what version of the Harris VDS plug-in is qualified with Command, see the “Compatibility” section in this ReadMe.

Send to Playback
With Command 2.10, renaming an item’s slug on a 3rd party device while Send to Playback is completing will cause the Transfer Status icon to report complete. This known limitation is on the roadmap to be fixed in a future version of Command.
 

iNEWS Integration
iNEWS must have the video-ID and item-channel fields in the storyform of the rundown. Excluding either of these fields can cause serious problems with Command and iNEWS communication.

Recording
If a recording item crosses the midnight boundary, the starting time is not correctly set to 1:00:00;00, which causes problems with Command’s Count Up/Down clocks. The workaround is to manually set the time to 1:00:00;00 in Newscutter.

AirSpeed Multi Stream
If a recording item crosses the midnight boundary, the starting time is not correctly set to 1:00:00;00, which causes problems with Command’s Count Up/Down clocks.

Workaround: Manually set the time to 1:00:00;00 in Newscutter.
Any Command users relying on the autocue feature need to make sure that the AirSpeed Multi Stream Show first of next option is turned off. To do so, go to the AirSpeed Multi Stream application and click File > Preferences > Channel Configuration, and uncheck the Show first of next box for all channels.

Graphic Integration
For graphic systems that use databases (such and Orad and Pixel Power), leaving the Graphic path blank in the Graphic Editor will cause Command to not send an Intelligent Interface M command.

Maney Panel
While ControlAir supported Maney Panel with both the Measurement Computing and SeaIO cards, Command supported the use of a Maney Panel device only with the Measurement Computer card.

Play While Record
When an AirSpeed Multi Stream play while record item finishes playing, it will remain in the playing status, rather than eject and hold last frame.

Workaround: Eject the item or ignore the status; it does not prevent the next item from being played.

Avid Video Device Service
The Avid Video device service can only be set to one frame rate; therefore, all of the channels controlled by the VDS (including VDCP, Harris, AMP plugins) will be limited to one frame rate. Note that Omneon is an exception, as it supports frame rate on a per-item basis.

As Run Logs
Despite the fact that as run logs in Command are saved as .csv files, opening them in Microsoft Excel 2003 required a user import the file via the Tools > Data > Import menu.

Workaround: Upgrading Microsoft Excel to a newer version will allow you to double-click on any as run log from Command to open it in Excel.

Hold Last Frame
When an item with a short hold last frame—of 2 seconds or less—finishes playing on an AirSpeed Multi Stream, it ejects as expected, but the next cued item also ejects. This is configuration issue on the AirSpeed Multi Stream.
Workaround: On the AirSpeed Multi Stream server, select File > Channel Configuration and deselect the Show first of next checkbox for each channel to resolve this issue.
 

Licenses
When replacing temporary licenses with a full license, users must delete each TEMP line individually before adding a full license.
VDCP
Play While Record does not work with VDCP.
Channel Assignments
When a channel goes down, Command will adjust the channel assignments automatically to not include the down channel. However there are two limitations;
Manual ripple (Ctrl+R) ripples with the down channel

Workaround: Unlock and relock. This will ripple assignments in the playlist with only the connected channels.
Note: If the channel goes down while the channel group is locked, the status of the down channel will remain, meaning that an item cued on C will remain cued after C goes down and the channel is reassigned to B. Despite this, users can ignore the remnant status and continue playing.
Playout
∙	Follow-on will only work with clips of 2 seconds or greater.
∙	In previous versions, if a user used the lock and override feature, the playlist and playout functionality would not work properly for one to five minutes after a server failover.

Workaround: Unlock and relock, if necessary.
∙	When an item ID is manually changed, the user must wait 2 to 3 seconds before cueing and playing that item.
∙	Preview channels in a channel group don’t show the Preview item playing. Preview channels are not supported for Command 1.1.x
∙	After restoring a Command Server to primary status following a failover, items won’t autocue.
Workaround: Manually cue the items.
∙	The only supported Control Configuration for AirSpeed with Command is Local/Network Record or Play. Unrestricted VDCP is not supported. When using Command to control playout on AirSpeed video servers, ensure proper configuration on the actual AirSpeed.

To set Control Configurations on an AirSpeed:
1.	Select Setup > Channels.
2.	Set Control Configurations to Local/Network Record or Play.
 


 
When using Command offline with AirSpeed video servers that are also used with a different playout control system for on-air broadcasting, this setting must be switched according to which system is controlling the video server.

Redundancy
∙	When the backup server loses network connection, the services need to be shut down before reconnecting.
∙	A temporary network interruption is likely should the server running the backup Command services be disconnected from the network and reconnected. This interruption might appear as a possible loss of follow-on playout or affect the appearance of inventory status.
∙	In a redundant configuration, if the network connection to the server running the Primary Command services was lost, if the server was shutdown, or if the server lost power, the Command system would automatically regain functionality after the workstation shows the alert, “The Playlist Controller is available,” and the alert details state, “Items can be played again.”
∙	Reconnecting a network connection to a previously dropped primary Command Server will cause a second interruption in playback. In a redundant configuration, if a network connection to the server running the primary Command services is lost, the Command system will automatically regain functionality after the workstation shows the alert that items can be played again. The limitation comes in if the network connection is restored without the original primary services being reed after the disconnection. For example:
Server A is the primary and Server B is the backup. Server A loses and regains its network connectivity while on-air. In this case, when the Server A regains its network connectivity, there will be a second interruption in playout control. One interruption for the initial disconnect and a second interruption will occur when it regains connectivity.
Workaround: In the example given, shut down Server A until the show is over. This will prevent the second interruption from occurring.


GPO Transport Status
∙	In a mirrored channel configuration, GPO signals will not be sent to reflect the status of the mirrored channel, only for the primary channel.
 

 



UMD
 
∙	If a channel lock is overridden from a different workstation with a different Exclusive Control status (GPI or Workstation), the Remote status will not change. To work around this issue, toggle the Exclusive control setting which will reflect the proper status.


∙	If you re-start the UMD device service while clips are already cued (or precued), the UMD device doesn't get status on those clips. It will display clips that are playing out and eventually catch up to the current state. Although the UMD device is not critical to playout, re-starting its service (or any service) in the middle of a show is not recommended.
 
Anti-Virus Protection
∙	Anti-virus software protection, such as Symantec Endpoint, can cause cueing delays and prevent proper playout.

Workaround: Turn “autoprotection” off.

Upgrades
∙	When a major upgrade is done, such as v2.0.3 to v2.1, the install location reverts back to the install default of C:\Program Files\Avid\iNEWS Command. If you installed Command to an alternate location, you need to change the install location at the appropriate time during the upgrade installation process.

ENPS Integration
∙	If there is a communication breakdown between ENPS and Command and the ENPS rundown needs to be reloaded, the rundown might appear disconnected even though it isn’t.

Workaround: Re the Command application at the workstation before reloading the rundown.
∙	ENPS users might see long IDs even though the Command system is set to use short IDs. This can occur whenever the MOS Communication service loses communication with the Command Inventory Manager.
∙	If a story is updated in ENPS and the channel had been changed from the default, when the updated ENPS story is saved, the channel in Command will be reset to the default. This is a problem with the MOS 2.6 protocol. Avid recommends using MOS 2.8 for the Command MOS ID to avoid this problem.
Looping
∙	If the playlist that has been set to loop has been played to the end, it will not loop if selected to play a second time.

Workaround: Unlock and relock the channel group to eject playlist or item looping. This fixes the problem.
∙	For playlist looping, the cursor does not go back to the top when the last item is playing, but cue does and looped playout will continue as expected.
∙	If the number of times to loop a playlist is set while the channel group is locked, the playlist loops one less than the set time. Other anomalies can also occur.

Workaround: The channel group for the playlist must be unlocked when setting the number of times to loop a playlist.

Mirrored Playout
∙	For mirrored, single-channel, follow-on playout, when an item is playable on the mirrored channel only, the next item—assuming it is available on both primary and mirrored channels—behaves differently.
 


When the item plays on the mirrored channel only, the next item does not cue on the primary channel, nor does the item’s status appear cued in the playlist. Despite this, the next item does play as expected after the mirrored only item finishes playing.
∙	After a primary only or mirrored only follow-on playout, the items are slightly out of sync.
Localization
∙	In the German UI, in the Optionen dialog box, the options associated with Shotbox are not contracted into a tree-like structure, but are provided instead as pathnames.

Newsroom-Controlled Playlist
∙	If you move an item in a nested newsroom (iNEWS) playlist, it uncues an item in the container playlist.
Workaround: Float the item before moving it.
∙	If a large amount of stories (>20) are copied and pasted to the current on-air playlist, you might see the stories get added to the bottom of the playlist initially and then get placed in the proper location after all of the stories have been inserted into the Command playlist.
Workaround: Close and reopen the playlist. When it reopens, the items will be in the correct order and location.
∙	Setting MOS Active and Ready-to-Air immediately after each other will cause an ENPS or MOS-based playlist to incur up to a five-minute delay in Command receiving and loading the playlist. The delay is dependent on the number of items in the playlist.
Workaround: Set the MOS Active flag for the running order long before making it Ready-to-Air.
∙	For ENPS sites: If the primary ENPS server is down for a long period of time (for maintenance, for example), then the Command MOS service should be reed to delete any messages that are waiting to be sent to the Primary. Otherwise it may take some time for these messages to be sent when the Primary s running.

User Interface
∙	In Windows server 2008, the Command workstation must be re-started every 24 hours.
∙	Avid recommends closing the Command workstation application once per day.
∙	After creating a new playlist that contains a story (not an item-only playlist), you cannot insert a placeholder.

Workaround: Insert a second story first. Or set your options so that new playlists are created as item- only playlists (without stories).
∙	Improvements were made to the cursor and autoscroll behavior in Command v2.0, but one problem remains. When unfloating or moving items above the currently playing item, it can still cause the cursor to scroll off screen.
∙	If the Command Workstation is running when Command services are shut down, it might function improperly after the services are back up.

Workaround: Ensure that all Command Workstation applications are closed before shutting down or restarting Command services.
∙	After changing the 'Use short ID' setting in Tools > System Settings > Inventory, you must wait approximately 30 seconds before the change will be propagated back to the Command Workstation.

Workaround: If you want the setting to take affect sooner, close and reopen the Command Workstation application.
 


∙	The Apple Quick Time Updater feature causes network flood when it tries to automatically update. This can prevent the Command system from functioning as expected.
Workaround: Disable this feature.
∙	Playlist tabs in the Playlist Viewer are not well separated.
Workaround: Change the display properties to a Windows XP theme.
∙	If you change the inactive cursor color preference to white and the background is also set to white, the text will be invisible. Command doesn’t automatically detect these color matches.

Shotbox Viewer Panel
If the Shotbox Viewer panel is docked at the top or bottom of the workspace and its size adjusted, Command will not retain the size if the panel is closed and reopened.
Workaround: Undock the panel and size it, or dock it to the left or right sides of the workspace.

Installation
Sometimes you might get an Install Shield 1603 error saying, “A file which needs to be replaced may be held in use. Close all applications and try again.”
Workaround: Click OK and disregard the message.

Avid Service Framework with Command Services
∙	If a Command Server running in the backup role is unplugged, users might see availability alerts for the Playlist Store and with regard to the playability of some items. This is caused by Avid Service Framework sending service unavailable notices when the backup is rediscovered.
∙	Occasionally a Command service might not get the correct election priority and Avid Health Monitor will falsely report a critical status for this service.
Workaround: This does not affect proper service functionality, so you may either ignore the status or re the service in question to correct the problem.

Channel Groups
∙	Changes to system settings associated with the MOS Communication service might not take affect until the service is reed.
Workaround: The MOS service should be reed after changing anything in the MOS section of the system settings.
∙	If CG channel groups are longer than eight characters, the CG style lists are not sent or received in iNEWS.
Workaround: This is intentional because iNEWS only displays the first eight characters. Therefore, if using a CG channel group longer than eight characters, only enter the first eight characters in SYSTEM.MAP and SYSTEM.MOS-MAP in iNEWS.
∙	If a channel group gets deleted, then any playlist items depending on channels in that group will get marked unplayable. But if you recreate a seemingly identical channel group with the same name and the same channels, the items will not get marked playable. This is because it isn’t really the same channel group.
Workaround: If someone deletes a channel group that was assigned to pre-existing playlists, the playlists must be recreated via the Inventory panel and dragging the items back in from the newly recreated channel group.
 

Thunder
∙	Thunder follow-on play ignores looped clips.

 


Workflow
 
Workaround: Put a second or third clip in the playlist, and it will play the clip consecutively, as if it were looped.
 
∙	When you send a package from an editor to your AirSpeed video servers for playout, you must set those AirSpeed video servers up as a studio and transfer to that studio from the editor. If you send to each AirSpeed individually, the clip’s metadata is actually different for each AirSpeed and, therefore, will only show up as available on the first AirSpeed to complete its transfer.
 

Technical Support Information
Most products feature a number of coverage options. Avid Assurance service offerings are designed to facilitate your use of Avid solutions. Service options include extended telephone coverage, automatic software maintenance, extended hardware warranty, and preferred pricing on replacement parts. Offerings and options may vary by product and are not available for all products.
For more information regarding Avid’s service offerings, visit www.avid.com/support or call Avid Sales at 800-949-AVID (800-949-2843).
Program availability and details might vary depending on geographic location and are subject to change without notice. Contact your local Avid office or your local Avid Reseller for complete program information and pricing. However, if you need help locating an Avid office or Avid Reseller near you, please visit www.avid.com or call in North America 800-949-AVID (800-949-2843). International users call 978-275- 2480.

Accessing Online Support
Avid Online Support is available 24 hours per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read/join online message-board discussions.
To access Avid Online Support: Go to www.avid.com/Support
 


 
Copyright and Disclaimer

Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software. The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement. It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of
Avid Technology, Inc.
This product may be protected by one or more U.S. and non-U.S patents. Details are available at www.avid.com/patents.

Copyright © 2022 Avid Technology, Inc. and its licensors. All rights reserved.

Attn. Government User(s). Restricted Rights Legend
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Trademarks
Adrenaline, AirSpeed, ALEX, Alienbrain, Archive, Archive II, Assistant Avid, Avid Unity, Avid Unity ISIS, Avid VideoRAID, CaptureManager, CountDown, Deko, DekoCast, FastBreak, Flexevent, FXDeko, iNEWS, iNEWS Assign, iNEWS ControlAir, Instinct, IntelliRender, Intelli-Sat, Intelli-sat Broadcasting Recording Manager, Interplay, ISIS, IsoSync, LaunchPad, LeaderPlus, ListSync, MachineControl, make manage move | media, Media Composer, NewsCutter, NewsView, OMF, OMF Interchange, Open Media Framework, Open Media Management, SIDON, SimulPlay, SimulRecord, SPACE, SPACEShift, Sundance Digital, Sundance, Symphony, Thunder, Titansync, Titan, UnityRAID, Video the Web Way, VideoRAID, VideoSPACE, VideoSpin, and Xdeck are either registered trademarks or trademarks of Avid Technology, Inc. in the United States and/or other countries.
All other trademarks contained herein are the property of their respective owners. MediaCentral | Command v2022.3 ReadMe (v3.16.3) • 28 March 2022
•	This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.
