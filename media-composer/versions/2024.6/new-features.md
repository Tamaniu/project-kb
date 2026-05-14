---
product: media-composer
product-area: editing
version: "2024.6"
release-date: 01/06/2024
doc-type: new-features
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

New in Media Composer v2024.6 What’s New for Avid® Media Composer® v2024.6 New in Media Composer v2024.6 The following are new for Media Composer v2024.6:
• Transcript Tool (cid:129) Subclips and Groups Reference the Transcript for Master Clips (cid:129) Manage Transcription of Clips per Bin (cid:129) Import Pro Tools Session (PTXM) into Media Composer (cid:129) Expanded Marker Colors and Fields (cid:129) Sub-Frame Automation for Volume and Pan Controls (cid:129) Update to the Public Preview of OpenTimelineIO (OTIO) Transcript Tool The Transcript Tool in Media Composer is a dockable window that provides direct access to transcripts for each clip. You can open the Transcript Tool by choosing Tools > Transcript Tool. Once opened, the Transcript Tool will update each time a clip is loaded into the Source monitor, providing real-time display of transcriptions, which includes timecode and Speaker ID.
> **Note:** Only one instance of the Transcript Tool is currently possible.
By default, the Transcript Tool is ganged to the Source monitor’s playhead, which displays as a bold, green word to indicate its position in the text, even during playback. Clicking on a word in a transcript will also move the playhead to the related timecode within the clip, and selecting text in the Transcript Tool will set an In and Out mark in the Source monitor. With an In and Out mark set, users can use keyboard shortcuts to Insert (V) or Overwrite (B) into a sequence opened in the Record monitor. The gang button, in the bottom-left corner of the panel, allows users to toggle the relationship between the Transcript Tool and Source monitor. When unganged, the playhead and marks will not update in tandem.
Subclips and Groups Reference the Transcript for Master Clips The Transcript Tool also includes the ability to search transcripts. In the bottom-left corner of the panel is a search field, which can be used to find all instances of a word or phrase in the transcription.
Clicking the arrows next to the search results, or using the corresponding keyboard shortcuts, will take you to the next or previous instance of the word or phrase.
> **Note:** Keyboard shortcuts that are used in the Source monitor will also work in the Transcript Tool.
Viewing and Modifying the Speaker ID in a Transcript In Media Composer 2024.2, speaker identification was enabled when exporting transcripts. This functionality is expanded in the Transcript Tool, which displays each speaker and any changes in speaker. Using the Transcript Tool, users can rename and correct Speakers IDs.
To rename a Speaker ID, double-click on the name to highlight it and type in the new name for the selected speaker. Right-clicking on the Speaker ID provides a context menu with two options:
“Identify Speaker” and “Correct Speaker ID”. Identify Speaker includes a list of previously identified speakers in this project and the ability to “Clear Name” or “Rename”, which will function similarly to double-clicking. “Correct Speaker ID” is meant to be used when there is an error in the Speaker ID, such as when two speakers are grouped together or when one speaker has multiple identifications. When multiple speakers share a Speaker ID, choosing “Add New Speaker” will create a new speaker that can be identified in this one instance.
Subclips and Groups Reference the Transcript for Master Clips In Media Composer, only transcripts for master clips are saved in the database, while transcripts for subclips and groups are temporary. When performing a transcription operation, users will be asked if they want subclips and groups to reference their master clip transcripts. Doing so saves processing power and the time that is required to index subclips and groups directly.
Subclips and Groups Reference the Transcript for Master Clips
> **Note:** Since subclips and groups now reference the transcript for their associated master clip, any changes
made to the subclip’s transcript will be reflected in the master clip’s transcript. This includes changes made to Speaker ID.
> **Note:** Group clips will reference the transcript for the master clip associated with the audio track located
on A1 in the Timeline.
> **Note:** If the transcript for a group clip does not automatically update in the Transcript window, reopen the
group clip in the Source monitor to refresh it.
Changing the Transcript Referenced by a Subclip and Group The following steps demonstrate how to change the method subclips and groups use to reference transcripts in the transcription database To have subclips and groups reference master clips in the transcription database:
1. Choose File > Settings > Project > Transcript.
2. In the Transcript Settings window, click the dropdown menu next to Subclips/Groups and choose
“Use Master Clips Transcripts”.
Manage Transcription of Clips per Bin The “Ask” behavior is the default option.
To have subclips and groups transcribed independently, instead of referencing the master clip:
1. Choose File > Settings > Project > Transcript.
2. In the Transcript Settings window, click the dropdown menu next to Subclips/Groups and choose
“Transcribe Subclip or Group”.
With this option selected, subclips and groups will always be transcribed independently.
> **Note:** If a master clip is not already transcribed and the Project setting is changed to “Use Master Clips
Transcripts”, the master clip will be transcribed at that point.
Manage Transcription of Clips per Bin By default, Media Composer will create a transcription for all media in a project. However, some media, such as music, sound effects, or even some camera media without synced audio, may not require a transcription. The ability to not transcribe a bin means fewer computer resources are used, which can be important when working on large projects with a less capable machine.
It is now possible to select the bins that will be transcribed by right-clicking on a bin and choosing “Include Bin in Transcription” or “Exclude Bin from Transcription”. Text is displayed to the right of a bin, in the Bin Container sidebar, to indicate if it is set to “Transcription On” or “Transcription Off”.
Import Pro Tools Session (PTXM) into Media Composer In addition, there is a new option in the Transcript Settings window to “Include all new bins in transcription”. If this settings is unchecked, all new bins will be excluded from transcription.
> **Note:** When copying or moving bins on the macOS Finder or Windows Explorer level, the status of
transcription will not be moved with it.
Import Pro Tools Session (PTXM) into Media Composer Users are now able to work faster and more efficiently by preparing a session file in Pro Tools that can be imported into Media Composer. This is part of an ongoing effort to bring the two applications closer together through a more flexible interchange of files and metadata. In Pro Tools, files can be saved as “Session (Media Composer Compatible)”, which includes a new “.ptxm” extension that can be imported into Media Composer.
A PTXM file can be imported or linked. This can be done from the Source Browser or by dragging the file into a bin to import it, or dragging + Option (macOS) / dragging + Alt (Windows) into a bin to link it. The difference between importing and linking a PTXM is how the media is handled.
Importing a PTXM will follow the Media Creation settings for import to the destination-managed media. Linking a PTXM will keep media in the current location. Once a PTXM file is brought into a Media Composer bin, a sequence is created with the Session deliverables.
The following items are NOT included in a PTXM file when it is exported from Pro Tools:
(cid:129) Video tracks (cid:129) Basic folders (cid:129) MIDI tracks (unless recorded through an instrument on another track) (cid:129) VCA tracks (although their automation data is coalesced) (cid:129) Master faders (although they will affect any related bus when rendered) (cid:129) Markers (unless they are directly a part of the render)
> **Note:** Non-audio tracks that produce audio (e.g. Aux, Routing Folder, Instrument) will be converted into
audio tracks.
> **Note:** Since Media Composer does not currently support 32-bit float as managed media, converting and
consolidating any linked 32-bit float files will cause media with audio above a 0 dB threshold to clip.
If you have media that meets this criteria, you should leave it as linked or attenuate the audio using Clip Gain before converting to managed media.
Expanded Marker Colors and Fields Expanded Marker Colors and Fields Marker colors in Media Composer have been expanded to sixteen, which include additional options for Purple, Violet, Pink, Denim, Forest, Orange, Gold, and Grey. Also, information that was included in the “Marker Name” field has been split into “Marker Name” and “User”.
In terms of backward compatibility for markers, it is best to output an XML. When viewing markers in a previous version of Media Composer, the expanded color options are mapped to the original eight colors, and the User field returns to the Marker Name field. If markers are exported as a TXT file and imported into a previous version, all expanded colors will default to a single color and the Marker Name field will be ignored.
Sub-Frame Automation for Volume and Pan Controls Sub-Frame Automation for Volume and Pan Controls Reading and writing with sub-frame automation for Volume and Pan controls is now available in Media Composer. Sub-frame automation increases precision when working with audio files in Media Composer and provides greater compatibility with Pro Tools as well. Removing words, editing music, and hiding audio edits with sub-frame accuracy provides the best possible results.
Sub-frame automation works similarly to frame-based automation by first clicking on the Volume/ Pan button in the Track Control panel and enabling automation for Volume or Pan. To add a sub- frame automation point, hover over the clip and hold down the Shift + Command + Option (macOS) or Shift + Control + Alt (Windows) keyboard command, which reveals a small hand icon with a “+” symbol, and click on the automation line segment between frame boundaries. Moving automation points to a sub-frame location can be done by holding Command + Option (macOS) or Control + Alt (Windows) and dragging an automation point. If a user holds the original modifier keys, Option (macOS) or Alt (Windows), the first automation point will be snapped to a frame boundary.
> **Note:** Automation recorded using the Audio Mixer will remain frame accurate, although it can be adjusted
at the sub-frame level after creation.
Update to the Public Preview of OpenTimelineIO (OTIO) As part of an ongoing effort, Avid is participating with the open source community to support OpenTimelineIO (OTIO) functionality for its users. Similar to an Edit Decision List (EDL), OTIO is a human-readable interchange format, which represents the length of master clips and their placement in a sequence. Although, unlike an EDL, an OTIO file may include multiple tracks of video and audio. This format is primarily intended for VFX and online workflows, which require an extensible and easily translatable system for quick turnovers. When exporting an OTIO file from Media Composer, only the most basic effects, such as dissolve, will be included.
> **Note:** Media Composer will not export OTIO files for sequences with linked media and externally created
clips containing interleaved audio files.
Exporting OpenTimelineIO Files(OTIO) Media Composer is now able to export OpenTimelineIO (OTIO) files using the List Tool.
To export OTIO files (macOS and Windows):
1. Select a sequence and choose Tools > List Tool.
2. In the List Tool Window, click on the dropdown menu for Output format and choose “OTIO”.
Update to the Public Preview of OpenTimelineIO (OTIO)
3. Click the “Save List” button, choose a location to save the .otio file, and click Save.
> **Note:** New users will have a new Active Setting option for “Default OpenTimelineIO”. Current user
profiles can create one by setting the output format to OTIO.
> **Note:** Currently, it is not possible to import OTIO files into Media Composer.
Update to the Public Preview of OpenTimelineIO (OTIO) Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
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