---
product: media-composer
product-area: editing
version: "2022.4"
release-date: 01/04/2022
doc-type: new-features
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

New in Media Composer v2022.4 What’s New for Avid® Media Composer® v2022.4 New in Media Composer v2022.4 The following are new for Media Composer v2022.4:
• NewTek NDI Audio Reference Level (cid:129) Interlaced Format Support for NDI (cid:129) Reverse Match Frame Available from a Context Menu (cid:129) Open IO Support for SRT (cid:129) Avid Titler+ Update - Improved Titler+ Dashboard with Dedicated Font, Transformation, and Style Sections - Improved Alignment Tools to Easily Position and Align Titles and Shapes - Reorganized Effect Editor to Reflect the Changes in the Titler+ Dashboard.
(cid:129) Command Palette Quick Find (cid:129) Update to Media Composer | Enterprise Admin Tool NewTek NDI Audio Reference Level With this release, you can set the NewTek NDI audio reference level to -14dB, -18dB, or -20dB.
Access the Avid I/O Manager when you are configuring NewTek NDI settings.
To set the audio reference level:
1. Right-click the HW/SW button.
2. Enable NewTek NDI.
3. Right-click the HW/SW button and select Configure.
The Avid I/O Manager window opens.
Interlaced Format Support for NDI
4. Adjust the Audio Reference Levels.
5. Click Apply.
6. Click OK.
Interlaced Format Support for NDI With this release, when working with NDI, we now support interlaced formats for HD project formats including 720i/59.94, 720i/60, 1080i/59.94 and 1080i/60.
Reverse Match Frame Available from a Context Menu The Reverse Match frame option is now additionally available when right clicking on a Source or Record track light in the Timeline. This shortcut allows you to perform a reverse match frame on a specific Source or Record track without having to change which track lights are lit in the Timeline.
With sequences loaded on both sides of the Composer window, right click on the track light of the desired track and select Reverse Match frame to find a match on any track of the sequence on the opposite side. Reverse Match frame can also be used when a clip is loaded in the source monitor.
> **Note:** Unlike normal Reverse Match Frame, selecting this option from the context menu, searches all tracks,
not just those that are lit.
Reverse Match Frame Track option on Source side Open IO Support for SRT Reverse Match Frame Track option on Record side Open IO Support for SRT Secure Reliable Transport (SRT) is an open source video transport protocol and technology that optimizes video streaming performance across networks.
SRT in Media Composer is broadcast ONLY. You need an SRT application on the other end (for example, Haivision Free Play Pro App, VLC player, any SRT enabled decoder) to watch the SRT stream. SRT enabled devices or Apps can playback the output of Media Composer.
To learn more about options for playback, visit the SRT Alliance web page: https:// www.srtalliance.org and or the list of companies who now have built SRT into their cameras, encoders/decoders, players, mobile apps etc.
Note the following when working with the SRT plug-in:
Decoded Output (cid:129) Due to the compressed streaming nature of SRT, and the variety of SRT decoding applications and devices available, the decoded output may not be in sync with the Media Composer desktop.
Depending on the decoder being used, the output may be up to several seconds out of sync.
Adjusting the buffering settings in the decoder as well as the SRT latency setting can help to improve the delay depending on your network's quality of service.
SRT Quality Bitrates (cid:129) The default quality settings for a 1080p/29.97 project are 5-15 Mbits/sec for low, 10-30Mbps for medium and 30-80 Mbps for high. Bitrates will vary, and might exceed the average values, based on the media being sent over SRT. Bitrates are scaled based on the frame rate and raster size, and may vary in the actual bitstream based on how efficiently the codec can compress the frames.
(cid:129) Only 8b quality is supported with SRT. Media Composer will automatically set the I/O to 8b quality if Media Composer is set to draft or 10b.
Open IO Support for SRT Projects and Media Support:
(cid:129) 2K/UHD/4K projects will be downconverted to HD formats at the same frame rate. For example, if you are working on a UHD 4k 23.976 projects, it will be converted to an HD 23.976p project.
(cid:129) Interlaced formats are not natively supported, but will be converted to progressive format at the equivalent frame rate.
(cid:129) SRT will mix multi-channel audio to stereo audio.
(cid:129) RGB is not natively supported and will be converted to YUV.
> **Note:** The SRT plug-in is supported with Media Composer | Enterprise and Media Composer | Ultimate
licenses only.
> **Note:** Currently, audio scrubbing is disabled when broadcasting SRT or with NDI.
To work with the SRT plug-in:
1. Right click on the HW/SW button.
A context menu opens listing the available HW/SW plug-ins.
2. Select Configure.
Open IO Support for SRT Use the following table to configure the SRT plugin.
Protocol Parameter Description SRT Stream Name You can provide a custom name for the stream Mode To establish a link between a source and destination device, ensure that one device is a listener and the other is a caller.
The device you set as the caller or listener is arbitrary in most cases. If the destination device is going to be ingesting multiple SRT sources, then it must be configured as a listener and Media Composer must be configured as a caller.
IP Address The IP address of the destination SRT device.
Port The port used between the destination and source SRT device. If you are using SRT on a network protected with a router and firewall, you may need to configure the router to support port forwarding for whatever port you specify.
Password The password used by both the source and destination to encrypt the stream. You will need to note the password you use and provide it to the user at your destination.
> **Note:** You will receive a warning if you do not setup a
password.
Latency SRT provides high-quality, low-latency streaming across unreliable internet connections. If packets are lost in transit, a request to re-transmit is sent back to the host. If the host still has the packet, it will re-transmit. If not, then the packet is lost and video and audio may be dropped. If you find that you are seeing dropped audio and video, increasing the latency will provide better quality of service but will also increase the latency between the sender and receiver.
Quality Specifies the target AV bitrate used for streaming.
High = 30-80 Mpbs Medium = 10-30 Mbps Low = 5-15 Mbps Bitrate above is per 1080p/29.97 and scale proportionally for other formats.
3. Once you have configured the plugin, make sure to select the SRT plugin from the context menu.
A check mark appears next to the plugin when it is selected.
4. Click on the HW/SW button to start broadcasting.
Avid Titler+ Update Avid Titler+ Update The updates include the following:
Improved Titler+ Dashboard with Dedicated Font, Transformation, and Style Sections This release includes a number of updates for the Avid Titler+ tool. Avid Titler+ has an improved, reorganized design that includes dedicated Font, Transformation and Style sections.
From left to right: Font section, Transformation section, Style section on the Avid Titler+ Dashboard Improved Alignment Tools to Easily Position and Align Titles and Shapes New alignment buttons have been added to the Transformation section to position titles and shapes and to easily align multiple objects together.
Alignment buttons Also note the following terminology changes in this release:
(cid:129) Transform (previously Layer) (cid:129) Foreground (previously Global) (cid:129) Outline (previously Edge) (cid:129) Fill (previously Face) Avid Titler+ Update The Grid button is now available on the Avid Titler+ Dashboard.
The Save user defaults and Load user defaults are now available from the Avid Titler+ Fast menu.
Reorganized Effect Editor to Reflect the Changes in the Titler+ Dashboard.
The Avid Titler+ effect in the Effect Editor has been updated and reorganized to reflect the changes in the Avid Titler+ Dashboard. There is also a new Layer selection at the top of the Titler+ effect that allows you to select and edit the individual layers.
Command Palette Quick Find Command Palette Quick Find The Command Palette includes a Quick Find field that allows you to search for a particular button on the Command Palette. Simply type in the name of the button for which you are looking.
As you type, the available button options are narrowed down and only the tabs that include possible matches remain open. This allows you to easily access the button you are looking for.
Update to Media Composer | Enterprise Admin Tool Update to Media Composer | Enterprise Admin Tool With the latest update to the Media Composer | Enterprise Admin Tool, we have added a new Roles feature. You can now apply a role to an individual user or group of users. For more details, see the Avid Media Composer | Enterprise Admin Tool Administration Guide on the Media Composer Documentation Page.
Update to Media Composer | Enterprise Admin Tool Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
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