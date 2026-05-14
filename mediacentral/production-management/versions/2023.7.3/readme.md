---
product: mediacentral-production-management
product-area: production-management
version: "2023.7.3"
release-date: 01/07/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid MediaCentral | Production Management Version 2023.7.3 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
https://kb.avid.com/articles/en_US/readme/Avid-Interplay-Production-Documentation For the latest information on this release, see the following Avid Knowledge Base article:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Production-Management-v2023-x- Documentation MediaCentral Production Management v2023.7 is distributed as a Long-Term Maintenance release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at: https://www.avid.com/resource-center/avid-long-term-maintenance-releases Revision History Date Revised Changes Made September 19, 2024 Added fixes for MediaCentral Transfer. For more information, see "Transfer" on page 5.
August 20, 2024 Added the Media Indexer component. For more information, see "Media Indexer" on Additionally, the description of IPI-3597 has been updated for better clarity. For more May 30, 2024 Added the Delivery Receiver component.
April 16, 2024 Added the Transcode and STP Encode components.
There is a new feature that applies to both Transcode and STP Encode.
For more information, see "New for Production Management v2023.7.3" on page 3 .
February 20, 2024 Removed the Production Services Engine component.
February 13, 2024 Added the following components:
- Production Services Engine. For more information, see "Fixed in Production
Management v2023.7.3" on page 4.
Productions Services Transfer Status. For more information, see "Production
- Services Transfer Status" on page 5.
December 21, 2023 Initial v2023.7.3 publication.
About This Release This section includes additional information for MediaCentral Production Management and related concepts.
For a list of software supported with Production Management releases, see the Avid Knowledge Base article Avid Video Compatibility Charts.
For an article listing end of support dates, see the Avid Knowledge Base article End of Support Dates.
Components This ReadMe describes the changes contained in the MediaCentral Production Management v2023.7.3 release which contains the following products:
Production Management Server This release includes changes to the following Production Management components:
- Delivery Receiver
- Media Indexer
- Production Management Engine
- Production Services Transfer Status
- STP Encode
- Transfer
- Transcode
Avid Editing Application Compatibility For information on Production Management and Media Composer compatibility, see the "Avid Editor Compatibility Matrix" on the following Avid Knowledge Base page: https://kb.avid.com/articles/en_ US/compatibility/Avid-Video-Compatibility-Charts For details on the operating system (PC and Mac), QuickTime version, and nVidia drivers supported on the different editor releases, see the Avid editing application Readme and the Knowledge Base article “Avid Media Composer Documentation and Version Matrix.” For more information, see your Avid Customer Service Representative.
New for Production Management v2023.7.3 New for Production Management v2023.7.3 This section contains information for all of the new features and improvements for the Production Management v2023.7.3 release.
Transcode and STP Encode now Preserve Audio Gain +/- 36db Transcode and STP Encode now preserve audio gain +/- 36db that was applied to the clips within Media Composer.
Upgrading Media Indexer to 2023.7.3 When upgrading a Media Indexer server to 2023.7.3, you must do the following:
1. Uninstall the previous version of Media Indexer.
If the install process fails, delete the following folders:
  - %ProgramData%\Avid\AvidMI
  - %ProgramFiles%\Avid\AvidMI
