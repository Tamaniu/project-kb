---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2021.3."
release-date: 01/03/2021
doc-type: install-admin-guide
source: pdf
confidentiality: public
date-added: 08/05/2026
status: current
---

MediaCentral® | Data Receiver Installation and Administration Guide Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
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
003, 192 Digital I/O, 192XD I/O, 888 I/O, Adrenaline, AirPlay, AirSPACE, AirSPACE HD, AirSpeed, ALEX, Alienbrain, AniMatte, AudioMarket, AudioPages, AudioSuite, AudioVision, AutoSync, Avid, AvidAdvancedResponse, AvidDNA, AvidDNxcel, AvidDNxHD, AVIDdrive, AvidDSAssistStation, AvidEditStar, AvidLearningExcellerator, AvidLiquid, AvidLiquidChromeXe, AvidMEDIArray, AvidMojo, AvidNet, AvidNetwork, AvidNewStar, AvidRemoteResponse, AVIDstripe, AvidUnity, AvidUnityISIS, AvidVideoRAID, AvidXpress, AVoption, AVX, BeautyWithoutTheBandwidth, Blacktooth, Boom, C|24, CamCutter, CaptureManager, ChromaCurve, ChromaWheel, Command|24, Conectiv, CountDown, DAE, Dazzle, DazzleDigitalVideoCreator, Deko, DekoCast, D-Fi, D-fx, DigiDelivery, Digidesign, DigidesignAudioEngine, DigidesignIntelligentNoiseReduction, DigiDrive, DigiLink, DigiMeter, DigiSerial, DigitalNonlinearAccelerator, DigiTranslator, DINR, DNxchange, domore, DVDComplete, D-Verb, Eleven, Equinox, EveryPhase, ExpertRender, Fastbreak, FastTrack, FieldPak, FilmComposer, FilmScribe, Flexevent, FluidMotion, FXDeko, G7, G-Rack, HDCore, HDProcess, HDPack, Hollywood DV-Bridge, Hybrid, HyperControl, HyperSPACE, HyperSPACEHDCAM, IllusionFX, ImageIndependence, iNEWS, iNEWSAssign, iNEWSControlAir, Instantwrite, Instinct, Intelli-satBroadcastingRecordingManager, Intelli-Sat, InterFX, Interplay, inTONE, Intraframe, iS9, iS18, iS23, iS36, ISIS, IsoSync, KeyRig, KeyStudio, LaunchPad, LeaderPlus, Lightning, ListSync, Lo-Fi, MagicMask, MakeAnythingHollywood, makemanagemove|media, Marquee, M-Audio, M-AudioMicro, Maxim, Mbox, MCXpress, MediaBrowse, MediaComposer, MediaDock, MediaDockShuttle, MediaFusion, MediaIllusion, MediaLog, MediaReader, MediaRecorder, MEDIArray, MediaShare, MediaStream, MediaSuite, Meridien, MetaFuze, MetaSync, MicroTrack, Midiman, MissionControl, MixRack, MixLab, Moviebox, Moviestar, NaturalMatch, Nearchive, NetReview, NewsCutter, Nitris, NRV-10interFX, Octane, OMF, OMFInterchange, OMM, OnDVD, OpenMediaFramework, OpenMediaManagement, Palladium, Pinnacle, PinnacleDistanTV, Pinnacle Geniebox, PinnacleHomeMusic, PinnacleMediaSuite, PinnacleMobileMedia, PinnaclePCTV, PinnaclePCTVHDUltimateStick, PinnaclePCTVNanoStick, PinnaclePCTVToGo, PinnacleScorefitter, PinnacleStudio, PinnacleStudioMovieBoard, PinnacleSystems, Pinnacle VideoSpin, ProEncode, ProServices, ProSessions, ProTools, QuietDrive, Recti-Fi, ReelTapeDelay, ReelTapeFlanger, ReelTapeSaturation, RetroLoop, rS9, rS18, Salesview, Sci-Fi, Scorch, Scorefitter, ScriptSync, SecureProductionEnvironment, Session, ShowCenter, Sibelius, SIDON, SoftSampleCell, Soft-ClipLimiter, SoundDesignerII, SPACE, SPACEShift, SpectraGraph, SpectraMatte, Starplay, SteadyGlide, Streamfactory, Streamgenie, StreamRAID, Strike, Structure, Studiophile, SubCap, SundanceDigital, Sundance, Symphony, SYNCHD, SynchroScience, SynchroScope, Syntax, Targa, TDMFlexCable, Thunder, Titan, Titansync, TLAggro, TLAutoPan, TLDrum Rehab, TLEveryphase, TLFauxlder, TLInTune, TLMasterMeter, TLMetro, TLSpace, TLUtilities, Torq, TorqXponent, Transfuser, Trigger Finger, Trillium Lane Labs, TruTouch, UnityRAID, Vari-Fi, Velvet, Venom, VideoRAID, VideoSlaveDriver, VideoSPACE, VideoSpin, Vortx, Xdeck, X-Form, Xmon, Xponent, X-Session, and X-Session Pro are either registered trademarks or trademarks of Avid Technology, Inc. in the United States and/or other countries.
Footage Arri — Courtesy of Arri/Fauer — John Fauer, Inc.
Bell South “Anticipation” — Courtesy of Two Headed Monster — Tucker/Wayne Atlanta/GMS.
Canyonlands — Courtesy of the National Park Service/Department of the Interior.
EcoChallenge British Columbia — Courtesy of Eco Challenge Lifestyles, Inc., All Rights Reserved.
EcoChallenge Morocco — Courtesy of Discovery Communications, Inc.
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
MediaCentral | Data Receiver Installation and Administration Guide • Rev A • Created 4/6/21 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.
Contents Using This Guide . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 Symbols and Conventions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12 If You Need Help . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 13 Avid Training Services. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 13 Chapter 1 Introduction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 15 Overview of MediaCentral | Data Receiver . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 16 Components . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 17 Data Receiver Service. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 17 Administration Application. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 18 Site Preparation. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19 Newsroom Management Server . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19 Chapter 2 Data Receiver Install and Configuration . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 23 Installation and Configuration Checklist . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24 Installing the Data Receiver Software . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24 Removing the Data Receiver Software. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 31 Upgrading the Data Receiver Software . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 32 Chapter 3 Data Receiver Administration Application . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 37 Administration Application Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 38 Starting the Administration Application. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 38 Menu Bar . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 39 Summary & Wire Instance Configuration Tabs. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 41 The Summary Tab. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 41 The Wire Configuration Tabs . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 43 Wire Service Section. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 44 Input Section . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 44 For serial input: . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 46 Process Section . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 52 Output Section. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 55 Output Cache Settings. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 56 Logging Section. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 58 Changing Log Information Details . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 59 Viewing Log Files . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 63 Wire Service Instance Controls . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 65 Auto Scroll Check Box . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 66 Stop/Start Button. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 66 Get Status Button . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 66 Summary Panel. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 66 Chapter 4 Wire Service Instances . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 69 Wire Service Instance Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 70 Adding a New Wire Service Instance. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 70 Starting the New Instance. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 72 Removing a Wire Service Instance. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 72 Adding a Previously Configured Instance . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 73 Chapter 5 Troubleshooting. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 75 Data Receiver Does Not Start After Installation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76 New Wire Service Instance Does Not Start . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76 A Previously Functional Instance Does Not Run. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76 All Previously Functional Instances Do Not Run. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 77 Problems After Hardware Configuration Changes. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 77 Testing COM Ports. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 77 COM Port Test Shows Illegal Device Name . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 79 Instance Won’t Start or Can’t Find a COM Port. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 79 Story to NRCS & Story Output Not in Sync . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 80 Previously Working Configuration. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 80 New Configuration . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 80 Chapter A Data Receiver Parsing Language. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 81 Parsing Language Overview. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 82 Parsing Language Commands . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 82 Sample Parsing Language for ANPA. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 87 Chapter B Hexadecimal Information. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 97 ASCII Hexadecimal Overview. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 98 Definitions. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 98 ASCII Hexadecimal Table . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 99 Sample Parsing Language for ANPA. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 104 Chapter C Custom Code Page Support . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 109 Custom Code Page Overview. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 110 Custom Single Byte . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 110 Custom Multi Byte . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 111 Custom Shifted . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 112 0 Using This Guide Congratulations on your purchase of MediaCentral Data Receiver, the system that ingests commercial news wire feeds, such as AP, Reuters, UPI and others, and formats them into individual stories within the host system to which it is attached.
This guide is written for information systems technicians, network administrators, and any other technical personnel responsible for purchasing the equipment, preparing a site for installation, and connecting Data Receiver to the network. Portions of the guide provide operations information for system administrators who are managing Data Receiver, and guidelines for general system users.
> **Note:** It is strongly recommended that system administrators have prior experience in or
classroom knowledge of the Windows-based operating systems.
This guide describes the features and hardware for basic Data Receiver installation and operation, providing requirements and specifications for your Data Receiver system in the following areas:
• System requirements • Installation and set up procedures • System configuration and maintenance Your system may not contain certain features and hardware that appear in this guide.
Use this manual to prepare for and set up your system on the network, after you purchase Data Receiver components, according to Avid Technology, Inc. requirements and specifications. Before installing any equipment, the site must already have a configured network.
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
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/training or call Avid Sales at 800-949-AVID (800-949-2843).
0 Using This Guide 1 Introduction The MediaCentral | Data Receiver system is an integrated digital news production system, which provides journalists, producers, directors, writers, and technical personnel with an array of tools to make their jobs easier.
This chapter contains the following main sections:
• Overview of MediaCentral | Data Receiver • Components - Data Receiver Service - Administration Application • Site Preparation Overview of MediaCentral | Data Receiver The MediaCentral Data Receiver is a highly configurable wire server designed to handle all of a newsroom’s subscription wire feeds in a single server, while enabling all users to have access to the data from their desktops. It replaces Newsroom Management the legacy iNEWS PCU by allowing all wire services to be handled by a single server or by multiple servers. It processes incoming wire data from multiple input sources including e-mail, telnet, file and traditional serial feeds in multiple data formats. It’s compatible with existing Newsroom Managment systems v2.0 and later.
The Data Receiver delivers wire content under demanding conditions; it caches stories as they come in so no data is lost even if the Newsroom Managment system is taken offline.
The system captures status and error events in Data Receiver logs, and may optionally send e-mail system notifications to specified users.
The administrative interface allows configuration of wire or data feeds. Individual content streams each of different formats, such as ANPA, IPTC, and NewsML, are accepted. Each instance of the Data Receiver is configurable to ingest data from these formats, as well as from the different input sources supported.
Data Receiver supports five input types:
• Serial—allows the Data Receiver to ingest stories from a serial port on the local PC • Email—allows the Data Receiver to ingest data from a pop3 email server and deletes emails after they are read • Telnet—allows the Data Receiver to logon to a Telnet server and detect data streamed from the Telnet port • File—allows the Data Receiver to poll a directory on a local or remote PC at a given interval. Any files placed into this directory are ingested by the Data Receiver and deleted from the directory.
• RSS—enables subscription to syndicated RSS feeds, in addition to public RSS feeds, and use them as a wire service source. It uses a poll interval to go to a specified URL, and retrieve new RSS feeds since its last update. Like with other input types, Data Newsroom Receiver then reformats the data using sfc files and put stories into Managment systems.
Components Components The Data Receiver is comprised of two major components:
• Data Receiver Service • Administration Application The Data Receiver service performs the majority of the Data Receiver processing, while the Administration application allows for configuring of wire feeds and provides diagnostic tools for troubleshooting and maintaining the Data Receiver.
Data Receiver Service The Data Receiver service performs the majority of the Data Receiver processing, except processing specifically related to the Newsroom Managment system.
1 Introduction NRCS Communication Module The NRCS communication module handles communications and the specific formatting of wire data between a wire service and a specified newsroom computer system (NRCS). For instance, the iNEWS communications module handles the connectivity between a wire service and the MediaCentral Newsroom Management system.
The NRCS communication module is configurable through the wire instance configuration file. It accepts acknowledgement from the NRCS for each received story and passes it to the Data Receiver service. The communication module sends each wire item to the NRCS as a complete story rather than sending it line-by-line.
The iNEWS newsroom computer system communication module communicates with the Newsroom Managment system using a wire connection service on the newsroom computer system. The module specifies the destination server through the wire instance configuration file. It supports the keyword search feature offered in iNEWS v2.0 and provides translation of characters—for instance from Unicode or code pages—to the code page appropriate for the Newsroom Managment system. Additional character mapping through the Data Receiver Service configuration file is supported.
Administration Application The Administration application is a graphical user interface (GUI) that may be used to configure parameters or select and monitor any of the configured Data Receiver services.
This application displays a summary of configured wire services and also shows their current status.
The current status of each configured wire service includes:
• Server—the name of the server on which the wire instance is running—always localhost • Name—the name of a configured wire service • Status—the current state (running/stopped/disabled) of a wire service • Story Input—The time stamp for which something (serial data, a file, an email, or the Telnet connection, depending on the instance configuration) was received on that particular Data Receiver service instance.
• Story To NRCS—the time the last story was successfully processed and sent to the newsroom computer system • #Stories—the number of stories sent to the newsroom computer system Site Preparation Site Preparation For a successful and productive Data Receiver installation, the customer must do the following:
• Network and Power Requirements—Provide a fully functional LAN/WAN network using TCP/IP networking protocols and install power and cable for all equipment at the site.
• When serial data feeds are used, proper cabling from the receiver/modem to the Data Receiver computer is required.
• Hardware—Purchase and install required hardware, software, and other needed equipment.
The Data Receiver is supported, compatible with, and qualified with the following:
- Windows Server 2019 and Windows Server 2016 - iNEWS Server v2.0 and higher - Digi Acceleport 8r serial card (Avid part number 0030-03121-01) required when a site has more than one serial wire or multiple serial inputs Newsroom Management Server Data Receiver now supports wire profiles configured on the Newsroom Management Server.
When adding a wire for ingesting through the Data Receiver, you must complete four phases in the setup.
• Phase 1 - Ensure the MediaCentral Data Receiver software is installed, configured, licensed, and the wire feed is connected to the appropriate port.
• Phase 2 - Create a wire profile for the wire service.
• Phase 3 - Add the wire distribution information.
• Phase 4 - Reconfigure the system and start the Data Receiver so it can begin receiving and distributing wire stories.
> **Note:** See the Newsroom Management Setup and Configuration Manual, Chapter 12 - Wires, for more
information on all four phases in the setup.
The following steps must be completed on the Newsroom Management Server.
1. The iNEWS server license must have wire server resources added to it. Each Data Receiver
instance requires its own wire server resource licensed and configured on the Newsroom Management Server. An example of a license is shown in “Licensing Components” in the MediaCentral Newsroom Management Setup and Configuration Manual.
1 Introduction
2. Choose a device number for each Data Receiver instance. This number is required for
later phases in the setup (as listed earlier). Ensure that the number you choose is not already in use.
3. Connect the wire feed to the selected port on the PC running the MediaCentral Data
Receiver software. This step is only necessary for serial input and therefore may not be necessary in all cases.
4. Modify the Newsroom Management configuration file (/site/config) by adding the
device number to a resource list entry under the host section. The format is:
reslist <device #> ;<comments> For instance:
reslist 801 ;data receiver instance
> **Note:** For dual or triple server systems, the configuration file has multiple host sections to define
which server handles which devices under various circumstances. Resource list entries must be added to each host section depending on which server you want the Data Receiver instances to run.
5. The Data Receiver may have a wire profile in the /site/wires directory. The only profile
options associated with the Data Receiver are form and idle.The wire profile must have the same name as the Data Receiver instance’s device number. To modify the wire profile, use the line editor command, ed with the following format:
ed /site/wires/<device#>
> **Note:** See “Phase 2” in Chapter 12 - Wires of the Newsroom Management Setup and
Configuration Manual for more information. For help with using the line editor command, see the MediaCentral | Newsroom Management Setup and Configuration Manual, Appendix A.
6. Each Data Receiver instance must have its own set of instructions in a story, called the
wire distribution story, located on the Newsroom Managment system in the Distribution queue in the SYSTEM.WIRES directory. This procedure is the same as Phase 3 for setting up a wire connected to a PCU port. See the MediaCentral | Newsroom Management Setup and Configuration Manual, Chapter 12 for more information.
7. After making the previous changes , do the following:
a. Take the Newsroom Management Server offline using the offline command.
While the server is offline, users will not be able to login to the system.
b. Make the new resources take affect by using the configure command.
c. Put the server back online using the online command.
Site Preparation The Data Receiver processes incoming information wire stories using information obtained in the Newsroom Management keyword server story. If the keyword story is updated in Newsroom Management the Data Receiver automatically recognizes the updates during processing. For more information about keyword ervers, see the MediaCentral | Newsroom Management Setup and Configuration Manual, Chapter 13 - Servers.
> **Note:** The proceeding steps must be performed for each instance of the Data Receiver.
Different Data Receivers may be used to provide redundancy through the use of a distribution server and parallel wire servers. For more information, see “Parallel Wire Servers” in the MediaCentral | Newsroom Management Setup and Configuration Manual, Chapter 13 - Servers.
1 Introduction 2 Data Receiver Install and Configuration This chapter explains the installation and configuration of the Data Receiver.
This chapter contains the following main sections:
• Installation and Configuration Checklist • Installing the Data Receiver Software • Upgrading the Data Receiver Software • Removing the Data Receiver Software Installation and Configuration Checklist Before you begin check the following table. It provides a checklist of steps for installing and configuring the Data Receiver and references on where to find more information about each step.
 Tasks Refer to...
