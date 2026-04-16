---
product: fastserve-ingest
product-area: ingest-playout
version: "2022.9-2024.3"
release-date: 01/09/2022
doc-type: new-features
source: avid-official
confidentiality: public
date-added: 16/04/2026
status: superseded
feature-tags: [fastserve, ingest]
---

Avid® FastServe™ | Ingest
Version 2022.9 ReadMe

- **Version 2022.9 Information**
FastServe | Ingest v2022.9 marks Avid’s first Long Term Maintenance release for this product. For more information on that term and how it might affect your organization, visit the Avid website at: 
https://www.avid.com/resource-center/avid-long-term-maintenance-releases
- **Hardware Components**
- **It is highly recommended to use only certified third party hardware components together with FastServe | Ingest (cabling, converters, etc.).**
- **Important Information**
Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
**Important:** Search the Avid Knowledge Base for the most up-to-date ReadMe file, which contains the latest information that might have become available after the documentation was published. This document describes compatibility issues with previous releases, hardware and software requirements, software installation instructions, and summary information on system and memory requirements. This document also lists hardware and software limitations **Revision History**

	**Date Revised****	Changes Made**

- September 23, 2022 Initial release.

- If You Need Help

# If You Need Help
If you are having trouble using your Avid product:
Retry the action, carefully following the instructions given for that task. It is especially important to check each step of your workflow.
- For your convenience, the following guides can be accessed:
*Avid FastServe | Ingest Administrator’s Guide*
*Avid FastServe | Ingest Setup Guide *-	*Avid FastServe | Ingest User Guide*.
- You can always find the latest *FastServe | Ingest ReadMe* as well as all documentation available via download on the Avid Knowledge Base at: http://avid.force.com/pkb/articles/ReadMe/FastServe-Documentation/
**http://www.avid.com/US/support/**.
Check the documentation that came with your Avid application or your hardware for maintenance or hardware-related issues.
Visit Avid Online Support at . Online support is available 24 hours per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
- What’s New in 2022.9

# What’s New in 2022.9
This section describes new features, compatibility, and formats supported in this version.
- The v2022.9 release is Avid’s first Long-Term Maintenance (LTM) for FastServe | Ingest. This version can be used for all supported workflows, including video-over-IP (**SVIP**) and **FastServe | I/O** configurations. 
- n *For more information about the supported workflows, see the ****FastServe | Ingest Supported Configurations**** topic in the ****Avid FastServe | Ingest Administrator’s Guide****. *
- **New Features**
We have added a new Remote Console to the FastServe | Ingest Web Configurator. You can use it for maintenance control of ingest or playout (only with FastServe | I/O) channels and quick and convenient inventory management.
- For more information, see the **Working with the FastServe | Ingest Remote Console** topic in the *Avid FastServe | Ingest Administrator’s Guide*.
We have extended the licensing schema with Avid’s ULAT licensing system. Currently, you can apply either the previous nodelock license type (generated basing on Machine’s ID), or apply licenses generated with Avid’s ULAT system.
We have added an option to upload SSH certificates and enable a secure access to the FastServe | Ingest Web Configurator.
We have improved the communication and control over the VDCP protocol.
- **Current Firmware Versions**
The following firmware is installed on the 2022.9 version of FastServe | Ingest:

| Firmware | Firmware Name | MD5 |
| --- | --- | --- |
| XDCAM In | xdcam_ii_8023.bin | 08d38ae804eec237edc0fc4a954cd76a |
| XDCAM Out | xdcam_oo_8310_2.bin | 4b3a3d3522819d4099919341c254e4fe |
| DNxHD/AVC-I/XAVC-I In | dnxhd_ii_9065.bin | d7af75ce2b87e062643cbfdde06f7f93 |
| DNxHR in | dnxhr_i_6041.bin | fd7bba0b79709dfca349d1684f4ec3ab |
| SVIP AVC-I/XAVC-I | dnxhd_svip_ii_9464.bin | fb9269775368b8130423003466305cc1 |

