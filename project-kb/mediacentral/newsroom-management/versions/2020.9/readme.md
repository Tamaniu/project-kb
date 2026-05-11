---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2020.9"
release-date: 01/09/2020
doc-type: readme
source: pdf
confidentiality: public
date-added: 08/05/2026
status: current
---

Revision History Date Revised Changes Made Sept 2020 Added updates for 2020.9 release Apr 2020 Added updates for 2020.4 release Added updates for v2018.11 release Nov 2018 (Update: 02/2019 – Fixed broken link) 16 June 2018 Added updates for v2018.6 release 18 Dec 2017 Rebranded for v2017.2 release 4 Oct 2016 Adding updates for v4.3.1 23 Mar 2016 Adding updates for v4.3.0 14 Dec 2015 Adding updates for v4.2.1 19 June 2015 Adding updates for v4.2.0 18 Sept 2014 Adding updates for v4.1.0 26 Nov 2013 Adding updates for v4.0.2 10 May 2013 Adding updates for v4.0.1 10 Sept 2012 Adding updates for v4.0 19 Mar 2012 Adding updates for v3.1.0 26 July 2010 Adding updates for v3.0.2 1 June 2010 Adding MOS Router server information 19 Nov 2009 Initial ReadMe for v3.0.0 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Note: Search the Avid Knowledge Base (http://www.avid.com/onlinesupport) for the most up-to-date ReadMe file, which contains the latest information that might have become available after the documentation was published.
This document describes compatibility issues with previous releases, hardware and software requirements, software installation instructions, and summary information on system and memory requirements, when applicable. This document also lists any hardware and/or software limitations.
Version 2020.9 ReadMe Contents Windows Firewall ........................................................................................................................................... 16 Hardware and Software Changes for Version 2020.9 ........................................................................................... 17 Hardware and Software Changes for Version 2020.4 ........................................................................................... 17 Hardware and Software Changes for Version 2018.11 ......................................................................................... 17 Hardware and Software Changes for Version 2018.6 ........................................................................................... 17 Hardware and Software Changes for Version 2017.2 ........................................................................................... 18 Hardware and Software Changes for Version 4.3.1 .............................................................................................. 18 Hardware and Software Changes for Version 4.3.0 .............................................................................................. 18 Hardware and Software Changes for Version 4.2.1 .............................................................................................. 18 Hardware and Software Changes for Version 4.2.0 .............................................................................................. 18 Hardware and Software Changes for Version 4.1.0 .............................................................................................. 19 Hardware and Software Changes for Version 4.0.2 .............................................................................................. 19 Hardware and Software Changes for Version 4.0.1 .............................................................................................. 19 Hardware and Software Changes for Version 4.0 ................................................................................................. 19 Hardware and Software Changes for Version 3.1.0 .............................................................................................. 22 Installation ....................................................................................................................................................... 22 Stories ............................................................................................................................................................. 22 Replication ...................................................................................................................................................... 22 MOS Router Service ........................................................................................................................................ 22 Hardware and Software Changes for Version 3.0.1 .............................................................................................. 23 MOS Router Service ........................................................................................................................................ 23 Hardware and Software Changes for Version 3.0.0 .............................................................................................. 23 roItemStat ........................................................................................................................................................ 23 mosItemReplace .............................................................................................................................................. 23 Known Limitations .............................................................................................................................................. 24 Field Names .................................................................................................................................................... 24 GetMOSDuration ............................................................................................................................................ 24 Version 2020.9 ReadMe MediaCentral | Newsroom Management .......................................................................................................... 24 MOS Gateway ................................................................................................................................................. 24 Technical Support Information ............................................................................................................................ 26 Accessing Online Support ................................................................................................................................ 26 Copyright and Disclaimer ............................................................................................................................ 27 Version 2020.9 ReadMe Compatibility Notes and Issues This version of MediaCentral MOS Gateway is compatible with the following:
Microsoft Windows MOS Gateway is qualified for use on Windows Server 2016 and Windows Server 2019 only. No other operating systems are supported.
MediaCentral | Newsroom Management MOS Gateway requires that the Newsroom Management system be running iNEWS version 3.5 or higher.
MOS Protocols MOS Gateway 4.x supports MOS Protocol versions 2.6 and 2.8. MOS Protocol v3.x is not supported by MOS Gateway.
MOS Devices Supported MOS Devices - Refer to: (https://www.avid.com/products/inews/specifications) for the latest list of supported MOS devices.
Device Connection Limit - A single MOS Gateway supports a maximum of 2 MOS device connections.
Installation / Upgrade Notes and Issues Upgrading to Version 2017.2 If you encounter issues upgrading to v2017.2, please uninstall first and install the new version instead.
New Installation and Activation Procedures for MOS Gateway 3.1.0 This section contains procedures for installing and activating MOS Gateway. Activation requires an internet connection. If the computer that MOS Gateway has been installed on has an internet connection, the activation procedure can be completed on that computer. If the computer that MOS Gateway has been installed on does not have an internet connection, MOS Gateway can be activated on a different computer that does have an internet connection. Instructions for both procedures, as well as installation are provided in this section.
To install MOS Gateway v3.1.0:
1. Insert DVD.
2. Run Setup.exe from DVD. InstallShield Wizard begins with notification of Avid License Control
requirement.
Version 2020.9 ReadMe
3. Click Install to continue.
Note: Before MOS Gateway will install, you will be prompted for installation of Microsoft Visual C++ 2008 Redistributable SP1, if it’s not already installed.
4. Clicking Install will prompt the Avid License Control to install.
Version 2020.9 ReadMe
5. Click Next to begin the iNEWS MOS Gateway InstallShield Wizard.
6. Read the Avid Software License Agreement.
7. Accept the terms in the license agreement.
8. Click Next to continue.
Version 2020.9 ReadMe
9. You can accept the default destination location, or choose the MOS Gateway installation destination
folder by clicking Change.
10. Click Next to continue.
Note: Leaving installation at default destination will create any necessary folders.
11. When InstallShield Wizard prompts that installation is ready, click Install to continue.
Version 2020.9 ReadMe
12. When the installation is complete, you can then activate MOS Gateway. If you want to activate later,
click Done.
You can activate MOS Gateway from the computer on which you installed the software if it has internet access. If it does not have internet access, you must activate MOS Gateway from another computer that does have internet access. Both activation methods are provided in the following procedures.
Note: Avid recommends indirect activation.
To activate MOS Gateway from that computer’s internet connection:
1. Open Avid License Control if Avid License Control is not open.
Note: To activate an installation of MOS Gateway two items are needed, System ID and Activation ID.
2. Click Activate to begin activation of MOS Gateway.
3. Select to activate software using this computer’s internet connection.
Version 2020.9 ReadMe
4. Click Continue.
5. Type System ID and Activation ID.
6. Click Activate.
Version 2020.9 ReadMe
7. Click Done to finish.
8. If MOS Gateway installer is still open, click Finish.
MOS Gateway is now successfully installed, activated, and ready for system configuration and service startup.
To activate MOS Gateway from a different computer that has an internet connection:
1. Open Avid License Control if Avid License Control is not open.
Note: To activate an installation of MOS Gateway two items are needed, System ID and Activation ID.
Version 2020.9 ReadMe
2. Click Activate to begin activation of MOS Gateway.
3. Select to activate software using another computer’s internet connection.
Version 2020.9 ReadMe
4. Click Continue.
5. Type System ID and Activation ID.
6. Click Activate.
7. Follow the on-screen prompts. You need to go to www.avid.com/license on a computer with internet
access to enter the System ID, Activation ID and Device ID.
Note: Avid recommends you write down the System ID, Activation ID and Device ID for later reference.
Version 2020.9 ReadMe
8. Go to the Avid License Web page.
9. Type the Activation ID, Device ID, System ID, and supply your email address.
Note: The System ID field will expose after an Activation ID is determined to be legitimate by the Avid License Server.
10. Click Submit to continue.
Version 2020.9 ReadMe
11. Download the license file (.bin) by clicking Download.
Note: While the .bin file downloads, you are given the option to Register or Activate another license.
This is optional, and at this point the activation process can be continued.
12. Place the downloaded .bin file in a folder on the MOS Gateway computer.
13. Return to the Avid License Control application on the MOS Gateway computer.
Version 2020.9 ReadMe
14. Click Next to continue activation.
15. Click Browse, navigate to the .bin file and open .bin file.
Version 2020.9 ReadMe
16. Click Done to complete the activation.
17. If the MOS Gateway InstallShield Wizard is still open, click Finish.
MOS Gateway is now successfully installed, activated, and ready for system configuration and service startup.
Windows Firewall Windows Firewall Exception settings for MOS Gateway.
When Windows Firewall is enabled in Windows 7 SP1, Windows Server 2008 R2, or Windows Server 2012 R2, the following MOS Gateway services must be added to the Windows Firewall exception list:
∙ MosRouterService.exe - MosRoStorySendService.exe - ∙ MosReplicationService.exe - MosAdminService.exe -.
∙ MosGatewayLogger.exe ∙ MosConfigService.exe - ∙ RegRGS.exe - ∙ regtlb.exe - ∙ TraceLogService.exe - Version 2020.9 ReadMe Hardware and Software Changes for Version 2020.9 ∙ This version of MOS Gateway no longer use iNEWSCOM to get stories from the Newsroom Management Server for MOS Replication and roStorySend workflows; instead, FTP is used. For further instructions, please see the MediaCentral | MOS Gateway Installation and Operations Guide.
∙ This version offers two new options in mosconfig.xml:
<removeMosObjCreate>YES|NO</removeMosObjCreate>. The default is NO.
<UseFTPS>YES|NO</UseFTPS>. The default is YES.
∙ Previously, MOS Gateway experienced problems when monitor remained loaded for a show which was archived (and stories removed from the rundown). This is fixed so that the monitor server is turned off before archiving occurs. IN-930 ∙ Previously, MOS Gateway might crash when receiving an invalid event from the Newsroom Management system. This is fixed. IN-6139 ∙ Previously, the RoStorySend service crashed if NSML contained a tag attribute without a value. This is fixed. IN-6241 ∙ Previously, page-number prepend didn't work properly when there was a missing page-number in the event form. This is fixed. IN-128227 ∙ In previous versions, the router service would quit working if one of the configured devices was unreachable. This is fixed. IN-152472 ∙ In the roStorySend messages, previously the required mosSchema tag in mosExternalMetadata is missing, it is fixed now. IN-5344 Hardware and Software Changes for Version 2020.4 The following change(s) were made to MediaCentral MOS Gateway version 2020.4.
∙ Beginning with this version, a new option is available for the mosconfig.xml. The option— <DisableMosItemStatChannel>YES</ DisableMosItemStatChannel > — may be used to force MOS Gateway to remove the channel information in roItemStat messages, sent from the device to the monitor server, to avoid inadvertent loss of channel changes. For example, if the channel is manually changed by a user, but an echo of roItemStat containing the channel comes in simultaneously, the manual change might be overwritten. IN-5461 Note: After the option is in place, the device will not be able to change the channel using roItemStat messages.
Hardware and Software Changes for Version 2018.11 The following change(s) were made to MediaCentral MOS Gateway version 2018.11.
∙ This version of MOS Gateway has improved event status to the server from the device by differentiating empty channel versus no channel information. IN-4248 Hardware and Software Changes for Version 2018.6 The following change(s) were made to MediaCentral MOS Gateway version 2018.6.
∙ In previous version, if monitor loses network communication to the MOS GW after a monitor load, and monitor load the rundown again when connection is restored, with the new shortID option, a new short ID is created for this rundown which will break a MAM controlled workflow. This is fixed. IN-3093 ∙ In previous version, if using the placeholder workflow, launching of the item using its own activeX is disabled. This version would extract settings from mosconfig.xml for browser/editor/player into the Version 2020.9 ReadMe mosItem or the device could add the information with mosItemReplace message, but together with MediaCentral Newsroom client 2018.6, launching through activeX is enabled. IN-173642 Hardware and Software Changes for Version 2017.2 The following change(s) were made to MediaCentral MOS Gateway version 2017.2.
∙ In this version, both the product name and numbering system for version has been modified. Avid iNEWS MOS Gateway is now known as MediaCentral MOS Gateway, and numerical version utilizes the year of release within it, so this version 4.4 is now referred to as 2017.2.
Hardware and Software Changes for Version 4.3.1 The following changes were made to iNEWS MOS Gateway version 4.3.1.
∙ In previous versions of MOS Gateway, the required objType & objTB tags were missing in mosObjCreate message. This is fixed. IN-2043 Hardware and Software Changes for Version 4.3.0 The following changes were made to iNEWS MOS Gateway version 4.3.0.
∙ A new device option <ShortRoID> has been added. If you have the line <ShortRoID>YES</ShortRoID> in the Devices section of the mosconfig.xml configuration file, then MOS Gateway will use the last portion of the rundown name as RoID. If another rundown has the same short name already loaded, a number will be appended to differentiate the rundowns. The default for this option is NO. IN-1664 ∙ A new device option <ReplicateData> has been added to the Devices section of the mosconfig.xml configuration file. If the Devices section has the option <ReplicateData>YES</ReplicateData>, then <objType>, <objTB>, <objDur>, <itemEdStart>, <itemEdDur> in the item will be replicated to <mosPayload> in <mosExternalMetaData>. The default for this option is NO. IN-1665 Hardware and Software Changes for Version 4.2.1 The following changes were made to iNEWS MOS Gateway version 4.2.1.
∙ In previous 4.x versions of MOS Gateway, intermittent failures of the MOS Router Service occurred. This has been fixed. IN-1447 ∙ In previous versions, long rundowns could result in excessive logging and cause MOS Gateway to hang up.
New <LoggingLevel>are added to <logging> to address the issue with 0x10 -> enable logging of XML messages to MOS devices 0x20-> enable logging of XML messages from MOS devices 0x80-> enable of error messages from replication services 0x03- errors & warnings and 1 liner information, and all messaging is enabled by default.
This is fixed. IN-1555 Hardware and Software Changes for Version 4.2.0 The following changes were made to iNEWS MOS Gateway version 4.2.0.
∙ In previous versions of MOS Gateway, deleting of unassigned placeholder from a MOS device would change the status of that item to DELETED in the Replication queue in iNEWS instead of actually removing the item from the queue as expected. This has been fixed, so that now deletions on the device are correctly reflected in the Replication queue on iNEWS. IN-1076 Version 2020.9 ReadMe ∙ In previous version of mos gateway "replicate" and "clear" buttons of Mos Admin application didn't work as should. This is fixed. IN-1028 ∙ In this version of MOS Gateway, the duration is extracted, if available from the mosObj, and displayed in the MOS-DURATION field for stories in the Replication queue on iNEWS.
Hardware and Software Changes for Version 4.1.0 The following changes were made to iNEWS MOS Gateway version 4.1.0.
∙ This version of MOS Gateway has a new per device setting GetMosDuration. When set to “yes” and replication for the device is set up, the updated duration will be saved in the replication service’s cache.
The saved duration will be sent to update an event whenever there is a status change. The default for the setting is No. This new setting is to provide a way to update duration for devices that do not support mosItemReplace.
Hardware and Software Changes for Version 4.0.2 The following changes were made to iNEWS MOS Gateway version 4.0.2.
∙ In previous versions of MOS Gateway, a multithreaded message between iNEWS and MOS Gateway might get inadvertently overwritten, which corrupts the stream and breaks the connection between the monitor server and MOS. This is fixed.
Hardware and Software Changes for Version 4.0.1 The following changes were made to iNEWS MOS Gateway version 4.0.1.
∙ In previous versions of MOS Gateway, if text update and delete of the same story is received from iNEWS at the same time, it might send the text update after the delete to the device. This is fixed.
Hardware and Software Changes for Version 4.0 The following changes were made to iNEWS MOS Gateway version 4.0.
∙ There is new variable support in the mosconfig.xml under <mosDevice>, <AllowMosObjCreate>YES</AllowMosObjCreate> Default value is NO. You need to set it to YES to enable MOS Gateway to ask third-party devices for the ID for any mosObjCreate items.
∙ iNEWS v4.0 now lets users insert MOS object placeholders within iNEWS stories in either the story form or as a story’s production cue. The procedures for doing so are as follows:
To insert a MOS object placeholder:
1. Right-click while mouse pointer is either in the Story Form panel or in the Story Text panel.
2. Select Insert Placeholder.
3. Select the MOS device.
Version 2020.9 ReadMe
4. Enter a new slug or use the default.
5. (Optional) Enter a description.
6. Click OK.
If you right-clicked in the Story Form panel, the new MOS object placeholder appears in the story form.
If you right-clicked in the Story Text panel, the new MOS object placeholder appears as a production cue in the Instruction panel.
Version 2020.9 ReadMe The MOS device user can update the placeholder with a real ID and object by turning on or loading the monitor server. MOS Gateway will then return data back to iNEWS where the placeholder is located in either the story form (below at left) or product cue (below at right).
∙ In previous versions of MOS Gateway, mosconfig.xsl incorrectly identified the "mossvr" SYSTEM.MAP line as "mossrv." This is fixed.
Version 2020.9 ReadMe Hardware and Software Changes for Version 3.1.0 The following changes were made to iNEWS MOS Gateway version 3.1.0.
Installation ∙ In previous versions of iNEWS MOS Gateway 3, installation required installation and support of Microsoft Java VM for license management. Microsoft Java is no longer supported by Microsoft.
iNEWS MOS Gateway 3.1.0 now uses Avid’s License Control application to manage licensing.
If MOS Gateway 3.0.0 or 3.0.1 is installed, the 3.0.2 installer should be used to upgrade the previous install. The 3.0.0 and 3.0.1 uninstallers should not be used.
Stories ∙ In previous versions of MOS Gateway, some normal text would be replaced by presenter text as part of roStorySend. This is fixed.
∙ In previous versions of MOS Gateway, tabs in the story body could be mishandled when NSMLX was not enabled. This is fixed.
Replication ∙ In previous versions of MOS Gateway, MOS replication would only replicate tags that were present in a pre-defined list of tags. This is fixed. MOS replication can now replicate all tags contained in the incoming message.
An asterisk XPath statement can be used to replicate tags that contain multiple levels of children, like mosExternalMetadata or objPaths. This statement can only be used in the attachment sections of the story, not in the story body. Any XPath statement that produces an XML element will result in story save failures if used in the story body. For example:
"<mosExternalMetadata>%/mos/mosObj/MosExternalMetadata/*%</mosExternalMetadata>" This example will replicate the complete contents of mosExternalMetadata. Only use this statement in the attachments.
MOS Router Service ∙ In previous versions of MOS Gateway 3.0, empty MOS messages sent from devices could cause MOS Router Service to terminate unexpectedly. This is fixed.
∙ In previous versions of MOS Gateway, MOS Router Service could exit or fail to start if one of the configured devices was unreachable. This is fixed. MOS Router Service will now start correctly and report that the device is unreachable.
Version 2020.9 ReadMe Hardware and Software Changes for Version 3.0.1 The following changes were made to iNEWS MOS Gateway version 3.0.1.
MOS Router Service ∙ In previous versions of MOS Gateway, messages over 16KB would result in a MOS Router Service crash. This is fixed. Message size is now limited to 32764 bytes when used with iNEWS version 2.8.8 and earlier. Message size in iNEWS v3.0 and later is limited to 65,535 bytes.
Hardware and Software Changes for Version 3.0.0 The following changes were made to iNEWS MOS Gateway version 3.0.0.
roItemStat ∙ MOS Gateway now supports feeding item channels back to iNEWS. Anytime an <itemChannel> tag is included in a roItemStat message, the text inside that element will be passed on to iNEWS as the new item channel.
<mos> <mosID>MOS</mosID> <ncsID>NRCS</ncsID> <roItemStat> <roID>NRCS/SHOW.6PM.RUNDOWN</roID> <storyID>64261505</storyID> <itemID>MOS-Active</itemID> <objID>12345</objID> <status>READY</status> <time>2009-11-16T16:55:08</time> <itemChannel>A</itemChannel> </roItemStat> </mos> mosItemReplace ∙ MOS Gateway now supports the mosItemReplace message, which allows a MOS server to update items in the NRCS database. This feature is activated by inserting "YES" into the AllowMosItemReplace line in the MOS configuration file (mosconfig.xml). MOS Gateway 3.0.0 will continue to work with earlier versions of iNEWS, but iNEWS Server 3.0.0 or later is required for mosItemReplace functionality.
The message, which is delivered to iNEWS through a loaded monitor server, will update MOS items in the loaded rundown's story form and story body.
The mosItemReplace command is defined in the MOS Protocol.
Version 2020.9 ReadMe Known Limitations This section provides information on known limitations that were not addressed in this release. Any available workaround procedures are also documented, when possible.
Note: For limitations related to compatibility of this release with previous versions/other products, see the section of this document entitled, “Compatibility Issues”.
Field Names MOS Gateway does not support underscore character (_) in field names because of iNEWSCOM.
GetMOSDuration With the GetMosDuration option together with Replication and MosItemReplace, it has been observed that the CPU usages might get to 100% and the version ID of the mosItem keeps incrementing if the device sends excessive roItemStat messages. We would recommend turning off the GetMosDuration or replication option if it is not required in your workflow.
MediaCentral | Newsroom Management Newsroom Management Server does not get "Download Complete" message from MOS Gateway This is caused by the MOS device not including a roID with its roAck to the MOS Gateway after a show has been loaded. If the roID is not included in the message, the MOS Gateway does not know where to send the "Download Complete" message.
iNEWS Workstation installer overwrites inewscom.dll registration used by MOS Gateway The registration of the inewscom.dll installed with MOS Gateway 2.6.1 and 2.6.2 will be overwritten by the iNEWS Workstation install program. When this occurs, an incorrect version of the inewscom.dll is used by MOS Gateway. This can cause parts of the MOS Gateway functionality to fail, specifically roStorySend.
Workaround: Do not install iNEWS Workstation software on the MOS Gateway computer. Or install MOS Gateway after the iNEWS Workstation software.
MOS Gateway Unused MOS devices will generate reqMachineInfo errors in the log file If a MOS device is specified in the mosconfig.xml file and it is not present on the network, there will be errors indicating that the device is not reachable during start up of the MOS Gateway. This is normal behavior.
Workaround: Remove any unused MOS device configurations from the mosconfig.xml file.
MOS devices on the network but not specified in the mosconfig.xml file generates errors in the log file If a MOS device is present on the network and is configured to communicate with the MOS Gateway computer it will cause error messages to be logged in the MOS Gateway logging if it is not also specified in the mosconfig.xml file. This is normal behavior.
Workaround: Remove from the network or reconfigure any unused MOS devices that are configured to talk to the MOS Gateway but are not going to be used.
Version 2020.9 ReadMe Additional download time overhead when using handlesRoStorySend option Because of the amount of data being processed and sent with this option enabled, the amount of time to load MOS devices will be significant.
Workaround: Unless required by the MOS device, Avid recommend that this option be set to NO.
Upgrades require uninstall first MOS Gateway does not support upgrades over existing installations. All upgrades of MOS Gateway require that previous versions of the software be uninstalled first.
Version 2020.9 ReadMe Technical Support Information Most products feature a number of coverage options. Avid Assurance service offerings are designed to facilitate your use of Avid solutions. Service options include extended telephone coverage, automatic software maintenance, extended hardware warranty, and preferred pricing on replacement parts. Offerings and options may vary by product and are not available for all products.
For more information regarding Avid’s service offerings, visit www.avid.com/support or call Avid Sales at 800-949-AVID (800-949-2843).
Program availability and details might vary depending on geographic location and are subject to change without notice. Contact your local Avid office or your local Avid Reseller for complete program information and pricing. However, if you need help locating an Avid office or Avid Reseller near you, please visit www.avid.com or call in North America 800-949-AVID (800-949-2843). International users call 978-275-2480.
Accessing Online Support Avid Online Support is available 24 hours per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read/join online message-board discussions.
To access Avid Online Support:
➢ Go to www.avid.com/onlineSupport.
Note: Supplemental documentation for this release, if available, is provided on the Knowledge Base.
For the latest up-to-date information, browse the Knowledge Base at Avid Online Support.
Version 2020.9 ReadMe Copyright and Disclaimer Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software. The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement. It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Copyright © 2020 Avid Technology, Inc. and its licensors. All rights reserved.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Adrenaline, AirSpeed, ALEX, Alienbrain, Archive, Archive II, Assistant Avid, Avid Unity, Avid Unity ISIS, Avid VideoRAID, CaptureManager, CountDown, Deko, DekoCast, FastBreak, Flexevent, FXDeko, iNEWS, iNEWS Assign, iNEWS ControlAir, Instinct, IntelliRender, Intelli-Sat, Intelli-sat Broadcasting Recording Manager, Interplay, ISIS, IsoSync, LaunchPad, LeaderPlus, ListSync, MachineControl, make manage move | media, Media Composer, NewsCutter, NewsView, OMF, OMF Interchange, Open Media Framework, Open Media Management, SIDON, SimulPlay, SimulRecord, SPACE, SPACEShift, Sundance Digital, Sundance, Symphony, Thunder, Titansync, Titan, UnityRAID, Video the Web Way, VideoRAID, VideoSPACE, VideoSpin, and Xdeck are either registered trademarks or trademarks of Avid Technology, Inc. in the United States and/or other countries.
All other trademarks contained herein are the property of their respective owners.
MediaCentral | MOS Gateway 2020.9 ReadMe • (v5.0) • 24 September 2020 This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.