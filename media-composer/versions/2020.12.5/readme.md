---
product: media-composer
product-area: editing
version: "2020.12.5"
release-date: 01/12/2020
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application Composer® ReadMe for Media v2020.12.5 Revision History Date Description March 16, 2022 Added MCCET-4403 to the fixed bug list.
Fixed in Media Composer v2020.12.5 The following have been fixed:
➤ Bug Number: MCCET-4403. You might have experienced inconsistent behavior when switching the “If no match found” Dynamic Relink setting between Highest Resolution and Offline.
➤ Bug Number: MCCET-4267. Wrong media was displayed if you disabled tracks, performed a render and then enabled tracks.
➤ Bug Number: MCCET-3840. Scrubbing a sequence containing a SubCap effect might have crashed to a Breakpad window.
➤ Bug Number: MCCET-4359. You might have received a “MultiframeCombiner” error while trimming nested clips.
➤ Bug Number: MCCET-4321. Checking out an ProRes 4444 with alpha from Interplay displayed as unsupported and would crash when you tried to play the clip.
➤ Bug Number: MCCET-4219. Timecode Burn-in did not display correctly if the macOS font was set to default.
➤ Bug Number: MCCET-4397. When performing an import, Matte Keys were offline if Dynamic Relink was enabled.
Fixed in Media Composer v2020.12.5 ➤ Bug Number: MCCET-4384. You might have received a “CORE_CONSISTENCY_CHECK_FAILURE” error when linking some Tiff images using the UME plug-in.
➤ Bug Number: MCCET-4369. Audio from imported camera masters went offline after being brought in from Interplay.
➤ Bug Number: MCCET-4002, MCCET-4408. With Dynamic Relink enabled, performing a batch import of .wav files (AAF from Prunus) did not import properly.
➤ Bug Number: MCCET-3500. In some instances, portions of imported TIFF files might not display properly.
➤ Bug Number: MCCET-4380. A sequence containing XDCAM HD 50 clips displayed yellow if Multirez was activated with Dynamic Relink Target setting set to XDCAM HD 50.
➤ Bug Number: MCCET-4404. In the Dynamic Relink Settings, switching the “If no match is found” option between “Use Highest Rez” and “'Offline” toggled the media offline and back to online.
➤ Bug Number: MCCET-4318. Subclips generated from ALE broke the masterclip metadata links if you type in the Comments column.
➤ Bug Number: MCCET-4193. Trimming subclips from MediaCentral | Cloud UX might have resulted in redraw issues in the Media Composer Timeline.
➤ Bug Number: MCCET-4362. A restored sequence might have displayed as offline in an Interplay environment.
➤ Bug Number: MCCET-4335. In some instances, you could not link P2 folders containing Prunus AAF.
➤ Bug Number: MCCET-4331. Media Composer crashed to a white screen if you enabled MultiRez with Dynamic Relink setting set to “Linked Media”.
➤ Bug Number: MCCET-3375. Transcoding linked 50fps h264 MOV clips to 50i might have resulted in the wrong Start Timecode.
➤ Bug Number: MCCET-4208. You might have received a “DISK_FILE_NOT_FOUND” error (not Media Offline) in Media Composer when media was deleted from Access.
➤ Bug Number: MCCET-4105. Bin tabs did not clearly show which bin was currently open.
Fixed in Media Composer v2020.12.5 ➤ Bug Number: MCCET-4329. In some instances, a caption file (.scc) had a different duration in HD vs UHD.
➤ Bug Number: MCCET-4275. Opening large sequences containing SubCap effects crashed Media Composer.
➤ Bug Number: MCCET-4169. You may not have received a warning message when exporting XDCAM HD 50 (RDD9) exceeding 8 audio tracks.
➤ Bug Number: MCCET-4011. You were unable to link to ProRes 422HQ QT movie with UME plug-in, but could link with QuickTime plug-in.
➤ Bug Number: MCCET-3861. You could not successfully link or import ProRes HQ files recorded with Odyssey™ by Convergent Design.
➤ Bug Number: MCCET-4203. Apple ProRes 422 clips with 16bit PCM audio could not be linked using the UME plug-in.
➤ Bug Number: MCCET-3997. Window position was not saved in Workspaces.
➤ Bug Number: MCCET-4138. Right-clicking on the Name column to sort alphabetically did not work on the first sort. You had to right-click twice.
➤ Bug Number: MCCET-4195. Capitalized names were sorted first regardless of alphabetical order in the Project window.
➤ Bug Number: MCCET-4240. In some instances, Telestream Live Capture was offline for V1, A1.
➤ Bug Number: MCCET-4224. In some instances, the Source Browser was not maximized enough to display the Link and Import buttons.
➤ Bug Number: MCCET-4005. If waveforms were enabled, six hour captures of “In progress” (EWC) clips were extremely slow.
➤ Bug Number: MCCET-4277. You might have seen a “bad public movie atom” error when trying to open an exported MOV or EDIUS file in QuickTime Player.
➤ Bug Number: MCCET-4218. In some instances, QuickTime with alpha MOV files appear offline after import.
➤ Bug Number: MCCET-4226. After performing a transcode and checkout, png files might have been offline.
Fixed in Media Composer v2020.12.5 ➤ Bug Number: MCCET-3119. Some Avid Titler+ font names may have displayed as “Invalidate label encoding” in the Effect Editor window.
➤ Bug Number: MCCET-4187. Segment buttons from (Command Palette - Edit) did not work the same as the Segment buttons from (Command Palette - Smart Tools).
➤ Bug Number: MCCET-4202. You may have received a “writing properties to asset manager” error when checking in a Matte key clip.
➤ Bug Number: MCCET-3948. You could not link QuickTime DNxHD 120.mov on macOS v10.15.x (Catalina) and v11.x (Big Sur).
➤ Bug Number: MCCET-4238. Media Composer crashed with an “Exception: Structured Exception” error when trying to transcode or consolidate certain clips.
➤ Bug Number: MCCET-4068. If the brightness in the Interface Settings was set to one of the two brighter settings, values in the Quick Transition window were cut off.
➤ Bug Number: MCCET-3993. Setting Dynamic Relink to “Show Mismatches” was not working with mixed proxy media.
➤ Bug Number: MCCET-4183. In some instances, the User Interface would appear to freeze or hang if you were working with a large project with many bins.
➤ Bug Number: MCCET-4145. After adjusting Color Correction and adding a Paint effect, Media Composer added multiple Color Correction effects in the Effects Editor.
➤ Bug Number: MCCET-4285. When a Delete Window was positioned over a bin, if you canceled a deletion, the spinning wait cursor did not stop spinning unless you moved the mouse to another position.
➤ Bug Number: MCCET-4177. In some instances, media was offline in the Timeline on some of the clips and adjusting Dynamic Relink would not bring it online.
➤ Bug Number: MCCET-4188. (Production Management) XDCAM HD media was offline after checkout and you could not get the media online.
➤ Bug Number: MCCET-3903. You might have received a “PMM_MISMATCH_UNKNOWN_ATTR” error when trying to capture from SD DV through 1394 (firewire).
➤ Bug Number: MCCET-4264. You might have seen a Waveform Engine crash when opening a bin, closing a bin, loading a sequence, or clearing a sequence.
Fixed in Media Composer v2020.12.5 ➤ Bug Number: MCCET-4305. Using Quick Find in the Timeline might have crashed Media Composer.
➤ Bug Number: MCCET-4225. If Dynamic Relink was enabled, imported .wav files were offline.
➤ Bug Number: MCCET-4182. In some instances, 3D CLF LUTs did not always get applied in Media Composer.
➤ Bug Number: MCCET-4152. Dragging multiple bins into a folder took longer then normal.
➤ Bug Number: MCCET-4292. You might have seen redraw issues in the Source monitor when viewing 4 and 9 way MultiCam with NDI enabled.
➤ Bug Number: MCCET-3972. Performing a Long-GOP Send to Playback to FastServe failed if a local Transfer Engine was running.
➤ Bug Number: MCCET-4266. In some instances, after performing a Send To Playback, the Data track was stripped from the .transfer sequence.
➤ Bug Number: MCCET-4314. You might have seen video glitches if “prefer largest raster, then prefer highest bandwidth” was enabled in Dynamic Relink.
➤ Bug Number: MCCET-4164. (macOS) Avid Titler+ English alphabet characters were left behind once you selected Chinese Pinyin characters.
➤ Bug Number: MCCET-4228. When changing Dynamic Relink settings, a portion of the original master clip might be offline in the area of consolidated media.
➤ Bug Number: MCCET-4231. In some instances, XDCAM media that includes an alpha channel appeared as Media Offline.
➤ Bug Number: MCCET-4154. The Digital Cut Tool size expanded after switching between workspaces multiple times.
➤ Bug Number: MCCET-4290. Bin thumbnails do not always reflect the monitored track in a sequence.
➤ Bug Number: MCCET-4269. Some effects would not render if a clip with “Adaptive Deinterlace Source” enabled had been applied.
➤ Bug Number: MCCET-3876. MOV media with lossless audio (ALAC) did not link with the UME plug-in.
Fixed in Media Composer v2020.12.5 ➤ Bug Number: MCCET-3838. You could not save AudioSuite and Track Effects Plug-in Settings in macOS Catalina (v10.15.x) and Big Sur (v11.x).
➤ Bug Number: MCCET-4234. If Dynamic Relink was set to Highest Quality or Minimal Bandwidth, you could not always successfully switch between AVC-Intra 100 and Proxy media.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software.
The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement.
It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid and the Avid logo are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or other countries.
See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer ReadMe (cid:129) Created 3/16/22