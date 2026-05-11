---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2021.3."
release-date: 01/03/2021
doc-type: setup-config-guide
source: pdf
confidentiality: public
date-added: 08/05/2026
status: current
---

MediaCentral® | MOS Gateway Installation and Operations Guide Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software. The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement. It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
Avid products or portions thereof are protected by one or more of the following United States Patents: 4,970,663; 5,267,351; 5,309,528; 5,355,450; 5,396,594; 5,440,348; 5,467,288; 5,513,375; 5,528,310; 5,557,423; 5,577,190; 5,584,006; 5,640,601; 5,644,364; 5,654,737; 5,715,018; 5,719,570; 5,724,605; 5,726,717; 5,729,673; 5,745,637; 5,752,029; 5,754,851; 5,799,150; 5,812,216; 5,828,678; 5,842,014; 5,852,435; 5,999,406; 6,038,573; 6,061,758; 6,141,007; 6,211,869; 6,532,043; 6,546,190; 6,596,031; 6,636,869; 6,747,705; 6,763,523; 6,766,357; 6,813,622; 6,847,373; 7,081,900; RE40,107; 7,403,561; 7,433,519; D352,278; D372,478; D373,778; D392,267; D392,268; D392,269; D395,291; D396,853; D398,912. Otherpatentsarepending.
This document is protected under copyright law. An authorized licensee of MediaCentral Newsroom Management may reproduce this publication for the licensee’s own use in learning how to use the software. This document may not be reproduced or distributed, in whole or in part, for commercial purposes, such as selling copies of this document or providing support or educational services to others. This document is supplied as a guide for MediaCentral Newsroom Management. Reasonable care has been taken in preparing the information it contains. However, this document may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc. does not accept responsibility of any kind for customers’ losses due to the use of this document. Product specifications are subject to change without notice.
Copyright © 2021 Avid Technology, Inc. and its licensors. All rights reserved.
The following disclaimer is required by Apple Computer, Inc.:
APPLE COMPUTER, INC. MAKES NO WARRANTIES WHATSOEVER, EITHER EXPRESS OR IMPLIED, REGARDING THIS PRODUCT, INCLUDING WARRANTIES WITH RESPECT TO ITS MERCHANTABILITY OR ITS FITNESS FOR ANY PARTICULAR PURPOSE. THE EXCLUSION OF IMPLIED WARRANTIES IS NOT PERMITTED BY SOME STATES. THE ABOVE EXCLUSION MAY NOT APPLY TO YOU. THIS WARRANTY PROVIDES YOU WITH SPECIFIC LEGAL RIGHTS. THERE MAY BE OTHER RIGHTS THAT YOU MAY HAVE WHICH VARY FROM STATE TO STATE.
The following disclaimer is required by Sam Leffler and Silicon Graphics, Inc. for the use of their TIFF library:
Copyright © 1988–1997 Sam Leffler Copyright © 1991–1997 Silicon Graphics, Inc.
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
Permission to use, copy, modify, and distribute this software for any purpose without fee is hereby granted, provided that this entire notice is included in all copies of any software which is or includes a copy or modification of this software and in all copies of the supporting documentation for such software.
THIS SOFTWARE IS BEING PROVIDED "AS IS", WITHOUT ANY EXPRESS OR IMPLIED WARRANTY. IN PARTICULAR, NEITHER THE AUTHOR NOR AT&T MAKES ANY REPRESENTATION OR WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF THIS SOFTWARE OR ITS FITNESS FOR ANY PARTICULAR PURPOSE.
This product includes software developed by the University of California, Berkeley and its contributors.
The following disclaimer is required by Nexidia Inc.:
© 2006 Nexidia. All rights reserved.
Manufactured under license from the Georgia Tech Research Corporation, U.S.A. Patent Pending.
The following disclaimer is required by Paradigm Matrix:
Portions of this software licensed from Paradigm Matrix.
The following disclaimer is required by Ray Sauers Associates, Inc.:
“Install-It” is licensed from Ray Sauers Associates, Inc. End-User is prohibited from taking any action to derive a source code equivalent of “Install-It,” including by reverse assembly or reverse compilation, Ray Sauers Associates, Inc. shall in no event be liable for any damages resulting from reseller’s failure to perform reseller’s obligation; or any damages arising from use or operation of reseller’s products or the software; or any other damages, including but not limited to, incidental, direct, indirect, special or consequential Damages including lost profits, or damages resulting from loss of use or inability to use reseller’s products or the software for any reason including copyright or patent infringement, or lost data, even if Ray Sauers Associates has been advised, knew or should have known of the possibility of such damages.
The following disclaimer is required by Videomedia, Inc.:
“Videomedia, Inc. makes no warranties whatsoever, either express or implied, regarding this product, including warranties with respect to its merchantability or its fitness for any particular purpose.” “This software contains V-LAN ver. 3.0 Command Protocols which communicate with V-LAN ver. 3.0 products developed by Videomedia, Inc. and V-LAN ver. 3.0 compatible products developed by third parties under license from Videomedia, Inc. Use of this software will allow “frame accurate” editing control of applicable videotape recorder decks, videodisc recorders/players and the like.” The following disclaimer is required by Altura Software, Inc. for the use of its Mac2Win software and Sample Source Code:
©1993–1998 Altura Software, Inc.
The following disclaimer is required by Ultimatte Corporation:
Certain real-time compositing capabilities are provided under a license of such technology from Ultimatte Corporation and are subject to copyright protection.
The following disclaimer is required by 3Prong.com Inc.:
Certain waveform and vector monitoring capabilities are provided under a license from 3Prong.com Inc.
The following disclaimer is required by Interplay Entertainment Corp.:
The “Interplay” name is used with the permission of Interplay Entertainment Corp., which bears no responsibility for Avid products.
This product includes portions of the Alloy Look & Feel software from Incors GmbH.
This product includes software developed by the Apache Software Foundation (http://www.apache.org/).
© DevelopMentor This product may include the JCifs library, for which the following notice applies:
JCifs © Copyright 2004, The JCIFS Project,is licensed under LGPL (http://jcifs.samba.org/). See the LGPL.txt file in the Third Party Software directory on the installation CD.
Avid Interplay contains components licensed from LavanTech. These components may only be used as part of and in connection with Avid Interplay.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
003, 192 Digital I/O, 192XD I/O, 888 I/O, Adrenaline, AirPlay, AirSPACE, AirSPACE HD, AirSpeed, ALEX, Alienbrain, AniMatte, AudioMarket, AudioPages, AudioSuite, AudioVision, AutoSync, Avid, AvidAdvanced Response, AvidDNA, AvidDNxcel, AvidDNxHD, AVIDdrive, AvidDSAssistStation, AvidEditStar, Avid LearningExcellerator, AvidLiquid, AvidLiquidChromeXe, AvidMEDIArray, Avid Mojo, AvidNet, AvidNetwork, Avid NewStar, Avid RemoteResponse, AVIDstripe, Avid Unity, AvidUnityISIS, AvidVideoRAID, AvidXpress, AVoption, AVX, BeautyWithoutTheBandwidth, Blacktooth, Boom, C|24, CamCutter, CaptureManager, ChromaCurve, ChromaWheel, Command|24, Conectiv, CountDown, DAE, Dazzle, DazzleDigitalVideo Creator, Deko, DekoCast, D-Fi, D-fx, DigiDelivery, Digidesign, DigidesignAudioEngine, DigidesignIntelligentNoiseReduction, DigiDrive, DigiLink, DigiMeter, DigiSerial, DigitalNonlinearAccelerator, DigiTranslator, DINR, DNxchange, domore, DVDComplete, D-Verb, Eleven, Equinox, EveryPhase, ExpertRender, Fastbreak, FastTrack, FieldPak, FilmComposer, FilmScribe, Flexevent, FluidMotion, FXDeko, G7, G-Rack, HDCore, HDProcess, HDPack, Hollywood DV-Bridge, Hybrid, HyperControl, HyperSPACE, HyperSPACEHDCAM, IllusionFX, ImageIndependence, iNEWS, iNEWSAssign, iNEWSControlAir, Instantwrite, Instinct, Intelli-satBroadcastingRecordingManager, Intelli-Sat, InterFX, Interplay, inTONE, Intraframe, iS9, iS18, iS23, iS36, ISIS, IsoSync, KeyRig, KeyStudio, LaunchPad, LeaderPlus, Lightning, ListSync, Lo-Fi, MagicMask, MakeAnythingHollywood, makemanagemove|media, Marquee, M-Audio, M-AudioMicro, Maxim, Mbox, MCXpress, MediaBrowse, MediaComposer, MediaDock, MediaDockShuttle, MediaFusion, MediaIllusion, MediaLog, MediaReader, MediaRecorder, MEDIArray, MediaShare, MediaStream, MediaSuite, Meridien, MetaFuze, MetaSync, MicroTrack, Midiman, MissionControl, Mix Rack, MixLab, Moviebox, Moviestar, NaturalMatch, Nearchive, NetReview, NewsCutter, Nitris, NRV-10 interFX, Octane, OMF, OMFInterchange, OMM, OnDVD, OpenMediaFramework, OpenMediaManagement, Palladium, Pinnacle, PinnacleDistanTV, Pinnacle Geniebox, PinnacleHomeMusic, PinnacleMediaSuite, PinnacleMobileMedia, PinnaclePCTV, PinnaclePCTVHDUltimateStick, PinnaclePCTVNano Stick, PinnaclePCTVToGo, PinnacleScorefitter, PinnacleStudio, PinnacleStudioMovieBoard, PinnacleSystems, Pinnacle VideoSpin, ProEncode, ProServices, ProSessions, ProTools, QuietDrive, Recti-Fi, ReelTapeDelay, ReelTapeFlanger, ReelTapeSaturation, RetroLoop, rS9, rS18, Salesview, Sci-Fi, Scorch, Scorefitter, ScriptSync, SecureProductionEnvironment, Session, ShowCenter, Sibelius, SIDON, SoftSampleCell, Soft-ClipLimiter, SoundDesignerII, SPACE, SPACEShift, SpectraGraph, SpectraMatte, Starplay, SteadyGlide, Streamfactory, Streamgenie, StreamRAID, Strike, Structure, Studiophile, SubCap, SundanceDigital, Sundance, Symphony, SYNCHD, SynchroScience, SynchroScope, Syntax, Targa, TDMFlexCable, Thunder, Titan, Titansync, TLAggro, TLAutoPan, TLDrum Rehab, TLEveryphase, TLFauxlder, TLIn Tune, TLMasterMeter, TLMetro, TLSpace, TLUtilities, Torq, TorqXponent, Transfuser, Trigger Finger, Trillium Lane Labs, TruTouch, UnityRAID, Vari-Fi, Velvet, Venom, VideoRAID, VideoSlaveDriver, VideoSPACE, VideoSpin, Vortx, Xdeck, X-Form, Xmon, Xponent, X-Session, and X-Session Pro are either registered trademarks or trademarks of Avid Technology, Inc. in the United States and/or other countries.
Footage Arri — Courtesy of Arri/Fauer — John Fauer, Inc.
Bell South “Anticipation” — Courtesy of Two Headed Monster — Tucker/Wayne Atlanta/GMS.
Canyonlands — Courtesy of the National Park Service/Department of the Interior.
EcoChallenge British Columbia — Courtesy of Eco Challenge Lifestyles, Inc., All Rights Reserved.
Eco Challenge Morocco — Courtesy of Discovery Communications, Inc.
It’sShuttletime — Courtesy of BCP & Canadian Airlines.
Nestlé Coffee Crisp — Courtesy of MacLaren McCann Canada.
Saturn “Calvin Egg” — Courtesy of Cossette Communications.
“Tigers: Tracking a Legend” — Courtesy of www.wildlifeworlds.com, Carol Amore, Executive Producer.
"The Big Swell" — Courtesy of Swell Pictures, Inc.
Windhorse — Courtesy of Paul Wagner Productions.
Arizona Images — KNTV Production — Courtesy of Granite Broadcasting, Inc., Editor/Producer Bryan Foote.
Canyonlands — Courtesy of the National Park Service/Department of the Interior.
Ice Island — Courtesy of Kurtis Productions, Ltd.
Tornados + Belle Isle footage — Courtesy of KWTV News 9.
WCAU Fire Story — Courtesy of NBC-10, Philadelphia, PA.
Women in Sports – Paragliding — Courtesy of Legendary Entertainment, Inc.
News material provided by WFTV Television Inc.
GOT FOOTAGE?
Editors — Filmmakers — Special Effects Artists — Game Developers — Animators — Educators — Broadcasters — Content creators of every genre — Just finished an incredible project and want to shareitwith the world?
Send us your reels and we may use your footage in our show reel or demo!* For a copy of our release and Avid’s mailing address, go to www.avid.com/footage.
*Note: Avid cannot guarantee the use of materials submitted.
MediaCentral | MOS Gateway Installation and Operations Guide • Rev A • Created 3/29/21 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.
Contents Symbols and Conventions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10 If You Need Help . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 ...With the Syntax of Commands . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 Avid Training Services. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12 Chapter 1 Introduction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 13 Overview of MediaCentral | MOS Gateway. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 14 MOS Control Workflow. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 14 Loading a Show to MOS Gateway . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 16 Chapter 2 Preparing for Installation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19 Before You Begin Installation Procedure. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19 Hardware Requirements . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 20 Software Requirements. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 20 Supported MOS Devices . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 21 Chapter 3 Installing MOS Gateway Program Files . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 22 Overview of the Setup . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 23 Adding IP Addresses on the MOS Gateway Server . . . . . . . . . . . . . . . . . . . . . . . . . . . . 23 Installing and Activating MOS Gateway Software. . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24 Activating the License. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 28 Upgrading MOS Gateway Software. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 40 Chapter 4 Setting up the Newsroom Management Server. . . . . . . . . . . . . . . . . . . . . . . . . . 42 Configuring Newsroom Management Servers . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 43 Configuration Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 43 Configuration Details . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 44 Step 1: Creating a Monitor Server for Each Show . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 44 Reconfigure the System. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 48 Assign the Mailbox to the Rundown Queue . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 48 Using the list Command to View Assigned Mailboxes. . . . . . . . . . . . . . . . . . . . . . 49 Step 2: Creating Composite and Event List Queues. . . . . . . . . . . . . . . . . . . . . . . . . . . . 49 Step 3: Setup Queue and Story Forms . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 52 Calculating Duration in Time Fields . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 54 Step 4: Edit the SYSTEM.MOS-MAP Story . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 56 Step 5: Assigning Forms to Queues . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 57 Step 6: Create an Entry in the SYSTEM.MAP Story . . . . . . . . . . . . . . . . . . . . . . . . . . . 59 Step 7: Adding IP Addresses for the MOS Gateway . . . . . . . . . . . . . . . . . . . . . . . . . . . 63 Step 8: Updating the Newsroom Management System Dictionaries (Optional) . . . . . . 65 Step 9: Configure Newsroom Management for MOS Replication (Optional) . . . . . . . . 68 Chapter 5 Configuring MOS Gateway . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 75 MOS Gateway Configuration File . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76 Editing the Configuration File. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76 Stopping and Starting MOS Gateway . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 77 Configuration File Components Explained. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 78 Using the MosAdmin Application. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 89 Adding MOS Devices to the SYSTEM.MOS-MAP Story. . . . . . . . . . . . . . . . . . . . . . . . . . . 91 Copying the File Certificate . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 91 Chapter 6 Troubleshooting. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 93 MOS Gateway Components . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 94 Where to Look for Errors . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 94 Error Categories . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 96 Index . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 97 0 Using This Guide Congratulations on your purchase of MediaCentral MOS Gateway, the system that removes barriers between newsroom computing and broadcasting. MOS Gateway uses the MOS protocol as a standard for communications between newsroom computer systems and Media Object Servers (MOS), such as video servers, audio servers, still stores, and character generators.
This manual is written for journalists, producers, directors, writers, and various technical personnel responsible for using the MediaCentral MOS Gateway in a broadcast newsroom. Portions of the manual provide installation data for technicians.
Other chapters provide configuration and maintenance information for system administrators who are managing the system.
> **Note:** It is strongly recommended that system administrators have prior experience in or
classroom knowledge of the Windows-based operating systems.
0 Using This Guide Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action
> **Note:** A note provides important related information, reminders,
recommendations, and strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
w A warning describes an action that could cause you physical harm.
Follow the guidelines in this document or on the unit itself when handling electrical equipment.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
This symbol indicates a single-step procedure. Multiple arrows in a list indicate that you perform one of the actions listed.
(Windows), (Windows This text indicates that the information applies only to the specified only), (Macintosh), or operating system, either Windows or Macintosh OS X.
(Macintosh only) Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables.
Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse action Press and hold the first key while you press the last key or perform the mouse action. For example, Command+Option+C or Ctrl+drag.
| (pipe character) The pipe character is used in some Avid product names, such as MediaCentral | Production Management. In this document, the pipe is used in product names when they are in headings or at their first use in text.
If You Need Help If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It
is especially important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation
was published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view these online versions, visit the Knowledge Base at www.avid.com/support.
3. Check the documentation that came with your Avid application or your hardware for
maintenance or hardware-related issues.
4. Visit the online Knowledge Base at www.avid.com/support. Online services are
available 24 hours per day, 7 days per week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
...With the Syntax of Commands If you are at the console and are unsure about the function of a command, use the help command.
To view instructions about using a command:
- Use the following command: help <command name>
For instance, type: help dbvisit for an explanation of the dbvisit command.
The following data appears:
dbvisit -<d or v or i> [-r or -c] [-s] [-l] [block# ...] ‘r’ for read only ‘s’ for “slow” to eliminate cache usage ‘c’ use checkpoint partition (forces “-s”) ‘i’ to just validate isam files ‘l’ to list link count distribution ‘v’ verbose mode; extra diagnostic messages ‘d’ print a dot for each queue started (-v overrides) 0 Using This Guide
> **Note:** Lengthy console displays might be edited to emphasize only the most important information
in this guide. An ellipsis (...) represents portions of the console display not shown in the text.
Also, because of the margin limitations of this guide, command lines might appear wrapped to multiple lines. This does not necessarily indicate the need to press an Enter key. Unless otherwise indicated, commands should be typed on a single line, allowing the computer to wrap the text whenever the command line stretches beyond the screen margin.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
To learn about Avid's new online learning environment, Avid Learning Excellerator™ (ALEX), visit http://learn.avid.com.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/training or call Avid Sales at 800-949-AVID (800-949-2843).
1 Introduction The MediaCentral | MOS Gateway system is an integrated digital news production system, which provides journalists, producers, directors, writers, and technical personnel with an array of tools to make their jobs easier.
This chapter contains the following main sections:
• Overview of MediaCentral | MOS Gateway • MOS Control Workflow - Loading a Show to MOS Gateway Overview of MediaCentral | MOS Gateway The MediaCentral MOS Gateway is an application that does the following:
• receives information from the MediaCentral Newsroom Management system as machine control events are entered in production cues in scripts • converts the information into commands in version 2.8 of the MOS Protocol and directs it to specified MOS-compliant devices • routes the status of each media object in a rundown on a MOS device back to the iNEWS Workstation MOS Gateway can handle multiple shows simultaneously.
MOS Control Workflow MOS Gateway is designed to work with multiple vendors’ MOS devices. Each MOS device can be accompanied by an ActiveX control that is hosted by the iNEWS Workstation, or MOS item replication can be used for devices that do not have ActiveX controls.
Replication means that MOS Gateway supports the Media Object Metadata (MOM) connection with a MOS device as well as the Rundown/Running Order (RO) connection. Each MOS device can send MOM to a single device-specific queue, allowing Newsroom Management to host a copy of a MOS device’s inventory. Each story in the device-specific queue contains information about a different MOS item. The MOSREPLICATION form in Newsroom Management determines how MOS items are replicated to a device-specific queue—that is, whether the MOS item appears in the story form, as a production cue in the story body, or both—and what metadata is displayed as normal text in the story body.
> **Note:** Replication also provides users with the capability to search the MOS inventory using Newsroom
Management search tools.
MOS replication requires an Newsroom Management user account with write access to all device-specific queues that will store replicated MOS items. See “Configure Newsroom Management for MOS Replication (Optional)” on page 66 for more information. Replication options are configured using the MOS Administration tool. See “Using the MosAdmin Application” on page 89 for more information.
MOS Control Workflow An ActiveX control provides a live view of the media inventory on the MOS device. The news staff can use an ActiveX control (also known as a plugin) or replicated metadata to browse a MOS device’s inventory and insert the appropriate information into a machine control event in the script. The following diagram provides a visual illustration of the two paths by which a MOS device’s media inventory may be viewed at an iNEWS Workstation.
For instance, users can copy a MOS item’s production cue marker—shown at left—from a MOS device’s replication queue and paste it directly into the body of an Newsroom Management story. For MOS items that appear in the story form, an entire story may be duplicated from the device-specific queue into an rundown and then Newsroom Management its title and body edited accordingly, such as changing the existing title to the story’s name (slug) and replacing any text with the story’s script.
After the news staff has entered the machine control events in the scripts, the producer can download rundowns to the MOS device using the monitor server in Newsroom Management and MOS Gateway. The downloaded rundown can be controlled using the MOS device’s interface.
> **Note:** Monitor server is a utility program that checks a show’s event requests for errors, creates
composite and event lists, and sends playlists to MOS Gateway. For more information on creating monitor servers, see “Creating a Monitor Server for Each Show” on page 35.
MOS Control Workflow Loading a Show to MOS Gateway When your newsroom staff builds a show, they insert special keywords into scripts, referred to as machine control events. These items include at least a word to identify the specific machine or a machine type, such as CG or SS, and some information to indicate that they want that machine to display. If the machine is a MOS device, these machine control events are created using the ActiveX control that came with the MOS device.
Monitor Mode ON When the monitor server is turned on—usually by the producer, from the iNEWS Workstation´s Tool menu—it will read all the machine control events in the rundown and build playlists, also known as event lists, for each device. The monitor server performs as much error checking as it can without communicating with any broadcast equipment.
After the monitor server is turned on, it continues to monitor the rundown, examining every story saved for new, deleted, or updated events in the playlist.
MOS Gateway is not yet involved. Playlists can be printed and distributed to equipment operators. The devices can be controlled using traditional methods.
MCNM monitor Monitor Commands (ON, LOAD, UNLOAD, OFF) MCNM servers Clients ON: Watch for added, deleted, or Modified Events (Machine Instructions) Messages LOAD: send playlists and updates to MOS Gateway (progress, errors, warnings) O N s, : G n B u e t w ild s y s o ts P l a t e m d n y lis i n n ve
- , f o, u
W ri P a R E
- e r s
E v en e R Create e r
- u n t
L is d o w n
- q n, E
u e u e s MCNM DB Rundown & Event List queues System Map & Resource queues MOS Gateway MOS Retains all loaded playlists, Devices playlist & event status.
Distributes commands, updated status, event changes & messages.
MOS Control Workflow Monitor Mode LOAD As air time nears and the newsroom staff completes the rundown, someone—usually the producer or equipment operator—will instruct the monitor server to load the playlist into MOS devices. As the rundown is loaded in MOS Gateway, MOS Gateway loads individual playlists to the appropriate MOS device. The MOS device begins its assigned task, such as inserting CG text, checking for availability of video clips, and so forth.
Each MOS device sends MOS Gateway the status of the playlist, called a running order in the MOS Protocol. Each MOS device also sends the status of individual running order items, each one corresponding to a machine control event.
MOS Gateway then forwards these status messages to the monitor server. Error messages are returned to the iNEWS Workstation used to load the rundown. The monitor server also inserts status for video clips, such as whether the clip is available, into stories in the rundown and event lists located in the Newsroom Management database.
The MOS device operator can now take control of the MOS device and take the show to air.
The following diagram depicts communication paths after the monitor server is instructed to load playlists, status, and user messages.
MOS Control Workflow MCNM monitor Monitor Commands (ON, LOAD, UNLOAD, OFF) iNEWS servers Clients ON: Watch for added, deleted, or Modified Events (Machine Instructions) LOAD: send playlists and Messages updates to MOS Gateway (progress, errors, warnings) After O s, N : n LOAD: B G e w u ild t s y ts P s t e d o Event l a y m n n
- is t , i n f o u ve
)sgninraw S W , P R E ta t u r i t e a r s s E v e R Create r (A v e n u n e a i l t L d o n t a b is t q w n, E
- e , u e
C u u e e d , s ,srorre e t c . ) setadpU ,ssergorp( MCNM DB Rundown & Event List queues tnevE System Map & Resource queues sutatS segasseM ,tsilyalP tnevE MOS Gateway MOS Retains all loaded playlists,  Device & Event Status  Devices playlist & event status.
Distributes commands,  Playlist, Event Updates  updated status, event changes & messages.
2 Preparing for Installation This chapter describes the preliminary steps you must take before installing the MOS Gateway software, including:
• Familiarizing yourself with this manual, release notes, and other Newsroom Management documentation.
• Verifying required hardware and software components This chapter contains the following main sections:
• Before You Begin Installation Procedure • Hardware Requirements • Software Requirements • Supported MOS Devices Before You Begin Installation Procedure Setting up MOS Gateway involves doing tasks in three places:
• Newsroom Management Servers (at the console) • MOS Gateway • MOS devices (to which the system is connecting)
> **Note:** You should consult the MediaCentral Newsroom Management Guides for specific information on
Newsroom Management Servers, the console, or various related system operations.
Before you begin installing the MOS Gateway software, do the following:
• Read the MediaCentral MOS Gateway Release Notes for the most up-to-date product and installation information.
• Familiarize yourself with the entire installation procedure described in this manual.
• Ensure the installation media is available.
Hardware Requirements To install and run MOS Gateway, your system must have the minimum base equipment described in this section. For a list of qualified PCs, contact Avid Customer Support.
> **Note:** Minimum requirements are subject to change. For immediate updates on hardware
requirements, pertaining to this and all Avid products, visit Avid’s Web site at:
www.avid.com/products or view the latest documentation online at the Avid Knowledge Base online. MOS Gateway information is provided as part of specifications for the MediaCentral Newsroom Management system.
Device Description CPU 2GHz processor Memory 4 GB RAM Keyboard Standard Windows-based keyboard Monitor 15-inch color Video card Standard SVGA 1024x768 Hard drive 10 GB drive Disc controller IDE OK Mouse Windows-compatible mouse CD-ROM drive 4X CD-ROM drive Network card Windows-compatible 10/100 NIC.
Software Requirements There are certain minimum requirements that must be met to install and operate MOS Gateway. They are:
• Windows Server 2016 or Windows Server 2019.
• MediaCentral Newsroom Management system (version 3.5 or later) • MOS Protocol versions 2.6 and 2.8. MOS Protocol v3.x is not supported by MOS Gateway.
Supported MOS Devices Beginning with version 3.1.0, MOS Gateway uses Avid’s License Control application to manage licensing.
> **Note:** Minimum requirements are subject to change. For immediate updates on software requirements,
pertaining to this and all Avid products, visit Avid’s Web site at: www.avid.com/products or view the latest documentation online at the Avid Knowledge Base. MOS Gateway information is provided as part of specifications for the MediaCentral Newsroom Management system.
All iNEWS Workstations on a network using MOS Gateway 2.0 or later must be running version 1.5.1 or later of the Newsroom Management client software.
Supported MOS Devices A single MOS Gateway is able to process two MOS devices. While Avid does not qualify third-party devices, the following is a list of MOS devices with which MOS Gateway works.
This list is subject to change without notice. For the latest information, contact Avid Customer Support.
• Autocue • AutoScript • Avid AirSPACE (CountDown) • Beehive • Brainstorm • Chyron Aprisa (100, 250, and SSX) • Grass Valley Group’s NewsQ Pro • Netia Radio-Assist • Omnibus Columbus • Omnibus News Control • Pebble Beach Systems • Pinnacle FXDeko • Proximity Xenostore (with Pinnacle FXDeko) • Sony NewsBase • VertigoXmedia • vizrt Pilot 3 Installing MOS Gateway Program Files This chapter describes the process of installing the MOS Gateway.
This chapter contains the following main sections:
• Overview of the Setup - Adding IP Addresses on the MOS Gateway Server - Installing and Activating MOS Gateway Software • Upgrading MOS Gateway Software Overview of the Setup The following tasks must be performed on the MOS Gateway Server:
• Add IP addresses for the MOS Gateway and Newsroom Management Servers • Install and activate the MOS Gateway software • Configure the MOS Gateway software The first two tasks are described in this chapter. The configuration of the MOS Gateway is in 5.
Chapter Adding IP Addresses on the MOS Gateway Server Ideally, all MOS Gateway Servers, Newsroom Management Servers, and MOS devices would have each other’s IP addresses and computer names. It is not necessary to include IP addresses for iNEWS Workstations or other equipment.
> **Note:** The monitor server communicates with the MOS Gateway software only if the MOS
Gateway Server’s IP address is added to all of the Newsroom Management Servers’ files. Procedures for configuring Newsroom Management Servers, /etc/hosts including adding IP addresses, are located in “Adding IP Addresses for MOS Gateway the MOS Gateway” on page 60.
This section provides steps for adding IP addresses to the MOS Gateway Server.
To add IP addresses to the MOS Gateway Server:
1. Use My Computer or the Windows Explorer to open the
folder.
\Windows\system32\drivers\etc
2. Double-click on the hosts file.
3. A dialog box may appear with a list of programs to use for opening the file. Scroll
down the list and select Notepad. Ensure that you uncheck the box to “Always use this program.”
4. Click OK. The hosts file opens in a Notepad window.
5. At the bottom of the file, add lines listing the IP addresses and computer names for
Newsroom Management Servers, MOS Gateway Servers, and MOS devices.
For example:
Overview of the Setup 125.1.0.1 NRCS-A nrcs-a nrcs-a.yourdomain.com 125.1.0.2 NRCS-B nrcs-b nrcs-b.yourdomain.com 125.1.10.50 MOSGWY mosgwy # MOS Gateway 125.1.10.51 MOSDEV1 mosdev1 # MOS device 125.1.10.60 MG1 mg1 # MOS Gateway Server1 125.1.10.70 MG2 mg2 # MOS Gateway Server2
6. Save the file and close the Notepad window.
When saving the newly edited file, ensure that it does not have a .txt extension. The default options in Windows Explorer will not display this crucial information. To change this setting, open Windows Explorer and select Options from the View drop-down menu. In the dialog box, check Show All Files and uncheck Hide file extension for known file types, then click OK.
7. Repeat this procedure for each MOS device.
Installing and Activating MOS Gateway Software This section contains procedures for installing and activating MOS Gateway. Activation requires an internet connection. If the computer that MOS Gateway has been installed on has an internet connection, the activation procedure can be completed on that computer. If the computer that MOS Gateway has been installed on does not have an internet connection, MOS Gateway can be activated on a different computer that does have an internet connection. Instructions for both procedures, as well as installation are provided in this section.
If upgrading a system already running an earlier version of the MOS Gateway software, refer to “Upgrading MOS Gateway Software” on page 40.
To install MOS Gateway:
Insert the medium.
1. MediaCentral MOS Gateway
2. Run the file from the folder MOSGateway. InstallShield Wizard begins with
setup.exe notification of Avid License Control requirement.
Overview of the Setup
> **Note:** Before MOS Gateway will install, you will be prompted for installation of Microsoft Visual C++
2015-2019 Redistributable (x86), if it’s not already installed.
3. Click Install to continue. Clicking Install will prompt the Avid License Control to install.
4. Click Next to begin the iNEWS MOS Gateway InstallShield Wizard.
Overview of the Setup
5. Read the Avid Software License Agreement. Accept the terms and click Next.
6. Click Next to accept the default destination location, or choose the MOS Gateway
installation destination folder by clicking Change.
Overview of the Setup
> **Note:** Leaving installation at default destination will create any necessary folders.
7. When InstallShield Wizard prompts that installation is ready, click Install to continue.
8. When the installation is complete, you can then activate MOS Gateway. If you want to
activate later, click Done.
Overview of the Setup Activating the License You can activate MOS Gateway from the computer on which you installed the software if it has internet access. If it does not have internet access, you must activate MOS Gateway from another computer that does have internet access. Both activation methods are provided in the following procedures.
> **Note:** Two items are needed—System ID and Activation ID—to activate an installation of MOS
Gateway.
To activate MOS Gateway from computer with installed software and internet access:
1. Open Avid License Control if Avid License Control is not open.
2. Click Activate to begin activation of MOS Gateway.
3. Select to activate software using this computer’s internet connection.
Overview of the Setup
4. Click Continue.
Overview of the Setup
5. Type System ID and Activation ID in appropriate fields, and then click Activate.
Overview of the Setup
6. Click Done to finish. If MOS Gateway installer is still open, click Finish.
MOS Gateway is now successfully installed, activated, and ready for system configuration and service startup.
Overview of the Setup To activate MOS Gateway from a different computer that has an internet connection:
1. Open Avid License Control if Avid License Control is not open.
2. Click Activate to begin activation of MOS Gateway.
Overview of the Setup
3. Select to activate software using another computer’s internet connection.
4. Click Continue.
Overview of the Setup
5. Type the System ID and Activation ID, and then click Activate.
6. Follow the on-screen prompts. You need to go to www.avid.com/license on a computer with
internet access to enter the System ID, Activation ID and Device ID.
> **Note:** Avid recommends you write down the System ID, Activation ID and Device ID for later
reference.
Overview of the Setup
7. Go to the Avid License Web page. Type the Activation ID, Device ID, and supply your email
address.
Overview of the Setup
> **Note:** The System ID field will expose after an Activation ID is determined to be legitimate by the Avid
License Server.
8. Enter the System ID and click Submit.
9. Download the license file (.bin) by clicking Download.
> **Note:** While the .bin file downloads, you are given the option to Register or Activate another license.
This is optional, and at this point the activation process can be continued.
Overview of the Setup
10. Place the downloaded .bin file in a folder on the MOS Gateway computer.
11. Return to the Avid License Control application on the MOS Gateway computer.
Overview of the Setup
12. Click Browse, navigate to the .bin file and open .bin file.
Overview of the Setup
13. Click Done to complete the activation.
Upgrading MOS Gateway Software
14. If the MOS Gateway InstallShield Wizard is still open, click Finish. MOS Gateway is now
successfully installed, activated, and ready for system configuration and service startup.
> **Note:** The license key for MOS Gateway must be entered during the installation process if prompted.
The MOS Gateway License Manager tool will not properly install the key after the initial install.
Upgrading MOS Gateway Software Before upgrading to a newer version of MOS Gateway software, any previous version of the software must be uninstalled first.
Running the setup program on a system that already has a previous version installed will not overwrite all the necessary files.
Additionally, previous versions of the MOS configuration file (mosconfig.xml) cannot necessarily be used with later versions of the MOS Gateway configuration file.
Since the new configuration file will often require editing after the installation, Avid recommends you print the old file as a reference before uninstalling the old software and upgrading to a new version of MOS Gateway.
Upgrading MOS Gateway Software To print the MOS configuration file:
1. Open Notepad.
2. Select File > Open.
3. Navigate to the configuration file, which is an XML file typically located at:
C:\Program Files (x86)\Avid\iNEWS MOS Gateway
4. Do one of the following to print the file:
mosconfig.xml
- Select File > Print.
- Press Ctrl+P.
To uninstall MOS Gateway:
- Use the Add/Remove programs feature in the Windows Control Panel.
After all previous versions of the software is uninstalled, upgrade by installing the latest version of Gateway, according to the procedure in “Installing and Activating MOS MOS Gateway Software” on page 24.
After the new version of software is installed, complete the upgrade by using the printed copy of your old configuration file to edit the new default mosconfig.xml file with your site’s <mosDevice> information. See “Editing the Configuration File” on page 76 for more information.
4 Setting up the Newsroom Management Server After MOS Gateway is installed, you must set up the Newsroom Management Server to use MOS Gateway. This chapter provides the procedures for setting up the servers.
This chapter contains the following main sections:
• Configuring Newsroom Management Servers - Configuration Summary - Configuration Details Configuring Newsroom Management Servers There are certain tasks that must be performed on the Newsroom Management Servers at the console, and at an iNEWS Workstation. These tasks must be completed to download playlists and updates to MOS Gateway. This chapter assumes:
• Your site has a fully functioning network.
• Your newsroom computer system servers are operational and running the Newsroom Management Server software, which supports the MOS protocol.
• The Newsroom Management Servers are connected to a console multiplexor, to which Customer Support technicians have dial-in access.
• The person performing the installation has attended a Newsroom Management system administration course or has equivalent experience. This includes having a working knowledge of ed, the UNIX line editor, a familiarity with the Newsroom Management client software, and selecting servers at the console.
> **Note:** It is highly recommended that you have MediaCentral Newsroom Management Setup
Configuration Guide available while conducting procedures found in this chapter. Selecting servers is explained in Chapter 2 of the operations manual and the UNIX line editor is explained in Chapter 10.
Configuration Summary The set-up procedure has the following steps: Each step is explained further in “Configuration Details” on page 44.
1. Step 1: Creating a Monitor Server for Each Show (page 44)
2. Step 2: Creating Composite and Event List Queues (page 49)
3. Step 3: Setup Queue and Story Forms (page 52)
4. Step 4: Edit the SYSTEM.MOS-MAP Story (page 56)
5. Step 5: Assigning Forms to Queues (page 57)
6. Step 6: Create an Entry in the SYSTEM.MAP Story (page 59)
7. Step 7: Adding IP Addresses for the MOS Gateway (page 63)
8. Step 8: Updating the Newsroom Management System Dictionaries (Optional) (page 65)
9. Step 9: Configure Newsroom Management for MOS Replication (Optional) (page 68)
Configuration Details Configuration Details The following steps do not include setting up external devices, such as character generators and still stores, which play broadcast events. Refer to the manufacturer’s documentation provided with the device for more configuration details.
The configuration procedure comprises the following steps:
Step 1: Creating a Monitor Server for Each Show Monitor server is a utility program that checks a show’s event requests for errors, creates composite and event lists, and sends playlists to MOS Gateway.
> **Note:** This section assumes rundown queues for the shows being monitored already exist. If not, create
them before continuing. Refer to the MediaCentral Newsroom Management Setup Configuration Guide for more information.
A monitor server must be assigned device and mailbox numbers—typically, these numbers are the same. A device number is chosen for monitor server so Newsroom Management recognizes the server as a valid device. The device number must be entered in the system’s configuration file. The mailbox number must be assigned to both the show’s monitor server and its rundown queue.
> **Note:** A mailbox is an activation mechanism for a server (utility) program, so if a queue has a mailbox
number matching a server program, then that server is the one activated or “awakened” whenever something happens to the queue. See the MediaCentral Newsroom Management Setup Configuration Guide for more information on mailboxes and other server programs The mailbox enables Newsroom Management to notify the monitor server of changes made to a rundown queue while a show is monitored. The monitor server then updates composite and event lists, as well as any playlists, if necessary.
To create and configure a monitor server:
1. Check the Newsroom Management configuration file (/site/config) and choose the next
available device number for the monitor server, from the range of 3-digit numbers reserved for use by your system’s server programs, such as 201 to 300.
> **Note:** Valid standard mailbox numbers are 1 through 4096. For more on mailboxes, see “Using
Mailboxes” in the MediaCentral Newsroom Management Setup Configuration Guide.
Configuration Details
2. Verify whether this same 3-digit number is available as a mailbox number by doing the
following:
a. Use the list console command to ensure no other device is using the mailbox number you have chosen.
For instance, to check mailbox 266, type:
list mailbox=266 c Information similar to the following appears:
DEV DEVICE_TYPE COMPUTER CCU PRINTER SPEED OPTIONS DEVNAME
> **Note:** For other list command options for determining mailbox assignments of queues and servers, see
“Using the list Command to View Assigned Mailboxes” on page 49.
b. If you see the device configuration header (as shown in step 2a) with no information below it, then no device has that mailbox and you can use that number. However, if configuration information for a device appears below the header, that device has the same mailbox as the one you chose. Therefore, choose another mailbox number and repeat step 2a.
> **Note:** If the mailbox number is already being used, and you must choose another, you may want to try
another device number for the monitor server as well. Typically, mailbox numbers match server program device numbers, although this is not required. However, the mailbox number you select must be assigned to the queue monitored by the server program. Multiple queues can share the same mailbox number. See “Assign the Mailbox to the Rundown Queue” on page 48 for more information.
Always back up the /site/config file before making any changes. See “Making a Backup File” in Chapter 10 of the MediaCentral Newsroom Management Setup Configuration Guide for more information.
3. Add the monitor server to the /site/config file on each Newsroom Management Server—
such as server A and server B in a dual server system— by doing the following:
a. At the console, select all Newsroom Management Servers. Instructions for how to do this is provided in the MediaCentral Newsroom Management Setup Configuration Guide.
> **Note:** This procedure, which modifies the /site/config file uses ed, the line editor. If you do not know
how to use ed to modify lines in the file, please see “The Line Editor” section of the MediaCentral Newsroom Management Setup Configuration Guide.
b. Use the ed command to open and edit the configuration file, by typing:
Configuration Details ed /site/config After you press Enter, the editor responds by displaying a number, as shown, indicating the file size expressed as the number of characters, including spaces and returns.
c. Add the monitor server’s device number to the servers line in the host definition for the Newsroom Management Server that will run the monitor server program. For instance:
servers 261 263 265 267 The device number 267 is added to the servers line in this example.
> **Note:** Divide your server programs evenly among your Newsroom Management Servers to distribute
the load they put on your system. For instance, put odd numbered programs on server A and even numbered ones on server B. Additionally, ensure that you also add the configuration line for the monitor server to alternate host definitions for your Newsroom Management Servers.
This ensures it can run on the surviving computer should one of your Newsroom Management Servers stop functioning.
d. Add a configuration line for the monitor server in the host definition belonging to the Newsroom Management Server that will run the server program. This line begins with the word server and contains the mailbox number assigned to the monitor server.
> **Note:** Do not confuse the configuration line, which starts with server, and the servers line
mentioned in 3c (page 46), which lists device numbers.
The format for server programs’ configuration lines are:
server <device#> <type> <mailbox> <device name> Parameter Description Device The device number assigned to the server program. This 3-digit number must also be listed in the line in a host definition.
servers Type The type of server program, such as monitor. Others include: action, distribution, parallel, keyword, seek, and so forth.
The mailbox the server program uses. Valid standard mailbox numbers are through
4096. This number typically matches the server program’s device number.
Device name To give the monitor server a device name, enter that name here (up to 8 characters). If not, enter a hyphen.
Configuration Details The following are sample configuration lines for various server programs:
server 256 action 256 actphon ;action svr server 257 distribution 257 devname1 ;dist server server 258 parallel 258 devname2 server 259 keyword 259 key1 ;keyword server server 260 seek 260 seek ;seek server server 261 ftsseek 261 - ;fts searches server 262 ftsindex 262 - ;fts indexing server 263 print 263 - ;print server server 264 monitor 264 - ;monitor server server 265 monitor 265 - ;monitor server server 266 monitor 266 - ;monitor server server 267 monitor 267 - ;monitor server
> **Note:** Text appearing after the semicolons (;) are optional comments.
e. When you finish making changes to the configuration file, save your changes by typing:
w
> **Note:** Do not use an uppercase (W) in step 3e. See the MediaCentral Newsroom Management Setup
Configuration Guide for more information.
f. When you press enter, a number will appear, such as 1279, indicating the file size. You can then exit the UNIX line editor by typing: q
4. (Optional) Test your configuration changes. See “Testing the Site Configuration File After
Alteration” in Chapter 10 of the MediaCentral Newsroom Management Setup Configuration Guide for more information.
> **Note:** After editing the configuration file (/site/config), it should be backed up. See “Making a Backup
File” in Chapter 10 of the MediaCentral Newsroom Management Setup Configuration Guide for more information.
Before the monitor server can be used, two more tasks must be completed:
- Reconfiguring the system to incorporate the new device (monitor server) into your system’s operation.
- Adding the monitor server’s mailbox to the rundown queue it will be monitoring.
These tasks are covered in the next two sections.
Configuration Details Reconfigure the System You do not need to stop anything to reconfigure the system.
To reconfigure the system:
1. At the console, select the master computer (typically server A).
2. Type su to log in as superuser and type the superuser password.
3. Take the system offline by typing: NRCS-A$ offline
4. Configure the system, using the following format: configure
5. Bring the system back online by typing:
NRCS-A$ online
6. After you see the message, exit from superuser mode.
System being configured (Ctrl+D).
Unlike other utility programs, it is not necessary to start a monitor server when you add it to the configuration file. It starts when someone uses the or monitor on monitor load command for the rundown queue to which you have assigned the monitor server.
Assign the Mailbox to the Rundown Queue After you choose the monitor server’s mailbox number and verify that it is not used by another device, you must also assign it to the show’s rundown queue, being monitored by the monitor server.
For instance, the rundown queue in the following procedure is SHOWS.6PM.RUNDOWN, and the mailbox being assigned is number 267.
> **Note:** Mailboxes are assigned to queues in the same way other database traits are—using the Queue
Properties dialog box. See the MediaCentral Newsroom Management Setup Configuration Guide for more information.
To assign a mailbox to the rundown queue:
1. Log in as a system administrator—that is, with a superuser account—to an iNEWS
Workstation.
2. Navigate to the rundown queue, such as the queue named Rundown located in the
SHOWS.6PM directory.
3. Right-click on the queue and select Properties from the pop-up menu.
4. In the Queue Properties dialog box, click on the Maintain tab.
5. Select the Standard radio button located in the Mailbox section.
6. Type in the mailbox number, such as 267.
7. Click OK to save changes.
Configuration Details Using the list Command to View Assigned Mailboxes Variations of the command can be used at the console to determine mailbox assignments list for specific devices, queues, and so forth.
Since multiple queues can share the same mailbox, you can list all queues and directories in the database that are using a certain mailbox, such as 267.
To do this, type: list mailbox=267 d To find out which monitor server mailboxes are assigned:
- Type: list c monitor
The system displays configuration information for your system’s monitor servers, similar to the following:
DEV DEVICE_TYPE COMPUTER CCU PRINTER SPEED OPTIONS DEVNAME S264 monitor A N264 S265 monitor B N265 S266 monitor A N266 S267 monitor B N267 NRCS-A:
The mailbox number assigned to each monitor server appears in the PRINTER column and begins with the letter, N.
To see if any servers are assigned a certain mailbox number, use the following format: list mailbox=<mailbox number> c For instance, to check whether mailbox 267 is assigned to a server program, type:
list mailbox=267 c Step 2: Creating Composite and Event List Queues The monitor server scans stories for machine control events and builds lists of these events, which can be referenced or used to transmit data to production devices, such as character generators (CGs) or still stores. These lists, known as composite and event lists, are valuable resources for a show’s director and production device operators. An event list contains details for a specific MOS device, while a composite list contains status information for all devices connected through MOS Gateway.
You may want to create only composite and/or event lists for certain production devices, such as MOS Gateway. If you do not create list queues for some devices, the monitor server will not create lists.
Configuration Details For these lists to exist, queues for them must be created—if they do not already exist—and they must be “mapped” to the monitor server so it knows where to put composite information and event lists. This step in the procedure explains how to create queues. For more on mapping, see “Step 6: Create an Entry in the SYSTEM.MAP Story” on page 59.
To create and configure the composite and event list queues:
1. At an iNEWS Workstation, log in as a system administrator—or user with authority to create
queues in the Newsroom Management database.
2. Navigate to and select the directory (folder) created to hold the queue you want to create.
3. Do one of the following:
- Click Tools > New Queue.
- Right-click on the folder in the Directory panel, and select New Queue from the pop-up
menu.
A new queue appears under the folder you selected and at the end of any list of existing queues. The title, New-Queue, is highlighted, so you can rename it.
4. Type the name of the new queue, such as or CG1.
COMPOSITE
> **Note:** The pathname of each device’s event list queue is a combination of the event list directory and
the device manager’s name. For instance, if you want an event list for the 6PM show that has a character generator called CG1, you may select to place the event list queue in the SHOWS.6PM directory (as shown above). The pathname would be SHOWS.6PM.CG1. Using the same example, the pathname for the composite list queue would be SHOWS.6PM.COMPOSITE.
5. Press Enter to save the new queue name.
Configuration Details The newly created queue will inherit database traits of its parent directory initially. You can open the new queue by double-clicking on it. For more information about queues and their database traits, see the MediaCentral Newsroom Management Setup Configuration Guide.
6. To have monitor server display information in these lists properly, each queue must have a
1-line display and be assigned the proper queue form. Assigning these forms is covered in “Step 5: Assigning Forms to Queues” on page 57.
a. Navigate to and right-click on the composite or event list queue in the Directory panel.
b. Select Properties from the pop-up menu. The Queue Properties dialog box appears.
c. Select the User Interface tab.
d. Set Preview Lines to the number of lines you want displayed in the Queue panel.
e. Click OK to save changes.
7. To ensure that you can use the queues effectively, remove the inverted database trait and
apply the refresh database trait to them. This can be done by removing the check mark from the Inverted check box on the User Interface tab of the Queue Properties dialog box at any iNEWS Workstation.
For more information about assigning database traits to queues, see the MediaCentral Newsroom Management Setup Configuration Guide.
8. Assign a write security group to your event and composite list queues to ensure that only the
monitor server makes changes to the composite and event lists. It is recommended that you restrict writing access of these queues to superusers.
For more information on how to assign write groups to queues, see “Group Traits for the Database” in Chapter 6 of the MediaCentral Newsroom Management Setup Configuration Guide.
Configuration Details After the composite and event list queues are created, the monitor server must be created—as described in step 1 on page 44—and mapped to them. This will enable the monitor server to determine the queue where the composite list should be placed and the directory where the event list queues are located. The procedures for mapping the monitor server to composite and event list queues are explained in “Step 6: Create an Entry in the SYSTEM.MAP Story” on page 59.
Step 3: Setup Queue and Story Forms Add MOS Gateway fields to existing rundown queue and story forms in Newsroom Management. These fields are explained in following table.
> **Note:** For a field to exist in a queue form, it must also exist in a story form. Refer to Chapter 8 in the
MediaCentral Newsroom Management Setup Configuration Guide for details on creating or modifying forms and other form field types.
The relationship of fields pertaining to time calculations, such as RUNS-TIME and MOS-DURATION, is explained further in “Calculating Duration in Time Fields” on page 54.
Field Type Description EVENT-STATUS This field displays availability and play status of a Command or MOS event, as reported by the production device involved. For instance, a video event could be reported as OFFLINE, CUED,PLAYING, or STOPPED, among other things.
ITEM-CHANNEL This field is required to allow changing of the channel that primary events will play on. It does not apply to events entered as production cues in the story body. The ITEM-CHANNEL field is used to set or display the channel for primary Command or MOS video events.
> **Note:** Both VIDEO-ID and ITEM-CHANNEL are required when integrating
with Command and sending video-ids from the story form. If ITEM-CHANNEL is missing, any story updates will cause Command to recue to the default channel.
A user can edit this field—thereby changing the play out channel for a primary event—manually or through the Assign Channel dialog box at the iNEWS Workstation. Any changes made at an iNEWS Workstation will be relayed to the appropriate device.
> **Note:** When using the Assign Channel dialog box for MOS plug-in events,
the channel information is displayed in the ITEM-CHANNEL field.
Configuration Details Field Type Description (Continued) MOS-ACTIVE This write-protected field is required for the Story Form to accept MOS events. The field’s content is created by the software when MOS events are created. Content may be cleared if the user selects Delete Machine Control from the right-click pop-up menu. If the VIDEO-ID field is also present, it will be empty and read only whenever there is a value in MOS-ACTIVE.
MOS-DEVICE This field is required to allow the system to display the AMCPID of the MOS device. If added to the rundown’s form, when the monitor server is turned on, the status of the MOS item sent to the identified MOS device is displayed in the STATUS field of the rundown—even if the device is not the primary one listed in SYSTEM.MAP.
MOS-DURATION This editable field is required to allow duration information from MOS events to be included in calculations for CUME-TIME, BACK-TIME or TOTAL-TIME fields.
A user can enter a value, which appears bold, directly into this field, which will be used only in show-timing calculations. Such user-entered information does not become part of MOS events that are passed on to the appropriate MOS device. Deleting user-entered information from the field will allow show-timing to revert back to duration information supplied by MOS events.
The contents of MOS-DURATION field are only used if a RUNS-TIME field is present in the story. The contents of the MOS-DURATION field is added to the computed runs time of the story and this total is shown in the RUNS-TIME field. If the user enters a time in the RUNS-TIME field, the MOS-DURATION field contents are ignored.
MOS-TITLE This write-protected field is required to allow the display of descriptive text associated with MOS or CAP events.
MOS-OBJID This write protected field captures the information in the <mosobjid> tag from MOS communication.
Configuration Details Field Type Description (Continued) RUNS-TIME This field displays the sum of all “runs=” times in a story’s production cues plus the contents of the MOS-DURATION field. If time is in the field, the system will use it to calculate total time.
Runs time entries and the RUNS-TIME form field are not updated when the iNEWS Workstation is connected only to the local database. When connected to both the local database and server, the runs times will be updated when the local database story is edited. Also, when the story is copied from the local database into a queue on the Newsroom Management Server, its runs times will then be updated accordingly.
The field functions much like the AUDIO-TIME field in that it can accept user entered times while still maintaining the “real” runs time. For example, a user can manually enter a time of 45 seconds in the field and that time will be reflected in the TOTAL-TIME field. The sum of runs time entries as calculated in the RUNS-TIME field are also included along with time from story text in the text timing clocks, located at the bottom of the Story panel.
However, if a user manually edit the RUNS-TIME field, that data will not be included in the times calculated for the text timing clocks.
By default, the Runs Time feature uses the word RUNS (not case-sensitive) to indicate a runs time entry, which is quite flexible. Some examples are:
RUNS=25 RUNS=1:30 RUNS = 25 RUNS 1:30 TAPE RUNS 115 You can change this default by redefining the token W_RUNS on the server in /site/dict/words.
> **Note:** A runs time entry of 115, as shown in the last example above, is the
equivalent of one minute and fifty-five seconds (1:55). The number 115, without a colon, is interpreted as the number of seconds. So, 115 is not the same as 1:15.
Calculating Duration in Time Fields Some form fields in Newsroom Management are dependent on others. This is primarily evident in the relationship between the RUNS-TIME field and the MOS-DURATION field. The following diagram provides a visual outline of how input in certain form fields directly affects what appears in others.
Configuration Details Three MOS items are inserted into the Story panel of the Newsroom Management Workspace.
Only one—MOS item C in the example—can be dragged and dropped into Story Form panel; any additional items must be dragged and dropped into the Story Text or Instruction panels.
When a MOS item is inserted into the story, the time associated with that item may be inserted too—either appearing in the MOS-DURATION field for an item dragged to the Story Form panel, or as a Runs time shown in a machine control event in the Instruction panel. Whether a MOS item’s time is inserted is determined by settings defined in the SYSTEM.MOS-MAP story.
See “Step 4: Edit the SYSTEM.MOS-MAP Story” on page 56 for more information.
RUNS-TIME fields are used in the Story Form panel, then the If both MOS-DURATION and RUNS-TIME field will display the calculated sum of time appearing in the MOS-DURATION field and all Runs times from the Instruction panel. The TOTAL-TIME field will show the calculated sum of values from the RUNS-TIME, AUDIO-TIME, and TAPE-TIME fields.
Configuration Details Users may manually enter times in the TAPE-TIME field. The time appearing in the AUDIO-TIME field is the estimated read time of the text in the Story Text panel, as calculated by the Newsroom Management system, according to reading speeds defined by the system administrator.
Step 4: Edit the SYSTEM.MOS-MAP Story The story contains a section of information, known as the DeviceTable, SYSTEM.MOS-MAP which consists of two columns:
• The first column has the MOS device’s mosID—reported by the vendor's ActiveX control. It must match the value in the file, which is installed on the MOS <mos> mosconfig.xml Gateway Server.
• The second column has an Newsroom Management device name associated with the mosID to display in machine control events in the story body. It must match the <amcp> value in the mosconfig.xml file.
The following is an example of a story with a single device listed in the SYSTEM.MOS-MAP DeviceTable:
TABLE-START DeviceTable Mos.omnibus.co.uk OmniMOS TABLE-END
> **Note:** If the story does not exist, it must be created in Newsroom Management as
SYSTEM.MOS-MAP the first story in the MOS-Map queue in the System directory.
The SYSTEM.MOS-MAP story may also be used to set up whether times related to MOS items are displayed in the Queue panel (rundown) or Story Form panel. It may be configured for all MOS devices or on an individual basis.
For sites that do not want MOS item information displayed—in the RUNS-TIME or MOS-DURATION fields—the system administrator must edit the story.
SYSTEM.MOS-MAP To block the display of time information from all MOS devices:
- Add the following line to the SYSTEM.MOS-MAP story in Newsroom Management:
ReplaceTime=NO
> **Note:** The line should precede the start of the DeviceTable in the story. If the ReplaceTime value is
set to NO, it will apply to all devices listed within the DeviceTable.
Configuration Details To exclude time information from a single device, while allowing the display of similar input for other devices:
1. In the SYSTEM.MOS-MAP story, set the ReplaceTime value to YES.
2. Append <noDur> to the line associated with the single device, located within the
DeviceTable.
The <noDur> tag must not be used at sites with workstations running a version of Newsroom Management earlier than 1.5.1. Earlier versions of Newsroom Management do not recognize the tag as a command to suppress the display of duration information, but identify it as a channel for the MOS device, whether the device uses channels. Users on iNEWS Workstations running versions earlier than 1.5.1 may see <noDur> appear in the channel list when loading the monitor server.
In the following example, no duration time will be displayed for the NewsQPro device.
ReplaceTime=YES TABLE-START DeviceTable ;MOSID AMCPDeviceName sony sonyem MOSGATE qamosgw chan1 chan2 chan3 PILOT pilot AIRSPACE airem VERTIGO vertigo NewsQPro NQPro <noDur> NETIAMOS netia TABLE-END Step 5: Assigning Forms to Queues After you create queues to hold the composite and event lists, you must assign forms containing MOS Gateway fields to each queue.
For instance:
• Assign a form designed to display composite list information to SHOWS.6PM.COMPOSITE • Assign a form designed to display the information in a character generator’s event list to SHOWS.6PM.CG1 Configuration Details
> **Note:** Your system includes default forms—located in the SYSTEM.FORMS directory—for composite,
still store, character generator, and video event list queues. If upgrading to Newsroom Management from a previous product version, such as NetStation, you must update forms for composite and event list queues, including rundown forms.
To assign a form to a queue:
1. At an iNEWS Workstation, navigate to the queue you want in the Directory panel.
2. Right-click on it. A pop-up menu will appear.
3. Select Properties. The Directory/Queue Properties dialog box will appear.
> **Note:** Access to the Directory/Queue Properties dialog box and its appearance vary, depending on
certain circumstances. See Chapter 5 of the MediaCentral Newsroom Management Setup and Configuration Guide for more information.
4. Do either or both of the following:
- Use the Queue drop-down list on the Forms tab to select the form you want to apply to the directory as queue form database trait.
- Use the Story drop-down list on the Forms tab to select the form you want to apply to the directory as story form database trait.
5. If you made changes to an existing form, you must select the Update existing stories to use
story form. When this check box is selected, Newsroom Management changes the story form assignment for previously existing stories with the queue.
6. Click OK to save changes and apply the new queue/story form settings.
Configuration Details
> **Note:** Users should log off and sign back on to view the new queue/story form settings.
You must assign a queue form and a story form. The queue form determines the look of the queue. The story form determines how an event request is displayed when you double-click it.
For instance, to assign the standard composite list queue form to the SHOWS.6PM.COMPOSITE queue, select mcs-composite from the Queue drop-down list in the Queue Properties dialog box. To assign a story form to this composite list, select mcs-composite from the Story drop-down list in the Queue Properties dialog box.
> **Note:** The forms will only appear in the drop-down lists if they exist in the database. For information
about how to create your own forms or modify existing forms, and about database traits, see the MediaCentral Newsroom Management Guides.
Step 6: Create an Entry in the SYSTEM.MAP Story The map story is a standard Newsroom Management database story and is always the first story in the queue. It can be opened and edited like any other Newsroom Management SYSTEM.MAP database story; however, access to it is typically limited to system administrators who already have access to the System directory.
When you create a show’s map story entry, you will usually specify that monitor server create and maintain event and composite lists when someone monitors the show.
> **Note:** On a small system, the work required to update composite and event lists could affect overall
system performance. In these cases, specify in the show’s story entry that monitor SYSTEM.MAP server should not create composite and event lists, or that it create one and not the other.
After creating the show’s monitor server, add an entry for the show to your system’s map story.
This entry specifies to the show’s monitor server the location of the show’s rundown queue, and composite and event lists. Without this information, the monitor server will not create lists.
The map story entry also specifies the list of groups that can monitor a queue, and when the monitor server turns itself off.
Configuration Details To add an entry for the show in the map story:
1. Open the SYSTEM.MAP story, which contains a separate entry for each show that will be
produced using MOS Gateway or Command. The following is a story with SYSTEM.MAP three sample entries.
;RUNDOWN EVENT DIR COMP DIR GROUP (OFF TIME) ;DEVICE DEVNAME UPDATE MCT TEMPLATE (MSG DIR) ; SHOW.10P.RUNDOWN SHOW.10P SHOW.10P.COMPOSITE - 130 ss ss@bcssvr-1,bcssvr-2 UPDATE bcs-bcw cg cg@bcssvr-1,bcssvr-2 UPDATE bcs-bcw C:NAB:300 499 mos sony@mosgwy UPDATE bcs-bcw - ; ; SHOW.6P.RUNDOWN SHOW.6P SHOW.6P.COMPOSITE - 2100 ss ss@bcssvr-1,bcssvr-2 UPDATE bcs-bcw cg cg@bcssvr-1,bcssvr-2 UPDATE bcs-bcw C:NAB:500 699 mos sony@mosgwy UPDATE bcs-bcw - ; ; SHOW.SPECIALS.RUNDOWN SHOW.SPECIALS SHOW.SPECIALS.COMPOSITE - ss ss2@bcssvr-1,bcssvr-2 UPDATE bcs-bcw cg cg2@bcssvr-1,bcssvr-2 UPDATE bcs-bcw C:NAB:300 499 mos sony@mosgwy UPDATE bcs-bcw - Each show’s map story entry must begin with a line called an entry header, shown in ALL CAPS, and must be followed by a device list.
2. Create an entry header. As shown in the example, the entry header specifies the following
information for each show:
- The show’s rundown queue - The directory where you want to hold the event list queues - The composite list queue Configuration Details - Groups of users who can monitor the show, if any. If none, put a hyphen here.
- The time you want the monitor to turn itself off—when you want the system to stop monitoring the show
> **Note:** The entire entry header must be in a single paragraph in the map story, and is limited to 255
characters. Any text that does not fit within this limit is not read by the monitor server. If your site’s rundown, event list, and composite list queue names are very long, you might have to shorten the names to get them to fit.
You must specify the parameters in the entry header in the order indicated in the following table:
Parameter Definition Rundown Queue The full pathname of the show’s rundown queue.
Event List Directory (Optional) The directory in which event lists are stored. The monitor server combines information you put here with the device name. For instance, if you specify SHOWS.6PM here and you have a still store machine called “ss1,” the monitor server puts the still store’s event list in shows.6pm.ss1. It is a good idea to use the same directory that holds the show’s rundown. If you do not use this field, put a dash here.
Composite List Queue (Optional) The queue in which the show’s composite list is stored.
It is a good idea to put the composite list in the same directory as the show’s rundown queue. If you do not use this field, put a dash here.
Group of Users (Optional) Put a security group in this field so that only superusers and people assigned to that group can monitor the show.
Put a dash here if you do not want to restrict who can monitor the show.
Consider using different security groups for each show in a series of back-to-back shows to prevent one show’s producer from starting or stopping another show’s monitor server.
Quit Time The time you want the show’s monitor server to turn itself off.
You can enter this time as either a time of day or a duration.
Enter the time of day in 24-hour format. For instance, type 1915 to have the monitor server turn itself off at 7:15 PM.
Enter a duration by typing D before the value. For instance, enter a duration of one hour and 30 minutes as D130. (These values are not case-sensitive.) Configuration Details
3. List the devices used by the show. You must follow the entry header with a device list that
identifies production devices for which you want the show’s monitor server to process event requests. As shown in the example, the device list specifies the following information:
- The type of production device, such as cg (for character generator), mos (for a mos device), etc.
- The name of the production device
> **Note:** The production device name—which is shown as sony@mosgwy in earlier sample map story—
contains two parts. The first part that precedes the at (@) symbol must match the <amcp> value in the mosconfig.xml file; in the example, the value is sony. The second part of the name must match the hostname of the computer with MOS Gateway’s IP address, as identified in the /etc/hosts file on the Newsroom Management Server. In the example, the hostname is mosgwy.
- Whether the monitor updates the device’s playlist - The form for the show - The last parameter of the device list line—Drive, Directory/User#, and so forth, as defined in the following tables:
Parameter Definition Parameters for Character Generators:
Drive Select the disk drive you want the machine to use. If you leave this field empty, the machine uses its default drive.
Directory/User# Select the directory you want the character generator to use.
Address/Stack Specify a range of addresses in this field. The monitor server uses this range to store the forms it builds. To specify a range of addresses, enter the starting address, followed by a space and the ending address. For instance, to reserve addresses 1 through 199, type 1 199 in this field.
The range of numbers must be large enough to hold all character-generated graphics—also known as supers—that monitor server is likely to build for the show. Also, ensure you do not select a range that conflicts with the addresses the character generator uses to store its permanent supers or CG forms.
Parameters for Still Stores:
Drive Select the disk drive you want the machine to use. If you leave this field empty, the machine uses its default drive.
Directory/User# If your still store machine has user numbers, use this field to specify the user number you want to use for that show.
Configuration Details Parameter Definition (Continued) Address/Stack Specify the stack you want the still store to use in this field.
Parameters for Video Machines:
Channel Assignment This parameter specifies whether the Newsroom Management system, the ControlAir Workstation, the device manager, or the video (cart) device assigns channels. Use these codes:
0 to have channels assigned by device 1 to have channel assigned by Newsroom Management 2 to have channels assigned by device manager 3 to have channels assigned by ControlAir Workstation Parameters for MOS Devices:
None at present Put a hyphen (-) in this field.
4. Save the map story.
5. Test monitor the show to ensure map story entries are functioning correctly.
The monitor server only examines the show’s map story entry when a user turns it on, so any changes to the show’s map story entry will not take effect until then. Changes made to the show’s map story entry after the show is monitored do not take effect until the next time the show is monitored.
For this reason, you should monitor the show after creating or modifying the show’s map story entry to test the changes you make. Monitoring the show allows the monitor server to check your work and ensures smooth operation when you produce the show.
Step 7: Adding IP Addresses for the MOS Gateway To enable monitor server to communicate with MOS Gateway, the IP address of the MOS Gateway Server must be added to all Newsroom Management Servers’ /etc/hosts files.
Ideally, all MOS Gateway Servers and Newsroom Management Servers would have each other’s addresses and computer names. See “Adding IP Addresses on the MOS Gateway Server” on page 23 for more information. The following procedures explain how to add the MOS Gateway IP addresses to the Newsroom Management Servers.
> **Note:** To maximize reliability and minimize latency, MOS Gateway should be installed on the Mirror
Net of the Newsroom Management hosts, and static IP addresses should be used in /etc/hosts files. This will avoid dependence on DHCP or DNS servers.
Always back up the /etc/hosts file before editing.
Configuration Details To add IP addresses to all Newsroom Management Servers’ /etc/hosts files:
1. Select all servers at the console. Instructions for how to do this is provided in Chapter 2 of
the MediaCentral Newsroom Management Setup Configuration Guide.
2. Type to log in as superuser and type the superuser password.
su
3. Type ed /etc/hosts.
This command launches the UNIX line editor, and positions the cursor at the end of the /etc/hosts file, which contains a list of IP addresses, computer names, and comments, such as:
125.1.0.1 NRCS-A nrcs-a nrcs-a.yourdomain.com 125.1.0.2 NRCS-B nrcs-b nrcs-b.yourdomain.com
> **Note:** These steps require the use of ed, the UNIX line editor. For more information, see Chapter 10 of
the MediaCentral Newsroom Management Guides.
4. Add addresses to the file by doing the following:
a. Type and press Enter to append information to the file.
a b. Enter IP addresses, computer names, and comments, such as:
125.1.10.50 MOSGWY mosgwy #MOS Gateway machine c. Type a period (.) to stop appending information to the file.
d. (Optional) Type p to print the appended file and verify your changes.
e. Save the file by typing w.
> **Note:** Do not use an uppercase W.
f. Quit ed by typing q.
The following example shows the UNIX line editing commands along with explanations (appearing in parentheses after the command):
a (begins append mode) 125.1.10.50 MOSGWY mosgwy # MOS Gateway 125.1.10.60 MG1 mg1 # MOS Gateway Server1 (backup MOS Gateway) 125.1.10.70 MG2 mg2 # MOS Gateway Server2 . (ends append mode) p (prints appended file) w (saves changes by writing the file to the disk) Configuration Details 362 (ed responds by displaying file size) (quits the edit session) q Step 8: Updating the Newsroom Management System Dictionaries (Optional) Machine Control System (MCS) dictionary files in Newsroom Management can be modified to customize the appearance of status indicators from various devices. Dictionary files are located in the /site/dict directory.
For instance, an Omnibus device, connected to Newsroom Management, shows a video play-back status of “OnAir,” but the status field in the show rundown on Newsroom Management shows “Play” instead. If the system administrator wants the two status indicators to match, the MCS dictionary file in Newsroom Management must be modified. This will “translate” the Newsroom Management status wording so that it corresponds to what appears on the actual device.
In the following procedure, as an example, the term “Play” is changed to “OnAir” in the dictionary.
To edit the /site/dict/mcs dictionary file:
1. Select all servers at the console, so changes you make are made to each server’s copy of the
file. See “Selecting One or More Servers” in Chapter 2 of the MediaCentral Newsroom Management Setup Configuration Guide for more information.
2. Open for editing by typing:
/site/dict/mcs ed /site/dict/mcs
3. Navigate to the line with the word you want changed, such as “PLAY” by typing:
/PLAY The console will respond with a display similar to the following:
A_CAPLAY /PLAY In the above example, PLAY appears twice in the line.
> **Note:** When navigating in the file, remember the UNIX line editor is case-sensitive. So, typing either
or will not locate a line with “PLAY.” /Play /play
4. Substitute the new word, such as “OnAir,” for the second occurrence of the existing word,
PLAY, by typing: s?/PLAY?/OnAir The console will respond with a display similar to the following:
A_CAPLAY /OnAir
> **Note:** The question marks are necessary to prevent the editor from substituting “OnAir” in place of the
first occurrence of the word, “PLAY.” For instance, typing would result in the s/PLAY/OnAir edited line appearing as /A_CAOnAir /PLAY.
Configuration Details
5. When you finish making changes to the dictionary file, save your changes by typing: w
> **Note:** Do not use an uppercase (W).
6. When you press enter, a number will appear, such as 1279, indicating the file size. You can
then exit the UNIX line editor by typing:
q If you change your existing MCS dictionary files, you must apply those changes by running the command at the Newsroom Management console; however, any monitor makemctab servers that are running at the time the command is entered will not apply the changes. The monitor servers must be stopped prior to running the command.
makemctab A system administrator who knows the device numbers for monitor servers can choose to stop just those programs; however, it should be done only during off-peak hours, when the monitor servers are not used to monitor on-air shows.
To update your Newsroom Management dictionaries:
1. Select all servers.
2. At the console, type to become a superuser and type the superuser password. The
su prompts will appear as follows:
NRCS-A: su Password:
NRCS-A# For security reasons, the console does not display the password you type.
> **Note:** The prompt endings change from a colon (:)—indicating a system operator login—to a pound
sign (#)—indicating a superuser login.
3. Idle the system, by doing the following:
a. Type to take the system offline.
offline The command prevents users from logging in.
offline b. Type broadcast followed by the message warning users already logged in that processes will be stopped. Include the time the system will be shut down. Here is an example:
Min.
The broadcast command broadcasts a message to all users logged in at present.
4. At the specified time, select one server and type the command list s to check who is still
logged in and which server programs are still running.
Configuration Details A message similar to the following appears:
S264 2Af4 B T11 miller A T82 allen B T101 stevens A R801 stevens A The list s command displays the device controlling the session, the user account used for the session, and the server servicing the session. In the example, the first line starts with an S, indicating a server (utility) program, such as a monitor server. The 3-digit number after the is the device number.
S
5. Select all servers.
6. Type to log out all users. If a user is editing a story, this saves the file and logs
logout all out the user.
7. Type again to check for connect session users.
list s The logout all console command does not log out users who are currently in a connect session.
NRCS-A: list s T101 stevens A R801 stevens A If any users are still logged in, notify them of the shutdown by some other means, such as by telephone.
If a user is in a connect session when you shut down the system, the user’s workstation stops, the session is disconnected, and any unsaved work is lost. Ensure any connect session users have logged out before you continue the shutdown procedure.
8. Type to stop all servers, including monitor servers.
stop all
9. Type to build command and message tables and translate dictionaries for the
maketab -i MediaCentral Newsroom Management system.
10. Type to translate dictionaries used by monitor servers.
makemontab -i
11. Type restart all to start all server programs, including monitor servers.
12. Type online to bring the Newsroom Management system back online, allowing users to log
back in.
Configuration Details Step 9: Configure Newsroom Management for MOS Replication (Optional) MOS replication requires some configuration on the Newsroom Management Server that includes:
• Creating a Newsroom Management user account for MOS replication.
• Creating a write group for MOS replication.
• Creating device-specific queues to store replicated MOS items.
• Ensuring the correct database traits and forms are assigned to the queues.
• Ensuring that write permissions are assigned to the group containing only the MOS replication user account for all device-specific queues that will store replicated MOS items.
All other Newsroom Management users should have read-only permission to those queues.
> **Note:** Other configuration required for MOS replication, which must be done on the MOS Gateway
Server, is explained in Chapter 5. See “Using the MosAdmin Application” on page 89 for more information.
To create an Newsroom Management user account for MOS replication:
1. Log in to an iNEWS Workstation, using an account capable of creating new users on the
system.
2. Select Tools > Options > Users.
3. Click New User. The Add New User dialog box appears.
4. In the User ID field, enter the login name of the user account, such as MosReplication.
Configuration Details
> **Note:** The User Name is optional and may be the same as the User ID. There is no need to assign
Home, Destination, or Mail queues to a MOS replication user account. The User ID and password created in Newsroom Management must match exactly those values entered in the <ncs> group of the MOS configuration file. See “The <ncs> Group” on page 80 for more information.
5. Click Password to set the password for logging in.
Because the Force Change option for passwords is selected by default for all new users, and MOS replication is an automated process, that option must be removed after creating the account. See step 8.
6. Ensure Kill All Stories in the Queue Features section is checked.
7. Click Add.
8. Reopen the user account’s preferences and remove the Force Change password option by
doing the following:
a. Select Tools > Options > Users.
b. Type in the User ID and click Search.
c. When the results appear, double-click on the name to open and modify the preferences.
d. Uncheck the Force Change check box.
e. Click OK.
To create a write group for MOS replication:
1. .Choose a name for the group, such as mosreplication.
2. Ensure the chosen name is not already used by the system by using a variation of the
command at the Newsroom Management console.
gtraits For instance, type:
NRCS-A# gtraits list mosreplication mosreplication is not a user or group name In the example, the system response indicates that mosreplication is not being used; you should receive a similar response before proceeding.
3. Use the gtraits add command to enter the new group name into the Newsroom
Management system.
> **Note:** For more information on creating groups in Newsroom Management, see Chapter 6 of the
MediaCentral Newsroom Management Setup Configuration Guide. For more information about using the Newsroom Management console, see Chapter 2 of the MediaCentral Newsroom Management Setup Configuration Guide.
Configuration Details
4. Add only the MOS replication user account to the group, by doing the following:
a. At an iNEWS Workstation, log in as a system administrator—that is, use an account capable of accessing the System directory.
b. Navigate to the System folder in the Directory panel.
c. Open the Groups queue.
d. Create a new story by selecting File > New Story or using the Insert key. In the Queue panel, a blank row appears in the group list, and a blank story appears in the Story panel of the Newsroom Management Workspace.
e. Type the new group name, such as mosreplication, in the Title (Slug) field of the Queue panel or in the corresponding field in the Story Form panel.
f. Press Enter.
g. Click inside the Story Text panel and type the group name and membership list in the following format:
group mosreplication mosreplication h. Select File > Save Story.
The above procedure creates a story, stored in SYSTEM.GROUPS, that bears the group name and contains the membership list for that group. The Newsroom Management system will refer to the story anytime its group is applied to security measures or other system features.
To create device-specific queues for MOS replication:
1. Log in as a system administrator—using a superuser account—unless you have write-access
to the parent directory and queues. This ensures that you have full access to the Newsroom Management database.
2. In the Directory panel, navigate to the folder in which you want to create the device-specific
queues. If it does not exist, create it, using the Tools > New Folder menu option.
> **Note:** For more information on creating directories and queues in Newsroom Management, see
Chapter 5 of the MediaCentral Newsroom Management Setup Configuration Guide.
3. Do one of the following:
- Select Tools > New Queue.
- Right-click on the folder in the Directory panel, and select New Queue from the pop-up
menu.
A new queue appears under the selected folder and at the end of any existing queues in that folder. The title, New-Queue, is highlighted so you can rename it.
Configuration Details
4. Type the name of the device-specific queue, such as VIDEO.
5. Press Enter to save the new queue name.
> **Note:** The newly created queue will inherit the database traits of its parent directory initially. You can
view the new queue’s properties by right-clicking on it and selecting Properties from the pop-up menu. All queues created in Newsroom Management to store replicated MOS items must have the Batch Allowed database trait and appropriate queue and story forms. Ensure these settings are correct by configuring the queue’s properties, as explained in the following procedure. If all device-specific queues for MOS replication are located in the same folder, the properties may be set at the directory level.
To configure properties of MOS replication device-specific queues:
1. Log in as a system administrator—using a superuser account—unless you have write-access
to the parent directory or queue. This ensures that you have full access to the Newsroom Management database.
2. In the Directory panel, navigate to the queue and right-click on it.
3. Select Properties from the pop-up menu.
> **Note:** To configure database traits for all queues in a directory, right-click on the parent folder instead
of an individual queue and then select Properties from the pop-up menu. Make any necessary configuration changes and ensure the check box labeled Apply changes to all subdirectories and queues is selected before clicking OK. The dialog box that appears will vary depending on whether you right-clicked on a directory or a queue.
The dialog box that appears will vary depending on whether you right-clicked on a directory or a queue.
Configuration Details
> **Note:** For more information about configuring database traits of directories and queues in Newsroom
Management, see Chapter 5 of the MediaCentral Newsroom Management Setup Configuration Guide.
4. On the Forms tab of the Directory/Queue Properties dialog box, ensure the correct Queue
and Story forms are selected. For MOS replication, this is usually a form called MOSREPLICATION.
> **Note:** The MOSREPLICATION form is a queue located in the SYSTEM.FORMS.M directory of
Newsroom Management. It contains three stories that define the format by which MOS items are replicated—to the story form, to the body of the story, or to both. If the MOSREPLICATION form and its stories do not exist in the Newsroom Management database, the Newsroom Management system administrator must create them.
5. On the Groups tab, ensure the MOS replication group is selected as the Write Group.
Configuration Details
> **Note:** If the appropriate group does not appear as an option in the list, it must be created in
SYSTEM.GROUPS; the procedure for creating the group is on page 69.
It is not necessary to assign any Read or Notify groups; leave them set to !<none>.
6. On the Maintain tab, ensure that Update is selected. This ensures rxnet works correctly.
7. On the User Interface tab, ensure that Refresh is selected.
Configuration Details
8. Click OK to save changes and apply settings.
> **Note:** Selecting and/or unselecting check boxes in the Directory/Queue Properties dialog box does not
apply changes immediately. Only step 8 does that.
5 Configuring MOS Gateway MOS Gateway must be configured to communicate with various MOS devices. This requires changes to be made in both the Newsroom Management Server and MOS Gateway.
This chapter contains the following main sections:
• MOS Gateway Configuration File - Editing the Configuration File - Configuration File Components Explained • Adding MOS Devices to the SYSTEM.MOS-MAP Story • Copying the File Certificate MOS Gateway Configuration File MOS Gateway must be configured with information about each MOS device that will connect to it. This is done by editing the MOS Gateway configuration file, which is installed on the MOS Gateway Server.
During installation, the configuration file, which is named mosconfig.xml, is placed, by default, in the following location:
C:\Program Files\Avid\MOSGateway
> **Note:** The actual location may vary since the name of the folder—MOS Gateway—and its
location in the Newsroom Management directory can be changed during the installation.
Before editing the configuration file, it is highly recommended that you make a backup copy.
Editing the Configuration File The MOS Gateway configuration file is saved as a Unicode file, not a standard ASCII text file. You must use an editor that can process Unicode files to edit it. The Windows Notepad executable program (notepad.exe) will edit Unicode files, so its use is recommended for editing the MOS Gateway configuration file.
> **Note:** While MOS Gateway is running, the configuration file is locked by the MosConfigService.
Before editing the configuration file, ensure that MOS Gateway is stopped. For more information on the MosConfigService and procedures on stopping and starting MOS Gateway, see “Stopping and Starting MOS Gateway” on page 77.
To edit the configuration file:
1. Open Notepad.
2. Select File > Open.
3. Navigate to the configuration file at: C:\Program Files (x86)\Avid\iNEWS
MOSGateway
4. Make the changes you want to the file. For more information on what can or should be
modified in the file, see “Configuration File Components Explained” on page 78.
5. When you are done, select File > Save.
MOS Gateway Configuration File Stopping and Starting MOS Gateway After editing the MOS Gateway configuration file, you must restart all MOS Gateway services that run on the MOS Gateway Server. Those services—in the order they should be started—are:
• MOSConfigService • MOS Gateway Logger • MOS Gateway License Server • MOSReplicationService • MOSRouterService • MOSAdminService For more information, see “MOS Gateway Components” on page 94.
> **Note:** When stopping services manually, the order is reversed. For instance, MOSAdminService must
be stopped before MOSRouterService, and so forth, with the last service being MOSConfigService.
To stop and restart services:
1. At the MOS Gateway Server, click the Start button on the Windows Task bar.
2. Select Settings > Control Panel. The Control Panel window opens.
3. Open Adminstrative Tools, then Services. The Services dialog box will appear.
4. Select the MOSConfigService.
5. Select Action > Stop. This will stop all MOS Gateway services in the proper order.
6. Restart the services by selecting the MOSAdminService, then select Action > Start. This
will start all MOS Gateway services in the proper order.
7. Click Close.
MOS Gateway Configuration File Configuration File Components Explained In this section, lines of the MOS Gateway configuration file are shown in groups; each group of lines is a section of the file that can or should be modified to configure the MOS Gateway to work with MOS devices at your site. The section pertaining to replication with a newsroom computer system is located between lines with <ncs> and </ncs>. The section pertaining to devices is located between lines with <listDevices> and </listDevices>. Each group describing a particular MOS device is located between lines with and <mosDevice> </mosDevice>. The information that should be modified appears in bold. An explanation of how to modify the information follows each group.
> **Note:** If only one MOS device is used, all other groups should be removed. This helps
<mosDevice> reduce the MOS Gateway’s workload.
The <logging> Group <logging> <directory>DIRECTORY_GOES_HERE</directory> <maxFileCount>COUNT_GOES_HERE</maxFileCount> <maxFileBytes>SIZE_GOES_HERE</maxFileCount> <winDebugTrace>WINDEBUGTRACE_YESNO</winDebugTrace> <socket>SOCKET_ONOFF</socket> <TurnOffLogging>LOGGING_YESNO</TurnOffLogging> <LoggingLevel>LOGIN_LEVEL_GOES_HERE</LoggingLevel> </logging> The should be changed to the directory in which the MOS Gateway will DIRECTORY_GOES_HERE save its log files.
The should be changed to the maximum number of log files that the MOS COUNT_GOES_HERE Gateway will create before recycling them.
The should be changed to the maximum size each log file can be, such as SIZE_GOES_HERE 1000000 (which equals about 1MB).
> **Note:** Specify values that will not overflow the available storage space. For instance, if you set the
maximum file count to 100 and the maximum file size to 1000000 bytes, ensure that you have 100 MB of free space in the logging directory.
The WINDEBUGTRACE_YESNO should be changed to YES if logging should be sent to the global Win32 debug subsystem. This is useful if the system has a Win32 debugger that can display statements in real time.
MOS Gateway Configuration File The SOCKET_ONOFF should be changed to ON if socket level log files are required. Socket logging logs all incoming socket messages in network byte order. The logs are used when a device is sending data that the MOS Gateway cannot handle. Each connected device and port has its own socket log, created in the logging directory, as indicated by the MOS configuration file.
> **Note:** Socket logging can affect performance, so it should not be left on all the time.
The file name of the socket log is created using the mosID of the device to which MOS Gateway is connected and a string that represents the connection type, according to the following format:
[mosID][space][LM|UR][space][NCSInit|MOSInit].bin • LM means "Media Object Metadata port" • UR means "Running Order port" • NCSInit means the MOS Gateway made the connection • MOSInit means the MOS Device made the connection For example:
VideoDevice LM MOSInit.bin CGMos UR NCSInit.bin SSDevice2 LM NCSInit.bin If you want to enable generic logging, then should be set to YES.
LOGGING_YESNO The LOGGING_LEVEL_GOES_HERE enables all messages. Users can use it to disable specific messages. By default, it is set to 0xff.
• 0x10 - enables logging of XML messages to MOS devices.
• 0x20 - enables logging of XML messages from MOS devices.
• 0x40 - enable FTP communication details.
• - enable logging of error messages from replication services.
0x80 • - enables errors, warnings, and 1-liner information; all messaging is enabled by 0x03 default.
The <tcpPorts> Group <tcpPorts> <out_upper>MOS_OUT_UPPER_PORT_GOES_HERE</out_upper> <out_lower>MOS_OUT_LOWER_PORT_GOES_HERE</out_lower> MOS Gateway Configuration File <in_upper>MOS_IN_UPPER_PORT_GOES_HERE</in_upper> <in_lower>MOS_IN_LOWER_PORT_GOES_HERE</in_lower> </logging> The MOS_OUT_UPPER_PORT_GOES_HERE should be changed to the port on which the MOS Gateway will send running order MOS commands. The recommended value is 10541.
The should be changed to the port on which the MOS MOS_OUT_LOWER_PORT_GOES_HERE Gateway will send media object metadata MOS commands. The recommended value is 10540.
The should be changed to the port on which the MOS MOS_IN_UPPER_PORT_GOES_HERE Gateway will receive running order MOS commands. The recommended value is 10541.
The should be changed to the port on which the MOS MOS_IN_LOWER_PORT_GOES_HERE Gateway will receive media object metadata MOS commands. The recommended value is 10540.
> **Note:** Running order connections are referred to as upper ports in MOS protocol. Media object
metadata connections are referred to as lower ports in MOS protocol. Port settings apply to MOS devices intended for use with MOS Gateway. All MOS devices must use these same ports to connect to MOS Gateway.
The <ncs> Group <ncs> <ncsID>NCS_ID_GOES_HERE</ncsID> <host>HOST_GOES_HERE</host> <AllowReplication>ALLOW_YESNO</AllowReplication> <ReplicationUsername>USER_GOES_HERE</ReplicationUsername> <ReplicationPassword>PUT_PASSWORD_HERE</ReplicationPassword> <AllowMosItemReplace>ALLOW_MOSITEMREPLACE_YESNO</AllowMosItem Replace> <UseFTPS>USE_FTPS_YESNO</UseFTPS> <SystemFormsToken>TOKEN_GOES_HERE</SystemFormsToken> <Unicode>YES</Unicode> </ncs> The should be changed to the NCS ID of the Newsroom Management NCS_ID_GOES_HERE Server to which devices will be replicating MOS objects.
The should be changed to the network host name of the Newsroom HOST_GOES_HERE Management Server to which devices will be replicating MOS objects. Verify that the server with this host name can be pinged from the MOS Gateway Server.
MOS Gateway Configuration File The ALLOW_YESNO should be changed to YES if devices are to replicate data to queues on the newsroom computer system. If this line does not appear in the configuration file, the default is YES. If set to NO replication is prevented and MOS objects are dropped at the MOS Gateway.
The USER_GOES_HERE should be changed to the User ID that the replication service will use to replicate MOS objects to the Newsroom Management Server. This user must exist on the newsroom computer system and have write permissions to the queues to which the devices will replicate their data.
The PUT_PASSWORD_HERE should be changed to password set for the user identified on the <REPLICATIONUSERNAME> line. It must also match the one set for that user on the newsroom computer system.
> **Note:** For more information on configuring the MediaCentral Newsroom Management system to
support MOS replication, see “Step 9: Configure Newsroom Management for MOS Replication (Optional)” on page 68.
Use ALLOW_MOSITEMREPLACE_YESNO to allow or disallow mosItemReplace. By default, it is set to NO.
Set USE_FTPS_YESNO to YES if you want MOS Gateway to use FTPS to communicate with the Newsroom Management system. If set to NO, FTP will be used instead. The default is YES.
Specify as the path to the queue in the Newsroom Management Server TOKEN_GOES_HERE database, where MOS Gateway may obtain a form for story creation. It is used in replication service. The default is SYSTEM.FORMS.
Use to specify whether MOS Gateway is connecting to a Unicode iNEWS Server or <UNICODE> not.
The <names> Group <names> <mos>MOS_ID_GOES_HERE</mos> <amcp>iNEWS_DEVICE_GOES_HERE</amcp> <network>NETWORK_NAME_GOES_HERE</network> </names> The MOS_ID_GOES_HERE should be changed to the MOS ID reported by the MOS device. This ID identifies the MOS device to the MOS Gateway and is used in MOS items placed in an Newsroom Management rundown to indicate which MOS device receives the items.
> **Note:** Refer to the manufacturer’s documentation provided with the device for more configuration
details, such as the MOS ID.
MOS Gateway Configuration File The iNEWS_DEVICE_GOES_HERE should be changed to the Newsroom Management device name for the MOS device. It is the same name that appears in the SYSTEM.MOS-MAP story located in the Newsroom Management database. See “Edit the SYSTEM.MOS-MAP Story” on page 49 and “Adding MOS Devices to the SYSTEM.MOS-MAP Story” on page 91 for more information.
The NETWORK_NAME_GOES_HERE should be changed to the network (host) name of the MOS device. Contact your network administrator for this information.
The <roSlugMaps> Group <roSlugMaps> <roSlugMap> <iNewsRunningOrderName>INEWS_RO_NAME</iNewsRunningOrderName> <MOSroSlug>MOS_RO_NAME</MOSroSlug> </roSlugMap> </roSlugMaps> The group allows the name of a running order sent to a particular MOS device to be different than the running order’s name in the Newsroom Management Server. This is useful in cases where the MOS device provides a small space for the running order name, such as the text on a button. If the entire group is missing or a particular name for a rundown is missing, MOS Gateway will send to the MOS device a default running order name, consisting of the Newsroom Management Server name followed by a forward slash (/) and the Newsroom Management rundown’s full queue name. For instance, if the server’s name is NRCS and the rundown queue is SHOW.11PM.RUNDOWN, then MOS Gateway will send the running order name as:
NRCS/SHOW.11PM.RUNDOWN.
The INEWS_RO_NAME string should be changed to the Newsroom Management running order name.
The string should be changed to a MOS device’s running order name.
MOS_RO_NAME The <handlesEmptyStories> Group <handlesEmptyStories>YESNO</handlesEmptyStories> The should be changed to if the MOS device manages stories with no items the same YESNO YES way it handles stories that do have items. Some MOS vendors do not handle stories with no items as the MOS Protocol specifies; for these devices, should be set to NO.
YESNO If the parameter is absent from the file, the system defaults to YES.
<handlesEmptyStory> MOS Gateway Configuration File The <handlesRoStoryMoveMultiple> Group <handlesRoStoryMoveMultiple>YESNO</handlesRoStoryMoveMultiple> The YESNO should be changed to YES if the MOS device supports the roStoryMoveMultiple MOS command; when set to YES, MOS Gateway will use the roStoryMoveMultiple command to move stories in the running order. The default is YES.
For instance, the following table gives the standard settings for two MOS devices.
MOS Device handlesEmptyStories Setting Sony® MAV Server No OmniBus™ Columbus Yes The <handlesRoItemLevelCommands> Group <handlesRoItemLevelCommands>YESNO</handlesRoItemLevelCommands> The should be changed to if the MOS device supports the roItemInsert, YESNO YES roItemDelete, and MOS commands; when set to YES, MOS Gateway will use roItemReplace those commands to move items in stories. The default is YES.
The <prependPageNumber> Group <prependPageNumber>YESNO</prependPageNumber> The should be changed to if the Newsroom Management story’s page number is YESNO YES prepended to the story title—commonly known as the slug.
The <prependSeparator> Group <prependSeparator>-</prependSeparator> The hyphen (-) should be changed to the chosen character used to separate the story title and the page number. The default is a hyphen.
The <prependStringForEmptyPageNumber> Group <prependStringForEmptyPageNumber>XXX</prependStringForEmptyPageNumber> The XXX should be changed to string of characters used in place of an empty page number.
MOS Gateway Configuration File The <statusTranslations> Group <statusTranslations> <statusUnknown>UNKNOWN_STR</statusUnknown> <statusUnavailable>UNAVL_STR</statusUnavailable> <statusAvailable>AVAIL_STR</statusAvailable> <statusIncomplete>INCOMP_STR</statusIncomplete> <statusCueing>CUEING_STR</statusCueing> <statusCued>CUED_STR</statusCued> <statusPlayRequested>P_STR</statusPlayRequested> <statusPlaying>PLAYING_STR</statusPlaying> <statusPaused>PAUSED_STR</statusPaused> <statusStopped>STOP_STR</statusStopped> </statusTranslations> The Newsroom Management Server expects one of ten event status codes to be returned as the status of a MOS item. Since the MOS Protocol specifies a string as the status of a MOS item in the roItemStat MOS command, MOS Gateway must map these strings to the Newsroom Management event status codes. Furthermore, different MOS devices use different strings to mean the same concept. The group specifies which string to map to <statusTranslations> each event status code.
> **Note:** There can be multiple strings that map to the same event status code, in which case, the relevant
line of the group is duplicated and each string recorded.
<statusTranslations> For instance: <statusCued>READY</statusCued> and <statusCued>ON LINE</statusCued> may both appear in the <statusTranslations> group for a particular MOS device. Status codes vary with each MOS device, so refer to the manufacturer’s documentation provided with the device for more configuration details.
The should be changed to the string the MOS device reports if it is unable to UNKNOWN_STR determine the presence or absence of the MOS item media.
The UNAVL_STR should be changed to the string the MOS device reports if the MOS item media is absent.
The AVAIL_STR should be changed to the string the MOS device reports if the MOS item media is present and ready to play.
The INCOMP_STR should be changed to the string the MOS device reports if the MOS item media is partially present. An example is media is being transferred from another machine and the transfer is not complete.
The CUEING_STR should be changed to the string the MOS device reports when a request to cue a MOS item has been received.
MOS Gateway Configuration File The CUED_STR should be changed to the string the MOS device reports when the MOS item media has been cued.
The should be changed to the string the MOS device reports when a request to play a P_STR MOS item has been received.
The should be changed to the string the MOS device reports when the MOS item PLAYING_STR media is playing or on-air.
The should be changed to the string the MOS device reports when the MOS item PAUSED_STR media is paused.
The STOP_STR should be changed to the string the MOS device reports when the play of the MOS item media has been halted.
The <roChannels> Group <roChannels> <roChannel> <iNewsChannel>INEWS_CHAN1</iNewsChannel> <MosDevChannel>MOS_CHAN1</MosDevChannel> </roChannel> <roChannel> <iNewsChannel>INEWS_CHAN2</iNewsChannel> <MosDevChannel>MOS_CHAN2</MosDevChannel> </roChannel> <roChannel> <iNewsChannel>INEWS_CHAN3</iNewsChannel> <MosDevChannel>MOS_CHAN3</MosDevChannel> </roChannel> </roChannels> A MOS device may have one or more channels. Users can specify a channel to use for producing the show when they load a show to a MOS device.
Channel names within the iNEWS Workstation are restricted to seven characters or less; however, this limit does not apply to all MOS devices. So, it is possible that channel names will vary accordingly. For this reason, there is a group of lines in the MOS Gateway configuration file that maps the Newsroom Management channel name to the channel name accepted by the MOS device. The group consists of one or more lines, each containing values on <roChannel> an <iNewsChannel> line and a <MOSDevChannel> line.
The string should be changed to a channel name no more than seven characters INEWS_CHAN long. This string is also inserted in the SYSTEM.MOS-MAP table; for more information, see “Adding MOS Devices to the SYSTEM.MOS-MAP Story” on page 91.
MOS Gateway Configuration File The MOS_CHAN string should be changed to a channel name for the MOS device.
The <mosObjReplication> Group <mosObjReplication> <trigger>TRIGGER_TYPE</trigger> <replicationTime>REP_TIME</replicationTime> <clearQueue>TRUE_FALSE</clearQueue> <path>PATH_TO_QUEUE</path> <mosItemBrowserProgID>xxx.xxx.xxx</mosItemBrowserProgID> <mosItemEditorProgID>yyy.yyy.yyy</mosItemEditorProgID> <mosItemPlayerProgID>zzz.zzz.zzz</mosItemPlayerProgID> </mosObjReplication> The first four settings in the <mosObjReplication> group are configured by the MosAdmin application, so there is no need to manually edit them in the MOS Gateway configuration file.
See “Using the MosAdmin Application” on page 89 for more information. The procedure for configuring replication is provided on page 90.
The MOS item settings are optional since not all MOS devices have them, but if used the ProgID values must be manually entered in the MOS Gateway configuration file. If they are not defined in the configuration file, then users will be unable to right-click on a production cue or story form to open the ActiveX controls.
> **Note:** If the settings are manually edited, then MOS Gateway services must be stopped and restarted.
See “Stopping and Starting MOS Gateway” on page 77 for more information.The may be set to or SCHEDULED.
TRIGGER_TYPE MANUAL The REP_TIME should be set to the time of day when MOS replication should occur. This line is only necessary if the trigger is set to scheduled replication.
The TRUE_FALSE value should be set to TRUE if all stories are to be cleared from the queue in the newsroom database before replication is performed. If set to FALSE stories will not be cleared from the database before MOS replication occurs.
The PATH_TO_QUEUE should identify the device’s queue to which Media Object Metadata (MOM) is replicated. Each device must have a unique queue; devices cannot share the same queue.
The XXX.XXX.XXX should be replaced with the ProgID of the ActiveX Browser.
The should be replaced with the ProgID of the ActiveX Editor.
YYY.YYY.YYY The should be replaced with the ProgID of the ActiveX Player.
ZZZ.ZZZ.ZZZ MOS Gateway Configuration File The following table shows the most common values for MOS item ProgIDs:
AirSPACE Browser Avid.AirSPACEBrowser.1 Editor Avid.AirSPACEEditor.1 Aprisa Browser ASTILLSTOREMOSACTIVEX.SSItemBrwsrCtl.1 Editor ASTILLSTOREMOSACTIVEX.SSItemEditorCtl.1 Player ASTILLSTOREMOSACTIVEX.SSItemPlayerCtl.1 GVG News Q Pro Browser GVG.XMOSCtrl.1 Omnibus Browser OmnibusODCLauncher.Launcher Editor OmniBusItemEdit.Edit VizRT Browser VCPAxFiller.VCPTemplateFiller Editor VCPAxFiller.VCPTemplateFiller The <sendRoCreateOnStartLoad> <sendRoCreateOnStartLoad>YESNO</sendRoCreateOnStartLoad> The YESNO setting specifies following behaviour: when it is set to NO, all MOS items in the rundown will be contained within the roCreate message. When it is set to YES, a blank roCreate message is sent and all MOS items in the rundown will be added using roStoryInsert messages.
The <ignoreItemStatusInRoAck> <ignoreItemStatusInRoAck>YESNO</ignoreItemStatusInRoAck> The YESNO setting specifies whether MOS Gateway ignores the item status in roAck messages from the divice. Valid settings are YES or NO, default is NO.
The <handlesRoListAll28> <handlesRoListAll28>YESNO</handlesRoListAll28> MOS Gateway Configuration File The YESNO setting specifies whether MOS device expects the MOS 2.8 version of roListAll.
Valid settings are YES or NO, default is NO.
The <handlesRoStorySend> <handlesRoStorySend>YESNO</handlesRoStorySend> The setting specifies whether MOS device handles roStorySend messages. The YESNO handlesRoStorySend element specifies whether MOS device supports sending stories via roStorySend. Valid settings are YES or NO, default is NO.
The <handlesRoStorySendNSMLX> <handlesRoStorySendNSMLX>YESNO</handlesRoStorySendNSMLX> The setting specifies whether this device supports sending the NSMLX via the YESNO roStorySend mosExternalMetadata payload. Valid settings are YES or NO, default is NO.
The <retryTimeout> <retryTimeout>0</retryTimeout> The retry timeout in seconds for this device. Set to 0 if you do not want to have retries. Valid values: 0 - 214748647. Default is 0.
The <AllowMosObjCreate> <AllowMosObjCreate>YESNO</AllowMosObjCreate> The setting specifies whether this device supports mosObjCreate message. Valid settings YESNO are YES or NO. Default is NO.
The <removeMosObjCreate> <removeMosObjCreate>YESNO</removeMosObjCreate> The YESNO setting specifies whether MOS Gateway removes uninitialized mosObjCreate items.
Valid settings are YES or NO, default is NO.
The <DisableMosItemStatChannel> <DisableMosItemStatChannel>YESNO</DisableMosItemStatChannel> The YESNO setting specifies whether MOS Gateway conveys roItemStat messages from this device to Newsroom Management Server.
MOS Gateway Configuration File Using the MosAdmin Application The MosAdmin application provides a graphical user interface (GUI) that can be run locally or remotely to configure replication options for all devices connected to the MOS Gateway.
> **Note:** Some configuration for replication must be done on Newsroom Management Servers. That is
explained in “Configuring Newsroom Management Servers” on page 43 in Chapter 4.
To launch the MosAdmin application:
- Double-click the MosAdmin’s shortcut icon—shown at left—located on the desktop.
The MosAdmin window appears, with two tabbed options:
- Status - The Status tab is a read-only tab showing incoming MOS objects, being replicated from the MOS device to the Newsroom Management Server. This information is also logged into text files by the MOS Gateway Logger.
MOS Gateway Configuration File - Replication - The Replication tab shows a list of devices—obtained from the mosconfig.xml file—and the current replication configuration settings for each device.
Before the Replication tab may be viewed, a dialog box appears, prompting the user for a password.
Type in the password, which should be the same one defined in the MOS configuration file and used by the user account in Newsroom Management.
MOSReplication
> **Note:** The password is required to help prevent unauthorized use of the MosAdmin application.
On the Replication tab, the trigger can be set to either schedule replication at a set time every day or to perform replication manually by clicking a button. Changing this setting alters what appears in the Trigger column of the MosAdmin application and in between the and tags in the configuration file.
<trigger> </trigger> A check box can be set to clear all stories from the queue in the newsroom database before performing replication. This check box determines whether or appears in the TRUE FALSE Clear column of the MosAdmin application, and in between the and <clearQueue> tags in the configuration file.
</clearQueue> A Path text field specifies the queue in the newsroom database to which media object metadata will be replicated. The queue’s pathname appears in the Directory column of the MosAdmin application and in between the <path> and </path> tags in the configuration file.
To configure replication for a device:
1. Select the device from the list on the Replication tab in the MosAdmin window.
2. Select the trigger type—either manual or scheduled. If scheduled is selected, continue to
step 3; otherwise, skip to step 4.
3. Set a replication time—this is the time replication is set to occur each day, if the scheduled
trigger type is selected.
4. Select the Clear Queue check box to clear the Newsroom Management queue before
replication. Checking the box is recommended.
5. Type the path to the device’s queue—created on the newsroom computer system—where the
replicated MOS objects will be placed.
> **Note:** The path must be unique to that device because each device must have its own queue for storing
replicated MOS objects. Devices cannot share the same replication queue.
Adding MOS Devices to the SYSTEM.MOS-MAP Story Adding MOS Devices to the SYSTEM.MOS-MAP Story The Newsroom Management system must associate the MOS ID of a MOS device with an Newsroom Management device name. This is because machine control commands in a story must be associated with an Newsroom Management device name, so the monitor server can load them to the correct device. The iNEWS Workstation uses the association to create machine control commands from MOS items that it receives from the ActiveX control associated with the MOS device.
The Newsroom Management system administrator creates the association by creating a table in the SYSTEM.MOS-MAP story, located in the System directory of the Newsroom Management database. The table has the following form:
TABLE-START DeviceTable MOSGATE.omnibus omnimos chan1 chan2 Ncsgateway.sony sonymos region1 region2 region3 TABLE-END The table contains at least two columns of names separated by white space. The first column is the MOS ID of a MOS device; this must match the name that appears for that device in the MOS Gateway configuration file between the and tags.
<mos> </mos> The second column is an Newsroom Management device name, which can have no more than eight characters; this must match the name that appears for that device in the MOS Gateway configuration file between the and tags. See “The <names> Group” on page <amcp> </amcp> 81 for more information.
The table need not contain more than two columns if users are not allowed to specify the channel on which the MOS device broadcasts the show. However, if users are allowed to specify the channel, all available channels for the MOS device must be listed in additional columns on the line for that MOS device. If channels are specified, then when a user loads the show, the workstation will display the options listed in columns 3, 4, 5, and so forth. The user selects one on which to broadcast the show.
Copying the File Certificate Mos Replication and MOS RoStorySend services use FTP or FTPS to communicate with the Newsroom Management system. Using a secure connection requires proper configuration of both the MOS Gateway server and the Newsroom Management Server as described in “Configuring Newsroom Management Servers” on page 43 in Chapter 4 of this guide. The result of the Newsroom Management server configuration is a file-certificate, which must be copied to the MOS Gateway server and added to the Windows trusted certificate storage.
Copying the File Certificate To copy the file certificate:
1. Copy the file certificate to MOS Gateway machine.
2. Double click it.
3. Click Install Certificate....
4. Select Local Machine option as Store Location.
5. Click Next.
6. Select Place all certificates in the following store.
7. Click Browse.
8. Select Trusted Root Certification Authorities.
9. Click OK.
10. Click Next.
11. Click Finish.You should see the message “The import was successful” displayed.
12. (Optional) You may delete the file certificate copied to the machine earlier in this procedure.
6 Troubleshooting This chapter contains information to help you recover from various types of system failures in the following main sections:
• MOS Gateway Components • Where to Look for Errors • Error Categories MOS Gateway Components MOS Gateway consists of the following services (utility programs):
• The MOS Gateway Logger, which creates log files • The MOS Gateway License Server, which controls the licensing of MOS Gateway • The MOS Gateway Router, which routes messages between Newsroom Management Servers and MOS devices • The MOS Gateway Replication Service, which controls the replication of MOS objects from a MOS device to the Newsroom Management Server • The MOS Gateway Administration Service, which is the delegate between the MosAdmin utility and the MOS Gateway Router Service • The MOS Gateway Configuration Service, which reads and writes to the MOS Gateway configuration file • The MOS Gateway RoStorySend Service, which obtains stories from the Newsroom Management Server and sends them to MOS devices MOS Gateway also consists of this utility:
• MosAdmin, a utility which displays incoming MOS objects being replicated from the MOS device to the Newsroom Management Server, and provides a graphical user interface for configuring replication. See “Using the MosAdmin Application” on page 89 for more information.
MOS Gateway also utilizes the following utility:
• LicenseManager, which sets and retrieves the license string Where to Look for Errors Each MOS Gateway service writes errors in one of two places:
• Log files located in the Log File directory, as specified in the MOS Gateway configuration file • The Application log of events Log files are text files, which can be opened with Notepad. To view these files, open Windows Explorer and navigate to the directory where MOS Gateway was installed.
Where to Look for Errors To view the Application log:
1. Click the Start button on the Windows Task bar.
2. Select Settings > Control Panel. The Control Panel window appears.
3. Open Administrative Tools.
Click on Event Viewer to open. The Event Viewer window appears.
4.
5. Select the Application Log item in the left-hand panel.
The Event Viewer shows a table of events, sorted from most to least recent. The Source column displays the application name that created the event. MOS Gateway services appear in this column.
Double-clicking on an event opens the Event Properties/Details dialog box, containing a description of the event.
Error Categories The Description section provides status information, including error messages.
Error Categories errors can be divided into the following categories:
MOS Gateway • Startup errors, which are reported when MOS Gateway cannot start • Runtime configuration errors, which are reported when MOS Gateway encounters a situation where its configuration is incomplete • Miscellaneous other errors Error messages are listed in alphabetical order in Appendix A along with the category, source— the service generating the error—and actions required to alleviate any problems as noted by each error message.
> **Note:** Some resolutions require stopping and restarting any or all MOS Gateway services. For more
information on how to do this, see “Stopping and Starting MOS Gateway” on page 77.
After opening the Event Properties/Details dialog box and identifying the error and source, refer to Appendix A for more information.
A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Index Index Symbols logging 78 mosObjReplication 86 /etc/hosts 23, 64 names 81 editing 64 prependPageNumber 83 /site/config 44 prependSeparator 83 prependStringForEmptyPageNumber 83 A removeMosObjCreate 88 retryTimeout 88 ActiveX control 15 roChannels 85 AllowMosObjCreate tags 88 roSlugMaps 82 amcp tags 91 sendRoCreateOnStartLoad 87 Avid statusTranslations 84 online support 11 tcpPorts 79 training services 12 configuration lines, example 47 connect session 67 B console command list s 66 online 67 become a superuser 66 restart all 67 C D character generators, parameters 62 communication paths 17 device numbers 44 composite list 49 dialog boxes security 51 Queue Properties 48 dictionary files configuration file updating 66 components 78 editing 76 DisableMosItemStatChannel tags 88 Newsroom Management 44 configuration groups E AllowMosObjCreate 88 DisableMosItemStatChannel 88 ed command 45 handlesEmptyStories 82 event list 49 handlesRoItemLevelCommands 83 defined 16 handlesRoListAll28 87 security 51 handlesRoStoryMoveMultiple 83 handlesRoStorySend 88 F handlesRoStorySendNSMLX 88 ignoreItemStatusInRoAck 87 forms A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Index for MOS replication 72 creating 44–48 defined 15 display 51 H listing assigned mailboxes 49 handlesEmptyStories tags 82 monitor on 16 handlesRoItemLevelCommands tags 83 MOS devices, adding 91 handlesRoListAll28 tags 87 MOS replication configuring iNEWS for 68–74 handlesRoStoryMoveMultiple tags 83 configuring queue properties 71 handlesRoStorySend tags 88 create a write group in iNEWS 69 handlesRoStorySendNSMLX tags 88 create device-specific queues 70 create user account in iNEWS 68 I defined 14 service, defined 94 ignoreItemStatusInRoAck tags 87 user name and password 68 IP addresses mos tags 91 adding to MOS Gateway Server 23 MosAdmin example 23 Replication tab 90 mosconfig.xml 76 L mosObjReplication tags 86 license service 94 N list command 45 variations of 49 names tags 81 list s command 66 ncs tags 78 listDevices tags 78 Newsroom Management Servers loading the playlist 17 configuration details 44 logger service 94 configuration summary 43 logging tags 78 configuring ??–67 logs prerequisites for configuring 43 configuration 78 Newsroom Managment Servers socket 79 configuration file 44 M O machine control events 16 online command 67 mailbox Online support 11 assigning to rundown queue 48 defined 44 valid numbers 44 P makemctab command 66 parameters MCS dictionary file, updating 66 character generator 62, 62, 63 monitor load 17 still stores 62, 63 command 48 monitor on video machines 63, 63 command 48 playlists, defined 16 monitor server prependPageNumber tags 83 prependSeparator tags 83 communicating 23 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Index prependStringForEmptyPageNumber tags 83 roSlugMaps tags 82 preview lines 51 router service 94 Procedures running order, defined 17 add IP addresses to iNEWS Servers 64 add IP addresses to MOS Gateway Server 23 S assign form to queue 58 assign mailbox to queue 48 sendRoCreateOnStartLoad tags 87 configure replication 90 services creating composite list queues 50 dialog box 77 creating event list queues 50 license 94 edit config file 76 logger 94 edit the dictionary file 65 replication See MOS replication installing MOS Gateway 24 router 94 launch MosAdmin application 89 starting and stopping 77 MOS replication setup.exe 24 configure queue properties 71 software requirements 20 create device-specific queues 70 statusTranslations tags 84 create iNEWS user account 68 still stores, parameters 62 create write group in iNEWS 69 story forms 52 reconfigure the system 48 for MOS replication 72 updating dictionaries 66 SYSTEM.MAP story 59 SYSTEM.MOS-MAP 56, 82 adding MOS devices 91 Q device table 56 queue forms 52 for MOS replication 72 T Queue Properties dialog box 48 queues tags composite list 50 AllowMosObjCreate 88 event list 50 DisableMosItemStatChannel 88 for replication 90 handlesEmptyStories 82 handlesRoItemLevelCommands 83 handlesRoListAll28 87 R handlesRoStoryMoveMultiple 83 reconfiguring 48 handlesRoStorySend 88 removeMosObjCreate tags 88 handlesRoStorySendNSMLX 88 replication ignoreItemStatusInRoAck 87 configuring 90 logging 78 defined 14 mosObjReplication 86 ncs section 78 names 81 trigger 90 prependPageNumber 83 using MosAdmin application 89 prependSeparator 83 requirements prependStringForEmptyPageNumber 83 software 20 removeMosObjCreate 88 restart all command 67 retryTimeout 88 retryTimeout tags 88 roChannels 85 roChannels tags 85 roSlugMaps 82 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Index sendRoCreateOnStartLoad 87 statusTranslations 84 tcpPorts 79 tcpPorts tags 79 Training services 12 trigger 90 Troubleshooting 11 U UNIX line editor 45 V video machines, parameters 63 W write security group 51 X XML, MOS configuration file 76 Avid Technical Support (USA) Product Information 75 Network Drive Visit the Online Support Center at For company and product information, Burlington, MA 01803-2756 USA www.avid.com/support visit us on the web at www.avid.com