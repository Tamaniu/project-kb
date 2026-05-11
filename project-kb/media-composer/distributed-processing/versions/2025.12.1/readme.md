---
product: media-composer-distributed-processing
product-area: editing
version: "2025.12.1"
release-date: 01/12/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Installation and Prerequisites Avid Media Composer | Distributed Processing ReadMe Version 2025.12.1 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/pkb/articles/en_US/user_guide/Media-Composer-2025-Documentation Revision History Date Revised Changes Made March 31, 2026 First publication Contents Installation and Prerequisites This release of Avid Distributed Processing includes updates for:
- Distributed Processing Service Workstation (Mac (Intel only), and Windows)
This release is not compatible with MediaCentral Cloud UX v2024.10.14 or earlier, or MediaCentral Cloud UX v2025.10.x.
For information on supported operating systems and for a list of product versions qualified for use with Avid Distributed Processing, see the Compatibility Matrix on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Avid highly recommends that you consult this matrix prior to upgrading any application or system to ensure that you understand the scope of the upgrade. In some cases, you might be required to upgrade additional components or hardware to maintain system compatibility.
For information on upgrading to this version of software, see the Avid Distributed Processing Administration Guide on the Avid Knowledge Base:
https://kb.avid.com/pkb/articles/en_US/user_guide/Media-Composer-2025-Documentation Fixed in Version 2025.12.1 Fixed in Version 2025.12.1 Bug Number: MCCET-5971. Distributed Processing Export tasks ignore the "Use Selected Tracks" setting (if selected).
> **Note:** The sequence export still fails if there is an offline clip in the middle of the video tracks, even if the
track is deselected.
Bug Number: SYN-2695. Transcode jobs fail if you configure either H.264 800Kbps Proxy or H.264 2.0Mbps Proxy as the target format. These jobs return with a “no VideoFormatDescriptor exist on DP services for given target format” error.
Bug Number: SYN-2696. Transcode and Mixdown jobs fail if you configure DVC Pro as the target format.
These jobs return with a “no VideoFormatDescriptor exist on DP services for given target format” error.
Bug Number: SYN-2767. When working with Shared Library, jobs might fails at the Dynamic Relink phase with a -2147483645 error.
Bug Number: SYN-2772. If you submit a Transcode job from Media Composer, the job fails if you configure DNxHR/DNxHD as the target format. These jobs return with a “no VideoFormatDescriptor exist on DP services for given target format” error.
Bug Number: SYN-2993. Files are exported as a generic “Media Offline” slide if the worker node cannot resolve the Avid NEXIS systems's IP address. This fix now fails the effected job(s).
Fixed in Version 2025.12.1