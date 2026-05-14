---
product: media-composer
product-area: editing
version: "2022.12.5"
release-date: 01/12/2022
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application Composer® ReadMe for Media v2022.12.5 Revision History Date Description October 20, 2023 Added MCCET-5166 to Fixed in Media Composer v2022.12.5.
ScriptSync AI and PhraseFind AI Added to v2022.12.5 With the release of Media Composer 2022.12.5, ScriptSync and PhraseFind are now ScriptSync AI and PhraseFind AI. This does not change any base functionality, although language pack options are no longer required, and the option to delete transcripts has been added.
Changes to the UI include updated nomenclature for "ScriptSync AI" in the Script menu, as well as "PhraseFind AI" buttons and indexing in the Find window.
Transcripts, which are the text items used by PhraseFind AI and stored in a central database for projects, can be deleted using a new "Manage Transcripts" window. Click on the gear icon in the lower-left corner of the Find window and choose “Manage Transcripts” to select and delete transcripts from specific projects. You can also access this feature using the Script menu.
> **Note:** “Create Script from Clip” and the Transcription column in the Find window are only available
in Media Composer v2023.8 and later; they are not included in these changes.
Fixed in Media Composer v2022.12.5 Fixed in Media Composer v2022.12.5 The following have been fixed:
➤ Bug Number: MCCET-5166. Depending on network security setup, MediaCentral | Panel for Adobe Premiere Pro would not connect to MediaCentral | Cloud UX.
➤ Bug Number: MCCET-5092. Keyboard shortcuts to step forward or backward while in a bin’s Frame View or Script View did not work with French OS keyboard layouts.
➤ Bug Number: MCCET-5009. (macOS) In some instances, media containing alpha channels were incorrectly aligned with the Matte Key effect on Apple Silicon processors (M1 and M2).
Fixed in Media Composer v2022.12.5 ➤ Bug Number: MCCET-5127. Switching quickly to playback of a MultiCam group clip in Nine Split Source view caused the Source viewer to move outside of the Composer window.
➤ Bug Number: MCCET-4671. In some instances, loading Avid Media Files with an alpha channel caused an "Alpha RLE compression not recognized" error.
➤ Bug Number: MCCET-5223. Consolidating non-compliant XAVC MP4 media files, which lacked certain metadata and contained variable bitrate video, resulted in an "Assertion failed:
false File" error followed by an "Exception: FATAL_ERROR".
➤ Bug Number: MCCET-5223. Consolidating non-compliant XAVC MP4 media files, which lacked certain metadata and contained variable bitrate video, resulted in an "Assertion failed:
false File" error followed by an "Exception: FATAL_ERROR".
➤ Bug Number: MCCET-5224. The Select Project window displayed incorrect information for Creation Date and Modification Date.
➤ Bug Number: MCCET-5252. In some instances, when Sending to Playback with transfer settings set to stereo, the resulting clip would play back as mono.
➤ Bug Number: MCCET-5176. Applying an AudioSuite Gain effect to a 29.97 fps clip in a 59.94 fps project resulted in a render error.
➤ Bug Number: MCCET-5245 and MCCET-5247. In some instances, when using Dynamic Relink, partially restored clip’s tracks did not relink properly to their High Rez and Low Rez media.
➤ Bug Number: MCCET-4962. Incorrect clips were selected, regardless of playhead location, when stepping in and out of them while in the Color Workspace.
➤ Bug Number: MCCET-5186. In some instances, when bins and panels were set to float, new bins were opened underneath other windows.
➤ Bug Number: MCCET-4720. Keyboard shortcuts for parameter values in the Effect Editor did not work as expected after using sliders.
➤ Bug Number: MCCET-5020. Media Composer crashed while playing media from the Script window if the clip had a LUT applied and markers were added prior to playback.
➤ Bug Number: MCCET-5182. Custom "Start TC" values for sequence templates would not appear until multiple attempts were made to create a new sequence using the templates.
Fixed in Media Composer v2022.12.5 ➤ Bug Number: MCCET-5184. Gamma slider in the Color Correction effect did not allow for smaller changes in its parameter values while holding down the Shift key and dragging or scrolling.
➤ Bug Number: MCCET-5277. When using Dynamic Relink, partially restored clips with a Start timecode that began before midnight did not relink properly if their timecode rolled over after midnight.
➤ Bug Number: MCCET-5210. Floating bin windows did not retain their size or position after opening and closing them multiple times.
➤ Bug Number: MCCET-5054. While in Effect Mode with the Effect Editor window open, the Effect Editor window remained open after moving the position indicator on the timeline using the TC track.
➤ Bug Number: MCCET-4579. Prunus AAF files imported into a 1080i/59.94 project in Media Composer could not be exported as AAF and returned an "Exception:
AFileMediaDesc::SetAAFProperties() - Unable to set a container type for media descriptor" error.
➤ Bug Number: MCCET-5129. Nugen LM-Correct AudioSuite plugin was shifting audio and not rendering correctly in Media Composer.
➤ Bug Number: MCCET-5264. Dual-roller trim operation did not work as expected for very long master clips with a Stabilize effect applied.
➤ Bug Number: MCCET-4119. When exporting XDCAM MXF OP1a files, macro blocking occurred if "Re-encode for XDCAM bitstream compliance" was selected.
➤ Bug Number: MCCET-5014. More render files were lost when moving clips on tracks below an ExpertRender clip than in previous versions of Media Composer.
➤ Bug Number: MCCET-5243. Changes to clips in a sequence were reverted after modifying the project format.
➤ Bug Number: MCCET-5168. Changes to a duplicated sequence were undone if the record monitor was cleared and the sequence was reloaded within a short timeframe.
➤ Bug Number: MCCET-5105. Muted audio clips containing an AudioSuite effect could not be deleted and a copy of the clip would appear at the beginning of the sequence after attempting to delete.
Fixed in Media Composer v2022.12.5 ➤ Bug Number: MCCET-5002. When using external video I/O devices with Media Composer, LTC would freeze and not match embedded TC until playback was stopped.
➤ Bug Number: MCCET-5023. Some bin column data was not displayed properly when used with the Timecode Burn-in effect on Group clips.
➤ Bug Number: MCCET-5159. Comments did not appear in the bin Text View for a variety of items.
➤ Bug Number: MCCET-4707. (macOS) In some instances, Media Composer experienced intermittent hangs/beachballs on Apple Silicon.
➤ Bug Number: MCCET-3627. Timecode shifted when using the Match Frame feature with 23.976 frame rate media in a 24 frame rate project.
➤ Bug Number: MCCET-5134. Selecting the Undo command after using the Copy to Clipboard feature resulted in an error.
➤ Bug Number: MCCET-5115. (MediaCentral | Production Management) Media Composer did not send all selected clips from one Workgroup to another when attempting to send multiple clips using the Transfer Engine and the Transfer Client.
➤ Bug Number: MCCET-4996. In some instances, exporting a sequence with mixed frame rate media as an MP4 or MOV file resulted in an "Exception: PMM_SYNC_FAILURE" error.
➤ Bug Number: MCCET-4837. AMA Management database folders accrued unnecessary entries and became large enough to cause slow performance in Media Composer.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software.
The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement.
It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid and the Avid logo are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or other countries.
See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer ReadMe (cid:129) Created 10/20/23