---
product: media-composer
product-area: editing
version: "2021.12.5"
release-date: 01/12/2021
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application Composer® ReadMe for Media v2021.12.5 Fixed in Media Composer v2021.12.5 The following have been fixed:
> **Note:** Dynamic Relink has been improved with this release and includes various fixes to address issues
with Matte Keys and alpha channels. Bug Numbers associated with these fixes include MCCET-4737, MCCET-4699, MCCET-4568, MCCET-4561, MCCET-4616, MCCET-4560, MCCET-4784, MCCET-4829, MCCET-4666, MCCET-4778, MCCET-4467, and MCCET-4605.
➤ Bug Number: MCCET-4592. Switching from the Edit workspace to the Effects workspace put Media Composer into Segment mode.
➤ Bug Number: MCCET-4236. Switching quickly between workspaces linked to custom bin layouts caused Media Composer to crash.
➤ Bug Number: MCCET-4650. Settings for Master volume fader in the Audio Mixer tool were ignored during export.
➤ Bug Number: MCCET-4786. Metadata for imported .wav files was interpreted incorrectly, causing a change in track order and appearance of track names.
➤ Bug Number: MCCET-4613. In some instances, switching from Live Mix to Clip mode in the Audio mixer caused an "Assertion failed: IsValidPanCoefficientValue (newCoefficient)" error.
➤ Bug Number: MCCET-4809. In some instances, audio for proxy media experienced playback errors, including distorted sound and playback that stopped unexpectedly.
➤ Bug Number: MCCET-4433. Audio playback was faster than normal for clips created with Interplay Capture and AirSpeed Multi Stream.
Fixed in Media Composer v2021.12.5 ➤ Bug Number: MCCET-4504. Frame thumbnails in the Markers window, for markers on the lower tracks of the Timeline, displayed an image from the topmost track.
➤ Bug Number: MCCET-4826. (macOS) Switching between user profiles with specific strings of Japanese characters in their name was not possible due to an issue with UTF-8 encoding.
➤ Bug Number: MCCET-4641. In some instances, user interface and playback would slow down and stop responding if sequences contained certain effects, such as the Safe Color Limiter.
➤ Bug Number: MCCET-4856. "Hybrid Log Gamma" in the Color Space column of the Select Project window was not properly decoded when using Japanese characters.
➤ Bug Number: MCCET-4636. (Windows) Keyboard shortcuts (Ctrl+0) to switch focus between windows in the user interface did not function when an active track in the Audio Mixer tool was selected.
➤ Bug Number: MCCET-4512. "Assertion failed" TimeWarp error caused Production Management check-ins to fail when the Neat Video plug-in was installed.
➤ Bug Number: MCCET-4430. Nested clips that contained offline media appeared colored, as though they were online, even if missing media was located in a nested layer.
➤ Bug Number: MCCET-3706. Letter Gothic font was distorted in Titler+.
➤ Bug Number: MCCET-4506. After consolidating or transcoding footage with an alpha channel, the clip names for Matte Key effects were not properly decoded when using Japanese characters.
➤ Bug Number: MCCET-4858. Switching Audio Punch-in tool from Live mode to Auto mode caused an "Assertion failed: IsValidPanCoefficientValue (newCoefficient)" error.
➤ Bug Number: MCCET-4672. Timeline would center around the blue bar (current position indicator) while zooming in and out during playback and did not retain the position selected by user when “Timeline Movement During Play” was set to “Scroll”. Media Composer now retains the position selected by user and the blue bar is centered when playback is stopped.
➤ Bug Number: MCCET-4673. Checking out sequences was slower for remote Production Management clients with latencies higher than on-premises systems.
➤ Bug Number: MCCET-4832. In some instances, bins were very slow to respond when opening and closing, or when displaying, sorting and selecting certain media.
➤ Bug Number: MCCET-4772. Bins without changes were saved to the Attic when closed, causing the Attic to grow larger than necessary.
Fixed in Media Composer v2021.12.5 ➤ Bug Number: MCCET-4799. Naming a Custom Preset with Japanese characters resulted in text that was not properly decoded.
➤ Bug Number: MCCET-4768. Option to "Skip Existing Transition Effects" was unavailable when using keyboard shortcuts to navigate the Quick Transition dialog box, even though "Apply To All Transitions" was selected.
➤ Bug Number: MCCET-4635. Adding an effect to a clip with Three Tone, HSL Color Correction applied caused the Color Correction controls to stop working.
➤ Bug Number: MCCET-4771. (Windows) In some instances, bins were very slow to open.
➤ Bug Number: MCCET-4705. (macOS) Right-clicking in Script window caused Bin Fast Menu options to appear.
➤ Bug Number: MCCET-4644. Exporting subclips from a bin or the Source monitor to an MXF OP1a file caused an “invalid trim” error.
➤ Bug Number: MCCET-4537. Send to Playback did not work for "AVC Long GOP 50 1080p 50" media.
➤ Bug Number: MCCET-4782. Enabling waveforms caused general sluggishness and slower performance when working in bins and sequences.
➤ Bug Number: MCCET-4233. Titler+ was very slow to render titles in a 1080i/50 sequence, especially when compared to a 1080p/25 sequence.
➤ Bug Number: MCCET-4695. Projects opened slower after adding MediaCentral Production Management Folder settings to Site Settings in MediaCentral.
➤ Bug Number: MCCET-4580. When adding markers to an audio track using the Source monitor in a 1080p/24 project, the marker position jumped to a random location in the Timeline. When using different project settings, the current position indicator jumped to a random location after clicking on a marker in the Marker window.
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