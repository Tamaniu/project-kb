---
product: mediacentral-production-management
product-area: production-management
version: "2024.10.1"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid MediaCentral | Production Management Version 2024.10.1 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
https://kb.avid.com/articles/en_US/readme/Avid-Interplay-Production-Documentation For the latest information on this release, see the following Avid Knowledge Base article:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Production-Management-v2024-x- Documentation MediaCentral Production Management v2024.10 is distributed as a Long-Term Maintenance release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at: https://www.avid.com/resource-center/avid-long-term-maintenance-releases Revision History Date Revised Changes Made August 26, 2025 Added MediaCentral Production Management Engine / Archive Engine fixes.
May 13, 2025 Added IPI-3757 to "Fixed in Production Management v2024.10.1" on page 4.
May 6, 2025 Added Support for Send to Playback Support for DNxHD HQX 1080p 23.98 Media Format under "New for Production Management v2024.10.1" on page 3.
Added fixes for MediaCentral Transcode and Production Services.
March 27, 2025 Added IPI-3755 to "Fixed in Production Management v2024.10.1" on page 4.
February 28, 2025 Initial release.
About This Release About This Release This section includes additional information for MediaCentral Production Management and related concepts.
Components This ReadMe describes the changes contained in the MediaCentral Production Management v2024.10.1 release which contains the following products:
Production Management Engine
- Transfer Engine
- MediaCentral Distribution Service (MCDS)
- MediaCentral Transcode
- MediaCentral STP Encode
Although an STP Encode installer was created for this release, the software does not include any updates for v2024.10.1.
- Production Services
- MediaCentral Production Index (Media Indexer)
Fix applies to Production Index server only.
- MediaCentral Production Management Engine / Archive Engine
Production Management Client In this release, there were changes in the following MediaCentral Production Management components:
Transfer Client (macOS only)
- Interplay Access
- Supported Software
For a list of software supported with Production Management releases, see the Avid Knowledge Base article “Avid Video Compatibility Charts.” For an article listing end of support dates, see the Avid Knowledge Base article “End of Support Dates.” Avid Editing Application Compatibility The following Knowledge Base articles provide information on compatibility between Production Management releases and Avid editor releases: https://kb.avid.com/articles/en_US/compatibility/Avid- Video-Compatibility-Charts For details on the operating system (PC and Mac), QuickTime version, and nVidia drivers supported on the different editor releases, see the Avid editing application Readme and the Knowledge Base article “Avid Media Composer Documentation and Version Matrix.” For more information, see your Avid Customer Service Representative.
Additional Information About Pro Tools For the latest information about using Pro Tools with Production Management, go to the Knowledge Base page titled “Avid Interplay Requirements With Pro Tools.” New for Production Management v2024.10.1 New for Production Management v2024.10.1 This section contains information for all of the new features and improvements for the Production Management v2024.10.1 release.
Transfer Manager Support for Mac ARM (Apple silicon) Systems This release adds support for Transfer functionality in Mac ARM (Apple silicon) clients. Transfer operations such as Send to Playback and Send to Workgroup in Media Composer will be available after installing Transfer Client. The Transfer client settings and Transfer menu are accessible and can be configured in the editor software.
Addition of Dynamic Range Property Field in Interplay Access Information about a master clip and a rendered effect's Dynamic Range is now available in Interplay Access, under the Properties tab of the Object Inspector, and as a column in the Assets view. This property, by default, is available for newly created databases. For existing databases, the property must first be enabled in the Property Layout settings in Interplay Administrator.
After you update Access, new master clip and rendered effect assets checked into the database from that updated client are populated with the Dynamic Range data automatically. You can update existing assets in the database with the Dynamic Range information by doing either of the following:
- Check the asset back into the database through Media Composer.
- Use the "Update Status from Media Indexer" function in Interplay Access.
g When performing an Extended Search with Dynamic Range in Access, keep in mind that using "Is" as the search operator requires the exact value of the Dynamic Range property to be entered in the text search box (i.e. High (HDR) or Standard (SDR)). Using the search operator "Contains" imposes fewer restrictions to the search results (i.e. High, Standard, HDR, or SDR).
> **Note:** Dynamic Range properties are not supported in Production Management Archive databases at this
time.
Send to Playback Support for DNxHD HQX 1080p 23.98 Media Format This release adds support for DNxHD HQX 1080p 23.98 (DNxHD 1080 175X-185X-220X 1 Field 23.98) media format for Send to Playback (STP) operations in MediaCentral Cloud UX through the MediaCentral Distribution Service (MCDS).
Fixed in Production Management v2024.10.1 Fixed in Production Management v2024.10.1 The following issues have been resolved in this release of MediaCentral Production Management.
Interplay Access Bug Number: IPI-3779. XDCAM-HD 50mbps profile resolutions are missing in the Avid Interplay Transcode Service under Production Management Services Status. When you create a Transcode Profile, none of the XDCAM-HD 50mbps video resolutions are available in the Target Video Quality list. Existing profiles that currently use any of these resolutions are either marked with an exclamation point, or set to NONE in the Target Video Quality field.
Transfer Engine Bug Number: IPI-3755. Performing Send To Playback (STP) on a sequence containing XAVC 300 media ingested via Glookast fails with a “Build MXF Header: Unsupported essence container format 23 0” error message.
MediaCentral Transcode Bug Number: IPI-3710. MediaCentral Transcode jobs fail with an “Interplay Checkin Folder cannot contain the following characters - * \ | : " < > ?” error if the target Interplay Checkin Folder name contains a dot (.), and even if the dot is not the last character of that folder's name.
Production Services Bug Number: IPI-3813. XDCAM-HD 50mbps Transcode profile resolutions are missing in the Production Services and Transfer Status Tool. When you create a Transcode Profile, none of the XDCAM-HD 50mbps video resolutions are available in the Target Video Quality list. Existing profiles that currently use any of these resolutions are either marked with an exclamation point, or set to NONE in the Target Video Quality field.
MediaCentral Production Index (Media Indexer) Bug Number: IPI-3757. Edit While Capture (EWC) media recorded from Telestream Live Capture and stored to Avid NEXIS | Cloud Storage (Azure) appear offline in Interplay Access once the recording has finished.
MediaCentral Production Management Engine / Archive Engine Bug Number: IPI-3774. MediaCentral Sync incorrectly retains a sequence's old media relatives along with its new relatives, instead of only keeping the recently used media relatives after running a sync job.
Bug Number: IPI-3886. The Production Management Engine may crash or lock the database after performing a Full Database backup if assets were deleted during the backup, as the Deleted Streamed Property Table might get corrupted.
Bug Number: PLUS-2077. The MediaCentral Production Engine installer fails with "An error occurred when writing Registry settings!" message when performing a fresh installation, i.e. on a fresh OS or after deinstalling the Engine. Running the installer again resolves this and successfully completes the install process.
Fixed in Production Management v2024.10.1