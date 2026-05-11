---
product: fastserve-playout
product-area: ingest-playout
version: "2022.2-2023.20"
release-date: 01/02/2022
doc-type: new-features
source: avid-official
confidentiality: public
date-added: 16/04/2026
status: superseded
feature-tags: [fastserve, playout]
---

- Avid FastServe | Playout
- Administrator's Guide
Version 2023.10
Legal Notices
- Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
- This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
- This product may be protected by one or more U.S. and non-U.S patents. Details are available at 
- This guide is protected by copyright. This guide is for your personal use and may not be reproduced or distributed, in whole or in part, without permission of Avid. Reasonable care has been taken in preparing this guide; however, it may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc. disclaims liability for all losses incurred through the use of this document. Product specifications are subject to change without notice.
- Copyright © 2024 Avid Technology, Inc. and its licensors. All rights reserved.
- The following disclaimer is required by Apple Computer, Inc.:
- APPLE COMPUTER, INC. MAKES NO WARRANTIES WHATSOEVER, EITHER EXPRESS OR IMPLIED, REGARDING THIS PRODUCT, INCLUDING WARRANTIES WITH
- RESPECT TO ITS MERCHANTABILITY OR ITS FITNESS FOR ANY PARTICULAR PURPOSE. THE EXCLUSION OF IMPLIED WARRANTIES IS NOT PERMITTED BY SOME STATES. THE ABOVE EXCLUSION MAY NOT APPLY TO YOU. THIS WARRANTY PROVIDES YOU WITH SPECIFIC LEGAL RIGHTS. THERE MAY BE OTHER RIGHTS THAT YOU MAY HAVE WHICH VARY FROM STATE TO STATE.
- The following disclaimer is required by Sam Leffler and Silicon Graphics, Inc. for the use of their TIFF library:
- Copyright © 1988–1997 Sam Leffler
- Copyright © 1991–1997 Silicon Graphics, Inc.
- Permission to use, copy, modify, distribute, and sell this software [i.e., the TIFF library] and its documentation for any purpose is hereby granted without fee, provided that (i) the above copyright notices and this permission notice appear in all copies of the software and related documentation, and (ii) the names of Sam Leffler and Silicon Graphics may not be used in any advertising or publicity relating to the software without the specific, prior written permission of Sam Leffler and Silicon Graphics.
- THE SOFTWARE IS PROVIDED “AS-IS” AND WITHOUT WARRANTY OF ANY KIND, EXPRESS, IMPLIED OR OTHERWISE, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
- IN NO EVENT SHALL SAM LEFFLER OR SILICON GRAPHICS BE LIABLE FOR ANY SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY KIND, OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER OR NOT ADVISED OF THE POSSIBILITY OF DAMAGE, AND ON ANY THEORY OF LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
- The following disclaimer is required by the Independent JPEG Group:
- This software is based in part on the work of the Independent JPEG Group.
- This Software may contain components licensed under the following conditions:
- Copyright (c) 1989 The Regents of the University of California. All rights reserved.
- Redistribution and use in source and binary forms are permitted provided that the above copyright notice and this paragraph are duplicated in all such forms and that any documentation, advertising materials, and other materials related to such distribution and use acknowledge that the software was developed by the University of California, Berkeley. The name of the University may not be used to endorse or promote products derived from this software without specific prior written permission. THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
- Copyright (C) 1989, 1991 by Jef Poskanzer.
- Permission to use, copy, modify, and distribute this software and its documentation for any purpose and without fee is hereby granted, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation. This software is provided "as is" without express or implied warranty.
- Copyright 1995, Trinity College Computing Center. Written by David Chappell.
- Permission to use, copy, modify, and distribute this software and its documentation for any purpose and without fee is hereby granted, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation. This software is provided "as is" without express or implied warranty.
- Copyright 1996 Daniel Dardailler.
- Permission to use, copy, modify, distribute, and sell this software for any purpose is hereby granted without fee, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation, and that the name of Daniel Dardailler not be used in advertising or publicity pertaining to distribution of the software without specific, written prior permission. Daniel Dardailler makes no representations about the suitability of this software for any purpose. It is provided "as is" without express or implied warranty.
- Modifications Copyright 1999 Matt Koss, under the same license as above.
- Copyright (c) 1991 by AT&T.
- Permission to use, copy, modify, and distribute this software for any purpose without fee is hereby granted, provided that this entire notice is included in all copies of any software which is or includes a copy or modification of this software and in all copies of the supporting documentation for such software.
- THIS SOFTWARE IS BEING PROVIDED "AS IS", WITHOUT ANY EXPRESS OR IMPLIED WARRANTY. IN PARTICULAR, NEITHER THE AUTHOR NOR AT&T MAKES ANY
- REPRESENTATION OR WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF THIS SOFTWARE OR ITS FITNESS FOR ANY PARTICULAR PURPOSE.
- This product includes software developed by the University of California, Berkeley and its contributors.
- The following disclaimer is required by Nexidia Inc.:
- © 2010 Nexidia Inc. All rights reserved, worldwide. Nexidia and the Nexidia logo are trademarks of Nexidia Inc. All other trademarks are the property of their respective owners. All Nexidia materials regardless of form, including without limitation, software applications, documentation and any other information relating to Nexidia Inc., and its products and services are the exclusive property of Nexidia Inc. or its licensors. The Nexidia products and services described in these materials may be covered by Nexidia's United States patents: 7,231,351; 7,263,484; 7,313,521; 7,324,939; 7,406,415, 7,475,065; 7,487,086 and/or other patents pending and may be manufactured under license from the Georgia Tech Research Corporation USA.
- The following disclaimer is required by Paradigm Matrix:
- Portions of this software licensed from Paradigm Matrix.
- The following disclaimer is required by Ray Sauers Associates, Inc.:
- “Install-It” is licensed from Ray Sauers Associates, Inc. End-User is prohibited from taking any action to derive a source code equivalent of “Install-It,” including by reverse assembly or reverse compilation, Ray Sauers Associates, Inc. shall in no event be liable for any damages resulting from reseller’s failure to perform reseller’s obligation; or any damages arising from use or operation of reseller’s products or the software; or any other damages, including but not limited to, incidental, direct, indirect, special or consequential Damages including lost profits, or damages resulting from loss of use or inability to use reseller’s products or the software for any reason including copyright or patent infringement, or lost data, even if Ray Sauers Associates has been advised, knew or should have known of the possibility of such damages.
- The following disclaimer is required by Videomedia, Inc.:
- “Videomedia, Inc. makes no warranties whatsoever, either express or implied, regarding this product, including warranties with respect to its merchantability or its fitness for any particular purpose.”
- “This software contains V-LAN ver. 3.0 Command Protocols which communicate with V-LAN ver. 3.0 products developed by Videomedia, Inc. and V-LAN ver. 3.0 compatible products developed by third parties under license from Videomedia, Inc. Use of this software will allow “frame accurate” editing control of applicable videotape recorder decks, videodisc recorders/players and the like.”
- The following disclaimer is required by Altura Software, Inc. for the use of its Mac2Win software and Sample Source Code:
- ©1993–1998 Altura Software, Inc.
- The following disclaimer is required by 3Prong.com Inc.:
- Certain waveform and vector monitoring capabilities are provided under a license from 3Prong.com Inc.
- The following disclaimer is required by Interplay Entertainment Corp.:
- The “Interplay” name is used with the permission of Interplay Entertainment Corp., which bears no responsibility for Avid products.
- This product includes portions of the Alloy Look & Feel software from Incors GmbH.
- This product includes software developed by the Apache Software Foundation .
- © DevelopMentor
- This product may include the JCifs library, for which the following notice applies:
- JCifs © Copyright 2004, The JCIFS Project, is licensed under LGPL . See the LGPL.txt file in the Third Party Software directory on the installation CD.
- Avid Interplay contains components licensed from LavanTech. These components may only be used as part of and in connection with Avid Interplay.
- Portions © Copyright 2003-2007 of MOG Solutions.
- This product includes FFmpeg, which is covered by the GNU Lesser General Public License.
- This product includes software that is based in part of the work of the FreeType Team.
- This software is based in part on the work of the Independent JPEG Group.
- This product includes libjpeg-turbo, which is covered by the wxWindows Library License, Version 3.1.
- Portions copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002 by Cold Spring Harbor Laboratory. Funded under Grant
- P41-RR02188 by the National Institutes of Health.
- Portions copyright 1996, 1997, 1998, 1999, 2000, 2001, 2002 by Boutell.Com, Inc.
- Portions relating to GD2 format copyright 1999, 2000, 2001, 2002 Philip Warner.
- Portions relating to PNG copyright 1999, 2000, 2001, 2002 Greg Roelofs.
- Portions relating to gdttf.c copyright 1999, 2000, 2001, 2002 John Ellson (ellson@lucent.com).
- Portions relating to gdft.c copyright 2001, 2002 John Ellson (ellson@lucent.com).
- Portions relating to JPEG and to color quantization copyright 2000, 2001, 2002, Doug Becker and copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, Thomas G. Lane. This software is based in part on the work of the Independent JPEG Group. See the file README-JPEG.TXT for more information. Portions relating to WBMP copyright 2000, 2001, 2002 Maurice Szmurlo and Johan Van den Brande.
- Permission has been granted to copy, distribute and modify gd in any context without fee, including a commercial application, provided that this notice is present in user-accessible supporting documentation.
- This does not affect your ownership of the derived work itself, and the intent is to assure proper credit for the authors of gd, not to interfere with your productive use of gd. If you have questions, ask. "Derived works" includes all programs that utilize the library. Credit must be given in user-accessible documentation.
- This software is provided "AS IS." The copyright holders disclaim all warranties, either express or implied, including but not limited to implied warranties of merchantability and fitness for a particular purpose, with respect to this code and accompanying documentation.
- Although their code does not appear in gd, the authors wish to thank David Koblas, David Rowley, and Hutchison Avenue Software Corporation for their prior contributions.
- This product includes software developed by the OpenSSL Project for use in the OpenSSL Toolkit (http://www.openssl.org/)
- MediaCentral may use OpenLDAP. Copyright 1999-2003 The OpenLDAP Foundation, Redwood City, California, USA. All Rights Reserved. OpenLDAP is a registered trademark of the OpenLDAP Foundation.
- Attn. Government User(s). Restricted Rights Legend
- U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
- Trademarks
- Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: 
- Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
- Footage
- Ice Festival, London Zoo, Feng Shui - Courtesy of Reuters.
- Avid FastServe | Playout Setup Guide• Created 1/23/2024 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.

# Contents

	Contents	 5
	Using This Guide	 8
	1 Introduction	 9
	Technical Specifications	10
	FastServe | Playout UHD2 (Gen 2)	10
	FastServe | Playout UHD (Gen 1)	11
12
	The Login Page	12
	Logging In	12
	The VideoEngine Page	13
	The Status Section	13
	The OUT Settings	14
	The General Settings	15
	The Video Converter Settings	16
	The Frame Accuracy Settings	17
	The Debug Settings	17
	The Commander Page	18
	The Status Section	18
	The OUT Settings	18
	The General Settings	19
- The Audio Mapping Settings	19 The External Sources Settings	21 The Send to Playback Settings	22
	The DB Cleaner Settings	26
	The Thumbnail Settings	27
	The Automation Protocol Settings	28
	The GPIO Settings	28
	The Folder Mapping Settings	30
	The Debug Settings	31
	The WatchFolder Page	32

|  |  |
| --- | --- |
| The Status Section | 32 |
| The General Settings | 32 |
| The Autoregister Settings | 34 |
| The FTP Settings | 34 |
| The Debug Settings | 34 |
| The System Page | 35 |
| The Status Section | 35 |
| The Licenses Settings | 35 |
| The Mounts Settings | 36 |
| The RAID Settings | 40 |
| The ZFS Settings | 41 |
| The Network Configuration Settings | 43 |
| The Time & NTP Settings | 44 |

	FTP & Samba User Accounts	46
	The Debug Settings	46
	The Support Archive Settings	46
	The Admin Page	47
	The Info Settings	47
	The User Credentials Settings	48
	The Configuration Settings	48
	The User Management Settings	49
	The SVIP Page	52
	The Status Section	53
	The Boards Settings	53
	The In/Out Settings	56
	The PTP Settings	59
	The PTP Status	61
	The NMOS Settings	61
63
- About the Remote Console	63 Configuring Channel View Options	65
	The Playout Channel Preview Window	68

| The Tooltip Window | 70 |
| --- | --- |
| The Playout Settings | 71 |
| The OSD Settings | 71 |
| The Clips Inventory Panel | 73 |
| Editing Items | 74 |
| Registering Items | 75 |

	The Playlists Inventory Panel	76
	Creating Playlists	77
	Editing Playlists	77
	Loading Playlists to Playout Channels	78
- 78
	The Playlist Editor	80

| 4 Workflows with FastServe | Playout | 83 |
| --- | --- |

| MediaCentral | Command Integration | 86 |
| --- | --- |
| Working with Send to Playback | 91 |
| Intra-frame Workflow | 91 |
| Long GOP Workflow | 92 |
| Compatible Formats | 92 |
| Invalid Characters In STP Asset Names | 94 |
| Configuring Send to Playback | 94 |
| Executing Send to Playback | 97 |
| Playout | 99 |
| Remote Send to Playback | 100 |

Using This Guide
	Working with the WatchFolder	101
	WatchFolder Configuration	101
Inventory Management102
Mapping Source & Destination Parameters	104
FastServe | Playout Best Practices	105
	Remote Console Useful Tips	105

# Using This Guide
- This guide is intended for all users of a FastServe | Playout system. This guide describes product features and software & hardware installation procedures.
- Important: See the following link on the  for the latest updates to this guide and all related documentation:
- https://avid.secure.force.com/pkb/articles/ReadMe/FastServe-Documentation
- Revision History

| Date Revised | Changes Made |
| --- | --- |
| January 23, 2024 | Updated the "OUT Settings" topic. |
| October 30, 2023 | Initial release. |

# 1	Introduction
- Avid FastServe | Playout has been completely redesigned, now offering flexible UHD and HD playout channels—with support for a wide range of codecs and wrappers— enabling back-to-back video and graphics playout in fast-paced news environments. It provides two channels of UHD playback, or up to eight HD/3G playout channels. It also offers RAID- protected internal storage, as well as direct media playback from Avid NEXIS®, decreasing response time and minimizing network traffic during production.

- The Avid FastServe | Playout system built on CentOS 7.9 platform is Avid's latest hardware update to the FastServe product line. This new server provides the same capabilities as the previous generation of Playout servers built on CentOS 7.4, but incorporates new SSD video disks, and ZFS RAID for storage.
- Avid FastServe | Playout enhances efficiency and decreases time to air, enabling fast and easy content playout. With a growing number of codecs supported, Avid FastServe | Playout enables you to play multiple sequences made up of different wrappers and codecs back to back from the same playlist, without transcoding in advance. In addition, it supports playback of static images and image sequences, as well as media with an alpha channel.
- The Avid FastServe | Playout hardware architecture is robustly built to address the most demanding news, sports, and entertainment production environments. The server is equipped with hot-swappable dual power supplies, dual port network connections, and RAID-protected hard disks running the virus-free and stable Linux operating system.
- A versatile production environment offers a better return on investment, and Avid FastServe provides the flexibility you need to meet every production demand. Turning around breaking news stories quickly, Avid FastServe | Playout can handle the complex and ever-changing needs of modern broadcasters. It also reduces production costs, as only a single operator is required to orchestrate media for a multitude of workflows and needs.

## Technical Specifications
The below tables present the current hardware specifications of the FastServe | Playout systems.

### FastServe | Playout UHD2 (Gen 2)

| Component | Version |
| --- | --- |
| CPU | AMD EPYC 7313P |
| Operating System | CentOS Linux 7.9 |
| Memory | 128 GB RAM |
| Data interfaces | 1 x Serial 4 x USB 3.0 (2 front, 2 back) 2 x 10 Gb Ethernet (SFP) 2 x 1 Gb Ethernet (RJ45) 1 x 1 GB (detected for IPMI-RJ45) 1 x VGA maintenance (back) |
| Internal storage | HDD media server up to 4x3.84T System disk - 2 x 480 GB SSD RAID 1 |
| Video outputs | 8 HD-SDI/3G-SDI or 2 Quad-Link 3G-SDI, 3G-SDI down convert OSD |
| Video outputs (monitoring) | 1 x HD-SDI/3G-SDI OSD On/Off |
| Available configurations | HD: 8 x video playback UHD: 2 x video playback |
| Audio | Embedded audio - PCM; up to 8 stereo audio channels per video |
| Video references | Genlock, Analog Black Burst/ Tri level sync/75 ohm with loop trough |

### FastServe | Playout UHD (Gen 1)

| Component | Version |
| --- | --- |
| CPU | 2 x Intel Xeon 14-Core 2.4 GHz |
| Operating System | CentOS Linux 7.4 |
| Memory | 64 GB RAM |
| Data interfaces | 4 x USB 3.0 (2 front, 2 back) 2 x 10 Gb Ethernet (SFP) 2 x 1 Gb Ethernet (RJ45) 1 x VGA maintenance (back) 1 XLR LTC input |
| Internal storage | HDD media server up to 4x3.84T System disk - 2 x 480 GB SSD RAID 1 |
| Video outputs | 8 HD-SDI/3G-SDI or 2 Quad-Link 3G-SDI, 3G-SDI down convert OSD |
| Video outputs (monitoring) | 1 x HD-SDI/3G-SDI OSD On/Off |
| Available configurations | HD: 8 x video playback / 4 x fill + key / other combinations UHD: 2 x video playback |
| Audio | Embedded audio - PCM; up to 8 stereo audio channels per video |
| Video references | Genlock, Analog Black Burst/ Tri level sync/75 ohm with loop trough |

# 2	Working with the FastServe | Playout Web Configurator
- The FastServe | Playout Web Configurator is a web-based interface that you will use to configure and maintain your FastServe | Playout server.
- Prior to proceeding with FastServe | Playout configuration using the Web Configurator, please ensure that your FastServe | Playout server is installed and connected using the information in the *FastServe | Playout Setup Guide*.
- If you have already configured your FastServe | Playout server, then you can log in.
- The following main topics describe how to use the FastServe | Playout Web Configurator to set up and administer your FastServe | Playout system: l "The Login Page" below l "The VideoEngine Page" on the next page l "The Commander Page" on page 18 l "The WatchFolder Page" on page 32 l "The System Page" on page 35 l "The Admin Page" on page 47 l "The SVIP Page" on page 52

## The Login Page
- The Login page provides you with the controls you need to navigate to and log in to the FastServe | Playout Web Configurator.

### Logging In
- This topic contains information on how to log into the FastServe | Playout Web Configurator.
- To sign into FastServe | Playout:
Launch a web browser and enter the FastServe | Playout IP address or the host name, with the suffix :8080.
*When a security certificate is correctly configured, use the https:// prefix to log into the Fastserve | Playout Web Configurator. The http:// prefix is used by default.*
- The FastServe Web Configurator sign-in page appears.

Enter your user name and password and click the “Login” button.
*The default **user name** is “admin” and the corresponding password is “Avid123”. It is highly recommended to change the default credentials upon first login.*
- If one or more users has signed in before on this workstation, a list of users might appear when you click on the user name field.
The FastServe | Playout Web Configurator opens.
*Depending on the entitlements assigned by administrators through the **Admin** tab, the front page can vary. It can be the **VideoEngine** or any of the configuration tabs (Commander, System, etc.).*

## The VideoEngine Page
- The VideoEngine page displays the following sections:
Status - This section displays the information about the communication status, version, and configured channels.
OUT1... OUT8 - These tabs allow to configure VideoEngine preferences for each output. l General - This section allows to set additional VideoEngine preferences.
Video Converter - Various parameters of clips might need to be adjusted to achieve a proper playout. The Video Converter settings control the conversion process when previewing clips in the VE.
Frame Accuracy - Use the Frame Accuracy settings to compensate for time synchronization differences between studio environment systems by inserting time delays. The VideoEngine can act as a timecode generator or distributor, so that other components (e.g. another VE unit) can listen and “grab” the timecode sent by the “Sender” unit.
Debug - This field allows to set the logging preferences.

### The Status Section
- The Status section provides you with basic information about the current status of the server, version of the server and the configured channels as well as their genlock status. You can also enable a Video preview to view the playout channels.
- n *To** enable the preview, you need to configure Remote Preview for each channel. To use the Video Preview option in the Status section, you only need select the Enable check box in the OUT settings without having to enter specific connection details.*
- n *When performing an upgrade of the FastServe | Playout server, not a clean installation, make sure the following entry is added to the VideoEngine.xml file to enable the Video Preview:*
- <RemotePreview HttpServerTcpPort="1234">
- Make sure, that the 1234 port is enabled in your network. The Video Preview is not realtime and some drops might appear.

### The OUT Settings
- The OUT tabs provide you with the basic controls you need to set up the VideoEngine preferences for each channel.

- Set the video format for the output video. You can also select the option to Embed audio with your video.
- n *When working with FastServe | Playout Gen 2 machines, the boards and logical output assignments need additional adjustment. For more information, see the "Outputs SDI Connections" topic in the Avid FastServe | Playout Setup Guide.*
- To configure the on-screen display (OSD) settings:
- t Expand the OSD section in the OUT settings of the selected channel, and using the X and Y coordinates set the OSD position on the screen.

- To configure the Remote Preview:
Make sure that the Enable check box is selected in the Remote Preview section.

In the Type field, set whether the preview is sent to a single device (Unicast), to a group of devices (Multicast) or to everyone (Broadcast).
Optional) When working with Unicast, enter the IP address of the remote preview host in the Destination IP field.
The Interface IP is automatically set to default.
Define the Port on which the remote preview is sent.
In the Preset field, the format of the images is set to jpeg by default.
If the FPS Divisor is set to 1, then no change will be applied to the FPS of the remote preview. If the divisor is changed, to then only a portion of frames will be displayed. If you change it to 4, then only the quarter of the frames will be displayed. (e.g. 50p/4)
In the Resolution Divisor field, set the size of the generated JPEG files for the preview. (4 by default)