- Fixed in v2022.9
- **Supported Formats**
A complete list of supported formats is available in the **FastServe | Ingest Supported Configurations** topic of the *Avid FastServe | Ingest Administrator’s Guide*.
- **Compatibility Information**
FastServe | Ingest v2022.9 has been tested against the following versions of Avid software products:

| Avid Software Product | Supported Version |
| --- | --- |
| MediaCentral | Production Management Server | 2021.11 |
| Media Composer | 2021.5, 2021.12, 2022.4 |
| MediaCentral | Capture | 2017.2.15 |
| Avid NEXIS Client | 2022.5.1, 21.12.1, 22.5.0* n When installing the NEXIS client v21.12.1 or 22.5.0, an affinity patch is required to protect mount stability and performance. For more information, see the Limitations and Known Issues. |
| FastServe | Playout Plugin for Command | v2022.2 (FastServeInstaller-2022.02.0.114.exe) |

- **Security Guidelines**
- Avid allows you to install an endpoint detection and response solution on your FastServe | Ingest system. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page: .

# Fixed in v2022.9
The following fixed items are in the version 2022.9 release.
- ³ [FSI-10951] We have improved the alerting mechanism when connected signals are in a different standard than FastServe | Ingest current configuration.
- ³ [FSI-9780] We have fixed issues related to changing the duration of recording, which occurred while recording was still in progress.
- Limitations and Known Issues
- ³ [FSI-11624] We have fixed issues related to blocked STP when a user tried to send an unsupported STP file format.

# Limitations and Known Issues
This section contains information on the known FastServe | Ingest issues and limitations.
- ³ When using the Avid NEXIS Client v**21.12.1** or v**22.5.0**, an affinity patch is needed to protect mount stability and performance.
- **Workaround:** **To install the affinity patch:**
- Make sure no mount to NEXIS is currently used. If a mount is in use, unmount it first.
- Log into the FastServe | Ingest server using an SSH client such as PuTTY and change the directory to /data/VS/bin.
- Ensure that NEXIS client version 21.12.1.97 or 22.5.0.109 is currently installed.
- n *The "**fuse_avidfos --version**" command can be used to check the currently installed version.*
When no NEXIS Client is found or the installed version is older than the ones listed above, update the NEXIS client to version 22.5.0.109 (recommended).
Apply the affinity fix script with the ./taskset_avidfos.sh command (it needs to be run once after every NEXIS client installation).
Restart Avid mounts using systemctl restart avidfos.
Reconfigure the Avid NEXIS mounts on the server, if required. 
- ³ FastServe | Ingest requires Genlock. For the FastServe | Ingest server to work properly, a valid Genlock connection is required. Make sure that your FastServe | Ingest server receives a valid Genlock signal. For more information, see the *Avid FastServe | Ingest Setup Guide*.
- ³ FastServe | Ingest requires genlocked input signals. 
- ³ Exporting and importing Remote Console ingest templates is not yet supported in the current version. ³ When creating or editing ingest templates in the Remote Console, the Preset tooltip in the Main Media section is not displayed properly. This issue will be addressed in the next version of FastServe | Ingest.
- ³ Proxy workflow is not supported when working with UHD or DNx formats.
- Legal Notices
- ³ When Audio Packet time is set to 1ms, only 8 audio channels in total are supported. If more audio channels are required, 125ms audio interval must be used.
- ³ The maximum number of clips allowed in the FastServe | Ingest storage is **1990**. For more information on how to maintain the database, see the **Record Mode** section of the **Working with the FastServe | Ingest WebSettings** topic in the *Avid FastServe | Ingest Administrator’s Guide*. 
- ³ FastServe | Ingest can only be connected to one MediaCentral | Capture system. To connect to multiple Capture systems, Capture needs to work in a redundancy configuration.
- ³ Capture workflow - segment duration is limited up to 5h.
- ³ Power cycle of the system cannot be shorter than 10 seconds.
- ³ Export from Capture to share on NEXIS storage does not support UTF characters.
- ³ Export subfolders cannot use UTF-8 characters.

