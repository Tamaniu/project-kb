---
product: mediacentral-production-management
product-area: production-management
version: "2022.3.1"
release-date: 01/03/2022
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

MediaCentral | Production Management Version 2022.3.1 ReadMe Avid recommends that you read all the information in this ReadMe thoroughly before installing or using the software described in this document.
> **Note:** The new name for Media Indexer is MediaCentral | Production Index. The product is still referred to
as Media Indexer (MI) in this document and other Production Management documentation.
> **Note:** The Avid MediaCentral Production Management server is in the process of removing the use of e-
mail as a means to alert users to server status and errors. This is because of a growing concern that e-mail is a security risk to the safe operations of Enterprise deployments. In future releases, there will be a replacement scheme to get information on system status to the management staff.
See the following link on the Avid Knowledge Base for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
http://avid.force.com/pkb/articles/en_US/readme/Avid-Interplay-Production-Documentation Revision History Date Revised Changes Made January 22, 2024 We have discovered that the Media Indexer 2022.3.1 installer does not install the Microsoft Visual C++ 2012 Update 4 Redistributable Package. The dependency on VC 12.0 runtime has been removed and Prerequisites were updated to use the latest single package VC 2015-2022. Therefore, we have removed the statement that the Microsoft Visual C++ 2012 Update 4 Redistributable Package (x64) is required from the ReadMe.
August 8, 2023 The following fix was added for MediaCentral Transfer:
• IPI-3236 For more information, see “MediaCentral Transfer Fixes” on page 7.
May 24, 2023 The following was added in this release:
(cid:129) Added new component, Production Management Engine. For more information, see these topics:
(cid:129) Added a fix for Interplay Access (IPI-3322). For more information, see “Interplay Access Fixes” on page 7.
(cid:129) Added fixes for Production Management Engine / Archive Engine (PLUS-877, IPI- 3480, and IPI-3434). For more information, see “Production Management Engine Fixes” on page 9.
Date Revised Changes Made August 29, 2022 Updated wording for IPI-3297, and IPI-3246.
July 26, 2022 First publication Installation and Prerequisites Installation and Prerequisites This ReadMe describes the changes contained in the MediaCentral Production Management v2022.3.1 release which contains the following products:
Production Management Server In this release, there were changes in the following Production Management Server components:
(cid:129) Delivery Provider (Delivery and Delivery Receiver) (cid:129) Production Management Engine / Archive Engine (cid:129) Production Services Engine (cid:129) Copy (cid:129) Interplay Access (cid:129) Media Indexer (cid:129) MediaCentral Distribution Service (cid:129) MediaCentral Transfer (cid:129) Move (cid:129) Archive Restore Production Management Client In this release, there were changes in the following Production Management Client components:
(cid:129) Interplay Access Any of the following methods are valid installation paths for Production Management Client components:
(cid:129) Launch the patch installer on a system already running the affected product. The previous version of the application is uninstalled automatically, and the new version is installed in its place.
(cid:129) Uninstall the existing version of the application manually through the Windows Add/Remove Programs Control Panel, and then launch the patch installer to install the new version of the application.
(cid:129) If you are performing a new installation of Production Management 2020.4.1 or later, you can install these patches without needing to install a prior version of the software.
For details on the specific issues fixed in this release, see “Fixed in Version 2022.3.1” on page 7.
Media Indexer Installation Requirements Release v2022.3.1 contains full installers for PC and Mac. The patch is a full installer and does not require a previous installation of Media Indexer. The installers have the following requirement:
(cid:129) This patch is recommended to be installed on all Media Indexer v2022.3.x servers. For information on which version of Media indexer to install on a Media Composer system, see the following document on the Avid Knowledge Base:
http://resources.avid.com/SupportFiles/Attachments/Interplay_Editor_Compatibility.pdf Installation and Prerequisites Upgrading Media Indexer to 2022.3.1 When upgrading from version 2021.3 or later, you do not need to reindex your media.
When upgrading from earlier versions (prior to 2021.3), this upgrade will require a full reindex of media.
> **Note:** Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can
take several hours.
For version 2021.3 and later, you must uninstall the previous version. If the uninstallation fails, you must perform the following steps:
1. Delete the following folder:
- %ProgramFiles%\Avid\AvidMI Do not delete %ProgramData%\Avid\AvidMI unless you wish to perform a full reindex.
2. (Option) If you cannot delete %ProgramFiles%\Avid\AvidMI, restart the OS to finish
uninstalling.
3. Install the new version of Media Indexer.
When upgrading from earlier versions to Media Indexer server to 2022.3.1, perform the full reindex.
The following guide provides information that can help you plan for the upgrade and reindex operation.
http://resources.avid.com/SupportFiles/attach/ Production_Management_Best_Practices_Guide_2022.3.pdf (cid:129) For information on estimating how long a reindex could take, see the section “Estimating the Indexing Time” (cid:129) For a procedure that explains how to perform the upgrade and reindex operation on one Media Indexer and copy the cache files to the production Media Indexers during the upgrade, see the section “Prebuilding a Cache During an Upgrade for Media Indexer v3.6.x or Higher” The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations. If you plan to use this feature in MI 2019.6 and later, use the latest Chrome browser to perform the reimport.
Downgrading Media Indexer to a Prior Version Media Indexer v2021.3.2 and later installs an updated version of MongoDB. Databases created in this version are not compatible with versions of MongoDB used in prior releases of Media Indexer. If you upgrade your Media Indexer server to v2019.6.0 or later and you need to downgrade to an earlier version for some reason, complete the following process.
> **Note:** Unless you are experiencing a problem, you should not be required to downgrade Media Index.
Before downgrading, contact Avid Customer Care for assistance.
Windows Server 2019 Support To downgrade Media Indexer:
1. Use Export Configuration to preserve Storage and AMA Metadata (SPAAF) Locations.
2. Use the Windows Programs and Features Control Panel to uninstall the current version of Media
Indexer.
3. Delete the %ProgramData%\Avid\AvidMI folder.
This step deletes the MongoDB database.
4. Install your desired version of Media Indexer.
5. Use Import Configuration to restore Storage and AMA Metadata (SPAAF) Locations.
6. After the installation is complete, you must wait until a full reindex of your assets completes.
For more information see “Working with Interplay | Media Indexers v3.5 and Later” in the MediaCentral | Production Management Best Practices Guide.
Interplay Administrator Updates When configuring the Server Media Indexer Connection URL settings, you might notice a new tab called “Secondary”. As of this release, Production Management users should configure the Primary MI Servers only, just as they have always done, and not touch the Secondary tab as this relates to future functionally of the product.
For more information, on how to configure the Server MI Connection URL settings, see the topic “Identifying the Media Indexer in the Interplay Administrator Tool”, in the MediaCentral | Production Management Best Practices Guide.
Windows Server 2019 Support Windows Server 2019 is now supported for all Production Management components.
Improvements in Version 2022.3.1 Improvements in Version 2022.3.1 The following improvements have been made in Production Management v2022.3.1.
New Fields Added to the Transcode Profile for Production Services Engine (SAK-1528) The following fields have been added to the Transcode profile for Production Services Engine:
(cid:129) Distributed Processing Job Queue (cid:129) Make New clips in DataExtract Mode (checkbox) (cid:129) TargetLUT (cid:129) TargetLUTColorSpaceMetadata (cid:129) TargetLUTSourceColorRange
> **Note:** These fields are for future use and are currently being ignored by Transcode v2022.3.
New Video Formats Supported by MediaCentral Distribution Service (CCUX- 5546) MediaCentral Distribution Service (MCDS) now supports the following video formats:
Ability to Configure the Pro Tools Launch Executable from Access (PLUS- 420) We have added an improvement that enables users to fully configure the Pro Tools launch command.
This improvement to Access updates the functionality in the Preferences > Options > Pro Tools Settings menu item (introduced in Production Management v2022.3) as follows:
(cid:129) Allows arbitrary paths, executables, commands and parameters to be entered.
(cid:129) This menu item is now also available on Windows systems.
Furthermore, when not overwritten by this menu item, Access uses a default launch command that is compatible with macOS 10.15 and later.
Production Management Engine Improvements The following improvements were made for Production Management Engine in this release.
Updated Apache to Version (PLUS-892) In this release, we have updated Apache to version 2.4.57.
Fixed in Version 2022.3.1 Fixed in Version 2022.3.1 The following issues have been resolved in Production Management v2022.3.1.
Delivery Provider (Delivery and Delivery Receiver) Fixes The following fixes require an update to Delivery Provider:
a Bug Number: IPI-3246. Production Services Delivery creates inconsistent images when using Partial Delivery with AVC-I media. This is caused by incorrect handling of SPS/PPS information, causing incorrect calculation of frame offsets.
Interplay Access Fixes The following fixes require an update to Interplay Access:
a Bug Number: IPI-3322. There is an issue when launching Interplay Access, and right-clicking on a loaded database, and selecting Interplay Transfer Status. When you click on the Help button, you will get an error message about failing to open DH_transfer_status.html, and the Online help will not open.
a Bug Number: IPI-3313. IPI-3315. There is an Intermittent Remote Workgroup error in Access when either using Copy or Send to Workgroup. For Copy, the first attempt often works, but the second will give the error. However, the Copy will still work ok, despite the error. In addition, no database or workspaces appear if a profile for Copy or Send to Workgroup is not chosen.
a Bug Number: IPI-3310. With the 2022.3 Access client, the Update Status from Media Indexer operation can fail with the following error:
An internal client error occured.
This does not happen on all assets, but only on those which reference (or are) offline rendered effects.
If the error occurs as part of a bulk update (i.e., for a selection of assets or folders), the bulk operation is interrupted.
MediaCentral Transfer Fixes The following fixes require an update to MediaCentral Transfer:
a Bug Number: IPI-3236. When using the “default” Aspect ratio setting in the Transfer Engine, you get 16x9. There are settings to force the op1a to be built as 4x3 or 16x9, but this now means that users need to open every file with mediaInfo, and then send using the aspect ratio that is native.
Media Indexer Fixes The following fixes require an update to Media Indexer:
Fixed in Version 2022.3.1 a Bug Number: IPI-3297. After a full system upgrade to Media Indexer v2022.3, some site found many ignored items (mostly audio files). Previous versions of Media Indexer could index the files (although labeling the audio files as Video002022104); FI indexes the video but ignores audio files with this error:
Failed with: java.lang.IllegalStateException: Metadata is Empty.
Limitations in Version 2022.3.1 Production Management Engine Fixes The following fixes require an update to Production Management Engine:
a Bug Number: PLUS-877. Users of MediaCentral | Sync might encounter an intermittent issue in which previously synced media goes offline on the target system. If a masterclip is online on both the source and target database, and the same masterclip is used in a sequence on the source database, and a sync is done, intermittently, the media will go offline on the target database. Performing another sync does not bring the media back online. Deleting the media from the target database, and performing another sync does not bring the media back online.
a Bug Number: IPI-3480. The TCP COM Bridge component of the Production Management Engine 2022.3 will not restart properly on Windows Server 2019 unless a specific policy is set. If you attempt to restart the TCP COM Bridge on Windows Server 2019 with the “default” configuration, you will get the following error at login in Access/Administrator after the restart: “Error message from the server: 'Illegal operation attempted on a registry key that has been marked for deletion' (0x800703fa).” In this release, the “Do not forcefully unload the user registry at user logoff“ policy is set directly in the Windows Registry by the Engine installer.
a Bug Number: IPI-3434. The Production Management Engine installer now configures the PM Engine Windows services (Apache, TCPCOMBridge, Server Browser and VSS Backup) to restart after a failure and to reset the failure counter after one day.
Limitations in Version 2022.3.1 For a full list of limitations that are present in this release, see the Production Management v2022.3 ReadMe.
a Bug Number: RELENG-3176. When unzipped, the Production Management installer might include long file path names that are incompatible with some versions of Windows. If you need to copy unzipped installation packages from one location to another, Windows 10 and Windows 2016 provide a registry setting that allows for these long path names.
You can find this setting under: Computer Configuration > Admin Templates > System > FileSystem > Enable Win32 long paths Media Indexer The following limitations apply to Media Indexer in this release.
a Bug Number: SAK-1116. We have identified a possible security issue, concerning certain processes being executed as root.
Workaround: To solve this issue, Media Indexer must have privileged account usage on Windows, Mac and Linux.
Limitations in Version 2022.3.1 a Bug Number: SAK-348. Media Indexer 2020.4 seems to ignore priority for workspace. On a fresh start and new release installed, the logging shows logging against a workspace that is very low in the display by priority on the Media Indexer Web Page. The legacy desired operations are for new content (Ingesting materials, for example) to get first media indexer data extractions attended to in a state where there is a backlog of activity to attend to.
Example: A large workspace with legacy content is added to the scan tables and news programming is recording and editing to a different workspace. The Shared Storage 10 second notifications on the news production should take precedent over the legacy added workspace for Media Indexer processing.
Workaround: You can workaround this issue by adding workspaces to the index one by one depending on priority. Behavior for this software generation is as-designed.
a Bug Number: SAK-466. The Media Indexer installer displays an error trying to update MS Visual C++ 2012 Update 4. This error may appear on some systems that have an existing MSVS 2012 installed. Press the Yes button to proceed with the Media Indexer installation.
Transfer The following limitations apply to Transfer in this release.
a Bug Number: CCUX-5545. Using the FTP Browser to initiate an Ingest of 1080i50 Media, the 100% value occurs well before the actual end of the Ingest, giving the appearance that the Transfer Engine is hung, and waiting for the final checkin. The Transfer Complete message does not appear for many minutes after the 100% value is reached. Additionally, the % calculation seems to be based on 50% of the file as it crawls from 0-50%, and then in a flash displays 100%.
Limitations in Version 2022.3.1 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Portions © Copyright 2003-2007 of MOG Solutions.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:
http://www.avid.com/US/about-avid/legal-notices/trademarks.
Avid MediaCentral Production Management v2022.3.1 ReadMe (cid:129) Revised January 22, 2024 (cid:129) This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.