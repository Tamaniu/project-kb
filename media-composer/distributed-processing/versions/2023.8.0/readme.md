---
product: media-composer-distributed-processing
product-area: editing
version: "2023.8.0"
release-date: 01/08/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Installation and Prerequisites Avid Media Composer | Distributed Processing ReadMe Version 2023.8 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Additional information and documentation for Avid Media Composer Distributed Processing, can be found on the version respective Media Composer pages of the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/User_Guide/Media-Composer-Documentation-Links Revision History Date Revised Changes Made August 29, 2023 First publication Installation and Prerequisites Avid Media Composer Distributed Processing v2023.8 includes updates for:
- Distributed Processing Service Workstation (Windows and macOS)
For information on upgrading to this version of software, see the Avid Media Composer | Distributed Processing Administration Guide. For information on upgrading Avid NEXIS EDGE or Avid MediaCentral | Cloud UX, see either of the following pages on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/Compatibility/Avid-NEXIS-EDGE-Documentation
- https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation
- Additional Documentation
Avid NEXIS Workspace Mounting Distributed Processing v2022.12.1 and later allows you to mount Avid NEXIS workspaces on the Distributed Processing Workstation using either UNC paths or drive letters. This update applies to all workflows.
Limitations and Defects Found in Version 2023.8.0 Limitations and Defects Found in Version 2023.8.0 Bug Number: DEFI-5483. Completed jobs appear to hang in a Processing state with a 99% progress status.
This is a user-interface display issue only. Although the job appears to hang at 99%, the associated media files are processed correctly.
Bug Number: DEFI-5522. Media Composer cannot submit individual jobs that include a large number of individual media files (around 500). These jobs can result in a “Distributed Processing job did not complete successfully” error message. When this occurs, the Distributed Processing Status App might indicate that the job was completed, but no new clips are created.
Workaround: Submit jobs with a lower number of clips. Note that assets with large numbers of audio tracks can contribute to the failure as each track is counted as an individual media file.
Bug Number: DEFI-4721, DEFI-5542. Distributed Processing cannot transcode or consolidate subclips.
Attempts to process a subclip with these functions result in an unplayable asset that produce “CM_OFFSET_OUT_OF_RANGE” or “PMM_INSUFFICENT_MEDIA” exceptions when loaded.
Bug Number: DEFI-5759. When multiple workers are assigned to the same Queue, tasks might appear in the Status app in a “created” state indefinitely if one or more of the workers assigned to the task do not have access to the target Avid NEXIS workspace. In this case, the app does not display any error message to indicate that the task has encountered a problem.
Workaround: Verify that the target workspace is mounted on all Workers.
Fixed in Version 2023.8 Bug Number: DEFI-5994. Distributed Processing displays a “Failed to extract root-key” error message for the transcode and consolidate operations if the workspace with the source media is not mounted.
This release replaces this error with a “Media Offline” message. Source media must be located on an Avid NEXIS workspace, mounted as Drive letter or UNC path.
Fixed in Version 2023.8