# Legal Notices
- This product may be protected by one or more U.S. and non-U.S patents. Details are available at .
- No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
- Copyright © 2022 Avid Technology, Inc. and its licensors. All rights reserved.
- Portions of this product were created using LEADTOOLS © 1991-2002, LEAD Technologies, Inc. ALL RIGHTS RESERVED. Portions of this product are licensed under US patent 5,327,254 and foreign counterparts.
- Portions Copyright 2003-2007 of MOG Solutions.
- Trademarks
- Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid Nexis, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: .
- Avid FastServe | Ingest ReadMe v2022.9• Rev A • Created 7/9/24

# ™ Avid FastServe | Ingest

# Version 2023.11.4 ReadMe
- Version 2023.11 Information
- FastServe | Ingest v2023.11 has been developed as a Feature release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at:
- https://www.avid.com/resource-center/avid-long-term-maintenance-releases
- This release is designed specifically for usage on latest edition of CentOS 7.9 based FastServe | Ingest video servers. It is also compatible with existing CentOS 7.4 Gen 1 video servers. n *Avid recommends that customer production environments remain non-public in a separate domain, or otherwise isolated from external public access.*
- Hardware Components
- It is highly recommended to use only certified third party hardware components together with FastServe | Ingest (cabling, converters, etc.).
- Important Information
- Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
- See the following Avid Knowledge Base link for the most up-to-date FastServe | Ingest documentation (all releases):
- https://avid.secure.force.com/pkb/articles/en_US/readme/FastServe-Ingest-Documentation
- Revision History

| Date Revised | Changes Made |
| --- | --- |
| February 7, 2024 | The 2023.11.4 patch release, which includes a new version of the vsProxy component. Check "What’s New in Version 2023.11.4" on the next page for more information. |
| January 30, 2024 | The 2023.11.3 patch release, which includes a new version of the XDCAM OUT-OUT firmware (xdcam_oo_8312.bin). Check "What’s New in Version 2023.11.3" on page 3 for more information. |
| January 24, 2024 | The 2023.11.2 patch release, which includes a new version of the XDCAM ININ firmware (xdcam_ii_8056.bin). Check "Fixed in Version 2023.11.2" on page 6 for more information. |
| December 12, 2023 | We have replaced a version of the modSystem component for the one with extended ZFS options. |

- 2023.11.4

| Date Revised | Changes Made |
| --- | --- |
| November 29, 2023 | Initial v2023.11 publication. This release is dedicated mainly to the new generation of servers. It certifies the use of Video Over IP on the new Gen 2 machines. |

# Contents

| What’s New in Version 2023.11.4 | 2 |
| --- | --- |
| What’s New in Version 2023.11.3 | 3 |
| What’s New in Version 2023.11.2 | 4 |
| What’s New in Version 2023.11 | 4 |
| Fixed in Version 2023.11.4 | 5 |
| Fixed in Version 2023.11.3 | 6 |
| Fixed in Version 2023.11.2 | 6 |
| Security Guidelines | 6 |
| Limitations and Known Issues | 6 |

# What’s New in Version 2023.11.4
- In the v2023.11.4 patch release, we have updated the vsProxy component. We have modified the mechanism of saving OP1a files to match the standards for growing files.
- Check "What’s New in Version 2023.11" on page 4 for information about Certified Workflows and Supported Formats.
- Installation Instructions
- In the v2023.11.4 patch release, we have updated thevsProxy component.
- n *This patch should only be installed on 2024.3 versions of FastServe | Ingest.*
- To update the vsProxy component:
Connect to your FastServe | Ingest server using an SSH client. Navigate to */data/VS/bin*.
Stop all FastServe components:
- ./set_run -s all
Back up the current configuration:
cp -RPpv /data/VS/bin/vsProxy/bin/vsProxy.xml /data/vsProxy.xml
Remove the previous version of the vsProxy component:

