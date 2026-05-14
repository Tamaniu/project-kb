---
product: media-composer
product-area: editing
version: "2022.10"
release-date: 01/10/2022
doc-type: new-features
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

New in Media Composer v2022.10 What’s New for Avid® Media Composer® v2022.10 New in Media Composer v2022.10 The following are new for Media Composer v2022.10:
• Working with Proxy Media in an Avid NEXIS | EDGE Environment (cid:129) Media Cache Dialog Update (cid:129) Multiplex I/O Support for Multiple Open I/O Plug-ins (cid:129) New Relink Menu and Linked Media Dialog (cid:129) New Sequence Templates and User Setting (cid:129) “Choose For Me” Options Added for New Projects (cid:129) Keyboard Shortcuts to Switch Focus Between Windows and Tabs (cid:129) Bin Metadata Tooltips (cid:129) FreeType Font Support for Titler+ (cid:129) Support for Two or More Ganged Groups in the Audio Mixer Working with Proxy Media in an Avid NEXIS | EDGE Environment Creating proxy clips and linking them to existing master clips is easy in Media Composer | Enterprise (even without NEXIS | EDGE), and especially useful when working remotely. With a single click, you can toggle playback between high-resolution and proxy media, adapting to your performance requirements.
Proxy media can be created by accessing the Avid NEXIS | EDGE server through a web browser or from within Media Composer. You can also create and playback proxies in a standalone Media Composer. For details on a remote proxy workflow, see the section labeled Remote Proxy Workflow.
For details on creating and playing back proxy media in a standalone Media Composer, refer to Creating and Playing Proxy Media in a Standalone Media Composer.
Remote Proxy Workflow In order to use Avid NEXIS | EDGE with media on a remote NEXIS server, proxies must be created using an on-premises Media Composer system or via Distributed Processing, which is accessed remotely. Accomplishing these steps requires a few, different products. Before using a remote proxy workflow, make sure to review the following prerequisites:
Product Version Installed Where? Refer to Avid NEXIS | EDGE v2022.10 At the facility Avid NEXIS | EDGE Installation Guide Working with Proxy Media in an Avid NEXIS | EDGE Environment Product Version Installed Where? Refer to Avid NEXIS Client v22.5 or higher At the facility and on your Avid NEXIS Client Manager remote system Installation and User’s Guide Media Composer v2022.10 On your remote system Media Composer Install Guide must be LICENSED as “Media Composer | Enterprise” Distributed Processing v2022.10 This is configuration Media Composer Distributed dependent. Processing Admin Guide.
The main part of DP gets installed with Avid NEXIS | EDGE. There is a separate DP installer that needs to be installed on a system that will be the “worker” system.
VPN software (not On your remote system provided by Avid) Improving Network Performance of Avid NEXIS | EDGE Many factors can affect performance of a remote editing system like Avid NEXIS | EDGE. In particular, the bandwidth and latency of your networked environment is essential to a satisfactory editing experience. As latency increases and bandwidth (throughput) decreases, the more time it will take to load clips from the NEXIS server, if they aren’t already cached locally. Latency of 50ms or less, and bandwidth of at least 3 MB/s or higher, is recommended. You can measure both from the Avid NEXIS Client Manager. At higher latency, you may notice that projects and bins take longer to open, and functions like start of play and copying media take longer as well.
Users of Avid NEXIS | EDGE may want to consider the following guidelines to get the best performance out of their remote system:
(cid:129) Avoid Wi-Fi whenever possible, and use a wired, Ethernet connection instead (cid:129) Use only the VPN software recommended by Avid (cid:129) Do not download or upload large files while editing (cid:129) Make sure automatic updates are scheduled for times outside of working hours (cid:129) Turn off syncing for cloud apps, such as Dropbox, Google Drive, and One Drive, or set them to use minimal bandwidth (cid:129) Avoid simultaneous use of streaming apps (Netflix, Zoom, etc.) and P2P software by anyone on your network
> **Note:** If your latency is greater than 50ms, you may want to consider copying your media locally.
Connecting to Avid NEXIS | EDGE from a Remote System Once you’ve installed the necessary components for a NEXIS | EDGE proxy workflow, and optimized your network for lowest latency and maximum bandwidth, it’s time to get connected to Avid NEXIS | EDGE from your remote system.
Working with Proxy Media in an Avid NEXIS | EDGE Environment To get connected:
1. Connect to your facility’s VPN.
2. Open the Avid NEXIS Client Manager.
3. Mount your workspaces.
4. Click the General Preference Settings button to open the General Preferences window.
5. In the Client Type pulldown menu, select Remote Avid NEXIS.
6. Start Media Composer | Enterprise.
7. In the Media Composer “Select Project” window, enter the login credentials for the Avid NEXIS
| EDGE server (NEXIS system name or IP address) and enable “Remote Avid NEXIS”.
Working with Proxy Media in an Avid NEXIS | EDGE Environment - A green NEXIS | EDGE indicates the connection is successful.
- A yellow NEXIS | EDGE indicates an attempt to connect.
- An orange NEXIS | EDGE indicates a successful connection, but the seat quota (number of purchased Media Composer | Enterprise licenses) has been exceeded.
- A red NEXIS | EDGE indicates the connection failed.
8. Select your project.
Any shared project on the NEXIS server will be accessible to remote Media Composer clients.
9. Click Open.
> **Note:** In order to avoid problems with indexing, make sure to set your search directory to local when you
create a project with “Remote Avid NEXIS” enabled, even if the Media Composer project is based on an Avid NEXIS workspace. If you opened an already existing project, verify that your search data directory is on your local system. Open the Media Composer project, bring up the Find window (Ctrl+F [Windows], Cmd+F [macOS]) and select the Settings icon on the bottom left of the window.
Make sure the directory is set to Local.
Creating Proxy Media Media Composer | Enterprise allows you to create proxy media for one or more assets in a bin. The creation of proxies can be accomplished from within Media Composer or by using a web browser.
> **Note:** Audio with a sample rate of 48048 Hz (48.048 kHz), such as audio produced through a pull down
process, is not supported. All audio used in the proxy creation process must be online to avoid creating damaged proxy files that cannot be easily deleted.
To create proxy media in Media Composer:
1. Select master clips, subclips, groups or sequences in your bin.
2. Open the Create Proxies window by doing one of the following:
- Right-click on the asset(s) and select Create Proxies.
- Select Create Proxies from the Bin Fast Menu.
The Create Proxies window appears.
3. Select a local drive or choose an Avid NEXIS workspace to host assets and temporary files for
the job.
4. (Optional) Select the Distributed Processing option and click OK.
You can monitor the job progress through the Distributed Process Job Status app.
> **Note:** The Distributed Processing option is only available after you select an Avid NEXIS workspace.
5. Click OK.
The proxy media appears in the bin with an orange clip icon.
To create proxies through a browser:
1. Connect to the Avid NEXIS | EDGE server through a supported web browser.
2. Navigate to the location of the assets for which you want to create proxy media.
3. Right click on the asset, bin, or project and select Create Proxies from the context menu.
The app displays the Create Proxies confirmation window.
Working with Proxy Media in an Avid NEXIS | EDGE Environment
> **Note:** The ability to generate proxies per workspace has been disabled for this release. Users can generate
proxies at the Project level.
> **Note:** If you have a project or workspace with a large number of assets, Avid recommends that you create
proxies during off-peak hours, since these operations may take a long time to process.
4. Click the Create button in the confirmation window to continue, or click Cancel to exit the proxy
creation process.
If you click Create, the app displays another window with information about the number of assets for which proxies will be created. If proxy media is already available for some assets, these assets will be skipped — new or duplicate media will not be created.
5. Click Close to exit the window.
6. (Optional) Check the status of your job in the Distributed Processing Status window.
If you create proxies at the project level or higher, Distributed Processing creates one job per Media Composer bin. Depending on the number of bins, this could result in a large number of new jobs. If you need to cancel the entire job, you must cancel each sub-job (one per bin) individually.
Working with Proxy Media in a Bin Proxy media is displayed in a bin with an orange clip icon. This allows you to quickly identify any clips with proxies. If proxies have been deleted, icons will no longer be shown as orange.
Working with Proxy Media in an Avid NEXIS | EDGE Environment Four additional columns have been added to display information about proxies, including Proxy Offline status, Proxy Video format, Proxy Audio format, and Proxy Path.
(cid:129) Proxy Offline shows any video or audio media that is offline for a clip. This is similar to the original Offline column.
(cid:129) Proxy Video shows the resolution of the available proxy. This column will update depending on the options selected in the Timeline Video Quality menu. When the Timeline Video Quality is set to Full Quality (8-bit or greater), an associated proxy will display using the H.264 format. If Draft Quality or Best Performance is selected, the DNxHD LB format will be used.
(cid:129) Proxy Audio shows AAC if there is audio associated with the proxy.
(cid:129) Proxy Path shows the location where the proxy media resides.
> **Note:** In the 2022.10 version of Media Composer, automatic refresh of bin lock status has been disabled for
shared projects in an Avid NEXIS | EDGE proxy environment. By default, for a locked bin, the bin lock icon color will appear red until you do a manual refresh, by right-clicking in the Bin Container sidebar or using the Fast Menu and choosing the "Refresh" command, or a forced auto save occurs, which updates the bin status and changes the icon color to yellow if the bin has been modified. You may avoid constant, manual refreshing by adjusting your Bin Settings to “Force Auto- Save” at more frequent intervals.
Playing Proxy Media in a Remote Media Composer Once a clip has proxy media associated with it, you can begin playback and editing of the proxy media. The first time a clip or sequence is played you may notice a delay while the proxies are cached. Subsequent plays should not exhibit the same delay.
To playback proxy media:
1. Right-click the Play button and select Proxy Preferred.
The play button changes to orange, indicating you are in Proxy mode.
- When “High-Resolution Only” is selected, high-resolution, local media is played.
- When “Proxy Preferred” is selected, proxy is the preferred playback format. If the proxy is offline or not available but the high-resolution, local media is, then the high-resolution media will be played.
Working with Proxy Media in an Avid NEXIS | EDGE Environment - When “High-Resolution Preferred” is selected, high-resolution, local media is the preferred playback format. However, if the high-resolution media is offline or not available but the proxy is, then the proxy will be played.
2. Play the proxy media of your choice.
3. Adjust the Timeline Video Quality playback (Full Quality vs. Draft).
Working with Proxy Media in a Sequence When working remotely with proxy media, latency and bandwidth are important considerations, along with the complexity and density of a sequence. In most cases, setting the Timeline Video Quality to Full Quality (8-bit or greater) is recommended, when playing back media from a remote NEXIS server. With Full Quality selected, the proxy being called is optimized for efficiency over the network, while also providing a high quality image. However, if you experience poor performance while playing back portions of your sequence, particularly those sections with many edits or a high number of streams, you may want to set the Timeline Video Quality to “Draft Quality” or “Better Performance”. This will call for a proxy that provides better performance, once it is cached, but reduced image quality.
Using Copy Media Copy Media is a feature that allows you to select items within a bin and gather all the related media across mounted storage and collect them onto a single target drive. This makes it easy to migrate project content from one system to another. In addition to selecting items in a bin, you can also select bins and folders within the Bin Container Sidebar. Selecting a folder is the same as selecting all items in the folder.
> **Note:** You must be connected to Avid NEXIS | EDGE and have a Media Composer | Enterprise license to
use Copy Media.
> **Note:** Copy Media copies managed media. It will not copy Linked media.
To copy media:
1. Select the items in the bin you want to copy or select the desired bin(s) in the Bin Container
Sidebar.
> **Note:** If you select a sequence to copy, the Copy Media workflow copies the entire media file of the
original master clip.
> **Note:** If you select bins that are closed, they will be opened at the time the copy function begins.
2. Right-click and select Copy Media.
The Copy Media dialog opens.
Working with Proxy Media in an Avid NEXIS | EDGE Environment
> **Note:** As soon as the Copy Media window opens, size calculation begins based on the enabled checkboxes.
Enabling or disabling checkboxes changes the calculation and updates the total.
Available space for the selected directory is displayed to inform you if there is enough space to perform the operation. If there is not enough space, copying will not be allowed.
3. Choose the items you want included with the copy: Bins, Managed media, Proxy media, and
Renders.
4. Choose whether to copy the media to a Drive or Folder.
Working with Proxy Media in an Avid NEXIS | EDGE Environment
5. If you select Folder, click “Set” to set a path to the folder where you want the items copied.
6. If you selected Bins to be copied, the “Copy Bins to” option is available. Click the “Set” button
to set the location where the Bin is copied. If Folder was selected, you can choose to Copy Bins to the same location as the folder.
7. Click OK. The applicable items are copied to the appropriate location.
Note the following:
- If you selected a root folder where an Avid MediaFiles folder already exists, the managed media and proxy media are placed into the respective MXF folders. Managed media is placed into a new folder within MXF and the folder is named using the next available number.
- If no Avid MediaFiles folder or MXF folder exists at the selected location, an Avid MediaFiles folder is created and the media is placed inside the MXF “1” folder. Proxy media is placed in the Proxy folder based on the next available number. If no Proxy folder is available, a new Proxy folder is created and the media is copied to the “1” folder.
- If you selected a specific folder to copy the media to, the media appears in an “Avid Copied Media” folder at the target location.
- If you chose to copy bins, the bins are placed in an “Avid Copied Bins” folder at the target location.
> **Note:** When performing Copy Media of a Multicam Group Clip, or a sequence that contains Multicam
Group clips, all of the sources for Group clips are copied. If you only want to copy the current camera, flatten the Multicam sequence.
Creating and Playing Proxy Media in a Standalone Media Composer You do not need to be a remote user to work with proxy media. A standalone Media Composer | Enterprise can create and playback proxy media.
To create proxy media in Media Composer:
1. Select the master clips, subclips, groups or sequences in your bin.
2. Open the Create Proxies window by doing one of the following:
- Right-click on the asset(s) and select Create Proxies.
- Select Create Proxies from the Bin Fast menu.
The Create Proxies window appears.
3. Select either a local drive or choose an Avid NEXIS workspace if your standalone editor is on
premises with an Avid NEXIS Server.
4. Click OK.
The proxy media appears in the bin with an orange clip icon.
Media Cache Dialog Update To playback proxy media:
1. Right-click the Play button and select Proxy Preferred.
- When “High-Resolution Only” is selected, high-resolution, local media is played.
- When “Proxy Preferred” is selected, proxy is the preferred playback format. If the proxy is offline or not available but the high-resolution, local media is, then the high-resolution media will be played.
- When “High-Resolution Preferred” is selected, high-resolution, local media is the preferred playback format. However, if the high-resolution media is offline or not available but the proxy is, then the proxy will be played.
The play button changes to orange indicating you are in Proxy mode.
2. Play the proxy media of your choice.
Media Cache Dialog Update New options have been added to the File Cache tab, located under Media Cache settings (Media Composer > Preferences > Site > Media Cache > File Cache), which are useful for remote proxy workflows with Avid NEXIS | EDGE. Options in the File Cache tab now include “Enable Disk Cache”, “Maximum Disk Cache Usage” and the ability to "Flush Disk”, which will remove all data and contents of the selected directory.
> **Note:** These features are only relevant to users of Avid NEXIS | EDGE. Avid NEXIS | EDGE users should always select “Enable Disk Cache”.
Multiplex I/O Support for Multiple Open I/O Plug-ins File Disk Cache (for proxy media only) stores individual frames of proxy media played from the Avid NEXIS server. This allows the remote client to avoid pulling the same media over a network connection more than once, and improves playback and editing performance. The directory for File Disk Cache is already selected by default in the Media Cache dialog, and can be found here:
(cid:129) (macOS) /Users/Shared/AvidCache (cid:129) (Windows) C:\Users\Public\Documents\Avid Media Composer\AvidMediaFilesLocalCache Another cache that helps with network variability is Bin Cache. Project and bin files are stored locally for remote clients and (over time) can add up. Bin Cache stores the files indefinitely, but users can delete the files to clear space, and they will be re-cached the next time a project and bin are opened. Only bins opened on the remote client, and not a complete copy of the entire shared project, are stored. Bin Cache is stored in the following locations:
(cid:129) (macOS) /Users/Shared/AvidMediaComposer/Avid Remote (cid:129) (Windows) C:\Users\Public\Documents\Avid Media Composer\Avid Remote Multiplex I/O Support for Multiple Open I/O Plug-ins With this release, you can use multiple active Open I/O plug-ins at the same time. If your system has more than one I/O hardware device attached, you can use them simultaneously as well. This feature is accessed through the HW/SW button (“Toggle Hardware”), located in the Timeline window.
> **Note:** The context menu on the HW/SW button has changed to reflect the ability to select multiple hardware
devices.
Multiplex I/O Support for Multiple Open I/O Plug-ins Right-click or Control-click on the HW/SW button to select or deselect hardware interfaces and streaming plug-ins independently. You can turn on as many items as necessary when editing and have hardware and software devices active concurrently. Left-click on the button to activate or deactivate your selections.
> **Note:** Streaming plug-ins are always deselected when you start Media Composer, even if you had selected
them when you quit.
Control panels for each hardware interface or streaming plug-in can be accessed individually from the context menu by choosing “Configure”, which opens the Avid I/O Manager. If the control panel for a particular device must be accessed from outside of the context menu on the HW/SW button, it will call up control panels for those attached interfaces and streaming plug-ins.
> **Note:** In some instances, multiple, active Open I/O and streaming plug-ins may not stay in sync. This is due
to the diverse nature of the various plug-ins, which may prevent perfect synchronization.
Users familiar with the HW/SW button from previous versions of Media Composer may notice that the button has been updated to reflect its current state. These states include corresponding icons for Inactive, SW Selected, HW Selected, Both Selected, SW Active (flashing), HW Active, and Both Active (SW flashing).
Known restrictions:
(cid:129) When activating the Digital Cut Tool or the Capture Tool, only one hardware interface can be active. If more than one hardware interface is active, you will be asked to select which one to remain active and the other(s) will be automatically deselected.
(cid:129) Using more than one hardware device from the same manufacturer is not currently permitted.
For example, you can use one AJA and one BMD device, but not two BMD devices or two AJA devices.
New Relink Menu and Linked Media Dialog (cid:129) “Use Local Audio” is available only when no physical hardware interfaces are active. You can use local audio if the only active interfaces are streaming plug-ins.
(cid:129) This feature DOES NOT add the ability to use host audio simultaneously with external hardware.
(cid:129) Capturing while streaming is not currently supported.
New Relink Menu and Linked Media Dialog In the latest version of Media Composer, the old Relink menu has been replaced to simplify the relinking workflow and improve performance. Relinking is an important function when clips and sequences lose their connection to previously linked media files. For example, relinking might be necessary when consolidating or moving media between systems, which changes the original path to files on a hard drive.
The Relink menu now includes two options:
(cid:129) Managed Media, opens the old Relink dialog (cid:129) Linked Media, opens the new Linked Media dialog The new Relink menu can be launched with or without an item selected in a bin. It can also be launched from the Bin Container sidebar menu with multiple bins selected. Simply right-click on a bin or selected clips, and choose Relink > Linked Media to launch the new Linked Media dialog.
In the Linked Media dialog, unlinked clips are shown in red and the highlight color for any selected clips is white. You may select specific clips to relink or proceed directly to locating media without a selection.
New Relink Menu and Linked Media Dialog The dropdown menu in the upper-left corner of the Linked Media dialog filters what is shown.
Choosing “Offline only” or “All media” will present metadata for those selected clips. Similarly, the search field in the upper-right corner filters by keywords.
When you are ready to relink, click the “Locate Media” button, navigate to the folder where your media resides, and click “Open”. Media Composer will look for the original media within the directory and reestablish the broken file paths.
New Sequence Templates and User Setting New Sequence Templates and User Setting Whenever a new sequence is created, a sequence template will be used to configure the number and type of tracks, custom track names, and starting Timecode. Users of Media Composer should find that this speeds up the process of creating sequences, as compared with earlier versions. Other changes include new User Settings for “Sequence Template” and a new submenu when creating a new sequence (Timeline > New > Sequence), with options for the new Sequence Template or the Default Template.
> **Note:** The old Timeline setting section for the set up of default tracks has been removed. Default Starting TC has been removed from General Settings and must now be configured in the
Sequence Template.
“Choose For Me” Options Added for New Projects Right-clicking in the Timeline and choosing “Create Sequence Template” from the context menu opens a “Create new setting” dialog box, which creates a new template based on the current sequence settings.
“Choose For Me” Options Added for New Projects New users of Media Composer can get started more quickly with the “Choose For Me” check box in the “New Project” tab of the “Select Project” window.
“Choose For Me” Options Added for New Projects When this check box is selected, the project will not have a final Raster or Edit Rate set by default.
Instead, when you add your first clip to the Timeline, Media Composer will prompt you with a “Project Properties” window and will automatically select settings that match your clip. You may proceed with these settings or change them using the “Raster” and “Edit Rate” dropdown menus.
Two default bins are also added to your project and a new sequence is created. The green bin (representing the source side) is intended for clips, and the blue bin (representing the record side) is for storing your sequences.
“Choose For Me” Options Added for New Projects Users who select the “Choose for Me” option when setting up a new project will notice another, helpful addition in the latest version of Media Composer. Whenever a bin or the Timeline are empty, the background of these windows now includes a "passive hint", or directions for what users should do next. Bin windows contain a passive hint to "Drag from Source Browser to add clips to Project" and the Timeline instructs users to "Drag clips here to start editing".
Keyboard Shortcuts to Switch Focus Between Windows and Tabs Keyboard Shortcuts to Switch Focus Between Windows and Tabs New keyboard shortcuts allow you to cycle through open windows and tabs in the Media Composer interface (for example, switching between Bin tabs). Open windows, whether floating or tabbed, and anything with a vertical title bar can be quickly selected by using these keystrokes. The direction of cycling can be modified with additional keystrokes (by default, “focus” moves left to right, or based on the geometry of the window layout).
(cid:129) Ctrl + Up or Down arrow (Windows) / Cmd + Up or Down arrow (macOS), switches between windows.
(cid:129) Ctrl + Tab (Windows) / Ctrl + Tab (macOS), switches between tabs.
Bin Metadata Tooltips Viewing information without leaving your preferred view saves time while editing. You can now quickly access basic metadata in a tooltip when hovering over a thumbnail or label in the Bin’s Frame View. Metadata in the tooltip includes Duration, Format, and Creation Date.
FreeType Font Support for Titler+ Titler+ has gained support for FreeType fonts, greatly expanding the variety of fonts available for use in a project's titles, including popular formats such as OpenType fonts.
Support for Two or More Ganged Groups in the Audio Mixer Ganging groups in the Audio Mixer allows you to sync the sliders for multiple audio clips and adjust their levels or panning simultaneously. This feature supports up to ten ganged groups.
Support for Two or More Ganged Groups in the Audio Mixer You can access the Gang menu by right-clicking on the Gang icon in the Audio Mixer.
Select one of the ten possible Gang groups, A through J.
In addition to its color, hovering over the Gang icon indicates the associated Gang group in a Tooltip.
You can apply multiple gangs by using the Grouping tool found in the Audio Mixer sidebar. Right- click on the group, select Ganging, and choose to Move or Add a Gang.
Support for Two or More Ganged Groups in the Audio Mixer Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
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