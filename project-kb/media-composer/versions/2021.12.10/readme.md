---
product: media-composer
product-area: editing
version: "2021.12.10"
release-date: 01/12/2021
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application Composer® ReadMe for Media v2021.12.10 ScriptSync AI and PhraseFind AI Added to v2021.12.10 With the release of Media Composer 2021.12.10, ScriptSync and PhraseFind are now ScriptSync AI and PhraseFind AI. This does not change any base functionality, although language pack options are no longer required, and the option to delete transcripts has been added.
Changes to the UI include updated nomenclature for "ScriptSync AI" in the Script menu, as well as "PhraseFind AI" buttons and indexing in the Find window.
Transcripts, which are the text items used by PhraseFind AI and stored in a central database for projects, can be deleted using a new "Manage Transcripts" window. Click on the gear icon in the lower-left corner of the Find window and choose “Manage Transcripts” to select and delete transcripts from specific projects. You can also access this feature using the Script menu.
> **Note:** “Create Script from Clip” and the Transcription column in the Find window are only available
in Media Composer v2023.8 and later; they are not included in these changes.
Fixed in Media Composer v2021.12.10 Fixed in Media Composer v2021.12.10 The following have been fixed:
➤ Bug Number: MCCET-5009. (macOS) In some instances, media containing alpha channels were incorrectly aligned with the Matte Key effect on Apple Silicon processors (M1 and M2).
➤ Bug Number: MCCET-4671. In some instances, loading Avid Media Files with an alpha channel caused an "Alpha RLE compression not recognized" error.
➤ Bug Number: MCCET-5176. Applying an AudioSuite Gain effect to a 29.97 fps clip in a 59.94 fps project resulted in a render error.
➤ Bug Number: MCCET-4962. Incorrect clips were selected, regardless of playhead location, when stepping in and out of them while in the Color Workspace.
➤ Bug Number: MCCET-4579. Prunus AAF files imported into a 1080i/59.94 project in Media Composer could not be exported as AAF and returned an "Exception: AFileMediaDesc:
:SetAAFProperties() - Unable to set a container type for media descriptor" error.
➤ Bug Number: MCCET-5245 and MCCET-5247. In some instances, when using Dynamic Relink, partially restored clip’s tracks did not relink properly to their High Rez and Low Rez media.
➤ Bug Number: MCCET-5277. When using Dynamic Relink, partially restored clips with a Start timecode that began before midnight did not relink properly if their timecode rolled over after midnight.
Fixed in Media Composer v2021.12.10 ➤ Bug Number: MCCET-5129. Nugen LM-Correct AudioSuite plugin was shifting audio and not rendering correctly in Media Composer.
➤ Bug Number: MCCET-5252. In some instances, when Sending to Playback with transfer settings set to stereo, the resulting clip would play back as mono.
➤ Bug Number: MCCET-5115. (MediaCentral | Production Management) Media Composer did not send all selected clips from one Workgroup to another when attempting to send multiple clips using the Transfer Engine and the Transfer Client.
➤ Bug Number: MCCET-4119. When exporting XDCAM MXF OP1a files, macro blocking occurred if "Re-encode for XDCAM bitstream compliance" was selected.
➤ Bug Number: MCCET-5014. More render files were lost when moving clips on tracks below an ExpertRender clip than in previous versions of Media Composer.
➤ Bug Number: MCCET-5168. Changes to a duplicated sequence were undone if the record monitor was cleared and the sequence was reloaded within a short timeframe.
➤ Bug Number: MCCET-5023. Some bin column data was not displayed properly when used with the Timecode Burn-in effect on Group clips.
➤ Bug Number: MCCET-5192. In some instances, deleting a nested effect with the Effect Editor open caused an error.
➤ Bug Number: MCCET-5159. Comments did not appear in the bin Text View for a variety of items.
➤ Bug Number: MCCET-4707. (macOS) In some instances, Media Composer experienced intermittent hangs/beachballs on Apple Silicon.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software.
The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement.
It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid and the Avid logo are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or other countries.
See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer ReadMe (cid:129) Created 10/5/23