- rm -frv /data/VS/bin/vsProxy/* rm -frv /data/public/vsProxy/*

Copy the new installer file to /data/ public:
- 2023.11.3
- copy vsProxy-2023-3-1-12-ge58ee26d-315.tar.gz to /data/public/
Unpack and install the new proxy component:

- tar -xvzf /data/public/vsProxy-2023-3-1-12-ge58ee26d-315.tar.gz -C /data/public/ cd /data/public/vsProxy/
- ./installProxy.sh /data/VS/bin/vsProxy/

Start all FastServe components:
- /data/VS/bin/set_run -a all n *Make sure to edit the vsProxy.xml file after the upgrade because all values reset to default.*

# What’s New in Version 2023.11.3
- In the v2023.11.3 patch release, we have updated the XDCAM OUT-OUT (xdcam_oo_8312.bin) firmware, which contains a fix for the issue of artifacts appearing on playout.
- Check "What’s New in Version 2023.11" on the next page for information about Certified Workflows and Supported Formats.
- Installation Instructions
- In the v2023.11.3 patch release, we have updated the XDCAM OUT-OUT (xdcam_oo_8312.bin) firmware.
- To update the OUT-OUT firmware:
Connect to your FastServe | Ingest server using an SSH client. Navigate to */data/VS/bin*.
Stop all FastServe components:
- ./set_run -s all 3. Copy the new firmware:

| cp xdcam_oo_8312.bin /usr/dvg cd /usr/dvg |  |
| --- | --- |
| Remove the previous symbolic link for the firmware, and create a new one: |  |
| rm /usr/dvg/uh2_xdcam_hd_oo.bin | Type "y" to remove the previous symbolic link. |
| ln -s xdcam_oo_8312.bin /usr/dvg/uh2_xdcam_hd_00.bin | Create a new link. |

- 4.
Start all FastServe components:
- /data/VS/bin/set_run -a all
When the server is fully running again, log into the Web Configurator and trigger the Reburn firmware process in the OVS > Video settings.
- 2023.11.2

# What’s New in Version 2023.11.2
- In the v2023.11.2 patch release, we have updated the XDCAM IN-IN (xdcam_ii_8056.bin) firmware. We have also a new environment variable, which (if enabled) affects the clean loop for inputs to provide stable input-loop for unlocked incoming signals. For more information on how to enable the passive loop variable, see the "Feature Toggles and Best Practices" topic in the *Avid FastServe | Ingest Administrator's Guide*.
- Check "What’s New in Version 2023.11" below for information about Certified Workflows and Supported Formats.
- Installation Instructions
- In the v2023.11.2 patch release, we have updated the XDCAM IN-IN firmware (xdcam_ii_8056.bin) firmware.
- To update the IN-IN firmware:
Connect to your FastServe | Ingest server using an SSH client. Navigate to */data/VS/bin*.
Stop all FastServe components:
- ./set_run -s all 3. Copy the new firmware:

| cp xdcam_ii_8056.bin /usr/dvg cd /usr/dvg |  |
| --- | --- |
| Remove the previous symbolic link for the firmware, and create a new one: |  |
| rm /usr/dvg/uh2_xdcam_hd_ii.bin | Type "y" to remove the previous symbolic link. |
| ln -s xdcam_ii_8056.bin /usr/dvg/uh2_xdcam_hd_ii.bin | Create a new link. |

- 4.
Start all FastServe components:
- /data/VS/bin/set_run -a all
When the server is fully running again, log into the Web Configurator and trigger the Reburn firmware process in the OVS > Video settings.

# What’s New in Version 2023.11
- This topic provides an overview of the major new features in FastServe | Ingest v2023.11. For additional information, see the Learn & Support page directly at the following link:
- https://www.avid.com/products/fastserve/learn-and-support
- Video Over IP Certification for FastServe | Ingest Gen 2 Servers
- We have now fully certified FastServe | Ingest Gen 2 servers to work with Video Over IP (SMPTE 2110) configurations.

	Fixed	2023.11.4
- For more information, see the“The SVIP Page”chapter of the *Avid FastServe | Ingest Administrator’s Guide v2023.11*.
- Supported Formats
- A complete list of supported formats is available in the FastServe | Ingest Supported Configurations topic of the *Avid FastServe | Ingest Administrator’s Guide*.
- Current Firmware Versions
- The following firmware is installed on the 2023.11.4 version of FastServe | Ingest:

| Firmware | Firmware Name | MD5 |
| --- | --- | --- |
| XDCAM In | xdcam_ii_8056.bin | 592df0f035a59e97905bf47fdb7ab025 |
| XDCAM Out | xdcam_oo_8312.bin | f592102c003f1c3cd1a6db97ee964cee |
| DNxHD/AVC-I/XAVC-I In | dnxhd_ii_9065.bin | d7af75ce2b87e062643cbfdde06f7f93 |
| DNxHR in* | dnxhr_i_6041.bin | fd7bba0b79709dfca349d1684f4ec3ab |
| SVIP (SMPTE 2110) AVC-I/XAVC-I | dnxhd_svip_ii_9471.bin | 7fa08c43986da7a38b91a47e17c3d317 |
| SVIP (SMPTE 2110) XDCAM | xdcam_ii_8434_2.bin | 9b7f0b8b620cae611bb1bb32b53a6070 |

- *This firmware is only available for the first generation of FastServe | Ingest servers.
- Compatibility Information
- FastServe | Ingest v2023.11.4 has been tested against the following versions of Avid software products:

| Avid Software Product | Supported Version |
| --- | --- |
| MediaCentral | Cloud UX | 2023.3, 2023.7 |
| MediaCentral | Production Management Server | 2022.3 |
| Media Composer | 2022.4 |
| MediaCentral | Capture | 2017.2.16 (4.0.14) |
| Avid NEXIS Client | 2022.12, 2023.3, 2023.5, 2023.8 |
| FastServe | Playout Plugin for Command | 2022.2 (FastServeInstaller-2022.02.0.114.exe) |
| MediaCentral | Command | 2022.3 |
| FastServe | Ingest PreInstaller | 2023.3.0.1 |

# Fixed in Version 2023.11.4
- The following issues have been resolved in FastServe | Ingest v2023.11.4.
-  Bug Number: FSI-12927. We have modified the mechanism of saving OP1a files to match the standards for growing files.

# Fixed	2023.11.3
- Fixed in Version 2023.11.3
- The following issues have been resolved in FastServe | Ingest v2023.11.3.
-  Bug Number: FSI-12727, FSI-12955, FSI-13038. Occasionally, users observed artifacts on playout. This issue has now been fixed with the new XDCAM out-out firmware: xdcam_oo_8312.bin.

# Fixed in Version 2023.11.2
- The following issues have been resolved in FastServe | Ingest v2023.11.2.
-  Bug Number: FSI-9496. When recording feeds which were not locked, users experienced unstable confidence preview on dirty loop for input. It has now been resolved by adding a new environment variable, which affects the clean loop for inputs to provide stable input-loop for unlocked incoming signals. For more information on how to enable passive loop, see the "Feature Toggles and Best Practices" topic in the *Avid FastServe | Ingest Administrator's Guide*.

# Security Guidelines
- Avid allows you to install an endpoint detection and response solution on your FastServe | Ingest system. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page: 