### The General Settings
- The General section allows you to setup additional VideoEngine options. Select the Use all available CPU cores option to automatically select and enable all cores. With this check box disabled, the “Use affinity with selected cores” section becomes available and you can choose which CPU cores are used for playout decoding by the VideoEngine. The number of cores is detected automatically.

- The following table describes the fields used on the General section.

| Field | Description |
| --- | --- |
| On drop frame | Set how the VideoEngine responds if playout freezes. l Repeat is recommended for on air productions. It repeats the last played frame. |
| Field | Description |
|  | l Green is for debugging purposes and will display a pattern defined in the “Background pattern” setting. |
| Playout audio converter mode | Set the algorithms for audio filtering. |
| Background pattern | Set the background pattern for the video preview channel, displayed when no clip is playing or loaded (Bars or Black). |
| Embedded VITC/LTC Timecode | When an SDI signal is used, select which timecode should be sent to an active (Internal TC, LTC input, Network TC Input, Clip Master TC, Clip Elapsed Time, Clip Remaining Time) or inactive (Internal TC, LTC Input, Network TC Input) channel. |
| Video Phase | Adjust the phase of the genlock signal. Click on Adjust to open a dialog window, where you can set the horizontal and vertical phase shift. Allowed value range: Phase H (horizontal shift): -540:540 Phase V (vertical shift): -960:960 Pressing the Set button allows you to preview the changes “on air” without the need to restart VideoEngine. When you click on Accept to confirm the change, you will be taken back to the main VideoEngine page view. The values you provided will be applied, but to preserve them in the configuration file, press the Save and Restart button at the bottom panel. |

### The Video Converter Settings
- The Video Converter section allows you to control the conversion process when previewing clips in the VideoEngine.

- The following table describes the fields used on the Video Converter section.

| Field | Description |
| --- | --- |
| Scaling | Set or disable the scaling preferences to use when the clip resolution does not match the resolution set in the VideoEngine. |
| Scaling deinterlace mode | (Enabled when Scaling is selected). Simple adaptive - applied before scaling, not fast, good for static scenes, mediocre for dynamic. Three tap filter derives a new value for a pixel by mixing upper, old and lower pixels. |
| Deinterlacing | Generate missing field rows by duplicating the upper/lower fields for progressive or the first second for interlace frames; |
| Field | Description |
|  | l Bob - generates missing field rows by copying the available rows. l Adaptive - generates missing field rows based on motion calculation. |
| AFD matching mode | Active Format Description. l Aggressive mode - cuts out black areas in letterbox format. l Conservative mode - leaves black areas unchanged in letterbox format. |

### The Frame Accuracy Settings
- The Frame Accuracy section allows you to configure the settings used to compensate for time synchronization differences between studio environment systems by inserting time delays.

- The following table describes the fields used on the Frame Accuracy section.

| Field | Description |
| --- | --- |
| Network Timecode Receiver | Set the VideoEngine frame accuracy options. |
| Network Timecode Sender | Set the VE Sender frame accuracy options. |

### The Debug Settings
- The Debug section allows you to configure logging options.

- The following table describes the fields used on the Debug section.

| Field | Field | Description |
| --- | --- | --- |
| VE Logging Priority | VE Logging Priority | Set the threshold of message priority that will be written to the log file. |
| Field | Description | Description |
| SMIO Logging Priority Log filename | Set the name of the log file. n It is recommended to leave the default filename as ve.log. | Set the name of the log file. n It is recommended to leave the default filename as ve.log. |
| Enable statistics / Statistics filename | Select this check box to gather information about real-time ingest and ingest time. n It is recommended not to change the default file name. | Select this check box to gather information about real-time ingest and ingest time. n It is recommended not to change the default file name. |
| Download log | From the drop down list, download either the current log file or one of the previously created VE log files in the zip format. | From the drop down list, download either the current log file or one of the previously created VE log files in the zip format. |

## The Commander Page
The options in the Commander tab determine the VE preview settings such as audio mapping, database maintenance, automation communication protocols, folder mapping, and log file access.
The Status Section
- Displays the communication status and version of the Commander component.

### The OUT Settings
- The OUT section allows you to configure output channel options.

- The following table describes the fields used on the OUT section.

| Field | Description |
| --- | --- |
| Auto eject | Select to unload clips from the channel after playout. Clear to leave the clip displayed on the last frame after playout. |
| Auto uncue | Select to remove clips from the cue after playout. Clear to leave the clip in the cue after playout. |
| Auto still | Select to automatically load the first clip in the cue to its first frame (if the channel is empty). When cleared, cued clips are not loaded (a clip is displayed upon Play). |
| Max cued | Set the maximal number of clips to be cued, per channel. When the limit is reached, oldest cued clips are removed from the cue. |

### The General Settings
- The General section allows you to configure the VideoEngine preview timecode (internal, network or LTC).

### The Audio Mapping Settings
- Audio Mapping enables users to map desired audio tracks into clip channels. This feature can be helpful in situations when a dubbing audio is stored in an external file or when embedded audio tracks need to be redirected.

