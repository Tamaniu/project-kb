---
product: mediacentral-production-management
product-area: production-management
version: "2022.3.5"
release-date: 01/03/2022
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

MediaCentral | Production Management Version 2022.3.5 ReadMe Avid recommends that you read all the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following link on the Avid Knowledge Base for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
http://avid.force.com/pkb/articles/en_US/readme/Avid-Interplay-Production-Documentation Revision History Date Revised Changes Made January 22, 2024 We have discovered that the Media Indexer 2022.3.5 installer does not install the Microsoft Visual C++ 2012 Update 4 Redistributable Package. The dependency on VC 12.0 runtime has been removed and Prerequisites were updated to use the latest single package VC 2015-2022.
Redistributable Package (x64) is required from the ReadMe.
December 8, 2023 The Media Indexer component was released and includes some fixes (SAK-2935, IPI- 3518, IPI-3445, and IPI-3521).
For more information, see “Media Indexer Fixes” on page 4.
August 7, 2023 The Transcode component was released and includes some fixes.
STP Encode was also released, but does not contain any fixes.
For more information, see “Transcode Fixes” on page 5.
May 24, 2023 First publication. The Interplay Access (macOS) component was released to fix an issue with the 2022.3.4 Interplay Access macOS installer that did not launch Interplay Access when running macOS Ventura (13.4.0).
For more information, see “Interplay Access Fixes” on page 4.
Installation and Prerequisites Installation and Prerequisites This ReadMe describes the changes contained in the MediaCentral Production Management v2022.3.5 release which contains the following products:
Production Management Server In this release, there were changes in the following Production Management Server components:
(cid:129) Interplay Access (macOS only) (cid:129) Media Indexer (cid:129) Transcode (cid:129) STP Encode Production Management Client You can use any of the following methods to upgrade the Production Management Client components included in this release:
(cid:129) Launch the patch installer on a system already running the affected product. The previous version of the application is uninstalled automatically, and the new version is installed in its place.
(cid:129) Uninstall the existing version of the application manually through the Windows Add/Remove Programs Control Panel, and then launch the patch installer to install the new version of the application.
(cid:129) If you are performing a new installation of Production Management 2020.4.1 or later, you can install these patches without needing to install a prior version of the software.
For details on the specific issues fixed in this release, see “Fixed in Version 2022.3.5” on page 4.
Media Indexer Installation Requirements This section includes more information on installation processes for the patch releases described above Release v2022.3.5 contains full installers for PC and Mac. The patch is a full installer and does not require a previous installation of Media Indexer. The installers have the following requirement:
(cid:129) Avid recommends that you install this patch on all Media Indexer v2022.3.x servers. For information on which version of Media indexer to install on a Media Composer system, see the following document on the Avid Knowledge Base:
http://resources.avid.com/SupportFiles/Attachments/Interplay_Editor_Compatibility.pdf Installation and Prerequisites Upgrading Media Indexer to 2022.3.5 This version of Media Indexer requires you to complete a Full Reindex of your database.
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
To upgrade the Media Indexer software for Windows
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
Fixed in Version 2022.3.5 After the installation is complete, the system automatically performs a full reindex.
Downgrading Media Indexer to a Prior Version You can refer to the following process if you need to downgrade to an earlier version of Media Indexer. In most cases, this process should not be required. If you feel that you need to downgrade, Avid suggests contacting Avid Customer Care first to ensure that this process is absolutely necessary.
If you need to downgrade to an earlier version of Media Indexer on macOS, you can refer to the process for Upgrading Media Indexer to 2022.3.5 as the steps for both processes are the same.
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
Fixed in Version 2022.3.5 The following issues have been resolved in Production Management v2022.3.5.
Interplay Access Fixes a Bug Number: IPI-3501. There was an unexpected issue with the Interplay Access 2022.3.4 (macOS only) installer where users were unable to launch 2022.3.4 Interplay Access on macOS Ventura (13.4.0). This release provides a new Interplay Access (macOS) installer that fixes this issue.
Media Indexer Fixes a Bug Number: SAK-2954. We have updated ActiveMQ to a version that fixes a remote code execution security issue.
a Bug Number: IPI-3445. Media Indexer will not trigger Format Independent (FI) indexing for some files during a full reindex.
a Bug Number: IPI-3518. Media Indexer 2022.3.4 does not create enough CLASSIC Indexing workers, meaning the worker count is different compared to previous versions. This results in slow indexing.
Limitations in Version 2022.3.5 a Bug Number: IPI-3521. Bug Number: There is an issue where two different Media Indexers are indexing some files with missing data for the CLASSIC approach. The file is present in the CLASSIC index, but there is no Quality Descriptor (no value) for the New Qid field.
For example, one Media Indexer will put the file in the index, but will have a NULL value for the New Qid field when checking into the Storage Browser/Search. The other Media Indexer will put the file in the index, but if you check in the Storage Browser/Search for the path, you will see that the Quality Descriptor is missing, with error “Quality Descriptor not found!” These problems are causing issues in MediaCentral Cloud UX, as it is unable to relink to this file and displays a “Media Offline” message.
Transcode Fixes a Bug Number: IPI-3472. When transcoding a sequence with unrendered subcap-effects, the transcoder ignores the “letter spacing” setting. After transcoding, 'letter spacing” looks like it's set to a value of -1 or 0.
a Bug Number: IPI-3444. When attempting to Transcode an UHD 50p XAVC Intra Class 300 CBG to proxy H.264 720p50 800kbps, Transcode will generate the following error message:
Exception: FatalProc() Assertion failed: IndexDuration() <= IndexEntryCount(), fileName=s:\coresw\ame\src\msm\mxfmappersegmented.c, line=254 a Bug Number: IPI-3190. When transcoding to the H264 “CONSOLIDATE” profile for the sub- clips, there is a relink fail error that results in a slowdown of transcodes of subclips to Consolidate / Transcode from Access including many that report relink fails and aborts.
STP Encode Fixes There are no fixes for STP Encode that require documentation in this release.
Limitations in Version 2022.3.5 The following limitations were found during the development of this release. For additional limitations, see the Avid MediaCentral | Production Management ReadMe v2022.3.0, or related patch ReadMes.
Installation and Configuration a Bug Number: RELENG-3176. When unzipped, the Production Management installer might include long file path names that are incompatible with some versions of Windows. If you need to copy unzipped installation packages from one location to another, Windows 10 and Windows 2016 provide a registry setting that allows for these long path names.
You can find this setting under: Computer Configuration > Admin Templates > System > FileSystem > Enable Win32 long paths Limitations in Version 2022.3.5 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Portions © Copyright 2003-2007 of MOG Solutions.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:
http://www.avid.com/US/about-avid/legal-notices/trademarks.
Avid MediaCentral Production Management v2022.3.5 ReadMe (cid:129) Revised January 22, 2024 (cid:129) This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.