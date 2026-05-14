---
product: mediacentral-production-management
product-area: production-management
version: "2024.10.2"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid MediaCentral | Production Management Version 2024.10.2 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
https://kb.avid.com/articles/en_US/readme/Avid-Interplay-Production-Documentation For the latest information on this release, see the following Avid Knowledge Base article:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Production-Management-v2024-x- Documentation MediaCentral Production Management v2024.10 is distributed as a Long-Term Maintenance release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at: https://www.avid.com/resource-center/avid-long-term-maintenance-releases Revision History Date Revised Changes Made September 4, 2025 Updated for MediaCentral Production Index (Media Indexer) release.
June 6, 2025 Added fixes related to MediaCentral Transcode.
May 20, 2025 Added fixes related to the MediaCentral Transfer Engine.
March 31, 2025 Initial release.
About This Release About This Release This section includes additional information for MediaCentral Production Management and related concepts.
Components This ReadMe describes the changes contained in the MediaCentral Production Management v2024.10.2 release which contains the following products:
Production Management Server
- MediaCentral Transfer Engine
- MediaCentral Transcode
- MediaCentral STP Encode
Although an STP Encode installer was created for this release, the software does not include any updates for v2024.10.2.
- MediaCentral Production Index (Media Indexer)
Production Management Client Interplay Access
- Supported Software
For a list of software supported with Production Management releases, see the Avid Knowledge Base article “Avid Video Compatibility Charts.” For an article listing end of support dates, see the Avid Knowledge Base article “End of Support Dates.” Avid Editing Application Compatibility The following Knowledge Base articles provide information on compatibility between Production Management releases and Avid editor releases: https://kb.avid.com/articles/en_US/compatibility/Avid- Video-Compatibility-Charts For details on the operating system (PC and Mac), QuickTime version, and NVIDIA drivers supported on the different editor releases, see the Avid editing application ReadMe and the Knowledge Base article “Avid Media Composer Documentation and Version Matrix.” For more information, see your Avid Customer Service Representative.
Additional Information About Pro Tools For the latest information about using Pro Tools with Production Management, go to the Knowledge Base page titled “Avid Interplay Requirements With Pro Tools.” New for Production Management v2024.10.2 New for Production Management v2024.10.2 This section contains information for all of the new features and improvements for the Production Management v2024.10.2 release.
Additional Local Media Indexer Security Configuration This release introduces configuration of the local Media Indexer to restrict Write access to network shares for specific users and groups, to minimize risk of unauthorized access and to improve data security.
In previous versions, the local MI automatically generates Server Message Block (SMB) shares and grants all users in Active Directory with Write access. In this version, a toggle is introduced in the configuration file to allow administrators to either disable or allow network sharing.
To configure the new “Enable Network Sharing” toggle for local MI:
1. Stop the local MI service.
2. Locate the feature.properties configuration file in the following location:
C:\Program Files\Avid\AvidMI\state\config
3. Open the configuration file and find the following line:
Enable/Disable sharing of local storage adapters com.avid.ummd.adapter.fs.StorageWorkspace.shareLocalStorage = false
> **Note:** By default, the toggle is off (set to false), so that no shares are created unless it is explicitly
allowed.
4. Set the value to true to enable network sharing or leave it to false to keep it disabled.
- Setting the toggle to true allows the local MI client to create shares, but the Access
Control List (ACL) write access is restricted to the configured Active Directory group (by default this is the Avid_MI_Users group).
- Setting the toggle to false prevents the local MI client from creating any Server Message
Block (SMB) or Network File System (NFS) shares.
5. Save the changes to the feature.properties file.
6. Restart the local MI service or the host machine to apply the toggle.
> **Note:** For users upgrading to this version, you will be receiving a one-time prompt to review and configure
this toggle.
Fixed in Production Management v2024.10.2 Fixed in Production Management v2024.10.2 The following issues have been resolved in this release of MediaCentral Production Management.
Interplay Access Bug Number: PLUS-1866. The Interplay Administrator is not able to connect to the Production Management Search Connector if the MediaCentral Cloud UX system is configured to use an OpenID authentication provider, such as Okta.
Bug Number: PLUS-1872. In Interplay Access, when performing an "Update Status from MI" on an asset, the Dynamic Range information is calculated from all available matching media, even if the media are not associated with the database asset.
Transfer Engine Bug Number: IPI-3584. When configuring an FTP Server for the first time, the Transfer Configuration Settings fails to save the first FTP server profile. If you create additional profiles at the same time, all additional profiles are saved correctly.
Bug Number: IPI-3700. The "Tape ID" field in the Transfer Configuration Settings' Playback Device window remains available even if the Transfer Engine is in Standalone mode.
This Tape ID field is exclusive to Production Management workflows and should not be configurable for a Standalone Transfer Engine. As Avid does not automatically remove the Tape ID value, you must do one of the following after applying the fix:
- (recommended) Delete and recreate any Standalone Transfer Engine Playback Device profile that
includes a Tape ID value.
- Manually delete the Tape ID from the profile. This option is not preferred because the field remains
editable. This could expose your system to potential misconfiguration if someone attempts to add a value to this field in the future.
Bug Number: IPI-3835. Some FTP transfers randomly reconfigure the "OPTS UTF8" setting to a value of true. This can cause the job to fail. However due to the nature of the failure, it appears to the user that the just has successfully completed.
MediaCentral Transcode Bug Number: IPI-3626. Production Services Transcode displays the job status as "Complete", even if the check-in to Production Management fails due to insufficient user access rights to the check-in folder.
Bug Number: IPI-3826. Transcode jobs using a MIXDOWN profile (set to AVC-Intra 100 1080i 50) on sequences containing AVC-I or AVC-LongG media creates clips with glitches that are visible upon playback in Media Composer or MediaCentral Cloud UX.
Bug Number: IPI-3829. Transcode jobs using a MIXDOWN profile (set to AVC-Intra 100 1080i 50) on sequences containing media from EVS creates clips with artifacts that are visible only after having been exported or re-wrapped into OP1a.
> **Note:** To enable this fix, you must have both MediaCentral Transcode v2024.10.2 and Media Composer
v2023.12.6 or v2024.12.2 (or later) installed.
MediaCentral Production Index (Media Indexer) Bug Number: IPI-3875. Media Indexer causes high memory usage that results in unresponsiveness and media offline issues in Media Composer.
Fixed in Production Management v2024.10.2 Bug Number: IPI-3880. Media Indexer causes very high CPU usage that results in performance issues such as crashing and slow user operations in Media Composer.
Fixed in Production Management v2024.10.2