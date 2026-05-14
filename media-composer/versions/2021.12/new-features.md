---
product: media-composer
product-area: editing
version: "2021.12"
release-date: 01/12/2021
doc-type: new-features
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

New in Media Composer v2021.12 What’s New for Avid® Media Composer® v2021.12 New in Media Composer v2021.12 The following are new for Media Composer v2021.12:
• New Mac Support (cid:129) Updated OS Support (cid:129) Rendering AudioSuite Effects (cid:129) SubCap Font Support (cid:129) Change to Dual Monitor Systems (cid:129) Dockable Tool Palette (cid:129) Increased Track Limit (cid:129) Snap to Grid in Bin Frame View (cid:129) HW/SW Context Menu Update (cid:129) Insert Track Menu Option (cid:129) Updated Bin Settings New Mac Support This release of Media Composer supports Mac M1 systems.
Avid recommends you set the following in Media Composer when working with a M1 16G system:
(cid:129) Set the video memory and file cache. Access the video memory by selecting File > Settings, click the Site tab and double-click Media Cache. Use the slider to set the Desired Video Memory (GB) to 1G. Set the File Cache to 2GB.
(cid:129) Turn off Phonetic Indexing. Access this option by pressing Ctrl + F to open the Find Window.
Click the Settings button (gear icon) in the Find window and click Stop Indexing.
(cid:129) Turn off Background Services. Access the background services by selecting Tools > Background Services. The Background Services window opens. Select Stop to stop the services.
(cid:129) Resolutions: Avid recommends you work with the DNx family of resolutions and Apple ProRes 422 resolutions.
New in Media Composer v2021.12 Avid recommends the following if you see hangs or stuttering play with 10-bit or RGB formats when working with a M1 Pro/Max system.
(cid:129) Increase the Media Cache “Video Memory” setting to 4GB.
Updated OS Support Avid has qualified the following or this release.
(cid:129) macOS v12
> **Note:** Media Composer v2021.12 has been qualified with macOS v12. Avid has not qualified macOS v12
with the CrowdStrike anti-virus application.
Rendering AudioSuite Effects With this release, when performing an AAF export that requires rendering of AudioSuite effects, the rendering is performed on the existing sequence prior to making the .copy that is used for the actual export. The reason for this is that after more edits are made to the original sequence, subsequent exports will only create new renders for effects that have changed since the previous export, reducing the volume of new media that needs to be included in the turnover.
SubCap Font Support (Windows) With this release, the SubCap effect supports Extensis Universal Type Client/Server Fonts.
Change to Dual Monitor Systems With two or more monitors connected to the system, when you launch with a new user setting, Media Composer will display a main host panel on Display 1 (the primary display), and a Floating panel containing the Timeline and Composer on Display2. The second host panel will be disabled by default. To enable the second host panel, go to Windows > Host Panels > Display 2.
Dockable Tool Palette You can now dock or tab one or more Tool Palettes and include them in Workspaces.
Simply click in the vertical title bar of the Tool Palette and drag to the location where you want to dock the window. Locations where you can dock the window will appear as green drop zones.
New in Media Composer v2021.12 Example of a Tool Palette dropped next to the Timeline You can also access your named Tool Palettes from the Tools menu. To create and name multiple Tool Palette Settings see “Duplicating Settings” in the Help. Once you have multiple settings you can choose them from the Tools menu.
New in Media Composer v2021.12 Increased Track Limit Previously, Media Composer allowed you to create up to 64 video and 64 audio tracks. With this release, you can create up to 99 video and 99 audio tracks.
> **Note:** If you create a sequence with up to 99 video and 99 audio tracks and bring that sequence to an
earlier version of Media Composer, you will be able to see the additional tracks, but they will be locked.
New in Media Composer v2021.12 Snap to Grid in Bin Frame View When you are in Bin Frame View, you can select grid settings to allow you to easily organize your clips in the bin with the aid of a grid. The grid is used only when you are dragging clips. The grid can be hidden or visible and allows you to easily arrange your clips.
To work with the grid in Frame View:
1. Click the Frame View button in the bin.
2. Select the Bin Fast Menu and select Snap to Grid, or right click in the Bin and select Snap to
Grid.
3. Choose from the following:
- Disable - choose to disable the grid in the bin.
- Temporary - choose to temporarily display the grid. Click and hold a clip to temporarily
display the grid until you move the clip to the desired location.
- Enable - choose to always display a grid in the bin allowing you to easily arrange items in
the bin.
- Invisible - choose to enable the grid without displaying the grid.
4. If you have enabled the grid, arrange the items in your bin by dragging the clips. Once you drop
the clip, it will align to the nearest intersection of the grid.
HW/SW Context Menu Update With this release, you can call up control panels for each hardware interface or streaming plug-in individually from the HW/SW open I/O context menu. Places where the hardware control panel is accessed, outside of the context menu on the HW/SW switch, will call up control panels for the attached interfaces and streaming plug-ins.
New in Media Composer v2021.12 Insert Track Menu Option An Insert Track menu option has been added to the Timeline menu. This allows you to easily access the Insert Track dialog box. Select Timeline > New > Insert Track or right-click the Timeline context menu and select New > Insert Track to access the dialog.
In previous releases, you could access this dialog with Ctrl+Alt+U or Ctrl+Alt+Y.
When you choose to insert a track, Media Composer labels the new track with the number you selected and renumbers the existing tracks in consecutive order.
Updated Bin Settings The text in the Bin Settings has been updated to clarify the settings when creating a new Bin or opening a closed Bin.
This allows you to choose:
(cid:129) Tabs the Bin into the active pane in a Bin Container - select if you want double-clicking a closed bin, script, or volume in a Bin Container sidebar to open and tab it to the currently active bin in the right side of the Bin Container.
(cid:129) Floats the bin - select if you want double-clicking a closed bin, script, or volume in a Bin Container sidebar to open in a new floating Bin Container window.
> **Note:** Pressing Ctrl (Cmd) + double clicking inverts the active setting. This setting applies anytime a Bin is opened or created, such as when you perform a Find Bin
command that causes a bin to be opened New in Media Composer v2021.12 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
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