---
product: media-composer-distributed-processing
product-area: editing
version: "2025.10.0"
release-date: 01/10/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Installation and Prerequisites Avid Media Composer | Distributed Processing ReadMe Version 2025.10 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/pkb/articles/en_US/user_guide/Media-Composer-2025-Documentation Revision History Date Revised Changes Made January 5, 2026 Limitation numbers SYN-2621 and SYN-2624 moved to the Avid MediaCentral | Cloud UX ReadMe v2025.10.
November 14, 2025 First publication Contents Installation and Prerequisites This release of Avid Distributed Processing includes updates for:
- Distributed Processing Server components
For information on supported operating systems and for a list of product versions qualified for use with Avid Distributed Processing, see the Compatibility Matrix on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Avid highly recommends that you consult this matrix prior to upgrading any application or system to ensure that you understand the scope of the upgrade. In some cases, you might be required to upgrade additional components or hardware to maintain system compatibility.
For information on upgrading to this version of software, see the Avid Distributed Processing Administration Guide on the Avid Knowledge Base:
https://kb.avid.com/pkb/articles/en_US/user_guide/Media-Composer-2025-Documentation New Features in Distributed Processing v2025.10 New Features in Distributed Processing v2025.10 This topic provides an overview of the major new features in this release of Avid Distributed Processing.
Redesign and Rename of the Status App Formally available as a MediaCentral Cloud UX user-facing app, the Media Composer | Distributed Processing Status app has been renamed to the Distributed Processing Workers app. This new app can be found in the MediaCentral Cloud UX Administrators portal.
The following changes also apply to this redesign:
- As the app has been moved to the Administrator portal, the Distributed Processing Coordinator
entitlement found in prior releases is no longer used and is not applicable to v2025.10.
- The following sections of the app have been removed:
  - Job Status. Distributed Processing jobs are now tracked exclusively through the
MediaCentral Cloud UX Process app.
  - Worker Status (Worker Details). While there is no direct replacement for this panel, you can
obtain more information about the connected workers in the Details area of the new Distributed Processing Workers app.
  - Email Settings. No replacement.
- The new Distributed Processing Workers app replaces the functionality of the Coordinator Tools
area of the app.
For additional information about the new app, see the Avid Distributed Processing Administration Guide.
Limitations and Defects Found in Version 2025.10 Limitations and Defects Found in Version 2025.10 This section includes information on known limitations and defects in this release of Distributed Processing. For additional information on server components, see the Avid MediaCentral | Cloud UX ReadMe.
Bug Number: SYN-2549, MCDEV-20692. When you select Tools > Distributed Processing in Media Composer v2025.10 or earlier, the MediaCentral Panel displays a “No application config found for type:
avid distributed processing status” error message. Due to the changes in Distributed Processing v2025.10, this message is normal and expected.
Workaround: Use the MediaCentral Cloud UX Process app to see the status of Distributed Processing jobs.
To eliminate the error completely, you must upgrade to Media Composer v2025.12 or later.
Bug Number: SYN-2610. Distributed Processing v2024.10 workers cannot transcode or export AVC Intra media if the job is submitted from Media Composer v2025.6 or later.
Limitations and Defects Found in Earlier Versions This section includes information on known limitations and defects in prior releases of Distributed Processing.
Limitations and Defects Found in Version 2023.8.0 Bug Number: DEFI-5483.Completed jobs appear to hang in a Processing state with a 99% progress status.
This is a user-interface display issue only. Although the job appears to hang at 99%, the associated media files are processed correctly.
Bug Number: DEFI-4721, DEFI-5542. Distributed Processing cannot transcode or consolidate subclips.
Attempts to process a subclip with these functions result in an unplayable asset that produce “CM_OFFSET_OUT_OF_RANGE” or “PMM_INSUFFICENT_MEDIA” exceptions when loaded.
Bug Number: DEFI-5522. Media Composer cannot submit individual jobs that include a large number of individual media files (around 500). These jobs can result in a “Distributed Processing job did not complete successfully” error message. When this occurs, the Distributed Processing Status App might indicate that the job was completed, but no new clips are created.
Workaround: Submit jobs with a lower number of clips. Note that assets with large numbers of audio tracks can contribute to the failure as each track is counted as an individual media file.
Bug Number: DEFI-5759. When multiple workers are assigned to the same Queue, tasks might appear in the Status app in a “created” state indefinitely if one or more of the workers assigned to the task do not have access to the target Avid NEXIS workspace. In this case, the app does not display any error message to indicate that the task has encountered a problem.
Workaround: Verify that the target workspace is mounted on all Workers.
Limitations and Defects Found in Earlier Versions