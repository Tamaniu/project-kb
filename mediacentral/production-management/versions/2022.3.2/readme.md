---
product: mediacentral-production-management
product-area: production-management
version: "2022.3.2"
release-date: 01/03/2022
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

MediaCentral | Production Management Version 2022.3.2 ReadMe Avid recommends that you read all the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following link on the Avid Knowledge Base for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
http://avid.force.com/pkb/articles/en_US/readme/Avid-Interplay-Production-Documentation Revision History Date Revised Changes Made January 22. 2024 We have discovered that the Media Indexer 2022.3.1 installer does not install the Microsoft Visual C++ 2012 Update 4 Redistributable Package. The dependency on VC 12.0 runtime has been removed and Prerequisites were updated to use the latest single package VC 2015-2022.
Redistributable Package (x64) is required from the ReadMe.
June 22, 2023 Added a new component Production Management Engine / Archive Engine, which includes the fixes for IPI-3513, and IPI-3515:
For more information, see “Production Management Engine / Archive Engine Fixes” on page 6.
May 22, 2023 Added a limitation (IPI-3454) for Interplay Restore:
For more information, see “Interplay Restore” on page 7.
March 8, 2023 Added the following limitations:
(cid:129) For Production Services Transcode Bug Number: IPI-3461. Sending to Archive via either the Production Management to Asset Management workflow or sending directly from Access to a Mixdown Profile fails with a relink error.
(cid:129) For MediaCentral Transfer Bug Number: IPI-3377. Consolidated clips are causing black on air after Send to Playback.
February 2, 2023 Removed a limitation for Media Indexer (IPI-3381) as it was deemed unreproducible.
Bug Number: IPI-3381. Media Indexer can have problems starting properly on a Mac with SIP disabled. Once SIP is enabled, it will connect almost immediately after a reboot.
Date Revised Changes Made January 11, 2023 Added a fix (IPI-3314) for Production Services Transcode.
December 27, 2022 Added Production Services Engine (PSE) aka DMS Broker. and STP Encode to list of released components for 2022.3.2 that had Avid internal changes only (no fixes).
December 22, 2022 Additional 2022.3.2 updates.
December 21, 2022 Media Indexer 2022.3.2 Release December 14, 2022 Updated with additional improvements, fixes, and limitations for Interplay Access, Media Indexer, Transcode, and Transfer Engine.
November 2, 2022 Added a prerequisite before installing the new software as follows:
Before you install the new software, you must remove these items:
(cid:129) Avid Application Manager (cid:129) Avid Interplay Access (cid:129) Avid Interplay Transcode (cid:129) (if visible) Media Composer Place Holder For more information, see “Installation and Prerequisites” on page 3.
October 21, 2022 Added a limitation for Media Indexer (IPI-3381). For more information, see “Limitations in Version 2022.3.2” on page 7.
August, 29, 2022 Removed the fix for IPI-3246, as it was already documented in the Production Management 2022.3.1 release, and is described there.
July 27, 2022 First publication Overview Overview This ReadMe describes the changes contained in the MediaCentral Production Management v2022.3.2 release which contains the following products:
(cid:129) Interplay Access (cid:129) MediaCentral Transfer (includes Transfer Engine, and Transfer Client) (cid:129) MediaCentral Production Index (cid:129) Production Management Engine / Production Management Archive Engine (cid:129) Production Services Archive / Restore Provider (cid:129) Production Services Transcode Provider
> **Note:** As of 2017, Media Indexer was re-branded as MediaCentral | Production Index. The product might
still be referred to as Media Indexer (MI) in this or in other Interplay | Production documentation.
This release includes the following apps that include no changes from the prior release. These patches were created as part of a procedural change internal to Avid:
(cid:129) MediaCentral Distribution Service (MCDS) (cid:129) Copy (cid:129) Move (cid:129) Delivery (cid:129) DeliveryReceiver (cid:129) Production Services Engine (PSE) aka DMS Broker (cid:129) Production Services Transfer Status (cid:129) Auto Production Services (cid:129) STP Encode Installation and Prerequisites This section includes more information on installation processes for the patch releases described above.
Production Management Client You can use any of the following methods to upgrade the Production Management Client components included in this release:
(cid:129) Launch the patch installer on a system already running the affected product. The previous version of the application is uninstalled automatically, and the new version is installed in its place.
(cid:129) Uninstall the existing version of the application manually through the Windows Add/Remove Programs Control Panel, and then launch the patch installer to install the new version of the application.
(cid:129) If you are performing a new installation of Production Management 2020.4.1 or later, you can install these patches without needing to install a prior version of the software.
Installation and Prerequisites For details on the specific issues fixed in this release, see “Fixed in Version 2022.3.2” on page 6.
Media Indexer Installation Requirements Release v2022.3.2 contains full installers for PC and Mac. The patch is a full installer and does not require a previous installation of Media Indexer. The installers have the following requirement:
(cid:129) Avid recommends that you install this patch on all Media Indexer v2022.3.x servers. For information on which version of Media indexer to install on a Media Composer system, see the following document on the Avid Knowledge Base:
http://resources.avid.com/SupportFiles/Attachments/Interplay_Editor_Compatibility.pdf Upgrading Media Indexer to 2022.3.2 This version of Media Indexer requires you to complete a Full Reindex of your database.
Depending on the number of files (data sources) that the Media Indexer is monitoring, the reindex process can take several hours. You can refer to the following sections of the Avid MediaCentral | Production Management Best Practices Guide on the Avid Knowledge Base for more information on how to better plan for the upgrade and reindex operation:
(cid:129) For general information see “Working with Interplay | Media Indexers v3.5 and Later”.
(cid:129) For information on estimating how long a reindex could take, see the section “Estimating the Indexing Time” (cid:129) For a procedure that explains how to perform the upgrade and reindex operation on one Media Indexer and copy the cache files to the production Media Indexers during the upgrade, see the section “Prebuilding a Cache During an Upgrade for Media Indexer v3.6.x or Higher” The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations. If you plan to use this feature in MI 2019.6 and later, use the latest Chrome browser to perform the reimport.
To upgrade the Media Indexer software for macOS:
1. Navigate to Applications > Avid Uninstallers > Media Indexer and launch the
2. Uncompress the software installation package and launch the installer.
3. Accept the default options and click Close when complete.
If the client asks you to accept incoming network connections from “mongod”, click Allow.
Installation and Prerequisites To upgrade the Media Indexer software for Windows
> **Note:** Steps 1 and 7 of this process apply to the Media Indexer server only. All other steps apply to the
server and the client.
1. (Server only) If you are completing this process on the Media Indexer server, use the Export
Configuration option to preserve the Storage and AMA Metadata (SPAAF) Locations.
2. Stop the MI service.
3. Use the Windows Programs and Features control panel to uninstall the prior version of the
software.
4. Navigate to %ProgramFiles%\Avid\ and delete the AvidMI folder.
This step deletes the binaries. If Windows prevents you from deleting this folder, restart the OS and repeat this step.
5. Navigate to %ProgramData%\Avid\ and delete the AvidMI folder.
6. Install the new version of the software.
7. (Server only) Use Import Configuration to restore the Storage and AMA Metadata (SPAAF)
Locations.
After the installation is complete, the system automatically performs a full reindex.
Downgrading Media Indexer to a Prior Version You can refer to the following process if you need to downgrade to an earlier version of Media Indexer. In most cases, this process should not be required. If you feel that you need to downgrade, Avid suggests contacting Avid Customer Care first to ensure that this process is absolutely necessary.
If you need to downgrade to an earlier version of Media Indexer on macOS, you can refer to the process for Upgrading Media Indexer to 2022.3.2 as the steps for both processes are the same.
To downgrade to an earlier version of Media Indexer for Windows:
1. (Server only) If you are completing this process on the Media Indexer server, use the Export
Configuration option to preserve Storage and AMA Metadata (SPAAF) Locations.
2. Stop the MI service.
3. Navigate to %ProgramData%\Avid\ and delete the AvidMI folder.
This step deletes the MongoDB database. If Windows prevents you from deleting this folder, restart the OS and repeat this process from the start.
4. Use the Windows Programs and Features control panel to uninstall the current version of
software.
5. Install the prior version of the software.
6. (Server only) Use Import Configuration to restore Storage and AMA Metadata (SPAAF)
Locations.
Fixed in Version 2022.3.2 Fixed in Version 2022.3.2 The following issues have been resolved in Production Management v2022.3.2.
Interplay Access / Interplay Administrator Fixes a Bug Number: IPI-3376. The Interplay Administrator responds with a “Remote WG disconnected” error after attempting to create a Workgroup Transfer Preset.
a Bug Number: PLUS-621. Media Composer created assets fail on duplication in Access.
MediaCentral Transfer Engine Fixes a Bug Number: IPI-3303. Large, complex sequences that are sent to playback via EVS, fail on the connect to playback service with the error message: Failed to connect to the playback service. This timeout occurs after a 3 second window, which may not be enough time to process such a large AAF file.
Media Indexer Fixes a Bug Number: IPI-3360. Media Indexer 2022.3.1 would sometimes ignore valid files notifications, thus, not triggering FI indexing. This has been observed on certain systems after upgrading the to v2022.3. MCDS jobs are failing regularly on these systems due to “mixdown media not found” when sending a large amount of jobs. In addition, Audio files created by Transcode provider (v2022.3) will sometimes not get indexed by the FI indexing process - causing issues later in the SendToPlayback process.
a Bug Number: MCCET-4673. We improved latency for the media location requests that was resulting in slow check out in all Media Composer versions above 2018 for clients that had a 4ms network latency.
a Bug Number: MCCET-4778. We improved the issue involving missed Timecode values in FD for SPAAF files by adding timecode values to FDs for SPAFF files.
a Bug Number: MCCET-4619. We solved the issue involving the API using MaterialNumber instead of SourceMOBID in ChannelID generation. To resolve this situation, all media on the database needs to be reindexed.
Production Management Engine / Archive Engine Fixes a Bug Number: IPI-3513, IPI-3515. Sequence check-ins fail with a “'Catastrophic failure' (0x8000ffff)” error. Deleting assets or folders shows a “'invalid property' (0x89990034)“ error, even though the deletion itself works.
> **Note:** The fix prevents the database from getting into this state, but it does not fix the database if these
errors are already occurring. Please contact Avid if you are experiencing these errors.
Limitations in Version 2022.3.2 Production Services Archive / Restore Fixes a Bug Number: IPI-3372, CCUX-6118. Media Composer might not relink to low-res audio after performing a partial restore.
Production Services Transcode Fixes a Bug Number: IPI-3314. Some sequences are triggering a Transcode application failure (vaporized).
a Bug Number: IPI-3050. A sequence (that should an aspect ratio 16:9) can sometimes end up after mixdown to XDCAM HD 50 being rewrapped as 4:3 hires MXF in MediaCentral Asset Management.
Limitations in Version 2022.3.2 The following limitations were found during the development of this release. For additional limitations, see the Avid MediaCentral | Production Management ReadMe v2022.3.0, or related patch ReadMes.
Installation and Configuration a Bug Number: RELENG-3176. When unzipped, the Production Management installer might include long file path names that are incompatible with some versions of Windows. If you need to copy unzipped installation packages from one location to another, Windows 10 and Windows 2016 provide a registry setting that allows for these long path names.
You can find this setting under: Computer Configuration > Admin Templates > System > FileSystem > Enable Win32 long paths Interplay Restore a Bug Number: IPI-3454. Interplay Restore v2022.3.2 will modify the SourceID when doing a partial restore of a subclip for some assets. For example, when attempting to restore a subclip of an archived AirSpeed media, the Restore provider will create files with a different SourceID than the original source files.This will prevent proper relink of the restored Media Files.
It is important to note that if you do a full restore, the SourceID will be correct, which indicates the improper SourceIDs are generated by the Restore Provider.
Limitations in Version 2022.3.2 Media Indexer a Bug Number: IPI-3026. Transcode fails to find some UHD Media created by Root6.
a Bug Number: IPI-3414. If you delete or rename the %ProgramData%\Avid\AvidMI folder, you are not able to complete a Full Reindex of the Media Indexer database. In this case the reindex process fails, filling the mongodb-log file with multiple “Authentication Failed” errors.
> **Note:** Avid recommends that you do not delete or rename this folder unless you plan to complete an
upgrade or a re-installation of the Media Indexer.
Workaround: If you enter this state, you can resolve it by completing the following steps:
1. Stop MI Service
2. Navigate to C:\Program Files\Avid\AvidMI\mongodb.
3. Right click on “setupMongo.bat” and select “Run as administrator” from the context menu.
4. Restart the Media Indexer service.
MediaCentral Transfer a Bug Number: CCUX-5545. Using the FTP Browser to initiate an Ingest of 1080i50 Media, the 100% value occurs well before the actual end of the Ingest, giving the appearance that the Transfer Engine is hung, and waiting for the final checkin. The Transfer Complete message does not appear for many minutes after the 100% value is reached. Additionally, the % calculation seems to be based on 50% of the file as it crawls from 0-50%, and then in a flash displays 100%.
a Bug Number: IPI-3427. Sending to playback fails when sending XAVCI 50 1080P50 that includes black, which requires a black filler frame from the Transfer Manager. The error seen by the sender is "Error: SessionQ::GetSStatus - Process Is Not Running" Not only is the frame missing, but Procmon displays the following instead of the actual Black frame filename:
"Unknown AVCI Format".
> **Note:** If there is no “black” in the sequence, there is no problem transferring this media.
a Bug Number: IPI-3419. CCUX-6491. Starting with Transfer Engine v2021.3.2, the QUOTE command “OPTS UTF8 ON” fails when being sent to an FTP Server that either does not support or is not configured to execute the QUOTE command for any considerations e.g. security. This subsequently kills the Transfer job.
a Bug Number: IPI-3415. Sending sequences via SFTP results in a slow transfer rate (24MB/sec).
a Bug Number: IPI-3377. Consolidated clips are causing black on air after Send to Playback.
Production Services Transcode a Bug Number: IPI-3461. Sending to Archive via either the Production Management to Asset Management workflow or sending directly from Access to a Mixdown Profile fails with a relink error.
Limitations in Version 2022.3.2 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Portions © Copyright 2003-2007 of MOG Solutions.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:
http://www.avid.com/US/about-avid/legal-notices/trademarks.
Avid MediaCentral Production Management v2022.3.2 ReadMe (cid:129) Revised January 22, 2024 (cid:129) This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.