- To add an audio mapper:
Expand the Audio Mapping settings in the Commander tab.
Click on the +Add button. A new mapper scheme is displayed.
- You can rename it in the Mapper section below.
- Creating Tags
- To fully configure a Mapper you need to create tags. A tag is an indicator which informs the Mapper where to find the audio files which are replacing the embedded audio tracks.
- To create a new tag:
Click the + button under Tags to create a new tag and type in a Name for the new Tag.
Type in the location (path) of the external file in Pattern. The syntax is: dir/*_tag.ext.
- The individual elements of the syntax are explained in the table below:

| Element | Description |
| --- | --- |
| dir | The WatchFolder directory in which to look for the file. |
| * | The name of the clip will be inserted here. This should not be changed. |
| tag | The name of the tag. |
| ext | The extension of the file. |

The image below shows an example of configured tags.

- Configuring Audio Mappers
- Mapping a file to an audio channel is done using rules, which are defined in the Mapper.
- n *The** bit rate for the embedded audio channel and all audio files must be the same. Also, all files (including the clip) must have the same bit depth of audio.*
- To configure a mapper:
Enter the Mapper Name.

Select the Audio format; either Mono for 16 embedded channels or Stereo for 8 embedded channels.
In the Channel column, use the drop-down list to select the tag to use for the first search cycle.
You can attach up to four tags per channel. The mapper will try to match the tags hierarchically one by one; once a match is found, the mapper uses the matched tag. Besides the previously created tags, there is also an “embedded” tag, which will map the audio directly from the clip. If during the mapping no file is found, then the channel will be muted.
The Index column points which track of the audio file should be used.
Once all the required channels are mapped, click Save Settings and Restart.
- Putting Audio Mappers to Work
- Typically, the files for mapping must be present in the WatchFolder and the active mapping rule must be defined in the Autoregister Settings in the WatchFolder tab. However, there is also an option to force mapping during the cue of the clip. This makes cuing slightly longer, but it allows to add audio files after the clip was ingested.
- To enable Auto validate on cue:
In the Commander tab, expand the General section.
Enable the Auto validate on cue box.
Click Save Settings and Restart.
- n *This option only validates the Audio Mapper which was originally configured when the clip was registered.*
- n *To** change the Audio Mapper of an already registered clip, the clip needs to be ingested again.*
- To enable an Audio Mapper in the WatchFolder:
Go to the WatchFolder tab and expand the Autoregister section.
In the Use Media Mapper section type the name of your mapper.
Click Save Settings and Restart.
- From now on, the WatchFolder will use the selected Mapper during the registration and will map the desired audio when the clip is inserted.
- n *Inserting another Mapper into the **WatchFolder** will not affect already registered clips; only newly added clips will be concerned. Though, if the definition of the already used Mapper is edited and **Auto** validate on cue is enabled, then the mapping will be updated when the clip is cued.*

### The External Sources Settings
- This section allows you to add new MediaCentral | Production Management connections, edit or remove existing sources.

- To add a new external source:
Click on the Add new external source button to open a new dialog box.

Enter a unique Name for the Production system.
Specify the Address of the MediaCentral | Production engine.
In the Workgroup/Database field, enter the name of the Production database to which the FastServe | Playout users will check-in assets. You can check the name of this database in Interplay Access:

The Default path is set to “/” and it is recommended not to change this setting.
In the Username and Password fields, enter the credentials used to log into MediaCentral | Production.
The Mapping src and Mapping dest options are not applicable to FastServe | Playout and should be left blank.
Click on Add to close the dialog window.
- To edit an existing MediaCentral | Production source:
- t Click on the Edit button next to the source Name to open the Edit external source dialog window. Change the required parameters and press on Add to close the window.
- To remove a MediaCentral | Production source:
- t Select the source to be removed, and press on the X button.

### The Send to Playback Settings
- This section allows to set up the “Send to Playback” functionality and the FastServeTM (FastServe Transfer Manager) configuration file.

- The following table describes the fields used in the Send to Playback section:

| Field | Description |
| --- | --- |
|  | Transfer Manager |
| Log level | Set the level of logging for the Transfer Manager. The most detailed log level is FINEST, and the least detailed is SEVERE. The log is located here: /data/FastServeTM/logs/. |
| Download log | Select which file you want to download and press on the download button. Jobs |

- This section shows the transfer progress of STP jobs. You can monitor the progress of all tasks, monitor errors (e.g. when a clip is protected and cannot be overwritten) or cancel jobs here.
- Settings

| Allow Playwhile-Transfer | This option is referred to as PWT and it is also available in Media Composer. Enable this option to play the clip while it is still being transferred. Make sure that the controller supports the PWT functionality. To support it, the controlling application must send the PlayInit command without an OUT point or DURATION parameters. Then, when the playout reaches temporary end-of-file, pressing PLAY will continue playing the clip. Temporary end-of-file may be reached if the rendering process is slower than the playout speed. |
| --- | --- |
| Allow overwrite on Send to Playback | Enable this option to control the overwrite behavior. When this option is disabled, it will not be possible to overwrite a clip that exists on the FastServe | Playout server even when the “overwrite” flag in the Send to Playback dialog of the editor is selected. This is to prevent unexpected or unauthorized overwriting of assets on the server. If this is attempted, the transfer will fail with an error saying “Error: item already exists”. |
| Delete temporary files after STP transfer completes | Select this option to delete temporary files after the Send to Playback transfer is completed. Enabling this option can prevent overloading of temporary files storage. |
| Auto delete temporary STP files after every | When the option to delete temporary files is enabled, you can configure additional options and define the frequency of the automatic file deletion on the NEXIS server. For this functionality to work, provide the UNC paths to the temp STP files on Avid NEXIS. |
| LONG-GOP Editor Send to Playback format | Choose the format from the drop-down list which contains all formats currently supported by the Send to Playback functionality. This setting must match the Project settings in Media Composer. Example: if your Media Composer Project is set to 1080i59,94 then the preset in the Web Configurator must be of the same resolution and frame rate. |
| Save STP Settings | Pressing this button saves the current configuration and updates the STP configuration files. No reboots are required. |

- Hybrid STP

| Enable Hybrid STP | Enable or disable the secured remote Send to Playback process. |
| --- | --- |
| CloudUX IP | Enter the IP address or the host name of the MediaCentral | Cloud UX server, where the feature dedicated to remote STP is running. |
| CloudUX port | Enter the port number of the HTTPS authentication (default: 443). |
| AppRecord alias | Enter the alias that defines identifies the Transfer Manager application. n Instructions on how to obtain the AppRecord alias are described in documents for Identity and Access Management Service (IAMS) available for Avid’s Customer Support. Contact your Avid Sales or Avid Professional Services representative for assistance. |
| AppRecord ID and Secret | Enter the authentication string generated with IAMS. n Instructions on how to obtain the AppRecord alias are described in documents for Identity and Access Management Service (IAMS) available for Avid’s Customer Support. Contact your Avid Sales or Avid Professional Services representative for assistance. |
| Login to CloudUX | After entering all the information required for authentication, click on the Login to CloudUX button. A separate window opens where you need to authenticate your server. |
| Refresh token obtained | This label displays the status of the authentication token obtainment from Cloud UX. |
| Refresh token valid | Information if the obtained token is still valid. |

- Requirements for the Send to Playback Functionality
- The following requirements need to be considered when planning to use the Send-to-Playback functionality:
Avid shared storage environment - it is necessary to work in an Avid shared storage environment
- while performing Send to Playback. This means that the FastServe | Playout machine must have an active mount to Avid NEXIS storage, the same as Media Composer has. The temporary STP files are stored in a NEXIS workspace under the “Temp” directory.
FastServeTM (Linux application responsible for Send to Playback capabilities) connects to Commander on port 10004. This means that in the Web Configurator > Commander Tab > Automation protocols section, port 10004 must be enabled.
- Delaying Clip Register
- Sometimes, a clip transferred with STP is registered in the inventory very quickly and the part of video available for playout is short (for example 2-3 seconds). When such clip is triggered on-air, there is a risk of reaching the end-of-file point before new chunks of video are registered. To avoid this risk, it is recommended to delay the clip register process.
- To delay the “register” command:
Using an SSH client connect to your FastServe | Playout server.
Navigate to the following location:
- cd /data/FastServeTM
Open the TransferManager’s configuration file for editing:
- vim TMServer.xml
Add the following line to the TransferManager configuration file: <OcipRegDelaySec>**X**</OcipRegDelaySec>
- where X is a number of seconds for the delayed registration. For example, if x equals 120 then a clip is registered when there is already 2 minutes of video available for playout.
- n *The** new **OcipRegDelaySec** line must be within the <**TMConfigs**> tags.*
Save and close the TransferManager’s configuration file.
Restart the TransferManager or reboot your FastServe | Playout server.
- Custom Device Name
- There is a possibility to replace the default FastServe | Playout device name displayed in the STP workflows in Media Composer. For example, when choosing “Send to Playback” > “stream1-hd”, you can use your own descriptive name for the server.
- n *The FastServe device name must only consist of basic letters. No special characters, ICS or spaces are allowed.*
- To change the FastServe device name:
Using an SSH client, such as PuTTY, connect to your FastServe | Playout server.
Navigate to the following location:
- cd /data/FastServeTM
Open the TransferManager’s configuration file for editing:
- vim TMServer.xml
Add the following line to the file:
- <CustomName>newName</CustomName> n *The** new **CustomName** line must be within the <**TMConfigs**> tags.*
Save and close the TransferManager’s configuration file.
Restart the TransferManager or reboot your FastServe | Playout server.

### The DB Cleaner Settings
- In the DB Cleaner section, you can configure a scheduled cleanup of the database, where FastServe | Playout stores information about the recorded media (recording name, duration, location, etc).

- In the Run every section, you can specify the cadence of running for the cleaner. You can choose between the following intervals: Hours, Days or Week. When you select the Week option, you can specify at which days of the week and at what time the cleaning should occur.

- The Erase local media file(s) option removes clips stored on the local RAID (in the /Clips location). The Erase remote media file(s) option deletes clips / assets stored on Avid NEXIS or other external storage.
- Difference between "item" and "media"
- Media is always created in the background together with items. An item is an asset that may contain multiple media, for example an item may be comprised of database references to a recording and auxiliary media (hires and proxy). Media is not directly exposed in the inventory.
- When exporting an item from the inventory, the database entry of the “exported” asset is stored there as media with additional data, such as reference paths, file name, etc . So, when you export this asset again to a different location – a new media is created in the database.
- Manual Database Cleaning
- The Manual database cleaning section should only be used for sporadic maintenance purposes. It is recommended to configure and run automatic cleanups on your FastServe | Playout server.
- The Clean Media button allows to access a list of unregistered media. In certain situations (such as using the "Reinstall DB" option during system update), media can fail to be registered in the database.

- The Files list only presents clips which are not registered in the database. You can either select clips to be Registered into the database or Removed from the physical storage.
- n *The** removal process is irreversible, so make sure you have a backup of the files before you delete them.*
- The “Clean DB" button is to be used for maintenance only and removes ALL clip entries from VIDEO_ ENGINE.DB.

### The Thumbnail Settings
- The Thumbnail section allows to set default options for thumbnail creation.

- The following table describes the fields used in the Thumbnails section:

| Field | Description |
| --- | --- |
| Enable thumbnail creation | Select to create a thumbnail for the recordings. When cleared, no thumbnail is created. |
| Field | Description |
| Width | Set the thumbnail Width; the height is set according to the clip aspect ratio. |
| Frame number | Frame number indicates which frame to use as the thumbnail. |
| Format | Select the file format of the created thumbnails. |

### The Automation Protocol Settings
- The Automation Protocol section provides you with options to configure the automation protocol parameters for each preview channel.

- The following table describes the fields used in the Automation Protocol section:

| Field | Description |
| --- | --- |
| Enabled | Select the check box to enable the channel. |
| Protocol | Select the required automation protocol. |
| Device | Available when the VDCP protocol is selected. Set the device type as required. |
| Port | Set the communication port. |
| Channel | Set the channel type. |
| Time format | Select the channel time format: For OCIP protocol, set the Time Format to Seconds. For VDCP protocol, enable or disable the Auto Open option as required. When Auto Open is selected, communication with automation port is enabled by default, when cleared, communication must be established. |
| Field | Description |
| Enabled | Select the check box to enable the channel. |
| Protocol | Select the required automation protocol. |
| Device | Available when the VDCP protocol is selected. Set the device type as required. |

### The GPIO Settings
- The GPIO section allows to add a GPI Moxa device and configure its behavior. You can define a function, assign a channel and a moment of triggering (pulse type). You can use this section to trigger a PLAY command on a certain channel.

- The following functions are available:

| Function | Description |
| --- | --- |
| CUE STILL | Load an existing cued clip to the channel output on the predefined IN point with 0% speed. |
| CUE PLAY | Load an existing cued clip to the channel output on the predefined IN point with 100% speed. |
| PAUSE | Pause any currently played item. This command changes the playout speed on the target channel to 0%. |
| CONTINUE | Set the currently played item’s speed to 100%. Effectively, it will continue playing any paused item. |
| EJECT | Remove the currently played item from the target channel. For this command to succeed, the target channel must be in the “Playing” mode (contain loaded clip). After this command is executed, the channel changes its state to “Idle”. |
| ABORT | Eject the currently played or recorded item from the target channel and deletes all existing |
| Function | Description |
|  | cued items. After executing this command, the channel changes its state to “Idle” |
| BREAK LOOP | Break the currently played loop on the target channel. After executing this command, the current loop will finish properly. This command has no effect on items which do not contain a loop. |
| TALLY ON PLAY | A tally light is triggered on when a channel is playing. TALLY ON PLAY (any speed) TALLY ON PLAY (speed 100%) - activated only when a playout channel is playing some media and the playout speed is exactly at 100%. TALLY ON PLAY (speed != 0) - activated only when a channel is playing some media and the image is not still (normal speed, FF, FW, varispeed, etc). |
| TALLY ON EJECT | A tally light is triggered on when a channel is ejected (idle). |

### The Folder Mapping Settings
- This section provides you with options to map Windows-based folders from the controller to Linux-based folders in the FastServe | Playout system. Specify the Windows Source folder together with the Linux Destination directory. (Click + to add mappings.).
- For more information, see "Mapping Source & Destination Parameters " on page 104.

### The Debug Settings
The Debug section provides you with options to configure the Commander logging options.

- The following table describes the fields used in the Debug section:

| Field | Description |
| --- | --- |
| Commander Logging Priority, CORE Logging Priority, SQL Logging Priority | Set the log mode for the various VECommander components to gather helpful information used to analyze any future problems:  Info is selected by default and it is recommended not to change this option. |
| Log filename | Set the name of the Commander log file name. n It is recommended not to change the default file name. |
| Download log | Download the required Commander log file. |

## The WatchFolder Page
- The options in the WatchFolder page allow to configure the WatchFolder parameters.

### The Status Section
- This section displays the communication status and version of the WatchFolder component.

### The General Settings
- The General section allows you to configure main WatchFolder parameters.
- FastServe | Playout UHD & HD Gen 1

- The following table describes the fields used in the General section:

| Field | Description |
| --- | --- |
| Autostart | When this check box is selected, the watched folder is examined automatically when FastServe | Playout is started. When cleared, the WatchFolder functionality is not activated, and the folder is not checked. To start WatchFolder surveillance when Autostart is cleared, you must restart the WatchFolder (using Restart at the bottom of the screen). |
| Field | Description |
| Use autothrottling | Autothrottling allows you to set the read-write speed to copy files to the FastServe | Playout storage without the risk of interrupting playout or recording. When selected, the read-write speed is set to the default speed. When cleared, you can set the read-write speed manually, but this might affect performance. |
| Write speed limit | Set the maximal speed for writing clips to the watched folder (MB per second). |
| Read speed limit | Set the maximal speed for reading clips from the watched folder (MB per second). |
| Max read parallel files | Set the maximal number of files to read from the WatchFolder simultaneously. |
| Max write parallel files | Set the maximal number of files to write to the WatchFolder simultaneously. |
| Max write chunk size | Set the maximal data chunk size to write to the WatchFolder (MB). |
| Clip destination path | Set the clip storage location. |
| Clip mount point | Set the virtual file system WatchFolder, visible only when the WatchFolder process is running. Once the files are placed here they are registered in the VE database with the selected audio mapping. |
| Accepted extensions | List the file types that are acknowledged by the WatchFolder. |

- FastServe | Playout UHD Gen 2

- The following table describes the fields used in the General section:

| Field | Description |
| --- | --- |
| Autostart | When this check box is selected, the watched folder is examined automatically when FastServe | Playout is started. When cleared, the WatchFolder functionality is not activated, and the folder is not checked. To start WatchFolder surveillance when Autostart is cleared, you must restart the WatchFolder (using Restart at the bottom of the screen). |
| Clip destination path | Set the clip storage location. |
| Clip mount point | Set the virtual file system WatchFolder, visible only when the WatchFolder process is running. Once the files are placed here they are registered in the VE database with the selected audio mapping. |
| Accepted extensions | List the file types that are acknowledged by the WatchFolder. |

### The Autoregister Settings
- Use this section to enable the autoregister functionality.

- The following table describes the fields used in the Autoregister section:

| Field | Description |
| --- | --- |
| Enable Autoregister | When autoregister is enabled, media files are automatically registered in the VE database. Clear this option when working with network storage (since media is registered to the VE database upon playout). Auto-register works with the OCIP protocol only. |
| Use Media Mapper | Enable the Audio mapping. For more information, see "Putting Audio Mappers to Work" on page 20. |
| OCIP port | Set the OCIP communication port. |
| Registered extensions | List the file types that are registered in the VE database. |

### The FTP Settings
- Enable the FTP server to allow for the FTP access to the Watchfolder.

### The Debug Settings
- The Debug section provides you with options to configure the WatchFolder logging options.

- The following table describes the fields used in the Debug section:

| Field | Field | Description |
| --- | --- | --- |
| Enable logging | Enable logging | Select this check box to enable logging of debug messages. |
| Field | Description | Description |
| Trace Level | Set the level of debug messages to be written to the log file. | Set the level of debug messages to be written to the log file. |
| Log filename | The WatchFolder log file name. n It is recommended not to change the default file name. | The WatchFolder log file name. n It is recommended not to change the default file name. |
| Download log | Download the last WatchFolder log file from the list of created log files. | Download the last WatchFolder log file from the list of created log files. |

## The System Page
- The options in the System page determine additional settings such as licenses, mounts or network configuration.

### The Status Section
- The Status section displays the system information.

### The Licenses Settings
- The Licenses section displays the currently installed licenses and their status. New licenses are displayed after they are installed. To add a new license, click on Add new licenses and select a license file from which to import data.

### The Mounts Settings
- The Mount section provides the options to add mount points to the FastServe | Playout server.
- n *Check if the configured mounts are working correctly after **each **reboot of the machine. If any of the mounts are not restored, mount them again to prevent export failures. It is recommended to have the **AvidFos** mount point set in the /**mnt**/ directory and called differently than the NEXIS hostname.*
- The Mounts section is split into two separate parts. One part refers to AvidFos mounts only, that is Avid NEXIS mounts. The other one is dedicated to cifs and nfs mounts.

- The status and host information about the mount are displayed in the following order:
Status of the mount: green (mounted), red (unmounted), yellow (errors),
Host name, usually the name of the NEXIS share,
Linux mount point (direct file system path to the mounted location).
- Client Management
- In the AvidFOS area, open the Client Management section to update the Avid NEXIS Client version directly from the FastServe Web Configurator.

- Make sure all AvidFOS shares are unmounted, and click on Change Nexis client version. In the next window, point to the NEXIS installer on your local storage and click Next.
- Expand the Client Management section further to view and edit the content of the AvidRegistry file. You can define various parameters here, such as the default eth port used for NEXIS mounts.
- n *Before performing an upgrade or downgrade, please backup the Avid Registry file (/**etc**/**AvidRegistry**). After upgrading or downgrading the Avid NEXIS Client, please verify if the Avid Registry file is correct or if it requires any adjustments*

- Adding Mounts
- You can add multiple workspaces (AvidFos or Other) using the Mounts section.
- To add a new AvidFos mount:
- 1. In the Mounts > AvidFos section, press the + button.
- A new section appears where you can define the details of your new mount.

Enter the parameters as described below. The Destination and Host fields are mandatory.

| Field | Description |
| --- | --- |
| Destination | Enter the path under which the NEXIS will be visible from Linux. It can be /mnt/NexisSystemName or /Nexis. |
| Host | Enter the NEXIS host name. |
| Workspace | Specify the workspace from your Shared storage where the ingested media should be stored. |
| Domain | Enter the domain name, when there is a domain name in use. |
| Username | Enter the user name for the appropriate NEXIS share. |
| Password | Enter the password for the appropriate NEXIS share. |

When all the required fields are entered, the Save Settings button becomes active. Press the Save Settings button to apply the new mount.
- To add a new cifs or nfs mount:
In the Mounts > Other (cifs, nfs) section, press the + button.
- A new section appears where you can define the details of your new mount.

Enter the parameters as described below. The Destination and Host fields are mandatory.

| Field | Description |
| --- | --- |
| Destination | Enter the path under which the share will be visible from Linux. |
| Host | Enter the host name or IP address. |
| Shared Folder | Enter the name of the shared directory for exporting clips. A folder with this name must exist on the remote computer with permissions for the relevant user name. |
| Domain | Enter the domain name, when there is a domain name in use. |
| Filesystem | Select the file system type: CIFS or NFS. |
| Use local cache | When enabled, all exported files are stored in the FastServe | Playout local cache memory until the export is complete. It is highly recommended to disable this option when planning to export multiple large files simultaneously, to avoid the risk of consuming the entire physical memory. |

When the required fields are entered, the Save Settings button becomes active. Press the Save Settings button to apply the new mount.
- Editing Mounts
- To edit the parameters of an existing and active mount, you need to unmount it first.
- To edit an existing mount:
Select the mount for which you wish to change the parameters (change the login information, update the shared folder path) and show its details.

Press the Unmount button to enable editing.
Change the required parameters.
Click on Save Settings at the bottom panel to save the configuration.

Mount the share using the dedicated button.
- Removing Mounts
- To remove a mount from the system, unmount it first, and then simply press on the - button and click on Save Settings to save the new system configuration.

- The RAID Settings n *Options described in this section apply only to FastServe | Playout UHD Gen 1 machines.*
- The RAID section allows to view all available disks and their status.

- The following table describes the fields used on the RAID section.

- RAID	The Status section displays information about the overall state of the RAID storage. You can also view the Vendor name, Firmware version, Temperature and Automatic Failover status of the storage here.
- It is also possible to enable Alarms to notify about RAID board issues.
- Disks	The Disks section displays information about the available disks and their status. Click on Info to receive more details about the disk.

- The ZFS Settings n *Options described in this section apply only to FastServe | Playout UHD2 Gen 2 machines.*
- The second generation of FastServe | Playout machines utilizes the ZFS file system for the media drive (RAID).

- The following table describes the fields used on the ZFS section.

| Field | Description |
| --- | --- |
| ZFS Version ZFS Kernel Version | This section displays the ZFS version and the ZFS Kernel information. |
| Create Pool | Create a new pool using the available drives. In the Create new pool dialog window, enter a name for the new pool and select the drives to be included. You can also type a custom mount point for the pool. |

| Field | Description |
| --- | --- |
| Pools List | Once a pool is created, it has its own section in the ZFS settings.  You can view the status of the pool and other important information here. Clicking on the gear button next to the Pool Status label opens the Pool Maintenance dialog window.  The following options are available: Scrub - examine the integrity of data stored in the ZFS pool. For replicated virtual devices, ZFS automatically repairs errors. Pressing on the Scrub button brings up additional options: Start Scrub, Pause Active Scrub, Cancel Active Scrub. When the Scrub operation is started, the Pool Maintenance window closes and the status of the scan is shown in the main ZFS settings. Destroy - dismantle the ZFS pool. This operation destroys all data stored in the pool. |
| Media Drive | This section provides information about the given media drive.  Press on the gear icon in the Info & Maintenance column to open the Device Maintenance window, where detailed information about the drive is listed. |

### The Network Configuration Settings
- The Network Configuration section provides the options to set the network options of your FastServe | Playout machine. You can select either a 1Gb Ethernet connection (eth0 or eth1 on FSP UHD machines) or a 10Gb connection (eth2 or eth3). You can restart your network from here too.

- Dual 10Gb Network Redundancy
- It is possible to set up 10 Gigabit network redundancy using the ethTeaming option. To activate the ethTeaming section, turn off both 10Gigabit (eth2 and eth3) adapters by disabling the Active check boxes next to them. Enable the ethTeaming ethernet port by selecting the Active check box. Assign an IP address to it and enter the remaining parameters of your network (Subnet mask, Default gateway, Primary DNS).

- FastServe | Playout utilizes the Linux “active-backup” bonding policy. The following parameters are used:
- BONDING_OPTS="resend_igmp=1 use_carrier=0 miimon=100 fail_over_mac=1 primary_reselect=2 downdelay=0 mode=1”
- After configuring the FastServe | Playout network adapters in a redundancy mode, check if the network switches (to which these network adapters are connected) are correctly set up.

### The Time & NTP Settings
- This section provides the options to select the time zone in which the system clock will operate, manually set the date & time, and enable the Network Time Protocol service.

- Time Zone
- In the Time Zone section, you can select the required time zone for the system clock to operate. Afterward, press the Update Time Zone button to apply the change.

- Time
- The Time section allows to enable or disable NTP. When NTP is disabled, you can change the system time in two different ways:
- l set the date & time using the dedicated controls, l or, synchronize the date & time settings with the PC where the Web Configurator is opened.

- Click on Update time to apply the changes.
- NTP
- Enable the NTP service in the Time section by clicking on the Change state button, to view further configuration options in the NTP section.

