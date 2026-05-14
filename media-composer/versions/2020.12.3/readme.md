---
product: media-composer
product-area: editing
version: "2020.12.3"
release-date: 01/12/2020
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application Composer® ReadMe for Media v2020.12.3 Revision History Date Description September 16, 2021 Added MCCET-3618 to Fixed in Media Composer v2020.12.3.
June 24, 2021 Added Media Indexer requirement to fixed bug MCCET-4146.
June 18, 2021 Added macOS support in Changed in Media Composer v2020.12.3 and added fixes to Fixed in Media Composer v2020.12.3.
Changed in Media Composer v2020.12.3 • Media Composer v2020.12.2 did not support Media Composer | Distributed Processing.
This has been fixed in v2020.12.3.
(cid:129) This release adds support for macOS v11.4.
Fixed in Media Composer v2020.12.3 The following have been fixed:
➤ Bug Number: MCCET-3618. (Artist Mix) You could not keep the two channels at the same level when ganging audio tracks.
➤ Bug Number: MCCET-3958. The user listed in the Interplay Transfer Status was the user entered in Media Composer settings, instead of the user logged in to perform the transfer.
➤ Bug Number: MCCET-4032. (Production Management) If you deleted a clip in Access, the media would not display as offline, instead you would receive a “Disk File Not Found” error.
Fixed in Media Composer v2020.12.3 ➤ Bug Number: MCCET-4100. Media Creation Settings defaulted to H.264 800kbps proxy in 1080p/24 projects.
➤ Bug Number: MCCET-4067. You received an “unsupported resolution” error when trying to link DNxHD 175X media that was encoded in Media Composer v2018.12.x.
➤ Bug Number: MCCET-3629. You might have received “Exception:
'AComposition::ConvertFromAAF - unable to convert media descriptor” errors when trying to work with Blackmagic Hyperdeck recorded files copied to the Avid MediaFiles folder.
➤ Bug Number: MCCET-4071. Target Mask not working properly in Avid Titler.
➤ Bug Number: MCCET-3847, MCCET-4155. Default Media Creation settings for new projects and when switching to a different project format might have been incorrect.
➤ Bug Number: MCCET-4079. Site settings for Media Creation were not working for some codecs.
➤ Bug Number: MCCET-3510. Even after changing the Media Creation setting, video resolution reverted to default in 1080p50 projects.
➤ Bug Number: MCCET-3705. (Production Management) Video track name changes might not have saved properly during check in/check out.
➤ Bug Number: MCCET-4070. H.264 proxy media may have been scrambled.
➤ Bug Number: MCCET-4065. In some instances, the clip color changed on transcoded clips with alpha.
➤ Bug Number: MCCET-4114. Dragging a saved Audio Track Effect from a bin to the Audio Mixer [+] did not apply the effect.
➤ Bug Number: MCCET-4061. Importing some sequences resulted in “vcAvgFrameSize encountered a codec manager” errors.
➤ Bug Number: MCCET-3850. You might have received a “Video compression not recognized” error when opening a bin containing DNxHD 220x created in Media Composer v2020.x.
➤ Bug Number: MCCET-4053. When working with the List Tool, you might have received an “Assertion” error when previewing sequences with mixed frame rate or group clips.
➤ Bug Number: MCCET-4124. The application would crash to a Breakpad window when trying to import a PSD file.
Fixed in Media Composer v2020.12.3 ➤ Bug Number: MCCET-4055. The Paint effect window did not display properly.
➤ Bug Number: MCCET-4073. The small space at the left of the bin where you could right-click to select bin options was missing.
➤ Bug Number: MCCET-4075. You could not lasso multiple bins in a project.
➤ Bug Number: MCCET-4101. Media Composer might have crashed when transcoding a GoPro clip.
➤ Bug Number: MCCET-3952. The audio and video for some MP4 media was not in sync.
➤ Bug Number: MCCET-3832. You might have received “assertion failed” or “fatal exception” errors when rendering or scrubbing media that was edited in Audio EQ tool.
➤ Bug Number: MCCET-4146. (Production Management) After performing an initial checkout of some clips, some audio was offline. This fix requires Media Indexer v2020.4.3 or higher client and server.
➤ Bug Number: MCCET-4131. Media Composer crashed when playing a corrupted file from FastServe Ingest.
➤ Bug Number: MCCET-4136. Timeline Frame View did not show the correct frame with stacked clips.
➤ Bug Number: MCCET-4148. Double-clicking the Take did not load a subclip into the Source Monitor from the slate.
➤ Bug Number: MCCET-4080. The Tool Palette window did not retain its size.
➤ Bug Number: MCCET-3842. Desktop Play Delay resulted in an “ADM_PLAY_NOT_ARMED” error when hitting play with NDI enabled.
➤ Bug Number: MCCET-4059. You might have received a “compression not recognized” error when importing some media into Media Composer.
➤ Bug Number: MCCET-4151. (Production Management) Checking out a sequence that contained a clip that was referenced in many sequences might have been slow.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software.
The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement.
It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid and the Avid logo are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or other countries.
See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer ReadMe (cid:129) Created 9/16/21