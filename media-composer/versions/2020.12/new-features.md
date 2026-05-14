---
product: media-composer
product-area: editing
version: "2020.12"
release-date: 01/12/2020
doc-type: new-features
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

New in Media Composer v2020.12 What’s New for Avid® Media Composer® v2020.12 New in Media Composer v2020.12 The following are new for Media Composer v2020.12 • Transcode of Alpha Mattes (cid:129) H.265 Support (cid:129) Export Media Difference Between Sequences (cid:129) Avid Titler+ Updates (cid:129) Dragging Bin Content to an Open Bin in Bin Container Sidebar (cid:129) Mapping Bin Fast Menu Commands to Buttons (cid:129) Floating Panel Windows (cid:129) Updated Interface Settings (cid:129) Bin Brightness Updates (cid:129) Finding a User Profile (cid:129) Additional Languages for PhraseFind and ScriptSync (cid:129) Custom Color Space for Exported MOV, MP4, and OpenEXR (cid:129) AAC Audio Format for Exported MOV and MP4 (cid:129) Audio Mixer Update (cid:129) Additional ACES Support Transcode of Alpha Mattes In previous releases, consolidating/transcoding alpha matte linked clips was not supported. Media Composer v2020.12 supports consolidate/transcode of alpha matte linked clips as well as managed alpha matte media and static legacy titles.
> **Note:** Crawling and Rolling legacy titles are not supported for consolidate/transcode.
H.265 Support With this release you can link, playback and export H.265 media.
To link to H.265 media:
1. Select File > Input > Source Browser.
The Source Browser window opens.
2. Click Link at the bottom left of the Source Browser window.
3. Navigate to the H.265 files to which you want to link. Ctrl+click or Shift+click to select multiple
files.
New in Media Composer v2020.12
4. Either drag and drop the clip(s) to the bin or select the Target Bin at the bottom right of the
Source Browser and click Link.
The linked clip(s) appear in the bin.
> **Note:** You can also link clips by selecting the clips in the Source Browser window, right clicking and
selecting Add to Bin.
5. Use the linked clips to edit your sequence.
To export a sequence or master clip as H.265:
1. Select the sequence or master clip you want to export.
2. Click File > Output > Export to File or right click the sequence and select Output > Export to
File.
3. Name the file.
4. Set the path where you want the file saved.
5. Click the Options button.
The Export AS dialog opens.
New in Media Composer v2020.12
6. Select Export As MP4 or MOV.
7. Make sure Codec Family is set to HEVC (High Efficiency Video Coding) also known as H.265.
8. You can choose to select from the following.
Choice Description Codec Family To export as H.265, select HEVC.
Compression Choose from two available HEVC encoding profiles H.265/HEVC Main Profile or H.265/HEVC Main 10 Profile. Main supports 8 bit color depth and Rec.709 color space. Main 10 supports additional color spaces (Rec.2020) and color bit depth is 10 bit only New in Media Composer v2020.12 Choice Description Color Depth 10 bit or 8 bit depending upon selected Compression.
Tier Tier is related to maximum supported bit-rate. This setting opens up more bit rate range to choose from - affecting the bit rate sliders - target and maximum. Choose between Main and High.
Quantization Quality Select one of the following: Fastest, Fast, Balanced, Better, Best Quantization quality sets the output quality and drives the balance of faster and lower quality output to slower and higher quality output.
'Balanced setting is recommended. Better and Best options are more computing intensive.
Encode Mode Select Constant Bit Rate or Variable Bit Rate Single Pass: Normally, use Constant Bit Rate if you plan to stream the content. Use Variable Bit Rate when you plan to distribute the content for downloading and playing either locally or on a device that has a constrained reading speed.
Target Bit Rate Use the slider to adjust the target bit rate.
Video Levels Choose to Keep as Legal Range or Scale from Legal to Full Range.
9. Continue selecting the desired Image, Frame Rate, Color Space and Audio settings.
10. Click Save.
The file is exported to the selected directory.
Export Media Difference Between Sequences A new option allows you to compare two sequences and export only the media differences between the two. This option is available if you have chosen Copy All Media as your Export Method for AAF exports.
New in Media Composer v2020.12 To export only the differences of a sequence:
1. Right-click the sequence you want to export.
2. Select Output > Export to File.
3. In the Export As dialog, click Options.
4. In the Export Settings dialog, export as AAF and make sure the Export Method is set to Copy All
Media. (For setting any other options in the dialog, see “Export Settings: AAF” in the Help.)
5. Enable the “Ask to Exclude Media from a Previous Sequence” option in either, or both of, the
Audio Details tab, and the Video / Data Details tab.
6. Click Save.
7. Select the folder location where you want to save the exported file.
8. Click Save.
9. In the Exclude Media Referenced from Sequence pulldown, select the sequence you want to
compare with the one you are exporting.
10. Click OK.
Media Composer will export any clips that reference assets not included in the previous sequence.
Avid Titler+ Updates A number of Avid Titler+ updates are included with this release. Additional Avid Titler+ shortcuts have been added. Text Mode and Move Mode have been added to make editing text and moving text and objects easier. And vertical text justification buttons have been added to the Titler toolbar.
Additional Avid Titler+ Shortcuts The following shortcuts have been added:
(cid:129) Ctrl+B, Ctrl+U, Ctrl+I- select to Bold, Underline, or Italicize text (if font permits) When layers are selected:
(cid:129) Ctrl+G, Ctrl+U: Select to Group/Ungroup (cid:129) Ctrl+Shift+L, Ctrl+Shift+E, Ctrl+Shift+R: Select to justify left, center, right (cid:129) Ctrl + Shift+ C: Select to set to center of screen (X and Y) New in Media Composer v2020.12 Text Mode When in Text mode, you can type anywhere and create a text layer at that location. You can also return to an existing text layer to directly edit the text. Enter text mode by simply double-clicking in an empty area or by pressing T.
You can exit Text mode by simply:
(cid:129) Pressing ESC key (cid:129) Clicking in an empty area (cid:129) Turning off text (cid:129) Selecting another mode If you click in an empty area but you do not type anything, that empty layer gets deleted once exit text mode.
Move Mode Move Mode allows you to change the position and attributes of your text without changing the text itself. Enter Move Mode by simply clicking anywhere on the title text. The bounding box appears around the text. Changing the properties (text color, shadow, etc.) when the bounding box is selected affects the entire text in the box.
> **Note:** Double-clicking the title text allows you to enter Text Mode for quick text editing,
Writing Text Vertically Avid Titler+ now adds the ability to write text vertically.
Avid Titler+ Vertical Justification The Avid Titler+ toolbar now includes vertical justification buttons.
New in Media Composer v2020.12 To vertically justify the text:
(cid:129) Click the top button to justify the text vertically to the top.
(cid:129) Click the center button to center the text between the top and bottom.
(cid:129) Click the bottom button to justify the text vertically to the bottom.
Avid Titler+ Scroll Bar for Rolls and Crawls A new scroll bar for Rolls and Crawls allows for easier editing, viewing and manipulation of the title when in edit mode for Rolls and Crawls.
Once the title effect is selected choose either Roll or Crawl in the drop down menu. Then select Edit Mode. Then you will see a scroll bar in the viewer (seen as an overlay). The scroll bar will be vertical or to the right of the viewer for Rolls. The scroll bar will be at the top of the viewer for the various crawls. This makes it much easier to edit rolling and crawling title effects.
New in Media Composer v2020.12 Dragging Bin Content to an Open Bin in Bin Container Sidebar You can now drag contents from a bin to an open bin in the Bin Container Sidebar.
To drag content from a bin to an open bin in the Bin Container Sidebar
1. Select the items you want to move from one bin to another.
2. Drag the items to an open bin in the Bin Container Sidebar. You will notice that a number
appears as you are dragging to indicate the number of items you have selected to move.
Once you drop the items, they appear in the open bin in the Bin Container Sidebar.
Mapping Bin Fast Menu Commands to Buttons With this release, the Bin Fast Menu can be mapped to keys. For details on mapping menu commands to buttons, see “Mapping Bin Fast Menu Commands” in the Help.
> **Note:** Bin menu commands are intended to be mapped to keys so that you can use them with the Bin in
focus. Do not map Bin Fast menu commands to tool palettes.
Floating Panel Windows You can now panel windows within any floating window.
> **Note:** Some tools have a minimum size. So if the panel is too small, it will need to be enlarged.
New in Media Composer v2020.12 Updated Interface Settings The following updates have been made to the Interface Settings. These updates allow for additional customization of the User Interface:
(cid:129) Bin Brightness Updates (cid:129) New Interface Brightness (cid:129) Source and Record Monitor Background Color (cid:129) Use Blending Based on Skin Bin Brightness Updates Two new brightness sliders have been added to the Interface Settings Bin tab. Use one slider to increase or decrease the bin icons and text brightness. Use the other slider to increase or decrease the highlight in all bin windows.
New Interface Brightness An additional interface brightness has been added to the Interface Settings. The darkest brightness is the newest option. To access the Interface Brightness options, select File > Settings > Interface and click the General tab.
New in Media Composer v2020.12 Source and Record Monitor Background Color An additional interface option allows you to set the background color for the Source and Record monitors.
To change the background of the Source/Record Monitors:
1. Select File > Settings.
2. Double-click Interface,
3. Click the Timeline & Viewers tab.
4. Enable Use custom viewer background. Click the color palette button to open the color picker
window. Select the desired color and click OK. Click Apply.
The background of the Source and Record Monitors is set to the selected color.
New in Media Composer v2020.12 Use Blending Based on Skin An additional option in the Interface Settings Timeline & Viewers tab allows you to choose to blend the custom Timeline background color.
New in Media Composer v2020.12 (cid:129) When selected, the Timeline background color will be blended with the current skin’s background gray for a softer look.
(cid:129) When deselected, the custom Timeline background color will not be blended. This is useful if you want a true solid Timeline background color.
Bin Container Sidebar Changes The following updates have been made to the Bin Container Sidebar.
(cid:129) Bin Color Column - The sidebar now includes a bin color column. It displays bin background colors. You must have opened the bin on your system at least once in order for the color of the bin to show in the Sidebar.
(cid:129) Sorting Bin Container Sidebar Columns - You can now sort the Bin Container Sidebar columns New in Media Composer v2020.12 Finding a User Profile The Reveal User Profile command lets you find a user profile in Windows Explorer or in the macOS folder.
To find a User Profile:
1. Do one of the following:
- Select File > Settings and click the User tab. Select the User Profile pulldown menu and
Select Reveal User Profile.
- In the Select Project window, select the User Profile pulldown menu and select Reveal User
Profile.
The system searches all available drives, opens Windows Explorer or the folder (Macintosh), and highlights the user profile.
New in Media Composer v2020.12 Additional Languages for PhraseFind and ScriptSync The following languages are available for PhraseFind and ScriptSync.
(cid:129) Danish (cid:129) Indonesian (cid:129) Swedish (cid:129) Tagalog Media Composer installs the English language for PhraseFind and ScriptSync automatically. To install support for additional languages, download the Language Pack installer from your Avid Master Account.
Custom Color Space for Exported MOV, MP4, and OpenEXR With this release, you can choose a custom Color Space when exporting as MOV, MP4 or OpenEXR.
You can also set Color Scaling to Legal or Full Range when exporting as MOV or MP4.
New in Media Composer v2020.12 AAC Audio Format for Exported MOV and MP4 With this release, you can choose AAC (Advanced Audio Coding) audio format when exporting as MOV and MP4.
Audio Mixer Update The components in the Audio Mixer will responsively adjust vertically and horizontally as the window is resized.
You can customize the items that appear in the Audio Mixer window by selecting the Audio Mixer Fast menu and selecting or deselecting the Audio Mixer window options. For example, if you deselect Solo/Mute, the solo and mute buttons do not appear in the window.
New in Media Composer v2020.12 You can decide the priority of which tools are displayed by selecting the Display Visibility Priority menu pick from the Audio Mixer Fast Menu. Audio Mixer expands and contracts controls based on your preferences upon resizing.
New in Media Composer v2020.12 You can also map items from the Fast Menu to your keyboard and copy/paste//move track effects across slots. The Master fader is pinned on the right. If you resize the Mixer to a smaller size, the Master Fader is pinned to the right and a scroll bar appears below the tracks to the left to allow you to scroll the available tracks.
New in Media Composer v2020.12 Scroll bar appears when resizing Audio Mixer Tool Also note that the Sequence mix format pulldown menu appears at the top of the Master channel.
Additional ACES Support This release provides support for importing CLF (Common LUT Format) files. CLF files produce the appropriate Color Transformations and can be imported in a similar fashion as .cube files.
To import a CLF file:
1. Access Color Management Settings by doing one of the following:
- Select File > Settings. Select the User tab and double-click Color Management.
- Right-click your clip, select Source Settings, click the Color Encoding tab and click Color
Management Settings.
New in Media Composer v2020.12
2. Click Select LUT file.
3. Navigate to the location of the .clf file.
4. Click Open to import the .clf file. You can then use the clf file to apply color transformations to
your clip.
New in Media Composer v2020.12 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This document is protected under copyright law. An authorized licensee of Avid Media Composer may reproduce this publication for the licensee’s own use in learning how to use the software. This document may not be reproduced or distributed, in whole or in part, for commercial purposes, such as selling copies of this document or providing support or educational services to others. This document is supplied as a guide for Avid Media Composer. Reasonable care has been taken in preparing the information it contains. However, this document may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc. does not accept responsibility of any kind for customers’ losses due to the use of this document. Product specifications are subject to change without notice.
The following disclaimer is required by Apple Computer, Inc.:
APPLE COMPUTER, INC. MAKES NO WARRANTIES WHATSOEVER, EITHER EXPRESS OR IMPLIED, REGARDING THIS PRODUCT, INCLUDING WARRANTIES WITH RESPECT TO ITS MERCHANTABILITY OR ITS FITNESS FOR ANY PARTICULAR PURPOSE. THE EXCLUSION OF IMPLIED WARRANTIES IS NOT PERMITTED BY SOME STATES. THE ABOVE EXCLUSION MAY NOT APPLY TO YOU. THIS WARRANTY PROVIDES YOU WITH SPECIFIC LEGAL RIGHTS. THERE MAY BE OTHER RIGHTS THAT YOU MAY HAVE WHICH VARY FROM STATE TO STATE.
The following disclaimer is required by Sam Leffler and Silicon Graphics, Inc. for the use of their TIFF library:
Permission to use, copy, modify, distribute, and sell this software [i.e., the TIFF library] and its documentation for any purpose is hereby granted without fee, provided that (i) the above copyright notices and this permission notice appear in all copies of the software and related documentation, and (ii) the names of Sam Leffler and Silicon Graphics may not be used in any advertising or publicity relating to the software without the specific, prior written permission of Sam Leffler and Silicon Graphics.
THE SOFTWARE IS PROVIDED “AS-IS” AND WITHOUT WARRANTY OF ANY KIND, EXPRESS, IMPLIED OR OTHERWISE, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL SAM LEFFLER OR SILICON GRAPHICS BE LIABLE FOR ANY SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY KIND, OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER OR NOT ADVISED OF THE POSSIBILITY OF DAMAGE, AND ON ANY THEORY OF LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
The following disclaimer is required by the Independent JPEG Group:
This software is based in part on the work of the Independent JPEG Group.
This Software may contain components licensed under the following conditions:
Copyright (c) 1989 The Regents of the University of California. All rights reserved.
Redistribution and use in source and binary forms are permitted provided that the above copyright notice and this paragraph are duplicated in all such forms and that any documentation, advertising materials, and other materials related to such distribution and use acknowledge that the software was developed by the University of California, Berkeley. The name of the University may not be used to endorse or promote products derived from this software without specific prior written permission. THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
Copyright (C) 1989, 1991 by Jef Poskanzer.
Permission to use, copy, modify, and distribute this software and its documentation for any purpose and without fee is hereby granted, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation. This software is provided "as is" without express or implied warranty.
Copyright 1995, Trinity College Computing Center. Written by David Chappell.
Permission to use, copy, modify, and distribute this software and its documentation for any purpose and without fee is hereby granted, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation. This software is provided "as is" without express or implied warranty.
Copyright 1996 Daniel Dardailler.
Permission to use, copy, modify, distribute, and sell this software for any purpose is hereby granted without fee, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation, and that the name of Daniel Dardailler not be used in advertising or publicity pertaining to distribution of the software without specific, written prior permission. Daniel Dardailler makes no representations about the suitability of this software for any purpose. It is provided "as is" without express or implied warranty.
Modifications Copyright 1999 Matt Koss, under the same license as above.
Copyright (c) 1991 by AT&T.