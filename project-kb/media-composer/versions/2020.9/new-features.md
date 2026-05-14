---
product: media-composer
product-area: editing
version: "2020.9"
release-date: 01/09/2020
doc-type: new-features
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

New in Media Composer v2020.9 What’s New for Avid® Media Composer® v2020.9 New in Media Composer v2020.9 The following are new for Media Composer v2020.9 • Bin Find and Replace (cid:129) Bulk Edit Profile Support (cid:129) Changing the Font in the Source Browser Window (cid:129) New Interface Setting (cid:129) Quality Settings for Mixdown Bin Find and Replace You can find and replace text in the bin.
To search and replace text in a bin:
1. Open the bin.
2. Right click in the bin and select Find and Replace.
New in Media Composer v2020.9 The Find and Replace options appear at the top of the bin window.
3. In the Find text box, enter the text you are searching for in the bin.
The first instance of the found text is highlighted in orange. Subsequence instances are highlighted in yellow.
4. Enter the text you want to replace the selected text in the Replace text field.
5. Select one of the following:
- Replace to replace the first found instance of the text.
- Replace and Find Next to replace the first instance and then highlight the next found
instance.
- Replace All to replace all instances of the text.
The default for searching the bins is to search All Bin Content. You can highlight items in the bin and choose to search within just the selected items by choosing Selection in the pulldown menu.
When in Find and Replace mode, you are allowed to restrict your Find results to be only within the selection. To make this work seamlessly, you are not allowed to change row or column selection while in the Find and Replace mode. Normally the bin selection changes whenever you move to a field and it enters Edit mode. Since this will happen all the time when moving through the Find results, normal bin selection behaviors are prevented. If you wish to change bin selection while in Find and Replace mode, simply clear the Find field and change your selection.
New in Media Composer v2020.9
> **Note:** Find and Replace is a mode. You are in this mode if there is text in the Find field and the Find and
Replace user interface is visible. In this mode, some bin operations are no longer available such as changing row or column selection, and some menu commands. Once you are finished searching and replacing, exit the mode by either removing the text in the Find field, or by clicking on the 'x' button to close the Find and Replace User Interface.
Bulk Edit Profile Support Bulk Edit allows you to replace the data in a particular column for multiple bin items according to a format that can be customized. With this release, you can now save a profile of the Bulk Edit window.
To save the options in the Bulk Edit window:
1. In the Bulk Edit window, select the items you want to modify.
2. Click the Profile pulldown menu and select Save As.
3. Name the setting.
4. Click Save.
When you want to use this layout for future use, simply select it from the Profile pulldown menu.
Profiles are stored in the Bin User Setting.
Changing the Font in the Source Browser Window You can change the font and font size in the Source Browser window. With the Source Browser active, select Set Font from the Windows menu. Set the desired font and font size and click OK.
New in Media Composer v2020.9 New Interface Setting An additional brightness option has been added to the Interface Settings. Click the General tab of the Interface Settings. An additional dark setting is available.
MP4 Export Use the following procedure to export as an MP4.
To export a sequence or master clip as MP4:
1. Select the sequence or master clip you want to export.
2. Click File > Output > Export to File or right click the sequence and select Output > Export to
File.
3. Name the file.
4. Set the path where you want the file saved.
5. Click the Options button.
The Export AS dialog opens.
New in Media Composer v2020.9
6. Select Export As MP4.
7. (Option) Select the Use Marks, Use Selected Tracks, Include Inactive Tracks.
8. (Option) You can choose to select from the following.
Choice Description Source Raster You can choose your source raster to do one of the following:
(cid:129) Use the project's framing - You will see the project raster displayed next to this option. You can also choose to activate old style “Enable mask margins'” (cid:129) Mask Margins active area - this option will provide you the area of mask margin raster for export. Example - if you are in 1920x1080 project, with mask margins set to 1:1, 1000x1000 will be your output image.
You will see the mask margins active area raster displayed next to this option Preset Set of preset values for raster, aspect ratio and pixel aspect ratio Frame Rate Defines the output frame rate of the export.
Image Size Output image size - physical dimensions of output file Aspect Ratio/Pixel Aspect Ratio These options define display parameters of output media Display Raster Displays the intended display raster New in Media Composer v2020.9 Choice Description Source Scaling Stretch - source gets stretched to output geometry Pillarbox/letterbox - source is scaled uniformly to match either the width or the height - rest of the image is filled black Center crop - source is scaled uniformly to match the width of the output raster
9. Select the Codec Family, Compression, and Color Depth. Select the Audio Sample Rate, Bit
Depth and Audio format.
The Compression and Color Depth filters depend on the selected Codec Family filter.
10. Click Save.
The MP4 file is exported to the selected directory.
Quality Settings for Mixdown Media Composer now includes effects processing and quality settings for Mixdown.
Media Creation Settings: Additional Options for Mixdown Tab Option Description Effects Processing Controls the resolution (bit depth) used for effects processing. The following options are available:
(cid:129) 8-bit: Select this option when rendering time is more important than image quality.
(cid:129) 16-bit: Select this option for the best overall image quality. Use this option if you use 10-bit resolutions, use many levels of nested effects, or want the best color fidelity for rendered effects.
(cid:129) Automatic: Select this option if you want the media source to determine the effects resolution. This is the default.
Linked Source Sets the playback quality for plug-ins that support adjustable playback quality (e.g.
Scaling/Quality RED, Sony HDCAM-SR, Sony RAW, AVCHD, and ARRI RAW). You can choose Full, Half (Better Quality), Half (Good Quality), Quarter, Eighth, Sixteenth. The default setting is Full.
New in Media Composer v2020.9 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
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