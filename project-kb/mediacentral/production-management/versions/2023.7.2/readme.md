---
product: mediacentral-production-management
product-area: production-management
version: "2023.7.2"
release-date: 01/07/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid MediaCentral | Production Management Version 2023.7.2 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
https://kb.avid.com/articles/en_US/readme/Avid-Interplay-Production-Documentation For the latest information on this release, see the following Avid Knowledge Base article:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Production-Management-v2023-x- Documentation MediaCentral Production Management v2023.7 is distributed as a Long-Term Maintenance release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at: https://www.avid.com/resource-center/avid-long-term-maintenance-releases Revision History Date Revised Changes Made May 8, 2026 Added Interplay Web Services (IPWS) fixes.
June 18, 2024 Added the MediaCentral Transfer component.
For more information, the following topics:
April 12, 2024 Added the Media Indexer component.
For more information, see "Media Indexer Fixes" on page 4.
January 19, 2024 Added the Transcode and STP Encode components.
For more information, see "Transcode Fixes" on page 5.
December 14, 2023 Added the Production Services Transfer Status Tool component, which resolves IPI-3558.
For more information, see "Production Services Transfer Status Tool Fixes" on page 4.
November 27, 2023 Initial v2023.7.2 publication.
About This Release About This Release This section includes additional information for MediaCentral Production Management and related concepts.
Components This ReadMe describes the changes contained in the MediaCentral Production Management v2023.7.2 release which contains the following products:
Production Management Server In this release, there were changes in the following Production Management Server components:
Production Management Engine / Archive Engine
- Production Services Transfer Status Tool
- Media Indexer
- Transcode
- STP Encode
- Transfer Engine
- Transfer Client
- Interplay Web Services (IPWS)
- Supported Software
For a list of software supported with Production Management releases, see the Avid Knowledge Base article “Avid Video Compatibility Charts.” For an article listing end of support dates, see the Avid Knowledge Base article “End of Support Dates.” Avid Editing Application Compatibility The following Knowledge Base articles provide information on compatibility between Production Management releases and Avid editor releases: https://kb.avid.com/articles/en_US/compatibility/Avid- Video-Compatibility-Charts For details on the operating system (PC and Mac), QuickTime version, and nVidia drivers supported on the different editor releases, see the Avid editing application Readme and the Knowledge Base article “Avid Media Composer Documentation and Version Matrix.” For more information, see your Avid Customer Service Representative.
Upgrading Media Indexer to 2023.7.2 Additional Information About Pro Tools For the latest information about using Pro Tools with Production Management, go to the Knowledge Base page titled “Avid Interplay Requirements With Pro Tools.” Upgrading Media Indexer to 2023.7.2 When upgrading a Media Indexer server to 2023.7.2, you must do the following:
1. Uninstall the previous version of Media Indexer. If the installer fails,
2. Delete the following folders:
  - %ProgramData%\Avid\AvidMI
  - %ProgramFiles%\Avid\AvidMI
