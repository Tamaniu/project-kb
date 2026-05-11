---
product: media-composer-distributed-processing
product-area: editing
version: "2024.10.0"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Installation and Prerequisites Avid Media Composer | Distributed Processing ReadMe Version 2024.10 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Additional information and documentation for Avid Media Composer Distributed Processing, can be found on the version respective Media Composer pages of the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/User_Guide/Media-Composer-Documentation-Links Revision History Date Revised Changes Made November 14, 2024 First publication Contents Installation and Prerequisites This release of Avid Media Composer Distributed Processing includes updates for:
- Distributed Processing Service Workstation (Windows and macOS)
- Distributed Processing Server components (requires installation of MediaCentral Cloud
UX v2024.10) This release of Media Composer Distributed Processing has strict compatibility guidelines. For details, see the Distributed Processing Matrix at https://kb.avid.com/pkb/articles/en_ US/compatibility/Avid-Video-Compatibility-Charts.
For information on upgrading to this version of software, see the Avid Media Composer | Distributed Processing Administration Guide on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation New Features in Distributed Processing v2024.10 Compatibility with Avid NEXIS | EDGE This version of Distributed Processing is not compatible with Avid NEXIS EDGE. As a result, information about Avid NEXIS EDGE and the Proxy workflows have been removed from the Avid Media Composer | Distributed Processing Administration Guide.
For additional information on system compatibility, see the Distributed Processing Matrix at https://kb.avid.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts.
New Features in Distributed Processing v2024.10 Support for Avid Ada Transcribe This release adds three new services to the Distributed Processing workflow:
- Foyer Service
Discovers available media processing operations within all available workers.
- Avid Ada Worker Service
Reads and re-encodes Avid audio media into a format that is consumable by the Avid Media Processor (AvidMP) Worker.
This service is installed when you deploy the Avid Ada Feature Pack.
- Avid Media Processor (AvidMP) Worker Service
Uses the re-encoded media to create a text transcription that can be used with the Avid Ada Transcribe workflow found in Avid MediaCentral Cloud UX v2024.10 and later.
Unlike other Distributed Processing workers, you cannot deploy the Avid Ada Worker or the AvidMP Worker on a Windows or macOS workstation. Avid Ada and AvidMP run on the MediaCentral Cloud UX server(s). If you have installed Distributed Processing for use with Avid Ada Transcribe only, you are not required to deploy any additional workers on Windows or macOS service workstations. The Avid Ada Worker and AvidMP Worker do not participate in any other Distributed Processing tasks, such as transcoding, exporting, or mixing down Avid media.
Also note that neither the Avid Ada Worker service nor the AvidMP Worker appear in the Distributed Processing Status app.
For more information on installing and configuring these workers, see v2024.10 of the Avid MediaCentral | Cloud UX Installation Guide. For more information about the Transcribe workflow that is enabled by the Avid Ada Worker, see "Using the Transcript Tab" in the Avid MediaCentral | Cloud UX User’s Guide.
Fixed in Version 2024.10 Bug Number: SYN-204. The Job Status section of the Distributed Processing Status app does not display asset names in the Description column.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Earlier Versions This section includes information on known limitations and defects in prior releases of Distributed Processing.
Limitations and Defects Found in Version 2023.8.0 Bug Number: DEFI-5483. Completed jobs appear to hang in a Processing state with a 99% progress status.
This is a user-interface display issue only. Although the job appears to hang at 99%, the associated media files are processed correctly.
Bug Number: DEFI-4721, DEFI-5542. Distributed Processing cannot transcode or consolidate subclips.
Attempts to process a subclip with these functions result in an unplayable asset that produce “CM_OFFSET_OUT_OF_RANGE” or “PMM_INSUFFICENT_MEDIA” exceptions when loaded.
Bug Number: DEFI-5522. Media Composer cannot submit individual jobs that include a large number of individual media files (around 500). These jobs can result in a “Distributed Processing job did not complete successfully” error message. When this occurs, the Distributed Processing Status App might indicate that the job was completed, but no new clips are created.
Workaround: Submit jobs with a lower number of clips. Note that assets with large numbers of audio tracks can contribute to the failure as each track is counted as an individual media file.
Bug Number: DEFI-5759. When multiple workers are assigned to the same Queue, tasks might appear in the Status app in a “created” state indefinitely if one or more of the workers assigned to the task do not have access to the target Avid NEXIS workspace. In this case, the app does not display any error message to indicate that the task has encountered a problem.
Workaround: Verify that the target workspace is mounted on all Workers.
Limitations and Defects Found in Earlier Versions