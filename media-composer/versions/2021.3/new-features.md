---
product: media-composer
product-area: editing
version: "2021.3"
release-date: 01/03/2021
doc-type: new-features
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

New in Media Composer v2021.3 What’s New for Avid® Media Composer® v2021.3 New in Media Composer v2021.3 The following are new for Media Composer v2021.1 • Support for macOS (cid:129) Interface Brightness Setting Update (cid:129) Bin Status Bar (cid:129) New Highlight Colors (cid:129) Vertical Title Bar Improvements (cid:129) Mappable Sync Lock All Button (cid:129) Moving Segments in the Timeline (cid:129) Group Clip Name in Timeline Clip Text (cid:129) Find Bin (cid:129) PhraseFind and ScriptSync Farsi Support (cid:129) IMF Original and Supplemental Support (cid:129) Avid Titler+ Updates Support for macOS This release adds support for macOS v11.2.3.
Interface Brightness Setting Update A new mid-gray brightness selection has been added to the Interface brightness options. See File > Settings > Interface. Click the General tab.
New in Media Composer v2021.3 New Highlight Colors Gold and blue have been added to highlight colors. See File > Settings > Interface. Click the General tab to see the new options.
Bin Status Bar Display the Bin Status Bar to show how many items are seen and selected in a bin. To enable the Bin Status Bar, go to the Bin fast menu or select File > Bin and select Show Status Bar.
The number of items in the bin will appear at the bottom right of the bin.
New in Media Composer v2021.3 When you select items in the bin, the number selected will also appear in the status bar.
New in Media Composer v2021.3 You can hover over Viewing or Selected to see tooltip info on the items in the bin.
The information in the status bar changes if you enter text in the Quick Find field or if you perform a Sift on the bin contents.
You can choose to override displaying the Bin Status bar. See the Bins tab in the Interface Settings.
New in Media Composer v2021.3 Vertical Title Bar Improvements To improve readability, the font in the Vertical Title Bar is now white no matter which Interface brightness is selected. The kerning of the text on the Vertical Title Bar has been improved for readability also.
New in Media Composer v2021.3 Mappable Sync Lock All Button The Sync Lock All Tracks button has been added to the Edit tab of the Command Palette. You can map this button to the keyboard to easily enable and disable all Sync Locks in the Timeline when the Timeline window is active.
Moving Segments in the Timeline With this release, you can move segments in the Timeline up and down without leaving filler each time the segment is moved consecutively. This also applies to moving segments horizontally using the Trim left and Trim right keys.
IMPORTANT: This only applies with repeated up/down and left/right movement. If there is a change to the segment selection or more than 5 seconds have passed after the last move, moving segments will leave filler behind.
> **Note:** After dragging segments up or down, the segments remain selected. After performing an Undo segment selection is restored.
New in Media Composer v2021.3 Group Clip Name in Timeline Clip Text An additional Clip Text option has been added to the Timeline Fast Menu. You can choose to display the Group Clip name in the Timeline clip text.
Find Bin You can easily access the Find Bin command directly in the Timeline when pointing over a segment.
Simply right-click over the desired segment and select Find Bin to highlight the clip in the Bin. If the clip is in a closed bin, the bin opens and the clip is highlighted.
New in Media Composer v2021.3 PhraseFind and ScriptSync Farsi Support The Farsi language is supported with PhraseFind and ScriptSync.
Media Composer installs the English language for PhraseFind and ScriptSync automatically. To install support for additional languages, download the Language Pack installer from your Avid Master Account.
For additional information, search the Help for “Farsi Information.” IMF Original and Supplemental Support The Interoperable Master Format (IMF) is an international standard for the file-based interchange of multi-version, finished audio-visual works.You can link to and create IMF originals or supplementals using the IMF Window.
IMF Window Overview The IMF window initially displays as empty and provides two panes that include a sidebar on the left and a related right pane which populates based on the selection in the sidebar. The right pane can also be collapsed.
When the IMF window is populated it consists of the following:
IMF Window Sidebar (left panel), Metadata and parameters (right panel) Area Item Description Sidebar (left panel) Explore button Allows you to navigate the file system to link to an existing IMF package by selecting the root folder in the navigation window. Once selected, the package and related contents will populate the sidebar.
New IMF button Allows you to create a new IMF Original or Supplemental.
Once picked, a root folder and IMP will appear in the sidebar. Note that neither of these exist on disk yet New in Media Composer v2021.3 Area Item Description IMF contents structure The sidebar also populates with IMF Originals and Supplementals and provides a tree-like structure in the Name column to reveal the contents of the IMF packages.
The status column to the right of Name populates indicating the status of the IMF elements.
(cid:129) Green = has been exported and exists on disk, (cid:129) Yellow = all required metadata fields are populated and the directory is set. the package is ready to be writted to disk by clicking the Export button.
(cid:129) Red = required fields must be completed before the Export operation is available and package can be written to disk.
Sequences from bins can be dragged to packages and CPLs can be dragged to Bins to create Media Composer sequences. Making a selection in the sidebar populates the right-pane with the item's associated metadata.
Export button This button becomes active only when a selection is made and all required fields for the Original or Supplemental are satisfied (such as setting a target path). If the selection is read-only (green) or required fields still exist (red), the Export button is disabled Metadata and When selecting a package that exists on disk, or any IMP or Parameters (right CPL within it, the right pane populates with read-only pane) metadata and parameter values. For example:
(cid:129) Selecting the root folder will display the IMF name as it appears on disk and it's directory path, along with Issuer, Creator and Annotation metadata.
(cid:129) Selecting an IMP displays the IMPname, Issuer, Creator and Annotation. Note that the IMP name is read-only and for an un-committed IMP it will display as untitled.
Once committed, the untitled name will be replaced with the file name on disk as it is generated from Media Composer.
(cid:129) Selecting the CPL will display the Content Title and CPL file name on disk. Additional structural and descriptive metadata is displayed below that. Note that when a sequence is dragged into the package sidebar, Content Title is automatically populated with the sequence name. This can be changed unless the CPL has been committed.
New in Media Composer v2021.3 To link to the IMF original:
1. Select Tools > IMF Window.
2. Click the Explore button and navigate to an existing IMF original. Once selected, the package
will display in the IMF window sidebar.
Expanding the package folder reveals the package's IMP(s) and CPL(s). Selecting the folder, IMP or CPL will load the associated metadata in the right pane. NOTE: Because this package is read only, no metadata or parameters can be adjusted.
New in Media Composer v2021.3
3. Drag the CPL from the sidebar into a Bin to create a Media Composer sequence. You can modify
this sequence without affecting the original CPL.
To add to an existing package:
1. Once the sequence is edited, or a new sequence is edited with material from the originating
package, be sure all desired tracks are enabled, then drag the sequence to the root folder of the IMF window. Note that any tracks not enabled will be skipped.
When a sequence is dragged into the package, the sequence name is displayed with the prefix CPL_sequence name. The Content Title metadata field in the right pane is populated. If you change the Content Title field in the right pane, the name will update in the sidebar. NOTE: Once you commit the package, the file name on disk is generated from Media Composer and is displayed in the right pane under Content Title.
2. Select the CPL, modify the parameters in the right pane for the encoding profile and complete
required metadata field. Completing Issuer and Creator automatically populate the IMP and root folder required fields. You can change these independently if desired.
For example, a CPL can have unique Issuer and Creator metadata from the IMP and the root folder by changing the respective fields in the IMP and or root folder. If two or more CPLs exist, the IMP and root folder populate based on the first CPL Issuer and Creator fields being populated. Adding different metadata to two or more CPLs does not change the IMP or root folder metadata.
3. Select the root folder in the sidebar and establish the target directory and add Annotation and/or
change either the Issuer and/or Creator fields if desired.
4. Click on the Commit button. Once complete the status changes from yellow to green.
New in Media Composer v2021.3 To create a new Original or Supplemental Package:
1. Click the New IMF button at the top of the left pane sidebar and select IMF Original or IMF
Supplemental. Or drag a sequence to the sidebar.
A new untitled folder appears in the sidebar (though it is not yet written to disk).
2. Rename the folder and set the Directory path.
3. Drag one or more sequences from a Bin into the folder. If you expand the folder, you will see a
new untitled IMP and a CPL(s) with the name of the sequence. Both have a status of red.
4. Select the CPL and define parameters and metadata. Once the required fields are completed, the
status changes to yellow.
5. Set the directory path, select the root folder and click the Export button. Once complete, the
status changes from yellow to green for the IMP and sequence(s).
Note that if you add additional sequences after the first drag and drop into the folder, a new IMP is created.
New in Media Composer v2021.3
> **Note:** Committed and uncommitted packages can be removed from the sidebar by selecting the root folder
and deleting. Note that it is only removed from the UI and nothing is removed from disk.
MultiChannel Audio Mapping The Audio Mapping section allows you to map sequence tracks to IMF output tracks.
The left-hand menu defaults to All Active Tracks, but selecting the menu will show all the tracks in the sequence as well as their format:
In addition, clicking on the Audio Tracks Grouping button will open a window that allows you to group together contiguous or non-contagious tracks into a single group that can be applied to the output. Note that these settings do not persist beyond the selected sequence. Also note that the group can include or exclude the Master Fader.
New in Media Composer v2021.3 Once saved, the group will appear in the tracks list at the bottom:
Once the sequence tracks have been defined, the IMF track format can be selected in the right-hand menu:
New in Media Composer v2021.3 To add another IMF audio track, click on the plus button. Doing so will add another row for definition. To remove a row, click on the Minus button:
MultiChannel Descriptive MetaData You can add Content Kind, Spoken Language and Region metadata to individual output tracks. To enter this metadata, click on the edit button to the right of the IMF track format menu and the left of the + button.
Clicking on the button opens the Multi-Channel Audio Metadata window.
Selecting an MCA Language will also populate the respective regions if available. In addition, you can select an MCA Content Kind value as well:
Note that hovering the mouse over the button reveals a tool tip that shows the current metadata values for that output track.
New in Media Composer v2021.3 IMF Supported Formats The following formats are supported when working with IMF.
Project Format Raster Dimenstion Frame Rate HD 1920 x 1080p YCbCr Color Space: RGB Color Space:
23.976p 23.976p 24p 24p 25p 25p 29.97p 29.97p 30p 30p 50P 50P 59.94p 59.94p 60p 60p 2K 2048 x 1080p YCbCr Color Space: RGB Color Space:
23.976p 23.976p 24p 24p 25p 25p 29.97p 29.97p 30p 30p 50P 50P 59.94p 59.94p 60p 60p UHD 3840 x 2160p YCbCr Color Space: RGB Color Space:
23.976p 23.976p 24p 24p 25p 25p 29.97p 29.97p 30p 30p 50P 50P 59.94p 59.94p 60p 60p New in Media Composer v2021.3 Project Format Raster Dimenstion Frame Rate 4K 4096 x 2160 N/A RGB Color Space:
23.976p 24p 25p 29.97p 30p 50P 59.94p 60p Avid Titler+ Updates The following updates have been made to Avid Title+:
Creating Text Boxes Creating title text and resizing title boxes wraps the title text paragraphs appropriately. Simply select the T in the Avid Titler+ toolbar and drag in the Record monitor to create the Title box.
Type the text. When you resize the text box, the text will wrap appropriately.
New in Media Composer v2021.3 Changing the size of the text box wraps the text appropriately.
Opacity Control for Gradient Color You can select the exact value for the Alpha Channel. Double-click the Face color option in the Titler+ toolbar.
New in Media Composer v2021.3 The Select Color window opens.
Color Picker (Windows) Color Picker (macOS) Here you can set the opacity value of the Alpha channel.
New in Media Composer v2021.3 Change to Cursor With this release, the cursor has been updated. The cursor is taller and flashes making it easier to locate.
Rotating Text Boxes and Shapes After creating a text box or a shape, you can use the Rotation Icon to rotate the box or shape. Simply hover over one of the bounding box corners and select the Rotation Icon to rotate the image. You can also hold down the Shift key while dragging to rotate the shape in increments of 15 degrees.
New in Media Composer v2021.3 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
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