- When a specific NTP provider is required, login to the Web Configurator using an account with administrative privileges.
- The Config section contains a few predefined servers which can be removed or amended according to your requirements.
- The parameters used in the default servers are common for NTP communication. Refer to the  to find the most optimal configuration for your infrastructure.
- The Restrictions section allows to apply certain conditions to the defined servers.

### FTP & Samba User Accounts
- It is possible to access the FastServe | Playout database via FTP or through a server with Samba installed. In the “FTP & Samba user accounts” section, you can secure that access by creating login credentials which will be required when to trying to access the server. Enable the Use Samba Users check box to protect access via Samba by asking for login details, which are created by clicking on the Add new user button. The same credentials will be used for FTP access.

### The Debug Settings
- The Debug section provides the option to set logging priority and download the system log file.

### The Support Archive Settings
- The Support Archive section allows to collect and download all the necessary logs required by the Avid support personnel for troubleshooting purposes. Select the configuration file and enable the check boxes of the required logs. Press on the download button to get them on your PC.

## The Admin Page
- The Admin page is for configuring user access for FastServe | Playout. You can also upload certificate files here or view the versions of the installed components.

### The Info Settings
- The Info section displays the version numbers and the UUID’s of the installed Web Configurator modules. You can also check if all components are currently online.

### The User Credentials Settings
- In the User Credentials section you can change the password of the currently logged in user.

### The Configuration Settings
- In the Configuration section, an administrator can enable or disable HTTPS access and upload proper certificate files. The Download Server Certificate file option allows to download a self-signed *.pem file. This file can be added to the web browser to locally certify self-signed HTTPS connection.

- To upload a certificate file:
Press the Upload certificate files button, and in the following window, select at least two files: a *.pem certificate file and a private key file.
- An authority certificate file might also be required (not needed in case of self signed certificates). The files will be uploaded immediately.
After the files are successfully uploaded, select the required options from the drop-down menus and click on the Apply button.

You will be prompted to restart the FastServe | Playout Web Configurator. Click on Yes to perform the restart and log back into the Web Configurator afterwards.
- Go to the VideoEngine tab and press the Restart button.
- n *The **VideoEngine** and **VECommander** components will be restarted!*
The FastServe | Playout Web Configurator can now be accessed via an HTTPS connection.

### The User Management Settings
- In the User Management section you can view and edit access levels for all existing users of the FastServe | Playout system, create new users or remove them.

- To add a new user:
In the User Management section, click on the Add button.
- The Add User dialog box opens.

Enter a Name of the new user and create a Password for the account.
In the Modules section, select access rights for each module and decide whether the user should be assigned Read Only, User or Admin permissions.

| Module | Permissions |
| --- | --- |
|  | Select whether the user to provide the user with admin access. Choose whether the user should be able to set up HTTPS access using the Configuration section, or manage users in the User Management settings. |
| Commander | Select the level of access to the Commander tab: No Access Read Only (no option to modify any settings or restart the system) User (almost full access without the "Auto validate on Cue" or "Manual DB Clean" options) Admin (full access) |
| Remote Console | This section allows to assign complex sets of permissions for each Remote Console user. As an example, you can assign only monitoring rights by allowing access to the Remote Console but clearing all other options. This way the user will not be able play, pause or abort playout channels or view the inventory. |
| System | Select the level of access to the System tab: No Access Read Only (no option to modify any settings or restart the system) User (almost full access without the option to modify NTP settings) Admin (full access) |
| VideoEngine | Select the level of access to the VideoEngine tab: – No Access |
| Module | Permissions |
|  | Read Only (no option to modify any settings or restart the system) User (full user access) Admin (full access) |
| WatchFolder | Select the level of access to the WatchFolder tab: No Access Read Only (no option to modify any settings or restart the system) User (full user access) Admin (full access) |

Click on Add to create the new user.
- To edit an existing user:
- t Select a user from the list and click on Edit.
- You can now change the password of the selected user or update the access rights.
- To remove a user from the system:
- t Select the user to be removed from the list and click on Delete.
- In the confirmation dialog window, click on Yes to complete the removal.
- To search for a user: t Enter the name of the user in the Search box. The view will adjust automatically as you type.
- To sort the results list:
Click on a column header to reorder the results list.
- An up arrow  appears to the right of the column name to indicate that this column is used to sort the results in ascending order.
(optional) When you click on a column header, the column is sorted in ascending order. If you need to sort the list in descending order, simply click on the column header again to reverse the order of the list.
- A down arrow  appears to the right of the column name to indicate that this column is used to sort the results in descending order.

## The SVIP Page
- FastServe | Playout UHD machines can be equipped with IP PHY boards, instead of SDI physical interfaces, and allow for video transmission over IP. A detailed description on how to prepare your FastServe | Playout server for SVIP is provided in the *Avid FastServe | Playout Setup Guide*.
- To configure video over IP, an additional module called modSVIP needs to be installed. After the installation, a new SVIP page appears in the FastServe | Playout Web Configurator.
- c All settings in the SVIP tab are unique for each video format set in the VideoEngine tab and will not be carried over to different formats on save. When a new video format is selected in the VideoEngine tab, the entire SVIP tab configuration will be reset to the factory default. Upgrading or reinstalling the FastServe | Playout software will also clean the current SVIP configuration.

### The Status Section
- The Status section displays the elementary information related to the SVIP configuration.

- l version of the modSVIP module; l channel Input/Output configuration (list of supported configurations is available in the ReadMe); l SMPTE protocol used in this configuration.
- You can revert the SVIP module to the last saved configuration with the Reset page button or save your changes by pressing on Save.

### The Boards Settings
- The Boards tab allows to configure the boards available on your machine.
- c Any changes saved in the Boards tab will restart the NMOS node and all senders will be re-advertised with updated parameters.
- 1080i Formats

- 1080p Formats

- All boards available in the SVIP configuration are listed here. You can also see the number of SVIP interfaces on each board and their configurations (IP address, subnet and gateway addresses).
- Physically, each IP I/O has 4 interfaces.
- For 1080i formats, only 2 interfaces are used in the configuration. The top interface and the second one from the top are in use. The first (1st) interface is used for the Primary connection and the second (2nd) one for redundancy 2022-7.
- For 1080p formats, all four interfaces are in use. The first and the third one are used for all primary connections, while the second and fourth are used for redundancy 2022-7. All odd outputs (OUT1, OUT3, OUT5, OUT7) are streamed via the first (1st) primary and second (2nd) redundancy interfaces. All even outputs (OUT2, OUT4, OUT6, OUT8) are streamed via the third (3rd) primary and fourth (4th) redundancy interfaces.

- The network addresses (IP, subnet, gateway) should be pre-configured during the production or during the installation of the SVIP infrastructure.
- To prevent networking issues, each interface should have a unique IP address within a private range (10.x.x.x, 192.168.x.x, 172.16.0.0 - 172.31.255.255).

### The In/Out Settings
- In the In/Out tab, you can specify unique multicast Destination IP addresses and Destination Ports for each individual output channel (including *Out Clean*, *Out Dirty*, *Audio *and *ANC Data*) within the SMPTE 2110 standard.
- c Any changes saved in the In/Out tab will restart the NMOS node and all senders will be re-advertised with updated parameters.

- Make sure to use unique Destination IP addresses and Destination Ports in the entire SVIP environment.
- Select the required number of Audio streams per channel. You can choose between 1 group of 16 tracks, or 4 groups of 4 audio tracks. When 4 groups are selected, the Audio section is expanded to allow for address mapping. After saving changes, appropriate NMOS Tx senders will be advertised via the NMOS node service.

- The Audio Packet Time is set to 125us by default, as it is most suitable for 1-16 audio channels. The SMPTE 2110 standard does not support a 1ms Audio Packets Time for more than 1-8 audio channels.
- In the Advanced section, you can specify the Payloads and RTP session IDs appropriate to your entire SVIP environment configuration.
- n *Ensure that the Payload value is always set between 96 and 127 and the RTP session IDs are different for each medium.*
- More information about the SMPTE 2110 standard is available on the official  website.
- Redundancy 2022-7
- Starting with version 2021.7 of FastServe | Playout, you can take advantage of the SMPTE 2022-7 standard, which allows for seamless protection switching. SMPTE 2022-7 generates two streams with the same data using different routes to the destination and specifies the reconstruction of the original stream in case packets are lost in any of the paths. Switching from one path to the other occurs without impact on the content of the stream.
- To enable seamless protection switching, select the Redundancy 2022-7 check box.

- Specify the details of the second (redundant) path in the additional board section, which appeared after enabling the redundancy.
- n *With** the 2022-7 protocol enabled, there is a minimum timeframe of at least one minute (1 min) before a return failover can occur from the primary stream to the secondary one (previous primary).*
- For more information on how to configure your FastServe | Playout server to work with SMPTE 2022-7, see the *Configuring Redundancy 2022-7 *topic in Appendix A of the *Avid FastServe | Playout Setup Guide v2021.7*.

### The PTP Settings
- Precision Time Protocol (PTP) is a protocol that defines a method to distribute time around a network. In the PTP Settings tab, you can enable and configure your Primary / Secondary PTP sources.

- To configure PTP settings:
Specify the PTP Domain number.
Select the required PTP Mode from the drop-down list:
- t Boundary - enable boundary clock mode for this device.
- t Transparent E2E - with an end-to-end transparent clock, only the residence time is included in the timestamp in the packet.
- t Transparent Hybrid - in this mode, a physical frequency source is used to provide frequency synchronization, while PTP is used to provide ToD (Time-of-Day) synchronization. When this option is selected, provide the GM (Grandmaster) IP Address in the box below. If your network supports ARP (Address Resolution Protocol), the GM Mac Address will be fetched automatically. Otherwise, enter the Mac address manually.
(Optional) Select the Send IGMP request option when connecting to non-PTP aware network switches (when working in Transparent PTP modes).
Depending on the selected video format and the available IP PHY wiring/connection, you can choose which network Interface should act as a PTP link. When the server is operating in 1080i formats, only two interfaces are available for PTP. Interface 1 is used for the primary connection, while Interface 2 for the Redundancy (2022-7) one.
In the Advanced section, configure the remaining PTP options:
Path delay request interval - enable the Overwrite option to set the path delay interval manually. Path delay requests are sent by using unicast. Values are in logarithmic mean scale of 2 in range from -7 to 4.
- Example:

| Value Entered | Logarithmic Calculation | Value in Seconds |
| --- | --- | --- |
| -7 | 2 -7 | 0.0078125 |
| -6 | 2 -6 | 0.015625 |
| -5 | 2 -5 | 0.03125 |
| -4 | 2 -4 | 0.0625 |
| -3 | 2 -3 | 0.125 |
| -2 | 2 -2 | 0.25 |
| -1 | 2 -1 | 0.5 |
| 0 | 2 0 | 1 |
| 1 | 2 1 | 2 |
| 2 | 2 2 | 4 |
| 3 | 2 3 | 8 |
| 4 | 2 4 | 16 |

Select the error detection Tolerance level (LOW +/-64ns or HIGH +/-8192ns) for path delay fluctuation.
Specify the BMC (Best Master Clock) selection algorithm options when working in the Boundary mode. The BMC is designed to help choose which clock to use as the source of timing on your network.
Auto - the hardware decides whether BMC should be enabled. It is recommended to use the Auto option.
On - enable the BMC algorithm. The BMCA decides which of at least two clocks should act as the master.
Off - disable the BMC algorithm. BMC should be disabled when working with transparent modes.
Manual Source Clock Id - manually override the BMC algorithm by providing the address of the master clock.

### The PTP Status
- The PTP Status tab allows to view PTP related information of all boards. The Clear button resets the Lock Fail Count parameter to zero (this process takes circa 10 seconds to complete).

### The NMOS Settings
- The NMOS tab contains Networked Media Open Specification (NMOS) information and configuration options.
- c Any changes saved in the NMOS tab will restart the NMOS node and all senders will be re-advertised with updated parameters.
- n *It is recommended to run only **one **Registry Service within the entire SVIP environment. For example, within the entire NMOS setup only one FastServe | Playout server or any other **third party** device should have the Registry Service running.*

- Two NMOS services are available: Registry Service and Node Service.
- The green or red icon next to the service name indicates if the service is currently running or not. You can start or stop each service with the Start / Stop buttons. Running the Node Service is required to control media streams routing with NMOS explorer applications.
- Advanced
- The Avanced section of the NMOS settings allows to choose the version of the Registry Service for when working with third-party services. The Avid Registry Service supports version 1.3.
- You can also select the source of the registry service:
DNS-SD - the default form of discovering the Registry Service.
Custom address - you can point to a specific IP address and Port of a Registry Service on your network.
- There is also an option to select the domain on which to browse for the service:
mDNS - Multicast DNS.
Default - the default network domain specified in the Network Configuration section of the System tab. l Custom - manually enter custom domain details.

# 3	Working with the FastServe | Playout Remote Console
- The Remote Console is an additional FastServe | Playout Web Configurator module that allows you to preview and control the playout channels and provides basic inventory management options.
- The following main topics describe how to use the FastServe | Playout Remote Console: l "About the Remote Console" below l "The Playout Channel Preview Window" on page 68 l "The Clips Inventory Panel" on page 73 l "The Playlists Inventory Panel" on page 76

## About the Remote Console
- The Remote Console is installed by default together with the FastServe | Playout Web Configurator and automatically detects the number of available playout channels.

| Area | Description |
| --- | --- |
| 1	Top Bar | The top bar of the FastServe | Playout Web Configurator window displays the tabs available for the currently logged-in user. |
| 2	Configuration Menu | The Configuration Menu button provides options to set up the playout channels. l In the Channels Settings window, you can rename the output channels. l Click on View Errors to open the list of current errors. The Import Templates is not applicable to FastServe | Playout and should not be used. |
| 3	Channels View Mode | The Remote Console channels view can be configured in one of four (4) modes: l the Normal view allows you to fully monitor and control all playout channels. |

the Compact view allows to view a reduced channels preview and inventory together by decreasing the size of the preview windows.
the Small mode reduces the size of the preview windows even more, and only OSD information is displayed, without a video preview.
the Columns mode arranges the preview channels and the inventory in a vertical view.
- The Columns view is still in a beta testing mode and some visual issues may still occur when working with it.
- For more information, see "Configuring Channel View Options" on the next page.
Playout Channels	The channel preview windows allow to view and control the playout of Preview	individual channels.
- You can simply drag & drop a clip from the inventory directly into a preview window, or you can right-click on a clip on the list and select Send to > [playout channel].
- To remove a clip from the preview window, press the Abort button.
- For more information, see "The Playout Channel Preview Window" on page 68.
Playlists	This panel allows to create playlists of your clips inventory items and send them directly to the playout channels.

- Once a playlist is loaded to a playout channel, it also appears in the Playout Channel Preview area.

|  | Area | Description |
| --- | --- | --- |
|  |  | For more information, see "The Playlists Inventory Panel" on page 76. |
| 6 | Clips Inventory | The Remote Console also provides basic clip inventory management options. You can display up to a 100 items at once, together with a thumbnail. Using a dedicated configuration menu, you can also register clips directly into the database.  For more information, see "The Clips Inventory Panel" on page 73. |
| 6 | Minimized View | You can minimize the playout preview windows, the clips inventory or the playlist panel to save space in the main channels view. Click on the “Minimize” button:  It is still possible to send clips to minimized playout channels.  Click on a minimized channel to maximize it again. |

### Configuring Channel View Options
- Using the Preview Mode buttons and the Channels Settings window, you can select the appearance of the channels view or rename the preview windows.
- To change the layout of the preview windows: t Click on the button representing the preferred layout:

- The following options are available:
- Normal View

- Compact View

- Small View

- Columns View

- You can also maximize a single preview window by clicking on the  button.

- To rename the preview windows:
Click on the  button to access the Remote Console Configuration Menu and click on the Channel Settings option.

In the Names section, enter the preferred names of the ingest channels windows and click on Save.

## The Playout Channel Preview Window
- The FastServe | Playout Remote Console automatically detects the number of available playout channels and displays an adequate number of preview windows.
- n *The Remote Console provides live preview of content going through SDI. Please note, that this preview is for monitoring purposes only. If the live preview is not refreshing, verify if the “Remote preview” option in the VE tab of the Web Configurator is enabled. Moreover, if a secure HTTPS connection is used, then the certificate must be registered in the web browser.*
- Each playout channel preview window has the following menu options and buttons:

| Option | Description |
| --- | --- |
| 1	Minimize & Maximize | Minimize the channel preview window to the minimized view, or maximize the window. |
| 2	Configuration Menu | The Configuration Menu has the following options: Playout Settings where you can configure the behavior of the clip once it is loaded to the playout window. OSD Settings When a clip is loaded to the channel, you can also select to Create Thumbnail, Set IN Point or Set OUT Point. |
| 3	Playback Status Icon | This icon indicates whether the clip loaded to the playout channel is currently being played or paused, as well as the speed of the playout. You can disable this indicator in the OSD Settings window. |
| 4	I/O Device | Hover your mouse over the R icon to view information about the I/O device. |
| 5	IN and OUT Information | This indicator displays the IN and OUT settings of the clip. You can disable this indicator in the OSD Settings window. |
| 6	Mute Audio | Mute the audio of the playing clip. |
| 7	Play / Pause Button | Play or Pause the clip currently loaded into the playout channel. |
| 8	Abort | Stop the ongoing playback and remove the current clip from the playout channel. |
| 9	Break Loop | Use this button to break a loop playback. To play a clip in a loop, drag it from the inventory into a playout channel preview window while holding the left CTRL key on your keyboard. This will create an infinite loop for the selected clip. You can see whether a clip is looped in the Tooltip window which appears when hovering over the playout channel. |
| 10	Audio Meters | You can set how many audio meters to display and how to visualize audio peaks in the OSD settings. |
| 11	Clip Name | The clip name label. |
| 12	Playout Channel Name | The top bar displays the playout channel name. When the channel is playing a clip, the color of the bar changes to green. When a clip is paused or cued, the color changes to orange. |

