---
product: media-composer-distributed-processing
product-area: editing
version: "2024.10.2"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Installation and Prerequisites Avid Media Composer | Distributed Processing ReadMe Version 2024.10.2 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Additional information and documentation for Avid Media Composer Distributed Processing, can be found on the version respective Media Composer pages of the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/User_Guide/Media-Composer-Documentation-Links Revision History Date Revised Changes Made March 4, 2026 First publication This release is supported with MediaCentral Cloud UX v2024.10.15 or later v2024.10.x patch release. It is not supported with any other previous or later release of MediaCentral Cloud UX.
Contents Installation and Prerequisites This release of Avid Media Composer Distributed Processing includes updates for:
Distributed Processing Service Workstation
- For information on upgrading to this version of software, see the Avid Media Composer | Distributed
Processing Administration Guide on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation Fixed in Version 2024.10.2 Fixed in Version 2024.10.2 Bug Number: IPI-3792. (Windows only) In some specific workflows, Distributed Processing Service Workstations can not connect to Avid NEXIS workspaces that are mounted with UNC paths.
Bug Number: IPI-3968. Some Distributed Processing tasks could occasionally freeze or slow down under heavy load due to inefficiencies in how progress updates, data handling, caching, and cleanup were managed. These have been optimized to ensure smoother and more reliable job processing.
Fixed in Version 2024.10.1 Bug Number: SYN-1564. (Windows only) The Distributed Processing Worker fails to start due to a missing library file in the v2024.10.0 installer.
Bug Number: SYN-1621. Although Avid NEXIS | EDGE is not supported in Distributed Processing v2024.10 and later, the Distributed Processing Worker Settings app continues to reference this system. This fix removes the reference to Avid NEXIS | EDGE from the app.
Bug Number: SYN-1643. If you export a complex sequence through Distributed Processing, the worker might not respond in time. This delay can lead to the creation of multiple export tasks that can cause the export job to fail.
Bug Number: SYN-1716. After a successful start of a Consolidate job, Distributed Processing might create additional (repeat) consolidate tasks that cause the related job to fail with an “Unknown exception” error.
Fixed in Version 2024.10.1