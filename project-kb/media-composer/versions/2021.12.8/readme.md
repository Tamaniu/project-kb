---
product: media-composer
product-area: editing
version: "2021.12.8"
release-date: 01/12/2021
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application Composer® ReadMe for Media v2021.12.8 IMPORTANT (Windows 11) When attempting to remove the patch for Media Composer v2021.12.8 , Windows 11 proceeds without a progress bar or any other indication that the uninstall process is occurring, and will eventually cause the computer to reboot without warning. After rebooting and logging back in, the uninstall process will continue as normal.
Fixed in Media Composer v2021.12.8 The following have been fixed:
➤ Bug Number: MCCET-4873. Source and Record monitors did not update properly while trimming if clips or tracks were muted.
➤ Bug Number: MCCET-4587. (MediaCentral | Cloud UX) In some instances, the MediaCentral | Cloud UX panel would not load after logging out and logging back in with a different user.
➤ Bug Number: MCCET-4895. (MediaCentral | Cloud UX) In some instances, the MediaCentral | Cloud UX panel would not load after logging out and logging back in with the same user and a different project.
➤ Bug Number: MCCET-4503. Audio clip gain values were lost and returned to unity gain if the clip was re-rendered, after making an adjustment to any plug-ins that were already applied and rendered.
➤ Bug Number: MCCET-4970. (MediaCentral | Production Management) Ingesting P2 files and creating sequences of clips using third-party MintUpload software caused an "Assertion failed:
*expectedBytesRead" error.
➤ Bug Number: MCCET-4987. In some instances, audio tracks became offline if Dynamic Relink was enabled and set to Highest Quality.
Fixed in Media Composer v2021.12.8 ➤ Bug Number: MCCET-4706. Enabling Dynamic Relink caused linked .mov QuickTime files with a Matte Key (DNxHD with alpha) to go offline.
➤ Bug Number: MCCET-4602. Master Caption List was out of order when the SubCap effect was placed on two tracks and some captions were muted.
➤ Bug Number: MCCET-4963. (MediaCentral | Production Management) Importing media into a workspace with several MXF media folders caused the application to slowdown and enter a "Not Responding" state.
➤ Bug Number: MCCET-4407. Selecting multiple lines of dialog in the Script window and pressing the spacebar (or right-clicking and selecting "play" from the context menu) caused the incorrect line of dialog to play back.
➤ Bug Number: MCCET-4814. (macOS) When loading a subclip in the Script window, an in point was automatically marked at the end of the clip.
➤ Bug Number: MCCET-5029. When using “Transcode on Send to Playback" with a sequence that has Group clips, the Send to Playback would fail.
➤ Bug Number: MCCET-4953. (MediaCentral | Production Management) Audio waveforms for linked clips were very slow to draw, which significantly impacted performance and the ability to work within the interface.
➤ Bug Number: MCCET-4573. Media Composer was slow to launch when using the Floating License backup server.
➤ Bug Number: MCCET-3909. Media Composer appeared to hang on launch when using a checked-out license with no VPN connection to the license server.
➤ Bug Number: MCCET-5027. The Timecode Window, accessed via the Tools menu, would not redraw properly after changing the size of its font, which affected the amount of black space in the window.
➤ Bug Number: MCCET-5022. Copying and pasting keyframes in the Effects editor did not work for all properties.
➤ Bug Number: MCCET-5038. (MediaCentral | Production Management) Master clips relinked to smaller, consolidated media files and not the full-length clips, which was exhibited by segmented master clips appearing on the Timeline (Source Mode).
Fixed in Media Composer v2021.12.8 ➤ Bug Number: MCCET-5050 and MCCET-4859. (MediaCentral | Production Management) Consolidated media files were showing up in multiple locations and linking to the original, non-consolidated media files for master clips and subclips.
➤ Bug Number: MCCET-4544. (MediaCentral | Production Management) In some instances, XDCAM clips that were imported and consolidated using Media Composer 2018.12.15 could not be played in more recent versions of Media Composer.
➤ Bug Number: MCCET-5011. (MediaCentral | Production Management) Files that triggered a "Fast Import" operation linked back to an AMA link of the original imported file when loaded for the first time.
➤ Bug Number: MCCET-4871. Arabic text did not display correctly in the Caption Text box for the SubCap effect.
➤ Bug Number: MCCET-4862. (macOS) In some instances, AAF files failed to import on M1 Macs.
➤ Bug Number: MCCET-4809. In some instances, audio for proxy media experienced playback errors, including distorted sound and playback that stopped unexpectedly.
➤ Bug Number: MCCET-5077. Exporting a sequence with H.264 proxy media as an MOV produced corrupted frames.
➤ Bug Number: MCCET-4603. (MediaCentral | Production Management) When using Dynamic Relink with media that had both PCM and MP2 audio, the Highest Quality option did not always link to the PCM audio.
➤ Bug Number: MCCET-4491. (MediaCentral | Production Management) Depending on check-in procedure, End Timecode information for clips created with an Edit While Capture (EWC) workflow could be lost without a warning message.
➤ Bug Number: MCCET-5032. ALE file import caused all bin column names that start with "Vendor" to display incorrectly.
➤ Bug Number: MCCET-5068. Transfer menu “Send To Playback” option was not available if the Timeline window was selected for users of Media Composer | Ultimate and Media Composer | Enterprise.
➤ Bug Number: MCCET-5075. Audio waveforms were very slow to draw and would take additional time to redraw if Zoom In or Zoom Out were used.
Fixed in Media Composer v2021.12.8 ➤ Bug Number: MCCET-5093. (MediaCentral | Production Management) In some instances, checking out and loading sequences caused Media Composer to crash if Dynamic Relink was enabled.
➤ Bug Number: MCCET-4593. (macOS) RS-422 deck control was lost for Avid Artist | DNxIO if BlackMagic Desktop Video 12.2 or newer was installed on the system.
➤ Bug Number: MCCET-4886. Audio was distorted while scrubbing through the Source/Record monitors and Timeline window on systems using the Teradici PCoIP protocol with Digital Audio Scrub and Fast Scrub enabled.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software.
The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement.
It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid and the Avid logo are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or other countries.
See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer ReadMe (cid:129) Created 5/5/23