### The Tooltip Window
- The playout channel preview tooltip window provides valuable information about the preview channel settings and about the currently loaded clip.
- The playout channel preview tooltip window displays the following information:

| Option | Description |
| --- | --- |
|  | Channel |
| Load clip action | This indicator displays which Load clip action option has been selected in the Playout Settings of the playout channel. |
| Framerate / Interlaced | The video format settings as set in the VideoEngine tab for the selected playout channel. For more information, see "The OUT Settings" on page 14. |
| Loops | The number of loops set for the currently loaded clip. To play a clip in a loop, drag it from the inventory into a playout channel preview window while holding the left CTRL key on your keyboard. This will create an infinite loop for the selected clip. Use the  button to break the loop. Clip |
| Name | The name of the currently loaded clip. |
| Path | The path to the clip’s location. |
| Type | The type of the clip: Video Clip, Image Sequence or Image. |
| Framerate / Interlaced | The framerate of the clip and information whether the video format of the clip is interlaced. |
| Growing | This is an indicator whether the clip is currently being transferred in the STP process. |
| Lock | This parameter informs whether the clip is locked. You can lock a clip in MediaCentral | Command or directly in the Remote Console inventory. |
| IN / OUT / Duration | The information about the IN and OUT points of the clip, as well as its total duration. |

### The Playout Settings
- The Playout Settings let you specify what action should be taken when a clip is loaded to the playout preview window. The following options are available:
Still on first frame - select this option to load the first frame of the clip and keep the clip paused until the Play button is pressed.
Play immediately - select this option to immediately start the playing the clip after loading it into the playout channel.
Cue and play next - select this option if you need playlist-like capabilities on a playout channel. You can then drag two clips into a playout channel and play them one after another. The information about the number of cued clips is displayed in the tooltip window.
- When this option is enabled and a channel is empty, the clip is played immediately. However, when the channel is already playing a clip, the newly dragged clip is cued in the background and an additional Rundown icon appears in the control section of the channel:

- Clicking on the Rundown button opens a dialog window with a list of cued clips. You can press the Play button to immediately play the selected clip, or remove items from the cue.

- n *It is recommended to use the Playlist panel to create cued playout. For more information, see **"The Playlists Inventory Panel" on page 76**.*

### The OSD Settings
- You can specify which elements to display on each playout channel preview window. Open the Configuration Menu of the chosen playout channel and select OSD Settings from the list of options.
- Select the required OSD indicators and click on Save.
- When a clip contains an embedded timecode, select the Use absolute TC option to display it in the preview window.
- You can also enable the display of Audio meters on the playout channel preview window. Select Auto to add the required number of audio meters based on the current clip, or choose between displaying 2, 4, 8 or 16 audio meters. The Peak duration option allows to add a delay to the top meters to better visualize the audio peaks.

- You can hide OSD data from the playout channel preview by clearing the “Enabled” option and pressing Save.

## The Clips Inventory Panel
The Inventory panel shows a list of items, a search bar, and the configuration menu button.

| Option | Description |
| --- | --- |
| 1	Search Bar | You can search for inventory entries using the Name property. Enter the name of the searched item and press Enter. |
| 2	Show Entries | Select the number of entries to be displayed on a single page: All, 10, 25, 50, 100, 1000. |
| 3	Minimize | You can minimize the Remote Console inventory to a dedicated panel.  Click on the Clips button to maximize the inventory window. |
| 4	Configuration Menu | The Configuration Menu contains the following entries: Register - use this option to register clips directly into the database. Select All / Deselect All - use this option to select or deselect all inventory entries. Lock Selected / Unlock Selected - use this option to lock or unlock selected items. Delete Selected - remove the selected item(s) from the inventory. The physical clip will still remain on the storage. Erase Selected- remove the selected item(s) from the inventory and the physical clip from the storage. |
| 5	Inventory entries | You can click on a column header to sort the contents of the inventory. The Name property is selected by default. You can also resize the column width to suit your needs. |
| Option | Description |
|  | The Video ID / Tape ID is assigned by an external program during Send to Playback. |
| 6	Next Page | Navigate to the next or previous page of inventory entries. |
| 7	STP and Lock indicators | When a clip listed in the inventory is growing, then the  icon becomes green. When a clip is loaded into a playout channel, it gets locked automatically. The  icon then becomes orange. When a clip is locked by the user (using the Configuration Menu or by right-clicking on an item and selecting Lock from the pop up menu), the color of the Lock icon changes to red. |
| 8	Thumbnail | You can create a thumbnail for inventory entries. Right-click on an item and select Edit from the list of options. You can then generate a thumbnail for the selected clip in the Edit Item window. For more information, see "Editing Items" below. |

### Editing Items
- The Remote Console inventory also allows to edit certain properties of the entries.
- To edit an inventory entry:
In the inventory panel, right-click on an item.
- A pop up menu appears.
Select the Edit option from the list. The Edit Item window opens.

- The following options are available:
Rename the item using the Name text field.
The Video ID field cannot be edited and it is filled automatically when a clip comes with an assigned Video ID.
Create a thumbnail for the item by selecting the frame number and pressing the Generate button.
The Range section provides information about the clip’s length.
Edit the IN and OUT points of the clip by entering the required values in the boxes.
Press Save to apply the changes or Close to exit the window without saving.

### Registering Items
- The Remote Console provides the option to register clips directly in the database, as an alternative to the automatic registration via WatchFolder or through send-to-playback.
- To register clips in the database:
Select the required clip, open the inventory’s Configuration Menu, and press on Register.
- The Register Item window opens.

Enter the direct Path to the item on the physical storage.
If the item is of the Image sequence type, select the check box.
Select whether a thumbnail should be created for the item and at which frame it should be generated.
Press Save to apply the changes or Close to exit the window without saving.

## The Playlists Inventory Panel
The Playlists Inventory panel allows to organize your Clips inventory items into thematic playlists.

| Option | Description |
| --- | --- |
| 1	Search Bar | You can search for playlists using the Name property. Enter the name of the searched item and press Enter. |
| 2	Show Entries | Select the number of entries to be displayed on a single page: All, 10, 25, 50, 100, 1000. |
| 3	Minimize | You can minimize the Playlists view to a dedicated panel.  Click on the Playlists button to maximize the inventory window. |
| 4	Configuration Menu | The Configuration Menu contains the following entries: New playlist- use this option to create a new Remote Console playlist. l Select All / Deselect All - use this option to select or deselect all playlists. Lock Selected / Unlock Selected - use this option to lock or unlock selected items. Delete Selected- delete the selected playlist(s). |
| 5	Playlists | You can click on a column header to sort the playlists view. The Name property is selected by default. You can also resize the column width to suit your needs. The Count column displays the number of items on the playlist. The Duration |
| Option | Description |
|  | value represents the total duration of the entire playlist in format: HH:MM:SS:milliseconds. |
| 6	Next Page | Navigate to the next or the previous page. |
| 7	Lock & STP indicators | When a playlist is loaded into a playout channel, it gets locked automatically. The  icon then becomes orange. When a playlist is locked by the user (using the Configuration Menu or by right-clicking on an item and selecting Lock from the pop up menu), the color of the Lock icon changes to red. |
| 8	Thumbnail | The thumbnail for your playlist is created automatically from the first item on the list. |

### Creating Playlists
- This topic contains information on how to create Playlists in the Remote Console.
- To create a new playlist:
- In the Playlists Inventory panel , click on the Configuration Menu and select the New playlist option.
- In the following window, enter the playlist name and click on Create.

- The playlist now appears in the panel.

### Editing Playlists
- This topic discusses how to rename your playlists and what options are available in the right-click context menu.
- To rename a playlist:
- t Right-click on a playlist in the panel, and select the Rename option from the menu.
- You can rename the playlist in the following window.
- Playlist Context Menu
- The following options are available when right-clicking on a playlist in the Playlists Inventory panel :

| Option | Description |
| --- | --- |
| Send to | Send the selected playlist to a playot channel preview. |
| Edit | Open the playlist for editing. A playlist and its list of items can also be accessed with a doubleclick. |
| Delete | Delete the selected playlist. |
| Lock | Lock the playlist to protect it from renaming or deletion. |
| Option | Description |
| Duplicate | Create a duplicate playlist. |
| Rename | Enter a new name for the playlist, as described |

### Loading Playlists to Playout Channels
- There are multiple ways to send a playlist to a playout channel preview:
From the main Playlists Inventory panel view:
drag and drop the playlist to a playout channel preview window.
right-click on the playlist and select Send To > [Channel].
In the clips view of the Playlists Inventory panel :
open the Configuration Menu and select Send To > [Channel].
highlight the clip to be used as the first playout item and drag and drop the playlist into a playout channel preview window.
right-click on the clip in the playlist to be used as first playout item and select Send To > [Channel]. n *Loading an empty playlist to a playout channel is not possible and will result in an error message.*
- Once a playlist is sent to a playout channel, a dedicated editor appears in the main channel preview area. You can also drag and drop items from the Inventory directly into the Playlist Editor in the preview area. For more information, see "The Playlist Editor" on page 80.
- n *The** behavior of the first loaded clip of the playlist depends on the Playout Settings of the given channel. For more information, see **"The Playout Settings" on page 71**.*
- n *To** a load a playlist with Loop enabled, press the CTRL button when dragging and dropping it to the playout channel preview window.*

### Working with the Clips View in the Playlist
- This topic contains all the tasks that you can perform when working with clips in the Playlist.
- Playlist Clips View

| # | Description |
| --- | --- |
| 1 | Configuration Menu, which contains the following options: l Lock playlist l Rename playlist l Send playlist to l Select All/ Deselect All l Follow / Unfollow l Delete Selected |
| 2 | Clip thumbnail |
| 3 | Growing indicator and lock status |
| 4 | Clip name |
| 5 | Video Id, which is assigned by an external program during Send to Playback |
| 6 | In and Out points of the clip |
| 7 | Duration of the clip |
| 8 | Duration of the entire playlist |

- Adding Clips to the Playlist
- Drag and drop clips from the Clips Inventory panel to the Playlist area. You can select multiple items in the Inventory panel using the SHIFT or CTRL buttons. To position your clip(s) in the Playlist, drag the selected clips to the desired location (before or after) any other clips in the Playlist.
- n *Once a clip is added to a playlist, its lock icon in the Clips Inventory becomes orange. The Edit option is no longer available, which means that it is not possible to rename it, change the thumbnail or set the **In**/Out points in the Inventory panel.*
- Clearing the Playlist
- You can remove all clips from the playlist by using the SHIFT button to select all items and pressing the DELETE button. Or open the Configuration Menu > Select All , and then Delete Selected.
- Clips Context Menu
- The following options are available when right-clicking on a clip in a playlist.
Send to - send the playlist to a playout channel and use the selected clip as the first playout item. l Edit - open the Edit playlist item window, where you can assign an In and Out point.

Unfollow - when a clip is unfollowed, a red line appears above it and the playout will automatically stop after the preceding item finishes playing. The playout needs to be then manually restarted.
- For more information, see Playing Clips in a Playlist. l Delete - remove the clip from the playlist.
- n *This operation does not remove the clip from the Clips Inventory.*
- Reordering Clips Within the Playlist
- Changing the order of your playlist clips is quick and simple.
- To reorder playlist items:
- t Select a clip that you want to reorder in the playlist ( a blue line appears above it), and drag it from one location and then drop it into the new location in the playlist.
- n *Once the currently playing clip and the next one have an orange lock (are locked), you can no longer drag and drop another item between them.*

### The Playlist Editor
- Once a playlist is loaded to a playout channel, a dedicated playlist editor appears next to the preview window, and additional icons are available in the playout channel preview window.
- You can show or hide the Playlist Editor using the  toggle.

- The Abort  button now ejects the entire playlist from the playout channel, not just the currently loaded clip.
- You can advance to the following playlist item using the  button.
- Playlist Editor View

| # | Description |
| --- | --- |
| 1 | Configuration Menu, which contains the following options: l Lock playlist l Rename playlist l Send playlist to l Select All/ Deselect All l Follow / Unfollow l Delete Selected |
| 2 | Playlist Items. l You can advance to next playlist items by using the Next button in the playout preview window. You can also double-click on a clip on the list, and the playout settings of the channel determine whether the clip will be immediately played, or cued, or paused on the first frame. To change the |

| # | Description |
| --- | --- |
|  | playout behavior on the spot, right-click on a clip and select Play > Still on first frame or Play immediately or Cue and play next. You can rearrange the playlist items using drag & drop, in the same way as described in "Working with the Clips View in the Playlist" on page 78. Assign an In and Out point of the playlist item by right-clicking on it and selecting Edit from the list of options. Set the follow behavior for the clip by right-clicking and selecting Unfollow or Follow. If the Follow option is selected for this clip, the clip will automatically play if it is the next clip cued. If Unfollow is enabled, the playlist will stop playing when it gets to this clip. You need to manually press theNext button, or right-click on a clip and select Play > Still on first frame / Play immediately / Cue and play next to resume playback. You can send the same playlist to an additional playout channel by selecting Send to from the clip context menu. n Any changes made to a playlist instance will be replicated to all playout channel preview windows where the playlist is currently loaded. You can add more items by dragging and dropping them directly into the Playlist Editor from the Clips Inventory. |
| 3 | Duration label and Loop toggle. The Duration label displays the total duration of the entire playlist. The Loop toggle allows to enable or disable the looping of the entire playlist. By default, the Loop option is disabled. n To load a playlist with Loop enabled automatically, press the CTRL button when dragging and dropping the playlist to a playout channel. |
| 4 | Position and Keep Current Item Visible toggles. The Position label displays the current position timecode. To view the remaining timecode, click on the timecode label. The Keep Current Item Visible option enables an auto-scroll which allows to always keep the currently playing item in the display area. This option is especially useful when a playlist has a large number of items. |

# 4	Workflows with FastServe | Playout
- The following chapters contain information on how to configure your FastServe | Playout server to work with various workflows.
- l "Integration with Avid NEXIS Storage" below l "Integration with MediaCentral | Production Management" on the next page l "Working with Send to Playback" on page 91 l "Working with the WatchFolder" on page 101

## Integration with Avid NEXIS Storage
- FastServe | Playout allows to playback videos directly from the Avid NEXIS storage. To integrate with NEXIS, the mount has to be properly configured in the Web Configurator.
- Make sure that the NEXIS Client driver installed on the FastServe | Playout server is compatible with your NEXIS storage version.

### Update of the NEXIS Client Driver on Linux
- This procedure contains information on how check the version of the currently installed NEXIS driver.
- To check the version of the NEXIS storage:
Navigate the web browser to the NEXIS Management Console and locate the version number.
When the version number is located, use a Telnet client (such as PuTTY) to connect to your FastServe | Playout server's console. Login with the credentials provided by your system administrator and type: rpm -qa | grep NEXIS
- The command returns the NEXIS components installed on the system, for example:

Locate the AvidNEXISClient and compare the version number with your NEXIS storage version. If the version on the FastServe | Playout is older, please upgrade the component.
- To upgrade the Avid NEXIS Client on FastServe | Playout:
Download the appropriate NEXIS Client version from the Avid Download Center or use the one from the NEXIS storage system.
Copy the installer to the FastServe | Playout server's location: \\IP_of_FastServe\public
When the copying is finished, navigate to the directory where you uploaded the new driver using a
- Telnet client:
- cd \data\public
Uninstall any previous version of the Client:
- ./usr/sbin/avid-nexis-uninstaller
Type the command below (replace with the appropriate Avid NEXIS Client version): ./AvidNEXISClient_el7.centos.x86_64_7.9.0_9.bin
It is recommended to reboot the machine.

### Mounting the NEXIS Storage with the Web Configurator
- This procedure contains information on how to mount the NEXIS storage using the FastServe | Playout Web Configurator.
- CentOS7 - based FastServe | Playout
- The integration with Avid Shared Storage under CentOS7 is done natively, through regular Linux-based mount. To mount NEXIS to FastServe | Playout, open the Web Configurator, go to the System tab and navigate to the Mounts section. A detailed description of this procedure is provided in "The Mounts Settings" on page 36.

## Integration with MediaCentral | Production Management
- FastServe | Playout can be employed for workflows with the use of OpAtom pattern video files that are indexed in an MediaCentral | Production Management database and are stored physically on NEXIS. Such files might be driven by a Maestro | News controller or MediaCentral | Command.
- To work with MediaCentral | Production Management, you need to configure FastServe | Playout on Linux and Windows. Depending on the controller choice, it can also be necessary to configure the controller too (e. g. Maestro | News).

### Configuration of the FastServe | Playout Linux Server
- To setup a connection with an MediaCentral | Production Management system, go to the Web Configurator and navigate to the Commander tab. Locate the External sources section:

- Press on Add new external source... and enter the required information:

| Field | Description |
| --- | --- |
| Name | Contact your system Administrator to obtain a serviceRealm parameter of MediaCentral | Production Management. It can be tracked in MediaCentral's ACS monitor, in the avid.pam section. It is presented in a form of a five-section UID, for example: Enter the whole UID in the Name section. |
| Address | Enter the IP address of the machine with PAM WebServices, followed by the port number, e.g. 10.1.1.1:8080. |
| Workgroup | Enter the workgroup name used in the PAM environment. |
| Default path | Default path name is “/”. This setting does not need to be changed. |
| Username | Enter the username for the MediaCentral environment. |
| Password | Enter the password for the MediaCentral environment. |
| Mapping src | Enter the same NEXIS mount point that was used when configuring the NEXIS storage in the Web Configurator. |
| Mapping dest | Enter the mapping destination address. |

