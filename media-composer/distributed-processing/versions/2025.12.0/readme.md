---
product: media-composer-distributed-processing
product-area: editing
version: "2025.12.0"
release-date: 01/12/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Installation and Prerequisites Avid Media Composer | Distributed Processing ReadMe Version 2025.12 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/pkb/articles/en_US/user_guide/Media-Composer-2025-Documentation Revision History Date Revised Changes Made December 10, 2025 First publication Contents Installation and Prerequisites This release of Avid Distributed Processing includes updates for:
- Distributed Processing Service Workstation (Mac (Intel only), and Windows)
For information on supported operating systems and for a list of product versions qualified for use with Avid Distributed Processing, see the Compatibility Matrix on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Avid highly recommends that you consult this matrix prior to upgrading any application or system to ensure that you understand the scope of the upgrade. In some cases, you might be required to upgrade additional components or hardware to maintain system compatibility.
For information on upgrading to this version of software, see the Avid Distributed Processing Administration Guide on the Avid Knowledge Base:
https://kb.avid.com/pkb/articles/en_US/user_guide/Media-Composer-2025-Documentation New Features in Distributed Processing v2025.12 New Features in Distributed Processing v2025.12 This topic provides an overview of the major new features in this release of Avid Distributed Processing.
Support for Avid Production Management This release adds support for Avid Production Management workflows.
Distributed Processing Worker Settings App The Worker Settings App allows you to configure up to 8 workers on a single Service Workstation. This is an increase from a maximum of 4 workers in prior releases.
The MediaCentral | Production Management checkbox has been removed from the Settings app. The app now automatically detects this setting through its connection to MediaCentral Cloud UX.
Fixed in Version 2025.12 Bug Number: MCCET-6050. Transcoding an AMA asset through Distributed Processing results in a "Sequence refers to non-existent track in clip." error when loading the asset into the Source/Record monitor unless you enable the Create New Clip option in the Transcode window.
> **Note:** To fully enable this fix, you must install both Distributed Processing v2025.12 and Media Composer
v2025.12.
Limitations and Defects Found in Version 2025.12 This section includes information on known limitations and defects in this release of Distributed Processing. For additional information on server components, see the Avid MediaCentral | Cloud UX ReadMe.
In some cases, issues related to Distributed Process might be addressed by Media Composer software updates. For information on additional Distributed Processing fixes or limitations, see the Avid Media Composer ReadMe.
Bug Number: SYN-2695. Transcode jobs fail if you configure either H.264 800Kbps Proxy or H.264 2.0Mbps Proxy as the target format. These jobs return with a “no VideoFormatDescriptor exist on DP services for given target format” error.
Bug Number: SYN-2696. Transcode and Mixdown jobs fail if you configure DVC Pro as the target format.
These jobs return with a “no VideoFormatDescriptor exist on DP services for given target format” error.
Bug Number: SYN-2767. When working with Shared Library, jobs might fails at the Dynamic Relink phase with a -2147483645 error.
Bug Number: SYN-2772. If you submit a Transcode job from Media Composer, the job fails if you configure DNxHR/DNxHD as the target format. These jobs return with a “no VideoFormatDescriptor exist on DP services for given target format” error.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Earlier Versions This section includes information on known limitations and defects in prior releases of Distributed Processing.
Limitations and Defects Found in Version 2025.10 Bug Number: SYN-2549, MCDEV-20692. When you select Tools > Distributed Processing in Media Composer v2025.10 or earlier, the MediaCentral Panel displays a “No application config found for type:
avid distributed processing status” error message. Due to the changes in Distributed Processing v2025.10, this message is normal and expected.
Workaround: Use the MediaCentral Cloud UX Process app to see the status of Distributed Processing jobs.
To eliminate the error completely, you must upgrade to Media Composer v2025.12 or later.
Bug Number: SYN-2610. Distributed Processing v2024.10 workers cannot transcode or export AVC Intra media if the job is submitted from Media Composer v2025.6 or later.
Limitations and Defects Found in Version 2023.8.0 Bug Number: DEFI-5483.Completed jobs appear to hang in a Processing state with a 99% progress status.
This is a user-interface display issue only. Although the job appears to hang at 99%, the associated media files are processed correctly.
Bug Number: DEFI-4721, DEFI-5542. Distributed Processing cannot transcode or consolidate subclips.
Attempts to process a subclip with these functions result in an unplayable asset that produce “CM_OFFSET_OUT_OF_RANGE” or “PMM_INSUFFICENT_MEDIA” exceptions when loaded.
Bug Number: DEFI-5522. Media Composer cannot submit individual jobs that include a large number of individual media files (around 500). These jobs can result in a “Distributed Processing job did not complete successfully” error message. When this occurs, the Distributed Processing Status App might indicate that the job was completed, but no new clips are created.
Workaround: Submit jobs with a lower number of clips. Note that assets with large numbers of audio tracks can contribute to the failure as each track is counted as an individual media file.
Bug Number: DEFI-5759. When multiple workers are assigned to the same Queue, tasks might appear in the Status app in a “created” state indefinitely if one or more of the workers assigned to the task do not have access to the target Avid NEXIS workspace. In this case, the app does not display any error message to indicate that the task has encountered a problem.
Workaround: Verify that the target workspace is mounted on all Workers.
Limitations and Defects Found in Earlier Versions