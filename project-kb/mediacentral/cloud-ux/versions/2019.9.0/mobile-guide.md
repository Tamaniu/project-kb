---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2019.9.0"
release-date: 01/09/2019
doc-type: mobile-guide
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

MediaCentral | Cloud UX App for iOS User’s Guide Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This product may be protected by one or more U.S. and non-U.S patents. Details are available at www.avid.com/patents.
This guide is protected by copyright. This guide is for your personal use and may not be reproduced or distributed, in whole or in part, without permission of Avid. Reasonable care has been taken in preparing this guide; however, it may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc. disclaims liability for all losses incurred through the use of this document.
Product specifications are subject to change without notice.
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
© 2010 Nexidia Inc. All rights reserved, worldwide. Nexidia and the Nexidia logo are trademarks of Nexidia Inc. All other trademarks are the property of their respective owners. All Nexidia materials regardless of form, including without limitation, software applications, documentation and any other information relating to Nexidia Inc., and its products and services are the exclusive property of Nexidia Inc.
or its licensors. The Nexidia products and services described in these materials may be covered by Nexidia's United States patents:
7,231,351; 7,263,484; 7,313,521; 7,324,939; 7,406,415, 7,475,065; 7,487,086 and/or other patents pending and may be manufactured under license from the Georgia Tech Research Corporation USA.
The following disclaimer is required by Paradigm Matrix:
Portions of this software licensed from Paradigm Matrix.
The following disclaimer is required by Ray Sauers Associates, Inc.:
“Install-It” is licensed from Ray Sauers Associates, Inc. End-User is prohibited from taking any action to derive a source code equivalent of “Install-It,” including by reverse assembly or reverse compilation, Ray Sauers Associates, Inc. shall in no event be liable for any damages resulting from reseller’s failure to perform reseller’s obligation; or any damages arising from use or operation of reseller’s products or the software; or any other damages, including but not limited to, incidental, direct, indirect, special or consequential Damages including lost profits, or damages resulting from loss of use or inability to use reseller’s products or the software for any reason including copyright or patent infringement, or lost data, even if Ray Sauers Associates has been advised, knew or should have known of the possibility of such damages.
The following disclaimer is required by Videomedia, Inc.:
“Videomedia, Inc. makes no warranties whatsoever, either express or implied, regarding this product, including warranties with respect to its merchantability or its fitness for any particular purpose.” “This software contains V-LAN ver. 3.0 Command Protocols which communicate with V-LAN ver. 3.0 products developed by Videomedia, Inc. and V-LAN ver. 3.0 compatible products developed by third parties under license from Videomedia, Inc. Use of this software will allow “frame accurate” editing control of applicable videotape recorder decks, videodisc recorders/players and the like.” The following disclaimer is required by Altura Software, Inc. for the use of its Mac2Win software and Sample Source Code:
©1993–1998 Altura Software, Inc.
The following disclaimer is required by 3Prong.com Inc.:
Certain waveform and vector monitoring capabilities are provided under a license from 3Prong.com Inc.
The following disclaimer is required by Interplay Entertainment Corp.:
The “Interplay” name is used with the permission of Interplay Entertainment Corp., which bears no responsibility for Avid products.
This product includes portions of the Alloy Look & Feel software from Incors GmbH.
This product includes software developed by the Apache Software Foundation (http://www.apache.org/).
© DevelopMentor This product may include the JCifs library, for which the following notice applies:
JCifs © Copyright 2004, The JCIFS Project, is licensed under LGPL (http://jcifs.samba.org/). See the LGPL.txt file in the Third Party Software directory on the installation CD.
Avid Interplay contains components licensed from LavanTech. These components may only be used as part of and in connection with Avid Interplay.
Portions © Copyright 2003-2007 of MOG Solutions.
This product includes FFmpeg, which is covered by the GNU Lesser General Public License.
This product includes software that is based in part of the work of the FreeType Team.
This software is based in part on the work of the Independent JPEG Group.
This product includes libjpeg-turbo, which is covered by the wxWindows Library License, Version 3.1.
Portions copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002 by Cold Spring Harbor Laboratory. Funded under Grant P41-RR02188 by the National Institutes of Health.
Portions copyright 1996, 1997, 1998, 1999, 2000, 2001, 2002 by Boutell.Com, Inc.
Portions relating to GD2 format copyright 1999, 2000, 2001, 2002 Philip Warner.
Portions relating to PNG copyright 1999, 2000, 2001, 2002 Greg Roelofs.
Portions relating to gdttf.c copyright 1999, 2000, 2001, 2002 John Ellson (ellson@lucent.com).
Portions relating to gdft.c copyright 2001, 2002 John Ellson (ellson@lucent.com).
Portions relating to JPEG and to color quantization copyright 2000, 2001, 2002, Doug Becker and copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, Thomas G. Lane. This software is based in part on the work of the Independent JPEG Group. See the file README-JPEG.TXT for more information. Portions relating to WBMP copyright 2000, 2001, 2002 Maurice Szmurlo and Johan Van den Brande.
Permission has been granted to copy, distribute and modify gd in any context without fee, including a commercial application, provided that this notice is present in user-accessible supporting documentation.
This does not affect your ownership of the derived work itself, and the intent is to assure proper credit for the authors of gd, not to interfere with your productive use of gd. If you have questions, ask. "Derived works" includes all programs that utilize the library. Credit must be given in user-accessible documentation.
This software is provided "AS IS." The copyright holders disclaim all warranties, either express or implied, including but not limited to implied warranties of merchantability and fitness for a particular purpose, with respect to this code and accompanying documentation.
Although their code does not appear in gd, the authors wish to thank David Koblas, David Rowley, and Hutchison Avenue Software Corporation for their prior contributions.
This product includes software developed by the OpenSSL Project for use in the OpenSSL Toolkit (http://www.openssl.org/) MediaCentral may use OpenLDAP. Copyright 1999-2003 The OpenLDAP Foundation, Redwood City, California, USA. All Rights Reserved. OpenLDAP is a registered trademark of the OpenLDAP Foundation.
Media | Distribute enables its users to access certain YouTube functionality, as a result of Avid's licensed use of YouTube's API. The charges levied by Avid for use of Media | Distribute are imposed by Avid, not YouTube. YouTube does not charge users for accessing YouTube site functionality through the YouTube APIs.
Media | Distribute uses the bitly API, but is neither developed nor endorsed by bitly.
Android is a trademark of Google Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:
http://www.avid.com/US/about-avid/legal-notices/trademarks.
Footage Ice Festival, London Zoo, Feng Shui - Courtesy of Reuters.
Avid MediaCentral | Collaborate Mobile App (cid:129) User’s Guide (cid:129) Created 4/9/21 (cid:129) This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.
Contents Buttons of the User Interface . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10 Customizing the iOS Mobile App Settings . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 Accessing the Newsroom Management Database. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12 Viewing Video Associated with a Script . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 16 Working with Stories. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 17 Ways of Saving Stories . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19 Formatting a Script. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 20 Working with Production Cues. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 20 Adding Machine Control Instructions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 21 Working with Links in Stories. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 22 Approving Stories. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 23 Working with Favorites . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24 Working Offline with Cached Queues and Stories . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 26 Caching Queues and Stories. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 26 Viewing Queues and Stories in Offline Mode. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 27 Working with Production Management. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 28 Viewing Media Assets . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 28 Quick Forward and Reverse . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 30 Regenerating the Proxy Media. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 31 Using Markers. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 31 Creating and Editing Markers. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 32 Using Presenter Mode (Tablet only). . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 33 Using This Guide This document provides instructions for installing, configuring, and using the MediaCentral | Cloud UX app for iOS.
The following documents might be referenced in this guide:
• Avid MediaCentral | Cloud UX ReadMe — Read prior to completing any MCUX installation.
(cid:129) Avid MediaCentral | Cloud UX User’s Guide — Refer to this guide for detailed information on the apps and features of the MediaCentral Cloud UX user interface.
Important: See the following link on the Avid Knowledge Base for the latest updates to this guide and all related documentation:
http://avid.force.com/pkb/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation
> **Note:** For a list products qualified for use with Avid MediaCentral Cloud UX, see the Software
Compatibility Matrix on the Avid Knowledge Base.
Revision History Date Revised Changes Made April 15, 2021 Initial release.
Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action A note provides important related information, reminders, recommendations,
> **Note:** and strong suggestions.
A warning describes an action that could cause you physical harm. Follow the w guidelines in this document or on the unit itself when handling electrical equipment.
c A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
This symbol indicates a single-step procedure. Multiple arrows in a list indicate that you perform one of the actions listed.
(Android only), (iOS only) This text indicates that the information applies only to the specified operating system, either Android or iOS.
If You Need Help Symbol or Convention Meaning or Action Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables.
Variables are often enclosed in angled brackets: < >.
Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse action Press and hold the first key while you press the last key or perform the mouse action. For example, Command+Option+C or Ctrl+drag.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is
especially important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view these online versions, select ReadMe from the Help menu, or visit the Knowledge Base at http://avid.force.com/pkb/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation.
3. Check the documentation that came with your Avid application or your hardware for
maintenance or hardware-related issues.
4. Visit the online Avid Knowledge Base. Online services are available 24 hours per day, 7 days per
week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient.
Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit https://www.avid.com/learn-and-support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 MediaCentral | Cloud UX for iOS MediaCentral Cloud UX for iOS provides a native user interface designed to run on your iPad or iPhone, enabling direct, secure access to your site’s MediaCentral Newsroom Management and MediaCentral Production Management modules.
The following main topics describe basic user information about the device and the mobile app:
(cid:129) Installing MediaCentral Cloud UX for iOS (cid:129) Starting MediaCentral Cloud UX for iOS (cid:129) Connection Basics (cid:129) Working with the Launch and Directory Panels (cid:129) Buttons of the User Interface (cid:129) Customizing the iOS Mobile App Settings (cid:129) Accessing the Newsroom Management Database (cid:129) Viewing Video Associated with a Script (cid:129) Working with Stories (cid:129) Working with Favorites (cid:129) Working Offline with Cached Queues and Stories (cid:129) Working with Production Management (cid:129) Using Markers (cid:129) Using Presenter Mode (Tablet only) Installing MediaCentral Cloud UX for iOS The process to install the MediaCentral Cloud UX app on your device is similar to the installation process of most other mobile apps. Simply access the Apple iTunes Store, search for the app, and tap install.
For more detailed information, see the “Avid MediaCentral | Cloud UX Mobile App” chapter of the Avid MediaCentral | Cloud UX Installation Guide.
Starting MediaCentral Cloud UX for iOS After you install MediaCentral Cloud UX, an icon representing the app displays on your device’s home screen.
If your iOS device supports Touch ID and you have the feature configured, you can use Touch ID to sign in to MediaCentral Cloud UX. To use Touch ID, you must sign in to MediaCentral Cloud UX once using the server and user credentials for your configuration. Subsequent logins then can use the Touch ID.
Starting MediaCentral Cloud UX for iOS
> **Note:** If your iOS device fails to read your Touch ID after five attempts, you must type your user name and
password to sign in to MediaCentral Cloud UX.
The MediaCentral Cloud UX app also provides you with the ability to work offline. Offline mode allows you to view queues and stories listed in the Favorites list that you have cached locally on your device. If you select Work Offline in the sign in screen, the MediaCentral Cloud UX app uses the credentials you used the last time you signed in. For more information, see “Working Offline with Cached Queues and Stories” on page 26.
If you lose your connection to MediaCentral after you have signed in, a dialog box asks you if you want to reconnect to the server, to sign out of MediaCentral Cloud UX, or to work offline. If you choose to work offline and your connection to MediaCentral is restored, you can sign in by tapping the Actions button and selecting Sign In.
When you sign in to MediaCentral Cloud UX, you might be required to accept the Avid Software License Agreement. The software licensing screen appears when you sign in to MediaCentral Cloud UX for the first time, or after you update the app to a new version.
To start the MediaCentral Cloud UX app:
1. Tap the MediaCentral icon to start the app.
The Sign In screen appears.
2. Type the MediaCentral server name.
You must enter the fully qualified domain name (FQDN) of your server in this field. If you do not know the FQDN of your server, see your system administrator for assistance.
3. Type your MediaCentral User Name and Password.
If you do not know your user name or password, check with your system administrator.
4. Do one of the following:
- Tap the Sign In button.
If this is your first time signing in to the app, you are presented with the Avid Software License Agreement screen. Read the agreement and tap Accept to continue.
> **Note:** If your MediaCentral Cloud UX credentials are incorrect or missing, you might receive the following
message: “Authentication Failed: The user name or password you entered is incorrect.” When you tap OK, the sign-in screen appears and allows you to enter valid credentials.
Starting MediaCentral Cloud UX for iOS
- Tap the Work Offline button.
MediaCentral Cloud UX uses the credentials you used the last time you signed in, and it displays any cached queues and stories in the Favorites list.
To start the MediaCentral Cloud UX app using Touch ID:
1. Select the MediaCentral icon to start the app.
The sign-in screen appears.
2. Press the Home button using the finger you registered with Touch ID.
> **Note:** To use this functionality, you must have Touch ID configured on your iOS device, and you must have
signed in to your MediaCentral system by typing your MediaCentral server name and user credentials into the Sign In screen at least once.
> **Note:** If your MediaCentral Cloud UX credentials are incorrect or missing, you might receive the following
message: “Authentication Failed: The user name or password you entered is incorrect.” When you tap OK, the sign-in screen appears and allows you to enter valid credentials.
To view the help system:
1. Tap the Profile button.
2. Select Help.
To sign out:
1. Tap the Profile button.
2. Select Sign Out.
To exit the app, do the following:
- Tap the Home button on your iOS device.
Connection Basics Connection Basics You can use the MediaCentral Cloud UX app to perform many of the same functions that are available when accessing MediaCentral through a web browser, such as:
(cid:129) Create and edit stories in a Newsroom Management rundown (cid:129) Play Production Management media assets (cid:129) View and edit markers on media assets (cid:129) (iPad only) Use Presenter Mode to view a script associated with a story MediaCentral Cloud UX for iOS can connect to MediaCentral through several connection options, including Wi-Fi and carrier-specific cellular services (such as 4G). If you use an unsecured Wi-Fi connection — for example, a public or mobile network — you must connect to MediaCentral through a virtual private network (VPN) connection.
About iOS Devices iPhones and iPads have very few exterior buttons. You navigate content with touch gestures — for example, tapping an icon to start an app. Some gestures perform standard functions, such as displaying different menu icons, and some perform functions specific to an app.
Button Description The Home button wakes the device when it is sleeping and exits apps, returning you to the home screen.
An application installed on a mobile device is often referred to as an “app”. This chapter uses the term app to refer to the MediaCentral Cloud UX application.
> **Note:** It is important to note that each open app on your mobile device consumes memory and battery
power. To optimize the performance of your device, always close apps when you finish with them.
Gestures for MediaCentral Cloud UX for iOS Apps for iOS mobile devices let users accomplish certain tasks utilizing various gestures like fingertip swipes or taps. However, the actions resulting from these gestures might differ from one app to another. The following table describes what certain gestures do depending on where you use the gesture within the MediaCentral Cloud UX app.
Location Gesture Description Launch panel Tap the name of a server Opens the Directory panel, which allows you to navigate to queues and open rundowns and stories Launch panel Tap the Back button Navigates to the location named on the Back button Launch panel Touch and hold the Back Navigates back to the Launch panel regardless of your button position in the file structure Launch panel Tap stars (while in edit mode) Selects or deselects items as Favorites Working with the Launch and Directory Panels Location Gesture Description Launch panel Tap name of a Favorite item Lets you modify the item’s name as it appears in the (while in edit mode) Favorites list Story: Body Swipe left Displays the Production Cues tab Story: Body Swipe right Displays the Launch panel. You can swipe left to hide the Launch panel Story: Production Swipe left Displays the Video tab Cues Story: Production Swipe right Displays the Body tab Cues Story: Video Swipe right Displays the Production Cues tab Story: Script Editor One Finger Swipe to the Navigates backward or forward to previous or next Right or Left story in a rundown Story: Script Editor Tap and hold Opens a menu allowing you to modify text formats and perform additional actions Story: Script Editor Tap a production cue or Auto-scrolls the story text so that the associated (Cue List sub-section) machine control instruction production cue marker comes into view Story: Script Editor Tap a production cue marker Auto-scrolls the cue list so that the production cue or (Story sub-section) machine control instruction associated with that marker comes into view Media Viewer Touch and drag in the Moves to new position in viewer’s video playback timeline timeline Media Viewer Tap in the timeline Moves the Playhead to that position on the timeline Media Viewer Double-tap on the right side Moves the Playhead forward by 10 seconds and of the viewer displays a visual overlay of the action Media Viewer Double-tap on the left side of Moves the Playhead back by 10 seconds and displays a the viewer visual overlay of the action Presenter Mode Swipe left or tap on right Navigates to next page (iPad only) edge of screen Presenter Mode Swipe right or tap on left Navigates to previous page (iPad only) edge of screen Presenter Mode Pinch in on full screen Exits full screen presenter mode (iPad only)
> **Note:** The MediaCentral Cloud UX app can also be used with a Bluetooth keyboard.
Working with the Launch and Directory Panels After you sign in to the app, you are presented with the Launch panel (located along the left side of the screen when displayed on an iPad). From here, you can access any Newsroom Management or Production Management modules that might be integrated with your MediaCentral Cloud UX system.
Working with the Launch and Directory Panels In the following illustration, the image on the left shows the Launch panel as seen on an iPhone when you open the MediaCentral Cloud UX Mobile app for the first time. This panel displays the MediaCentral modules that are connected to your system.
After you select a database in the Launch panel, the Directory panel is displayed (as shown in the image on the right). You can use the Directory panel to navigate through your Newsroom Management or Production Management database structure and open assets.
If included in a multi-site environment, the MediaCentral Cloud UX mobile app uses different icons for remote modules than for local modules. Icons for remote modules and media include a downward-pointing arrow.
You can return to the Launch panel by swiping your finger across the screen to the right. When working on an iPad in Portrait mode, you can swipe left to hide the Launch panel at any time to increase the screen real estate for viewing assets.
To open a directory:
- Tap the name of the MediaCentral module in the Launch panel, and then tap folders in the panel
to navigate to a subdirectory.
> **Note:** As you navigate the system’s directory structure, the app displays your path or location within the
database at the top of the screen.
To back out of a directory:
- Tap the Back button.
> **Note:** The Back button might not display the word “Back” on it, as the name on the button changes as a
user navigates further into the directory.
Buttons of the User Interface Buttons of the User Interface The MediaCentral app provides buttons in the user interface that allow you to access the features of the app. The following table describes the buttons and their uses.
Button Description Tap the Profile button to display a list of options:
(cid:129) Send Log: Allows you to send log files to Avid to help troubleshoot problems. The Send Log option is active only if you enable logging in the app’s settings. For more information, see “Customizing the iOS Mobile App Settings” on page 11.
(cid:129) Help: Opens the online help.
(cid:129) Theme: Allows you to switch between Light (default) and Dark themes for the user interface.
(cid:129) Sign Out: Signs you out of your MediaCentral system and ends your session.
> **Note:** The Profile button is available only when the Launch panel is displayed.
Tap the Back button to navigate up one level in the project hierarchy in the Directory panel. Tap and hold the Back button to return to the Launch panel.
> **Note:** The Back button is not available on the Launch panel.
Tap the Favorites button to create or delete favorites.
You can tap the Refresh button to update the queues and stories displayed in the Newsroom Management database or the media assets displayed in the Production Management database by tapping the Refresh button. This allows you to view any changes made to any Newsroom Management stories.
The Approve Story button lets a user approve stories within that queue. The user must have write access to the queue.
Customizing the iOS Mobile App Settings Button Description The Edit Story button enables editing of an opened story by displaying the Edit toolbar and a virtual keyboard.
The Add Story button opens a new story in the queue, and allows you to name the slug. If you use an iPad, the new story opens in Story view.
The Change Text Size button allows you to increase or decrease the size of the text used for your stories.
(iPad only) The Presenter Mode button opens a show's rundown of stories in full screen mode.
This button is enabled only for queues set to automatically refresh.
The Actions button opens a menu of options that include Reload and Edit Slug.
Customizing the iOS Mobile App Settings The MediaCentral app provides settings that allow you to alter the look and functionality of the app.
Refer to the following process for more information on altering the app’s settings.
To modify the MediaCentral Cloud UX app settings:
1. On the Home screen of your iOS device, tap the Settings icon.
2. Select MediaCentral Cloud UX in the list of apps.
The following table provides information about general settings.
Setting Description Version For display purposes only, this value shows the currently installed version of the app.
Logging If set to On, MediaCentral Cloud UX keeps logs on session activities, which you can use to troubleshoot issues.
If you tap the Actions button, a Send Log option appears that lets you e-mail the logs directly to Avid. If the log file is more than 15 MB, you cannot send it directly. Use the iTunes File Sharing feature as described later in this topic.
If set to Off (default), logging and the Send Log option are disabled.
Logging Level This setting determines how much information is logged if you enable logging. Options include: Verbose, Info, Warn, and Error.
Request Timeout Options are intervals of 10, 20, or 30 seconds, 1 minute, or 2 minutes. The default selection for this option is 30 seconds.
Keep me signed in Set to On if you want MediaCentral Cloud UX to keep you signed in after you first sign in.
Autosave Stories If set to On, MediaCentral Cloud UX automatically saves a story if you navigate away from the modified story to other assets in the system. If set to Off, MediaCentral Cloud UX prompts you to save your modifications. The default setting is On.
Accessing the Newsroom Management Database The following table provides information about the settings for presenter mode.
Presenter Mode Settings (iPad only) Description Font Size Options for presenter mode are 18, 22, 26, 32, and 38.
Normal Text Normal text is the default text format of the story. Options are Black on White or White on Black.
Presenter Text Presenter text is most often used for special instructions to presenters in scripts. Options are White on Black, Black on White, or Red on White.
Closed Captioning Text Closed captioning is text sent to a closed caption encoder if your station uses such a device to broadcast text for the hearing-impaired. Options are White on Black, Black on White, or Green on White.
Skip Blank Stories If set to On, presenter mode skips any stories that have no text or production cues.
Accessing the Newsroom Management Database The Newsroom Management database is the backbone of your newsroom system. You save the data created in your newsroom — stories, scripts, and rundowns — in the database on the Newsroom Management server. Queues contain stories, and directories (also known as folders) store the queues.
When viewed with the app, available Newsroom Management modules appear in the Launch panel.
If you tap on the name of a server, the app displays a list of directories and queues. If any queues are marked to automatically refresh, they are displayed without pagination in the Directory panel. You can scroll continuously to view all stories in these queues.
> **Note:** If the queue contains more than 1000 stories, it might take some time for the app to receive and
display them. You might need to increase the Request Timeout value in the app’s settings. For more information, see “Customizing the iOS Mobile App Settings” on page 11.
The app uses different icons to distinguish between directories, queues, and stories.
Icon Description Directories hold queues or other subdirectories. Unlike queues, directories do not directly contain stories. For example, the Wires folder contains queues with incoming wire stories.
Stories — for example, wire stories — contain text, such as contact information or a description of a news event. Any story can become a script for a show. Scripts contain additional data beyond text, including production cues, machine control instructions, presenter instructions, and associated video sequences. In addition to the standard Story icon, you might see the following:
Story Break (lighter icon than standard Story icon) Story Float Accessing the Newsroom Management Database Icon Description Story Break / Float Approved stories have been endorsed for broadcast. Only individuals authorized by the Newsroom Management system administrator can approve a story.
Queues let you organize stories in detailed categories. A show’s rundown is one example of a queue. In addition to the standard Queue icon, you might see the following:
The Search Queue shows results of a search conducted with criteria predefined for the project in Newsroom Management. Each project can have only one search queue.
If a queue is locked, a lock appears over the queue icon.
The following illustration shows an example of the Newsroom Management directory structure on an iPhone (left) and an iPad (right) with queues and folders displayed. Any directory, queue, or story associated with a star have been assigned as a Favorite.
> **Note:** While viewing the top level of an Newsroom Management directory in the Directory panel, the Back
button displays the word Launch, which means you can tap it to return to the previous view of the Launch panel. However, the button’s name changes the further you navigate down the system directory. You can return to the Launch panel at any time by tapping and holding the Back button.
The app allows you to access directories, queues, and stories. Directories and queues open within the Directory panel. When you tap a story on an iPad, it is displayed to the right of the Directory panel in the Script Editor. When you tap a story on an iPhone, it displays in Story view in the Body tab.
Accessing the Newsroom Management Database Queues marked with the Refresh attribute automatically redisplay their content whenever changes are made to the queue. For more information on setting the Refresh attribute, see your MediaCentral Newsroom Management documentation.
To open a directory or queue:
1. Tap the Newsroom Management server in the Launch panel, and then tap items in the Directory
panel to navigate to the directory.
2. Tap a folder or queue to open it.
The following illustration shows the WIRES directory opened to view numerous directories and queues containing incoming wire stories.
> **Note:** As you navigate the system’s directory structure, the app displays your path or location within the
database at the top of the screen. In this example, WIRES is the current location.
To back out of a directory or queue:
- Tap the Back button.
> **Note:** The Back button does not display the word “Back” on it, but rather the name on the button changes
as a user navigates further into the directory.
To open an existing story:
1. Tap in the Directory panel to navigate to the story in a queue.
> **Note:** A story icon with a check mark indicates that the story has been “approved.” You can approve stories
from an Newsroom Management workstation or from MediaCentral Cloud UX.
2. Tap the story to open it.
In the following illustration, a mobile phone interface appears on the left and the tablet interface appears on the right.
Accessing the Newsroom Management Database Notice that the larger screen size of the iPad allows for the Directory panel, Body, Production Cues, and Media Viewer to appear on screen all at the same time. The iPhone interface relies on multiple tabs to display the same information. In this example, the Body tab shows a story containing production cue markers which are identified numerically.
In portrait view on an iPad, the Directory panel is hidden by default. You can swipe right to display or swipe left to hide the Directory panel in portrait view.
3. While viewing the story on an iPhone, tap the Production Cues tab or swipe left to view the Cue
List.
Viewing Video Associated with a Script The numerical production cue markers within the story align with production cues and machine control instructions displayed in the Cue List. Black text indicates production cues. Blue text indicates machine control instructions. Red text in the body of the story indicates presenter instructions.
To reload a story:
1. Tap the Actions button.
2. Tap Reload.
Viewing Video Associated with a Script When a sequence is associated with a story, you can preview the sequence in the app’s Media Viewer.
The iPad and iPhone operate somewhat differently when oriented in landscape or portrait modes:
(cid:129) iPad In landscape mode, a small Media Viewer appears above the Cue List subsection of the Script Editor, but you can expand the viewer to full screen. In portrait mode, you must tap the Open Sequence button to open the viewer full screen and preview sequences.
The following illustration shows an iPhone (Video tab) on the left and the iPad view on the right.
(cid:129) iPhone When you associate video with a script, you use the Open Sequence button to open the viewer full screen and preview sequences.
You can view video sequences created in the following way:
(cid:129) You created and modified the sequence in MediaCentral UX or MediaCentral Cloud UX.
(cid:129) You created the sequence in MediaCentral UX or MediaCentral Cloud UX and modified it in Avid Media Composer. In this case, you might not see some effects in the Media Viewer.
> **Note:** If your MediaCentral Cloud UX system is licensed for a Newsroom Management-only configuration,
you cannot preview or play sequences or other media assets.
Working with Stories
> **Note:** You cannot view video sequences created directly in Avid Media Composer, and you cannot play back
shotlists created in Interplay Assist.
To view video sequences associated with a script:
1. Open a story that is associated with a sequence.
2. Do one of the following:
- On an iPad, tap the Play button in the viewer above the Cue List to play the sequence.
- On an iPhone, tap the Video tab and then tap the Play button in the viewer.
For more information on using the Media Viewer, see “Viewing Media Assets” on page 28.
3. (Optional) If you expand the viewer to full screen, the orientation adjusts to display the video in
landscape mode. You can tap the Minimize button to restore the original size and orientation of the user interface.
Working with Stories Using the app, you can create a new story or edit an existing one. You can also change the story’s title or slug.
The system obtains an edit lock when you edit a story, which prevents other users from altering a story while you work on it. The edit lock applies only to the story body when you edit the body, and it applies only to the story title when you edit the title. When you start a new story, the edit lock applies both to the story body and the story title. Saving and closing the story, or discarding your changes, releases the edit lock.
The MediaCentral Cloud UX app supports the standard editing features found in most text editing applications, including cut, copy, and paste.
You can use cut, copy, and paste to move text around within a single story or from one story to another. When cutting or copying text, the system stores the text in the clipboard. The clipboard stores only one block of text at a time, so whenever you cut or copy something new, the clipboard overwrites the previously stored text.
> **Note:** You can only copy and paste text within the MediaCentral Cloud UX app. You cannot copy text from
an external application and paste the text into the MediaCentral Cloud UX app.
To create a new story:
1. Use the Directory panel to navigate to the queue where you want to add the new story.
2. Tap the Edit Story button in the Directory panel.
3. Tap the Add Story button, located at the bottom of the Directory panel.
> **Note:** The Add Story button only appears in the Directory panel after you tap the Edit button.
The Edit Slug dialog box opens and a new blank story is added to the current queue.
4. Type the title of your story, and then tap OK.
The new story is loaded with edit mode already activated for the story. An edit lock prevents others from changing the story while you edit. The cursor moves to the blank title field.
When in edit mode (in the Script Editor), the app displays the Edit toolbar and a virtual keyboard.
Working with Stories
5. Enter text, production cues or machine control instructions to the story.
6. After you complete your modifications, tap the Save Story button to save the story. For alternate
methods of saving a story, see “Ways of Saving Stories” on page 19.
To cut, copy, or paste text within a story:
1. Tap and hold a position in the story where you want to edit the text.
The selection arrows and the Edit toolbar are displayed.
2. Tap and hold the selection arrows, and then drag them to highlight the text you want to edit or to
place them at the location in the text where you want to perform an edit. You can cut, copy, and paste any text in the story, including production cues and segment breaks.
3. Tap the appropriate button in the Edit toolbar.
To adjust the size of the text of your story:
1. Tap the Change Text Size button.
The following illustration shows the Change Text Size iPhone interface on the left and the iPad interface on the right.
2. Do one of the following to change the text size:
- Tap the smaller letter icon to reduce the text size.
- Tap the larger letter icon to increase the text size
You can tap the letter icons multiple times to reduce or increase text to the appropriate size.
3. Do one of the following to save your changes:
- (iPad) Tap anywhere on the screen to dismiss the Change Text Size controls.
- (iPhone) Tap Done.
Working with Stories To edit an existing story:
1. Use the Directory panel to navigate to an existing story in the queue and open it.
2. Tap the Edit Story button.
The story opens in edit mode. An edit lock prevents others from changing the story while you edit.
3. Tap in the story to begin editing the text.
The app enters edit mode and displays the Edit toolbar and a virtual keyboard.
4. After you complete your modifications, tap the Save Story button to save the story. For alternate
methods of saving a story, see “Ways of Saving Stories” on page 19.
To edit the title (slug) of a story:
1. Use the Directory panel to navigate to an existing story in the queue and open it.
2. Tap the Actions button.
3. Tap Edit Slug.
The Edit Slug dialog box opens, and the app displays a virtual keyboard
> **Note:** An edit lock on the story form prevents others from changing the story title while you edit.
4. Edit the story title, and then tap OK to save the change.
Ways of Saving Stories You can save newly created stories or change existing stories by tapping the Edit Story button after modifying a story while in edit mode. A message appears asking you to confirm whether to save the changes. You can choose to save the story or exit edit mode without saving your changes.
Your story also is saved when the following occurs:
(cid:129) You change to another app or send MediaCentral Cloud UX to the background by pressing the Home button.
(cid:129) Your device goes to sleep due to Auto-Lock timeout.
(cid:129) If you use a Smart Cover and close the cover, sending the device to sleep.
Working with Stories If you enable Autosave Stories in the MediaCentral Cloud UX app settings, you can save newly created stories or change existing stories in multiple ways:
(cid:129) The app automatically saves a modified story when you tap on a different story in the queue.
(cid:129) The app automatically saves a modified story when you sign out of the app.
(cid:129) (iPad-only) The app automatically saves a modified story when you tap the Presenter Mode button.
Formatting a Script When you write a story, text appears in the default text style. However, you can alter the look of the text, such as changing the default font to bold. When formatting a story as a script for a news broadcast, you often distinguish certain text by using various specialized styles of text, such as instructions for presenters or closed captioning.
You use presenter instructions commonly as brief, special instructions to news presenters (also known as news anchors). The text for presenter instructions appear red, in reverse video on the teleprompter. This text does not affect how the system calculates the read time.
You use closed captioning commonly for sound-bite transcription. The text for closed captioning appears green, and the system sends it to a closed caption encoder if your station uses such a device to broadcast scripts for the hearing-impaired. Closed captioning text does not appear in the teleprompter, nor does it affect how the system calculates the read time.
> **Note:** The system sends the default text style to both the teleprompter and to any closed caption encoder
used at the station.
The app includes a toolbar that provides buttons that let you modify the format of the text into bold text, italicized text, and underlined text, and lets you format specialized for broadcast scripts.
To format text, complete one or more of the of the following options:
- To bold text, tap and hold, and then select the B button.
- To italicize test, tap and hold, and then select the I button.
- To underline text, tap and hold, and then select the U button.
- To mark text as a normal text, tap and hold, and then select N for normal.
- To mark text to be presented in Closed Captioning, tap and hold, and then select CC for closed
captions.
- To mark text as a presenter instruction, tap and hold, and then select P for presenter.
> **Note:** You can choose the format before typing your text as well. Any new text you type appears in the
format you selected. To change the format of the text you type at any time, select another format.
Working with Production Cues When you format a story as a script for a news broadcast, you can add production cues to provide valuable information to technical staff as well as machine control commands for devices, such as character generators.
Working with Stories You add production cues to scripts from the Story area and edit them in the Cue List area of the Script Editor. When added to a script, each production cue has an associated number. The number appears as a production cue marker in the script, which corresponds to the insertion location of the production cue’s text box in the Cue List. You can select each marker and move it within or remove it from the story if necessary. If moved or deleted, the text associated with the marker moves or is deleted.
To insert a production cue into a script:
1. Position your cursor in the story where you want to insert the production cue marker.
2. Tap the Plus button.
The app adds a production cue marker with a number into the story at the cursor position. The marker corresponds to the production cue with the same number located in the Cue List
3. Edit the production cue in one of the following ways:
- On an iPad, tap in the Cue List.
- On an iPhone, swipe left or tap on the Production Cues tab at the bottom of the screen.
4. Enter the production cue information — for example, Take VO, On Camera, Take SOT, or Take
Live.
If you have the Autosave Stories setting enabled, the app automatically saves information in the newly inserted production cue when you navigate elsewhere within the app. If you have Autosave disabled, a message appears asking you to confirm whether to save the changes. You can choose to save the story or exit edit mode without saving your changes.
To move a production cue in a script:
- Select the production cue marker, and then cut it and paste it in another location within the script.
To delete a production cue from a script, do one of the following:
- Position cursor to the right of the production cue marker and press the Delete key.
- Select the production cue marker and tap the Delete key.
If you delete a production cue that sits between other cues, the cues that follow the deleted item are renumbered.
Adding Machine Control Instructions If your station integrates with a broadcast control system, such as MediaCentral Command, the production cues might include machine control instructions.
You should write your instructions in a format that begins with a command for a device — for example, CG for a character generator. After the command, the format specifies a particular item or template — such as “2line” for a template that contains two lines for fulfillment data. Additional information or comments follow on succeeding lines in the same production cue text box.
Working with Stories The following procedure uses the example of a machine control instruction for a 2-line character generator graphic. The first line calls up the correct template and the subsequent lines of text provide the fulfillment data that appears in the graphic.
To add machine control instructions for a CG event:
1. Add or open a production cue in the script.
2. Do one of the following:
- (iPad) With your cursor in the production cue area, tap the MC (machine control) button.
- (iPad) Type an asterisk (*), which automatically switches the text you type from Normal to
Machine Control format.
- (iPhone) Tap Production Cue at the bottom of the Script Editor.
Machine Control format appears as blue font. The following illustration shows the layout on an iPad.
3. Type your machine control command — for example, — and then tap Return.
*CG 2line
> **Note:** Typing an asterisk (*) automatically switches the text you type from Normal to Machine Control
format, which appears as blue font. The menu also has an MC option that you can select to format text as a machine control instruction within a production cue.
4. Type the first line of text that should appear on the 2-line CG graphic — for example, John
Smith — and then tap Return.
5. Type the second line of text for the 2-line CG graphic — for example, Pleasantville, USA.
Your CG machine control instruction appears in blue font.
Working with Links in Stories Newsroom Management stories can contain more than simple text. They might contain e-mail addresses or Web links. When Web links or e-mail addresses are included in stories, they become dynamic links. You can use them to open your device’s browser or to open an e-mail window.
> **Note:** You cannot add a link to a Web page or an e-mail address using the MediaCentral Cloud UX app.
To open a Web link from a story:
- Tap the link in the story.
The device’s Web browser opens and loads the Web page.
Working with Stories To e-mail a contact from a story:
1. Tap the e-mail address in the story.
The device opens an e-mail window, using the device’s default e-mail app.
2. Write your e-mail.
3. Tap Send.
Approving Stories Endorsing or approving stories allows news producers to identify which scripts in a show have been reviewed prior to broadcast. You can approve stories from an Newsroom Management workstation or from the MediaCentral Cloud UX app.
> **Note:** The ability to approve stories requires write access to the queue for the selected story.
To approve a story from the app:
1. Open the story you want to approve.
2. Tap the Approve Story button.
3. Tap or swipe the toggle button to the right to approve the story
The Approve Story window displays the user that approved the story.
4. Do one of the following to save your changes:
- (iPad) Tap anywhere on the screen to dismiss the Approve controls.
- (iPhone) Tap Done.
To remove approval for a story from the app:
1. Open the story for which you want to remove approval.
2. Tap the Approve Story button, and tap or swipe left to turn off the Approve option.
Working with Favorites Working with Favorites To make navigation easier, you can designate certain locations in the Newsroom Management or Production Management modules as Favorites, which appear in a list on the Launch panel.
From the app, you can use your Favorites list to navigate quickly to your most often used assets, directories, queues, or stories. You can edit your Favorites list by creating new ones, editing their names, or deleting existing ones from the list.
To create a Favorite:
1. Tap the Actions button and tap Manage Favorites.
2. Tap the gray star to the left of the directory, asset, queue, or story you want to designate as a
favorite destination. You can select more than one at a time.
3. Tap the Done button.
All selections appear in your Favorites list in the Launch panel. A star appears next to each icon of favorite destinations in the system directory.
Working with Favorites To edit the name of a Favorite:
1. From the Launch panel, tap the Favorites button.
2. Tap the name in the list you want to edit.
3. When the cursor appears, you can change the name.
For example, if you plan to have multiple rundown queues in your Favorites list, some might share the same queue name. You can edit each one in the list to distinguish which rundown applies to the morning, midday, and evening newscast.
4. Tap the Done button.
The name of the Favorite changes. This does not affect the name of the original asset, story, queue, or rundown.
To delete a Favorite:
1. Tap the Favorites button.
2. Tap to the left of the directory, queue, or story you want to remove as a favorite destination. You
can select more than one at a time.
The selected item displays a check mark next to the title; gray circles indicate those not chosen.
3. Tap the Trash button.
The app deletes the selected items from your Favorites list.
4. Tap Done.
Working Offline with Cached Queues and Stories Working Offline with Cached Queues and Stories You can use the MediaCentral Cloud UX app to view queues and stories cached locally to your mobile device without being connected to your station’s Newsroom Management system.
The Launch panel displays cached queues and stories in the Favorites list when you work in offline mode.
The following notes apply to caching queues and stories:
(cid:129) You can work in presenter mode from a cached queue in offline mode.
(cid:129) Caching a queue might take some time, depending on the length of the queue. You can manually cancel a cache operation. For more information, see “Caching Queues and Stories” on page 26.
(cid:129) If you manually cancel a cache operation, no part of the queue or story is saved.
(cid:129) You can cache a queue of up to 1000 stories. If a queue contains more than this limit, MediaCentral Cloud UX caches only the first 1000 stories.
(cid:129) If an error occurs while caching stories — for example, if you lose your connection to the server or if you lock your device — the cache operation is interrupted.
(cid:129) MediaCentral Cloud UX updates the cache contents only in the case of an successful operation.
If you have cached the same queue or story before, you can still access the old cache.
(cid:129) If a story or part of a story has been deleted from a queue marked for caching, it is skipped by the cache operation.
(cid:129) If you designate both a queue and a story from the queue as favorites, the cache operation creates two separate cached versions of the story, one within the cached queue and another for the individually-cached story.
Caching Queues and Stories To view queues and stories in offline mode, you must set them as Favorites before they can be cached locally and viewed when you do not have a connection to server (see “Working with Favorites” on page 24).
You can delete a cache for a queue or story by deleting the item from the Favorites list.
To cache a queue or story in the Favorites list:
1. In the Launch panel, tap the Favorites button, and tap to the left of the queue or story in the
Favorites list you want to cache. You can select more than one queue or story at a time.
The queue or story displays a check mark next to the title.
2. Tap the Cache button.
A progress bar indicates the status of the cache operation. To stop the cache operation, tap the Cancel button.
Working Offline with Cached Queues and Stories When the caching completes, a dialog box appears with the results of the operation.
3. Tap OK.
To remove a cache from your device:
1. In the Launch panel, tap the Favorites button, and then select the queue or story in the Favorites
list you want to delete.
The queue or story displays a check mark next to the title.
2. Tap the Trash button.
The queue or story is removed from the Favorites list and the cache is deleted.
Viewing Queues and Stories in Offline Mode If you lose your connection to MediaCentral Cloud UX, you can choose to work offline. This allows you to view queues and stories that have been cached on your mobile device.
To view cached queues and stories after your lose your connection to MediaCentral Cloud UX:
1. In the sign-in screen, tap Work Offline.
MediaCentral Cloud UX displays the Launch panel, with all cached queues and stories in the Favorites list.
2. Tap a queue or story to open it.
Working with Production Management Working with Production Management You can access media assets stored in a Production Management database, such as video clips, audio clips, and graphics. When viewed with the app, available Production Management modules appear in the Directory panel, along with any of their directories and media assets.
Different icons are used to identify Production Management assets:
Icon Description Directories hold media assets or other subdirectories.
An audio clip references audio media files formed from captured audio or imported files. Audio clips display in the Media Viewer as an audio clip icon.
A master clip references audio and video media files formed from captured footage or imported files.
A subclip references a selected portion of a master clip.
A sequence represents an edited program, partial or complete, that you create from other clips.
A group clip contains two or more grouped clips, strung together sequentially according to common timecodes. You cannot preview group clips in the app’s Media Viewer.
An in-progress (edit while capture or EWC) clip references a clip you create using Frame Chase capture capabilities, either on an Avid editing application or with a line feed or ingest device such as an Avid AirSpeed.
> **Note:** While viewing the top level of an asset directory in the Directory panel, the Back button displays the
word Launch, which means you can tap it to return to the previous view of the Launch panel.
However, the button’s name changes the further you navigate down the system directory.
Viewing Media Assets You can open directories and media assets stored in the Production Management database using the app. Directories and a list of assets open within the Directory panel. You can view and play assets in the Media Viewer. The following illustration shows the iPhone layout on the left and the iPad layout on the right. iPads provide enough screen space to show the Directory panel and the Media Viewer on the same screen, while iPhones only display one screen at a time.
Working with Production Management The following table describes buttons available to open and use the Media Viewer:
Button Description The Play button appears over the media asset. When you tap the play button, the app plays the sequence associated with the story. This button changes to a Pause button while the sequence plays and fades from view after a short period of time.
The Playhead allows you to navigate to a new position in the viewer’s video playback timeline.
The Maximize button expands the viewer to full screen. This button changes to the Minimize button when the viewer expands to full screen.
(iPhone only) If the current Production Management folder includes multiple assets, the Next / Previous buttons allow you to quickly access the next or previous asset in that folder.
This feature is not available on the iPad as you can use the Directory panel for navigation.
Actions menu As it relates to the Media Viewer, this menu includes an option to reload the current asset.
When working with markers, additional buttons become available. For more information, see “Using Markers” on page 31.
> **Note:** You cannot view video sequences created directly in Avid Media Composer, and you cannot play back
shotlists created in Interplay Assist.
To open and play a media asset:
1. Use the Directory panel to navigate to an asset in a directory.
2. Tap the video or audio asset.
The asset opens in the Media Viewer.
Working with Production Management
3. Tap the Play button to play the asset.
4. If you want to scrub through the media asset, or if you want to jump to a specific position in the
clip, tap and hold the position indicator and drag it to a new location.
5. If you want to view a video clip in full screen mode, tap the Full Screen button.
The Media Viewer expands to fill the screen and the video clip starts playing.
To play the next or previous asset:
- Tap the down button to navigate to the next asset.
If you are already viewing the last asset in the folder, the down button is disabled.
- Tap the up button to navigate to the previous asset.
If you are viewing the first asset in the folder, the up button is disabled.
Quick Forward and Reverse After you load an asset into the Media Viewer, you can play the asset by tapping the play button as described above. If you want to advance more quickly through the asset, you can tap a position in the timeline, or you can tap twice on the Media Viewer to move the move the playhead forward by 10 seconds or backwards by 10 seconds.
As shown in the following illustration, an on-screen indicator of the action is displayed over the media asset when you tap twice on the left or right side of the asset.
After you double-tap, the Media Viewer maintains the previous state. If you were paused, the viewer remains paused. If you were playing, the asset continues to play from the new position.
To advance by ten seconds:
- Tap twice on the right-side of the media viewer.
You can continue double-tapping the screen to keep advancing through the asset in 10 second intervals until you reach the end of the asset.
To reverse by ten seconds:
- Tap twice on the left-side of the media viewer.
You can continue double-tapping the screen to keep rewinding through the asset in 10 second intervals until you reach the beginning of the asset.
Using Markers Regenerating the Proxy Media When you play media assets through the mobile app, you are actually playing a low-res proxy version of the original high-res media file. These proxies are created on-the-fly on the MediaCentral Cloud UX server when you access a new asset. They proxies are maintained on the server for future use until space is required for new assets.
In the event that you have an issue with media playback, the mobile apps allows you to regenerate this proxy file.
To regenerate the proxy media for playback:
1. Tap the Actions button.
2. Tap Reload.
Using Markers A marker is an indicator that you add to a selected frame to mark a particular location in a clip, subclip, or sequence. Markers can have icons of different colors and can be associated with user- defined comments. Markers display in the timeline and in the Markers list below the Media Viewer.
The following illustration and table describe the marker interface.
Using Markers Display Description 1 Marker count Displays the number of markers associated with this asset.
2 Create/Edit Marker button Allows you to create a new marker. This section is displayed if you have the necessary user permissions to edit the video asset.
3 Marker list A list of the markers in the clip or sequence. Markers are sorted by timecode. You can scroll the list to see all markers.
4 Show/Hide Marker list button Expands or collapses the Marker list.
5 Edit Marker button Allows you to edit or delete an existing marker.
6 Change Marker Color bar Allows you to change the color of any marker.
7 Notes field In edit mode, allows you to add or to modify text.
8 Done button Commits your changes and exits edit mode.
When you open an asset that contains one or more markers, a list appears under the Media Viewer.
Each marker is indexed in chronological order according to the asset’s time code. Each marker is displayed with its icon color, comments (if applicable), and name of the user that created it. If an asset does not contain any markers, the list is replaced with a message indicating that no markers exist for the selected asset.
In a collaborative workflow where another user is adding new markers to the asset, the mobile user can swipe down on the list to refresh the connection and access the newly created markers.
Creating and Editing Markers You can add and edit markers in the MediaCentral Cloud UX app for iOS devices if you have the necessary user permissions configured in Production Management. A Production Management administrator sets these permissions in the Instinct/Assist User Settings view of the Interplay Administrator. For more information, see the Interplay | Engine and Interplay | Archive Engine Administration Guide.
In MediaCentral Cloud UX, you can add markers to clips, subclips, and sequences stored in the Production Management database. Markers that you add to a sequence are associated only with the sequence. They are not automatically associated with the corresponding master clips used in the sequence. Similarly, a marker added to a subclip is not added to the associated master clip.
To create a marker, do one of the following:
1. Load a video in the Media Viewer.
2. Do one of the following:
- Tap the Play button, and then tap the Create Marker button in the player and select Create
Marker when the playhead reaches the appropriate location. You can also tap the Create Marker button below the Media Viewer.
- Tap in the timeline to scrub to the location where you want to add a marker, and then tap the
Create Marker button in the monitor and select Create Marker. You can also tap the Create Marker button below the Media Viewer.
Using Presenter Mode (Tablet only)
> **Note:** If no cache exists for the video yet, the playhead does not move to the location in the timeline. Once a
sufficient buffer has been created, scrubbing to a specific location works as expected.
A marker is added and the Marker view opens in edit mode.
3. Type the text you want for your marker in the Notes field.
4. Tap the Done button.
Text is saved, the marker is added to the timeline, and you exit edit mode.
> **Note:** You can cancel the marker creation by tapping outside the Notes field.
To edit an existing marker:
1. Select the Marker that you want to edit from the marker list.
The playhead moves to the marker location in the timeline.
2. Do one of the following:
- Tap the Edit Marker button.
- Tap the Media Viewer Action button.
3. Tap Edit marker.
The Marker view opens in edit mode.
4. Use the keyboard to edit the marker text.
5. Tap the Done button.
Text is saved and you exit edit mode.
> **Note:** You can cancel your edit by tapping outside the Notes field.
To delete an existing marker:
1. Select the Marker that you want to delete from the marker list.
The playhead moves to the marker location in the timeline.
2. Do one of the following:
- Tap the Edit Marker button.
- Tap the Media Viewer Action button.
3. Tap Delete marker.
The marker is deleted from the clip or sequence, and the marker is removed from the timeline.
Using Presenter Mode (Tablet only) When opened on a tablet, the app enables you to view a script in a page-by-page layout, similar to printed scripts used by news presenters. This method of viewing stories from a rundown is known as Presenter Mode. When in presenter mode, MediaCentral Cloud UX automatically updates stories and story positions in a rundown, although it ignores updates for the currently viewed story. If a different user makes changes to the stories in the rundown, MediaCentral Cloud UX automatically updates them in the background.
Using Presenter Mode (Tablet only) Also, MediaCentral Cloud UX caches stories locally on the device for offline use while you work in presenter mode. This allows you to continue working if you lose your connection to the server as long as you remain in presenter mode. However, if you lose the connection to your server, updates do not occur.
Presenter mode is only available for queues that have been assigned the “Refresh” flag through the Newsroom Management Client.
To enter presenter mode:
1. Open a show's rundown.
2. Tap the Presenter Mode button in the bar at the top of the app.
Presenter mode opens on the story selected by the user in the Directory panel. The app displays a progress dialog as it loads the rest of the stories in the rundown in order to cache them locally on your device. When the cache operation completes, the progress dialog closes.
Stories load in the following order:
- Load the previous story — the one before the selected story in the rundown.
- Load the next story — the one after the selected story in the rundown.
- Load the second story after the selected story in the rundown.
- Load the second story before the selected story in the rundown.
- Continue loading stories before and after the selected story incrementally throughout the rest of the rundown.
Using Presenter Mode (Tablet only) To navigate through scripts in presenter mode:
- Swipe left or tap right edge of the touch screen to go to the next page.
- Swipe right or tap the left edge of the touch screen to go to the previous page.
> **Note:** When you swipe right or left from the first or last page of a story, the display moves to the next story
in the rundown.
To exit presenter mode:
- Pinch in on the screen.
You can customize the appearance of text in presenter mode by modifying the MediaCentral Cloud UX settings. Additionally, you can opt to skip blank stories while in presenter mode. For more information, see “Customizing the iOS Mobile App Settings” on page 11.