# Limitations and Known Issues
- This section includes information on known limitations and defects related to FastServe | Ingest.
When FastServe | Ingest is switched to maintenance mode, this information is not passed correctly to MediaCentral | Capture and the FastServe channels still appear as online.
The 2023.11 version of the new generation of FastServe | Ingest servers (UHDS2) does not yet support UHD configurations.
There is no error indication on the timeline about an unexpectedly stopped export when working with MediaCentral | Capture.
When upgrading the first generation of FastServe | Ingest servers to the newest version, Avid NEXIS storage paths need to be corrected in the Web Configurator.
There is a known issue with frames being dropped when working in an SVIP XDCAM 50 1080i50 environment. If there is a scaler drop, the green filler will automatically by used (by default it is enabled) on the proxy export unless it is disabled by the setenv VS_DISABLE_PROXY_GREEN_FILLER in the /data/VS/bin/user_pre_VS file.
Bug Number:SSENG-33470. There is a known issue with the FastServe | Ingest version 2022.9 and newer, where the Avid NEXIS mounts are not automatically mounted after a reboot.
- Workaround:All NEXIS mounts need to be manually re-mounted after each reboot. 
- Limitations and Known Issues
FastServe | Ingest requires Genlock. For the FastServe | Ingest server to work properly, a valid Genlock connection is required. Make sure that your FastServe | Ingest server receives a valid Genlock signal. For more information, see the *Avid FastServe | Ingest Setup Guide*.
Importing Remote Console ingest templates is not yet supported in the current version.
When creating or editing ingest templates in the Remote Console, the Preset tooltip in the Main Media section is not displayed properly. This issue will be addressed in the following versions of FastServe | Ingest.
Proxy workflow is not supported when working with UHD or DNx formats.
When Audio Packet time is set to 1ms, only 8 audio channels in total are supported. If more audio channels are required, 125ms audio interval must be used.
The maximum number of clips allowed in the FastServe | Ingest storage is 1990. For more information on how to maintain the database, see the Record Mode section of the *Working with the FastServe | Ingest WebSettings *topic in the *Avid FastServe | Ingest Administrator’s Guide*.
FastServe | Ingest can only be connected to one MediaCentral | Capture system. To connect to multiple Capture systems, Capture needs to work in a redundancy configuration.
Capture workflow - segment duration is limited up to 5h.
Power cycle of the system cannot be shorter than 10 seconds.
Export from Capture to share on NEXIS storage does not support UTF characters.
Export subfolders cannot use UTF-8 characters.
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

- Limitations and Known Issues
- Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: 
- Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
- Avid FastServe | Ingest ReadMe• Revised Monday, July 8, 2024 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.

# Avid FastServe™ | Ingest

# Version 2024.3 ReadMe

# Version 2024.3 Information
FastServe | Ingest v2024.3 has been developed as a Feature release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at:
- https://www.avid.com/resource-center/avid-long-term-maintenance-releases
- This release is designed specifically for usage on latest edition of CentOS 7.9 based FastServe | Ingest video servers. It is also compatible with existing CentOS 7.4 Gen 1 video servers. n *Avid recommends that customer production environments remain non-public in a separate domain, or otherwise isolated from external public access.*

# Hardware Components
It is highly recommended to use only certified third party hardware components together with FastServe | Ingest (cabling, converters, etc.).

# Important Information
Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following Avid Knowledge Base link for the most up-to-date FastServe | Ingest documentation (all releases):
- Revision History

| Date Revised | Changes Made |
| --- | --- |
| March 20, 2024 | Initial v2024.3 publication. This release introduces new ZFS RAIDZ 1 configurations. |

# Contents
	What’s New in Version 2024.3	 2
	Limitations and Known Issues	 3
What’s New in Version 2024.3

# What’s New in Version 2024.3
This topic provides an overview of the major new features in FastServe | Ingest v2024.3. For additional information, see the Learn & Support page directly at the following link:
- https://www.avid.com/products/fastserve/learn-and-support

## RAIDZ 1 Configurations
It is now possible to configure your FastServe | Ingest ZFS pools in the RAIDZ 1 mode.
For more information, see the "Managing ZFS Storage Pools" topic in the *Avid FastServe | Ingest Setup Guide v2024.3*.

## Supported Formats
A complete list of supported formats is available in the FastServe | Ingest Supported Configurations topic of the *Avid FastServe | Ingest Administrator’s Guide*.

## Current Firmware Versions
The following firmware is installed on the 2024.3 version of FastServe | Ingest:

