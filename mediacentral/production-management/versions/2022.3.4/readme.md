---
product: mediacentral-production-management
product-area: production-management
version: "2022.3.4"
release-date: 01/03/2022
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

MediaCentral | Production Management Version 2022.3.4 ReadMe Avid recommends that you read all the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following link on the Avid Knowledge Base for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
http://avid.force.com/pkb/articles/en_US/readme/Avid-Interplay-Production-Documentation Revision History Date Revised Changes Made July 13, 2023 The following changes were made:
• Added a Limitation for MediaCentral Transfer (IPI-3511).
For more information, see “MediaCentral Transfer Limitations” on page 5.
June 1, 2023 Added new components for this release (Production Services Transcode, and STP Encode).
The following fixes for Production Services Transcode (IPI-3461, and IPI-3497) are included in this release.
For more information, see “Production Services Transcode Fixes” on page 4.
> **Note:** There are no documented fixes for STP Encode.
May 12, 2023 Added some Transfer Limitations:
(cid:129) Moved IPI-3468 to a Transfer Limitation.
(cid:129) Added IPI-3498 as a new Transfer Limitation.
For more information, see “MediaCentral Transfer Limitations” on page 5.
May 11, 2023 Added a new Production Management component for 2022.3.4:
(cid:129) Interplay Access (New Component released) For more information, see “Interplay Access Fixes” on page 3.
May 2, 2023 Added a new Production Management component for 2022.3.4:
(cid:129) Media Indexer (New Component released)
> **Note:** Avid replaced the Media Indexer v2022.3.3 release with Media Indexer v2022.3.4
to include additional fixes and stability improvements.
March 30, 2023 First publication. MediaCentral Transfer (Windows only) component was released.
Installation and Prerequisites Installation and Prerequisites This ReadMe describes the changes contained in the MediaCentral Production Management v2022.3.4 release which contains the following products:
Production Management Server In this release, there were changes in the following Production Management Server components:
(cid:129) Interplay Access (cid:129) Media Indexer (cid:129) MediaCentral Transfer (Transfer Engine only, Windows only) (cid:129) Production Services Transcode (cid:129) STP Encode New Features and Improvements The following features and improvements have been added in Production Management v2022.3.4.
Media Indexer Improvements Media Indexer v2022.3.4 has the following improvements.
Allow Media Indexer to Run as Non-Root (SAK-1836) In this version, all Media Indexer processes will run as a non-root users. This improves security of Media Indexer systems.
MediaCentral Transfer (Transfer Engine Only, Windows Only) MediaCenbtral Transfer v2022.3.4 has the following improvements.
Added Check Box to the Transfer Engine Config FTP Device Settings (CCUX-6533) We have added a check box to Transfer Engine Config FTP Device settings to enable/disable OPTS UTF8 functionality.
Fixed in Version 2022.3.4 Fixed Media Status Issue with TMAuto Ingest Non-matching Track Lengths Media (CCUX-6833) We have fixed a media status issue with TMAuto Ingest for non-matching track lengths media.
Fix Incorrect MetaData in SD Media (CCUX-6606) We have provided a solution to fix incorrect metadata in SD media. The fix will ensure that OP1a media files exported via Transfer Engine from SD sources pass MXF validation without the following three error messages:
(cid:129) Error The correct value for property Aspect Ratio is 16/9 and not 4/3 as encoded in the file.
(cid:129) Error The correct value for property BlockAlign is 3 and not 768 as encoded in the file.
(cid:129) Error The correct value for property AvgBps is 144000 and not 2150760960 as encoded in the file.
Fixed in Version 2022.3.4 The following issues have been resolved in Production Management v2022.3.4.
Interplay Access Fixes a Bug Number: IPI-3482. Access does not offer the Delivery, Move, Copy, Archive and Restore dialogs when an asset is or was associated with AMA and native media.
Media Indexer Fixes a Bug Number: IPI-3414. If you delete or rename the %ProgramData%\Avid\AvidMI folder, you are not able to complete a Full Reindex of the Media Indexer database. In this case the reindex process fails, filling the mongodb-log file with multiple “Authentication Failed” errors.
> **Note:** Avid recommends that you do not delete or rename this folder unless you plan to complete an
upgrade or a re-installation of the Media Indexer.
Workaround: If you enter this state, you can resolve it by completing the following steps:
1. Stop MI Service
2. Navigate to C:\Program Files\Avid\AvidMI\mongodb.
3. Right click on “setupMongo.bat” and select “Run as administrator” from the context menu.
4. Restart the Media Indexer service.
a Bug Number: SAK-2258. Media Indexer cannot be upgraded to 2022.2 or later without removing the ProgramData folder.
Workaround: To work around this issue, delete C:\ProgramData\Avid\AvidMI folder before the upgrade.
MediaCentral Transfer (Windows Only) Fixes a Bug Number: IPI-3433. Transfer Engine is performing Avid NEXIS Reads at 4MB, even though the setting is set to 16MB for DET Transfers.
Limitations in Version 2022.3.4 a Bug Number: IPI-3427. Sending to playback fails when sending XAVCI 50 1080P50 that includes black, which requires a black filler frame from the Transfer Manager. The error seen by the sender is "Error: SessionQ::GetSStatus - Process Is Not Running" Not only is the frame missing, but Procmon displays the following instead of the actual Black frame filename:
"Unknown AVCI Format".
> **Note:** If there is no “black” in the sequence, there is no problem transferring this media.
a Bug Number: IPI-3419. CCUX-6491. Starting with Transfer Engine v2021.3.2, the QUOTE command “OPTS UTF8 ON” fails when being sent to an FTP Server that either does not support or is not configured to execute the QUOTE command for any considerations e.g. security. This subsequently kills the Transfer job.
a Bug Number: IPI-3401. OP1A files created by FFMPEG cannot be ingested using the FTP Browser by selecting the FFMPEG created OP1A file and trying to move it to the right hand window. This will fail with Error:GenericIngestMxfParserImpl::Parse()-Unable to parse Ingest file header.
This same file can be imported by the Editor in it’s entirety with no issues.
a Bug Number: IPI-3377. Consolidated clips are causing black on air after Send to Playback.
Production Services Transcode Fixes a Bug Number: IPI-3497. Using Transcode 2022.3.3 to create a mixdown of sequences created within MediaCentral Cloud UX or Media Composer containing AVC-I clips created by EVS, results in clips that display artifacts, even though no error is raised in Transcode.
a Bug Number: IPI-3461. Sending to Archive via either the Production Management to Asset Management workflow or sending directly from Access to a Mixdown Profile fails with a relink error.
STP Encode There are no documented fixes for the STP Encode component in this release.
Limitations in Version 2022.3.4 The following limitations were found during the development of this release. For additional limitations, see the Avid MediaCentral | Production Management ReadMe v2022.3.0, or related patch ReadMes.
Installation and Configuration a Bug Number: RELENG-3176. When unzipped, the Production Management installer might include long file path names that are incompatible with some versions of Windows. If you need to copy unzipped installation packages from one location to another, Windows 10 and Windows 2016 provide a registry setting that allows for these long path names.
Limitations in Version 2022.3.4 You can find this setting under: Computer Configuration > Admin Templates > System > FileSystem > Enable Win32 long paths Media Indexer Limitations The following limitations for Media Indexer were found in this release.
a Bug Number: IPI-3445. Media Indexer will not trigger FI indexing for some files during a Full Reindex.
a Bug Number: IPI-3026. Transcode fails to find some UHD Media created by Root6.
a Bug Number: SAK-2465. Media Indexer on macOS is dependent on an Avid NEXIS Client being installed. If the Avid NEXIS Client is not installed, after installation, the Media Indexer Web user interface does not work for a long time.
MediaCentral Transfer Limitations a Bug Number: IPI-3511. DNxHR HQX UHD 23.98 media will not Send to Playback with Transfer Engine.
a Bug Number: IPI-3498. When using XAVCI media and sending a sequence with a large amount of Markers (e.g., 350 Markers with 132 chars per marker), there is a timeout up front while this AAF is being processed and the job will ultimately fail.
a Bug Number: IPI-3468. With the XML option checked so as to deliver an XML file with the OP1A on STP, the Transfers will eventually start continuously failing until the Transfer Engine application is restarted. This # of jobs where the problem starts seems to be around 1200 transfers.
a Bug Number: CCUX-7434. With Transfer Engine v2022.3.4, the XML file is not being sent to the FTP Server if SFTP is in use.
Limitations in Version 2022.3.4 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Portions © Copyright 2003-2007 of MOG Solutions.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:
http://www.avid.com/US/about-avid/legal-notices/trademarks.
Avid MediaCentral Production Management v2022.3.4 ReadMe (cid:129) Revised July 13, 2023 (cid:129) This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.