If you cannot delete %ProgramFiles%\Avid\AvidMI and, or %ProgramData%\Avid\AvidMI, restart Windows to finish uninstalling.
2. Install the new version of Media Indexer.
This upgrade requires you to complete a full reindex of the Media Indexer. Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can take several hours. You can refer to the following sections of the Avid MediaCentral | Production Management Best Practices Guide for information on planning your upgrade and indexing options:
For information on estimating how long a reindex could take, see the section “Estimating the
- Indexing Time”.
- For a procedure that explains how to perform the upgrade and reindex operation on one Media
Indexer and copy the cache files to the production Media Indexers during the upgrade, see the section “Prebuilding a Cache During an Upgrade”.
The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations. If you plan to use this feature, Avid recommends using the latest Chrome browser to perform the reimport.
Fixed in Production Management v2023.7.3 Fixed in Production Management v2023.7.3 The following issues have been resolved in MediaCentral Production Management v2023.7.3.
Delivery Receiver Bug Number: IPI-3597. A security vulnerability was found in the FTP server of the Delivery Receiver component. Valid filtering of user input was not enforced, so it was possible to break out of the FTP context. As a result, an attacker could obtain read access to the root level of all local volumes on the Delivery Receiver server - and write access to certain paths.
Apart from the security related modifications made to the Delivery Service and Delivery Receiver above, this release introduces additional security improvements:
- The default password for Delivery was changed. This fix breaks backward compatibility. Therefore,
both Delivery Service and Delivery Receiver must be upgraded.
- Delivery no longer allows anonymous access.
- The Delivery password is now configurable on both the Delivery Service and Delivery Receiver sides.
- Passwords are stored in config files as MD5 hash of the plain password, staying consistent with
original user management of the Delivery Receiver Server.
To change the password for Delivery Receiver, do the following:
1. Open C:\Program Files\Avid\Interplay Delivery Receiver\res\conf\users.properties file.
2. Create a MD5 hash of your desired password.
3. Modify the ftpserver.user.admin.userpassword value to to contain the MD5 hash of your
password.
4. Restart the Interplay Delivery Receiver.
To change the password for Delivery Service, do the following
1. Open C:\Program Files\Avid\Interplay Delivery\FTPFileTransfer.properties (сreated automatically).
2. Modify the ftp.password value toto contain the MD5 hash of your password.
3. Restart the Interplay Delivery Service.
> **Note:** Delivery still uses the static MD5 hash for logging into the receiver over an unencrypted
connection. Consider this when planning your infrastructure.
Media Indexer Bug Number: SYN-134, IPI-3445. Although originally addressed in v2023.7.1, this release includes updates to address additional situations that were not covered in the original v2023.7.1 fix.
Production Management Engine This release includes updates to the Production Management Engine.
Please note the following:
Fixed in Production Management v2023.7.3 Production Management v2023.7.3 does not include an updated Production Archive (because the
- MediaCentral | Sync change does not apply to Production Archive).
- For MediaCentral | Sync users, the 2023.12 or 2023.7.5 version of MediaCentral | Sync is required. If
Production Management Engine 2023.7.3 is installed, older MediaCentral | Sync versions must be upgraded.
MediaCentral | Sync users that have already upgraded to 2023.12 or 2023.7.5, need to install Production Management Engine 2023.7.3 (this release) or later to maintain compatibility with that release.
Consult the MediaCentral Cloud UX Compatibility Matrix on the Avid KnowledgeBase for complete version details.
Production Services Transfer Status Bug Number: IPI-3267. Cycling through the Transcode Profile list in the Production Services page in Interplay Access gives a save prompt, even when no changes have been made to the profile. This happens every time a new Transcode Profile is selected and deselected.
Workaround: Click “Yes” at the message dialog to prevent the prompt from appearing again.
Bug Number: IPI-3494. Production Services and Transfer Status are showing inconsistent behavior when creating, renaming, or editing new profiles.
This incoherent behavior is observed on the Production Services and Transfer Status tool, and can lead to profiles being deleted or overwritten with wrong values when attempting to create, rename or edit them.
STP Encode There are no fixes for STP Encode in this release.
Transcode There are no fixes for Transcode in this release.
Transfer Bug Number: IPI-3498. When using XAVCI media and sending a sequence with a large amount of Markers (e.g., 350 Markers with 132 chars per marker), there is a timeout up front while this AAF is being processed and the job will ultimately fail.
Bug Number: IPI-3573. When Sending to Playback UHD 25p XAVC Intra Class 300 CBG sequences with a GENERIC_FTP_PROFILE target, the resulting OP1A file is not fully compliant with MXF format requirements.
> **Note:** This fix ensures that the media is MXF complaint. Creating media that is fully complaint with the
Sony specification is out of the scope of this fix.
Bug Number: IPI-3608. In some cases, the Transfer Engine might not write information about a failed job to the XferMgrServer.log file.
Limitations for Production Management 2023.7.3 Limitations for Production Management 2023.7.3 This section includes information on known limitations and defects related to this release of MediaCentral | Production Management.
For limitations previous to this release, see the MediaCentral Production Management 2023.7.2 ReadMe.
For International Character Set (ICS) limitations, see the topic “International Character Support Limitations in the MediaCentral Production Management v2021.3 ReadMe.
Installation and Configuration Bug Number: RELENG-3176. When unzipped, the Production Management installer might include long file path names that are incompatible with some versions of Windows. If you need to copy unzipped installation packages from one location to another, Windows 10 and Windows 2016 provide a registry setting that allows for these long path names.
You can find this setting under: Computer Configuration > Admin Templates > System > FileSystem > Enable Win32 long paths.
Limitations for Production Management 2023.7.3