| Firmware | Firmware Name | MD5 |
| --- | --- | --- |
| XDCAM In | xdcam_ii_8056.bin | c8bd6b543326f4290a7123ec467fac90 |
| XDCAM Out | xdcam_oo_8312.bin | 592df0f035a59e97905bf47fdb7ab025 |
| DNxHD/AVC-I/XAVC-I In | dnxhd_ii_9065.bin | d7af75ce2b87e062643cbfdde06f7f93 |
| DNxHR in* | dnxhr_i_6041.bin | fd7bba0b79709dfca349d1684f4ec3ab |
| SVIP (SMPTE 2110) AVC-I/XAVC-I | dnxhd_svip_ii_9471.bin | 7fa08c43986da7a38b91a47e17c3d317 |
| SVIP (SMPTE 2110) XDCAM | xdcam_ii_8434_2.bin | 9b7f0b8b620cae611bb1bb32b53a6070 |

*This firmware is only available for the first generation of FastServe | Ingest servers.

## Compatibility Information
FastServe | Ingest v2024.3 has been tested against the following versions of Avid software products:

| Avid Software Product | Supported Version |
| --- | --- |
| MediaCentral | Cloud UX | 2023.12 |
| MediaCentral | Production Management Server | 2023.7 |
| Media Composer | 2023.12 |
| MediaCentral | Capture | 2022.3 (4.0.15) |
| Avid NEXIS Client | 2023.3, 2023.12 |
| FastServe | Playout Plugin for Command | 2022.2 (FastServeInstaller-2022.02.0.114.exe) |
| Avid Software Product | Supported Version |
| MediaCentral | Command | 2022.3 |
| FastServe | Ingest PreInstaller | 2023.3.0.1 |

## Security Guidelines
Avid allows you to install an endpoint detection and response solution on your FastServe | Ingest system. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page: 

# Limitations and Known Issues
This section includes information on known limitations and defects related to FastServe | Ingest.
- When FastServe | Ingest is switched to maintenance mode, this information is not passed correctly to MediaCentral | Capture and the FastServe channels still appear as online.
- The 2024.3 version of the new generation of FastServe | Ingest servers (UHDS2) does not yet support UHD configurations.
- There is no error indication on the timeline about an unexpectedly stopped export when working with MediaCentral | Capture.
- When upgrading the first generation of FastServe | Ingest servers to the newest version, Avid NEXIS storage paths need to be corrected in the Web Configurator.
- There is a known issue with frames being dropped when working in an SVIP XDCAM 50 1080i50 environment. If there is a scaler drop, the green filler will automatically by used (by default it is enabled) on the proxy export unless it is disabled by the setenv VS_DISABLE_PROXY_GREEN_FILLER in the /data/VS/bin/user_pre_VS file.
- Bug Number:SSENG-33470. There is a known issue with the FastServe | Ingest version 2022.9 and newer, where the Avid NEXIS mounts are not automatically mounted after a reboot.
Workaround:All NEXIS mounts need to be manually re-mounted after each reboot. 
- FastServe | Ingest requires Genlock. For the FastServe | Ingest server to work properly, a valid Genlock connection is required. Make sure that your FastServe | Ingest server receives a valid Genlock signal. For more information, see the *Avid FastServe | Ingest Setup Guide*.
- Importing Remote Console ingest templates is not yet supported in the current version.
- When creating or editing ingest templates in the Remote Console, the Preset tooltip in the Main Media section is not displayed properly. This issue will be addressed in the following versions of FastServe | Ingest.

- Proxy workflow is not supported when working with UHD or DNx formats.
- When Audio Packet time is set to 1ms, only 8 audio channels in total are supported. If more audio channels are required, 125ms audio interval must be used.
- The maximum number of clips allowed in the FastServe | Ingest storage is 1990. For more information on how to maintain the database, see the Record Mode section of the *Working with the FastServe | Ingest WebSettings *topic in the *Avid FastServe | Ingest Administrator’s Guide*.
- FastServe | Ingest can only be connected to one MediaCentral | Capture system. To connect to multiple Capture systems, Capture needs to work in a redundancy configuration.
- Capture workflow - segment duration is limited up to 5h.
- Power cycle of the system cannot be shorter than 10 seconds.
- Export from Capture to share on NEXIS storage does not support UTF characters.
- Export subfolders cannot use UTF-8 characters.
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
- Avid FastServe | Ingest ReadMe• Revised Monday, July 8, 2024 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.