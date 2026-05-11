---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "current"
release-date: 01/01/current
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid® MediaCentral Distribution Service ReadMe Avid recommends that you read all the information in this ReadMe thoroughly before installing or using the software described in this document.
• For additional documentation related to Avid MediaCentral | Cloud UX, see:
http://avid.force.com/pkb/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation (cid:129) For additional documentation related to Avid MediaCentral | Platform Services, see:
http://avid.force.com/pkb/articles/en_US/user_guide/Avid-MediaCentral-Documentation Contents Limitations and Defects Found in Version 2019.6.3. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10 Limitations and Defects Found in Earlier Versions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10 Revision History . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 Legal Notices. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 Overview Overview The MediaCentral Distribution Service (MCDS) is an application required for Send to Playback (STP) operations in both MediaCentral Cloud UX and MediaCentral Platform Services (MediaCentral UX). More accurately described as an “orchestration engine”, MCDS analyzes the STP request and determines if additional actions are required before the media is sent to the destination (Avid AirSpeed, Avid Transfer Engine, or other).
The following workflow describes how MCDS is involved in the Send To Playback process:
1. After being notified of the job, MCDS analyzes the settings defined in the MediaCentral STP
target profile and extracts the information required to process the job — such as the destination audio and video formats.
2. MCDS calls the Relink service (part of the MCDS installer package) to query the Production
Management Media Indexer to find the media associated with the asset. In this step, the source media is analyzed to verify that it matches the destination format.
3. If the STP job requires an audio mixdown (stereo audio tracks) or a video mixdown (sequences
with dissolves), MCDS calls the Production Management Transcode service to perform this work.
4. If the source media is in a Log GOP format, MCDS calls the Production Management STP
Encode service to re-encode the assets.
5. The media is sent to the destination.
- If the source media is Long GOP, the STP Encode service initiates the call to begin the transfer.
- If the source media is in any other format, MCDS makes a direct call to the Avid AirSpeed, Avid Transfer Engine, or other to initiate the transfer of the asset to the destination.
MCDS is not used if you are sending an asset directly to Production Transcode or Delivery. MCDS is not used when working with MediaCentral Newsroom Management or MediaCentral Asset Management assets. For more information on workflows that include MCDS, see the Avid Interplay Engine and Avid Interplay Archive Engine Administration Guide.
New Features This section describes the new features available in updated versions of MCDS.
New for MediaCentral Distribution Service v2020.4 MCDS now supports an “in-place” upgrade. You are no longer required to manually uninstall the previous version of MCDS before you install an updated version of the software. The installer verifies if an existing version of MCDS exists on your system, and automatically removes the previous version of the software during the installation process (if found).
Compatibility Notes Compatibility Notes The following guidelines apply to installing MCDS:
(cid:129) MCDS requires at least 8GB of RAM, at least 2GB of storage hard drive space, and two CPU cores. When deciding where to locate the service, you must make sure to allocate enough memory and storage to accommodate the service, your operating system, and any other applications that might be co-installed on the same system. Additionally, MCDS log files could increase the amount of storage required over time.
> **Note:** The amount of RAM consumed by MCDS could grow over time as up-time and usage of the
application increases. As individual workflows can vary, system administrators are encouraged to monitor MCDS to determine the actual amount of required system resources.
(cid:129) Supported on Windows Server 2012 R2 and Windows Server 2016.
- Before you install MCDS on Windows Server 2012 R2, you must install the Windows Desktop Experience feature.
(cid:129) Ensure that all enabled network interfaces on both the system hosting the MCDS and the Production Management Services Engine are fully routable to each other.
(cid:129) Must not be installed on a Production Management Engine or Production Management Archive Engine.
(cid:129) Must not be installed on a MediaCentral Production Media Indexer server as the two systems risk sharing network port 8443.
(cid:129) Can be installed on a server hosting other services or applications, such as the Production Management Services Engine, MediaCentral Transcode, MediaCentral Transfer Engine, etc.
While Avid is not aware of any technical limitations (such as port conflicts or shared library incompatibilities) between MCDS and the systems listed above, system administrators must ensure that system resources are not over-tasked. For example if you have a Transcode server in heavy use, you would not want to install MCDS at this location.
(cid:129) Must be installed on a system that has the Avid shared storage client software installed.
For redundancy purposes, MCDS can be installed on two systems. Installing a second instance of MCDS does not provide load-balancing functionality.
For additional information on MCDS version compatibility, see the Avid Knowledge Base: http:// avid.force.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Mixed Resolution Send to Playback In general, Avid does not support mixing assets of different resolutions when sending a sequence to playback in MediaCentral UX or MediaCentral Cloud UX. For exceptions related to MediaCentral UX, see “Sending a Sequence to a Playback Device” in the Avid MediaCentral | UX User’s Guide.
When working in MediaCentral Cloud UX, the following additional workflows are supported.
Installing the MediaCentral Distribution Service MediaCentral Cloud UX For Send-to-Playback operations, MediaCentral Cloud UX generally expects that all segments of a given sequence are in the same format. While it might be possible to deviate from this overall guideline and perform a successful send-to-playback operation, Avid does not explicitly support mixed-resolution STP due to the large variety of possible combinations.
However, there is one exception to this guideline. Avid has enabled and qualified a progressive XAVC Long GOP workflow that utilizes the XAVC Long GOP 50 1080p 50 progressive format.
Since this format has been added only recently, STP operations can also be performed with a mixture of XAVC Long GOP 50 1080p 50 and the previously available XAVC Long GOP 50 720p 50 format.
This exception enables customers to smoothly upgrade their workflows from 720p to a full 1080 progressive raster. For more information on how to enable this configuration option, see “Configuring Media Formats” on page 7.
Installing the MediaCentral Distribution Service The process to install MCDS includes the following steps:
Installing the Windows Desktop Experience If you are running Windows Server 2012 R2, you must complete the following steps. If you are using Windows Server 2016, the Desktop Experience is installed automatically with the operating system and. You can bypass this process and proceed directly to “Installing the MediaCentral Distribution Service” on page 5.
To install the Windows Desktop Experience:
1. Open Server Manager (for example, right-click This PC and select Manage).
2. Under “Configure this local server” select “Add roles and features.”
3. Click Next until you reach the Select Features page.
4. In the User Interfaces and Infrastructure section, select Desktop Experience.
5. Click Install.
The following illustration shows the Desktop Experience installed.
Installing the MediaCentral Distribution Service
6. Exit all open dialog boxes.
For more installation information, see the Windows Server web page at:
https://technet.microsoft.com/en-us/library/hh831809.aspx Installing the MediaCentral Distribution Service Complete the following to install the MediaCentral Distribution Service.
For more information on upgrading MCDS, see “Upgrading an Existing Installation” on page 6.
To install the MediaCentral Distribution Service:
1. Launch the MCDS installer on your desired system.
2. Proceed through the installation and accept the defaults.
You might be asked to install prerequisite requirements such as Microsoft Visual C++.
3. Once the installation is complete, use Windows Computer Management to verify that the “Avid
Interplay Central Distribution Service” is “Started” and the Startup Type is configured as “Automatic”.
4. (optional) If you want to install a second copy of MCDS for redundancy, complete the steps
above on another server.
Uninstalling the MediaCentral Distribution Service This section includes the process to uninstall MCDS.
To uninstall MCDS:
- Use the Windows Programs and Features control panel to uninstall the existing installation of the
MediaCentral Distribution Service.
Upgrading an Existing Installation Upgrading an Existing Installation MediaCentral Distribution Service v2020.4 and Later The process to upgrade the MediaCentral Distribution Service follows the same process as a new installation. The software installer detects the existing software version and upgrades it in-place without the need to manually uninstall the previous version. All versions of MCDS are full installers and do not require a prior installation of the service. For more information, see “Installing the MediaCentral Distribution Service” on page 5.
MediaCentral Distribution Service v2019.6.x and Earlier If your server is already running a copy of the MediaCentral Distribution Service and you need to upgrade to a new version, you must use the Windows Programs and Features control panel to uninstall the existing version before installing the new version of MCDS. All versions of MCDS are full installers and do not require a prior installation of the service.
If you attempt to complete an overlay installation of MCDS — where you do not first uninstall the previous version — the software is not upgraded correctly. If you proceed without uninstalling, you must uninstall MCDS, manually delete the MediaCentral Distribution Service folder under C:\Program Files\Avid, and then reinstall.
For more information see the following sections:
Additional Configuration This section includes the following topics:
Configuring MediaCentral Settings After installing MCDS, you must edit one or more settings in the MediaCentral Cloud UX or MediaCentral Platform Services systems to complete the installation and configuration process.
For MediaCentral Cloud UX For MediaCentral Cloud UX, you must edit one or more settings in the Configuration Settings app.
For more information, see “Configuring the Production Management Module” and if applicable, “Creating a Production Management Profile” in the Avid MediaCentral | Cloud UX Installation Guide.
For MediaCentral Platform Services (MediaCentral UX) For MediaCentral Platform Services, you must edit the System Settings > Interplay Production Settings. For more information, see “Configuring System Settings” in the Avid MediaCentral Platform Services Installation and Configuration Guide.
Additional Configuration Configuring Media Formats When you create media through an Avid system, you create media in one of two varieties:
(cid:129) Traditional media formats used by Avid applications and include resolutions such as DNxHD, AVC-Intra, XDCAM-HD, and others.
(cid:129) Newer formats, sometimes referred to as Format Independent (FI) media, such as:
- Avid DNxHR - AVC / XAVC Long GOP - XAVC Intra (except 50 and 100)
> **Note:** This information is not intended to represent an all-inclusive list of formats.
When MCDS receives a request, it is programed to follow a set of rules based on the media format.
However, the service can only follow one set of rules at a time. By default, the service is programed to work with traditional media formats. If you are working with FI media, you must reconfigure MCDS to accommodate this workflow.
If you attempt to send traditional media formats to a Send to Playback device after enabling this configuration change, STP profiles that were previously functional might work differently.
After making this change, Avid recommends validating your existing workflows.
The following process applies to MCDS v2019.6.3 or later.
To accommodate newer media formats in MCDS:
1. Navigate to the location of the stpservice.properties file on the server hosting the MCDS
service.
This file is normally located at: C:\Program Files\Avid\MediaCentral Distribution Service\resources\.
2. Open the file in a text editor such as Microsoft Notepad.
3. Search the document for any line that starts with relinkResolutionOverride and add a #
symbol in front of the line to disable it or “comment it out”.
It is possible that your version of the stpservice.properties file does not include this line.
4. Verify if the following line exists in the file and do one of the following:
longGopUseClosests=<value>
- If this line already exists and is set to a value of true, change the value to false.
- If it does not exist, create a new line in the file and set the value to as shown here:
false longGopUseClosests=false
5. Create a new line in the file and add the following text:
fallbackToHighest=true
6. Close and save the file.
7. Restart the “Avid Interplay Central Distribution Service” service under Windows services.
8. If you installed a second copy of the MCDS server for redundancy, repeat the above steps on the
second installation of the service.
9. Execute a test STP job from MediaCentral Cloud UX or MediaCentral UX to verify that your
changes were successful.
Additional Configuration If you encounter a problem, you can find more information in the MCDS logs at:
C:\ProgramData\Avid\MediaCentral Distribution Service To disable the changes described above:
1. Add a # symbol in front of the following lines to disable them:
longGopUseClosests=false fallbackToHighest=true
2. Restart the “Avid Interplay Central Distribution Service” service under Windows services.
3. If you installed a second copy of the MCDS server for redundancy, repeat the above steps on the
second installation of the service.
4. Execute a test STP job from MediaCentral Cloud UX or MediaCentral UX to verify that your
changes were successful.
If you encounter a problem, you can find more information in the MCDS logs at:
C:\ProgramData\Avid\MediaCentral Distribution Service Configuring Delays and Retries Version 2018.11.1 and later of the MediaCentral Distribute Service includes code that attempts to retry failed jobs and a defines a delay interval between retries. In the event that the source media is offline due to check-in or indexing delays, the service completes a number of retries to relink to the assets before reporting the failure back to the user.
By default, MCDS retries jobs for up to 40-50 seconds for each configured relink method. The default MCDS configuration enables one relink method (closest match), but it is possible to configure your stpservice.properties file for more than one relink method. While the retry code might allow for more successful jobs, it might also introduce a delay in the send to playback process for jobs that should fail for legitimate reasons.
In general, Avid does not recommend altering the default delay and retry values. However, if you find the additional delay unacceptable, you can complete the following process to alter the defaults.
The following process applies to MCDS v2018.11.1 or later.
To configure the delay and retry settings:
1. Navigate to the location of the file on the server hosting the MCDS
stpservice.properties service.
This file is normally located at: C:\Program Files\Avid\MediaCentral Distribution Service\resources\.
2. Open the file in a text editor such as Microsoft Notepad.
3. Create two new lines in the file using the following text:
relinkAttempts=<relink_value> delayInSecondsRelink=<delay_value> Where the following values are used:
- <relink_value> represents the number of relink attempts before a failure is returned.
- represents the number of seconds to wait between retries.
<delay_value> Fixed in Version 2019.6.3 When configuring alternate values, Avid does not recommend specifying a total delay lower than 15 seconds. In the following example, the system administrator specified 4 relink attempts with a delay of 5 seconds between attempts.
relinkAttempts=4 delayInSecondsRelink=5
4. Close and save the file.
5. Restart the “Avid Interplay Central Distribution Service” service under Windows services.
6. If you installed a second copy of the MCDS server for redundancy, repeat the above steps on the
second installation of the service.
7. Execute a test STP job from MediaCentral Cloud UX or MediaCentral UX to verify that your
changes were successful.
Avid completes all send to playback tests using the default MCDS configuration settings. If you alter the configuration file and encounter STP problems, you might stpservice.properties need to use alternate delay or retry values, or eliminate the changes entirely. For this reason, you are strongly encouraged to test the changes before releasing the system to production.
If you encounter a problem, you can find more information in the MCDS logs at:
C:\ProgramData\Avid\MediaCentral Distribution Service Fixed in Version 2019.6.3 The following issues have been resolved in MCDS v2019.6.3.
a Bug Number: IPI-2458, IPI-2360. Jobs sent to STP Encode that include multi-resolution assets associated with both traditional media and newer media formats might fail.
To fully enable this fix, you must install MCDS v2019.6.3 or later and complete the procedure for “Configuring Media Formats” on page 7.
Fixed in Earlier Versions The following issues were fixed in prior releases of MCDS:
Fixed in 2019.6.0 a Bug Number: IPI-2292. If you install the MediaCentral Distribution Service (MCDS) v2018.6 - v2018.11 on a server or workstation that is not running any other Avid software, Send to Playback jobs fail — stopping on the preprocessing phase.
Workaround: If you are running an older version of software and cannot upgrade to MCDS v2019.6, you can use the following workaround to resolve this issue.
The MCDS installer is not creating the required Avid User in the Windows operating system. To resolve this issue, you must install MCDS on a system running another Avid application such as MediaCentral Transfer or Transcode. The installation of these applications creates the required Avid User correctly.
Limitations and Defects Found in Version 2019.6.3 a Bug Number: IPI-2415. When you use MediaCentral Cloud UX to send AVC Long GOP 720p 50 media to the Playback endpoint, the process can take a significant amount of time to complete due to an issue in the MediaCentral Distribution Service (MCDS).
Fixed in 2018.11.1 a Bug Number: IPI-2280. When sending a job to STP Encode that includes XAVCLongG50 720p50 media, the job might fail and report the following message:
Failed to open file for STP/DET transfer: \\<path>\<file_name>.mxf
> **Note:** MCDS v2019.6.3 introduced additional changes to further address this issue. If you still encounter
the problem, you must upgrade to MCDS v2019.6.3 or later, and follow the instructions in “Configuring Media Formats” on page 7.
Fixed in 2018.9.1 a Bug Number: PAM-7439. In order to improve MCDS performance during peak hours, MCDS has been optimized to reduce the number and frequency of login operations to the Interplay Engine.
Fixed in 2018.6.1 a Bug Number: IPI-2187. AME-based Interplay Production services (including MCDS) show high CPU usage with v2018.6.
Limitations and Defects Found in Version 2019.6.3 a Bug Number: IPI-2685. Depending on the resolution of the source video media, a news sequence containing a VO track might fail to Send To Playback.
Limitations and Defects Found in Earlier Versions Limitations and defects in are organized in the following sections:
(cid:129) “Limitations and Defects Found in Version 2018.11.0” on page 10 Limitations and Defects Found in Version 2018.11.0 a Bug Number: ICI-2536, IPI-2684. If you create a sequence with multi-resolution media and you add a dissolve over a multi-res asset, the STP process might fail during the “mix analysis phase”.
a Bug Number: IPI-2416. If you add a dissolve over 720p60 AVC Long GOP 25 media and attempt send the sequence to playback, the STP process fails with the following error:
Remote STP process failed: Unsupported target video resolution (XAVC LONG GOP 25 720P 59.94) (in “wait render” phase).
Revision History Revision History This section details the revision history of this document.
Date Revised Changes Made April 24, 2020 MCDS v2020.4 release updates February 21, 2020 First publication Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This product may be protected by one or more U.S. and non-U.S patents. Details are available at www.avid.com/patents.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Copyright © 2020 Avid Technology, Inc. and its licensors. All rights reserved.
Portions © Copyright 2003-2007 of MOG Solutions.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:
http://www.avid.com/US/about-avid/legal-notices/trademarks.
Avid MediaCentral Distribution Services ReadMe (cid:129) Revised April 27, 2020 (cid:129) This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.