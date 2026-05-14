---
product: media-composer
product-area: editing
version: "2022.12.3"
release-date: 01/12/2022
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application Composer® ReadMe for Media v2022.12.3 Changed in Media Composer v2022.12.3 The following have changed with Media Composer v2022.12.3:
Improvements to Pro Tools Session Export This release includes improvements to the Pro Tools Session export process. These changes include the ability to export differences by comparing the entire contents of a bin (not just media files in individual sequences) when the “Ask to Exclude Audio Media from a Previous Sequence” or “Ask to Exclude Video Media from a Previous Sequence” options are selected for the “Copy All Media” and “Consolidate Media” export methods. Once you click Save and choose a file location, the “Select Sequence” dialog box will appear, and you can select the entire contents of a bin (“All”) from the “Exclude Audio and Video Media Referenced from Sequence” dropdown menu. In addition, it is now possible to “Convert non WAV media to BWF”, which generates new media files and includes file conversions while copying differences during export.
Fixed in Media Composer v2022.12.3 The following have been fixed:
➤ Bug Number: MCCET-5012. Markers did not import correctly if using a text file (.txt) with marker names that consisted entirely of numbers or began with a number.
➤ Bug Number: MCCET-3909. Media Composer appeared to hang on launch when using a checked-out license with no VPN connection to the license server.
➤ Bug Number: MCCET-4573. (Windows) Media Composer was slow to launch when using the Floating License backup server.
Fixed in Media Composer v2022.12.3 ➤ Bug Number: MCCET-5027. The Timecode Window, accessed via the Tools menu, would not redraw properly after changing the size of its font, which affected the amount of black space in the window.
➤ Bug Number: MCCET-5022. Copying and pasting keyframes in the Effects editor did not work for all properties.
➤ Bug Number: MCCET-5038. (MediaCentral | Production Management) Master clips relinked to smaller, consolidated media files and not the full-length clips, which was exhibited by segmented master clips appearing on the Timeline (Source Mode).
➤ Bug Number: MCCET-5050 and MCCET-4859. (MediaCentral | Production Management) Consolidated media files were showing up in multiple locations and linking to the original, non-consolidated media files for master clips and subclips.
➤ Bug Number: MCCET-4544. (MediaCentral | Production Management) In some instances, XDCAM clips that were imported and consolidated using Media Composer 2018.12.15 could not be played in more recent versions of Media Composer.
➤ Bug Number: MCCET-5011. (MediaCentral | Production Management) Files that triggered a "Fast Import" operation linked back to an AMA link of the original imported file when loaded for the first time.
➤ Bug Number: MCCET-4984. Depending on the Interface brightness settings selected, Caption Text for the SubCap effect was not visible in the Effect Editor or the Edit Master Caption List dialog box.
➤ Bug Number: MCCET-4871. Arabic text did not display correctly in the Caption Text box for the SubCap effect.
➤ Bug Number: MCCET-4862. (macOS) In some instances, AAF files failed to import on M1 Macs ➤ Bug Number: MCCET-4809. In some instances, audio for proxy media experienced playback errors, including distorted sound and playback that stopped unexpectedly.
➤ Bug Number: MCCET-4603. (MediaCentral | Production Management) When using Dynamic Relink with media that had both PCM and MP2 audio, the Highest Quality option did not always link to the PCM audio.
➤ Bug Number: MCCET-5053. (Windows) Some system fonts were missing from the list of available fonts in the SubCap effect.
Fixed in Media Composer v2022.12.3 ➤ Bug Number: MCCET-4491. (MediaCentral | Production Management) Depending on check-in procedure, End Timecode information for clips created with an Edit While Capture (EWC) workflow could be lost without a warning message.
➤ Bug Number: MCCET-5032. ALE file import caused all bin column names that start with "Vendor" to display incorrectly.
➤ Bug Number: MCCET-5051. Bin saves failed and triggered an error message if the bin being saved was located on a read-only NEXIS workspace.
➤ Bug Number: MCCET-5068. Transfer menu “Send To Playback” option was not available if the Timeline window was selected for users of Media Composer | Ultimate and Media Composer | Enterprise.
➤ Bug Number: MCCET-5075. Audio waveforms were very slow to draw and would take additional time to redraw if Zoom In or Zoom Out were used.
➤ Bug Number: MCCET-5093. (MediaCentral | Production Management) In some instances, checking out and loading sequences caused Media Composer to crash if Dynamic Relink was enabled.
➤ Bug Number: MCCET-4593. (macOS) RS-422 deck control was lost for Avid Artist | DNxIO if BlackMagic Desktop Video 12.2 or newer was installed on the system.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software.
The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement.
It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid and the Avid logo are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or other countries.
See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer ReadMe (cid:129) Created 5/2/23