b Check requirements “Site Preparation” on page 19 b Install the Data Receiver software “Installing the Data Receiver Software” on page 24 b Add New Wire Service Instance(s) Installing the Data Receiver Software Before installing Data Receiver software, ensure the network configuration conforms to hardware and software requirements as specified by Avid. For the latest information, contact Avid Customer Support.
To Install the Data Receiver software:
1. Log on to the computer on which the Data Receiver software will be installed as the
System Administrator.
2. Navigate to the folder containing the installer for the Data Receiver.
3. Double click the Data Receiver setup file. The InstallShield Wizard starts configuring
the Windows installer.
Installing the Data Receiver Software The InstallShield Wizard prepares to install Microsoft®.NET Framework.
4. Click Yes to install it. The setup installs the .NET Framework files.
In case you see the following screen:
2 Data Receiver Install and Configuration These are steps for enabling .NET Framework manually:
> **Note:** Beginning with Server 2012 R2, enabling .Net Framework v3.5 is required prior to Data
Receiver installation. You will need internet access of the Windows Install Medium to complete this procedure.
a. Navigate to Control Panels > Programs > Programs and Features.
b. Select the .NET Framework 3.5 as shown in the following illustration.
Installing the Data Receiver Software c. Click OK. Now .NET Framework v3.5 is enabled.
5. When the following Data Receiver Setup dialog box appears, as shown, click Next.
2 Data Receiver Install and Configuration
6. When Data Receiver Setup License Agreement appears, read the license agreement.
7. Click to accept the terms, enabling the Next button.
Installing the Data Receiver Software
8. Click the Next button. The Destination Folder dialog box appears.
9. Do one of the following:
- Use the Change button to navigate and select the destination folder in which Data
Receiver is to be installed.
- Accept the default destination folder in which Data Receiver is to be installed.
10. Click the Next button. The Start Copying Files dialog appears allowing verification of the
destination file folder.
11. Click the Next button. The Setup Status dialog appears.
2 Data Receiver Install and Configuration After the installation is completed, the following appears:
12. Click the Finish button.
Removing the Data Receiver Software Removing the Data Receiver Software Avid recommends removing previously installed Data Receiver software prior to upgrading to a newer version of the Data Receiver.
To Remove the Data Receiver Software:
1. Select Start > Control Panel.
2. Select Uninstall a Program in Programs.
3. Double-click on MediaCentral |Data Receiver.
The system will ask for uninstall confirmation.
4. Select Yes to uninstall the program.
2 Data Receiver Install and Configuration Upgrading the Data Receiver Software Prior to upgrading the Data Receiver software, ensure the network configuration conforms to hardware and software requirements as specified by Avid. For the latest information, contact Avid Customer Support.
To upgrade existing Data Receiver Software:
1. Double-click on installer of new version and follow instructions.The following dialog
appears.
2. Select Yes. The Install Wizard dialog appears.
Upgrading the Data Receiver Software
3. Click the Next button. The Status dialog appears showing the progress.
2 Data Receiver Install and Configuration When the upgrade is complete, the following dialog is displayed.
Upgrading the Data Receiver Software
4. Click the Finish button.
2 Data Receiver Install and Configuration 3 Data Receiver Administration Application This chapter explains the Data Receiver Administration application.
This chapter contains the following main sections:
• Administration Application Overview - Starting the Administration Application • Menu Bar • Summary & Wire Instance Configuration Tabs - The Summary Tab - The Wire Configuration Tabs • Wire Service Instance Controls - Auto Scroll Check Box - Stop/Start Button - Get Status Button • Summary Panel Administration Application Overview The Administration application is a graphical user interface (GUI) which is used to configure parameters, select, and monitor any of the configured wire services. It also displays a summary of configured wire services and shows their current status.
The current status of each configured wire service includes the wire service name, current state (running/stopped/disabled), the time the last story was sent to the newsroom computer system, and the number of stories sent to the newsroom computer system.
The Data Receiver Administration window is made up of a menu bar, Summary and Configuration tabs, an Auto Scroll check box, two control buttons, and a Summary panel as shown in the following image:
Starting the Administration Application To start the Administration application:
1. Do one of the following:
- Select Start > Avid > MediaCentral Data Receiver Administration Application.
Menu Bar
- Click the Data Receiver desktop shortcut shown below.
The Data Receiver Administration window appears.
Menu Bar The Menu bar contains the following:
• The Wire Services Menu • The Help Menu The Wire Services Menu The Wire Services menu has five menu options as shown in the following.
The Create new Wire Service option is used to configure and add a new wire service instance.
See “Adding a New Wire Service Instance” on page 70 for more information.
3 Data Receiver Administration Application The Add previously configured Wire Service is used to add a previously configured wire service instance to the Administration application. See “Adding a Previously Configured Instance” on page 73 for more information. The Remove selected Wires Services option is used to remove a selected configured instance of a wire service from the Administration application. See “Removing a Wire Service Instance” on page 72 for more information.
The Print submenu contains two print options; Print Current Wire Service and Print Preview Current Wire Service. These options allow a user to print or preview all current instances of configured wire services. A user may preview prior to or instead of printing the wire service details. Your PC must have a printer installed to use the Print Preview option.
The following is an example of a print preview.
The Exit menu option may be used to close the Administration application window.
The Help Menu The Help menu contains the following selections:
• Help Topics—provides access to the Data Receiver help system.
• About—displays the Data Receiver version number of the product.
Summary & Wire Instance Configuration Tabs Summary & Wire Instance Configuration Tabs The Summary and Wire Instance Configuration tabs are the tabs displayed in the Data Receiver Administration window. The summary tab shows the details of each wire service instance configured. See “The Summary Tab” on page 41 for more information. The number of Wire Instance Configuration tabs and their names will vary depending on the number of wire service instances configured. See “Adding a New Wire Service Instance” on page 70 for more information.
The Summary Tab The Summary tab displays a list showing the details of each wire service instance configured.
The details of each configured instance include:
• Server—the name of the server on which the wire instance is running—always localhost • Name—the name of a configured wire service instance • Status—the current state (running/stopped/disabled/unknown) of a wire service 3 Data Receiver Administration Application • Story Input—The time stamp for which something (serial data, a file, an e-mail, or the Telnet connection, depending on the instance configuration) was received on that particular wire service instance • Story To NRCS—the time the last story was successfully processed and sent to the newsroom computer system
> **Note:** The time stamp in the Story to NRCS column must must be within one minute of the time
stamp in the Story Input column. If the time stamps for these two columns differ by more than one minute then the processed stories are not being successfully sent to the NRCS system and are being cached on the Data Receiver • #Stories—the number of stories sent to the newsroom computer system since the instance was started (the number of stories is reset each time the instance is restarted) The Summary tab has a right-click menu—shown in the following graphic—which allows users to start and stop a specified wire service instance and also get its current status.
To stop or start a specific wire service instance:
1. Right-click on the row corresponding to the instance of a wire service on the Summary
tab.
2. Do one of the following:
- Click Start Wire Service to start the selected instance of the wire service.
- Click Stop Wire Service to stop the selected instance of the wire service.
- Click Get Wire Status to display the current status of the selected wire service
- instance.
These actions may also be done by selecting the wire service instance row on the Summary tab and using the buttons located to the right of the Summary & Wire Configuration tabs.
Confirmation of the operation selected appears on the Summary panel in the lower part of the Administration application window. The most current action information appears at the bottom of the list displayed. See “Summary Panel” on page 59 for more information.
Summary & Wire Instance Configuration Tabs The Wire Configuration Tabs The number of tabs and their names will vary depending on the number of wire services wire service instances which have been configured. If no instances of wire services are set up, no Wire Configuration tabs appear. The Wire Configuration tabs may be used to configure and make changes to the particular wire service instance they represent.
For instance, to change the details about the MUN-IN4 wire service instance shown in the example below, click the MUN-IN4 tab to bring it forward.
The tab is divided into the Wire Service Name, Input, Process, Output, and Logging sections.These sections are explained on the following pages.
3 Data Receiver Administration Application
> **Note:** After making configuration changes to the following information, the Data Receiver must be
restarted: Input Type, Input Character Translations Changes, Changes to the story Start and End Sequence Characters, Custom Code Page Translation Table Changes, Output Character Translations, and Output iNEWS Server Name.
If you have questions about making changes to the information contained in the following sections, contact Avid Customer Support.
Wire Service Section The wire service name is the name that appears on both the wire service instance’s Wire Configuration tab and on the Summary tab list. This data is informational only.
Input Section The Input section of the Wire Configuration tab allows for changing of the input configuration details for the wire service instance. These details include the source Type, Translations, and Data Capture settings.
This section also allows the user to change, enable or disable an individual instance of a wire service if it is not being used currently or is only used occasionally.
For instance, when a wire service is used for reporting election information, after the election is over, the wire is still providing input to the Data Receiver log file. Maintaining and purging the log file requires PC resources. The user may want to disable the wire service when it is not in use in order to conserve resources but still be able to quickly re-enable the wire service again in the future for use as needed without having to reconfigure all of the settings each time.
This section describes how to change, enable or disable an individual instance of a wire service.
Summary & Wire Instance Configuration Tabs To change a wire service input type:
1. Click the Change button located next to the Type text box. The Select Input Type dialog box
appears.
The Data Receiver also supports the accessing of file directories over a network connection.
Its File Input module may be configured to use a share on a remote PC. See Appendix C for more information on this configuration.
> **Note:** The information displayed on each tab varies depending on the input type selected. The sections
that follow contain more information concerning other specific input types.
2. Select the input type from the list using the down arrow.
3. Adjust settings for the input type selected.
4. After making the configuration changes the Data Receiver must be restarted.
To disable a wire service:
1. Click the Change button located next to the Input Type text box. The Select Input Type
dialog box appears.
2. Select the Disable option from the Input Type list using the down arrow.
3 Data Receiver Administration Application To enable a wire service:
1. Click the Change button located next to the Input Type text box. The Select Input Type
dialog box appears.
2. Select the Input Type from the list using the down arrow.
3. Additional steps are necessary depending on details which are provided below. The
majority of these settings are recommendations based on information supplied by the wire service provider.
For serial input:
• Select the COM Port using the down arrow. No two wire services may use the same COM port. Valid values range 1-99.
> **Note:** When configuring a wire service which is presented to the Data Receiver using 1.5 Stop bits,
set the Data bits to 5 and the Stop Bits to 2. This forces the Data Receiver to use 1.5 Stop bits.
• Select the Baud Rate using the down arrow. Valid values are; 50, 75, 110, 150, 300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 28800, 33600, 38400, 57600.
Not all serial cards support all the baud rates listed in the drop-down. Before changing a baud rate, verify which baud rates your serial card can support.
• Select the Data Bits using the down arrow. Valid values are; 5, 6, 7, or 8.
• Select the Parity using the down arrow. Valid values are; None, Even, Odd, Mark, or Space.
• Enable or disable the Parity Error Handling using the down arrow. Parity Error Handling is disabled if Parity is set to None.
• Enter the Parity Error Character—a hexadecimal entry—in the appropriate text box.
The Parity Error Character is only enabled if Parity Error Handling is set to Enabled.
• Select the Stop Bits using the down arrow. Valid values are; 1 or 2.
• Select the Flow Control using the down arrow. Valid values are Disable, Hardware or Software. A setting of Hardware or Software allows the operating system to handle the Flow Control.
When Flow Control is set to Software and the source parameter is serial, the following parameters must be set:
Enter the XON Character—hexadecimal code for a single ascii character—in the appropriate text box.
Enter the hexadecimal XOFF Character—hexadecimal code for a single ascii character— in the appropriate text box.
Enter the XON Limit in the appropriate text box. Valid entries are 1-49 percent. The Summary & Wire Instance Configuration Tabs XON character is sent when the space available in the input buffer falls below the percent specified.
Enter the XOFF Limit in the appropriate text box. Valid entries are 50-99 percent. The XOFF character is sent when the space available in the input buffer rises above the percent specified.
• Select the Time-out settings using the up and down arrows.This is an inactivity timeout. A notification is sent when no data is received within this period. Valid values are zero (no time-out) through 24 (hours).
• Start Sequence—The string of characters that specify the start of a story byte sequence.
Valid values for the Start Sequence are one or more hexadecimal numbers between 00 and ff, separated by commas.
• End Sequence—The string of characters that specify the end of a story byte sequence. Valid values for the End Sequence is one or more hexadecimal numbers between 0 and ff, separated by commas.
• Enter the Buffer Size—kilobytes—in the appropriate text box. This buffer holds data that has not yet been processed. The buffer needs to be large enough to collect data while the Wire Service is processing the last story it identified. Avid recommends a buffer size of 32k for a typical setup. This size may be adjusted when needed.
For File Input:
• Select a Directory using the Select button located to the right of the text box. The directory name is limited to 1-256 alpha numeric characters.
• Select the Poll Time settings using the up and down arrows. The Poll Time controls how often the directory is examined for new files. Valid values for Poll Time are from one second to one day.
• Select the Time-out settings using the up and down arrows. This is an inactivity timeout. A notification is sent if no new files are found within the specified period. Valid values are the numbers zero or from one second to one day. If the time-out is not zero, the time out must be greater than the Poll Time Interval. A value of zero will disable Time-out and a warning message is logged.
> **Note:** Files read by the Data Receiver are deleted from the directory after they are read.
For Email Input:
• Enter the Server name.
• Enter a valid Port Number. Values allowed are 1 through 65535. The default value is 110.
• Enter the User Name.
• Enter the User Password.
3 Data Receiver Administration Application • Select the Poll Time settings using the up and down arrows. The Poll Time controls how often a connection to the e-mail server is made. Valid entries are from one second to one day.
• Select the Time-out settings using the up and down arrows. Valid entries for the CFG file are the numbers 1 through 86400. If the time-out is not zero, the time out must be greater than the Poll Interval. A value of zero will disable Time-out and a warning message is logged.
• Check the Enable Secure Password Authentication check box if the e-mail server uses Secure Password Authentication (SPA).
The Data Receiver also supports the accessing of file directories over a network connection.
Its File Input module may be configured to use a share on a remote PC. See Appendix C for more information on this configuration.
> **Note:** Files read by the Data Receiver are deleted from the POP3 e-mail server after they are read.
For RSS Input:
Newsroom Management now supports one RSS source in Data Receiver, and Data Receiver v2.0 supports RSS functionality with (optional) authentication. The purpose of this functionality is to enable subscription to syndicated RSS feeds, in addition to public RSS feeds, and use them as a wire service source.
Data Receiver now offers a new input type. It uses a poll interval to go to a specified URL and retrieve new RSS feeds since its last update. Like with other input types, Data Receiver then reformats the data using Story Format Configuration (sfc) files and put stories into Newsroom Management.
• Fill in the Feed URL.
• (Optional) Select the Use authentication check box and enter the log in criteria, if necessary.
• Set the polling interval.
For Telnet Input:
• Enter the Server name.
• Enter the Port Number in the text box. The standard Telnet port is 21. Valid values for port numbers are 1 through 65535.
• Enter the User Name.
• Enter the User Password.
Summary & Wire Instance Configuration Tabs • Select Logout time using the up and down arrows. Valid values are zero or from one second to one day. If Logout Time is zero, the Wire Service remains connected to the Telnet server.
If Logout Time is anything other than zero, the Wire service disconnects from the Telnet server if it does not read any data from the Telnet server during the specified Logout time period, and logs a warning message. After the disconnection, the Wire Service attempts to log on to the Telnet server at the next Poll Time Interval.
• Select the Poll Time settings using the up and down arrows. The Poll Time controls how often a connection to the e-mail server is made. Valid entries are from one second to one day.
• Select the Time-out settings using the up and down arrows. Valid entries for the CFG file are the numbers 1 through 86400. If the time-out is not zero, the time out must be greater than the Poll Interval. A value of zero will disable Time-out and a warning message is logged.
• Start Sequence—The string of characters that specify the start of a story byte sequence.Valid values for the Start Sequence are one or more hexadecimal numbers between 0 and ff, separated by commas.
• End Sequence—The string of characters that specify the end of a story byte sequence.Valid values for the End Sequence is one or more hexadecimal numbers between 0 and ff, separated by commas.
> **Note:** Telnet files read by the Data Receiver are deleted from the Telnet server after they are read.
Changing the input translations involves selecting the correct character mapping and the proper custom code page for the input.
> **Note:** After making any custom code page translation table changes or changes to the Start and End
sequence characters, the Data Receiver must be restarted.
3 Data Receiver Administration Application To change Input Translations:
1. In the Input section, click the Change button located next to the Translations text box. A
dialog box appears.
2. Use the down arrow to select an input from the Character Mapping list. The following
selections are available:
Character Map Type(s) IBM 437 United States ANSI 1250 (Central European), 1251(Cyrillic), 1252(Latin 1), 1253(Greek), 1254(Turkish), 1255(Hebrew),1256(Arabic), 1257(Baltic), 1258(Vietnamese) UTF -8, -16 Baudot TTS BIG5 Traditional Chinese GB Simplified Chinese Shift-JIS Japanese (Windows 932 Summary & Wire Instance Configuration Tabs Character Map Type(s) KS Korean (Windows 949 57002 Hindi, Devanagari Dialect Custom Single Byte, Multi Byte, Shifted Select the character mapping recommended by the wire service provider.
> **Note:** Only incoming data formatted to match the input character mapping code page selected are
translated properly. Data not formatted to match the input character mapping code page selected, may not display properly.
3. Custom Code Page text box allows the user to specify the path to the text file containing the
byte to byte translations table. A file and path must be specified here when Custom Single, Custom Multi Byte, or a Custom Shifted character mapping is selected in the previous Character Mapping text box.
Both Custom Multi Byte or Custom Shifted code pages may also be used with single byte data input streams. See Appendix A for more information about custom code pages.
4. Check the Reverse check box to specify if certain characters, which are adjacent to each
other in a data stream, are to be order reversed relative to the rest of the data stream. This option accommodates some Arabic language wires that send numeral strings in a reversed character order relative to the other alpha text of a wire story.
5. The Reverse List text box is used to specify the list of characters to be order reversed if they
appear immediately adjacent to each other in the data stream. These characters must be entered in 4 Byte hex Unicode with coma separators between the 4 Byte entries.
The following example Reverse List entry reverses the digits 0-9:
0030,0031,0032,0033,0034,0035,0036,0037,0038,0039 This Reverse List entry example changes the character input string of and numbers 8 201 into the character input string of 65 is and numbers 8 102 56 is
6. Optionally, if a character(s) needs to be converted, enter the hex or other value of the input
stream that you want to convert and the hex or other value of the character to which you want that character converted. As soon as you begin to populate a row, an additional row appears in case there is more than one character to convert.
> **Note:** Character mapping is intended for use with a small number of letters or words. It is not intended
for translation of entire character sets. When it is necessary to translate an entire character set, use one of the custom code page options available in the Character Mapping text box.
7. Click OK.
3 Data Receiver Administration Application
8. The Embedded Reverse Characters text box is used to specify characters that can appear
in a sequence of characters that will be reversed but cannot begin or end the sequence.
This is virtually identical to the iNEWS PCU wire configuration "reverse" second parameter—the embedded character string.
9. After making the configuration changes the Data Receiver must be restarted.
> **Note:** These settings are configured during the creation of the wire service instance and rarely
need to be changed. If you have questions about making changes to the information in the following, contact Avid Customer Support.
To change the input Data Capture:
1. In the Input section, click the Change button located next to the Data Capture text box.
2. When the Input Data Logging dialog box appears, check or clear the Enabled check box
to turn on or off the logging feature.
3. Navigate, using the Browse button, to the path where the raw data is to be captured.
4. The name for the capture file appears in the File Name text box.
5. Enter a maximum size (in bytes) for the data log file in the Size text box. When this size
is reached, raw data capturing will stop. The initial value is 10000000.
6. Click OK.
Process Section If you have questions about making changes to the information contained in the following section, contact Avid Customer Support.
Summary & Wire Instance Configuration Tabs If the same process information (SFC) is used with multiple wire service instances, any changes within one instance affects the behavior of all of the other instances using that same (SFC). Making minor changes to one instance may break all other instances using that same (SFC).
The Process section of the Wire Configuration tab allows for changing of the process information details contained in the SFC file for the wire service instance.
Avid recommends saving a backup copy of the SFC file prior to making any changes.
To change the process information:
1. In the Process section, click the Change button located next to the Information text box. The
Process Information dialog box appears.
2. Click the Select button to locate and open an input file. An Open dialog box appears
containing input file selections.
3 Data Receiver Administration Application
3. Select the Time-out duration using the up and down arrows. The time-out is used to
complete the processing of a story. It also prevents looping if a story is sent which is missing a critical part—the process won’t endlessly search for the missing part. If processing a story takes longer than the time allowed, a Story Time-out error is logged and the story is dropped.
4. To change a Command, click the arrow in the command column and select the new
command from the list, as shown below.
5. To add or remove a command line, right-click on the line and select the appropriate
option from the pop-up menu.
Summary & Wire Instance Configuration Tabs
6. (Optional) click the Print button to print a copy of the input file content.
7. Click the Save button to save the changes to the Process information.
8. Click the Save As button to save this configuration as another file name creating a new SFC.
The newly created file may now be easily modified and saved. this simplifies creation and management of different SFC files.
Output Section If you have questions about making changes to the information contained in the following section, contact Avid Customer Support.
The Output section of the Wire Configuration tab allows for changing of the output information details for the wire service instance. These details include the type and the cache settings.
To change the output type information:
1. Click the Change button located next to the Type text box. The iNEWS Configuration dialog
box appears.
3 Data Receiver Administration Application
2. Enter the name of the Primary server in the primary iNEWS Server text box.
The Data Receiver must have a corresponding wireserver resource on the Newsroom Management Server to which it may connect. The Primary server is the Newsroom Management Server running the corresponding wireserver resource for this particular instance. If the name of the Primary server is changed, the Data Receiver must be restarted.
3. For Data Receiver redundancy and failover protection on second or third Newsroom
Management Servers, enter the server name(s) in the Backup Server1 and Backup Server2 text boxes.
4. Enter the port number in the iNEWS Port Number text box. When a Newsroom
Management system is used, the port number must be set to 1019.
5. Enter the wire source in the Wire Source text box. This must match the source specified
in the /site/config file entry for a wireserver session configured on the Newsroom Management Server. It is also used by the Newsroom Management Server for story distribution.
6. Select the Poll Time duration using the up and down arrows. Valid Poll Time entries are
one (1) second to one(1) day. This is the frequency with which the Data Receiver checks for incoming stories from Newsroom Management. If there is no response, it times out.
7. Click the arrow to select the code page to use for output, which matches the code page
used by the newsroom computer system workstations. For instance, a news room at a station in the United States may use code page 1252 with an earlier, non-Unicode version of iNEWS. For any workstations that are running version 2.5 or later, however, you should always select Unicode. If the output Character Translations are changed, the Data Receiver must be restarted.
8. Click the add and remove buttons to add or remove additional character mapping. This
is used to create any custom character mapping.
Output Cache Settings Data Receiver caches incoming wire stories for output later if it cannot connect to the Newsroom Management Server. This is so no wire stories are lost in a situation where the Newsroom Management Server is not available. Options are available for setting the maximum cache size and directory. The next time the Data Receiver successfully connects to the Newsroom Management Server, processes the stories in its cache according to the cache priority setting.
Summary & Wire Instance Configuration Tabs To change the output cache settings:
1. Click the Change button located next to the Cache Setting text box. The output cache
contains stories which are ready to be sent to the newsroom computer system. The Output Cache Configuration dialog box appears.
2. Click the Select button located to the right of the Cache Directory text box to select a cache
directory where the available stories are stored.
3. Enter the numeric cache size in the Cache Size text box. This determines the maximumsize
of all of the stories contained in the cache directory.
4. Click the Select button located to the right of the Backup Directory text box to select a
backup directory location. This is where the stories are moved after they are removed from the cache directory. This is done after the story is successfully sent to the newsroom computer system and aids for troubleshooting purposes, if needed.
5. Enter the numeric backup size in the Backup Size text box. This is the maximum size of all
of the stories contained in the backup directory. When the backup size is reached, all the stories are purged by First In, First Out (FIFO) that is, the oldest stories are removed to make room for the newer stories.
6. Select a Cache Priority using the down-arrow. This is the order in which stories are sent to
the NRCS from the wire service.
The options are:
3 Data Receiver Administration Application - Bulletin—this is the default option it sends stories containing Bulletin strings to NRCS first followed by any other stories. If this is used and there are no bulletin stories in the cache, the stories are sent to the newsroom computer system in the order in which they were ingested.
- Normal—this option sends stories to NRCS in the order in which they were ingested.
- New—sends new stories to NRCS first. Selecting this option means new stories are always sent ahead of cached stories; cached stories are sent only if there are no new stories to send.
- Alternating—this option sends new and cached stories to NRCS alternating them so that all stories are sent. When there are no cached stories, there is nothing to alternate.
7. Click the add and remove buttons to add or remove the Bulletin strings.
Bulletin strings are only used when the Cache Priority is bulletin. When this is the case, stories which are bulletins get sent to the NRCS before non-bulletin stories. The processed stories are searched for each of the bulletin strings. If any bulletin string is found anywhere in the story, the story is considered a bulletin and handled appropriately.
Also, multiple bulletin strings may be specified. Since the entire story is searched for the matching string, a more finely tuned search can be made by adding functionality to the story format configuration file and adding more specific strings to the final story when necessary. For instance, or and adding those same <!--BULLETIN--> <!--URGENT--> strings as Bulletin Strings.
Logging Section If you have questions about making changes to the information contained in the following section, contact Avid Customer Support.
The Logging section of the Wire Configuration tab allows for changing of the Logging information details for the wire service instance.
Summary & Wire Instance Configuration Tabs Logging options may include:
• Starting and stopping of the Wire Service • Wire Service configuration changes • Story processing time-outs • Raw data logging errors • Cache status and errors • Story received information • Story sent information • NRCS communication failures Changing Log Information Details To change the log information details:
1. Click the Change button in the Logging section.The Logging Level dialog box appears.
3 Data Receiver Administration Application
2. In the Event Log section, ensure the check boxes are selected for all of the types of
events for which logging is needed. This is a useful troubleshooting tool particularly if you need logging for a specific area of the Data Receiver.
3. In the OS Logging section, use the arrow to select the logging level from the list. This
selection determines what messages—errors, warnings, and so forth—are entered in the Windows Event Viewer.
Avid recommends using discretion when selecting the Info-log high-level information, warnings and errors and All-log all information, warnings, and errors OS logging options. These settings increase the workload on the wireserver and may impede performance.
4. In the File Logging section, Use the down arrow to select a logging level and click the
Select button next to the Log File Path text box to change the log file path.
The system administrator typically configures the path for the location in which the Data Receiver log files are stored. In the previous example, the log file path is:
c:\Program Files\Avid\Data Receiver\<instance_name>\logs This directory contains separate log folders for each wire service instance.
> **Note:** By default, separate folders are created for log files belonging to each instance of wire
server. This makes it easier to tell the log files apart.
The Data Receiver creates a log file for each wire service instance, for each day of the week, so at any given time there are one weeks worth of logs per wire service instance.
There will never be more than 7 log files per wire service instance.
For example, If there are 5 wire service instances there would be 35 log files. The log file for each day is unlimited in size, so it is important to have enough hard disk space.
For the latest information on hardware specifications visit:
http://www.avid.com/products The following is the naming convention used for a log file:
<GUID>.log.<Day of the week> Example:
E11CD531.log.Monday In the previous example, when Monday rolls around, the log file from last week will be flushed out and a new Monday log file will be started.
> **Note:** By default Windows hides file extensions for known file types. When Data Receiver log files
are associated with a program, such as WordPad or Notepad, the extensions —.Monday, .Tuesday, and so forth—are hidden making it difficult to tell which day of the week a particular file is from. Avid recommends changing the Windows folder settings to always show file extensions.
Summary & Wire Instance Configuration Tabs
5. When e-mail notification is needed, use the E-mail Notification section, to enter an email
server name, a from and destination address, and for setting the Consecutive Max.
To add an e-mail destination address:
- Click the Add button.The New E-mail Address dialog box appears.
- Enter the e-mail address in the text box.
- Click the radio button(s) that correspond to the logging levels about which notification
is required. Use discretion when selecting the Logging Level. Selecting options other than Errors only will generate an extreme amount of unnecessary emails.
- Click the OK button.
To edit an e-mail destination address:
- Click the Edit button.The Edit E-mail Address Information dialog box appears.
3 Data Receiver Administration Application
- Edit the e-mail address in the text box.
- Click the radio button(s) that correspond to the logging levels about which
- notification is required. Use discretion when selecting the Logging Level. Selecting
- options other than Errors only will generate an extreme amount of unnecessary
emails.
- Click the OK button.
The Consecutive Max setting is the maximum number of consecutive e-mails regarding any single error reported by the service. It applies to errors of the same type reported consecutively. If a different error is reported, the count is reset. When the maximum number is reached, the last e-mail will indicate that no more e-mails will be sent regarding the problem until the instance of the service is restarted. E-mails for other errors will continue. The value for this option is set it is placed inside the <ConsecutiveEmailMax> tags located in the <Misc> section of the configuration file.
Setting the value to zero (0) means there is no limit. Use the arrow to set the maximum number of consecutive e-mails regarding errors of the same type, as shown in the following.
Summary & Wire Instance Configuration Tabs Viewing Log Files To view the Data Receiver log file:
1. Navigate to the location of the folder containing the log files. By default they are found in:
c:\program files\<instance_name>\logs In the following example the <instance_name> is Wire2.
3 Data Receiver Administration Application
2. Right-click on the log you want to view.
3. Select Open from the menu. Open the file using WordPad or Notepad as shown in the
following example.
Wire Service Instance Controls The previous example shows a Log file for a wire instance with a GUID of CD030750, for Sunday, opened with Notepad. The log shows stories coming in from a serial AP wire and being filed to the Newsroom Management system.
Wire Service Instance Controls The Wire Service Instance controls are located to the right of the Summary & Wire Configuration tabs.
The controls are as follows:
• Auto Scroll Check Box • Stop/Start Button • Get Status Button These controls allow immediate updates with respect to a specific instance of a wire service.
3 Data Receiver Administration Application Auto Scroll Check Box When checked, the Auto Scroll immediately allows for the newest information to appear on the bottom of a specific Information tab rather than waiting for the next specified interval.
Stop/Start Button The Start/Stop button allows the user to immediately start or stop the specific instance of the wire service selected.
To stop or start a specific instance of a wire service:
1. Click the row corresponding to the instance of a wire service on the Summary tab.
2. Click the Start/Stop button located to the right of the Summary & Configuration tabs.
The status of the specific instance selected changes.
> **Note:** Stopping a wire service instance results in the loss of any data arriving while the instance is
stopped.
This may also be done by selecting the instance of a wire service on the Summary tab and using the right-click menu selection.
Get Status Button The Get Status button allows the user to immediately Get the current status of the specific instance of the wire service selected.
To get the status of a specific instance of a wire service:
1. Click the row corresponding to the instance of a wire service on the Summary tab.
2. Click the Get Status button. The current status is updated for the specific instance
selected and is displayed in the in the status column of the Summary tab.
This may also be done by selecting the instance of a wire service on the Summary tab and using the right-click menu selection.
Summary Panel The lower portion of the Administration application window is known as the Summary panel. It displays information about a specified service’s activity.
Summary Panel For instance, to view information about a specific wire service instance:
- Click the row corresponding to the wire service instance, as shown below.The most current
activity appears at the bottom of the list and is updated at predetermined intervals or when the Get Status button is clicked.Use the scroll bar to view all activity appearing on the list.
3 Data Receiver Administration Application 4 Wire Service Instances This chapter explains wire service instances.
This chapter contains the following main sections:
• Wire Service Instance Overview • Adding a New Wire Service Instance • Starting the New Instance • Removing a Wire Service Instance • Adding a Previously Configured Instance Wire Service Instance Overview Each wire service instance contains built in parsing language that allows it to input many kinds of raw data—including data received from a commercial news service—and convert that data into an acceptable format for the connected MediaCentral Newsroom Management system.
A wire feed or data feed refers to data received from a commercial news service such as the Associated Press (AP), Reuters, United Press International (UPI) and others. Typically these wire providers conform to one or more standards, such as ANPA, and are delivered as serial data.
It uses a basic two buffer concept: the input data buffer, and the output buffer.
The input buffer is not comprised of true raw data but rather, data converted to Unicode (UTF-16) where additional character modifications may be applied to it if they are required.
See “To change Input Translations:” on page 50 for more information.
The input buffer contains a single story, and includes any StartSequence and StopSequence characters. The output buffer is initially empty and is populated as data is formatted for output to the Newsroom Managment system.
Adding a New Wire Service Instance Wire service instances are configured after the Data Receiver software is installed.
> **Note:** When a new instance is created and added to the Administration application, the instance
resource must also be added to the Newsroom Management Server.
To create a new wire service instance:
1. Start the Data Receiver Administration application.
2. Select the Create new Wire Service option from the Wire Services menu. The Create
new Wire Service dialog box appears.
Adding a New Wire Service Instance
3. Enter a name for this new instance in the Instance Name text box.
4. Click the Find button located next to the Process File text box.
5. Select the story format configuration file (sfc) for use by this instance.
6. Click the OK button. The Configure Directories dialog box appears.
7. Accept the default Logging, Cache, and Backup directories—these paths may vary—and
click the OK button. The following dialog appears:
8. Click the OK button.The new instance appears in the Data Receiver Application window.
9. Click the newly added instance tab. Make any necessary changes to the Input, Process,
Output, and Logging information as required to enable the new instance to work properly with the wire input source and the iNEWS newsroom computer system. See “The Wire Configuration Tabs” on page 43 for more information.
10. Start the new instance.
4 Wire Service Instances Starting the New Instance To start the new instance:
1. Click the Summary tab and select the row in the grid containing the new instance.
2. Do one of the following:
- Click the Start/Stop button. The new instance starts and begins to process stories.
- Right-click on the row corresponding to the instance of a wire service on the
Summary tab and select the Start Wire Service option from the menu.
Removing a Wire Service Instance To completely remove a wire service instance, it must be removed from the Data Receiver Administration window and the WS.exe.config file. If an instance is removed only from the Data Receiver Administration window it may be added again later, if needed. Procedures for doing both are provided in this section.
> **Note:** The following action removes the Wire Service from the view of the Administration
Application. The WS.exe.config file is what the back-end service actually reads to determine what Wire Service to run. So, to fully stop a Wire Service from running, it must be removed from the WS.exe.config file as well. The Data Receiver Service must be restarted, from the control panel, anytime something is added, deleted or changed by a user in the WS.exe.config file.
To remove an instance of a wire service from the Data Receiver Administration window:
1. Start the Data Receiver. See “Starting the Administration Application” on page 38 for
more information.
2. On the Summary tab, click the row containing the instance you want to remove.
3. Click the Wire Services menu.
4. Select the Remove selected Wire Services option.The instance is removed from the Data
Receiver Administration window.
5. Restart the Data Receiver. See “Starting the Administration Application” on page 38
for more information.
When an instance is removed from within the Administration Application it is not removed from the WS.exe.config file; therefore, the wire instance will continue running in the background using resources such as an input COM port.
Adding a Previously Configured Instance Adding a Previously Configured Instance If a previously configured instance was removed from the Data Receiver Administration window but not removed from the WS.exe.config file, it may be added back to the application at any time.
To add a previously configured instance to the Data Receiver Administration window:
1. Start the Data Receiver Administration application. See “Starting the Administration
Application” on page 38 for more information.
2. Click the Wire Services menu.
3. Select the Add previously configured Wire Service option. The Add previously configured
Wire Service dialog box appears.
4. Click the Find button located to the right of the Filename text box. The Open dialog box
appears.
5. Select the previously configured CFG file from the list.
6. Click the Open button. The Add previously configured Wire Service dialog box appears
with the Filename, GUID, and Name information filled in as shown in the following example.
7. Click the Add button. The previously configured instance appears in the Data Receiver
Application window.
4 Wire Service Instances
8. Start the instance. See “Starting the New Instance” on page 72 for more information.
> **Note:** In the summary section of the Data Receiver Administration window, if a status of unknown
is displayed in the status column for a wire service instance, it may mean that the instance was removed from the WS.exe.config file. You may need to create a new instance or manually edit the WS.exe.config file.
5 Troubleshooting This chapter contains Data Receiver troubleshooting information.
This chapter contains the following main sections:
• Data Receiver Does Not Start After Installation • New Wire Service Instance Does Not Start • A Previously Functional Instance Does Not Run • All Previously Functional Instances Do Not Run • Problems After Hardware Configuration Changes • Testing COM Ports • Story to NRCS & Story Output Not in Sync Data Receiver Does Not Start After Installation If a newly installed Data Receiver wire instance does not run after the installation it may be because the PC has not been restarted. Restart the PC to correct the problem.
New Wire Service Instance Does Not Start If a newly installed Data Receiver wire service instance does not run after the installation it may be because a specified resource, such as COM port cannot be located. There may have been a COM port hardware failure on the PC running the Data Receiver, such as lightning damage to a serial port or there may be an invalid parameter in the configuration file for the instance or the SFC file. If one or more COM ports specified in the wire instance configuration have failed it may affect all COM ports on a Digi board. See “Testing COM Ports” on page 77 for more information.
Review the Windows Event Viewer logs and Data Receiver log files for more information about the instance not starting.
A Previously Functional Instance Does Not Run If a previously functional wire service instance using a serial input fail to start and the following appear in the Windows Event log there may be a COM port failure.
• Lower DTR error:6 • CreateFile error:2 • iNEWS StartOutput ERROR:2: Read signon exception: No Service available This may happen after adding or changing an instance. See “Testing COM Ports” on page 77 for more information.
Review the Windows Event Viewer logs and Data Receiver log files for more information about the instance not starting.
All Previously Functional Instances Do Not Run All Previously Functional Instances Do Not Run If all previously functional wire service instances, using a serial input, fail to start and there are Lower DTR 6 errors in the Windows Event log there may be a COM port failure. See “Testing COM Ports” on page 77 for more information.
Review the Windows Event Viewer logs and Data Receiver log files for more information about the instance not starting.
Problems After Hardware Configuration Changes If a Data Receiver wire instance does not run after hardware configuration changes are made it may be that after making the configuration changes the Data Receiver was not restarted.
Another possibility may be an invalid parameter in the configuration file for the instance or the SFC file. If one or more COM ports specified in the wire instance configuration have failed it may affect all COM ports on a Digi board. See “Testing COM Ports” on page 77 for more information.
Review the Windows Event Viewer logs and Data Receiver log files for more information about the instance not starting.
Testing COM Ports To start the new instance:
1. Stop the Data Receiver service using Windows Control Panel > Administration > Services.
If the following warning message appears:
Click the OK button, start the Data Receiver service, and stop the service again. No warning appears and the service is stopped.
2. Select Start > Run from the Windows menu.
3. Enter CMD command. A command prompt appears similar to the one shown in the
following:
5 Troubleshooting
4. Type Mode COM3 at the command prompt and press Enter on the keyboard.
Information about COM port 3 appears.
When the Data Receiver service is stopped, a result like the one shown in the previous example means that the port does exist and is not in use by any application.
The COM port does not exist if the result is like the following:
Illegal device name - COM3 The COM port does exist and is in use if the result is like the following:
Device COM3 is not currently available
5. Repeat the previous step to verify the information for each COM port.
You can also determine if the Data Receiver is using the COM ports by restarting the Data Receiver service and repeating this procedure for each COM port. In this case, each port being used by Data Receiver should report back with the following:
Device COM3 is not currently available If it does not, then the Data Receiver is not using the port.
Testing COM Ports COM Port Test Shows Illegal Device Name If the COM port test shows an illegal device name or that the COM port does not exist, you need to check the serial board.
To troubleshoot the COM port test results, do one of the following:
- Remove and reinstall the Digi board if driver or other serial board installation problems are
suspected.
- Replace the Digi board if it has been damaged or has failed
Instance Won’t Start or Can’t Find a COM Port Occasionally, when a wire service instance won’t start or has problems finding a COM port it may be due to a duplicate entry in the WS.exe.config file.
To check for and remove duplicate entries:
1. Stop the Avid Data Receiver service using Windows Control Panel > Administration >
Services. See step1 in the previous procedure.
2. Navigate to the location of the WS.exe.config file.
3. Open the WS.exe.config file with WordPad.
4. If a duplicate entry exists delete the one of the entries, save, and close the file.
5. Restart the Data Receiver service using Windows Control Panel > Administration >
Services.
5 Troubleshooting Story to NRCS & Story Output Not in Sync This section covers troubleshooting out-of-sync issues with both new and previously working configurations.
Previously Working Configuration If in a previously working configuration, the Story to NRCS column is out of sync with the Story Input column and is not updating as new stories come in, the probable cause may be that the Data Receiver is unable to communicate with the Newsroom Management Server.
To troubleshoot a previously working configuration, do the following:
1. Ensure the network connection to the Newsroom Management Server or servers is
present.
2. Ensure that the Newsroom Management Server is running.
3. Ensure that the wiresever process is properly configured and is running on the
Newsroom Management Server.
4. If you suspect a problem with the Newsroom Management Server, see the
documentation provided with your MediaCentral Newsroom Management system for more information.
New Configuration If in a new configuration, the Story to NRCS column is out of sync with the Story Input column and is not updating as new stories come in, the probable cause may be that the Data Receiver is unable to communicate with the Newsroom Management Server.
To troubleshoot a new configuration, do the following:
1. Ensure the network connection to the Newsroom Management Server or servers is
present.
2. Ensure that the Newsroom Management Server is running.
3. Ensure the wiresever process is properly configured and is running on the Newsroom
Management Server.
4. Ensure the Newsroom Management Server name(s) are set correctly for the Newsroom
Management Server(s) with which the Data Receiver is attempting to communicate.
5. Ensure the Data Receiver Wire Source setting matches the source parameter in the site
config file of the Newsroom Management Server.
A Data Receiver Parsing Language This appendix contains the following main sections:
• Parsing Language Overview • Parsing Language Commands • Sample Parsing Language for ANPA Parsing Language Overview The Data Receiver has a built in parsing language. This parsing language allows it to input almost any kind of raw data and transform it into an acceptable data format for the connected NRCS.
The parsing language is based on buffers: the input data buffer, and the output buffer. The input buffer is raw data which has been transformed into Unicode (UTF-16). Additional character transformations may have been applied. The input buffer has a single story, and includes any StartSequence and StopSequence characters. The output buffer is initially empty for each corresponding input buffer.
Parsing Language Commands The parsing language includes the following commands:
Commands Description Comment The Comment command displays the argument data in the console window.
This command can be used for informational messages to aid in the debugging of a parsing script. This command does not change the input or output buffers.
BeginMark The BeginMark and EndMark commands use the current position to set the beginning pointer and end pointer for a marked data block.
EndMark ClearBeginMark The ClearBeginMark and ClearEndMark commands clear the beginning pointer and end pointer. Both pointers must be set to mark a data block, and ClearEndMark the beginning pointer must precede the end pointer for the marked block to be valid. Some commands will behave differently if the beginning pointer and end pointer are both set —even if the end pointer precedes the begging pointer. The BeginMark, EndMark, ClearBeginMark, and ClearEndMark commands ignore any argument data.
Parsing Language Commands Commands Description Move The Move command changes the position of the current position in the input buffer. The argument data is required and it specifies the movement of the current position. The individual characters of the argument data are processed from left to right, and are case insensitive. The plus (+) character moves the current position one position forward, but not beyond the end of the buffer.
The minus (-)character moves the current position one position backwards, but not beyond the beginning of the buffer. The letter B moves the current position to the beginning of the buffer. The letter E moves the current position to the end of the buffer. The letter M moves the current position to the beginning pointer if it is set; otherwise it moves the current position to the beginning of the buffer. The letter Z moves the current position to the end pointer if it is set; otherwise it moves the current position to the end of the buffer. Any other character is ignored.
FindForward The FindForward, FindReverse, and FindMarked commands search for an exact match (case sensitive) to a match string. The argument data is the FindReverse required match string. The FindForward command finds the first match FindMarked starting from the current position through the end of the buffer. The FindReverse command finds the last match starting from beginning of the buffer through the current position. The FindMarked command finds the first match starting from the start of the marked data block to the end of the marked data block. If a proper marked data block does not exist, the FindMarked command will always fail. After any of the find commands are executed, the found flag is set appropriately. The found flag can then be tested with the IfFound or IfNotFound commands. If the match string is found, the current position will be changed to the first character position of the matched string. For repeated find commands, the current position must be moved after a match is found; otherwise the subsequent find commands find the original matched string.
DeleteMarked The DeleteMarked command deletes the entire marked data block. If a proper marked data block doesn’t exist, then the command has no effect. If the current position was in the marked data block, the current position is changed to the beginning of the buffer; otherwise the current position remains on the same character before the deletion. If a marked data block is deleted, the beginning pointer and the end pointer are cleared. The DeleteMarked command ignores any argument data.
A Data Receiver Parsing Language Commands Description ReplaceMarked The ReplaceMarked command replaces the marked data block with a replacement string. The argument data is the required replacement string. If a proper marked data block doesn’t exist, then the command has no effect. If the current position was in the marked data block, the current position is changed to the beginning of the buffer; otherwise the current position remains on the same character before the replacement. If a marked data block is replaced, the beginning pointer and end pointer are set to the beginning and end of the replaced string.
Delete The Delete command deletes all occurrences of a match string. The argument data is the required match string. If a valid marked data block exists, only matched strings in the marked data block will be deleted; otherwise all matched strings in the buffer will be deleted. If a valid marked data block exists, and the current position was not in the marked data block, then the current position will remain on the same character before the deletion(s); other wise the current position will be changed to the beginning of the buffer.
Replace The Replace command replaces all occurrences of a match string with a replacement string. The argument data contains the required match and replacement strings. The formatting of the argument data for the match and replacement string is as follows: leading and trailing white space is ignored; the first non-white space character is designated the delimiter character; the match string is first delimited before and after by the delimiter character, followed by the replacement string which is also delimited before and after by the delimiter character. For instance, in the following; <Process Command="Replace">?match?-?replacement?</Process> First, the Replace command is detected with the specifics of ?match?-?replacement?
Then, the first non-whitespace character is detected and is saved as the delimiter. In the previous example this is the question mark(?) character.
Next, it finds the phrase between the first two of these, and saves it as the word to replace. It also finds the word between the third and fourth instances of this character—in this example, the word replacement—and saves it as the word to replace with. The program ignores everything else, so the hyphen does not do anything; it is there for readability. The command would not be any different if the hyphen was replaced with a comma, period, whitespace, word, no word, etc. Finally, the program finds all of the instances of the word to be replaced—in this case the word, match—in the marked section and replaces it with the replacement word—in this case the word replacement.
Parsing Language Commands Commands Description Insert The Insert command copies the argument data to the output buffer. The argument data is required. This command is generally used for adding XML tags to the output buffer. This command does not change the input buffer or any of its state variables.
CopyMarked The CopyMarked command copies the marked data block to the output buffer. This command does not change the input buffer or any of its state variables. The CopyMarked command ignores any argument data.
IfFound The IfFound and IfNotFound commands test the state of the found flag. Any argument data will be ignored. Subsequent commands will be executed or IfNotFound ignored until a matching Else, ElseIf, ElseIfNot, or EndIf command. The initial state of the found flag is false (not found).
If The If and IfNot commands compare a match string to the input buffer. The argument data is the required match string. If a valid marked data block IfNot exists, the commands compare the match string to the entire marked data; otherwise the commands compare the match string to the data in the buffer starting at the current position. If the match string matches exactly (case sensitive match), the next commands up until the next Else, ElseIf, ElseIfNot, or EndIf will be executed (ignored for IfNot). If the size of the argument data is not the same as the size of the marked data block, or if the size of the argument data is greater than the number of characters from the current position to the end of the input buffer, the comparisons will always fail.
ElseIf The ElseIf and ElseIfNot commands work exactly like the If and IfNot commands, but these commands must be preceded by an IfFound, ElseIfNot IfNotFound, If, or IfNot command. Multiple ElseIf and ElseIfNot commands can be chained together to make an equivalent switch type statement. These commands will execute the subsequent commands (until the next Else, ElseIf, ElseIfNot, or EndIf command) only if none of the previous if and else type commands were considered true, and the match string matches exactly.
Else The Else command may follow any of the IfFound, IfNotFound, If, IfNot, ElseIf, of ElseIfNot commands. The Else command must be terminated by an EndIf command, and may not be followed by an ElseIf or ElseIfNot command. The Else command will cause the commands up until the EndIf command to be executed only when none of the previous if and else type commands was considered true.
EndIf The EndIf command terminates a set of if and else type commands. Nesting of if commands is allowed, with no maximum nesting level.
A Data Receiver Parsing Language Commands Description CopyWireSource The CopyWireSource command pulls the wire source from the configuration file instead of hard coding it in the SFC file. The following is an example:
<Process Command="Insert">&lt;f id=CREATE-BY&gt;</Process> <Process Command="CopyWireSource"></Process> <Process Command="Move">b</Process> <Process Command="FindForward">&#x01;</Process> <Process Command="Move">+</Process> The Following commands ignore any argument data:
• IfFound • IfNotFound • Else • EndIf • BeginMark • EndMark • ClearBeginMark • ClearEndMark • DeleteMarked • CopyMarked • CopyWireSource All other commands require argument data. Leading and trailing white space is significant for required argument data, except for the Replace command. The meaning of the argument data is explained with each command description following this section.
The parsing language has a current position and a marked data block.
The current position applies to the input buffer and is initially positioned at the first character in the buffer for each story to be processed. The current position can be changed by executing commands like Move, FindForward, FindReverse, and FindMarked.
The current position may also be affected by the Delete, DeleteMarked, Replace, or ReplaceMarked commands.
Sample Parsing Language for ANPA A marked data block consists of a beginning pointer and an end pointer. Both pointers are initially cleared for each story to be processed. By manipulating the current position, the beginning pointer and the end pointer may be set to mark one or more characters in the input buffer. Both pointers must be set to mark a block of characters, and it is considered an illegal marked data block if the end pointer precedes the beginning pointer. The marked data block may be used for comparisons, such as If, IfNot, ElseIf, ElseIfNot. The marked data block may also be used for data manipulation, such as Delete, DeleteMarked, Replace, ReplaceMarked, FindMarked, or copied to the output buffer by using the command CopyMarked.
Sample Parsing Language for ANPA The following is an example of the parsing language which might be used for an ANPAtype wire.
<WireProcess Type="ANPA"> <Process Command="Comment">test ANPA parse</Process> <Process Command="Insert">&lt;WireStory&gt;&#x0D;&#x0A;</Process> <Process Command="Insert">&lt;Source&gt;</Process> <Process Command="Insert">Associated Press</Process> <Process Command="Insert">&lt;/Source&gt;&#x0D;&#x0A;</Process> <Process Command="FindForward">&#x01;</Process> <Process Command="Insert">&lt;SLD&gt;</Process> <Process Command="Move">+</Process> <Process Command="BeginMark"></Process> <Process Command="EndMark"></Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/SLD&gt;&#x0D;&#x0A;</Process> <Process Command="Insert">&lt;StoryNumber&gt;</Process> <Process Command="Move">+</Process> <Process Command="BeginMark"></Process> <Process Command="Move">+++</Process> <Process Command="EndMark"></Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/StoryNumber&gt;&#x0D;&#x0A;</Process> <Process Command="Insert">&lt;SelectorCode&gt;</Process> <Process Command="FindForward">&#x1F;</Process> <Process Command="Move">+</Process> <Process Command="BeginMark"></Process> <Process Command="Move">++++</Process> A Data Receiver Parsing Language <Process Command="EndMark"></Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/SelectorCode&gt;&#x0D;&#x0A;</Process> <Process Command="Insert">&lt;Priority&gt;</Process> <Process Command="FindForward">&#x0A;</Process> <Process Command="Move">+</Process> <Process Command="BeginMark"></Process> <Process Command="EndMark"></Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/Priority&gt;&#x0D;&#x0A;</Process> <Process Command="Insert">&lt;Category actual=&quot;</Process> <Process Command="FindForward">&#x20;</Process> <Process Command="Move">+</Process> <Process Command="BeginMark"></Process> <Process Command="EndMark"></Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&quot;&gt;</Process> <Process Command="If">d</Process> <Process Command="Insert">Headlines</Process> <Process Command="ElseIf">h</Process> <Process Command="Insert">Headlines</Process> <Process Command="ElseIf">j</Process> <Process Command="Insert">Headlines</Process> <Process Command="ElseIf">g</Process> <Process Command="FindReverse">&#x0A;</Process> <Process Command="Move">----</Process> <Process Command="BeginMark"></Process> <Process Command="Move">+</Process> <Process Command="EndMark"></Process> <Process Command="FindForward">&#x0A;</Process> <Process Command="Move">+</Process> <Process Command="FindForward">&#x20;</Process> <Process Command="Move">+</Process> <Process Command="If">wi</Process> <Process Command="Insert">Headlines</Process> <Process Command="Else"></Process> <Process Command="Insert">State</Process> <Process Command="EndIf"></Process> <Process Command="ElseIf">q</Process> <Process Command="Insert">Sports Scores</Process> <Process Command="ElseIf">s</Process> <Process Command="Insert">Sports</Process> <Process Command="ElseIf">l</Process> <Process Command="Insert">Lifestyle</Process> <Process Command="ElseIf">c</Process> Sample Parsing Language for ANPA <Process Command="Insert">Features</Process> <Process Command="ElseIf">e</Process> <Process Command="Insert">Features</Process> <Process Command="ElseIf">k</Process> <Process Command="Insert">Political</Process> <Process Command="ElseIf">p</Process> <Process Command="Insert">Political</Process> <Process Command="ElseIf">o</Process> <Process Command="Insert">Weather</Process> <Process Command="ElseIf">f</Process> <Process Command="Insert">Financial</Process> <Process Command="ElseIf">m</Process> <Process Command="Insert">Markets</Process> <Process Command="Else"></Process> <Process Command="FindReverse">&#x0A;</Process> <Process Command="Move">----</Process> <Process Command="BeginMark"></Process> <Process Command="Move">+</Process> <Process Command="EndMark"></Process> <Process Command="FindForward">&#x0A;</Process> <Process Command="Move">+</Process> <Process Command="FindForward">&#x20;</Process> <Process Command="Move">+</Process> <Process Command="If">ki</Process> <Process Command="Insert">Farm</Process> <Process Command="ElseIf">wi</Process> <Process Command="Insert">State</Process> <Process Command="ElseIf">ia</Process> <Process Command="Insert">Regional</Process> <Process Command="ElseIf">il</Process> <Process Command="Insert">Regional</Process> <Process Command="ElseIf">mi</Process> <Process Command="Insert">Regional</Process> <Process Command="ElseIf">mn</Process> <Process Command="Insert">Regional</Process> <Process Command="Else"></Process> <Process Command="BeginMark"></Process> <Process Command="EndMark"></Process> <Process Command="If">a</Process> <Process Command="Insert">National</Process> <Process Command="ElseIf">w</Process> <Process Command="Insert">National</Process> <Process Command="ElseIf">i</Process> <Process Command="Insert">International</Process> <Process Command="Else"></Process> <Process Command="Insert">Other</Process> <Process Command="EndIf"></Process> A Data Receiver Parsing Language <Process Command="EndIf"></Process> <Process Command="EndIf"></Process> <Process Command="Insert">&lt;/Category&gt;&#x0D;&#x0A;</Process> <Process Command="FindForward">&#x12;</Process> <Process Command="IfNotFound"></Process> <Process Command="Insert">&lt;Text/&gt;&#x0D;&#x0A;</Process> <Process Command="Else"></Process> <Process Command="Insert">&lt;Tabular/&gt;&#x0D;&#x0A;</Process> <Process Command="EndIf"></Process> <Process Command="FindForward">&#x20;</Process> <Process Command="Move">+</Process> <Process Command="BeginMark"></Process> <Process Command="FindForward">&#x20;</Process> <Process Command="Move">-</Process> <Process Command="EndMark"></Process> <Process Command="Insert">&lt;Keyword&gt;</Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/Keyword&gt;&#x0D;&#x0A;</Process> <Process Command="Move">++</Process> <Process Command="BeginMark"></Process> <Process Command="Move">+</Process> <Process Command="FindForward">&#x20;</Process> <Process Command="Move">-</Process> <Process Command="EndMark"></Process> <Process Command="IfNot">&#x20;</Process> <Process Command="Insert">&lt;Version&gt;</Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/Version&gt;&#x0D;&#x0A;</Process> <Process Command="EndIf"></Process> <Process Command="Move">++</Process> <Process Command="BeginMark"></Process> <Process Command="Move">+</Process> <Process Command="FindForward">&#x20;</Process> <Process Command="Move">-</Process> <Process Command="EndMark"></Process> <Process Command="IfNot">&#x20;</Process> <Process Command="Insert">&lt;Reference&gt;</Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/Reference&gt;&#x0D;&#x0A;</Process> <Process Command="EndIf"></Process> <Process Command="Move">++</Process> <Process Command="BeginMark"></Process> <Process Command="FindForward">&#x20;</Process> Sample Parsing Language for ANPA <Process Command="Move">-</Process> <Process Command="EndMark"></Process> <Process Command="Insert">&lt;Date&gt;</Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/Date&gt;&#x0D;&#x0A;</Process> <Process Command="Move">++</Process> <Process Command="BeginMark"></Process> <Process Command="FindForward">&#x0D;</Process> <Process Command="Move">-</Process> <Process Command="EndMark"></Process> <Process Command="Insert">&lt;WordCount&gt;</Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/WordCount&gt;&#x0D;&#x0A;</Process> <Process Command="FindForward">&#x02;</Process> <Process Command="EndMark"></Process> <Process Command="Move">b</Process> <Process Command="BeginMark"></Process> <Process Command="DeleteMarked"></Process> <Process Command="ClearBeginMark"></Process> <Process Command="ClearEndMark"></Process> <Process Command="Delete">&#x00;</Process> <Process Command="Delete">&#x01;</Process> <Process Command="Delete">&#x04;</Process> <Process Command="Delete">&#x05;</Process> <Process Command="Delete">&#x06;</Process> <Process Command="Delete">&#x07;</Process> <Process Command="Delete">&#x0B;</Process> <Process Command="Delete">&#x0C;</Process> <Process Command="Delete">&#x0E;</Process> <Process Command="Delete">&#x0F;</Process> <Process Command="Delete">&#x10;</Process> <Process Command="Delete">&#x11;</Process> <Process Command="Delete">&#x12;</Process> <Process Command="Delete">&#x13;</Process> <Process Command="Delete">&#x14;</Process> <Process Command="Delete">&#x15;</Process> <Process Command="Delete">&#x16;</Process> <Process Command="Delete">&#x17;</Process> <Process Command="Delete">&#x18;</Process> <Process Command="Delete">&#x19;</Process> <Process Command="Delete">&#x1A;</Process> <Process Command="Delete">&#x1B;</Process> <Process Command="Delete">&#x1C;</Process> A Data Receiver Parsing Language <Process Command="Delete">&#x1D;</Process> <Process Command="Delete">&#x1E;</Process> <Process Command="Delete">&#x1F;</Process> <Process Command="Replace">"&lt;&#x0D;&#x0A;&#x09;","&#x1B;&#x1B;" </Process> <Process Command="Replace">"&lt;","&#x1B;"</Process> <Process Command="Replace">"^","&#x1B;"</Process> <Process Command="Replace">"&#x0D;&#x0A;&#x09;","&#x1B;&#x1B;"</Process> <Process Command="Replace">"&#x08;","&#x1B;"</Process> <Process Command="Replace">"&#x0D;&#x0A;&#x20;","&#x1B;&#x1B;&#x20;" </Process> <Process Command="Delete">&#x09;</Process> <Process Command="Delete">&#x0A;</Process> <Process Command="Move">b</Process> <Process Command="FindForward">&#x1B;</Process> <Process Command="IfFound"></Process> <Process Command="Move">+</Process> <Process Command="FindForward">&#x1B;</Process> <Process Command="IfFound"></Process> <Process Command="Move">+</Process> <Process Command="FindForward">&#x1B;</Process> <Process Command="IfFound"></Process> <Process Command="Move">+</Process> <Process Command="FindForward">&#x1B;</Process> <Process Command="IfFound"></Process> <Process Command="Move">+</Process> <Process Command="FindForward">&#x1B;</Process> <Process Command="IfFound"></Process> <Process Command="Replace">"&#x0D;","&#x20;"</Process> <Process Command="EndIf"></Process> <Process Command="EndIf"></Process> <Process Command="EndIf"></Process> <Process Command="EndIf"></Process> <Process Command="EndIf"></Process> <Process Command="Replace">"&#x0D;","&#x1B;"</Process> <Process Command="Replace">"&#x20;&#x20;&#x20;&#x1B;","&#x1B;"</Process> <Process Command="Replace">"&#x20;&#x20;&#x1B;","&#x1B;"</Process> <Process Command="Replace">"&#x20;&#x1B;","&#x1B;"</Process> <Process Command="Replace">"&#x1B;&#x1B;&#x1B;&#x1B;&#x1B;","&#x1B;&#x1B;" </Process> <Process Sample Parsing Language for ANPA Command="Replace">"&#x1B;&#x1B;&#x1B;&#x1B;","&#x1B;&#x1B;"</Process> <Process Command="Replace">"&#x1B;&#x1B;&#x1B;","&#x1B;&#x1B;"</Process> <Process Command="Replace">"&#x1B;","&#x0D;&#x0A;"</Process> <Process Command="Replace">" ["," 1/8"</Process> <Process Command="Replace">" \"," 1/4"</Process> <Process Command="Replace">" ]"," 3/8"</Process> <Process Command="Replace">" {"," 1/2"</Process> <Process Command="Replace">" |"," 5/8"</Process> <Process Command="Replace">" }"," 3/4"</Process> <Process Command="Replace">" ~"," 7/8"</Process> <Process Command="Replace">"["," 1/8"</Process> <Process Command="Replace">"\"," 1/4"</Process> <Process Command="Replace">"]"," 3/8"</Process> <Process Command="Replace">"{"," 1/2"</Process> <Process Command="Replace">"|"," 5/8"</Process> <Process Command="Replace">"}"," 3/4"</Process> <Process Command="Replace">"~"," 7/8"</Process> <Process Command="Replace">.''.,.".</Process> <Process Command="Replace">.``.,.".</Process> <Process Command="Replace">"&amp;","&amp;amp;"</Process> <Process Command="Replace">"&lt;","&amp;lt;"</Process> <Process Command="Replace">"&gt;","&amp;gt;"</Process> <Process Command="Replace">"&apos;","&amp;apos;"</Process> <Process Command="Replace">.&quot;.,.&amp;quot;.</Process> <Process Command="Move">b</Process> <Process Command="BeginMark"></Process> <Process Command="EndMark"></Process> <Process Command="If">&#x0D;</Process> <Process Command="Move">++</Process> <Process Command="BeginMark"></Process> <Process Command="EndMark"></Process> <Process Command="If">&#x0D;</Process> <Process Command="Move">++</Process> <Process Command="BeginMark"></Process> <Process Command="EndIf"></Process> <Process Command="EndIf"></Process> <Process Command="FindForward">&#x0D;</Process> <Process Command="Move">-</Process> <Process Command="EndMark"></Process> <Process Command="FindMarked">,</Process> <Process Command="IfFound"></Process> <Process Command="Move">-</Process> A Data Receiver Parsing Language <Process Command="EndMark"></Process> <Process Command="EndIf"></Process> <Process Command="Insert">&lt;Slug&gt;</Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/Slug&gt;&#x0D;&#x0A;</Process> <Process Command="FindForward">&#x0D;</Process> <Process Command="Move">++</Process> <Process Command="FindForward">&#x0D;</Process> <Process Command="Move">++</Process> <Process Command="FindForward">&#x0D;</Process> <Process Command="EndMark"></Process> <Process Command="FindMarked">&#x20;EBS&#x20;</Process> <Process Command="IfFound"></Process> <Process Command="Insert">&lt;EBS/&gt;&#x0D;&#x0A;</Process> <Process Command="EndIf"></Process> <Process Command="FindMarked">FLASH</Process> <Process Command="IfFound"></Process> <Process Command="Insert">&lt;FLASH/&gt;&#x0D;&#x0A;</Process> <Process Command="EndIf"></Process> <Process Command="FindMarked">URGENT</Process> <Process Command="IfFound"></Process> <Process Command="Insert">&lt;URGENT/&gt;&#x0D;&#x0A;</Process> <Process Command="EndIf"></Process> <Process Command="FindMarked">BULLETIN</Process> <Process Command="IfFound"></Process> <Process Command="Insert">&lt;BULLETIN/&gt;&#x0D;&#x0A;</Process> <Process Command="EndIf"></Process> <Process Command="FindForward">&#x03;</Process> <Process Command="Move">-</Process> <Process Command="EndMark"></Process> <Process Command="Insert">&lt;Body&gt;&#x0D;&#x0A;</Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&#x0D;&#x0A;&lt;/Body&gt;&#x0D;&#x0A;</Process> <Process Command="Move">++</Process> <Process Command="BeginMark"></Process> <Process Command="FindForward">&#x0D;</Process> <Process Command="Move">-</Process> <Process Command="EndMark"></Process> <Process Command="Delete">APTV-</Process> <Process Command="Delete">APEX-</Process> Sample Parsing Language for ANPA <Process Command="Insert">&lt;DateTime&gt;</Process> <Process Command="CopyMarked"></Process> <Process Command="Insert">&lt;/DateTime&gt;&#x0D;&#x0A;</Process> <Process Command="Insert">&lt;/WireStory&gt;&#x0D;&#x0A;</Process> </WireProcess> A Data Receiver Parsing Language B Hexadecimal Information This appendix contains the following main sections:
• ASCII Hexadecimal Overview • ASCII Hexadecimal Table • Sample Parsing Language for ANPA ASCII Hexadecimal Overview Some information in the Data Receiver configuration is entered in hexadecimal format. This appendix contains some helpful definitions and also includes an ASCII Hexadecimal table.
The parsing language is based on buffers: the input data buffer, and the output buffer. The input buffer is raw data which has been transformed into Unicode (UTF-16). Additional character transformations may have been applied. The input buffer has a single story, and includes any StartSequence and StopSequence characters. The output buffer is initially empty for each corresponding input buffer.
Definitions This section defines ASCII, characters, decimals and hexadecimals.
ASCII ASCII stands for American Standard Code for Information Interchange and was developed by the American National Standards Institute (ANSI). It is the most common format for text files in computers and on the Internet. In an ASCII file, each alphabetic, numeric, or special character is represented with a 7-bit binary number (a string of seven 0s or 1s). There are 128 possible characters defined.
This format may be understood by any computer and the file may be imported into their own applications without issues. Notepad.exe creates ASCII text, or in MS Word you can save a file as text only.
Character A character is one of a limited number of symbols, including the letters of a particular language's alphabet, the numerals in the decimal number system, and certain characters such as the ampersand (&) and at sign (@). There are several standards of computer encoding for characters the most common of which is ASCII.
Decimal The term decimal describes the base-10 number system. The system consists of ten single digit numbers: 0, 1, 2, 3, 4, 5, 6, 7, 8, and 9. The number after 9 is 10. The number after 19 is 20 and so forth. Additional powers of 10 require the addition of another positional digit.
ASCII Hexadecimal Table Hexadecimal Hexadecimal also known as hex describes a base-16 number system. The hexadecimal numbers are 0-9 and then use the letters A-F.
Hex notation is a convenient way to express binary numbers in which a byte is defined as containing eight binary digits. For instance, when expressing a string of text characters or a string of binary values in coding a program or HTML page, one hex digit can represent the arrangement of four binary digits and two hex digits can represent eight binary digits, or a byte.
ASCII Hexadecimal Table The following is an ASCII character table including decimal & hexadecimal characters:
Character Name Char Code Decimal Hex Null NUL Ctrl @ 0 00 Start of Heading SOH Ctrl A 1 01 Start of Text STX Ctrl B 2 02 End of Text ETX Ctrl C 3 03 End of Transmit EOT Ctrl D 4 04 Enquiry ENQ Ctrl E 5 05 Acknowledge ACK Ctrl F 6 06 Bell BEL Ctrl G 7 07 Back Space BS Ctrl H 8 08 Horizontal Tab TAB Ctrl I 9 09 Line Feed LF Ctrl J 10 0A Vertical Tab VT Ctrl K 11 0B Form Feed FF Ctrl L 12 0C Carriage Return CR Ctrl M 13 0D Shift Out SO Ctrl N 14 0E Shift In SI Ctrl O 15 0F Data Line Escape DLE Ctrl P 16 10 B Hexadecimal Information Character Name Char Code Decimal Hex Device Control 1 DC1 Ctrl Q 17 11 Device Control 2 DC2 Ctrl R 18 12 Device Control 3 DC3 Ctrl S 19 13 Device Control 4 DC4 Ctrl T 20 14 Negative Acknowledge NAK Ctrl U 21 15 Synchronous Idle SYN Ctrl V 22 16 End of Transmit Block ETB Ctrl W 23 17 Cancel CAN Ctrl X 24 18 End of Medium EN Ctrl Y 25 19 Substitute SUB Ctrl Z 26 1A Escape ESC Ctrl [ 27 1B File Separator FS Ctrl \ 28 1C Group Separator GS Ctrl ] 29 1D Record Separator RS Ctrl ^ 30 1E Unit Separator US Ctrl _ 31 1F Space 32 20 Exclamation Point ! Shift 1 33 21 Double Quote “ Shift “ 34 22 Pound / Number Sign # Shift 3 35 23 Dollar Sign $ Shift 4 36 24 Percent Sign % Shift 5 37 25 Ampersand & Shift 7 38 26 Single Quote ‘ ‘ 39 27 Left Parenthesis ( Shift 9 40 28 Right Parenthesis ) Shift 0 41 29 Asterisk * Shift 8 42 2A ASCII Hexadecimal Table Character Name Char Code Decimal Hex Plus sign + Shift + 43 2B Comma , , 44 2C Hyphen / minus sign - - 45 2D Period . . 46 2E Forward slash / / 47 2F Zero digit 0 0 48 30 One digit 1 1 49 31 Two digit 2 2 50 32 Three digit 3 3 51 33 Four digit 4 4 52 34 Five digit 5 5 53 35 Six digit 6 6 54 36 Seven digit 7 7 55 37 Eight digit 8 8 56 38 Nine digit 9 9 57 39 Colon : : 58 3A Semicolon ; ; 59 3B Less than sign < Shift < 60 3C Equals sign = = 61 3D Greater than sign > Shift > 62 3E Question mark ? Shift ? 63 3F At sign @ Shift @ 64 40 Capital A A Shift A 65 41 Capital B B Shift B 66 42 Capital C C Shift C 67 43 Capital D D Shift D 68 44 B Hexadecimal Information Character Name Char Code Decimal Hex Capital E E Shift E 69 45 Capital F F Shift F 70 46 Capital G G Shift G 71 47 Capital H H Shift H 72 48 Capital I I Shift I 73 49 Capital J J Shift J 74 4A Capital K K Shift K 75 4B Capital L L Shift L 76 4C Capital M M Shift M 77 4D Capital N N Shift N 78 4E Capital O O Shift O 79 4F Capital P P Shift P 80 50 Capital Q Q Shift Q 81 51 Capital R R Shift R 82 52 Capital S S Shift S 83 53 Capital T T Shift T 84 54 Capital U U Shift U 85 55 Capital V V Shift V 86 56 Capital W W Shift W 87 57 Capital X X Shift X 88 58 Capital Y Y Shift Y 89 59 Capital Z Z Shift Z 90 5A Left Bracket [ [ 91 5B Back Slash \ \ 92 5C Right Bracket ] ] 93 5D Caret ^ Shift 6 94 5E ASCII Hexadecimal Table Character Name Char Code Decimal Hex Underscore _ Shift _ 95 5F Back Quote ‘ ‘ 96 60 Lower-Case A a A 97 61 Lower-Case B b B 98 62 Lower-Case C c C 99 63 Lower-Case D d D 100 64 Lower-Case E e E 101 65 Lower-Case F f F 102 66 Lower-Case G g G 103 67 Lower-Case H h H 104 68 Lower-Case I i I 105 69 Lower-Case J j J 106 6A Lower-Case K k K 107 6B Lower-Case L l L 108 6C Lower-Case M m M 109 6D Lower-Case N n N 110 6E Lower-Case O o O 111 6F Lower-Case P p P 112 70 Lower-Case Q q Q 113 71 Lower-Case R r R 114 72 Lower-Case S s S 115 73 Lower-Case T t T 116 74 Lower-Case U u U 117 75 Lower-Case V v V 118 76 Lower-Case W w W 119 77 Lower-Case X x X 120 78 B Hexadecimal Information Character Name Char Code Decimal Hex Lower-Case Y y Y 121 79 Lower-Case Z z Z 122 7A Left Brace { Shift{ 123 7B Vertical Bar/Pipe | Shift | 124 7C Right Brace } Shift } 125 7D Tilde ~ Shift ~ 126 7E Delta r 127 7F Sample Parsing Language for ANPA The following is an example of the parsing language which might be used for an ANPAtype wire.
<WireProcess> <Comment>test ANPA parse for iNEWS</Comment> <Copy>&lt;nsml&gt;&#x0D;&#x0A;</Copy> <Copy>&lt;fields&gt;&#x0D;&#x0A;</Copy> <Copy>&lt;string id=TITLE&gt;</Copy> <FindForward>&#x0A;</FindForward> <FindForward> </FindForward> <Move>+</Move> <FindForward> </FindForward> <Move>+</Move> <BeginMark /> <FindForward>&#x0D;</FindForward> <Move>-</Move> <EndMark /> <CopyMarked>&amp;&lt;&gt;</CopyMarked> <Copy>&lt;/string&gt;&#x0D;&#x0A;</Copy> <Copy>&lt;string id=PAGE-NUMBER&gt;</Copy> <Move>b</Move> <FindForward>&#x01;</FindForward> <Move>++</Move> <BeginMark /> <Move>+++</Move> <EndMark /> <CopyMarked>&amp;&lt;&gt;</CopyMarked> <Copy>&lt;/string&gt;&#x0D;&#x0A;</Copy> <Copy>&lt;string id=CREATE-BY&gt;</Copy> Sample Parsing Language for ANPA <CopyWireSource>&amp;&lt;&gt;</CopyWireSource> <Move>b</Move> <FindForward>&#x01;</FindForward> <Move>+</Move> <BeginMark /> <EndMark /> <CopyMarked>&amp;&lt;&gt;</CopyMarked> <FindForward>&#x1F;</FindForward> <Move>+</Move> <BeginMark /> <Move>++++</Move> <EndMark /> <CopyMarked>&amp;&lt;&gt;</CopyMarked> <FindForward> </FindForward> <Move>+</Move> <BeginMark /> <EndMark /> <CopyMarked>&amp;&lt;&gt;</CopyMarked> <Move>--</Move> <BeginMark /> <EndMark /> <CopyMarked>&amp;&lt;&gt;</CopyMarked> <Copy>&lt;/string&gt;&#x0D;&#x0A;</Copy> <Copy>&lt;/fields&gt;&#x0D;&#x0A;</Copy> <Move>b</Move> <BeginMark /> <FindForward>&#x02;</FindForward> <EndMark /> <Replace>"&#x02;","&#x02;&#x08;"</Replace> <Move>b</Move> <BeginMark /> <FindForward>&#x02;</FindForward> <EndMark /> <DeleteMarked /> <ClearBeginMark /> <ClearEndMark /> <Delete>&#x00;</Delete> <Delete>&#x01;</Delete> <Delete>&#x02;</Delete> <Delete>&#x04;</Delete> <Delete>&#x05;</Delete> <Delete>&#x06;</Delete> <Delete>&#x07;</Delete> <Delete>&#x0A;</Delete> <Delete>&#x0B;</Delete> <Delete>&#x0C;</Delete> <Delete>&#x0E;</Delete> B Hexadecimal Information <Delete>&#x0F;</Delete> <Delete>&#x11;</Delete> <Delete>&#x12;</Delete> <Delete>&#x13;</Delete> <Delete>&#x14;</Delete> <Delete>&#x15;</Delete> <Delete>&#x16;</Delete> <Delete>&#x17;</Delete> <Delete>&#x18;</Delete> <Delete>&#x1A;</Delete> <Delete>&#x1B;</Delete> <Delete>&#x1C;</Delete> <Delete>&#x1F;</Delete> <Replace>"&lt;&#x0D;","&#x1B;&#x1B;"</Replace> <Replace>"&#x0D;^","&#x1B;^"</Replace> <Replace>"&#x0D;&#x09;","&#x1B;&#x1B;"</Replace> <Replace>"&#x08;","&#x1B;"</Replace> <Replace>"&#x0D; ","&#x1B;&#x1B; "</Replace> <Delete>&#x09;</Delete> <Move>b</Move> <FindForward>&#x1B;</FindForward> <IfFound /> <Move>+</Move> <FindForward>&#x1B;</FindForward> <IfFound /> <Move>+</Move> <FindForward>&#x1B;</FindForward> <IfFound /> <Move>+</Move> <FindForward>&#x1B;</FindForward> <IfFound /> <Move>+</Move> <FindForward>&#x1B;</FindForward> <IfFound /> <Replace>"&#x0D;"," "</Replace> <EndIf /> <EndIf /> <EndIf /> <EndIf /> <EndIf /> <Replace>"&#x0D;","&#x1B;"</Replace> <Replace>" &#x1B;","&#x1B;"</Replace> <Replace>" &#x1B;","&#x1B;"</Replace> <Replace>" &#x1B;","&#x1B;"</Replace> <Replace>"^&#x1B;","&#x1B;"</Replace> <Replace>"&#x1B;&#x1B;&#x1B;&#x1B;&#x1B;","&#x1B;&#x1B;"</Replace> <Replace>"&#x1B;&#x1B;&#x1B;&#x1B;","&#x1B;&#x1B;"</Replace> Sample Parsing Language for ANPA <Replace>"&#x1B;&#x1B;&#x1B;","&#x1B;&#x1B;"</Replace> <Replace>"&#x1B;","&#x0D;&#x0A;"</Replace> <Replace>" ["," 1/8"</Replace> <Replace>" \"," 1/4"</Replace> <Replace>" ]"," 3/8"</Replace> <Replace>" {"," 1/2"</Replace> <Replace>" |"," 5/8"</Replace> <Replace>" }"," 3/4"</Replace> <Replace>" ~"," 7/8"</Replace> <Replace>"["," 1/8"</Replace> <Replace>"\"," 1/4"</Replace> <Replace>"]"," 3/8"</Replace> <Replace>"{"," 1/2"</Replace> <Replace>"|"," 5/8"</Replace> <Replace>"}"," 3/4"</Replace> <Replace>"~"," 7/8"</Replace> <Replace>"_","--"</Replace> <Replace>"#","."</Replace> <Replace>"*",".."</Replace> <Replace>"&#x10;"," "</Replace> <Replace>"&#x19;"," "</Replace> <Replace>"&#x1D;"," "</Replace> <Replace>"&#x1E;"," "</Replace> <Replace>"&amp;","&amp;amp;"</Replace> <Replace>"&lt;","&amp;lt;"</Replace> <Replace>"&gt;","&amp;gt;"</Replace> <Replace>"&amp;lt;","&lt;/p&gt;&lt;p&gt;"</Replace> <Replace>"&amp;gt;","&lt;/p&gt;&lt;p&gt;"</Replace> <Replace>"=","&lt;/p&gt;&lt;p&gt;"</Replace> <Replace>.''.,.".</Replace> <Replace>.``.,.".</Replace> <Replace>"&#x0D;&#x0A;","&lt;/p&gt;&#x0D;&#x0A;&lt;p&gt;"</Replace> <Delete>&lt;p&gt;&lt;/p&gt;</Delete> <Replace>"^","&lt;b&gt;"</Replace> <Delete>&#x03;</Delete> <Move>e</Move> <EndMark /> <FindReverse>&#x0A;</FindReverse> <Move>+</Move> <BeginMark /> <DeleteMarked /> <Move>b</Move> <BeginMark /> <Move>+++</Move> <EndMark /> <If>&lt;/p&gt;</If> <DeleteMarked /> B Hexadecimal Information <EndIf /> <Copy>&lt;body&gt;&#x0D;&#x0A;</Copy> <Move>b</Move> <BeginMark /> <EndMark /> <If>&#x0D;</If> <Move>+</Move> <EndMark /> <DeleteMarked /> <Move>b</Move> <BeginMark /> <EndMark /> <If>&#x0D;</If> <Move>+</Move> <EndMark /> <DeleteMarked /> <Move>e</Move> <EndMark /> <Move>--</Move> <BeginMark /> <If>&lt;p&gt;</If> <DeleteMarked /> <EndIf /> <Move>b</Move> <EndIf /> <EndIf /> <BeginMark /> <Move>e</Move> <EndMark /> <CopyMarked /> <Copy>&#x0D;&#x0A;&lt;/body&gt;&#x0D;&#x0A;</Copy> <Copy>&lt;/nsml&gt;&#x0D;&#x0A;</Copy> <Replace>"&#x1E;"," "</Replace> </WireProcess> C Custom Code Page Support This appendix contains the following main sections:
• Custom Code Page Overview • Custom Single Byte • Custom Multi Byte • Custom Shifted Custom Code Page Overview The term code page is sometimes known by other names, such as codepage, encoding, charset, character set, coded character set, (CCS), graphic character set, character map and so forth. Some of these have more specific names, such as DBCS (double-byte character set), MBCS (multi-byte character set). Some encodings are the result of transformations, and are known as transformation formats as in the case of Unicode UTF-8, UTF-16, UTF-32.
The Input Translations menu lists code pages to use with the Data Receiver. It includes code page choices of custom single byte, custom multi byte, and custom shifted. When selected, these options must be used with table containing byte-to-byte conversions for all of the characters received by the Data Receiver instance using the specific custom code page. This table is contained in a text file.
> **Note:** Both the Custom Multi Byte and Custom Shifted custom code pages may also be used with
single byte data input streams.
In all cases for Custom Multi Byte and Custom Shifted translation tables the input bytes are always translated to a 4 byte UTF-16 Unicode (big-endian byte order) value for the translated to character. These values are typically the translated byte values for the Unicode representation for the characters that make up the Windows code page that the newsroom computer system client uses. For Custom Single Byte the translated to values do not require leading zeros.
Custom Single Byte The custom single byte code page translation table has a different structure than that of the custom multi byte or custom shifted code page tables. The custom single byte code page only allows translations for 256 characters, the translation table only contains the Unicode translated to characters and all 256 input values are assumed.
The table must also contain translations for all 256 possible characters in a single line separated by , (commas) with no linefeeds or carriage returns. No comments are allowed.
Translation values for all 256 possible single byte characters must be provided in the Custom Multi Byte translation table even if the input data stream only contains a subset of the entire list. If the translation table does not contain values for all 256 characters, the instance will not start and the following error message appears in the Windows Application Event log:
Error starting wire: XML configuration file parsing error: Main section:
Input section:
Translations section: Illegal Custom Code Page: Invalid Custom Code Page: 256 numbers required (255) Values in the custom single byte translation table are the Unicode translated to values that do not need all four bytes, if the leading bytes of the Unicode character are zeros.
> **Note:** The following examples omitted most of the characters for clarity.
The following are some example lines from a custom single byte code page translation table:
0000,0001,0002,0003,0004,<next 251 characters omitted>,00FF 00,01,02,03,04,<next 251 characters omitted>,FF 0,1,2,3,4,<next 251 characters omitted>,FF 0,01,673,0692,6544 <next 251 characters omitted>,6051 Custom Multi Byte In the custom multi byte code page translation table format the input bytes and output bytes must be separated by a | (pipe) symbol and each pair of bytes making up the Unicode output must be separated by a , (comma). Two forward slashes // denote the beginning of comment text. All four digits of the Unicode output translated to characters must be included even if they are zeros. The number of translation lines in this table only needs to cover the characters expected to appear in the input data stream.
C Custom Code Page Support The following are some example lines from a custom multi byte code page translation table:
table:
// Denotes a comment Line // Sample Multi Byte Custom Code Page // Single Byte Input Example 30|00,30 // DIGIT ZERO 31|00,31 // DIGIT ONE // Multi Byte Input Example 00,30|00,30 // DIGIT ZERO 00,31|00,31 // DIGIT ONE // END Custom Shifted In the custom shifted code page translation table format the translation table is similar to that of the custom multi byte code page with a few additions to accommodate the shift characters.These additions are the shift character setting and the shift separator, represented by three *** (asterisks). Only two shift characters are supported.
Like the custom multi byte code page the input bytes and output bytes must be separated by a | (pipe) and each pair of bytes must be separated by a , (comma). Two forward slashes // denote the beginning of comment text. All four digits of the Unicode output translated to characters must be included even if they are zeros. The number of translation lines in this table only needs to cover the characters expected to appear in the input data stream.
Custom Shifted The following are some example lines from a custom shifted code page translation table:
// Baghdad 70 to Windows code page 1256 Unicode equivalents Shift Characters:1F,1B // Specifies shift characters to be used // 1F Shifts 03|06,35 // ARABIC LETTER SAD 19|06,27 // ARABIC LETTER ALEF 1E|06,27,06,44 // Double Output Characters // END 1F Shifts *** // Shift Separator // 1B Shifts 03|06,35 // ARABIC LETTER SAD 19|06,21 // ARABIC LETTER HAMZA 00,03|06,36 // Double Input Characters // END 1B Shifts C Custom Code Page Support Avid Technical Support (USA) Product Information 75 Network Drive Visit the Online Support Center at For company and product information, Burlington, MA 01803-2756 USA www.avid.com/support visit us on the web at www.avid.com