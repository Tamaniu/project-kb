---
product: mediacentral-production-management
product-area: production-management
version: "2024.10.4"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid MediaCentral | Production Management Version 2024.10.4 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
https://kb.avid.com/articles/en_US/readme/Avid-Interplay-Production-Documentation For the latest information on this release, see the following Avid Knowledge Base article:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Production-Management-v2024-x- Documentation MediaCentral Production Management v2024.10 is distributed as a Long-Term Maintenance release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at: https://www.avid.com/resource-center/avid-long-term-maintenance-releases Revision History Date Revised Changes Made October 24, 2025 Removed MediaCentral Transcode fixes. Release withdrawn.
October 16, 2025 Initial release.
About This Release About This Release This section includes additional information for MediaCentral Production Management and related concepts.
Components This ReadMe describes the changes contained in the MediaCentral Production Management v2024.10.4 release which contains the following products:
Production Management Server Production Services/Production Services and Transfer Status Tool
- Transfer Engine
- STP Encode
- Delivery
- Production Management Client
- Interplay Access (Windows only)
Supported Software For a list of software supported with Production Management releases, see the Avid Knowledge Base article “Avid Video Compatibility Charts.” For an article listing end of support dates, see the Avid Knowledge Base article “End of Support Dates.” Avid Editing Application Compatibility The following Knowledge Base articles provide information on compatibility between Production Management releases and Avid editor releases: https://kb.avid.com/articles/en_US/compatibility/Avid- Video-Compatibility-Charts For details on the operating system (PC and Mac), QuickTime version, and NVIDIA drivers supported on the different editor releases, see the Avid editing application ReadMe and the Knowledge Base article “Avid Media Composer Documentation and Version Matrix.” For more information, see your Avid Customer Service Representative.
Additional Information About Pro Tools For the latest information about using Pro Tools with Production Management, go to the Knowledge Base page titled “Avid Interplay Requirements With Pro Tools.” New for Production Management v2024.10.4 New for Production Management v2024.10.4 This section contains information for all of the new features and improvements for the Production Management v2024.10.4 release.
Transfer Engine Configuration Improvements This release introduces improvements in handling markers during Clip XML generation. An option to exclude markers have been added to enhance performance in Clip XML processing, as well as optimizing marker processing for larger sequences that may include numerous markers.
To exclude markers when generating Clip XML:
1. Open the Transfer Engine Configuration window.
2. Go to the Playback section.
3. Do one of the following:
- Select Add to add a new playback device.
- Select Edit to edit an existing playback device.
4. In the Playback Device dialog window > Create Clip XML, a Do not include markers check box is
available.
5. Enable or disable the check box depending on your production requirement or workflow:
- Enabled - markers are not processed or included in XML.
- Disabled - markers are processed and included in XML.
The check box is set to disabled by default, which means the markers are included in the XML output. The markers are not processed if either Do not include Markers is enabled or Create Clip XML is disabled.
6. Click OK to save the changes.
Delivery Profile Improvements This release adds the ability to set the value of the ServiceTimeout field for exclusive use with the Avid Interplay Delivery Service. This allows for longer delivery timeouts to process complex sequences that may contain large numbers of clips.
The value can be configured in the DMSIDService.ini file using a text editor to set the length of the @6%?DeliveryTimeoutSecs ServiceTimeout field in seconds. The parameter is and its default value is set to 300 seconds.
To configure the ServiceTimeout field:
1. Locate the DMSIDService.ini file from the following location:
C:\ProgramData\Avid\Delivery Service
2. Open the file using a text editor.
3. Find the following line:
@5%?MaxJobs=1 @2%tProduction_Services_Engine_Hostname=localhost @6%?DeliveryTimeoutSecs=300 @1%tProvider_Name=WIN-GR8U56UFKT1_Delivery_1202
4. Change the value to the desired number of seconds.
5. Save the file to apply changes.
New for Production Management v2024.10.4 Interplay Administrator Setting Updates This release adds the following Editing Settings Video Format to the Application Database Settings section of the Interplay Administrator client application:
- HD1080P_50
Fixed in Production Management v2024.10.4 Fixed in Production Management v2024.10.4 The following issues have been resolved in this release of MediaCentral Production Management.
Production Services/Interplay Access Bug Number: IPI-3905. When creating a Transcode Profile in the Production Services and Transfer Status Tool and in Production Management Services Status in Interplay Access, the XAVC Intra 100 1080p 29.97 format is not available in the TargetVideoQuality pulldown list.
Transfer Engine Bug Number: IPI-3908. Send to Playback operation of sequences containing 16-bit PCM audio generates a corrupted MPEG audio in the resulting MXF OP1A file.
STP Encode Bug Number: IPI-3860. Performing a Send to Playback (STP) operation in MediaCentral Cloud UX using media from Telestream causes STP Encode to first fail at 49% along with an "Assertion failed: minVBVLevel <= maxVBVLevel" error, and then vaporize.
To enable this fix, you must enable force re-encoding in the ReleasedFeatures.ftf file located at C:\ProgramData\Avid\Support. This feature toggle file is disabled by default and can be enabled by changing the XDCAMForceReencode value from false to true:
{ "Interplay": { "STPEncode": { "XDCAMForceReencode": false } } }
> **Note:** Enabling this toggle may cause the re-encoding process to take longer than expected.
Limitations for Production Management v2024.10.4 This section includes information on known limitations and defects related to this release of MediaCentral | Production Management.
Production Services Bug Number: IPI-3916. Restore operations fail with a "Media was not archived so cannot be restored" error if the Destination_Server in the Restore profile is supplied with a fully qualified domain name (FQDN).
Limitations for Production Management v2024.10.4