### Maestro | News Configuration
Maestro | News needs to be configured to enable MediaCentral | Production in the video server environment.
- To configure MediaCentral | Production Management in Maestro | News:
In Maestro | News Controller, go to Customize > Settings.
- Navigate to the MAM tab.

Press “+” to add a new entry and provide the necessary information:

| Option | Description |
| --- | --- |
| Name & Identity | With the connection selected, type in a connection Name, and then set the following fields: |
| Option | Description |
|  | System ID - the serviceRealm value is taken from the MediaCentral | Cloud UX settings; MAM type - select the Interplay | Production type. |
| Database server | Set the database server name and enter the IP address of the ACS bus. Select the required form of authentication. |
| Login/ Password | Type in the user name and password for the selected authentication method. |

Select Apply and click on the TEST button to see if the connection has been setup correctly. The Status column provides information whether the connection has been established properly. Click OK to close the window.
When the system is properly configured, a new tab appears in the Maestro | News Browser window.
- When selected, it shows contents from MediaCentral | Production Management:

## MediaCentral | Command Integration
- Mediacentral | Command is a device automation system that integrates with any Newsroom Mgmt. or MOSenabled newsroom computer system (NRCS) and provides broadcasters precise control over a range of playout devices, including video servers, still stores, and character generators in a broadcast news environment. Backup services and mirrored playout make this system reliable while the user interface allows you to control multiple production devices. Command also works with Avid Service Framework applications and services to ensure you always have the best system performance.
- FastServe Playout Plugin for Command
- Avid MediaCentral | Command requires a prior installation of the FastServe Playout Plugin for Command. Download the appropriate version from the Avid Download Center or contact your system administrator. n *To find out about any changes to the FastServe Playout Plugin for Command, please refer to the Avid FastServe Plugin for Command ReadMe document on the ** ** **.*
- The FastServe Playout Plugin needs to be installed on the same machine as MediaCentral | Command. Before the installation, launch the Avid Workgroup Properties and stop all services:

- Then, double-click the FastServe Playout Plugin installer and complete the installation. After the installation is complete, launch the Avid Workgroup Properties and restart all services.
- To verify the version of the FastServe Playout Plugin:
To verify if the correct version of the plugin is installed, navigate to the following folder: *C:\Program Files (x**86)\Avid\iNEWS** Command\device\**avidvideodeviceservice**\lib*
Right-click on VideoTestPlugin.dll, select “Properties” and in the “Details” tab confirm the version number.
- n *All logs for the plugin are stored in the following location: C:\ProgramData\Avid\iNEWS Command\**FastServePlugin**\Logs.*
- The next step is the configuration of MediaCentral | Command to work with the specific FastServe | Playout server.
- To configure FastServe Playout Plugin for Command:
Open the Avid Service Configuration tool, expand the tree of available services and choose Avid Video Device:

If prompted for a password, press OK.
In the Plug-in Chooser tab, select FastServe from the drop-down list and press OK. All services will be restarted.
When all services are back online, go to the Avid Video Device Service Settings tab:

- Configure the necessary fields:

| Field | Description |
| --- | --- |
| Device Name | Enter the name of the device, which must match the name used for the device channel in the Command system settings. |
| Frame rate | Set the required frame rate and make sure the Drop Frame option is selected. |
| Timeout | Set the required Cue/Start/Pause/Eject timeout values. The default values (in seconds) are: – Cue Timeout: 6-10 |
| Field | Description |
|  | Start Timeout: 6-10 Pause Timeout: 3-10 Eject Timeout: 5-10 |
| OCIP Host | Enter the IP address of the FastServe | Playoutserver. |
| OCIP Port | Set the OCIP port (10001 by default, but it can be changed in the FastServe | Playout Web Configurator). In a configuration with redundancy Command systems, the OCIP port should be 10001 for one system, 10002 for the next system, 10003 if there is a third system, etc. If there are 2 plugins in a redundant setup using the same OCIP port, then the system will not function properly. |
| Treat autoStill as Cue | This setting needs to match the FastServe | Playout setting in the Web Configurator > Commander tab.  It allows to display (play with speed = 0) the first frame of the video after sending Cue. |
| Show only closed files | When enabled, only transfer-complete files will be visible in the Command inventory. All clips that are “in progress”, or are “still transferring” will not appear in the inventory. This option can be used to prevent the playout of growing, unfinished content on air. |
| Show xfer PWT only | Enabling this option results in showing transfer-complete clips in the inventory, as well as growing clips, but only the ones with the “Allow PWT” option enabled in Media Composer. The clips without the PWT flag in Media Composer, will appear in the inventory only after the transfer is complete. |

Click Apply and then click Yes when asked to restart the device service. You can then close the Avid Service Configuration application.
The plugin is now configured.
- After the FastServePlugin is setup, the following step is to configure the MediaCentral | Command application.
- MediaCentral | Command Configuration
- This procedure lists all steps required to configure MediaCentral | Command for FastServe | Playout workflows.
- To configure MediaCentral | Command:
Launch the MediaCentral | Command application and navigate to Tools > System Settings.
From the tree, expand Channel and choose Device Channels. Then, press the Add button to add channels in your MediaCentral | Command application.

- Enter the required information:

| Field | Description |
| --- | --- |
| Channel name | Set the name of the channel, e.g. OUT2. |
| Device name | Choose fastserve from the drop-down list. |
| Device type | Select Other video from the list. |
| Channel index | Set the channel index. The number needs to be higher than 0 (e.g. select 1 for channel nameOUT1). n Leaving the default value “0” prevents the channel from working. |
| Note | Add a note about the device. |

Click Apply.
Then, go to Channel > Groups and click on Add to create a new group to which all configured channels are to be added.
- Set a Name for the channel and select Standard in the Channel type section.
Click Apply.
- The inventory is now visible in the MediaCentral | Command application.
- Managing FastServe | Playout Inventory with MediaCentral | Command
- Open the MediaCentral | Command inventory window, and right-click on an item to view further options: l Delete - removes the clip from inventory, and physically from the internal FastServe | Playoutstorage. l Protect - locks the clip and prevents it from being deleted directly from the Command interface. l Remove protection - removes the lock option and enables the Delete field back in the menu.
- l Rename - renames the selected clip (ID and Slug). Prohibited symbols for clip's ID are:
- \ / : * ? " < > |,
- Thumbnails in Playlist View
- In MediaCentral | Command, it is possible to display thumbnails of items present in the inventory (assuming, that the generation of thumbnails was enabled when these items where registered to the database).
- To enable thumbnail registration: t Open the FastServe | Playout Web Configurator and go to Commander > Thumbnails.

- For MediaCentral | Command, the required Format is JPG.
- n *Please contact Avid Support to assist you with generating thumbnails for entries already existing in your inventory, which were missing proper thumbnails or the thumbnails had been created using the wrong format.*

## Working with Send to Playback
- This topic describes the workflows of Send to Playback from Media Composer to FastServe | Playout servers.
- There are two types of workflows, which you can use to perform STP: l "Intra-frame Workflow" below l "Long GOP Workflow" on the next page
- n *When performing Send to Playback from Media Composer or MediaCentral | Cloud UX, it is prohibited to use these symbols as clip names/IDs: \ **/ :** *** ?** " < > |, and white space.*

### Intra-frame Workflow
- When working with an Intra-frame STP, there is no need to select a required format in the FastServe | Playout Web Configurator. The destination file, which is in OP1a pattern, will be generated in the same format as the input file. Thus, the input sequence must be of one of the supported formats by the Transfer Manager.

### Long GOP Workflow
- The Long GOP workflow and architecture is completely different than the Intra-frame example above. It is based on the creation of a temporary media file (TMF file) inside the NEXIS/Temp storage.

- This file can be either deleted after the STP process completes or it can be kept for future actions. As a result, the availability of the clip for playout is a bit longer in case of Long GOP codecs than in the case of intra-frame codecs.
- When Send to Playback is executed from Media Composer, the TMF file (Temporary Media File) is created (mixed down, rendered, transcoded) by Media Composer to the Avid Shared Storage (NEXIS).
- Transfer Manager (internal FastServe application) grabs the TMF file (which is still being transferred by Media Composer) and converts it into an MXF growing file format while transferring it to the internal FastServe | Playout RAID storage.
- As soon as the clip appears in the internal FastServe | Playout RAID, it is registered in the FastServe | Playout database (VIDEO_ENGINE DB) by the Transfer Manager. Transfer Manager regularly updates the video's duration in the database to make it available for the controlling application. Consequently, the video can be played on-air by an appropriate controller.
- There is a minimum duration limit for clips that are going to be STPed to FastServe | Playout. For XDCAM, there is no limit (even 1 frame clips can be sent to playback). For DNX files and all other intra frames, it is 2 seconds.

### Compatible Formats
- Media Composer and MediaCentral | Cloud UX allow to perform Send to Playback to FastServe | Playout in the following formats:
- R - Send to Playback (STP) + Play-while-Transfer (PWT)
- P - STP without PWT

	XDCAM HD R	R	R	R
- 50

| XDCAM HD 35 | R | R | R | R |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| DNX HD 185/220 10bit | R | R | R | R | R | R |
| DNX HD 120/145 | R | R | R | R |  |  |

	AVC-Intra	R	R	R	R
- 100

| XAVC-Intra 100 | R | R |  |  | R | R |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| AVC Long GOP 12 (Panasoni c) | P | P | P | P |  |  |  |  |
| AVC Long GOP 25 (Panasoni c) | P | P | P | P |  |  |  |  |
| AVC Long GOP 25 (XAVC-L) | P | P |  |  |  |  |  |  |
| AVC Long GOP 35 (XAVC-L) | P | P |  |  |  |  |  |  |
| AVC Long GOP 50 (Panasoni c) | P | P | P | P |  |  |  |  |
| AVC Long GOP 50 (XAVC-L) | P | P | P | P |  |  |  |  |
| DNxHR LB |  |  |  |  |  |  | R | R |
| DNxHR SQ |  |  |  |  |  |  | R | R |
| DNxHR HQ |  |  |  |  |  |  | R | R |
| DNxHR HQX |  |  |  |  |  |  | R | R |
| XAVC-I 300 |  |  |  |  |  |  | R | R |

