---
product: stream-io
product-area: ingest-playout
version: "2025.10"
release-date: 01/10/2025
doc-type: readme
source: avid-official
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid | Stream IO
Version 2025.10 ReadMe
- Important Information
- Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following Avid Knowledge Base link for the most up-to-date Avid | Stream IO documentation:
- Revision History

| Date Revised | Changes Made |
| --- | --- |
| November 14, 2025 | The 2025.10 Release. |

# Contents

	Fixed in v2025.10	 3
	Limitations and Known Issues	 3
- What’s New in Version 2025.10

# What’s New in Version 2025.10
- This topic provides an overview of the major new features in Avid | Stream IO v2025.10. For additional information, see the Learn & Support page directly at the following link: 
- A comprehensive list of supported & certified hardware configurations, as well as detailed guidelines on how to configure your on-premises hardware can be found in the *Avid | Stream IO Hardware Specification and Configuration Guide v2025.10*.
- Detailed guidelines on how to configure the Avid | Stream IO software and useful tips and tricks about the system are provided in the *Avid | Stream IO User's Guide v2025.10*. Avid recommends that you read all of the information in the *Hardware Specification and Configuration *and the *User's Guide *thoroughly before installing or using the Avid | Stream IO server.
- ISO Recording
- ISO Recording captures multiple ingest sources simultaneously to separate files while maintaining frameaccurate synchronization. Configure recordings through Ingest Templates, which define file format, codec, storage path, and parameters such as Show, Episode or Scene name.
- For more information, see the "ISO Record" topic in the *Avid | Stream IO User's Guide*.
- Extended Export Options
- Clips Inventory export now supports multi-item export, allowing users to export several clips simultaneously for streamlined batch processing. Users can generate proxies on-the-fly from highresolution recordings or STP assets during export. Reusable export templates can be created and saved for consistent workflow automation.
- Workflow Improvements l UHD XAVC-I 300 is now supported in Play-While-Transfer scenarios. l Tape ID can be changed via the Remote Console, also during active recording.
- l Certificate expiration date now visible in Remote Console System tab with option to regenerate self-signed certificates.
- WatchFolder Behavior Change
- Rename, delete, and overwrite operations are now blocked in WatchFolder to prevent accidental inventory modifications. Perform inventory maintenance operations through Remote Console instead.
- Compatibility Information
- For information on supported operating systems and for a list of product versions qualified for use with Avid Stream IO, see the Compatibility Matrix on the Avid Knowledge Base at:
- https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts
- Avid | Stream IO v2025.10 has been tested against the following versions of software products:

| Avid Software Product | Tested Against |
| --- | --- |
| Avid | Stream IO PreInstaller | PreInstaller 2025.10.0.0 |
| Avid | Stream IO Plugin for Command | 2024.10.3 |
| Avid Media Composer | 2023.12 and up |

- Fixed in v2025.10

| Avid Software Product | Tested Against |
| --- | --- |
| Avid MediaCentral | Capture | 2022.3 (4.0.15) |
| Avid MediaCentral | Cloud UX | 2025.10 |
| Avid MediaCentral | Production Management | 2024.10​ |
| Avid MediaCentral | Command | 2023.7.x​ |
| Avid NEXIS Client & Server | 2025.5.3* |
| BlackMagic Decklink driver | 14.4a6​ |
| NVIDIA Mellanox Driver | 25.07.OFED.25.07.0.9.7.1-1 |

- * Refer to "Limitations and Known Issues" below for more information about Avid NEXIS compatibility.

# Fixed in v2025.10
- The following fixed items are in the version 2025.10 release.
Bug Number:AVS-7458. We have fixed an issue where Remote Console automatically logged out users 24 hours after initial login, regardless of activity. Auto-logoff now triggers after 30 minutes of idle time instead of being tied to login duration, allowing uninterrupted operation during active sessions.
Bug Number:AVS-7759. We have fixed an issue where clips could load and play but failed to eject after system upgrades, causing subsequent clips to stall until the system was reloaded. This behavior was traced to VDCP callback handling, which has now been corrected in this release.
Bug Number:AVS-7539. Avid Stream IO now prevents server-side HTTPS requests from being directed to unintended domains.

# Limitations and Known Issues
- This section lists the limitations and best practices discovered in the 2025.10 version.
- n *Make sure to check the "Avid | Stream IO Best Practices" topic in the Avid | Stream IO User's Guide as it contains the remaining limitations discovered in previous versions and useful information about the Avid | Stream IO capabilities and workflows.*
SSENG-44903. Media transfers from Avid Stream IO to Avid NEXIS fail when using the Avid NEXIS Client for Ubuntu version 2025.10.0.
- Workaround: Use Avid NEXIS Client 2025.5.3.
AVS-7892 Do not schedule MediaCentral | Acquire or Capture recordings to start exactly at midnight (00:00). Recordings can begin shortly before or after midnight, but not precisely at 00:00.
Channels used in the ISO Record window cannot be modified individually during recording. Channel locking features will be added in future releases.
- Limitations and Known Issues
For SDI workflows, all ingest feeds must be genlocked to the same synchronization clock to achieve frameaccurate ISO Recording.
ISO Recording maintains different levels of frame accuracy depending on the ingest workflow:
SDI and SMPTE 2110: Frame-accurate
NDI and VENetStream: Near frame-accurate (±1-2 frames possible)
Server restart is required after DST time changes. Perform restart from the Web Configurator at System > Reboot.
A purple dot appears next to the asset in the Clip inventory when high-resolution recording is completed using Media Copy. This indicator does not appear when exporting proxy-only files.
Canceling an export may leave proxy assets checked into Interplay while high-res MXF files (OPAtom or OP1a) are deleted from shared storage. For proxy-based exports, cancellation timing affects whether proxy files are removed or remain marked as MEDIA Offline in the editor.
The preview shown in the Remote Console is compressed. As a result, fine visual details, especially in complex patterns, may be lost or altered due to compression. You should not expect the Remote Preview to match the full-quality Avid Stream IO output exactly.
Legal Notices
- Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
- This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
- This product may be protected by one or more U.S. and non-U.S patents. Details are available at 
- No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
- Copyright © 2025 Avid Technology, Inc. and its licensors. All rights reserved.
- Portions © Copyright 2003-2007 of MOG Solutions.
- Attn. Government User(s). Restricted Rights Legend
- U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
- Trademarks
- Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: 
- Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
- Avid | Stream IO ReadMe• Revised Friday, November 14, 2025 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.