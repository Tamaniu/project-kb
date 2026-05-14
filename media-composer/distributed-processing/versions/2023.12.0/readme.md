---
product: media-composer-distributed-processing
product-area: editing
version: "2023.12.0"
release-date: 01/12/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Installation and Prerequisites Avid Media Composer | Distributed Processing ReadMe Version 2023.12 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Additional information and documentation for Avid Media Composer Distributed Processing, can be found on the version respective Media Composer pages of the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/User_Guide/Media-Composer-Documentation-Links Revision History Date Revised Changes Made December 21, 2023 First publication Installation and Prerequisites This release of Avid Media Composer Distributed Processing includes updates for:
- Distributed Processing Service Workstation (Windows and macOS)
For information on upgrading to this version of software, see the Avid Media Composer | Distributed Processing Administration Guide. For information on upgrading Avid NEXIS EDGE or Avid MediaCentral | Cloud UX, see either of the following pages on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/Compatibility/Avid-NEXIS-EDGE-Documentation
- https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation
New Features in Distributed Processing v2023.12 New Features in Distributed Processing v2023.12 Linked Assets This release allows you to Consolidate, Transcode, or create proxy media from linked media located on non-Avid NEXIS, network attached storage to an Avid NEXIS system. However this workflow is supported on Windows only.
If you want to use this feature, you must be running Media Composer on Windows and the job can be processed only on a Windows-based Distributed Processing worker. macOS is not supported in this workflow.
Limitations and Defects Found in Version 2023.8.0 Bug Number: DEFI-5483. Completed jobs appear to hang in a Processing state with a 99% progress status.
This is a user-interface display issue only. Although the job appears to hang at 99%, the associated media files are processed correctly.
Bug Number: DEFI-4721, DEFI-5542. Distributed Processing cannot transcode or consolidate subclips.
Attempts to process a subclip with these functions result in an unplayable asset that produce “CM_OFFSET_OUT_OF_RANGE” or “PMM_INSUFFICENT_MEDIA” exceptions when loaded.
Bug Number: DEFI-5522. Media Composer cannot submit individual jobs that include a large number of individual media files (around 500). These jobs can result in a “Distributed Processing job did not complete successfully” error message. When this occurs, the Distributed Processing Status App might indicate that the job was completed, but no new clips are created.
Workaround: Submit jobs with a lower number of clips. Note that assets with large numbers of audio tracks can contribute to the failure as each track is counted as an individual media file.
Bug Number: DEFI-5759. When multiple workers are assigned to the same Queue, tasks might appear in the Status app in a “created” state indefinitely if one or more of the workers assigned to the task do not have access to the target Avid NEXIS workspace. In this case, the app does not display any error message to indicate that the task has encountered a problem.
Workaround: Verify that the target workspace is mounted on all Workers.
Fixed in Version 2023.12 Bug Number: DEFI-6144. If the hostname of a macOS-based Distributed Processing worker includes an apostrophe, the worker is not displayed in the Status app's Coordinator tab.
Fixed in Version 2023.12