---
product: media-composer
product-area: editing
version: "2023.12.4"
release-date: 01/12/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application Composer® ReadMe for Media v2023.12.4 Media Composer v2023.12.x only supports macOS versions from 10.15.x to 14.1.x. macOS version 14.2 and later are not currently supported.
Fixed in Media Composer v2023.12.4 The following have been fixed for all applicable models of Media Composer in this update (First, Standard, Ultimate, and Enterprise):
> **Note:** Bug fixes will only apply to those features available for a particular model.
➤ Bug Number: MDEV-18596. "Allow Mixed Frame Rate Media" checkbox selection in Dynamic Relink settings did not persist, which caused problems for some projects in the edit, mix, or online process.
➤ Bug Number: MCCET-5499. When importing media and the Import Resolution Conflict dialog was encountered, the default codec in the Media Creation Import settings was reset.
➤ Bug Number: MCCET-5558. In some instances, already rendered sequences were rendered again when performing a Send to Playback.
➤ Bug Number: MCCET-5403. (MediaCentral | Production Management) Locally linked AMA media could go offline in a MediaCentral | Production Management environment, Media Composer configuration, and would not be able to link back to make it online again.
➤ Bug Number: MCCET-5119. Noticeable lags were experienced while editing in the Timeline if many real- time audio effects were used.
➤ Bug Number: MCCET-5443. Sequence names entered by user reverted to default sequence names when using the Multi-Mix Tool.
➤ Bug Number: MCCET-5680. In some instances, using Multicam to edit group clips caused Media Composer to crash and display an error message.
Fixed in Media Composer v2023.12.4 ➤ Bug Number: MCCET-5534. Performing "Export to Device" using an XDCAM disc with the Sony PDW-U2 XDCAM Disc Drive failed and produced an "Exception: Structured Exception" error.
➤ Bug Number: MCCET-5455. Consolidated AVC-Intra 422 clips caused playback errors and a "CORE_ CONSISTENCY_CHECK_FAILURE" in the Source monitor.
➤ Bug Number: MCCET-5203. (MediaCentral | Production Management) Using the MSP_MXF Plug-in to link MXF files in file paths with multibyte character sets, such as Japanese, caused media files to become offline.
➤ Bug Number: MCCET-4830. (MediaCentral | Production Management) "Filter Out System Drive" option in the Media Creation settings for a Project did not always work as expected when importing from the Source Browser, which meant users could still write media to the local system drive.
➤ Bug Number: MCCET-5562. In some instances, consolidating AVC clips caused macroblocking errors in portions of the frame.
➤ Bug Number: MCCET-5673. In some instances, adjusting clip gain in the Audio Mixer caused Media Composer to crash.
➤ Bug Number: MCCET-5349. The position indicator and position bar in the Record monitor did not update properly after adding a Stabilize effect to a clip in the Timeline.
➤ Bug Number: MCCET-5315. Stylesheets for SubCaps, accessed through the Global Properties window, did not save outline settings as part of their template.
➤ Bug Number: MCCET-5649. (macOS) Various bin operations, such as opening or renaming bins, could cause intermittent hangs/beachballs on macOS.
➤ Bug Number: MCCET-5682. Avid Huddle did not update images in real-time while making changes in the Effect Editor.
➤ Bug Number: MCCET-5699. Avid Huddle did not update images in real-time while working in Trim Mode.
➤ Bug Number: MCCET-5479. (macOS) Media Composer would crash if BorisCC and BaseLight plugins were installed on the user's system (this issue has been addressed with Boris FX 2024.5 v17.5.3.) ➤ Bug Number: MCCET-5478. In some instances, the parameters for an Audio Track Effect reverted to previous values after playing back a sequence.
Fixed in Media Composer v2023.12.4 ➤ Bug Number: MCCET-5603. Changing monitor resolution during Send to Playback to a TMF enabled device could result in loss of audio in the TMF file.
➤ Bug Number: MCCET-5638. Labels for audio channels in the Audio Mixer did not update properly when switching between Audio Project settings.
➤ Bug Number: MCCET-5722. The Undo command caused two operations to revert, instead of one, after performing an operation in the Timeline and changing the clip in a group clip using the context menu (it should not be possible to undo clip selection within a group clip).
➤ Bug Number: MCCET-5551. Display/Hide Master Clip Controls button was missing from the AudioSuite window.
➤ Bug Number: MCCET-5716. Using text containing non-alphanumeric characters, such as hyphens, could cause ScriptSync errors, such as "AvNN Error:350, AvNNDatabase::Align error".
➤ Bug Number: MCCET-5087. (MediaCentral | Production Management) Importing PNG, TGA, or PSD files containing Chinese or Japanese filenames could have caused errors.
➤ Bug Number: MCCET-5174. (MediaCentral | Production Management) Importing image files with Japanese filenames caused the media to become offline.
➤ Bug Number: MCCET-5640. Changes in the Audio Mixer Tool could not be undone.
➤ Bug Number: MCCET-5608. During installation of Media Composer, an empty "BF-76.aaxplugin" folder was created instead of the expected BF-76.aaxplugin.
➤ Bug Number: MCCET-4602. Master Caption List was out of order when the SubCap effect was placed on two tracks and some captions were muted.
➤ Bug Number: MCCET-5662. Only the EDGE4 option was available for use in the "Master Edge" bin column.
➤ Bug Number: MCCET-5097. Certain MP3 files could not be imported or transcoded on systems without QuickTime installed.
➤ Bug Number: MCCET-4763. (macOS) Apple ProRes RAW files linked with UME produced errors on Apple Silicon systems.
➤ Bug Number: MCCET-5619. (Windows) Apple ProRes RAW media could not be linked, which resulted in a black screen or error.
Fixed in Media Composer v2023.12.4 ➤ Bug Number: MCCET-5497. Clear/Add (-/+) icons in the Find window were hard to read if the UI interface brightness was set to the darkest option.
➤ Bug Number: MCCET-5416. (macOS) Media Composer crashed during start if the MPEG-H Audio plug-in was installed on the user's system.
➤ Bug Number: MCCET-5750. Certain MP3 files could not be re-imported using Batch Import on systems without QuickTime installed.
➤ Bug Number: MCCET-5681 and MCCET-5699. SRT stream in Avid Huddle did not update when moving frame-by-frame in Trim mode.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software.
The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement.
It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid and the Avid logo are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or other countries.
See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer ReadMe (cid:129) Created 12/17/24