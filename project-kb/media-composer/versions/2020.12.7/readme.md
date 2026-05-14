---
product: media-composer
product-area: editing
version: "2020.12.7"
release-date: 01/12/2020
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application Composer® ReadMe for Media v2020.12.7 Fixed in Media Composer v2020.12.7 The following have been fixed:
> **Note:** Dynamic Relink has been improved with this release and includes various fixes to address issues
with Matte Keys and alpha channels. Bug Numbers associated with these fixes include MCCET-4737, MCCET-4699, MCCET-4568, MCCET-4561, MCCET-4616, MCCET-4560, MCCET-4784, MCCET-4829, MCCET-4666, MCCET-4778, MCCET-4467, and MCCET-4605.
➤ Bug Number: MCCET-4592. Switching from the Edit workspace to the Effects workspace put Media Composer into Segment mode.
➤ Bug Number: MCCET-4782. Enabling waveforms caused general sluggishness and slower performance when working in bins and sequences.
➤ Bug Number: MCCET-4613. In some instances, switching from Live Mix to Clip mode in the Audio mixer caused an "Assertion failed: IsValidPanCoefficientValue (newCoefficient)" error.
➤ Bug Number: MCCET-4641. In some instances, user interface and playback would slow down and stop responding if sequences contained certain effects, such as the Safe Color Limiter.
➤ Bug Number: MCCET-4512. "Assertion failed" TimeWarp error caused Production Management check-ins to fail when the Neat Video plug-in was installed.
➤ Bug Number: MCCET-4506. After consolidating or transcoding footage with an alpha channel, the clip names for Matte Key effects were not properly decoded when using Japanese characters.
➤ Bug Number: MCCET-4673. Checking out sequences was slower for remote Production Management clients with latencies higher than on-premises systems.
Fixed in Media Composer v2020.12.7 ➤ Bug Number: MCCET-4809. In some instances, audio for proxy media experienced playback errors, including distorted sound and playback that stopped unexpectedly.
➤ Bug Number: MCCET-4433. Audio playback was faster than normal for clips created with Interplay Capture and AirSpeed Multi Stream.
➤ Bug Number: MCCET-4832. In some instances, bins were very slow to respond when opening and closing, or when displaying, sorting and selecting certain media.
➤ Bug Number: MCCET-4580. When adding markers to an audio track using the Source monitor in a 1080p/24 project, the marker position jumped to a random location in the Timeline. When using different project settings, the current position indicator jumped to a random location after clicking on a marker in the Marker window.
➤ Bug Number: MCCET-4184. There is a delay from the time a letter is typed to it being displayed on screen when using Chinese characters in Titler+.
➤ Bug Number: MCCET-4555. File paths were not retained when opening projects using the Browse option in the Select Project window.
➤ Bug Number: MCCET-4771. (Windows) In some instances, bins were very slow to open.
➤ Bug Number: MCCET-4570. (MediaCentral | Production Management) Playback would fail when sending MXF (OP1A) files to a local disc using the Transfer Engine.
➤ Bug Number: MCCET-3408. (macOS) Title Tool caused Media Composer to crash when saving a title with Full Screen Playback enabled.
➤ Bug Number: MCCET-4710. (Windows)(MediaCentral | Production Management) “Exception:
Structured Exception” error appears when starting Media Composer and "Connecting to MediaIndexer" status is displayed on splash screen.
➤ Bug Number: MCCET-4211. Titler+ created unwanted keyframes when text was deleted from a text box with existing keyframes.
➤ Bug Number: MCCET-4779. Using Preview in the AudioSuite tool played a portion of the original media beyond the end of the clip as edited into the Timeline.
➤ Bug Number: MCCET-4330. Background transcoding of ProRes RAW files to another format failed to complete.
Fixed in Media Composer v2020.12.7 ➤ Bug Number: MCCET-4368. In some instances, "Assertion Failed" error message appeared when using Dynamic Relink, audio media did not load properly, and "highest quality" option was ignored.
➤ Bug Number: MCCET-4629. Adding an Audio Track Effect to a track with Group clips on it resulted in the audio in the Group clip not switching or displaying properly.
➤ Bug Number: MCCET-4399. If you performed an Export as Graphic and NDI was active, you might have received an “AMEResourceManager ReconfigHW_LegendBoB_Capture” error.
➤ Bug Number: MCCET-4600. Users of Media Composer | Enterprise were interrupted with a message about supported versions of the administration server used to create current definitions.
➤ Bug Number: MCCET-4478. Avid NEXIS users experienced significant performance issues when bin indexing and noticed bandwidth irregularities in the Avid NEXIS Management Console.
➤ Bug Number: MCCET-4581. (macOS) Video quality was significantly degraded when monitoring with an AJA DNxIV in Draft mode on an M1 Mac.
➤ Bug Number: MCCET-4462. Linking AVC-I Class100 1080p50 media was unsuccessful and returned "The media is unsupported" or "ExceptionUNKNOWN horizontal subsapling error" message, depending on the version of Media Composer.
➤ Bug Number: MCCET-4242. When working with some AudioSuite plug-ins, rendering stereo audio was slow in a Production Management/Avid NEXIS environment.
➤ Bug Number: MCCET-4658. Export Settings were not retained when using custom presets to export media.
➤ Bug Number: MCCET-4265. A sequence containing grouped XDCAM 50 clips with FrameFlex did not retain FrameFlex after performing a mixdown.
➤ Bug Number: MCCET-4490. Sorting by Date in the Find window did not sort correctly when Regional Format was set to English (United Kingdom).
➤ Bug Number: MCCET-4563. When logging in to Production Management or MediaCentral | Cloud UX from the Media Composer project window, the password remained in the password text box after you logged out.
➤ Bug Number: MCCET-4551. Default Starting Timecode in the General Settings for a Project were not retained after pressing the Enter or Return key on the keyboard.
Fixed in Media Composer v2020.12.7 ➤ Bug Number: MCCET-4596. When in Bin Frame View, moving clips by lassoing them did not work properly.
➤ Bug Number: MCCET-4576. Timecode window experienced a display glitch when switching between user profiles.
➤ Bug Number: MCCET-4457. Transition Manipulation was broken while the Composer window was set to "Show Single Monitor".
➤ Bug Number: MCCET-4585. Audio Punch-in did not work properly after Film option was selected during project creation.
➤ Bug Number: MCCET-4516. When live capturing with the Capture Tool, the Extra Field Selection did not populate the corresponding custom column in the bin, but worked when logging only.
➤ Bug Number: MCCET-4621. The "Undo-Redo List" in Media Composer did not display entire list of recent actions.
➤ Bug Number: MCCET-3592. Changes made to Color Space for external projects located on Avid NEXIS were not reflected in the "Select Project" window.
➤ Bug Number: MCCET-4657. In some instances, the "Exception: SETTING CLASS NOT REGISTERED" error message appeared after using the Command Palette to move the Segment Mode (Lift/Overwrite) button.
➤ Bug Number: MCCET-4663. When switching workspace from Color to Effects, the viewer doesn't switch correctly.
➤ Bug Number: MCCET-4620. D-Verb settings reverted to default values when they were nested with a clip that had Audio EQ applied.
➤ Bug Number: MCCET-4717. Multiple vaporizations during editing.
➤ Bug Number: MCCET-4306. Toggling Override Working Settings With Target Settings will result into Audio/Video no longer sync ➤ Bug Number: MCCET-4687. Selecting "Send to Export" in the Output menu reset some Motion Effect parameters and unrendered the effects.
➤ Bug Number: MCCET-4549. Some users in a MediaCentral | Production Management environment experienced long delays and, in certain instances, crashes when logging in, opening projects and checking out media in projects.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software.
The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement.
It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid and the Avid logo are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or other countries.
See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer ReadMe (cid:129) Created 11/22/22