- n *In** some cases, DNX clips generated by 3rd party components can have issues with their file header. If a sequence in the editor appears to be stuck at some point, add the following entry to the **TransferManager** configuration file (TMServer.xml located in: /data/**FastServeTM**):*
- <VerifyEssence>1</VerifyEssence>
- STP Good Practices
- When working with the STP and PWT mechanisms, take into account that seeking through a clip, while this clip is still in progress (still growing, transferring over STP), is not efficient and may cause the audio or video to desynchronize. Thus, if PWT is used, it is recommended to transfer the final sequence, and set an IN point. Play-while-Transfer from an IN point other than 0 is not recommended.

### Invalid Characters In STP Asset Names
- The naming convention for asset names used for STP must comply with Avid Interplay environment standards.
- The following table lists the valid and invalid characters (also known as special characters) for Interplay.

|  | Allowed | Not Allowed |
| --- | --- | --- |
| Avid asset names |  | Characters: / \ | |
| File asset names and Interplay database folder names | All characters allowed for files in Windows | Characters: * ? : / \ " < > | Names ending with a dot Names used as DOS devices (LPT1, com1, .., .,, for example) |
| Property names (metadata field names) |  | Characters: / \ | |
| Video ID (Tape ID) metadata field |  | The only characters allowed are letters, numbers, underscores, and hyphens. The Video ID metadata property in Interplay Access is editable and accepts any character. However, valid characters are enforced in Send to Playback operations. |
| Users and user groups |  | Characters: / \ |" ' |

- Although the following characters are valid for users and user groups in Interplay, they are not supported when naming projects, bins, and users on Avid editing systems:
- : * ? < >
- Do not use these characters in Interplay user names or group names.
- For information on International Character Support (ICS), see the Interplay Help.

### Configuring Send to Playback
- Avid Interplay Transfer lets you send finished sequences to a configured playback device. When there is an Interplay Transfer Client configured, a Transfer menu appears in Media Composer.
- Select Transfer > Send to Playback, and select the profile for the server to which you want to send the sequence.

- To configure STP from Media Composer to FastServe | Playout:
- To configure the servers receiving the STP sequences in Media Composer, click the Settings tab and go to the Transfer option.
*The Transfer Settings dialog box appears only if your system is part of an Avid Interplay environment and you have configured Avid Interplay Transfer.*
- Go to the TMClient.ini tab. In the Other Workgroups area, click Add and specify the server details.
- Click OK to close the Transfer Settings dialog box.

- Once the servers are properly configured, they appear in the Transfer > Send to Playback menu.
- Ensure that the Media Composer workstation has a valid connection to NEXIS and an active workspace.

- To select a shared storage workspace in Media Composer, go to Settings > Media Creation > Mixdown & Transcode.

- The same workspace needs to be mapped in the FastServe | Playout WebSetings:

- If you are working with Maestro | News, make sure to map proper folders: Web Configurator > Commander > Folder mappings (on Linux):

- On the Maestro | News side, remember about mapping inside the Window-based Web Configurator, which is done in the opposite manner:

- This will allow to preview clips on Windows, which are played from a Linux based database.
- (Long GOP codecs only) Select the required codec in the Web Configurator > Commander tab. In the Send To Playback section, configure the necessary options.

*In workflows with Maestro | News, remember that a Windows-based FastServe | Playout does not support growing files. Hence, there is no possibility to set in-out points with a slider or any other GUI tool.*

### Executing Send to Playback
- When all your edits and cuts are complete and the final sequence (or its components) are already transcoded to desired codec, framerate and resolution, then the STP process can be started in one of two ways, as described below.
- To execute Send to Playback:
In Media Composer’s bin, right-click on a sequence, select the Send To Playback option and choose the server to which the sequence should be sent.
- - or -
- In Media Composer’s Clip Bin, highlight the sequence, then go to Transfer > **Send ****To**** Playback **and choose the server to which the selected sequence should be sent.

After selecting the profile for the server to which you want to send the sequence, the Send to Playback dialog box opens.

In the Send to Playback dialog box, do the following:
Type a tape ID name, which will be used as the final clip name in your playout device.
(Option) Select PWT (Play While Transferring), if you want to play this clip while it is still growing.
(Option) Select Overwrite, to overwrite the tape ID name in Interplay Transfer if the same name exists.
- Press OK to confirm. The system immediately starts the send to playback operation.
Sometimes, there will be a mixdown of audio done before the transfer starts. Check the Media Creation > Mixdown & Transcode settings in your Media Composer, as well as the Transfer Settings and the Send to Playback section:

When working with Long GOP codecs, Media Composer will now start the TMF file generation and the Transfer Manager on the FastServe | Playout side will start transferring it to its internal storage, along with checking-in to the local inventory. The check-in will be repeated every 2 seconds to update the current duration.
- When LongGOP transfers are not required, and there is no need to have Long-gop device displayed in Media Composer, you can change the LongGOP format to None in WebSettings > Commander tab:

- As a result, Media Composer users will only see the Intra frame device for STP (without the -HD suffix).
- In case of Intra-frame codecs, the footage will be transferred directly to storage with its details based on AAF information, without TMF file generation.

### Playout
- From the moment the growing clip (transferred clip) is registered in the local inventory, it is playable by FastServe | Playout (please refer to the table above to verify which codecs can be used in PWT scenarios).
- In case of Maestro | News, the local database can be viewed in the Browser:

- The clip can be dragged to a rundown, cued and played. Inside Maestro | News, there is a current length indicator (in percentage) and a triangle, which indicates that the clip is still growing. n *You can view a growing clip using a Linux based FastServe | Playout.*
- n *The** default transfer bandwidth is 300 MB/sec. This applies to the whole STP bandwidth, which means that if there are 4 parallel clips being transferred, the maximum bandwidth will be split into 4.*

### Remote Send to Playback
- The 2022.12 release of FastServe | Playout introduces the option to send local assets to a remote FastServe server that is not part of your local area network. Instead of transferring the files via an Avid NEXIS, you can now utilize an STP transfer over the HTTPS protocol.

- Remote STP allows to perform a file transfer between distant locations, via a securely encrypted protocol. This workflow also does not require a connection between FastServe | Playout and Avid NEXIS. To further enhance safety, the FastServe | Web Configurator needs to be accessed through a secure connection, as described in "The Configuration Settings" on page 48.
- To enable remote Send to Playback:
Log into the FastServe | Playout Web Configurator, and go to Commander > Send To Playback.
In the Hybrid STP section, enter the required Cloud UX configuration details:

- For more information, see "The Send to Playback Settings" on page 22.
- Differences Between Regular and Remote STP
- With a remote STP LongGOP transfer, Media Composer generates an MXF file instead of an TMF file in the Nexis > Temp location. The clip transfer begins only when the MXF file is fully generated by Media
- Composer. In case of a regular STP, the transfer begins earlier, while the TMF file is still being created.
- When working with remote STP, the video server (FastServe | Playout) cannot delete the temporary MXF files
- (from NEXIS> Temp) because it does not have access to Avid NEXIS. This connection is now done on the MediaCentral | Cloud UX side, and when remote STP is configured, the Delete temporary files option is unavailable (grayed out).
- In case of intra-frame remote STP transfer, it is impossible to send sequences with additional effects.
- Closed Captions are not passed through remote STP, regardless of the transfer type. You can only transfer the ANC track through a regular STP.
- The following formats are currently not supported by Media Composer when working with remote STP: l 1080i59 XAVCL50/35/25 l 720p59 AVC Long GOP 50/25/12 l 720p59 XAVCL50
- For more information about remote Send to Playback, please refer to the *Avid MediaCentral | Cloud UX ReadMe v2022.12 *or later.

## Working with the WatchFolder
- The Linux distribution of FastServe | Playout contains the WatchFolder installer. The WatchFolder is designed to allow controlling applications (such Avid Maestro | TX or Maestro | News) to connect directly to the VideoEngine_DB database and operate only on records which exist there. It is used in playout scenarios to register clips in the database or to limit the copying transfer to the machine’s RAID.

### WatchFolder Configuration
- The WatchFolder parameters are configured in the FastServe | Playout Web Configurator, as described in "The WatchFolder Page" on page 32.
- When the Enable autoregister option is checked, the clips that are copied to the WatchFolder destination, will also be registered in the VideoEngine_DB. The following requirements need to be noted when preparing clips for the WatchFolder workflow:
- l the clip extension needs to be listed in the Accepted extension field, l the clip needs to be supported by ffmpeg.
- If the clip extension does not match any of the accepted extensions, a warning will be displayed and the copying of the clip will be prohibited. In case the chosen clip is not supported by ffmpeg - it will not be registered in the DB.

- The automatic registration may work with auto-throttling or manual throttling. This means that the speed of writing and reading clips on RAID will be limited, either automatically (green section in the image above) according to current usage, or manually (blue section in the image above). The throttling was introduced to protect on air playout from any possible RAID abuse. In cases, where there was playout on air and intense copying of clips to the RAID was performed in the background, the RAIDS performance was compromised and the playout’s quality suffered.
- n *Autothrottling** has been optimized for FastServe | Playout UHD machines, where the basic workflow focuses on writing to RAID. When reading from the **WatchFolder** is required, or you encounter any issues with copying media on FastServe | Playout HD, please contact your Avid Administrators.*

### Inventory Management
- This topic describes the steps required to configure and manage your WatchFolder inventory and how to add clips to the FastServe | Playout (VideoEngine_DB) inventory.
- To set up the WatchFolder inventory:
Login to the FastServe | Playout Web Configurator and open the WatchFolder page. In the Status section, make sure that the WatchFolder is up and running.

Expand the Autoregister section and make sure that the Enable autoregister option is active.

Check the destination mapping in the General section.

- To add clips to the database:
Open the Clips_WF directory, which is the WatchFolder gate exposed on a server with Samba. You can access it using the Windows explorer.

Open the Clips_WF directory. You can see the content of the folder which is mapped in the Web Configurator > WatchFolder > Clip Destination Path field.
To add a clip, simply drag it and drop into the Clips_WF folder.
- Renaming Clips
- To rename clips in the directory, open the Clip_WF folder using the Windows explorer as described above. Right-click on the selected clip and select Rename. You can also select the clip and press F2 on your keyboard.
- Deleting Clips
- To remove clips from the directory, open the Clip_WF folder using the Windows explorer as described above. Right-click on the selected clip and select Delete. You can also select the clip and press the Delete button on your keyboard.

A Mapping Source & Destination Parameters

# A	Mapping Source & Destination Parameters
- The FastServe | Playout server comes with Linux as an operating system. Thus, the folder structure and addressing methods are slightly different than for Windows operating machines on which various controllers such Maestro | News are located.
- The “Folder mapping” section in the Web Configurator > Commander tab allows to solve the addressing issues. For example, if you want to access files located on a particular storage, this storage has to be mounted on both systems: Windows and Linux.
- Let's assume that our video clips are accessed from Windows from the following location:
- \\nexis\my_workspace\video_clips
- The Maestro | News controller, like many others, will send the information to FastServe | Playout that the given file is located under:
- \\nexis\my_workspace\video_clips\my_clip.mxf
- Such path is not understood by the Linux system and has to be mapped to a Linux-like location. For example, mount to NEXIS (see "The Mounts Settings" on page 36) is accessible under the /AvidNexis mount point. This means that from the Linux level, the same video clips are available in the following location:
- /AvidNexis/video_clips
- The “Folder mapping” section of the Web Configurator gives the option to map, or convert, Windows-based paths to Linux-based ones.
- In the above example, if:
- “Mapping src” is set as “\\nexis\my_workspace\video_clips”, whereas “Mapping dest” is set as
- “/AvidNexis/video_clips”. This way both systems: a Windows PC with Controllers and a FastServe | Playout Linux machine can access the same network storage “video_clips”.
B FastServe | Playout Best Practices

# B	FastServe | Playout Best Practices
- The following topic highlights important information you should keep in mind when working in an Avid FastServe | Playout environment.
- The following topics are discussed:
- Remote Console Useful Tips
- The FastServe | Playout Remote Console allows to easily monitor the playout channels and inventory on the server. With the recent addition of the Playlists Inventory panel , you can also create numerous playlists and send them directly to your playout channels.
- This topic contains useful information about the Remote Console capabilities.
- Refreshing of the Remote Console
- Please note that the bigger the number of clips in the Clips Inventory, the slower the refresh rate and the overall performance of the Remote Console. If your Clips Inventory contains a large number of items (above 100), it is generally not recommended to use the "All" value for the Show Entries parameters. To maintain a good Remote Console performance, limit the number of items displayed on one page to "100".

- Working with the Playlists Panel
- The list below details certain workflows elements which should be considered when working with the Playlists Inventory panel :
Auto lock of playlist items - whenever a clip is added to a playlist, it automatically receives a lock status (indicated by an orange lock icon in the Clips Inventory panel) to prevent accidental deletion. However, this lock also prohibits the users from editing certain parameters of the clip ( such as the thumbnail or the clip name). Thus, if these parameters need to be changed, the clip must be removed from all playlists.
Images on playlists - it is not allowed to use image items on the playlists. Although it is technically possible to add such entries, such action may introduce unwanted consequences in cueing and playout of subsequent clips.
Cue of next playlist item - the Cue of subsequent playlist item is started 10 seconds before the current clip finishes playout. This means, that if the clips are shorter than 10 seconds, then more than one clip may be cued and prepared for going on-air.

- In the picture above, both clips are marked with an orange lock. At this moment, it is not possible to insert a new clip in between, because it is less that 10s for clip number two to go on-air.
B FastServe | Playout Best Practices
Editing on air - because of the cueing mechanism described in the point above, it is recommended to be very mindful when editing a playlist which is currently on-air.
Loop a playlist - you can loop an entire playlist either by using a dedicated Loop button in the Playlist Editor, or by dragging a playlist from the Playlists Inventory panel into a playout channel preview window while holding down the CTRL key.
Number of items - a single playlist can contain up to 100 items.
Out of range error -sporadically, an "out of range" error appears when using the Playout Settings > Play immediately option. Each occurrence should be reported to Avid Customer Support with accompanying system logs.

# Avid FastServe | Playout

# Version 2023.10.3 ReadMe
- Version 2023.10 Information
- FastServe | Playout v2023.10 has been developed as a Feature release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at:
- https://www.avid.com/resource-center/avid-long-term-maintenance-releases
- This release is designed specifically for usage on latest edition of CentOS 7.9 based FastServe | Playout video servers. It is also compatible with existing CentOS 7.4 Gen 1 video servers. n *Avid recommends that customer production environments remain non-public in a separate domain, or otherwise isolated from external public access.*
- Important Information
- Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
- See the following Avid Knowledge Base link for the most up-to-date FastServe | Playout documentation (all releases):
- https://avid.secure.force.com/pkb/articles/en_US/readme/FastServe-Playout-Documentation
- Revision History

| Date Revised | Changes Made |
| --- | --- |
| August 21, 2025 | The 2023.10.3 hotfix release. n This hotfix addresses issues with VDCP control and is recommended for customers encountering these problems. The new VECommander installer also contains the fix implemented in the 2023.10.1 release. |
| November 27, 2024 | The 2023.10.2 hotfix release. n This hotfix addresses issues with STP processes and is recommended for customers encountering these problems. It is not mandatory for all users. In this hotfix release, we have updated the TransferManager component. |
| November 26, 2024 | The 2023.10.1 hotfix release. n This hotfix addresses issues with playlists in the Remote Console and is recommended for customers encountering these problems. It is not mandatory for all users. |

What’s New in Version 2023.10.3

| Date Revised | Changes Made |
| --- | --- |
| December 11, 2023 | Video-over-IP certification for FastServe | Playout Gen 2 servers. |
| October 31, 2023 | Initial v2023.10 publication |

# Contents
	What’s New in Version 2023.10.3	 2
	What’s New in Version 2023.10.2	 3
	What’s New in Version 2023.10.1	 3
	What’s New in Version 2023.10	 4
	Security Guidelines	 6
	Fixed in Version 2023.10.3	 6
	Fixed in Version 2023.10.2	 6
	Fixed in Version 2023.10.1	 6
	Fixed in Version 2023.10	 6
	Limitations and Known Issues	 7

# What’s New in Version 2023.10.3
- In the v2023.10.3 hotfix release, we have updated the following component: VECommander module.
- Check "What’s New in Version 2023.10" on page 4 for information about Certified Workflows and Supported Formats.
- n *This hotfix addresses the issue where delay in cue was sometimes observed when controlling FastServe | Playout using the VDCP protocol. The new **VECommander** installer also contains the fix implemented in the 2023.10.1 release.*

## Installation Instructions
- In the v2023.10.3 hotfix release, we have updated the VECommander (VECommander-2023.10.1.13gfa8b3c878-centos_7.4-x86_64.rpm) component.
- To update the VECommander module:
Copy the component to /data/public of your FastServe | Playout server.
Log into your server using PuTTY, or a similar client, and navigate to /data/public.
Install the new version of the VECommander module:
- rpm -Uvh VECommander-2023.10.1.13-gfa8b3c878-centos_7.4-x86_64.rpm
What’s New in Version 2023.10.2
Wait for the installation to finish, and then run the following:

- cd /data/WebSettings/modules/modCommander/
- ./start-module.sh

Log into the FastServe | Playout Web Configurator and open the Commander tab. Press on the Restart button to restart the VideoEngine and the Commander components.

# What’s New in Version 2023.10.2
- In the v2023.10.2 hotfix release, we have updated the following component: TransferManager.
- Check "What’s New in Version 2023.10" on the next page for information about Certified Workflows and Supported Formats.
- n *This hotfix addresses issues with STP processes and is recommended for customers encountering these problems. It is not mandatory for all users.*

## Installation Instructions
- In the v2023.10.2 hotfix release, we have updated the TransferManager (TransferMgr-centos-7-x86_ 64-2023.10.1.2.0.rpm) component.
- To update the TransferManager:
Copy the TransferMgr-centos-7-x86_64-2023.10.1.2.0.rpm installer to the */data/public *location on your server.
Using an SSH client, navigate to the /data/public location, unpack the installation files and install the updated software:

- cd /data/public
- rpm -Uvh TransferMgr-centos-7-x86_64-2023.10.1.2.0.rpm

Open the FastServe | Playout Web Configurator of your server, and navigate to Commander > Send To Playback to restart the TransferManager.

# What’s New in Version 2023.10.1
- In the v2023.10.1 hotfix release, we have updated the following component: VECommander module.
- Check "What’s New in Version 2023.10" on the next page for information about Certified Workflows and Supported Formats.
- n *This hotfix addresses issues with playlists in the Remote Console and is recommended for customers encountering these problems. It is not mandatory for all users.*

## Installation Instructions
- In the v2023.10.1 hotfix release, we have updated the VECommander (VECommander-2023.10.1.3g55dd0a044-centos_7.4-x86_64.rpm) component.
What’s New in Version 2023.10
- To update the VECommander module:
Copy the component to /data/public of your FastServe | Playout server.
Log into your server using PuTTY, or a similar client, and navigate to /data/public.
Install the new version of the VECommander module:
- rpm -Uvh VECommander-2023.10.1.3-g55dd0a044-centos_7.4-x86_64.rpm
Wait for the installation to finish, and then run the following:

- cd /data/WebSettings/modules/modCommander/
- ./start-module.sh

Log into the FastServe | Playout Web Configurator and open the Commander tab. Press on the Restart button to restart the VideoEngine and the Commander components.

# What’s New in Version 2023.10
- This topic provides an overview of the major new features in FastServe | Playout v2023.10. For additional information, see the Learn & Support page directly at the following link:
- https://www.avid.com/products/fastserve/learn-and-support
- Video Over IP Certification for FastServe | Playout Gen 2 Servers
- We have now fully certified FastServe | Playout Gen 2 servers to work with Video Over IP (SMPTE 2110) configurations.
- For more information, see the“The SVIP Page”chapter of the *Avid FastServe | Playout Administrator’s Guide v2023.10*.
- New Playlists Inventory
- We have added a new Playlists inventory to the FastServe | Playout Remote Console, which allows to create simple playlists comprised of Clips inventory items and send them directly to playout channels.

What’s New in Version 2023.10
- For more information, see the Working with the FastServe | Playout Remote Console and FastServe | Playout Best Practices topics in the *Avid FastServe | Playout Administrator's Guide v2023.10*.
- Extended User Permissions
- We have extended the User Management panel in the Admin tab of the FastServe | Playout Web Configurator. It is now possible to limit a user's access to various elements of the Remote Console.
- For more information, see The User Management Settings on page 50 of the *Avid FastServe | Playout Administrator's Guide v2023.10*.
- Manual Database Cleaning for Maintenance
- A new option has been added to clean media not registered in the database during maintenance cleanup.
- For more information, see The DB Cleaner Settings in the *Avid FastServe | Playout Administrator's Guide v2023.10*.
- FastServe | Playout UHD Gen 2 Improvements
- We have extended ZFS options and certified further stripe and mirroring configurations.
- For more information, see The ZFS Settings on page 42 of the *Avid FastServe | Playout Administrator's Guide v2023.10 *and Replacing ZFS Drives (FastServe | Playout UHD Gen 2) on page 60 of the Avid FastServe | Playout Setup Guide v2023.10.
- Current Firmware Versions
- The following firmware is installed on the 2023.10 version of FastServe | Playout:

| Firmware | Firmware Name |
| --- | --- |
| CentOS7.4 - UHD Gen 1 machine | o_3608.bin and vout_sdi_410_3609.bin |
| CentOS7.9 - UHD Gen 2machine | vout_sdi_160_3609_RC.bin |
| HD Machine | vout_sdi_160_3609_RC.bin |
| libdvg for SDI | libdvg: libdvg-813.1-18 |
| SVIP (SMPTE 2110) | vout_ip_410_7024.bin |
| libdvg for SVIP | libdvg-814.1-01 |

- Supported Formats
- In the 2023.10 release of FastServe | Playout, the following codecs and formats are supported:

- Supported	1080i50, 1080i59,94; 1080p50, 1080p59,94; 720p50, 720p59,94; UHD50; UHD 59,94; Formats
- Certified Video	XDCAM 50, XDCAM 35, AVC-I, XAVC-I, XAVC-L (HD), QT Animation, DNxHD SQ/HQ/HQx, Codecs	DNxHR SQ/HQ/HQx, png, jpg, tga, tiff, bmp, sgii
	SVIP Workflows	- Supported formats: 1080i50 & 1080i59,94; 1080p50 & 1080p59.94
Protocol: 2110 + 2022-7 Redundancy.
NMOS parts supported: IS-04 and IS-05.

Security Guidelines
- Compatibility Information
- FastServe | Playout v2023.10 has been tested against the following versions of Avid software products:

| Avid Software Product | Supported Version |
| --- | --- |
| MediaCentral | Cloud UX (for remote STP) | 2022.12, 2023.3 and 2023.7​ |
| MediaCentral | Production Management Server | 2022.3 |
| Media Composer | 2022.12 and 2023.3 |
| Avid NEXIS Client | 2023.3 |
| FastServe | Playout Plugin for Command | 2023.10 |
| MediaCentral | Command | 2022.3 LTM​ |

# Security Guidelines
- Avid allows you to install an endpoint detection and response solution on your FastServe | Playout system. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page: 

# Fixed in Version 2023.10.3
- The following issues have been resolved in FastServe | Playout v2023.10.3 release.
-  [FSP-11156] A delay in cue was sometimes observed when controlling FastServe | Playout using the VDCP protocol. This issue has now been fixed.

# Fixed in Version 2023.10.2
- The following issues have been resolved in FastServe | Playout v2023.10.2 release.
[FSP-11078] There were cases when sequences in Media Composer did not contain a V1 track, and so the STP of such sequence failed. This has now been fixed.
[FSP-11121] Certain AVC-I 50 clips produced by a 3rd party applications were not transferred over the STP process. This has now been fixed.

# Fixed in Version 2023.10.1
- The following issues have been resolved in FastServe | Playout v2023.10.1 release.
-  [FSP-11131] An issue where a playlist containing two or more clips configured to play in loop mode would stop at the end of the second loop has been resolved.

# Fixed in Version 2023.10
- The following issues have been resolved in FastServe | Playout v2023.10 release.

[FSP-10794] We have updated the VECommander module, which now includes support for the VDCP "Busy" status.
[FSP-10860] We have decreased board status messages log level from warning to debug.

# Limitations and Known Issues
- This section includes information on known limitations and defects related to FastServe | Playout.
SAK-2163. Remote Send to Playback jobs do not support assets that include any of the following special characters [ ] { } # % + ` ^ in the asset name. If any asset includes any of these characters, the job fails with an “Unable to find media” or an “Unable to open file manager” error.
- Workaround: To resolve this issue, you must rename the original asset.
There is a known sequence of action, which can cause the audio and video to de-synchronize on playout. This problem occurs in the following scenarios:
- l PWT clips are visible in Command’s inventory, l a growing clip is cued with an IN point in Command, l a clip is played (either growing or after the transfer completes).
- Workaround: It is recommended to delay the clip registration after triggering the Send to Playback process. For more information, see the Delaying Clip Register section of the *The** Send to Playback Settings *topic in the *Avid FastServe | Playout Administrator’s Guide*.
After creating user access to Clips_WF via FTP (Web Configurator > WatchFolder > FTP) without a password, users are still being prompted for a password when trying to connect. It is currently required to always set up password-protected FTP user accounts.
Sporadically, when the system is rebooted using the Web Configurator > System tab, you may experience the VideoEngine being offline and DVG boards missing in the “lspci -n | grep 1966" command.
- In such cases, perform a full power cycle of the server from IPMI. Remember to leave the system turned off for at least 20 seconds.
Intermittently, you may experience issues with accessing the FastServe | Playout Web Configurator.
- Workaround: When the Web Configurator user interface is not responding, restart the module:
- /data/WebSettings/stop-websettings.sh
- /data/WebSettings/start-websettings.sh
DNxHR UHD Workflow redesign: DNxHR UHD video clips have a bit rate of ca 1746 Mb/s. This means that when a control PC with Maestro | News is working on a regular 1Gb Ethernet, and clips are opened from /Clips on FSP, then the playout inside Maestro | News stutters.
FastServe | Playout Installation Manager: Sporadically, the Installation Manager may get stuck on “Removing: /data/WebSettings/modules/modWatchFolder/AppStarterConfig.xml”and fall into an infinite loop.
- Workaround: To continue the installation process, connect with an SSH/Telnet client to the Linux system where the Installation Manager has stalled and manually kill the modWatchFolder process with the command: killall modWatchFolder -9. The Installation Manager will continue on from this moment.
Restarting software or re-powering the machine: When a machine is re-powered, the operator should wait at least 10 seconds before turning the machines back on again. When the software is restarted from the WebSettings, you should wait at least 10 seconds to allow for proper communication between all components to be established.
Rear panel output numbering: Please check the FastServe | Playout Setup Guide for proper cabling connection information about Gen 1 servers. It is known that the order of channels in Video Engine is opposite to the numbering on the rear panel.
Export from Adobe Premiere: XDCAM clips, exported from Adobe Premiere with “Enable direct export to Sony devices” are not properly decoded and should not be used.
Canceling STP (Send to Playback) withing first 6 seconds of the export may lead to problems with the TransferManager. If you need to cancel STP, it is recommended to do so after the first 6 seconds of exporting.
STP in Maestro | News: Windows-based Maestro | News workflow does not support playout of growing files. Please refer to the Maestro | News demo videos or documentation to find out about the supported workflow.
There is a very limited support for PWT in Long GOP formats (AVC and xAVC LongGOP).
There might be occasional performance issues when playout is performed on a maximum number of channels for a platform (8 FSP HD or 2 FSP UHD).
Legal Notices
- Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
- This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
- This product may be protected by one or more U.S. and non-U.S patents. Details are available at 
- No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
- Copyright © 2024 Avid Technology, Inc. and its licensors. All rights reserved.
- Portions © Copyright 2003-2007 of MOG Solutions.
- Attn. Government User(s). Restricted Rights Legend
- U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
- Trademarks
- Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: 
- Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
- Avid FastServe | Playout ReadMe• Revised Monday, August 25, 2025 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.

# Avid® FastServe™ | Playout Version 2022.2.3 ReadMe

## Version 2022.2 Information
- The v2022.2 release extends the video over IP capabilities of the FastServe | Playout server and introduces a new Remote Console, which allows to preview and control the contents of the playout channels and provides basic inventory management options. 
- n *SVIP workflows can only be configured on FastServe | Playout UHD machines.*

## Important Information
- Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
- **Important:** Search the Avid Knowledge Base for the most up-to-date ReadMe file, which contains the latest information that might have become available after the documentation was published.
- This document describes compatibility issues with previous releases, hardware and software requirements, software installation instructions, and summary information on system and memory requirements. This document also lists hardware and software limitations.

## Revision History

	**Date Revised****	Changes Made**

	January 10, 2024	The v2022.2.3 hotfix contains an updated VideoEngine component. Check the 
- Installation Instructions in the What’s New in v2022.2.3 topic
	June 27, 2022	The v2022.2.2 hotfix contains an updated VECommander component. Check the 
- Installation Instructions in the What’s New in v2022.2.2 topic
	April 26, 2022	The v2022.2.1 hotfix contains an updated TransferManager component. Check the 
- Installation Instructions in the What’s New in v2022.2.1 topic
If You Need Help

| Date Revised | Changes Made |
| --- | --- |
| February 25, 2022 | First publication. Please check the What’s New in v2022.2 section to learn about new features. |

# If You Need Help
- If you are having trouble using your Avid product:
Retry the action, carefully following the instructions given for that task. It is especially important to check each step of your workflow.
- For your convenience, the following guides can be accessed:
- -	*Avid FastServe | Playout Administrator’s Guide *-	*Avid FastServe | Playout Setup Guide.*
- You can always find the latest *FastServe | Playout ReadMe* as well as all documentation available via download on the Avid Knowledge Base at: 
- http://avid.force.com/pkb/articles/ReadMe/FastServe-Documentation/
What’s New in v2022.2.3
**http://www.avid.com/US/support/**.
Check the documentation that came with your Avid application or your hardware formaintenance or hardware-related issues.
Visit Avid Online Support at . Online support is available 24 hours per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.

# What’s New in v2022.2.3
- In the v2022.2.3 hotfix release, we have updated the VideoEngine component. 
- Check the What’s New in v2022.2 section for information about *Compatibility & Supported Formats*.
- **To update FastServe | Playout to version 2022.2.3:**
Copy the VideoEngine installation files to the /data/public folder on your FastServe | Playout server.
Using an SSH client, such as PuTTY, navigate to the /data/public location and update the VideoEngine software using the commands below:
- rpm -Uvh VideoEngine-centos-7-x86_64-2022.2.0.10.gbd41474f6.1572.rpm cd /data/WebSettings/modules/modVideoEngine/
- .start-module.sh
Restart the VideoEngine using the FastServe | Playout Web Configurator. Log into the Web Configurator of your machine, open the VideoEngine page, and click on the Restart button.

# What’s New in v2022.2.2
- In the v2022.2.2 hotfix release, we have updated the VECommander component. We have improved the speed of scrubbing visible in the SDI output, while scrubbing is done from the Command’s “Browse channel”.
- Check the What’s New in v2022.2 section for information about *Compatibility & Supported Formats*.
What’s New in v2022.2.1
- **To update FastServe | Playout to version 2022.2.2:**
Copy the VECommander installation files to the /data/public folder on your FastServe | Playout server.
Using an SSH client, such as PuTTY, navigate to the /data/public location and update the VECommander software using the commands below: rpm -Uvh VECommander-2022.3.2.2-g7ed9075-centos_7.4-x86_64.rpm cd /data/WebSettings/modules/modCommander/
- ./start-module.sh

# What’s New in v2022.2.1
- In the v2022.2.1 hotfix release, we have updated the TransferManager component. We have improved the GenericHelper library which works around problematic video sequences arriving at the TransferManager from the Send-to-Playback process.
- Check the What’s New in v2022.2 section for information about *Certified Workflows* and *Supported Formats*.
- **To update FastServe | Playout to version 2022.2.1:**
Copy the TransferManager installation files to the /data/public folder on your FastServe | Playout server.
Using an SSH client, such as PuTTY, navigate to the /data/public location and install the TransferManager software using the command below:
- rpm -Uvh TransferMgr-centos-7-x86_64-2021.11.0.195.0.rpm
Restart the TransferManager using the FastServe | Playout Web Configurator. Log into the Web Configurator of your machine, and go to **Commander > Send to Playback > Restart Transfer Manager**.

# What’s New in v2022.2
- This section describes new features, compatibility, and formats supported in this version.
What’s New in v2022.2

### New Features
We have extended the SVIP capabilities of the FastServe | Playout servers. You can now choose one of the many codecs supported by FSP in video over IP workflows, as long as the video format is set to 1080i or 1080p.
We have added a new Remote Console to the FastServe | Playout Web Configurator. You can use it for maintenance control of playout channels and quick and convenient inventory management. 

### Compatibility Information
- FastServe | Playout v2022.2 has been tested against the following versions of Avid software products:

| Avid Software Product | Supported Version |
| --- | --- |
| MediaCentral | Production Management Server | 2021.11 |
| Avid NEXIS Client | 2021.12 |
| Media Composer (in STP scenarios) | 2019.12, 2020.10, 2021.12 |
| MediaCentral | Command | 2020.9 |
| FastServe Playout Plugin for Command | 2021.11, 2022.2 |

### Supported Formats
- In the 2022.2 release of FastServe | Playout, the following codecs and formats are supported: 

- Supported Formats	•	1080i50, 1080i59,94; 1080p50, 1080p59,94; 720p50, 720p59,94; UHD50; UHD 59,94;
	•	SVIP: SVIP: 1080i50 & 1080i59,94; 1080p50 & 1080p59.94
- Certified Video Codecs	XDCAM 50, XDCAM 35, AVC-I, XAVC-I, XAVC-L (HD), QT Animation, DNxHD SQ/HQ/HQx, DNxHR SQ/HQ/HQx, png, jpg, tga, tiff, bmp, sgii

### Firmware Versions
- The following firmware versions are used: 
o_3608.bin and vout_sdi_410_3609.bin- CentOS7 - UHD machine
o_3608_160.bin and vout_sdi_160_3609_RC.bin- HD machine
SVIP firmware - FastServe | Playout UHD: **vout_ip_410_7020.bin**
Fixed in v2022.2.3

### Supported SVIP Workflows
- In the 2022.2 release of FastServe | Playout, the following SVIP workflows are supported: 
SVIP protocol: 2110 + 2022-7 Redundancy.
NMOS parts supported: IS-04 and IS-05. 

# Fixed in v2022.2.3
- The following fixed items are in the version 2022.2.3 release.
- ³ [FSP-1052] Luminance levels was too low for certain colors on FastServe | Playout. This issue has now been fixed.

# Fixed in v2022.2.2
- The following fixed items are in the version 2022.2.2 release.
- ³ [FSP-8519] We have improved the speed of scrubbing visible in the SDI output, while scrubbing is done from Command’s “Browse channel”.
- ³ [FSP-9603] We have improved the work of multithread processes.

# Limitations and Known Issues
- This section contains information on the known FastServe | Playout issues and limitations.
- ³ When STP is sent with a name containing international & special characters, the Commander module in the FastServe | Playout Web Configurator freezes unexpectedly.
- **Workaround:** Disable the “Jobs” section in the **Web Configurator > Commander > Send to Playback** settings. 
Open the **Settings.xml** file in the following location: 
- /data/WebSettings/modules/modCommander/bin.
Change the “**Enabled**=” parameter to “**true**” in the following section: 
<FeatureToggle Name="FT_NO_TM_JOBS" Enabled="false" Value="" />
Save and exit the file.
- n *This action is obligatory for all customers using STP with special international characters.*

Limitations and Known Issues
- After creating user access to Clips_WF via FTP (**Web Configurator > ****WatchFolder**** > FTP**) without a password, users are still being prompted for a password when trying to connect. It is currently required to always set up password-protected FTP user accounts.
- ³ Sporadically, when the system is rebooted using the **Web Configurator** > **System** tab, you may experience the VideoEngine being offline and DVG boards missing in the “lspci -n | grep 1966" command. 
- In such cases, perform a full power cycle of the server from IPMI. Remember to leave the system turned off for at least 20 seconds.
- ³ Intermittently, you may experience issues with accessing the FastServe | Playout Web Configurator.
- **Workaround:** When the Web Configurator user interface is not responding, restart the module: 
/data/WebSettings/stop-websettings.sh
/data/WebSettings/start-websettings.sh
- ³ SVIP workflows are only supported by FastServe | Playout UHD machines.
- ³ The OPAtom pattern is no longer supported on FastServe | Playout CentOS 5 machines. ³ Compatibility with Maestro | News:
FastServe | Playout for Windows cannot be used for internal preview in Maestro | News Controller. Check the *Avid Maestro | News ReadMe* to verify which FSP version is supported. 
Playout on Linux from Maestro | News: it is not allowed to browse clips from the “File System” inside Maestro | News. To populate the rundown, you must use clips which are already registered in the FastServe | Playout inventory (e.g. with the WatchFolder or using STP).
- ³ In MediaCentral | Command workflows, the WebSettings > Commander > **Auto Eject** option cannot be used.
- ³ FastServePlayout 2019.12 (Linux and Windows) is not compatible with Maestro | News v2019.12 or any older in terms of playout directly from the File System.
- ³ The FastServe | Playout WebSettings can no longer be opened using the Microsoft Internet Explorer.
Limitations and Known Issues
- **NEXIS clip playout**: In case clips are played from NEXIS, it is recommended to manually change the VideoEngine.xml file and enable the following option: 
- <ffmpeg ForceSingleDemuxer="Yes" />. By default, this option is turned off (“No”).
- ³ **DNxHR**** UHD Workflow redesign**: DNxHR UHD video clips have a bit rate of ca 1746 Mb/s. This means that when a control PC with Maestro | News is working on a regular 1Gb Ethernet, and clips are opened from /Clips on FSP, then the playout inside Maestro | News stutters. 
- ³ **FastServe | Playout Installation Manager**: Sporadically, the Installation Manager may get stuck on “Removing: /data/WebSettings/modules/modWatchFolder/AppStarterConfig.xml”and fall into an infinite loop. 
- **Workaround:** To continue the installation process, connect with an SSH/Telnet client to the 
- Linux system where the Installation Manager has stalled and manually kill the modWatchFolder process with the command: killall modWatchFolder -9. The Installation Manager will continue on from this moment.
- ³ **Restarting software or re-powering the machine**: When a machine is re-powered, the operator should wait at least 10 seconds before turning the machines back on again. When the software is restarted from the WebSettings, you should wait at least 10 seconds to allow for proper communication between all components to be established. 
- ³ **Rear panel output numbering**: Please check the FastServe | Playout Setup for proper cabling connection information. It is known that the order of channels in Video Engine is opposite to the numbering on the rear panel. 
- ³ **Export from Adobe Premiere**: XDCAM clips, exported from Adobe Premiere with “Enable direct export to Sony devices” are not properly decoded and should not be used.
- ³ **Canceling STP** (Send to Playback) withing first 6 seconds of the export may lead to problems with the TransferManager. If you need to cancel STP, it is recommended to do so after the first 6 seconds of exporting.
- ³ **STP in Maestro | News**: Windows-based Maestro | News workflow does not support playout of growing files. Please refer to the Maestro | News demo videos or documentation to find out about the supported workflow.
- ³ **Upgrades from previous versions**: Windows 7 / 10 - Upgrade from VEServerWin to 
- FastServePlayout_Win is not possible. Installation of FastServePlayout_Win should be preceded by an un-installation of VEServerWin.
- ³ There is a very **limited support for PWT in Long GOP** formats (AVC and xAVC LongGOP).
Legal Notices
- There might be occasional performance issues when playout is performed on a maximum number of channels for a platform (8 FSP HD or 2 FSP UHD).

# Legal Notices
- This product may be protected by one or more U.S. and non-U.S patents. Details are available at .
- No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
- Copyright © 2025 Avid Technology, Inc. and its licensors. All rights reserved.
- Portions of this product were created using LEADTOOLS © 1991-2002, LEAD Technologies, Inc. ALL RIGHTS RESERVED. Portions of this product are licensed under US patent 5,327,254 and foreign counterparts.
- Portions Copyright 2003-2007 of MOG Solutions.
- Trademarks
- Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid Nexis, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: .
- Avid FastServe | Playout ReadMe v2022.2.2 • Rev A • Created 1

# Avid® FastServe™ | Playout Plugin for Command

# Version 2022.2.2 ReadMe

# Important Information
- Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
- See the following Avid Knowledge Base link for the most up-to-date FastServe documentation:
- https://avidtech.my.salesforce-sites.com/pkb/articles/en_US/readme/FastServe-PlayoutDocumentation

# Revision History

| Date Revised | Changes Made |
| --- | --- |
| January 13, 2024 | Initial publication of the 2022.2.2 version. |

# Contents
	What’s New in Version 2022.2.2	 1
	Fixed in Version 2022.2.2	 1

# What’s New in Version 2022.2.2
- This topic provides an overview of the major new features in FastServe | Playout Plugin for Command v2022.2.2.

## Compatibility
- The FastServe | Playout Plugin for Command v2022.2.2 is compatible with FastServe | I\O v2021.10.
- c This is the final plugin version that is compatible with FastServe | I/O!

## Limitations
- When users STP a clip, the “Last Modified” date in the Command inventory is displayed correctly. However, due to a known issue (FSI-13208), this date is reset to the server restart date after a FastServe | I/O reboot. As a result, all inventory items will show the server restart date as the "Last Modified" date.

# Fixed in Version 2022.2.2
- The following issues have been resolved in version 2022.2.2.
1
Fixed in Version 2022.2.2
- 	Bug Number: FSI-13221. MediaCentral Command's 'date modified' is one hour ahead than the actual modified date in FastServe | I/O. This issue has now been fixed.
Legal Notices
- Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
- This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
- This product may be protected by one or more U.S. and non-U.S patents. Details are available at.
- No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
- Copyright © 2025 Avid Technology, Inc. and its licensors. All rights reserved.
- Portions © Copyright 2003-2007 of MOG Solutions.
- Attn. Government User(s). Restricted Rights Legend
- U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
- Trademarks
- Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:.
- Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
- Avid FastServe | Playout Plugin for Command ReadMe• Revised Monday, January 13, 2025 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.
2