3. (Option) If you cannot delete %ProgramFiles%\Avid\AvidMI and, or %ProgramData%\Avid\AvidMI,
restart the OS to finish uninstalling.
4. Install the new version of Media Indexer.
This upgrade will require a full reindex of the Media Indexer. Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can take several hours.
The following guide provides information that can help you plan for the upgrade and reindex operation.
http://resources.avid.com/SupportFiles/attach/Production_Management_Best_Practices_Guide_ 2020.4.pdf For information on estimating how long a reindex could take, see the section “Estimating the
- Indexing Time”
- For a procedure that explains how to perform the upgrade and reindex operation on one Media
Indexer and copy the cache files to the production Media Indexers during the upgrade, see the section “Prebuilding a Cache During an Upgrade for Media Indexer v3.6.x or Higher” The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations. If you plan to use this feature in MI 2019.6 and later, use the latest Chrome browser to perform the reimport.
New for Production Management v2023.7.2 New for Production Management v2023.7.2 This section contains information for all of the new features and improvements for the Production Management v2023.7.2 release.
Transfer Engine Features The following features were added to Transfer Engine in this release.
Ability to STP from Media Composer via Transfer Engine with Audio Set as AES Previously, when exporting OP-1a with MediaCentral Transfer, the type of the audio essence descriptor was not configurable. This caused issues with some external QA systems that would not accept WAV or Generic descriptors.
To help these customers, we have added a setting at the bottom of the TMServer.ini file in Transfer that allows users to select AES descriptors.
[Audio] ForceAES3Descriptor=0 When set to 1, the essence descriptors for the audio tracks in the OP-1a file will be forced to AES whenever possible. There are no other changes to the structure of the file or the metadata it contains.
Fixed in Production Management v2023.7.2 The following issues have been resolved in MediaCentral Production Management v2023.7.2.
Production Management Engine / Archive Engine Fixes This release contains the following Production Management Engine fixes:
Bug Number: PLUS-1136. The MediaCentral Production Management Engine Apache server is restarting after a specific, deliberately malformed request is sent.
Bug Number: IPI-3569. The MediaCentral Production Management Engine Scheduled Deletion background thread may unexpectedly terminate if an asset with a very long (in the sense of “contains a full text”) display name is deleted.
Production Services Transfer Status Tool Fixes This release contains the following Production Services Transfer Status Tool fixes:
Bug Number: IPI-3558. Using the Avid Interplay Production Services and Transfer Status Tool from the 2023.7_LTM Server kit and trying to get a status while in the TM Tab will fail with Java.lang.NullPointerException.
Media Indexer Fixes This release contains the following Media Indexer fixes:
Bug Number: IPI-3599. Media files are indexed, but not searchable by SourceID in FI Search. However, they can be searched using FileMobID. All files are indexed on both approaches.
This fix will require a Reindex of Media Indexer.
Fixed in Production Management v2023.7.2
> **Note:** Search by SourceID works on the classic (non-FI) Search, and thus from legacy systems that do not
use the FI Search.
Bug Number: IPI-3590. Media Indexer 2022.3.2 and later do not deliver channel updates to Media Composer. After restoring hi-res media from Avid Archive, Media Composer 2022.12.x is not automatically linking to the hi-res files when the Media Indexer client 2022.3.2 or later is installed. Even Update From Production Management does not relink the Masterclip to hi-res media.
Workaround: To work around this issue, you need to perform “Clear Bin Memory” or “Alt+Apply” on DR settings (to clear the QMFI Cache).
Bug Number: IPI-3571. Media Files containing one or more leading space characters in the file name are not properly handled in Media Indexer.
Such files are listed in the FI Browser, but if you try to get the Format Descriptor, you will receive a “Can’t get format descriptor” error.
These same files are properly visible in Access using “Update from Media Indexer”, but causes relink issues in Media Composer when applying Dynamic Relink.
Transcode Fixes This release contains the following Transcode fix:
Bug Number: IPI-3557. There is an issue where you cannot link to transcoded proxy media if a restriction was added to a clip before the transcode..
STP Encode Fixes There are no fixes for STP Encode in this release.
Transfer Engine Fixes This release contains the following Transfer Engine fixes:
Bug Number: IPI-3511. DNxHR HQX UHD 23.98 media will not Send to Playback with Transfer Engine.
> **Note:** In order to fully implement this fix, this version of the Transfer Client must be used.
Bug Number: IPI-3468. With the XML option checked so as to deliver an XML file with the OP1A on STP, the Transfers will eventually start continuously failing until the Transfer Engine application is restarted. This # of jobs where the problem starts seems to be around 1200 transfers.
Bug Number: IPI-3619. When running Standalone Transfer Engine, it does not recognize the Media Composer floating or Cloud licenses. The following message is displayed:
29388 Transfer Engine Software License Disabled : ERROR - Transfer Engine not enabled in License.
> **Note:** Standalone means that the Transfer Engine is running on a Media Composer machine and being
licensed via the Media Composer License.
Transfer Client Fixes This release contains the following Transfer Client fix:
Limitations for Production Management 2023.7.2 Bug Number: IPI-3617. Transfer Client version 2023.7.1 does not work with any Editor version or STP Encode.
Interplay Web Services (IPWS) Fixes This release contains the following Interplay Web Services (IPWS) fixes:
Bug Number: IPI-3887. Triggering the GetSegmentsFromComposition call on IPWS reports negative SegmentDuration values on segments that contain Timewarp effects.
To enable this fix, you must add the environment variable FORCE_POSITIVE_SEGMENT_DURATION in System Variables and set its value to 1.
Bug Number: IPI-3890. Triggering the GetUMIDLocators call on IPWS reports incorrect Timecode values for 50FPS and 59.94FPS assets.
Bug Number: IPI-3930. The IPWS Configuration web page allows you to inject JavaScripts onto the input fields which can cause security vulnerabilities.
Bug Number: IPI-3941. Apache Tomcat v9.0.104 installed on Interplay Web Services (IPWS) contains security vulnerability CVE-2025-55752.
> **Note:** In this release, Avid has upgraded the version of Apache Tomcat to v9.0.109 to address this issue.
Bug Number: IPI-4019. The Interplay Web Services (IPWS) experiences intermittent failures, which may result in offline media, timeout errors, delayed check-ins, and other performance instabilities.
Limitations for Production Management 2023.7.2 This section includes information on known limitations and defects related to this release of MediaCentral | Production Management.
For limitations previous to this release, see the MediaCentral Production Management 2023.7.2 ReadMe.
For International Character Set (ICS) limitations, see the topic “International Character Support Limitations in the MediaCentral Production Management v2021.3 ReadMe.
Installation and Configuration Bug Number: RELENG-3176. When unzipped, the Production Management installer might include long file path names that are incompatible with some versions of Windows. If you need to copy unzipped installation packages from one location to another, Windows 10 and Windows 2016 provide a registry setting that allows for these long path names.
You can find this setting under: Computer Configuration > Admin Templates > System > FileSystem > Enable Win32 long paths.
Standalone Transfer Bug Number: IPI-3578. In specific workflows (e.g., Pause, Resume and Cancel), the .Temp functionality may not be available.
Limitations for Production Management 2023.7.2