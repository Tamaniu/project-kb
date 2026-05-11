---
product: mediacentral-production-management
product-area: production-management
version: "2024.10.3"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 08/05/2026
status: current
---

Avid MediaCentral | Production Management Version 2024.10.3 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
https://kb.avid.com/articles/en_US/readme/Avid-Interplay-Production-Documentation For the latest information on this release, see the following Avid Knowledge Base article:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Production-Management-v2024-x- Documentation MediaCentral Production Management v2024.10 is distributed as a Long-Term Maintenance release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at: https://www.avid.com/resource-center/avid-long-term-maintenance-releases Revision History Date Revised Changes Made May 6, 2026 Added MediaCentral Production Index (Media Indexer) fixes.
August 20, 2025 Added MediaCentral Transfer Engine fixes.
June 26, 2025 Initial release.
Contents About This Release About This Release This section includes additional information for MediaCentral Production Management and related concepts.
Components This ReadMe describes the changes contained in the MediaCentral Production Management v2024.10.3 release which contains the following products:
Production Management Server
- MediaCentral Transfer Engine
- MediaCentral Production Index (Media Indexer)
Production Management Client
- Interplay Access (Windows only)
Supported Software For a list of software supported with Production Management releases, see the Avid Knowledge Base article “Avid Video Compatibility Charts.” For an article listing end of support dates, see the Avid Knowledge Base article “End of Support Dates.” Avid Editing Application Compatibility The following Knowledge Base articles provide information on compatibility between Production Management releases and Avid editor releases: https://kb.avid.com/articles/en_US/compatibility/Avid- Video-Compatibility-Charts For details on the operating system (PC and Mac), QuickTime version, and NVIDIA drivers supported on the different editor releases, see the Avid editing application ReadMe and the Knowledge Base article “Avid Media Composer Documentation and Version Matrix.” For more information, see your Avid Customer Service Representative.
Additional Information About Pro Tools For the latest information about using Pro Tools with Production Management, go to the Knowledge Base page titled “Avid Interplay Requirements With Pro Tools.” New for Production Management v2024.10.3 New for Production Management v2024.10.3 This section contains information for all of the new features and improvements for the Production Management v2024.10.3 release.
Additional Properties in MediaCentral Search Connector This release introduces additional properties to support the MediaCentral | Cloud UX v2025.6 Wolftech News integration and the Avid Ada Transcribe Speech-to-Text (STT) functionality with Production Management through MediaCentral Search.
> **Note:** The “MediaCentral Search Connector” window under the Production Management Administrator
Client v2024.10.3 must be launched once in order to register these properties to the Production Search Connector used in Wolftech and STT workflows.
Media Indexer Logging Configuration Improvements This release introduces configuration changes to MI logging to improve MI memory usage and overall application stability. The following logger values in the logging.properties configuration file have been changed to the following as the default:
com.avid.ummd.server.logging.StorageNotificationsAvidFileHandler.logger.level=WARNING com.avid.ummd.server.logging.DetailedClientRequestsHandler.logger.level = WARNING This reduces redundancy of log storage, as these logs can also be found in other locations, improving MI performance and simplifying log retrieval and troubleshooting.
Fixed in Production Management v2024.10.3 Fixed in Production Management v2024.10.3 The following issues have been resolved in this release of MediaCentral Production Management.
Transfer Engine Bug Number: IPI-3854. MediaCentral Transfer incorrectly sets the Transfer characteristics in the MXF essence descriptor metadata field to zero and creates a new field called transfer_characteristics_ Original. As a result, the expected value gets added into this field instead of the Transfer characteristics field.
Bug Number: IPI-3858. MediaCentral Transfer jobs generate incorrect metadata values for DNxHD media with more than forty audio tracks.
Bug Number: IPI-3859. Transfer Manager generates incorrect Delta Position (DeltaPos) metadata values in the index table for DNxHD media with multiple audio tracks.
MediaCentral Production Index (Media Indexer) Bug Number: IPI-3954. Media ingested from Telestream are delayed by a few minutes on the Media Indexer webpage, causing it to appear offline in Interplay Access.
Bug Number: IPI-4012. MongoDB installed on the Media Indexer contains security vulnerability CVE-2025- 14847.
Bug Number: IPI-4084. Apache ActiveMQ installed on the Media Indexer contains security vulnerability CVE-2026-34197.
Fixed in Production Management v2024.10.3