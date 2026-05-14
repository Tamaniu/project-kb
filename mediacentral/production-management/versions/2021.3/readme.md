---
product: mediacentral-production-management
product-area: production-management
version: "2021.3"
release-date: 01/03/2021
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

MediaCentral | Production Management Version 2021.3 ReadMe Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Also refer to “Important Information in This ReadMe” on page 5.
Updated Security Guidelines As system and network security attacks become increasingly more inventive and persistent, Avid has adopted a new security strategy to help you, our customer and partner, better protect your assets and intellectual property. As you might know, Avid has traditionally recommended Symantec Endpoint Protection as the preferred and qualified solution for much of the Avid product line. As of Q3, 2020, Avid has introduced a more flexible strategy that provides general guidelines for protecting your Avid systems. This new policy allows you to choose the best security solution for your organization, while still following Avid best practices.
Revision History Date Revised Changes Made July 12, 2023 Added a limitation for Delivery Provider (IPI-3509).
See “Delivery Provider” on page 51 for more information.
May 19, 2023 Added a fix for Media Indexer (IPI-3066).
See “Media Indexer” on page 49 for more information.
February 1, 2022 Corrected the support of macOS Mojave10.14.x to Production Management components 2021.3.
See “Support for MacOS Mojave 10.14.x” on page 8 for more information.
November 24, 2021 Updated to include the following limitation:
(cid:129) IPI-3199: The 2021.3 / 2021.3.1 Access installer does not install the “xquartz-osx-pkg-x86_64” package on macOS. This results in the Access application failing to launch.
See “Limitations for 2021.3” on page 51 for more information.
Date Revised Changes Made May 20, 2021 Updated to include the following:
(cid:129) Updated the wording in the topic “Delivery Provider Now Respects the Media Indexer Files per Folder Limitation” on page 30 as follows: Media Indexer puts a limitation on the number of files per folder. The maximum number of files must not be higher than 5,000. Delivery Provider is now respecting the number of files per folder (5000 files/folder).
(cid:129) Added this limitation for Interplay Transcode v2021.3:
Bug Number: IPI-3102. Interplay Transcode does not support the DNxHR SQ and DNxHR HQ resolutions in Production Management v2021.3 and Interplay Production v2018.11.7.
See “Limitations for 2021.3” on page 51 for more information.
May 13, 2021 First released version. See the following:
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This guide is protected by copyright. This guide is for your personal use and may not be reproduced or distributed, in whole or in part, without permission of Avid. Reasonable care has been taken in preparing this guide; however, it may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc. disclaims liability for all losses incurred through the use of this document.
Product specifications are subject to change without notice.
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
Important Information in This ReadMe Important Information in This ReadMe The following lists some of the important sections of this ReadMe.
New for Production Management v2021.3 See the following sections for information specific to 2021.3:
For information on fixes for Production Management 2021.3, see “Fixed in 2021.3” on page 48.
New for Production Management v2020.4 See the following sections for information specific to 2020.4:
For information on fixes for Production Management 2020.4, see “Fixed in 2020.4” on page 50.
New for Interplay Production v2019.6 See the following sections for information specific to 2019.6:
New for Interplay Production v2018.11 New for Interplay Production v2018.11 The following features are new for Interplay Production 2018.11:
Hardware and Software Requirements For hardware and software requirements, see the following topics:
Supported Software For a list of software supported with Interplay releases, see the Avid Knowledge Base article “Avid Video Compatibility Charts.” For an article listing end of support dates, see the Avid Knowledge Base article “End of Support Dates.” Avid Editing Application Compatibility with Interplay Releases The following Knowledge Base articles provide information on compatibility between Interplay releases and editor releases:
(cid:129) See the Knowledge Base article “Interplay and Avid Editor Compatibility.” (cid:129) For details on the operating system (PC and Mac), QuickTime version, and nVidia drivers supported on the different editor releases, see the Avid editing application Readme and the Knowledge Base article “Avid Media Composer Documentation and Version Matrix.” Supported Hardware and Operating Systems For details on supported servers, operating systems, and components, see “Interplay Production Server and Operating System Support” in the Avid Knowledge Base article “Avid Video Compatibility Charts.” For an article listing end of support dates, see the Avid Knowledge Base article “Avid End of Life Dates.”
> **Note:** When considering your choice of operating system, you must make sure to verify that all systems are
supported together. For example, if you install Production Management components on an Avid Media Composer client, you must make sure that your Media Composer and Production Management versions both support the same operating system. You must also verify that the Avid components are compatible. For more information on Avid software interoperability, see the following article on the Avid Knowledge Base:
http://avid.force.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Hardware and Software Requirements Windows Server 2019 Support Starting with Production Management 2020.4.0, Windows Server 2019 Standard is now supported for all Production Management components.
Production Management v2021.3.x will be the last version to support Windows Server 2012.
http://avid.force.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Operating Systems and Servers no longer supported for Interplay 2018.11 and Higher Starting with Interplay 2018.11, the following are not supported:
(cid:129) AS3000 Server (cid:129) Windows Server 2008 R2 Interplay 2018.11.x was the final release for the above OS and servers.
Support for HPE MSA 2050 on Interplay Engine Cluster Systems The HPE MSA 2050 has been qualified on the following operating systems running Interplay 2018.11 and later:
(cid:129) Windows Server 2012 R2 (cid:129) Windows Server 2016 For support on Interplay v2018.11 and later, see the following document:
http://resources.avid.com/SupportFiles/attach/Failover_Guide_Interplay_v2018_11.pdf Support for Avid Editing Clients Interplay Production components v2017.2 and later that are installed on Avid editing systems are qualified for the following operating systems:
(cid:129) Windows v7 64-bit SP1(Professional) (cid:129) Windows v8.1 (Professional and Enterprise) (cid:129) Windows v10 64-bit (Professional, Creators, and Enterprise) The following components are qualified:
(cid:129) Avid System Framework (ASF) (cid:129) Interplay Access (cid:129) Interplay Assist (cid:129) Interplay Capture Client (cid:129) Media Composer Cloud components (cid:129) Media Indexer client (cid:129) Standalone Transfer Manager (cid:129) Transfer Manager client Upgrading Interplay Software Support for MacOS Catalina Production Management (macOs) client components 2020.4 are not supported on Catalina at this time.
Do not upgrade your macOS to Catalina if you plan on installing and using Production Management 2020.4.
Support for MacOS Mojave 10.14.x Interplay Production components 2021.3 that are installed on Avid editing systems require macOS 10.14x. MacOS 10.12.x and 10.13.x are not supported at this time.
These components include:
(cid:129) Interplay Access (cid:129) Media Composer Cloud components (cid:129) Media Indexer client (cid:129) Transfer Manager client Interplay Support for Dell and HP Servers Interplay Production supports using Dell and HP servers for the Interplay Engine and other Interplay Production servers. Support includes the following:
(cid:129) DELL R630 and R640 For additional information including minimum specifications, see Avid MediaCentral | Production Management Dell and HPE Server Support on the Avid Knowledge Base at http://avid.force.com/ pkb/articles/en_US/readme/Avid-Interplay-Production-Documentation.
Support for Virtual Environments Interplay Production v3.3 and later supports running Interplay server applications in a virtual environment using VMware vSphere 6. See Interplay Production Virtual Environment with VMWare Best Practices Guide on the Avid Knowledge Base.
Upgrading Interplay Software To upgrade the software, see the following topics:
Upgrading Interplay Software Manually Uninstall Interplay Production Components Before Upgrading Avid recommends that before upgrading Interplay Production components, use the operating system to manually uninstall the installed components. Then use the Interplay Production installer, as described in the Avid Interplay | Production Software Installation and Configuration Guide.
Do not manually uninstall the Interplay Engine or Interplay Archive Engine. When upgrading the Production Services Engine, make sure to preserve SQL and the SQL database.
Best Practices for Performing an Engine Upgrade This section lists a number of procedures that can help ensure a smooth upgrade. These can be particularly useful for sites with Interplay Engine clusters and large databases. In general, it is useful to get a baseline snapshot of the health of the database and of the Interplay Engine before performing the upgrade. This allows you to fix any problems before the upgrade begins. It also provides a record of the state of the system over time. You can use this information for comparison later if any problems develop after the upgrade.
Back Up the Interplay Database You use the Interplay Administrator to create backups of the database. However, the Administrator does not back up the complete database folder. Before you perform an upgrade, Avid recommends that you create a backup copy of the complete database folder (AvidWG or AvidAM) and the user database folder (_InternalData). See “Backing Up the Interplay Engine Database” on page 12.
Send the Database to Avid Engineering for Testing Avid recommends that you contact your Avid representative about sending a copy of your Interplay database to Interplay engineering for testing. This testing provides a report that includes the following type of information:
(cid:129) An estimation about the duration of the database upgrade/migration (cid:129) An analysis of other database characteristics like object count (cid:129) Tips for the upgrade if there are any caveats Your Avid representative can provide details on which files should be provided for the test.
> **Note:** Sending the database for testing is recommended for all version but should be considered mandatory
for Interplay versions v1.4 and lower.
Examine Log Files Before Performing the Upgrade In order to analyze the state of the Interplay Engine, you need the relevant log files and the status of the OS/machine hosting the Interplay Engine or Archive Engine. The easiest way to gather these logs is to use the Collect tool. The Collect tool is typically run by Avid support. See your Avid representative for details.
Your Avid representative can examine the Base Analyzer portion of the Collect tool before the upgrade and determine whether you should make any changes before proceeding with the upgrade.
Save the output of the Collect tool. Besides providing troubleshooting information, the Collect tool will provide a baseline of system status information that you can refer back to at a later date.
Upgrading Interplay Software Restart the Interplay Engine Before the Upgrade While not required, this is a good test of the health of the system. In particular, it is useful to perform a failover of an Interplay cluster system. This can expose any problems with the cluster services. If there are any problems restarting the system, fix the problems before you begin the upgrade.
Deactivate the Interplay Database During the Upgrade If the release requires a database upgrade, it is important to control the timing of when the database upgrade occurs. if you deactivate the database before upgrading, the database upgrade will occur when you reactivate the database. See “Database Changes for Upgrading to v2019.x” on page 10.
For the recommended upgrade procedure, see “Updating the Avid Interplay Engine Software” on page 16.
Check the Logs During a Database Upgrade The Interplay Engine displays a status bar during a database upgrade/migration. The status bar appears if you perform the recommended steps and deactivate the database before the upgrade. For a more accurate indication of how the upgrade is progressing, you can use an application such as Notepad to periodically view the bottom of the NXNServer.log file in the following folder:
C:\Program Files\Avid\Avid Interplay Engine\Logs\Machines\<machine_name> Examine and Archive the Logs After the Upgrade If you use the Collect tool, examine the Base Analyzer portion after the upgrade. This portion should run successfully without any errors. Archive the output of the tool as a record of the state of the system after the upgrade.
Database Changes for Upgrading to v2019.x Upgrading from any Interplay release earlier than Interplay v3.2 requires a database upgrade. Make sure you back up your database before the upgrade and lock the database when you perform the upgrade as described in “Updating the Avid Interplay Engine Software” on page 16.
Upgrading from Interplay v2.3 or Earlier Upgrading from v2.3 (or earlier) to v3.x involves a schema upgrade which can not be reversed. That means that a full backup of the database must be created before upgrading the Interplay Engine.
Once migrated, the database cannot be loaded by earlier versions of the Interplay Engine. If you need to access the database through an earlier version, contact your Avid representative.
For a very large database, the upgrade process can take up to three hours. For systems earlier than v2.3, an additional upgrade occurs that can take additional time.
> **Note:** For releases earlier than v2.3 there are additional steps you must take after the upgrade to delete
unused rendered effects. See “Database Changes for Upgrading Systems Earlier than v2.3” on page 11.
See “Best Practices for Performing an Engine Upgrade” on page 9.
Upgrading Interplay Software Free Disk Space for a Database Upgrade The database migration requires a significant amount of free disk space on the drive that hosts the _Database folder. You should have twice the amount of free disk space that the _Database folder occupies on disk.
Database Changes for Upgrading Systems Earlier than v2.3 This section includes important information for upgrading a system earlier than Interplay v2.3.
Upgrade to Interplay v2.7.5 or Higher Before Upgrading to Interplay v3.x Before you upgrade a system earlier than Interplay v2.3 to Interplay v3.x, you must first upgrade to a version between Interplay v2.3 and v2.7.x, inclusive. Note that only Interplay v2.7.5 and higher installers are available on the Avid download center.
> **Note:** Avid recommends that before you perform an upgrade you contact your Avid representative about
sending a copy of your Interplay database to Interplay engineering for testing. Part of the testing results will include an estimate of the time it will take to perform the database upgrade.
Removing Rendered Effects During the Database Upgrade The upgrade to Interplay v2.3 required a database upgrade. So if you are upgrading a system earlier than v2.3 to Interplay v3.0, the database upgrade will take effect. The first time you open the database after the upgrade, the Interplay Engine automatically removes links for rendered effects (they are replaced as emulated rendered effects by the client application). No media is deleted.
This process significantly reduces the size of the database. For a very large database, the upgrade process can take up to three hours.
Because the process of removing the links can take a long time, it is important to follow the upgrade procedure described in “Upgrading Interplay Software” on page 8. If you follow the procedure, the database change occurs while you are logged into the Interplay Administrator. During the process, the Interplay Administrator displays a progress bar. Messages are also displayed in the Interplay Engine log file, nxnserverlog. You can periodically open the log file with Notepad to monitor the progress.
During the database upgrade, the Interplay Engine also determines if there are rendered effects that are not currently in use and moves these rendered effects to one or more subfolders in the Orphan Clips folder. An administrator or media manager can then delete these assets and their media. For more information about options for deleting, see “Deleting Unused Rendered Effects After an Upgrade” on page 20.
Upgrading from Interplay v1.x Releases Before you upgrade to Interplay v3.x you must first upgrade to a version between Interplay v2.3 and v2.7.x, inclusive. See “Database Changes for Upgrading Systems Earlier than v2.3” on page 11.
Also refer to the next two topics.
Upgrading Interplay Software Upgrading from Interplay v1.1.4 Though v1.1.6 The Interplay v1.1.6 ReadMe instructions for a cluster upgrade required that you create or modify a registry key value during the upgrade to prevent the Interplay Engine from failing over while the system was updating the database. This step is no longer required. You should check whether the registry key exists on both nodes and delete it.
To delete the registry key value:
1. Open regedit on the active node.
2. Delete the following registry key.
HKEY_LOCAL_MACHINE\SOFTWARE\Avid Technology\Workgroup\ Avid Workgroup Resource DLL
3. Perform the same operation on the non-active node.
The deletion is effective immediately and does not require a restart.
Upgrading Interplay Media Services and Providers from Versions Prior to v1.6.2 Before upgrading the Interplay Archive provider to v3.x from a version prior to v1.6.2, you need to execute the fixmediasize tool (fixmediasize.exe). This tool corrects an issue found in prior versions, where master clips and rendered effects in the archive database showed incorrect media size values in Interplay Access, after right-clicking an asset and selecting the “Update Status from Archive” command.
To obtain this tool, contact Avid technical support.
> **Note:** In Avid Access, the “Update Status from Archive” command is only available when working with an
archive database (AvidAM).
In addition, when upgrading Interplay Media Services and providers from versions prior to v1.6.2, you must do the following:
(cid:129) Use the Control Panel to uninstall any previous Interplay Media Services.
(cid:129) Use the Interplay Installer to install the new version of the Interplay Media Services.
(cid:129) Use the Interplay Media Services user interface to delete all the previous profiles, providers, and services.
> **Note:** It is important to delete the old profiles, providers, and services for this release.
(cid:129) Use the Interplay Media Services user interface to install the services, register the providers, and re-create the profiles, as described in the Interplay | Media Services Setup and User Guide.
Backing Up the Interplay Engine Database You use the Interplay Administrator to create backups of the database (see the Avid Interplay Engine and Avid Interplay Archive Engine Administration Guide). However, the Administrator does not back up the complete database folder. Before you perform an upgrade, use the following procedures to create a backup copy of the complete database folder (AvidWG or AvidAM) and the user database folder (_InternalData).
Before you create a backup copy, determine the location of the database folder and whether the database was split between the Interplay Engine and a shared storage workspace.
Upgrading Interplay Software
> **Note:** A split database is no longer recommended. Storing many small files on ISIS workspaces is an
inefficient use of ISIS storage and can lead to performance problems. Customers with existing split databases can continue to use them but Avid does not recommend creating new split databases.
To determine the location of the database folder:
1. On the Interplay Engine, open a Command Prompt and type the following command:
net share All shares on the system are displayed. By default, WG_Database$ (a hidden administrative share) represents the root folder of the database.
- For a non-cluster system, the root folder is usually D:\Workgroup_Databases.
- For a cluster system, the root folder is S:\Workgroup_Databases
2. Navigate to the root folder and double-click the AvidWG folder (or AvidAM folder for an
Archive Engine).
By default, this folder includes all database folders and files, as shown in the following illustration:
You need to back up the entire AvidWG folder.
If the AvidWG folder includes only the _Database folder, then the Interplay Engine is using a split database.
> **Note:** For some split databases, the Workgroup_Databases folder might incorrectly include all database
folders. To verify if the split database is active, open both _PropertyStore folders and check for recent timestamps. The folder on shared storage should show recent activity.
To determine the location of the second (split) database folder:
- Navigate to the workgroup.xml file and open it in a text editor.
Upgrading Interplay Software This file is located in the Interplay Engine installation directory, for example, - C:\Program Files\Avid\Avid Interplay Engine\Data\Apache\Conf\workgroup.xml (non- cluster systems) - S:\WorkgroupData\Apache\conf\workgroup.xml (cluster systems).
Both database paths should be listed, for example:
- \\InterplayServer\WG_Database$ - \\UnityServer\WorkspaceName Both of these folders hold an AvidWG folder. You need to back up both AvidWG folders.
To make a backup copy of the database on a non-cluster system:
1. Open the Interplay Administration tool.
2. Use the following steps to lock the database:
a. Click Lock/Unlock Databases.
b. Select the database in the Unlocked Databases list.
c. Click Lock Database.
3. Click Menu and click Manage Databases.
4. Select the AvidWG database and click Deactivate. Select AvidAM for an Archive Engine.
5. Click Menu and click the Restart Server view.
6. Click Restart Server and close the Interplay Administration tool.
7. Use a backup tool to make a copy of the following folders and record their location.
Interplay Engine or Interplay Archive Engine Folder Name Default Location AvidWG (Interplay Engine database) D:\Workgroup_Databases\AvidWG AvidAM (Archive Engine database) D:\Workgroup_Databases\AvidAM _InternalData (user database if engine is a \D:\Workgroup_Databases\_InternalData Central Configuration Server) Interplay Engine (Split Database) Folder Name Default Location AvidWG (_Database folder only) D:\Workgroup_Databases\AvidWG AvidWG (all other database folders) \\UnityServer\WorkspaceName\AvidWG _InternalData (user database if engine is a \D:\Workgroup_Databases\_InternalData Central Configuration Server)
> **Note:** Use a backup tool that can handle long path names (longer than 255 characters). For example,
perform a backup with Robocopy (from the Microsoft Windows Resource Kit) or use a tool such as 7- ZIP (free download) to zip the folder.
Upgrading Interplay Software
> **Note:** Depending on the size of your database, this kind of backup can take a long time. To save time you
can temporarily move the _Backups folder from within the AvidWG (or AvidAM) folder. to another location. After you perform the copy you can move the folder back under AvidWG.
To make a backup copy of the database on a cluster system:
1. Open the Interplay Administration tool.
2. Use the following steps to lock the database:
a. Click Lock/Unlock Databases.
b. Select the database in the Unlocked Databases list.
c. Click Lock Database.
3. Click Menu and click Manage Databases.
4. Select the AvidWG database and click Deactivate. Select AvidAM for an Archive Engine.
5. Close the Interplay Administration tool.
6. Open the Failover Cluster Manager. There are several ways to open this window. For example,
a. On the desktop, right-click This Computer and select Manage.
The Server Manager window opens.
b. In the Server Manager list, click Tools and select Failover Cluster Manager.
The Failover Cluster Manager window opens.
7. Open the Groups folder.
8. Select the Avid Workgroup Server group.
9. Select the Avid Workgroup Engine Monitor resource and take it offline.
10. If you performed the previous step correctly, drive S: should still be accessible within the
Windows environment. If it is not available, use the Cluster Administration tool to put drive S:
online by clicking on the disk resource within the “Avid Workgroup Server” group and selecting online.
11. Use a backup tool to make a copy of the following folders and record their location.
Interplay Engine or Interplay Archive Engine Folder Name Default Location AvidWG (Interplay Engine database) S:\Workgroup_Databases\AvidWG AvidAM (Archive Engine database) S:\Workgroup_Databases\AvidAM _InternalData (user database if engine is a \S:\Workgroup_Databases\_InternalData Central Configuration Server) Interplay Engine (Split Database) Folder Name Default Location AvidWG (_Database folder only) S:\Workgroup_Databases\AvidWG AvidWG (all other database folders) \\UnityEngine\WorkspaceName\AvidWG Upgrading Interplay Software Interplay Engine (Split Database) Folder Name Default Location _InternalData (user database if engine is a S:\Workgroup_Databases\_InternalData Central Configuration Server)
> **Note:** Use a backup tool that can handle long path names (longer than 255 characters). For example,
perform a backup with Robocopy (from the Microsoft Windows Resource Kit) or use a tool such as 7- ZIP (free download) to zip the folder.
> **Note:** Depending on the size of your database, this kind of backup can take a long time. To save time you
can temporarily move the _Backups folder from within the AvidWG (or AvidAM) folder. to another location. After you perform the copy you can move the folder back under AvidWG.
12. Before you perform the upgrade, bring all of the resources inside the “Avid Workgroup Server”
group online. Right-click the “Avid Workgroup Server” group and select Start Role.
For more information on the Cluster Administration tool, see the Avid Interplay Failover Guide.
Updating the Avid Interplay Engine Software The following topics describe how to update the Interplay Engine and Interplay Archive Engine software:
Upgrading an Interplay Engine Cluster or Interplay Archive Engine Cluster The process described here is similar to a rolling update as documented in the Interplay Engine Failover Guide, except that the database is locked and deactivated before you begin.
To upgrade an Interplay Engine cluster or Interplay Archive Engine Cluster:
1. Verify that you have a valid backup as described in “Backing Up the Interplay Engine Database”
on page 12.
2. If you took the Avid Workgroup Engine Monitor resource offline when you performed a backup,
bring all of the resources inside the cluster resource group online. Right-click the “Avid Workgroup Server” group and select Start Role. For more information, see the final steps in “Backing Up the Interplay Engine Database” on page 12.
> **Note:** If you deactivated your database when backing it up in Step 1, proceed to “Updating the Interplay
Engine Software on a Cluster” on page 17.
3. Open the Interplay Administrator tool.
4. Use the following steps to lock the database:
a. Click Lock/Unlock Databases.
b. Select the database in the Unlocked Databases list.
c. Click Lock Database.
Upgrading Interplay Software
5. Use the following steps to deactivate the database:
a. Click Menu in the Interplay Administration tool and click Manage Databases.
b. Select the AvidWG database and click Deactivate. For an archive database, select AvidAM.
6. Use the Interplay Server Installer to update the Interplay Engine or Interplay Archive Engine
software as described in the following section.
Updating the Interplay Engine Software on a Cluster Use this procedure to update the Interplay Engine or Interplay Archive Engine software.
To update a cluster:
1. On either node, determine which node is active:
a. Right-click My Computer and select Manage. The Server Manager window opens.
b. In the Server Manager list, open Features and click Failover Cluster Manager.
c. Click Roles.
d. On the Summary tab, check the name of the Owner Node.
Consider this the active node or the first node.
2. Run the Interplay Engine installer to update the installation on the non-active node (second
node). Select the values suggested by the installer to reuse values set during the previous installation on that node. Note that the Server Execution user password will be required during the installation.
> **Note:** Starting with Interplay Production v2018.11, you are not required to restart the node following the
software upgrade. However if you have another reason to reboot your upgraded node at this time, it is safe to do so.
Do not move the Avid Workgroup Server to the second node yet.
3. Make sure that first node is active. Run the Interplay Engine installer to update the installation on
the first node. Accept the parameters suggested by the installer so that all values are reused. Note that the Server Execution User password will also be required during this installation.
4. The installer displays a dialog box that displays the following message:
“To proceed with the installation, the installer will now trigger a failover to the offline node."
5. Click OK in the dialog box to continue.
6. After you update both nodes, follow the steps in “Activating the Database” on page 18.
Upgrading Interplay Software Upgrading a Non-Cluster Interplay Engine or Interplay Archive Engine To update the Avid Interplay Engine software:
1. Verify that you have a valid backup as described in “Backing Up the Interplay Engine Database”
on page 12.
> **Note:** If you deactivated your database when backing it up in Step 1, proceed to Step 5.
2. Open the Interplay Administrator tool.
3. Use the following steps to lock the database:
a. Click Lock/Unlock Databases.
b. Select the database in the Unlocked Databases list.
c. (Option) Type a Lock comment explaining why you are locking the database.
d. Click Lock Database.
4. Use the following steps to deactivate the database:
a. Click Menu in the Interplay Administration tool to see the display of Administration tool views.
b. Click Manage Databases.
c. Select the AvidWG database and click Deactivate. For an archive database, select AvidAM.
5. Use the Interplay Server Installer to update the Interplay Engine software. Follow the onscreen
instructions.
6. After you update the software, follow the procedure in “Activating the Database” on page 18.
Activating the Database After you perform the upgrade, you must activate the database. The Interplay Engine software performs any necessary database updates when you activate the database.
1. Use the Interplay Administrator tool to activate the database and perform the database upgrade
as follows:
a. Open the Interplay Administrator tool on the system running the Interplay Engine.
b. Click Manage Databases.
c. Type the following in the “Database (.pro) file to activate” text box.
\\engine_name\WG_Database$\AvidWG\AvidWG.pro \\engine_name\WG_Database$\AvidAM\AvidAM.pro (for an archive engine) For a split database, type:
\\Avid_Unity_server_name\workspace_name\AvidWG\AvidWG.pro where Avid_Unity_server_name is the NEXIS System Director.
> **Note:** You can also browse to the appropriate .pro file and then click Activate. On a cluster you must browse
from the network, not from the mount.
d. The following example shows the pathname on a system that does not have a split database.
The system name is wgb-ab.
Upgrading Interplay Software e. Make sure the option “Load Database on Activation” is checked.
f. Click Activate.
The upgrade begins. The system displays a dialog box with a progress bar that bounces from side to side while the database is being updated.
For an accurate indication of how the database upgrade is progressing, you can use an application such as Notepad to periodically view the bottom of the NXNServer.log file in the following folder:
C:\Program Files\Avid\Avid Interplay Engine\Logs\Machines\<machine_name>
> **Note:** The system will automatically unlock the database if you have Load Database on Activation selected.
g. The database upgrade can take up to several hours, depending on the size and complexity of the database. It is important not to interrupt or stop the Interplay Engine or perform a failover during the upgrade process. This could result in problems with the database. To recover from a failed or interrupted upgrade, you need a valid backup of the old database.
2. To verify that you can log onto the database, do the following:
a. Click Menu in the Interplay Administration tool.
b. Click Manage database Roles. The Manage Database Roles view opens.
Database icon c. Click the AvidWG icon (AvidAM for archive database).
d. You can tell that you have successfully logged onto the database when the database icon displays a green check mark and the users and roles are displayed as shown in the above illustration.
> **Note:** If you do not deactivate the database before the software upgrade, any automatic database upgrades
begin on your first login to the Interplay Engine after you update the software. This occurs the first time you log onto the database with any client (for example, Interplay Access or Interplay Assist).
After you type your username and password at the login screen, the system stays at a “Connecting” Upgrading Interplay Software status while it performs the upgrade. In this case, the system does not display any messages indicating that the upgrade is in progress. Do not exit the application, shut down the system, or fail- over the Interplay Engine while the upgrade is being performed.
Note that an automatic database upgrade will occur if the database is older than Interplay v3.7.
Verifying the Upgrade To verify the upgrade:
1. Depending on whether you upgraded an Interplay Engine or an Interplay Archive Engine,
navigate to one of the following locations:
C:\ProgramData\Avid\Production Management Engine\Logs\Machines\<machine name> C:\ProgramData\Avid\Archive Production Engine\Logs\Machines\<machine name>
2. Open the NXNServer.log file in Notepad.
3. Search for the text “success”. There should be a message similar to the following:
Database AvidWG has been successfully updated from version xxxxx to yyyyy where xxxxx and yyyyy are the old and new releases, respectively. The message could also say “successfully corrected”. Messages such as the following are part of the upgrade process and can be ignored.
Can't open file 'S:\Workgroup_Databases\AvidWG\_Database\Avidxxx.xxx' for reading Deleting Unused Rendered Effects After an Upgrade Starting at Interplay v2.3, the Interplay Engine does not include rendered effects as links in the database. Instead, they are displayed as emulated rendered effects in Interplay Access. For more information, see What’s New for Interplay v2.3 or the Interplay Help.
The first time you open the Interplay database after an upgrade from a version earlier than v2.3, the Interplay Engine automatically removes links for rendered effects. In a large database, this can take several hours (see “Activating the Database” on page 18). During this process, the engine also determines if there are rendered effects that are not currently in use and moves these rendered effects to one or more subfolders in the Orphan Clips folder. An administrator or media manager can then delete these assets and their media.
Each numbered subfolder contains 2,000 rendered effects each (except for the last subfolder, which can contain less). The resulting folder structure looks like the following:
Upgrading Interplay Software An administrator or media manager has two options for deleting the unused rendered effects:
(cid:129) Using the standard deletion procedure in Interplay Access.
(cid:129) Using a Windows command-line tool, which deletes both metadata and media. This tool has two advantages compared to deleting in Interplay Access:
- Deletion is faster (for example, there are fewer client-server round-trips with the tool and no need to refresh the user interface) - You can run the tool as a scheduled task. This is especially useful if there are a large number of unused rendered effects (several thousand or more).
The Windows command-line tool (delete_obsolete_rendered_effects.exe) is located in the following folder:
drive:\Program Files\Avid\Avid Interplay Engine\Server The syntax of the tool is described in the following in-line help:
*********************************************************************** delete_obsolete_rendered_effects - Deletes obsolete rendered effects.
delete_obsolete_rendered_effects [user:] [psw:] [maxAssets:] [maxTime:] This tool automates the deletion of rendered effects (including media) that were moved to the Orphan Clips folder during the database upgrade from versions prior to Interplay 2.3.
Options:
user:<user name> Name of the user to logon to AvidWG with psw:<password> Password of the user to logon to AvidWG with maxAssets:<number> (optional) Maximum number of rendered effects to delete maxTime:<minutes> (optional) Maximum run time in minutes; tool will stop deletion when this period is exceeded The maxAssets: and maxTime: options are useful if this tool is run as a scheduled task, e.g. using Windows Task Scheduler.
*********************************************************************** To run the delete tool:
1. On the Interplay Engine system (or for a cluster system, on the online node), open a Windows
Command Prompt.
2. Navigate to the location of the tool. For example, type
cd C:\Program Files\Avid\Avid Interplay Engine\Server
3. Type the command line for the tool and press Enter, using the following syntax:
delete_obsolete_rendered_effects [user:] [psw:] [maxAssets:] [maxTime:] If you want to direct the output of the tool to a file, append the following to the command:
>> output_file.txt Upgrading Interplay Software For example, to run the program for one hour and print the output in a file named results.txt, type the following and press Enter:
delete_obsolete_rendered_effects user:administrator psw:admin maxTime:60 >>results.txt If you want to schedule the tool to run at a particular time, use a program such as Windows Task Scheduler.
Additional Information About the Server Execution User The Server Execution User is a Windows operating system user account that is used to run the Interplay Engine processes. The Server Execution User is set up the first time that you install the Avid Interplay Engine software and has the following features:
(cid:129) The account must have local administration rights on the operating system for the Interplay Engine Server (both nodes on a cluster). The Interplay Engine installation software asks you for a user name and password and automatically adds the account to the Administrator Group.
Usually this is a domain account that has already been created. The account must have the following local security policy settings:
- Act as part of the operating system - Back up files and directories - Restore files and directories - Adjust memory quotas for a process - Log on as a service - Increase scheduling priority On a cluster system the account must have these permissions on both nodes. The account must be a local Administrator on both nodes.
Ideally this should be an account that human users do not use to log onto the system. This will prevent accidental changes to the Server Execution User user account during normal administration duties. For example, if someone changes the password by mistake, users may not be able to access the Interplay database.
(cid:129) An account with an identical user name and password must have read/write access to the shared storage workspaces that contain media.
> **Note:** In order to prevent accidental changes to the Server Execution User account during normal
administration duties, Avid recommends that you use a dedicated Windows user account as a Server Execution User and cluster service user. This account should not be used for administrative logins to the Interplay engine hardware.
Changing the Server Execution User The tool used to modify the Server Execution User changed for Interplay 2018.11. See “Updated Tool for Changing the Server Execution User” on page 45.
International Character Support Additional Information for Interplay Transfer Upgrades Before you upgrade Interplay Transfer to a new release: If your configuration includes playback and ingest through a third-party DHM, you must check with the third-party vendor to determine if an updated DHM is required. Existing third-party DHMs might need to be rebuilt using the latest DHM SDK for compatibility with the latest version of the Interplay Transfer Engine and the Interplay Transfer Client.
Upgrading an Interplay Transfer System to Interplay Transfer v3.x or later Interplay Transfer v3.x and later is a 64-bit application and stores profile information in .xml files. In previous releases the information was stored in registry settings. Interplay Transfer v3.x includes a tool to convert the older profiles to Interplay v3.0 profiles. Use the following procedure:
1. Install Interplay Transfer. It doesn’t matter if you uninstall the v2.7 version first or not. The
settings will remain in the registry.
2. Before you start Interplay Transcode, navigate to the following folder:
C:\Program Files\Avid\Utilities\FTPProfilesTool
3. Execute the tool.
The system stores the FTP profiles in an .xml file. Now you can start Interplay Transcode and use the profiles. The following shows the path to the new profiles file:
C:\ProgramData\Avid\GenericFTP\FtpProflies.xml Additional Information About Pro Tools For the latest information about using Pro Tools with Interplay, go to the Knowledge Base page titled “Avid Interplay Requirements With Pro Tools.” International Character Support Interplay includes international character support (ICS). ICS allows you to display and input characters in languages other than English.
Interplay applications are qualified on an English operating system running locales for the following languages:
(cid:129) Simplified Chinese and Traditional Chinese (cid:129) Japanese (cid:129) French, Italian, German, and Spanish (cid:129) Hebrew (v2017.2 and later) In an Interplay workgroup, all clients and applications must use the same locale, either English or one other locale.
Macintosh systems are not qualified for international character support (ICS) in an Interplay environment.
Multi-byte languages (Simplified Chinese, Traditional Chinese, and Japanese) are not supported by Interplay Media Services or SGL FlashNet. except as noted below.
Support for Symantec Endpoint v12.1.x and 14.0.x FlashNet v6.4.5 and later includes support for Simplified Chinese, which is qualified for use with Interplay Archive and Interplay Restore services V2.6 and later. See also “International Character Support Limitations” on page 109.
Support for Symantec Endpoint v12.1.x and 14.0.x Symantec™ Interplay supports the Antivirus and Spyware components of Endpoint v12.1.x and 14.0.x on servers and clients.
Interplay does not support the following components:
(cid:129) Proactive Threat Protection (cid:129) Network Threat Protection The Avid Knowledge Base article “Symantec on Interplay Production and Interplay Central” provides more information and describes how to install and configure it in an Interplay environment.
Microsoft Defender on Windows 2016 Server At the time of writing of this document, Microsoft Defender on Windows 2016 server is not supported and must be completely uninstalled. Avid is working towards qualifying Defender as part of an antivirus solution for a future release.
Interplay 2019.6 Server Installer Contains Some 2018.11.2 Components The Interplay 2019.6 Server installer contains three version 2018.11.2 applications:
(cid:129) Interplay Transcode 2018.11.2 (cid:129) Interplay STP Encode 2018.11.2 (cid:129) Interplay Consolidate 2018.11.2 The installers are included as the default installers for Transcode, STP Encode, and Consolidate.
After you install the applications you can view the version numbers in the Windows Add/Remove Programs view.
These three applications are also released as individual patch releases on the Avid Download Center.
Interplay Server Installer Limitations The installers for Transcode, STP Encode, and Consolidate install incorrect versions of Interplay Access.In addition, the Transcode 2018.11.2 installer installs an incorrect version of the Transfer client. After you install the applications you must verify the versions and reinstall the Access and/or Transfer client software if necessary. Use the following procedures.
> **Note:** You will need both the Interplay 2019.6 server and client installers to upgrade the STP Encode
application because you may need to install the 2019.6 Transfer client. Transcode and Consolidate only require the server installer because they only require Access.
Upgrading to MediaCentral Cloud UX 2021.3 To install STP Encode 2019.6:
1. If you are upgrading an STP Encode server, uninstall the previous version of STP Encode before
you begin.
2. Install STP Encode from the Interplay 2019.6 server installer.
STP Encode 2018.11.2 is now installed on the system.
3. Locate Interplay Access and Interplay Transfer client in the Add/Remove Programs view and
verify whether the following versions are installed:
- Access 4.3.0.11180 - Transfer Client 2019.6.0.3820
4. If the Access and Transfer client version numbers match the above values then you have
successfully updated the system. Note that the name may vary slightly but the numbers must match.
5. If the versions are not correct, uninstall the Access and/or the Transfer client application
depending on which one needs to be replaced.
6. Open the Interplay 2019.6 Client installer and install Access and the Transfer client. This will
install the following versions:
- Access 4.3.0.11180 - Transfer Client 2019.6.0.3820 Verify that the version numbers are correct and you are done.
To install Transcode or Consolidate 2019.6:
1. If you are upgrading a Transcode or Consolidate server, uninstall the previous version of the
application before you begin.
2. Install Transcode or Consolidate from the Interplay 2019.6 server installer.
Transcode or Consolidate 2018.11.2 is now installed on the system.
3. Locate Interplay Access in the Add/Remove programs view and verify whether the following
version is installed:
- Access 4.3.0.11180
4. If the Access version number is correct then you have successfully updated the system.
5. If the Access version is not correct, uninstall Access and install Access from either the 2019.6
Server installer or Client installer. The following version is installed:
- Access 4.3.0.11180 Verify that the versions are correct and you are done.
Upgrading to MediaCentral Cloud UX 2021.3 If your Production Management system is integrated with an existing MediaCentral Cloud UX system, and you are upgrading MediaCentral Cloud UX to v20201.3 or later, you must perform a remapping of the search index to enable the new search-related features that are included in this release. For more information, see v2021.3 of the Avid MediaCentral | Cloud UX ReadMe.
Upgrading Media Indexer to 2021.3 Upgrading Media Indexer to 2021.3 When upgrading a Media Indexer server to 2021.3, you must do the following:
1. Uninstall the previous version of Media Indexer. If the installer fails,
2. Delete the following folders:
- %ProgramData%\Avid\AvidMI - %ProgramFiles%\Avid\AvidMI
3. (Option) If you cannot delete %ProgramFiles%\Avid\AvidMI and, or
%ProgramData%\Avid\AvidMI, restart the OS to finish uninstalling.
4. Install the new version of Media Indexer.
This upgrade will require a full reindex of the Media Indexer. Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can take several hours.
The following guide provides information that can help you plan for the upgrade and reindex operation.
http://resources.avid.com/SupportFiles/attach/ Production_Management_Best_Practices_Guide_2020.4.pdf (cid:129) For information on estimating how long a reindex could take, see the section “Estimating the Indexing Time” (cid:129) For a procedure that explains how to perform the upgrade and reindex operation on one Media Indexer and copy the cache files to the production Media Indexers during the upgrade, see the section “Prebuilding a Cache During an Upgrade for Media Indexer v3.6.x or Higher” The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations.If you plan to use this feature in MI 2019.6 and later, use the latest Chrome browser to perform the reimport. See “Media Indexer Limitations” on page 53.
Upgrading Media Indexer to 2020.4 When upgrading a Media Indexer server to 2020.4 you must do the following:
1. Uninstall the previous version of Media Indexer. If the installer fails,
2. Delete the following folders:
- %ProgramData%\Avid\AvidMI - %ProgramFiles%\Avid\AvidMI
3. (Option) If you cannot delete %ProgramFiles%\Avid\AvidMI and, or
%ProgramData%\Avid\AvidMI, restart the OS to finish uninstalling.
4. Install the new version of Media Indexer.
Upgrading Media Indexer to 2019.6 This upgrade will require a full reindex of the Media Indexer. Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can take several hours.
The following guide provides information that can help you plan for the upgrade and reindex operation.
http://resources.avid.com/SupportFiles/attach/ Production_Management_Best_Practices_Guide_2020.4.pdf (cid:129) For information on estimating how long a reindex could take, see the section “Estimating the Indexing Time” (cid:129) For a procedure that explains how to perform the upgrade and reindex operation on one Media Indexer and copy the cache files to the production Media Indexers during the upgrade, see the section “Prebuilding a Cache During an Upgrade for Media Indexer v3.6.x or Higher” The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations.If you plan to use this feature in MI 2019.6 and later, use the latest Chrome browser to perform the reimport. See “Media Indexer Limitations” on page 53.
Upgrading Media Indexer to 2019.6 Media Indexer 2019.6 contains an updated version of MongoDB (MongoDB 4.0.8). Installing the new version requires that you delete the old MongoDB database and cache files before you begin the installation.
When upgrading a Media Indexer server to 2019.6, you must do the following:
(cid:129) Uninstall the previous version of Media Indexer (cid:129) Delete the folders C:\ProgramData\Avid\AvidMI This upgrade will require a full reindex of the Media Indexer. Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can take several hours.
The following guide provides information that can help you plan for the upgrade and reindex operation.
http://resources.avid.com/SupportFiles/attach/InterplayBestPractices_V2017_2.pdf (cid:129) For information on estimating how long a reindex could take, see the section “Estimating the Indexing Time” (cid:129) For a procedure that explains how to perform the upgrade and reindex operation on one Media Indexer and copy the cache files to the production Media Indexers during the upgrade, see the section “Prebuilding a Cache During an Upgrade for Media Indexer v3.6.x or Higher” New for Interplay Engine and Interplay Access 2021.3 The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations.If you plan to use this feature in MI 2019.6, use the latest Chrome browser to perform the reimport. See “Media Indexer Limitations” on page 53.
New for Interplay Engine and Interplay Access 2021.3 The following are new or improved for Interplay Engine and Interplay Access 2021.3:
(cid:129) Interplay Access / Admin Client improvements:
- Interplay Admin Client has New and Improved Statistic Information - Asset Visibility Option on the MediaCentral Search Connector - Interplay Access Client Supports XAVC-I 100 1080p 50 and 59.94 (cid:129) Interplay Engine improvements:
(cid:129) Delivery Provider improvements:
- “Delivery Provider Now Respects the Media Indexer Files per Folder Limitation” on (cid:129) Installer Changes:
Interplay Admin Client has New and Improved Statistic Information The Interplay Admin Client has a new and improved statistic information displayed for Extended Search Status, including separate counters for the following:
(cid:129) Asset Changes including Location Changes (cid:129) Taxonomy Changes (cid:129) Namespace Updates (cid:129) Namespace Updates (cid:129) Message Processing in Production Management (cid:129) Message Transfer to Kafka New for Interplay Engine and Interplay Access 2021.3 For more information see the topic “Configuring the MediaCentral Search Connector” in the MediaCentral | Cloud UX Installation Guide.
Interplay Access Client Supports XAVC-I 100 1080p 50 and 59.94 The Access Client has been modified so that Partial restore works with XAVC-I 100 1080p 50 and 59.94.
Asset Visibility Option on the MediaCentral Search Connector The Asset Visibility option located on the Manage Status tab of the MediaCentral Search Connector allows you to limit the results of the Search app to display only those assets for which the individual users have permission to view. If you do not enable this functionality, the search results respect the permissions of the single user that is configured in the Assign section of this window.
Avid suggests that you enable this feature only after you have upgraded all MediaCentral Cloud UX and Production Management sites in the multi-site environment to v2021.3 or later.
If you want to enable this feature you must meet the following minimum software requirements:
(cid:129) MediaCentral Cloud UX v2021.3 or later (cid:129) MediaCentral Production Management Engine v2021.3 or later (cid:129) You must install at least one instance of the v2021.3 Interplay Access client in your network to access and configure this setting in the Interplay Administrator.
For more information, see the MediaCentral | Cloud UX Installation Guide.
Support for GPT Partitions In Production Management v2021.3, we have added support for GPT partitions for the Production Management Engine Cluster shared storage RAID disks (NAS).
New for Interplay Engine and Interplay Access 2021.3 For more information, see the Interplay Engine Failover Guide (v2018 or later).
Apache Service Option (TCP) “Keep Alive” Turned On by Default In 2021.3, Production Management Engine Apache service has the option (TCP) “KeepAlive” turned on by default. This reduces the pressure on the TCP/IP system resources, both on the Production Management Engine, as well as on the Client side.
Delivery Provider Now Respects the Media Indexer Files per Folder Limitation Media Indexer puts a limitation on the number of files per folder. The maximum number of files must not be higher than 5,000. Delivery Provider is now respecting the number of files per folder (5000 files/folder).
Media Indexer Improvements Media Indexer contains the following updates in 2021.3:
STP Encode, Transcode, and Consolidate Installer Updates In this release, the installers for STP Encode v2018.11.7, Interplay Transcode v2018.11.7, and Interplay Consolidate v2018.11.7 have been upgraded to include Access 2021.3 bundled with each of them.
> **Note:** When using DATAEXTRACT via Transcode, you will not be able to use Dynamic Relink with the
resulting media/clips.
> **Note:** The installers for these components are full installers that do not require a prior installation of a
previous version.
If you are upgrading a previous installation, manually uninstall the previous version. Then install the updated version of software.
When installing these components, you must do the following.:
(cid:129) Uninstall, and then remove or rename the C:\ProgramFiles\Avid\ “App Name” folder.
(cid:129) If this is Win7 or Win2008R2 system, you must install Microsoft Update KB3125574.
Without installing the Microsoft Update, the Pace installer fails silently, and then the app will pop up iLok errors.
> **Note:** It takes 1 1/2 hours to install the Microsoft Update.
MCDS Installer Updates In this release, the installer for MCDS has been upgraded.
> **Note:** The installer for this component is a full installer that does not require a prior installation of a
previous version.
If you are upgrading a previous installation, manually uninstall the previous version. Then install the updated version of software.
New for Interplay Engine and Interplay Access 2020.4 When installing MCDS, you must do the following.:
(cid:129) Uninstall, and then remove or rename the C:\ProgramFiles\Avid\ “App Name” folder.
(cid:129) If this is Win7 or Win2008R2 system, you must install Microsoft Update KB3125574.
Without installing the Microsoft Update, the Pace installer fails silently, and then the app will pop up iLok errors.
> **Note:** It takes 1 1/2 hours to install the Microsoft Update.
New for Interplay Engine and Interplay Access 2020.4 The following are new or improved for Interplay Engine and Interplay Access 2020.4:
(cid:129) Interplay Engine usability improvements:
- Interplay Engine No Longer Creates Empty Folders in the _Master Folder (cid:129) Installer Changes:
Interplay Engine No Longer Creates Empty Folders in the _Master Folder The change in behavior is that the Engine does not anymore create empty folders in the “_Master” folder. It only creates folders when a folder actually contains a file asset.
A new tool called “clean-master.exe” is located in the Server folder of the Engine installation. It is a command line tool, and it is very simple to use:
clean_master.exe dbpath:<absolute path to database> [?|help] The dbpath parameter is one of the following:
(cid:129) (Preferably) The local path of a DB; (for example “D:\Workgroup_Databases\AvidWG”, or (cid:129) The network share of a DB (for example “\\iengine\WG_Database$\AvidWG”).
The tool must be executed with Administrator privileges, meaning the command prompt must be started with Administrator privileges.
The tool deletes all empty folders in _Master, (i.e. those which a 2020.4 Engine would not have created in the first place).The following illustration shows an example dialog.
New for Interplay Engine and Interplay Access 2019.6 STP Encode, Transcode, and Consolidate Installer Updates In this release, the installers for STP Encode v2018.11.6, Interplay Transcode v2018.11.6, and Interplay Consolidate v2018.11.6 have been upgraded to include Access 2020.4 bundled with each of them.
> **Note:** When using DATAEXTRACT via Transcode, you will not be able to use Dynamic Relink with the
resulting media/clips.
> **Note:** The installers for these components are full installers that do not require a prior installation of a
previous version.
If you are upgrading a previous installation, manually uninstall the previous version. Then install the updated version of software.
When installing these components, you must do the following.:
(cid:129) Uninstall, and then remove or rename the C:\ProgramFiles\Avid\ “App Name” folder.
(cid:129) If this is Win7 or Win2008R2 system, you must install Microsoft Update KB3125574.
Without installing the Microsoft Update, the Pace installer fails silently, and then the app will pop up iLok errors.
> **Note:** It takes 1 1/2 hours to install the Microsoft Update.
MCDS Installer Updates In this release, the installer for MCDS has been upgraded.
> **Note:** The installer for this component is a full installer that does not require a prior installation of a
previous version.
If you are upgrading a previous installation, manually uninstall the previous version. Then install the updated version of software.
When installing MCDS, you must do the following.:
(cid:129) Uninstall, and then remove or rename the C:\ProgramFiles\Avid\ “App Name” folder.
(cid:129) If this is Win7 or Win2008R2 system, you must install Microsoft Update KB3125574.
Without installing the Microsoft Update, the Pace installer fails silently, and then the app will pop up iLok errors.
> **Note:** It takes 1 1/2 hours to install the Microsoft Update.
New for Interplay Engine and Interplay Access 2019.6 The following are new or improved for Interplay Engine and Interplay Access 2019.6:
(cid:129) Engine installer usability improvements - Installer: Back Button for Installer Dialogs - Installer: Public Cluster Network Dropdown Menu - Installer: Shared Drive Dropdown Menu New for Interplay Engine and Interplay Access 2019.6 Note that you can continue to use the following document for Cluster installations:
http://resources.avid.com/SupportFiles/attach/Failover_Guide_Interplay_v2018_11.pdf The information contained in this section describe the minor changes in the installation process that you will encounter during the install.
(cid:129) Installer: Server Execution User Credentials (cid:129) Online Help Links to Latest PDF Documentation on Avid Knowledge Base (cid:129) Highly Linked Assets Search Improvements (cid:129) MediaCentral Search Connector - Cleanup Search Connector Configurations New for Interplay Engine and Interplay Access 2019.6 Installer: Back Button for Installer Dialogs The Interplay Engine 2019.6 installer contains a back button on appropriate dialogs so you can move backwards and change or verify values. The following illustration shows an example dialog.
Installer: Public Cluster Network Dropdown Menu When installing the Interplay Engine on a cluster setup, the “Avid Workgroup Server” application must be connected to the public cluster network that was defined during the cluster setup. In previous releases the documentation prompted you to rename the cluster network and write down the name because you would need to type it in later when you installed the Interplay Engine software. Starting with 2019.6, the Interplay Engine installer queries the Cluster for the available cluster networks and then lists the available name(s).
There are usually two names: a public and a private one. Select the public name and click Next to proceed.
New for Interplay Engine and Interplay Access 2019.6 Installer: Shared Drive Dropdown Menu After you select the name of the public network in the previous dialog, the installer queries the Disk Manager for the available drives and displays them in a dropdown menu. At this point you must select the shared database drive (usually S:). The following illustration shows an example setup.
> **Note:** The installer may take several minutes to open this dialog because after selecting the cluster name in
the previous dialog, the installer must query the Disk Manager for additional information.
If the shared drive is not available in the list, check the following:
(cid:129) Either the disk is under Cluster Control but not online on the node where the installation is being performed, (cid:129) Or the disk is not under Custer control yet and not online in the Disk Management.
Background: The shared drive (usually S:) is where the Interplay database and shared configuration is located. Before you begin to install The Interplay Engine software on a cluster, it is a good idea to verify that the shared drive (usually S:) is present and available to the node that the Interplay Engine software is being installed on.The dialog in this section allows you to verify that the shared drive is present and then select it to proceed with the installation. The size of the listed drives can help to identify the shared drive.
New for Interplay Engine and Interplay Access 2019.6 Installer: Server Execution User Credentials The Server Execution User (SEU) account is the user account that executes the Interplay Engine process. It is also the user that is used to delete media on NEXIS/ISIS workspaces. This should be a domain account that is not used for other purposes in your Production environment. The installer will add the account to the local Administrators group.
Starting with Interplay 2018.11, the installer will not accept the name Administrator for the SEU account name. This is necessary in order to avoid conflicts between different applications and servers that may also use the name. The following illustration shows an example name. Select one that fits the security rules of your site.
In previous releases the installer asked for the SEU account password and required a password confirmation on two separate dialogs. Now both are on the same dialog box as shown in the following illustration. The installer compares the two values entered and won’t proceed until both passwords match and the combined user name/password credentials that you are entered are validated.
Online Help Links to Latest PDF Documentation on Avid Knowledge Base The Interplay Engine and Interplay Access applications no longer provide links to online help from the Help menu. Starting in 2019.6, the Help menu provides links to the MediaCentral | Production Management Help Center page that is hosted on the Interplay Engine server. This page contains links to several locations on the Avid web site including links for training, the main entry to the Avid Knowledge Base, and the main “Landing Page” for Interplay documentation.
New for Interplay Engine and Interplay Access 2019.6 In previous releases it was not possible to update the integrated online help which led to inconsistencies between the Help and the documentation published on the Knowledge Base. The new Help Center ensures that you have access to the most up to date documentation. The following illustration shows the Help menu in the Interplay Administrator application.
Highly Linked Assets Search Improvements A highly linked asset (also referred to as highly linked object) is an asset that either has many associations (i.e. is present in many folders) or has many relatives (i.e. dependencies to other objects in the database). For example, a single clips such as a station logo may be used in a large number of sequences. At a large site, if a single asset is linked to many other assets it can slow down searches and other database operations. Access provides a method for searching for highly linked assets. In previous releases, the search only returned assets with many relatives, but not with many associations. The 2019.6 search returns both kind of objects. Note that to view and use a Highly Linked Assets search, a user must have the Administrator role. The following illustrations show how to select the search type if available.
New for Interplay Engine and Interplay Access 2019.6 MediaCentral Search Connector - Cleanup Search Connector Configurations The Administrator tool contains a MediaCentral Search Connector view. Interplay 2019.6 adds a new section to the bottom right of the view as shown in the following illustration:
The following illustration shows an enlarged view of the section.
The Configuration menu provides a list of all current and previously created search instances. For information on using the MediaCentral Search Connector and using this clean-up option, see the MediaCentral | Cloud UX Installation Guide on the Knowledge Base.
New for Interplay 2018.11 New for Interplay 2018.11 Interplay Engine Installer Changes The installation and upgrade process changed for 2018.11. See “Updating the Avid Interplay Engine Software” on page 16.
There is a new version of the Failover Guide to support Interplay v2018.11 and later:
http://resources.avid.com/SupportFiles/attach/Failover_Guide_Interplay_v2018_11.pdf Import Users Button on the Interplay Administrator Client The Import Users button allows administrators to import groups and users from MediaCentral Cloud UX. After a MediaCentral Cloud UX user or group is added to the Production database, a Production administrator must set the appropriate roles and permissions for each user and/or group. This allows an Administrator to assign roles and permission to groups before the first user of a group logs in (at which point the group would be auto-imported and inherit its roles and permissions from the parent).
This feature requires an Administrator Client and a Production Engine that has a version of 2018.11 or later.
> **Note:** If an administrator does not assign roles and permissions to a group before a member (user) of that
group logs in, then the user inherits the roles and permissions from the MEDIACENTRAL group and its direct child group(s).
To import groups of users from MediaCentral Cloud UX:
1. Open Avid Interplay Administrator and select > Interplay Server > User Management > User
Authentication Providers.
The User Authentication Providers window opens.
2. In the MediaCentral Platform Authentication section, click the Import Users button.
The Import User Groups message dialog box opens telling you that during an import other users will not be able to work on this server. Are you sure you want to import now.
New for Interplay 2018.11
3. Click OK to continue with the user import.
The Import User Groups dialog box opens with all User groups selected by default.
4. Do one of the following:
- Click to select one user group.
- Ctrl + click to select additional user groups.
- Click the Select All button (default) to select all user groups listed.
5. Click OK.
The selected user groups and their users will be imported into the Avid Interplay system.
Ability to Specify Which MediaCentral Server to Authenticate When using username / password authentication to log into PAM (for example using the Access Client) with a user imported from MediaCentral, it is possible to specify which of the configured MediaCentral Servers the Engine should use to authenticate. This is done by prefixing the username with the MediaCentral Server name, separating them with a backslash (\), For example “mon-kvm72-sha\svcadmin”.
Specifying the MediaCentral server to use is only necessary if there is more than one MediaCentral Server configured.
Avid does not recommend adding more than one MediaCentral Provider for active production systems, as certain limitations apply.
> **Note:** If more than one MediaCentral Server is configured and a login request with username / password
authentication does not specify which configured MediaCentral Server should be used to authenticate it, the login will fail and no user import or sync is performed.
For more information, see the topic “Configuring the User Authentication Providers” in the Avid MediaCentral Cloud UX Installation Guide.
Documentation Changes Connecting Media Composer to MediaCentral | UX Do not complete the following process if you are connecting Media Composer to a MediaCentral Cloud UX system.
This release of Interplay Production includes optimizations for MediaCentral UX. These optimizations effect the ability of clients, such as Media Composer, to log in to Interplay Production with a MediaCentral UX session. If you plan to connect Media Composer to Interplay Production through MediaCentral UX, you must alter the registry on the Interplay Production Engine.
Complete the following steps to update the registry on the single-server Production Engine or cluster.
If you are running a cluster, complete these steps on the cluster online node.
1. Open regedit.exe on your Production Engine to begin editing the system registry.
2. Navigate to the following key:
[HKEY_LOCAL_MACHINE\SOFTWARE\Avid Technology\Workgroup\Avid Workgroup Server\Platform]
3. Create a new registry value of type REG_SZ / String and give it the name “mcversion” (without
the quotes).
4. Double-click the new “mcversion” value and enter “mcux” (without the quotes) in the “Value
data” input field.
5. Close regedit and complete one of the following steps:
- Cluster: Stop and Start the “Avid Workgroup Monitor” resource or fail over the “Avid Workgroup Server” group the offline node.
- Standalone Engine: Either Restart the Server using the Interplay Administrator or (preferred) reboot the machine itself.
> **Note:** After you enable this change, the new user synchronization features related to MediaCentral
Authentication introduced in Interplay Production 2018.11 are disabled. To re-enable those features, you must remove the registry key and reboot the Production Engine per the process above.
Documentation Changes The following sections provide corrections or additional information that will be added to the next revision of the Interplay documentation:
Also see “New for Interplay Production v2018.11” on page 6 and “New for Interplay Engine and Interplay Access 2019.6” on page 32.
Documentation Changes Importing Certificates to Increase Security The default configuration of Media Indexer is insecure because of the following factors:
(cid:129) The Web user interface uses HTTP protocol which does not encrypt the transferred data.
(cid:129) The Server uses JMX technology with password authentication without the credential encryption.
To avoid these security issues the administrator should set up a digital certificate on the system where the Media Indexer server is running and then configure SSL properly.
For more information, see the following topics:
Configuring the SSL Certificate Media Indexer supports only PKCS#12 file format. Usually, it’s .p12, .pfx and .pkcs12 file extensions.
To configure the SSL Certificate:
1. Set up a digital certificate:
a. Use your existing SSL certificate or generate a new one, for example self-signed certificate.
b. Add the certificate’s CA to the Trusted Root Certification Authorities.
> **Note:** If you are using a certificate signed by an internal CA, the following processes might or might not be
required. Some IT departments might distribute the certificate to connected browsers and mobile devices automatically — eliminating the need to manually import the certificate. Check with your local IT department for more information on certificate policies.
2. Configure SSL properly by doing the following:
a. Open the configuration file for editing by navigating to C:\Program Files\Avid\AvidMI\state\config\feature.properties b. Uncomment these properties:
- com.avid.ummd.server.ssl.certificateKeyStore - com.avid.ummd.server.ssl.certificatePassword c. Replace the text and the angle brackets by the proper values:
- <certificate_file_path> is a full path to the certificate file without quotes. Backslashes should be escaped.
Documentation Changes - <certificate_password> is a password which was used during the generation of the certificate file.
Example:
com.avid.ummd.server.ssl.certificateKeyStore = C:\\ProgramData\\Avid\\AvidMI\\server.pkcs12 com.avid.ummd.server.ssl.certificatePassword = my_password
3. Restart Avid Interplay Media Indexer Windows service.
4. Check the certificate was installed and configured properly by doing the following:
a. Open the Media Indexer web user interface and check that your browser uses HTTPs connection.
b. Use JConsole to login into JMX RMI server, you should see the message: ‘Connection Failed: Retry?’ Generating a Self-Signed Certificate This is an example of creating the self-signed certificate. You can use custom file names for each step.
To generate a self-signed certificate:
1. Generate a RSA-2048 key and save it to a file. For example:
rootCA.key openssl genrsa -des3 -out rootCA.key 2048
2. Create a new Root SSL certificate using the key file and save it to a new one. For example
rootCA.pem
3. Create a new OpenSSL configuration file, for example server.csr.cnf (localhost is a domain
name).
[req] default_bits = 2048 prompt = no default_md = sha256 distinguished_name = dn [dn] C=US ST=RandomState L=RandomCity O=RandomOrganization OU=RandomOrganizationUnit emailAddress=hello@example.com CN = localhost
4. Create a v3.ext file in order to create a X509 v3 certificate.
authorityKeyIdentifier=keyid,issuer basicConstraints=CA:FALSE Documentation Changes keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment subjectAltName = @alt_names [alt_names] DNS.1 = localhost
5. Create a certificate key for localhost using the configuration settings stored in server.csr.cnf (this
key is stored in server.key).
openssl req -new -sha256 -nodes -out server.csr -newkey rsa:2048 -keyout server.key -config server.csr.cnf
6. A certificate signing request is issued via the root SSL certificate we created earlier to create a
domain certificate for localhost. The output is a certificate file called server.crt.
openssl x509 -req -in server.csr -CA rootCA.pem -CAkey rootCA.key - CAcreateserial -out server.crt -days 500 -sha256 -extfile v3.ext
7. Convert certificate to pkcs12 format.
penssl pkcs12 -export -out server.pkcs12 -in server.crt -inkey server.key
8. Use the server.pkcs12 certificate to configure SSL.
Adding the Certificate’s CA to the Trusted Root Certification Authorities This topic contains information on how to add the certificate’s CA to the trusted root Certification Authorities.
To add the Certificate’s CA:
1. Run Win+R and type mmc.
2. Choose File > Add/Remove Snap-in... menu.
3. Choose Certificates in the Available snap-ins menu, and double click on it.
4. Select Computer account > Local computer > Finish.
5. Click OK in the Add or Remove Snap-ins window.
6. Open Certificates (must appear after the previous actions) in the Microsoft Management
Console.
7. Right click on Trusted Root Certification Authorities -> All tasks -> Import...
8. Import the rootCA.pem.
Re-Start Interplay Access / Admin Clients Regularly It is a good practice to re-start Interplay Access Client, Interplay Admin Client, and any Interplay connected Media Composer applications regularly. These applications are not servers that are meant to run constantly for months or years. Doing so, will help avoid an issue where the Access or Admin or MDK console redirection files (<admin or access or mdk>_stderr.log and <admin or access or mdk>_stdout.log) gets so large that it fills up the C: Drive.
If these files are growing, their contents should be checked for possible errors.
Documentation Changes Authentication with Universal User Groups The following should be added to the “Avid Interplay | Engine and Interplay | Archive Engine Administration Guide.” As noted in “Setting Windows Domain Authentication and Importing Users” of the Avid Interplay | Engine and Interplay | Archive Engine Administration Guide, users included in Universal groups cannot be imported using the Windows Domain Authentication option in the Interplay Administrator.
This includes users in Universal groups that are part of the local domain. As a result, Universal groups are not supported using this method.
If you need to integrate users from Universal groups, you can use either the LDAP or MediaCentral authentication methods.
Updated Tool for Changing the Server Execution User Starting in 2018.11.2, installer packages contain an updated version of the tool used to change the Server Execution user. The tool was named NXNServerUser.exe in 2018.9 and earlier releases. The name is now EngineUserTool.cmd and it resides in the following folder as part of the installer package.
\Installers\AssetMgr\Tools.
The 2019.6 installers do not install the tool on the Interplay Engine. Avid recommends that you copy the tool to a known location on the Interplay Engine for future use.
To run the tool and change the Server Execution user, navigate to the folder containing the tool, right- click the tool and select “Run as Administrator.” Then follow the online prompts. Note that to change the Server Execution User on a cluster, you must run the tool on both nodes. The order does not matter.
Interplay Transfer Engine - Color Parameter Preservation Functionality has been added to Transfer Engine 2018.11.2 to preserve color parameters for Send To Playback and Ingest transfers. The following fields are preserved for Playback and ingest transfers.
(cid:129) Universal Labels: Transfer Characteristics, Color Primaries, and Coding Equations (cid:129) CDCI Descriptor: White Reference, Black Reference and Color Range (cid:129) RGBA Descriptor: Component Min and Component Max If a sequence contains multiple segments from different master clips and there are inconsistencies with color parameters between segments, the Transfer Engine will set the destination OP1A color parameters equal to the color parameters detected in the first segment. A warning will logged in the Transfer Engine log file.
Interplay Web Services Removed from Interplay Server Installer Interplay Web Services (IPWS) 2018.9 was the last full release of Interplay Web Services. Any additional changes to the software will be in the form of patch releases.
IPWS 2018.9 is compatible with 2018.11.x. You can obtain the IPWS installer and Readme from the Installers\WebServices folder on the Interplay 2018.9 server installer.
Documentation Changes Update to the Interplay Transfer D10_PROFILE Playback profile Documentation The following information must be added to the “FTP Server Dialog Box Settings Used to Create and FTP Server Profile” section of the Interplay Transfer Setup and User’s Guide:
The D10_Profile will force the Transfer Engine to create audio as a single AES3 sound track with a maximum of four or eight channels in compliance with the SMPTE-386M specification. Four channels are generated for 24 bit audio and eight tracks for 16 bit audio.
Compatibility with MediaCentral Versions The following formation is listed in the What’s New for Interplay 2018.6 documentation and is added here for additional visibility. Also see the following document:
http://resources.avid.com/SupportFiles/attach/Whats_New_Interplay_V2018_6.pdf Interplay Engine 2018.6 and 2018.11 support the following MediaCentral versions:
(cid:129) MediaCentral Cloud UX 2018.6 and higher (cid:129) MediaCentral UX v2.10.x One Interplay Production environment can connect to two MediaCentral systems: one running MediaCentral Cloud UX and one running MediaCentral UX v2.10.x.
Connecting to a MediaCentral UX 2.10.x System In order to connect Interplay Production 2018.6 or 2018.11 to a MediaCentral UX 2.10.x environment, do the following:
(cid:129) Install Interplay Access 2017.2 on at least one system in the Interplay Production 2018.6 or 2018.11 environment.
(cid:129) Use the Interplay 2017.2 Admin tool (available within Access) to configure the PEBCo connection to Media Central UX 2.10.x environment.
This will enable searches between Interplay Production 2018.6 (or 2018.11) and Media Index in the MediaCentral UX 2.10.x environment. You can also use the 2017.2 Admin tool to connect to the MediaCentral UX 2.10.x Messaging application.
> **Note:** Do not install Interplay Access 2017.2 and Interplay 2018.6 or higher on the same system.
Modified Interplay Admin Tool Views The following Interplay Admin tool views were changed for Interplay 2018.6:
(cid:129) Production Engine Bus Connector (PEBCo) is replaced by the MediaCentral Search Connector in the MediaCentral Platform Settings view.
(cid:129) The MediaCentral UX Messaging application available in MediaCentral UX 2.10.x is supported by Interplay 2018.6 and higher but the settings are removed from the Interplay 2018.6 Admin tool. You can use the 2017.2 Admin tool to connect to the MediaCentral UX 2.10.x Messaging application as described in the previous section.
Documentation Changes Configuring Settings for MediaCentral Cloud UX The Production Engine Bus Connector (PEBCo) and Media Index application used to configure searches between MediaCentral UX and Interplay Production were replaced by the MediaCentral Search Connector in MediaCentral Cloud UX. This change occurred in Interplay Production 2018.6.
In order to enable search from MediaCentral Cloud UX, the following Admin tool views must be configured:
(cid:129) User Management > User Authentication Providers > MediaCentral Platform Authentication (cid:129) Site Settings > MediaCentral Platform Settings > MediaCentral Connection (cid:129) Server > Server Settings (cid:129) Site Settings > MediaCentral Search Connector For details on configuring these views, see the MediaCentral Cloud UX Installation Guide.
Manually Uninstall Interplay Components Before Upgrading The Avid Interplay | Production Software Installation and Configuration Guide states that you should use the Interplay Production installers to uninstall the previous versions of software components.
Avid recommends that you use the operating system to manually uninstall the components.
Track Count in FTP Media Browse Tool Prior to the Transfer Engine 2018.6 release, the track count displayed in the FTP Browser channels, 8 tracks were displayed in the FTP browser. The FTP Browser now displays the actual track count of the clip. In this case it would be 4 tracks.
The following illustration shows the difference for the same clip as displayed in 2017.2 and 2018.6.
The clip contains 5 tracks and each track contains 2 channels. In 2017.2 this showed as 10 tracks.
Now it correctly shows 5 tracks.
Fixed in 2021.3 Do Not Disable Indexing of Custom Properties Interplay Administrator v3.8 through 2017.2 included an Indexed column on the Custom Metadata tab, as shown below.
One purpose of the Indexed column is to give an administrator the option of not including the custom property in the Interplay Engine’s internal Indexed search mechanism.
Interplay 2018.6 removes the Indexed column from the Interplay Admin tool. However, if you view the Interplay 2018.6 with a version of Access 3.8 through 2017.2 you may still see the Indexed column.
DO NOT deselect the Indexed check box for any custom property unless instructed to do so by Avid Customer Care.
If a custom property is not included in the Indexed search, any user search that contains that property has the potential to be very slow. Even if a custom property is deselected in the Available column or the Text Search column, it should still be selected in the Indexed column and thus included in the Indexed search, except under special circumstances.
Fixed in 2021.3 The following fixes were in this release.
Interplay Access / Admin Client The following fixes require an update to the Interplay Access / Admin client:
a Bug Number: ASSETS-2806. Check-in auto-reservations now do not create reservations on system folders and special folders (Catalogs, Projects, etc). This new behavior can be disabled for single or all clients if desired or necessary. If the new behavior conflicts with established workflows, please contact Avid support for instructions on how to disable it.
a Bug Number: ASSETS-2855. We now prevent merging attribute values that are too large into an AAF on check-out. Previously, this might cause issues in applications like Media Composer, but now these values will be shortened before checking out / exporting into such applications. The goal was to prevent AAFs that cannot be opened by Media Composer. The part of the attribute value that is too large is discarded.
Fixed in 2021.3 a Bug Number: IPI-3040. In the Interplay Administrator tool, if you configure Media Indexer hostnames settings with different versions of the Interplay Administrator (one must be version 2020.4.1 and one older), the Media Indexer “Server MI Connection URL” shows different values depending used Administrator version.
The 2021.3 Administrator detects if the “Server MI Connection URL” was overwritten with older (than 2020.4.1) Administrator and offers a choice to keep or overwrite this setting.
a Bug Number: IPI-2913. Deleting an AMA resolution turns an online clip into partially online if it has offline native resolutions.
Archive/Restore The following fixes require an update to Archive/Restore:
a Bug Number: ICE-1097. XAVC-I 100 1080p 50 and 59.94 are not working in a Production Management Archive partial restore.
Delivery Provider The following fixes require an update to Delivery Provider:
a Bug Number: IPI-2674. Delivery Provider was leaving numerous files in a folder on connected shared storage.
Media Indexer The following fixes require an update to Media Indexer:
a Used INFO log level by default for all loggers.
a Bug Number: IPI-2162. Media Indexer JMX RMI server does not use a custom certificate. For more information on how to install one, see “Importing Certificates to Increase Security” on page 42.
a Bug Number: IPI-2994. The Media Indexer service, when run as the shared storage scanning service, fails to perform a service stop command.
a Bug Number: IPI-3022. Media Indexer is causing system slowness, resulting in that, on occasion, Media Composer clients cannot login to the system until the Media Indexer is rebooted. In addition, there are issues with STP_Encode reporting Media Offline and check-out failures. A Media Indexer restart is required to get everything operational.
a Bug Number: IPI-3033. Media Indexer Format Independent data is missing from the A1 media track.
a Bug Number: IPI-3066. Media Indexer v2020.4.3 causes FastServe generated (FSI) audio media to be offline during Edit While Capture (EWC). Once FastServe has completed with recording, all media, including audio, is available to all clients.
a Bug Number: IPI-3079. Pro Tools media is offline in Media Composer with Media Indexer v2020.4.3.
Fixed in 2020.4 a Bug Number: SAK-439. Some time ago, we changed the version format from three points to two points and a dash. This caused some unexpected issues with connections to Media Indexer which were caused because QM internally sets up its features using the three points version string which has been returned by GetMediaIndexerInfo(). So, to fix this, we changed the Align version of Media Indexer in GetMediaIndexerInfo back to the three points format.
Fixed in 2020.4 Maintenance Cleanup Tool - Delete File Assets The following fixes are in the Maintenance Cleanup Tool:
a Bug Number: IPI-2545. When trying to run the Maintenance Cleanup tool “Delete File Assets” the user / administrator must adhere to the displayed WARNING: “Do NOT run this cleanup operation in case Capture is used!”. Ignoring this warning will cause data loss in the Capture Server.
Archive/Restore The following fixes require an update to Archive/Restore:
a Bug Number: IPI-2805. When performing a partial restore of master clips with multiple audio tracks that reference multiple source IDs, while loading the master clip (or a sequence that contains it), with dynamic relink enabled, the following exception error occurs multiple times, requiring the user to click Continue multiple times to bypass.
Assertion failed: fileMobTrackNbr != NULL_TRACKNBR File: e:
\ws2\workspace\MC\Release_Installer_Git\Win_Build\coresw\ame\src\msmdb\QMFIQualityManag erImpl.cpp, Line: 4073 Unable to render embedded object: File (FaulttScreenshot1.png) not found.(dynamic relink enabled) Media Indexer The following fixes require an update to Media Indexer:
a Bug Number: IPMI-10483. The Media Indexer daily build contains a lower of media files than release 2018.11.1.
a Bug Number: IPI-2848. Media Indexer installation fails during Microsoft C++ 2013 portion of the install.
Limitations Limitations For International Character Set (ICS) limitations, see “International Character Support Limitations” on page 109.
Limitations for 2021.3 The following limitations are related to 2021.3 Interplay Access Client The following limitations were found in Interplay Access Client:
a Bug Number: IPI-3199. The 2021.3 / 2021.3.1 Access installer does not install the “xquartz-osx- pkg-x86_64” package on macOS. This results in the Access application failing to launch.
Workaround: To resolve this issue, either install “xquartz-osx-pkg-x86_64” before/after installation of Access 2021.3.x, or install a prior version of Access (e.g. 2020.4) and then reinstall 2021.3.x.
a Bug Number: IPI-2962. If the Clip Tool is used for selected clips, this results in a partially Online status in Interplay Access.
Delivery Provider The following limitations were found in Deliver Provider:
a Bug Number: IPI-3509. Very large, complex sequences that are sent to Delivery fail at 0% with a JXDK timeout error.
Production Management Engine The following limitations were found in Production Management Engine:
a Bug Number: IPI-3067. The MediaCentral Production Management v2020.4.3 or later installer fails if a newer version of Microsoft Visual C++ 2015-2019 Redistributable (x64) is already installed.
Workaround: Uninstall the newer version of Microsoft Visual C++ 2015-2019 Redistributable (x64) - 14.27.29016, and install MediaCentral Production Management After uninstalling the newer version, the 2020.4.3 or later Production Management installation successfully completes.
Media Indexer The following limitations were found in Media Indexer:
a Bug Number: SAK-348. Media Indexer 2020.4 seems to ignore priority for workspace. On a fresh start and new release installed, the logging shows logging against a workspace that is very low in the display by priority on the Media Indexer Web Page. The legacy desired operations are for new content (Ingesting materials, for example) to get first media indexer data extractions attended to in a state where there is a backlog of activity to attend to Limitations Example: A large workspace with legacy content is added to the scan tables and news programming is recording and editing to a different workspace. The Shared Storage 10 second notifications on the news production should take president over the legacy added workspace for Media Indexer processing.
a Bug Number: SAK-466. The Media Indexer installer displays an error trying to update MS Visual C++ 2012 Update 4. This error may appear on some systems that have an existing MSVS 2012 installed. Press the Yes button to proceed with the Media Indexer installation.
Interplay Transcode a The following limitations were found in Interplay Transcode:
Bug Number: IPI-3102. Interplay Transcode does not support the DNxHR SQ and DNxHR HQ resolutions in Production Management v2021.3 and Interplay Production v2018.11.7.
Limitations for 2020.4 The following limitations are related to 2020.4.
Production Management Installer a Bug Number: RELENG-3176. When unzipped, the Production Management installer might include long file path names that are incompatible with some versions of Windows. If you need to copy unzipped installation packages from one location to another, Windows 10 and Windows 2016 provide a registry setting that allows for these long path names.
You can find this setting under: Computer Configuration > Admin Templates > System > FileSystem > Enable Win32 long paths Production Management (macOs) Client Components Not Supported on Catalina Production Management (macOS) client components are not supported on Catalina.
Interplay Transcode a Bug Number: IPI-2764. When bringing in 1080i content with logged markers, when transcoding, using Interplay Transcode, with a profile set for Crossrate, the markers are preserved, but the Timecode changes from Master (military) to Absolute.
Media Composer does not exhibit this issue and leaves the Timecode as is when cross rate transcoding.
Workaround: Use Media Composer to transcode the content.
Media Indexer a Bug Number: IPI-2862. Due to the potential of a high memory use instance while the reporting is being generated, it is important to note that this report should only be run on “Not in Production” host systems, and definitely not during high production times Limitations a Bug Number: IPI-2883, IPMI-10529. There are many open threads after one or two days when performing Media Indexing operations. After one or two days, there are not useful actions to or from the server.
Production Automation Service a Bug Number: RELENG-3260. When running the Production Automation Service installer from the main Install Media | Index Support page, you will get the error “Avid Interplay Production Service Automation installation has failed.” Workaround: Uninstall Production Automation Service, and run the installer from the main installer.
Limitations for 2019.6 The following limitations are related to 2019.6.
Archiving of Large AAF Files Causes Production Systems Failure a Bug Number: IPI-2530. There are two expected conditions where a failure of the production systems may occur from the processing of either large AAF composition data, or corrupted items.
Because there is no one to one relationship to equate the elements in composition to the amount of Java memory required to process the data, Avid cannot offer solid guidance to what should be within the limitations of the systems.
Should there be a failures in processing (send to archive, transcode, copy, move, etc,) an element that is complex. the recommendation is to re-try the action with a shortened version of the element. For most production needs, this will nominally achieve the desired end goal.
Transcode, STP Encode, and Consolidate 2018.11.2 Install Incorrect Versions of Access and TM Client For details, see “Interplay 2019.6 Server Installer Contains Some 2018.11.2 Components” on page 24.
Media Indexer Limitations a Bug Number: IPI-2555. Importing a previously exported storage configuration requires that you use the latest Chrome browser to connect to the Media Indexer web interface. Happens when using Internet Explorer.
Workaround: Use Chrome updated to the latest version and the reimport works as expected.
a Bug Number: IPI-2690. Google Chrome is the only supported Web Browser when working with Media Indexer web functions.
Interplay Engine Installer a Bug Number: IPI-2391. Sometimes it is possible that a database setting change in the Interplay Admin Client does not “stick” when the Interplay Engine is shut down (Standalone) or taken offline / failed over (Cluster) immediately after you make this change. If that is encountered the setting must be reapplied.
Limitations Workaround: If it is necessary to shut down the Engine directly after changing a setting, quickly login with an admin user and simply create and delete a dummy folder (before the shutdown). If necessary, use Exclusive Access mode for the login so that no other/normal user can connect at the same time.
STP Encode a Bug Number: ICI-2360. After installing STP Encode, the first Send to playback through MediaCentral Cloud UX could fail in the STP Encode process with the following error:
Remote STP failed: Unknown exception (in "preprocess" phase) Workaround:
Restart the STP Encode Provider and/or restart the MCDS service Limitations for Version 2018.11 The following limitations are related to 2018.11.
Interplay Transfer Server and Client Before installing Transfer Engine 2018.11, it is recommended that you uninstall previous versions of Transfer Engine and Application Manager through Programs and Features.
Transfer Client Send to Playback to Studio and DNS Aliases a Bug Number: IPI-2371. STP to Studio fails if using DNS aliases.
Bug Description: If you create aliases in DNS for Airspeeds, i.e. studio-1 and studio-2, STP to Airspeed studio setup fails with this error:
"Exception: SendToPlayback cannot retrieve device capabilities" Workaround:
(cid:129) When setting up an Airspeed Studio, all Airspeeds in the Studio must have the same name plus a dash number appended to the name. For example: Airspeed-1, Airspeed-2, Airspeed-3. To achieve this follow these steps:
1. In the editor, under Settings/Transfer/tmclient.ini tab, select Other Workgroup Edit.
2. Next, set Server name to "Airspeed[3]" and enter the workgroup name.
(cid:129) If you wish to configure a studio with Airspeeds that do not follow the "same name plus dash number" naming convention, you can configure it as follows, for example, for devices named JoesAirspeed, productionAirspeed and backupAirspeed:
1. In the editor, under Settings/Transfer/tmclient.ini tab, select Other Workgroup Edit.
2. Next, set Server name to "MyStudio {JoesAirspeed:productionAirspeed:backupAirspeed}" and
enter the workgroup name. In the editor STP device dropdown menu "MyStudio" will appear.
3. If you select "MyStudio" as a destination, the STP will be triggered to all three devices as it does
for all studio configured devices.
Limitations Limitations for Version 2018.9 MediaCentral Ingest Antivirus Threat Protection (formerly Media Director) MediaCentral Ingest can be used with Avid Supported Antivirus solutions as outlined in the “Using Antivirus Software in an Interplay and MediaCentral Environment” document on the Avid Knowledge Base. Please note that suitable exclusion rules must be configured; also some real-time scanning features need to be restricted as documented in the guide.
Most importantly, the Antivirus solution must be configured to not scan shared ISIS or NEXIS workspaces.
> **Note:** At the time of writing of this document, Microsoft Defender on Windows 2016 server is not supported
and must be completely uninstalled. Avid is working towards qualifying Defender as part of an antivirus solution for a future release.
Archive/Restore Provider Limitations The installer may not automatically install one of the required Microsoft Visual Studio runtime libraries and you may need to install it manually. If the application does not archive or restore media and responds with a message such as “media is already online,” check that both of the following Visual Studio 2017 Redistributables are present in Control Panel > Programs and Features:
(cid:129) Microsoft Visual C++ 2017 Redistributable (x64) (cid:129) Microsoft Visual C++ 2017 Redistributable (x86) Both should be present in the list. If one is not present, manually run the installer from the following folder on the Archive Provider installer:
<installer location>Interplay_Archive_Provider_2018.6.1.61435\ISSetupPrerequisites After running the installer, restart the Archive Provider service.
> **Note:** If the manual installation fails, verify that Windows Updates are up to date on the system. If not, run
the updates and then run the 2017 Redistributable installer again.
Limitations for Version 2018.6 Uninstall before Upgrading Interplay Client Applications When upgrading Interplay client applications, always perform an uninstall before the upgrade. Note that you should not uninstall the Interplay Engine or Archive Engine before upgrading.
DNxHR and XAVC-I UHDTV 4k resolutions a Bug Number: DEFI-345, DEFI-430. DNxHR and XAVC-I UHDTV 4k resolutions are now supported in Interplay Transcode with the following limitations:
(cid:129) (DEFI-345) The version of Transcode used by Media Composer Cloud Remote does not support these formats at this time.
(cid:129) (DEFI-430) When using XAVC-I UHDTV as a target, you cannot transcode the same clip to both CBC and VBR.
Limitations Interplay Transfer a Bug Number: none. Sony AVC Intra 4K resolutions are not yet qualified for Interplay Transfer ingest or playout.
Install Limitation on Transfer Engine Clients The installer for Interplay Transfer clients is different depending on the editor version.
(cid:129) For Media Composer 2018.5 and earlier, use the installer named TransferClient_2018.6_VC12.
Note that this installer is only available in the Standalone Transfer installer package.
(cid:129) For Media Composer 2018.5.1 and later, use the installer named TransferClient_2018.6. Note that this installer is available on the Interplay Transfer client installer and the Standalone Transfer installer package.
The reason for the different installers is that Interplay Transfer client 2018.6 uses a new version of Microsoft Visual Studio associated with Media Composer releases v2018.5.1 and later.
Media Indexer a Bug Number: IPMI-7775. A Media Indexer within the NOMI may hang if it is shutdown before removing it from the NOMI.
Production Services a Bug Number: IPI-1841. Interplay Transcode mixdown of sequences containing XAVC-I LongG fail with “media offline or in wrong format” error.
a Bug Number: IPI-2021. Partial restores of sequences modified by Pro Tools fail to restore.
Workaround: perform a full restore.
a Bug Number: IPI-2024. STP Encode operations from MediaCentral Cloud UX fail with sequences containing EWC (edit while capture) masterclips.
a Bug Number: DEFI-120, IPI-1974. If you launch a Transcode instance from the automatically created desktop shortcuts, a Windows configuration message is displayed.
Workaround: The Interplay Transcode installer does not create desktop shortcuts correctly. Create desktop shortcuts manually.
Media Composer Cloud Remote a Bug Number: IPI-2170. The MacOS installer for Media Composer Cloud installs an older version of Media Indexer.
Workaround: Manually install Media Indexer 2018.6 on MacOS Media Composer Cloud Remote clients.
a Bug Number: MCDEV-9222. When logging onto Media Composer Cloud Remote, if the system encounters an error, sometimes a Mac2QT error may be displayed first. You can dismiss the Mac2QT error since it may be obscuring an more meaningful error message.
Limitations Limitations for Version 2017.2 Move - Upgrading Move from v2017.2 Fails a Bug Number: IPI-2820. Installing any version of Move on top of existing Move v2017.2 service as an upgrade installation fails. No files are updated, but the version is changed in Program and Features.
Workaround: To work around this issue, do the following:
1. Manually uninstall the previous version before installing the new version.
> **Note:** Uninstalling it afterwards does not remove any of the files.
2. If uninstall did not remove the files, remove the files manually from the installation location, and
reinstall the new version.
STP a Bug Number: ASSETS-1292. Send to playback of AVC Long GOP 50 1080p 50 assets from MediaCentral UX 2.10.5 requires a special tool to be executed once on a system where Interplay Access is installed. For more information, contact your Avid representative.
STP Encode a Bug Number: IPI-1975. In Media Composer, in an AVC Long GOP 1080p 50 project, create a sequence with an imported matte key and perform an STP operation using STP Encode. The job succeeds but the matte keys are not displayed at the destination.
Workaround: In Media Composer, do a video mixdown of the video tracks and replace the video tracks with the video mixdown in the sequence. The STP Encode operation will succeed and the matte keys are displayed.
a Bug Number: IPI-1977. In Media Composer, in an AVC Long GOP 1080p 50 project, create a sequence with a title and perform an STP operation using STP Encode. The job fails with the following error: “Failed to open file from STP/DET transfer.” Workaround: In Media Composer, do a video mixdown of the video tracks and replace the video tracks with the video mixdown in the sequence. The STP Encode operation will succeed and the matte keys are displayed.
a Bug Number: IPI-1968, IPI-1969. Hebrew characters are not supported for Video ID or Tape ID.
(cid:129) (IPI-1968) If you perform an STP operation using STP Encode from Assist, the job fails with the error message “Error: File CompositionToken cannot be converted...” (cid:129) (IPI-1969) If you perform an STP operation using STP Encode from Media Composer, the job fails with the error message “Transfer Error: ASMS TransferWorker: Run: Unable to open file manager for file...” Transcode a Bug Number: IPI-1974. If you launch a Transcode instance from the automatically created desktop shortcuts, a Windows configuration message is displayed.
Limitations Workaround: Create desktop shortcuts manually.
Limitations for Version 3.8 Interplay | Consolidate a Bug Number: PAM-5720. In MediaCentral UX, if you submit a Deliver to Me job for a job that was already sent with the same parameters, the job might fail with the following incorrect error message:
“Exception: The operation could not proceed because some clips are offline or are the wrong format.” Workaround: Restart Interplay Consolidate and submit the job again.
a Bug Number: PAM-5721. In MediaCentral UX, if you successfully submit a Deliver to Me job for a job that was already sent with the same parameters, a new clip will be created in the destination workgroup with the same media that was created in the first job.
a Bug Number: PAM-5722. In MediaCentral UX, if you submit a Deliver to Me job, and the Consolidate profile includes a handle value (for example, 30 frames), the handle value is ignored.
Interplay | Copy a Bug Number: IPI-1795. Using a Copy profile set to a specific AudioQuality does not copy an imported still graphic to another workgroup.
Workaround: In the profile, set the AudioQuality to All.
Interplay | Production Services a Bug Number: IPI-1816. Media Composer v8.9 and later uses new labels for DNxHR media that includes the frame rate (see “DNxHR Resolutions Supported in Interplay | Production” in the Interplay |Production Best Practices Guide). Interplay Production Services v3.8 does not support operations that use these new labels (such as archiving DNxHR media created in Media Composer v8.9).
Interplay | Restore, Interplay | Delivery a Bug Number: IPI-1747. After a partial restore, Media Composer might show "Media Offline" for transition effects. If you try the restore job again, a message says that all media is online.
(IPI-1778) This limitation also applies to partial delivery.
Workaround: Use full restore or full delivery.
Interplay | Transcode a Bug Number: PAM-5586. Using Interplay Transcode for an AVC-LongG clip captured through Interplay Capture might fail with the error message “Exception:
MXF_DIDMapperSegmented::GetParsedIndexTableSegmented - Unable to parse the Index Table.” Limitations a Bug Number: IPI-1885. An Interplay Transcode mixdown to H.264 proxy can take much longer than expected for multi-resolution clips. For example, a 30-second sequence composed of XAVC Long GOP clips takes about 30 seconds to mixdown to H.264. If the clips are also associated with XDCAM media, the sequence can take 8 or 9 minutes.
a Bug Number: IPI-1060. Interplay Transcode fails to completely mixdown a Media Composer sequence that has been collapsed to V1 with filler at the beginning. The job completes successfully, but the resulting clip contains only audio.
a Bug Number: IPI-1802. An Interplay Transcode mixdown might fail to mixdown a complex sequence if clips are linked to XDCAM HD 50 Mbits media. The job fails with the error “Exception:
In playloop - no progress aborting transcode 0 0 3285.” Interplay | Transfer a Bug Number: ARC-1688. Transfer Engine ingest does not support channel counts that are not uniform across audio tracks.
a Bug Number: IPI-1735. Some OP1a files from Omneon have a negative number for duration in the FTP Browser.
Media Indexer a Bug Number: IPMI-6697, IPMI-6706. An upgrade installation for Media Indexer appears to fail when the MI service is not stopped manually before the upgrade installation is triggered.
Workaround: Do one of the following:
(cid:129) Manually stop the MI service before running the upgrade installation.
(cid:129) Or uninstall the Media Indexer application before performing the installation.
a Bug Number: IPMI-6476, IPMI-6962. MI v3.8 and greater uses Java8. Java8 requires the application XQuartz and MI automatically installs XQuartz when installed on a Mac. However, when you uninstall MI, it does not uninstall XQuartz.
a Bug Number: IPMI-7053. Multicast issue: If the Media Indexer runs on a system that has multiple network interface configurations, Multicast may chose the wrong network configurations by default.
This can result in the problems with Media Indexer elections when there is more than one in the NOMI.
STP Encode a Bug Number: PAM-5860. When performing an STP operation to an Interplay Transfer engine (rather than an AirSpeed 5000/5500), the job fails with the error “Exception: FATAL_ERROR, msg:Invalid aspect ratio, file:..\..\src\XdcamExport\XdcamExport.cpp, line:755.” a Bug Number: IPI-1773. A sequence created in Media Composer containing a SubCap effect, and sent to playback via STP Encode to an AirSpeed system, does not include the SubCap text in the AirSpeed media.
> **Note:** This issue was fixed in STP Encode v3.8.1.
Limitations Limitations for Version 3.7 Interplay | Restore a Bug Number: PAM-3895. (Partial Restore) Under certain circumstances, the partial restore of a sequence that has been modified since the previous partial restore won't bring back all of the expected media. This occurs when the amount of material added is greater than the "Archive Segment Size" set in Interplay Administrator.
Media Indexer a Bug Number: IPMI-6076. The FI (format independence) database (MongoDB) does not support media files which are lacking the physicalTrackNumber attribute at the physical source mob level.
These files are associated with Pro Tools. Note that the classic MI database continues to recognize the files.
The MongoDB database supports Media Composer v8.6.x and later. The classic MI database supports Media Composer versions earlier than v8.6.x. The following limitations apply:
(cid:129) Media Composer v8.6.x and higher cannot use these files in an Interplay environment (cid:129) Media Composer versions earlier than v8.6.x recognize the files.
MediaCentral | UX STP a Bug Number: PAM-4493. If an XDCAM-HD clip name contains the ICS characters äöüß€ in the clip name, and a sequence containing the clip is sent to an AirSpeed playback device (STP), the characters do not appear correctly on the Airspeed device.
a Bug Number: PAM-4723. An STP operation that includes AVC-LongG in-progress (EWC) clips might fail with the message “Remote STP process failed: Exception: The operation could not proceed because some clips are offline or are the wrong format. (in "wait audiomixdown" phase).” This problem occurs for clips that are recorded through AirSpeed 5000 and Interplay Capture that include a D track (data track).
Interplay | Production Services Engine a Bug Number: PAM-4789. Before you import or export profiles in the Production Services Engine, stop the Production Services Engine service (named “Avid Interplay Production Services Engine”) in the Windows Services tab. If not, the Profiles tab might enter a loop that displays a Save Profile dialog when you select a provider service.
Limitations for Version 3.6 AVC-LongG (cid:129) Partial Restore and Partial Delivery are not supported. The full clip is restored or delivered.
(cid:129) (PAM-3743) AVC-Long G sequence splicing is supported only for direct playout with Airspeed (TMF). Using STP Encode to convert AVC-Long G sequences into MXF OP1a is not supported.
If you attempt a conversion, the job fails.
Generating OP1a or OP-ATOM media from the bitstream sent to Airspeed (TMF) is also not supported.
Limitations (cid:129) Transcoding AVC-LongG resolutions to AVCIBP-BLL3.0 and 8:1 is not supported.
(cid:129) Transcoding from one AVC-LongG resolution to another (for example, AVC-LongG 25 to 50) is not supported. An error is reported that media with the target resolution already exists (although it does not).
a Bug Number: PAM-3973. (Found in v3.6.1) A dual mixdown transcode fails when an AVC-LongG resolution is listed as the second resolution for mixdown (TargetVideoQualityDual). The reported error is “Exception: No compressed data format found for specified VCID and video format.” Workaround: In the Transcode profile, list the AVC-LongG resolution first (TargetVideoQuality).
Interplay | Restore a Bug Number: PAM-2730. In some circumstances, if not all files are restored, the job is still reported as successfully completed.
Interplay | Transcode a Bug Number: PAM-2998. Audio track effect plugins added to audio tracks in Media Composer are missing after an Interplay Transcode mixdown.
a Bug Number: PAM-2333. AMA clips transcoded to MXF do not display options for Archive, Restore, Copy or Move in Interplay Access.
Workaround: Use Media Composer to perform these operations.
Media Indexer MI Compatibility with other components: Do not run an MI v3.6 server in an Interplay v3.5 or earlier environment. If running an MI 3.6 server in an environment with < 8.6 Media Composer and < 3.6 Interplay core components, the following might happen:
(cid:129) DynamicRelink to LongG and any format that is not supported in that Interplay Production system throws an exception (Unable to get VCID). There is no way to link back to supported formats.
(cid:129) Clips linked to formats that are not supported by the current Interplay Production version won't link to anything else.
(cid:129) Resync for unsupported formats creates an asset in Orphan Media folder with no video listed in file locations tab (cid:129) Resync for a mix of supported and unsupported formats results in only supported resolutions being recognized; status shows yellow until “Update Status from MI.” MI changes for video format support: Media Indexer v3.6.x now recognizes video formats that do not have a video codec ID. In earlier releases it had limited support to a few specific variations of this type of material. With MI v3.6.x, Panasonic AVC-LongG is one of these new supported formats.
Interplay v3.6.x applications and services, as well as Media Composer v8.6.x are all tuned to work with the new material. If you are running an Interplay environment earlier than v3.6 and your workflow includes AVC-LongG then you should upgrade to the newer Interplay and editor versions.
Do not bring the MI v3.6.x application back into an earlier Interplay release. If there are any of the new formats (supported or unsupported) on storage areas that MI monitors, this may result in applications earlier than v3.6.x / v8.6.x being unable to properly link to any media at all.
Limitations Uninstalling MI: On Windows, MI might not uninstall unless the MI MongoDB windows service is stopped. This can be done manually as follows.
(cid:129) To stop the process, execute the following command in a command window:
sc stop “Avid Interplay Media Indexer MongoDB” (cid:129) To start the process, execute the following command in a command window:
sc start “Avid Interplay Media Indexer MongoDB” MI RAM Requirements: RAM requirements for an MI server are now 32 GB minimum.
MI Support for more than 16 audio tracks: This feature was introduced in MI v3.5 when Media Composer v8.5 increased its limit for supported audio track count to 64. When mixing Media Composer v8.5 or later with older MI versions (pre v3.5), audio media might appear as offline. This is fixed in an MI patch MI v3.4.3. Note that other applications are affected in the same way, when they internally reuse Media Composer components (e.g. Transcode, MediaCentral) based on that version of Media Composer.
Indexing: Indexing storage locations can take approximately twice as long with Media Indexer v3.6 compared to previous releases.
Monitoring Capacity for Media Indexer: See the Interplay Best Practices Guide v3.7 or later.
STP Encode a Bug Number: PAM-3754. The Airspeed playback format needs to be set to the STP Encode format.
If not, the STP Encode job will process to 67% or so, then freeze in status window indefinitely.
a Bug Number: IPI-1562. If you send an STP job to an AirSpeed studio through STP Encode, the job fails with the error "Incompatible Transfer Manager API version, error, the server is not responding." This is caused by the version of the Transfer Client that is installed with STP Encode.
To fix this problem, install Transfer Client v3.6.2 or later on the STP Encode server.
Interplay Transfer Client and Media Composer Mac OS Media Composer v8.6 and Interplay Transfer Client v3.6 are not working properly together on the Mac OS. You will not be able to link media with AMA plug-ins if you install Interplay Transfer Client v3.6 on your Media Composer v8.6 system.
If you inadvertently installed the Interplay Transfer Client v3.6 on your editing system and you need to link media, you can manually remove the file below to deactivate the Interplay Transfer client.
Macintosh HD/Library/Application Support/Avid/libMOG_Framework.dylib.2.2.16 After you remove the file, restart your editing application. This will allow Media Composer to work with AMA plugins. However the STP context menu will still be visible and STP won't work.
Media Composer (cid:129) Media Composer v8.6 requires Interplay Access v3.6 or later to log into Interplay Production v3.6 and earlier.
(cid:129) Media Composer v8.6 on Mac OS does not support send to playback (STP) of AVC-LongG media.
Limitations a Bug Number: MCDEV-5872 . (Media Composer) You might receive an “assertion failed” error when playing into the Capture In Progress section of the clip.
Workaround: Scrub back to the available media.
Limitations for Version 3.5 a Bug Number: IPI-1208. In some cases, an Interplay Engine software license fails to activate and the Interplay Engine cannot be used. If this happens, contact your Avid representative.
a Bug Number: PAM-2839. If the .ini file for a Production Services provider is corrupt, the Settings button in the provider window does not open the Settings dialog box. This limitation applies to the following services:
(cid:129) Interplay Transcode (cid:129) Interplay STP Encode (cid:129) Interplay Consolidate Workaround: Delete the .ini file and start the provider again. Files are located in the following folders:
Service Path for .ini File and Log Files Interplay | Consolidate C:\ProgramData\Avid\Consolidate Service\DMSConsolidate.ini Interplay | STP Encode C:\ProgramData\Avid\Avid Interplay STP Encode\STPEncode.ini Interplay | Transcode C:\ProgramData\Avid\Transcode Service\DMSTranscode.ini a Bug Number: PAM-2778. If you are using Interplay Transcode with letter-mounted ISIS drives, and you start a Transcode job for which media already exists in the selected resolution, the job completes and creates a duplicate set of media.
Workaround: Reinstall Interplay Transcode and select UNC-mounted drives.
a Bug Number: IPAM-794. In Interplay Access on Mac OS X, if you use the rollback feature on a sequence, the clips and effects for the rolled back sequence are not updated as references or relatives.
Workaround: On Media Composer, load the sequence in the desired format, make sure media is online, then check in the sequence.
Limitations for Version 3.4 Media Indexer v3.4 supports AMA Panasonic LongG media with the following limitation:
AMA media that has a non-zero origin (for example, media with precharge) is not supported by MI v3.4 or any earlier version of Media Indexer. This media will be offline in Media Composer with dynamic relink.
a Bug Number: IPMI-2239. Media Indexer. If you move a local folder that Media indexer is currently monitoring to an unindexed location, the MI will no longer monitor the folder. Note that this is a limitation for all MI v3.x versions. Workaround: Reconfigure the folder for the Media Indexer.
Limitations Limitations for Version 3.3 a Bug Number: IPAM-286. (Interplay Access) If you use Interplay Move to move media files from one folder on ISIS to another, then try to play the asset, streaming playback does not work and Interplay Access hangs. Setting a locator on the clip also causes Interplay Access to hang.
Workaround: Select “Update Status from Media Indexer.” a Bug Number: TRPT-871. Memory requirements for Interplay Transcode increased in v3.3. If you are running multiple instances of Interplay Transcode on the same system, compare the RAM requirements of Transcode to the RAM of the system. For example, four instances of Transcode might require greater than 12 GB of RAM.
a Bug Number: MCCET-746. (Media Composer and Production Services). Interplay Production v3.3 added an Interplay Administrator setting labeled “Use background checkin from editors” (Editing Settings tab of the Application Database Settings view). This setting applies only to Media Composer clients running v8.4. If this setting is enabled, an editing system running a version of Media Composer earlier than v8.4 cannot use any Production Services. If you attempt a Production Services operation, a message stating “Waiting for checkin completion” hangs the system and must be canceled before you can continue.
Workaround: Do one of the following:
(cid:129) Enable the background check-in setting for the workgroup and disable background check-in for clients earlier than v8.4.
(cid:129) Disable the background check-in setting for the workgroup and enable background check-in for individual v8.4 clients.
To enable or disable background check-in on the client, in the Media Composer Console window, type bgcheckin. This command toggles background check-in on or off.
Limitations for Version 3.1 a Bug Number: UDevC00185832. Interplay Transcode v3.1 has been changed to run as a Windows application, rather than a Windows service. This addresses a problem transcoding AMA media using third-party storage.
a Bug Number: UDevC00185502. Spanned AMA media appears as partially offline. When you are working with spanned AMA media on an Avid editing application in an Interplay environment, the clip may appear as partially offline after you perform an AMA link. Only the first span you linked to will be online.
Workaround: Check the clip into the Interplay database. The remainder of the spans will now be online.
Background: When you perform an AMA link for media that is on either an ISIS workspace or licensed third-party storage, the system automatically creates .spaaf files for the clip and checks the clip into “Unchecked in Avid Assets” folder on the Interplay database. For a spanned clip, the system only creates .spaaf files for the first span you select. When you check the clip into Interplay, the system creates the .spaaf files for the remaining spans and the clip appears online.
Limitations a Bug Number: UDevC00183684. Update Status from Media Indexer: A subclip with fewer tracks than its relative masterclip will display as partially online (BlueDot) after 'Update Status from Media Indexer".
Workaround: Check the subclip back into the Interplay database. The clip will no longer appear as partially offline.
a Bug Number: UDevC00185719. If you are a Media Composer Cloud client in remote mode, working with local AMA clips, and you attempt to check these clips in to Interplay while they are linked to AMA media, you might get the following error message: "Error saving composition to Asset mngr. Failed to copy SPAAF and OMAAF to MI index folder!" If you upload these clips or edit them into a sequence and upload the sequence, you might also get this error, but in this case the upload succeeds, the objects check in correctly, and are usable by other users.
Workaround: For uploads, dismiss the errors and ignore them. To check in AMA clips, upload them instead of checking them in.
a Bug Number: UDevC00185917. If you use Interplay Administrator to open the Avid Service Configuration utility, then edit settings for an Auto Production service, an error message is displayed:
“Apply failed.” However, the setting was applied and persists.
Workaround: Open the Avid Service Configuration utility from the Start menu.
Using Interplay Copy with ISIS v4.5 Starting at ISIS v4.5, the default behavior is to perform data verification for Copy operations. When data verification is active, ISIS verifies each file write operation by performing a read after the write is finished. This causes a problem for Edit While Copy operations for Interplay v2.x and v3.0.x. The Copy server can’t read the file because the file is open for write only. The workaround is to turn off ISIS data verification on the Copy server using the following procedure.
To turn off data verification on the Copy server:
1. On the Copy server, quit the Copy Server application
2. Run regedit and modify the following registry key as shown:
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AvidFos\Parameters] "FastCopyCtlFlags"=dword:00000000
3. Re-start the Copy Server.
This turns off data verification on the Copy server and allows you to use the Edit While Copy feature.
Limitations for Version 3.0.5 a Bug Number: UDevC00182045. Dynamic Relink to “1:1 MXF” in an editor HD project may not work if the clip was transcoded to 1:1 MXF using Interplay Transcode or Sphere. The reason is that Interplay Transcode uses the 1:1 MXF profile option to create an SD resolution.
Workaround: If you want to be able use Interplay Transcode and then relink to “1:1 MXF” in the editor, transcode to “8bit HD Uncompressed X”, where X = 1080i, 1080p, or 720p.
Limitations a Bug Number: UDevC00181285. The currently supported version of the SGL FlashNet client is v6.1.52. This version requires 2008 SQL Native Client and does not support 2012 SQL Native Client.
Production Services Engine 3.0.5 and later uses 2012 SQL Native Client. You can run Interplay Archive/Restore with the FlashNet client on the same server as Production Services Engine v3.0.5 or later, because 2008 SQL Native Client and 2012 SQL Native Client can co-exist on the same server.
If the FlashNet client software is already installed when you install 2008 SQL Native Client, re- install the FlashNet client software.
a Bug Number: UDevC00181901. Dynamic Relink and spanned AMA material: If you use Dynamic Relink to link to spanned P2 files, the system displays an “assertion failed” error message and relinking to the AMA material does not occur.
Workaround: Use AMA to link to the original AMA file as follow:
(cid:129) In the editor application, select File > AMA Link (cid:129) Navigate to the workspace that contains the AMA source file and link to the file.
a Bug Number: UDevC00174958. (Interplay Administrator) The maintenance task “Remove Duplicated Locators” might list sequences that do not have duplicated locators. This can happen because the task checks all checked-in versions of a sequence, not only the most recent version.
a Bug Number: UDevC00171149, IPMI-1856. Limitation: The Media Indexer does not report indexed file locations properly when they contain international characters in their file or folder names and are indexed on a Mac OS X system. The reported path to the file does not match the path on the files system. Non-standard characters replace the international characters and the resulting path cannot be used to located the media.
a Bug Number: UDevC00170453. (Interplay Administrator) In versions prior to v3.0, if a Metadata Only backup was executed on a new database without previous backups, an exception message was displayed and the backup was not listed in the Backup History. An exception is no longer displayed, but the backup is still not listed in the Backup History.
a Bug Number: UDevC00184269. Copying files during ingest (chained ingest) with Interplay Copy v3.0.5 fails when using a v4.6 or v4.6.1 ISIS client. Workaround:
1. Quit the Interplay Copy service.
2. Open regedit.exe, and create the following key:
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AvidFos\Parameters] "FastCopyCtlFlags"=dword:00000000
3. Restart the Interplay Copy service.
Limitations for Version 3.0 a Bug Number: UDevC00179322. When connecting to the Media Indexer server from an editor system, the editor system must be able to resolve the hostname of the Media Indexer server via DNS.
If the editor system cannot resolve the hostname of the MI server, the MI server will not be added to the local MI configuration.
Limitations This problem can occur if the MI server is identified via IP address in the Interplay Administrator tool. In this case if the editor systems can’t resolve the IP address to the server name, the MI server will not be added to the local MI configuration. Note that it is not sufficient that you can ping the IP address of the MI server. You must be able to ping the MI server hostname from the editor system.
a Bug Number: UDevC0018081. If the audio track of a sequence is linked to AMA material and the video is linked to MXF material, you cannot check the sequence into Interplay. This same problem exists for AMA video and MXF audio.
Workaround: Link both the audio and video to either AMA or MXF and you can check the sequence into Interplay.
a Bug Number: UDevC00179996. If you load an AMA-linked clip into a monitor, then enable Dynamic Relink and set the Preferred media format in the Dynamic Relink Settings dialog box to “Any native media,” the media displays as offline. This is as designed. If there is no native MXF or OMF media to display, the AMA-linked clips only display when you select AMA as the preferred media format.
a Bug Number: UDevC00173783. (Assist) 1080p/23.976 sequences converted to 1080i/60 fail when attempting to send to playback (STP).
1. Create a sequence created in a Media Composer 1080p 23.97 project.
2. Open a new 1080i/60 project, and load the sequence in the Timeline. Render the sequence and
check it in to Interplay.
3. In Interplay Assist, check out the sequence and try to perform an STP. The process fails with an
error stating that assets are not available in the target resolution.
Workaround: Send the sequence to playback using Media Composer or NewsCutter.
a Bug Number: UDevC00180264. Interplay Access on Mac requires the Avid Service Framework (ASF) for the Update Status from Media Indexer command. Starting at Interplay v3.0, a Mac OS X editing client can connect to the Media indexer HAG without installing ASF. However, if you plan to use the command Update Status from Media indexer on Access on the Mac client, you must configure ASF. There are two ways to do this:
(cid:129) If your Interplay environment has only one Lookup Service, you can run the configure.sh script to add the workgroup name and the name of the Lookup Service.
(cid:129) If your system has two Lookup services, you must run the Interplay Administrator tool as root to add both Lookup services. The configure.sh command only configures for one Lookup service.
For details on using these tools, see What’s New for Interplay v3.0 or the Interplay v3.0 Installation and Configuration Guide.
a Bug Number: UDevC00180039. Media Indexer limitation: When you check in an AMA file, the system does not create .spaaf files if the workspace for .spaaf files is not mounted correctly on the ISIS client.
Before you begin to check the AMA files into Interplay, you must manually create the top level folder for the .spaaf files and configure the Media Indexer to index that folder. Avid recommends that you dedicate a specific workspace for the spaaf files.
Limitations The spaaf workspace on ISIS must be mounted and accessible by the editing user on the editing machine. On a Mac OS X system, the workspace must be mounted using the same name as the workspace. The checkin will fail if this condition is not met.
The following shows mount point examples for a workspace named “spaafFiles”:
(cid:129) Correct: /Volumes/spaafFiles (cid:129) Incorrect: /Volumes/spaafFiles1 The incorrect mount point can occur if you have duplicate workspace names. The ISIS client adds a digit to a workspace name if it encounters a duplicate name. This can happen if you have two ISIS systems. Avoid duplicate workspace names.
a Bug Number: UDevC00177304, UDevC00177598. Subclips created from group clips and group clips composed of subclips are not supported by Interplay Transfer or Interplay Media Services.
a Bug Number: UDevC00176256. (Interplay Access) If you play a multi-resolution clip that includes multiple streamable segments, only the longest streamable segment is played. This is as designed.
a Bug Number: UDevC00171337. (Interplay Access) Interplay Access lets you set Mark In and Mark Out on offline regions of a clip and then create a subclip or add the segment to a shotlist. If you then save the subclip or sequence, the offline region is removed from the subclip or sequence, but there is no warning or message.
a Bug Number: UDevC00171342. (Interplay Access) If two different Access clients are playing the same master clip, and one client deletes the clip and media files, playback on the second client stops after a brief delay and the Play button blinks intermittently. No message is displayed until the user on the second client reloads the clip.
a Bug Number: UDevC00169913. (Interplay Access) In the Assets pane, you can drag and drop an asset on an unused part of a tab. An error message appears telling you it is an invalid destination.
a Bug Number: UDevC00135065, UDevC00150388. Airspeed Multi Stream Studio -HD configurations: When configuring an AirSpeed Multi Stream Studio -HD target for Instinct or Assist users, if the Interplay Transfer Settings view does not contain a Transfer Engine, then Instinct and Assist users will not see the studio-HD target in the Send to Playback menu.
Workaround: In the Interplay Administrator, open Site Settings > Interplay Transfer Settings, and specify a Transfer Engine or AirSpeed Multi Stream as the “Primary Transfer Engine for Editors,” as shown in the following illustration.
Limitations Then restart Instinct or Assist.
a Bug Number: UDevC00172995. (Interplay Administrator) Deleted rendered effects are not included in the Deletion Statistics tab of the Database Information view in the Interplay Administrator. Deleted rendered effects are not listed in the AvMetaDataDelete.log.
a Bug Number: UDevC00175692. (Interplay Administrator) In the Site Settings > Interplay Transfer Settings view, if you edit the “Cache Hostname” field with new characters, the Apply button remains grayed out, so that you cannot save your changes.
Workaround: Click in a white field on the page to activate the Apply button.
a Bug Number: UDevC00180685. (Interplay Access, Macintosh) The following keyboard shortcuts do not work as documented:
Keyboard Shortcut Documented Behavior Actual Behavior Option+Command+Q Go to Mark In Access closes Shift+Command+N Go to next locator No response Shift+Command+B Go to previous locator Messenger window opens Limitations These commands also do not work as documented in Access v2.7.
a Bug Number: UDevC00176670. (Interplay Access) If you set In and Out marks on a a clip while it is being captured (in-progress EWC clip), and there is not sufficient material captured within the marks, you cannot create a subclip. The UI displays a tooltip that you can’t create a subclip while capturing, but it displays the wrong In and Out timecode values.
Workaround: Mark In and Out for already captured material.
a Bug Number: UDevC0018027. You can no longer preview Deko File types in Interplay Access. In Interplay v3.0, *.dko files can still be checked into the Interplay database as file assets. However, you can no longer preview the graphic in interplay Access.
a Bug Number: UDevC00180359. (Avid editing systems) A user on a Media Composer or NewsCutter system can delete media for checked-in rendered effects, even if the user does not have deletion rights to the asset in the Interplay database. Although user rights are not checked for assets, media reservations (marked by red dots in Interplay Access) are active and not affected by this bug.
Limitations for Version 2.7 a Bug Number: UDevC00172604. Interplay Sphere install option for Delivery Receiver: If you perform an upgrade of the Delivery Receiver software, the installer does not upgrade or install Web Services (required for Sphere support).
Workaround: When upgrading Delivery Receiver software to include Sphere support, uninstall Delivery Receiver first and then perform the installation a Bug Number: UDevC00175371. (Interplay Engine) The Interplay Engine includes a default set of licenses for installation use, which is visible when you install a new Interplay Engine and open the Interplay Administrator Licenses view. This default set includes Key-EA, which is not currently used. If this license key is displayed, unneeded settings are also displayed, on the Server Hostname Settings View page, under Interplay Integration Service.
After you install the customer’s licenses, this license key and the unneeded settings no longer appear.
> **Note:** Under some circumstances Key-CI might be displayed. This license is not currently used.
a GB of space left on the drive that hosts the log files. This is usually the C: drive. This is not a critical error but the MI will only keep the current day’s log files when this occurs.
Starting at Interplay v2.6, the MI automatically zips and stores its log files. If there is less than 10 GB free space on the drive that stores the log and cache files, the MI starts removing zip files, oldest first, until more than 10 GB is free. Note that the current day’s archive is not removed. For additional information, see What’s New for Interplay v2.6 on the Avid Knowledge Base.
a Bug Number: UDevC00172309. Interplay Sphere: After you upload a clip, the original clip may not show the local media path in Access.
Workaround: After you perform a remote upload of a clip, check the original clip into Interplay from the editor and then check it out. Now when you view the clip in Access the clip will show the local media path in the Access Object Inspector.
Limitations a Bug Number: UDevC00158274, UDevC00157438 . STP with Studio can fail if one TM in the Studio stops running. This problem can occur if you send one of the following jobs to an AirSpeed Multi Stream Studio:
(cid:129) Any sequence sent as a foreground encode job (cid:129) STP Encode of an XDCAM HD sequence If the Interplay Transfer service on any of the AirSpeed Multi Stream systems in the Studio stops, the job will fail with either a “kCancel” or “Transfer Failed” error. This happens even if the Interplay Transfer service on the system processing the job is still running.
a Bug Number: UDevC00170420. Interplay Access: The Help menu is not active until you select an item in the Access window.
Workaround: Select a database in the tree view and the Help menu becomes active.
a Bug Number: UDevC00161587. (Telestream Flip Factory) On an AS3000 running Windows 7, Flip Factory v7.2 fails to start the Flip Engine if Gold Disk policies are enabled. This blocks operation of Flip Factory.
a Bug Number: UDevC00163110. If you uninstall any of the Media Services Auto Services, then open the Avid System Framework Workgroup Properties, an error message is displayed, saying that the auto services are not properly registered. Workaround: Use regedit to delete the following registry keys:
(cid:129) HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Prefs\avid\workgroups\avid technology incorporated\data\com\avid\workgroup\activation\windows\services\autoarchive (cid:129) HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Prefs\avid\workgroups\avid technology incorporated\data\com\avid\workgroup\activation\windows\services\ avidinterplayautomediaservices (cid:129) HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\JavaSoft\Prefs\avid\workgroups\avtid echnology incorporated\data\com\avid\workgroup\activation\windows\services\ autoarchive (cid:129) HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\JavaSoft\Prefs\avid\workgroups\avtid echnology incorporated\data\com\avid\workgroup\activation\windows\services\ avidinterplayautomediaservices a Bug Number: UDevC00170654. (Avid editing systems) You might receive an error “Unable to delete database node” when trying to delete a resolution for a dynamically relinked clip.
1. If a clip is associated with several resolutions, dynamically relink to resolution A.
2. Right-click the clip and select Reveal File, then delete the media file that is associated with
resolution A.
3. Dynamically relink to resolution B.
4. Transcode the clip to resolution A and check it in.
5. Right-click the clip and select Reveal File, then attempt to delete the media file that is associated
with resolution A.
An error “Unable to delete database node” is displayed. This occurs because the editor is trying to delete media using the old file location that is offline. Workaround: use Interplay Access to delete the media file.
Limitations a Bug Number: UDevC00174511. (Avid editing systems) Markers (locators) added to a Data track are not preserved when checking the clip into Interplay.
a Bug Number: UDevC00171248. (Capture Manager) If a folder name in Capture Manager contains more than 25 characters, the folder name is trimmed to 25 characters after the folder is checked into Interplay. This occurs because Capture Manager limits folder names to 25 characters.
a Bug Number: UDevC00171874. (Interplay Archive/Restore) A duplicated clip (new metadata that points to the same media as another clip) that has not been archived cannot be restored.
Workaround: Archive the duplicate clip.
a Bug Number: UDevC00172883. (Interplay Archive and FlashNet) Archiving or restoring jobs with a large number of media files (5,000 or more) might fail with a bad descriptor error.
Workaround: Disable the HSS setting.
a Bug Number: UDevC00172470. When sending clips with Chinese characters in the .mxf filename or workspace name, the job fails with a third-party error from the FlashNet client. This occurs when the Interplay Archive provider is set to Simplified Chinese in the “Language for non-Unicode programs” setting in the Administrative tab of the Region and Language Control Panel. This is the correct method for the provider configuration.
Workaround: Set the “Language for non-Unicode programs” to English and retry the job.
a Bug Number: UDevC00172934. (Interplay Assist and Avid Instinct) Assist and Instinct might not launch after a clean install and might display the error “InitializedAME () failed.” Workaround: Check for NVIDIA driver version 275.89. If you still get an error, reinstall the NVIDIA driver.
> **Note:** Interplay Assist and Avid Instinct must be installed and launched for the first time by a user with
Administrator rights.
To check the NVIDIA display driver version:
1. Right-click the desktop and select NVIDIA Control Panel.
You can also open the Windows Control Panel and double-click the NVIDIA Control Panel icon.
2. Click System Information at the bottom left corner of the NVIDIA Control Panel.
The version number is listed in the Graphics card information section on the ForceWare version line.
To install the NVIDIA display driver:
1. Navigate to Program Files\Avid\Utilities\nVidia.
2. Double-click the file for the applicable driver.
3. Follow the on-screen instructions to unzip the file and install the driver.
4. When the installation is finished, restart your system.
Limitations Macintosh Editors a Bug Number: UDevC00144800. You cannot perform Send to Playback to an AirSpeed Studio on a Mac editor. If you add an AirSpeed Studio to the Mac editor’s transfer settings, the Studio does not appear in the Send to Playback dropdown menu. Note that this limitation also applies to AirSpeed Multi Stream.
a Bug Number: UDevC00132571. Macintosh editors on Interplay: If you open Workgroup Properties on a Macintosh system, the Services tab does not include options to view the status of the Avid services running on the local computer, or to start, stop, restart, enable, or disable local services.
Currently, the only service running on the Macintosh client is Media Indexer.
Workaround: In Workgroup Properties, click the Lookup tab. Click edit, then click Apply. The service is stopped and restarted.
a Bug Number: UDevC00142838. Mac editors and MPEG4 media: Mac editors cannot use Dynamic Relink to link to MPEG4 media captured from a dual ingest. The system displays an Assertion error.
You can continue through the error dialog but the MPEG4 media does not link.
Limitations for Version 2.6 a Bug Number: UDevC00168989. (Avid editing applications and Interplay on Macintosh) If you try to change the name of the Lookup Server (LUS) listed in the Workgroup Properties on an Apple Macintosh system, the following error is displayed after you click the Apply button:
“unexpected failure to store workgroups” To change the name of the LUS:
1. Uninstall Media Indexer. See the Avid Interplay Installation and Configuration Guide or the
Interplay Help for instructions.
2. Delete the following file:
/Library/Preferences/avid.workgroups.avid technology incorporated.plist
3. Reinstall Media Indexer as described in the documentation listed in step 1. Make sure you enter
the correct name of the LUS.
a Bug Number: UDevC00167507. (Avid editing systems) In Media Composer v6.1, when the user right-clicks an object in a bin and selects Media Services > service_name, if the Interplay workgroup includes a large number of Media Services profiles, some profiles could be offscreen.
Workaround: Drag the bin to a different location, then try the operation again. Alternatively, select the bin object, then select File > Media Services > service_name.
a Bug Number: UDevC00168120. (Avid editing systems) Stereoscopic clips created from a simultaneous left/right capture do not load in an editing system if dynamic relink is enabled. An error message is displayed. As a workaround, disable dynamic relink. Note: Clips created manually or from QuickTime movies load and play correctly.
a Bug Number: UDevC00170490. (Interplay Assist) If you add a restriction with a comment to a stereoscopic clip in Interplay Assist and save the file, then open the file again in Assist or an Avid editing application, the restriction markers are displayed but the comment is not displayed.
Limitations a Bug Number: UDevC00170817. (Documentation) The following keyboard shortcuts are incorrectly documented in the Avid Interplay Access User’s Guide and the Interplay Help.
(cid:129) With focus in the monitor: “Enter” starts playback from beginning instead of adding a locator.
(cid:129) With focus in the monitor: “5” edits the timecode overlay instead of starting playback (cid:129) With focus in the monitor: Up Arrow causes jump to previous locator instead of next one and Down Arrow causes jump to next locator instead of previous one.
a Bug Number: UDevC00170515. Archive Engine upgrade install problem: If you cancel an upgrade installation of the Archive Engine, the existing Archive Engine will have problems starting and you will not be able to import your Interplay licenses. The problem occurs if you cancel the installation at the Welcome screen for the installer.
Workaround: Reinstall the Archive Engine and reboot as usual.
a Bug Number: UDevC00163110. Auto Media Services: After you uninstall Auto Media Services, the Avid Service Framework displays a message that the application is still registered. This is because the uninstaller leaves the following four registry keys behind:
HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Prefs\avid\workgroups\avid technology incorporated\data\com\avid\workgroup\activation\windows\services\autoarchive HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Prefs\avid\workgroups\avid technology incorporated\data\com\avid\workgroup\activation\windows\services\ avidinterplayautomediaservices HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\JavaSoft\Prefs\avid\workgroups\ avid technology incorporated\data\com\avid\workgroup\activation\windows\ services\autoarchive HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\JavaSoft\Prefs\avid\workgroups \avid technology incorporated\data\com\avid\workgroup\activation\windows\services\ avidinterplayautomediaservices Workaround: Ask an administrator or your Avid representative to remove the four registry keys.
a Bug Number: UDevC00169950. Workgroup to Workgroup Transfers occasionally fail and leave media files in the following temp directory on the sending workgroup:
<drive>:\Avid MediaFiles\MXF\<TM_Name>\temp a Bug Number: UDevC00170653. When you click on the Pro Tools Interplay Client installer, the system displays the following error:
On Preload, Line10: attempt to concatenate global_PTGUID Workaround: Click OK and continue with the installation. The problem is only related to starting the installer.
a Bug Number: UDevC00165058. Interplay Transfer: When configuring FTP servers, you must edit the Interplay Transfer Configuration tool as an Administrator. Otherwise the registry keys created from the FTP servers will be placed in the wrong directory and Transfer Manager will be unable to use them.
Limitations a Bug Number: UDevC00149462, UDevC00166857. FTP Media Browse strips ICS characters from the name when sending to a K2 server. The problem occurs for both single byte and multi byte characters.
a Bug Number: UDevC00161489. Send to Playback of an XDCAM HD sequence fails if it contains either 8 or 16 audio tracks The problem also occurs for XDCAM HD sequences with a surround sound track.
Workaround: For the 8 or 16 track sequences, mixing down two or more for a total of 7 or 15 works.
For the surround sound track, if you split the surround sound track to mono (6 tracks), you can send the sequence successfully.
a Bug Number: UDevC00168889. The Interplay Transfer Status window in Access does not show the correct status for a transferred clip. It shows as offline status even though the job transfers successfully.
Media Indexer Limitations for Interplay v2.6 a Bug Number: UDevC00171147. The UTest Tabledump report is missing some entries and other entries are duplicated. The UTest tool is typically used by Avid Customer Support as a diagnostic tool. The following problems exist for the Interplay v2.6 version of UTest:
(cid:129) Information about media files in the indexed workspace subfolders is duplicated.
(cid:129) The reports don’t include information about files in the root of the indexed local workspace.
a Bug Number: UDevC00171148. Media Indexer web user interface: In the Storage Browser panel, the Quality Description popup does not display details about the Quality ID when you right-click the entry in the list. Instead it displays “Undefined”.
a Bug Number: UDevC00171161. Media indexer Archived Log Files: The What’s New for Interplay v2.6 guide describes how Media Indexer automatically archives log files to a separate folder. If there is less than 10 GB free space on the drive that hosts the log files, Media Indexer reports an error situation and will only retain the current day’s log.
a Bug Number: UDevC00169997. Avid editing applications: You cannot delete local media from a bin after the clip was consolidated to an ISIS workspace in Interplay.
Workaround: The media can be deleted using the Avid editing application Media tool and the media can be deleted from the bin if you are in disconnected mode.
a Bug Number: UDevC00170600. Avid editing applications: Media can become offline in the Avid editing application when moving media files between different ISIS workspaces (same or different ISIS) when the path information of source and target file below the workspace folder is the same.
Media will come online again when reopening the project in the editing application after the move operation.
a Bug Number: UDevC00171149. Media Indexer does not report indexed file locations properly when they contain international characters in their file or folder names and are indexed locally on a Macintosh system.
a Bug Number: UDevC00171162. You cannot use the Media Indexer web user interface to manage the order of priority for Storage Locations.
Limitations Workaround: Use the Avid Service Framework Service Configuration tool for this operation.
a Bug Number: UDevC00171168. Media Indexer: The Media Indexer logs Java runtime garbage collector output to a file at the following location:
%Program Files%/Avid/AvidMI/bin/garbage-collector.log For Interplay v2.6, the file will keep on growing in size as long as the MI process is running. Upon restart, the file will be set back to zero length (0 bytes) and start growing again. When the MI process is running for a very long time, this could fill up the local drive.
Workaround: If you restart the Media Indexer at the recommended intervals (once a month) the file will be automatically deleted. In an emergency situation, do the following:
(cid:129) Open the file in a text file editor such as Notepad.
(cid:129) Delete the content in the text file editor (cid:129) Save the file.
Note that moving the file is not possible while the Media Indexer is running.
Limitations for Version 2.5 For 24p proxy limitations, see “Limitations for 24p Proxy Resolutions (Version 2.5 and Later)” on page 77.
a Bug Number: UDevC00145287. After sending a sequence with an ancillary data track to a K2 Media Server, if you bring the sequence back to Interplay via FTP Media Browse, the sequence no longer contains VANC data in the D-track.
a Bug Number: UDevC00161432. Using EWC on a Mac editor: After an EWC clip completes recording you must select it and choose Update from Interplay in order to display the completed clip icon in the bin. If you do this on a Mac editor, the system may display an "Exception: MXF DIDMapper" error. If this happens, the clip will not play.
Workaround: Do one of the following and the clip should appear correctly in the bin:
(cid:129) Close and reopen the bin:
(cid:129) Close and restart the editing application.
a Bug Number: UDevC00149861. If you perform a Send to Workgroup operation and specify "Other" workgroup option, only the first clip will transfer correctly. The remainder of the clips will return an error stating that the TM doesn't have information for the specified device.
Workaround: Send one clip at a time using the "Other" option or define a specific device for workgroup Transfers and specify that device.
a Bug Number: UDevC00161485. Interplay Access on Mac OS 10.7 does not have an uninstaller.
Workaround: Do the following to remove the Access application:
(cid:129) Delete the entire Interplay Access folder from the following location:
Applications\Avid\Avid Interplay Access (cid:129) Delete the Access shortcut from the Dock.
Limitations a Bug Number: UDevC00149984. If you link to the low res proxy during an EWC and use the JKL keys to move across the edge of the recording, the system may become stuck on the Capture in Progress slide. If this happens you cannot recover until you reload the clip.
Workaround: Do one the following:
(cid:129) If the recording is still in progress, link to the high res media and then switch back to low res. Or toggle the video monitor on and off.
(cid:129) If the recording has completed you may receive Assertion Failed or Decomp errors when you attempt to use Update from Interplay. In this case, restart the editing application.
a Bug Number: UDevC00164931. Windows 7: Can't locate Media Indexer on Avid editor after first install. After an initial installation of the editor and Interplay support software, the editing application may fail to locate the Media Indexer. This can happen if some of the Avid Service Framework services have not started correctly.
Workaround: Open the Workgroup Properties tool on the editor and check whether any of the services are not running. Restart any services as required. Then restart the Avid editing application again. You may have to do this the first few times that you start the editor. After a few times the services will begin starting automatically, even after a reboot.
a resolutions. A partial restore or partial delivery restores the entire clip.
a Bug Number: UDevC00157027. In some cases, an online audio clip is displayed as partially online (blue dot). This might occur with audio clips that were imported into an editing system from a CD. If you play the clip and check it in to the Interplay database, it is displayed as fully online (green dot).
After you select “Update Status from Media Indexer” the clip appears partially online. The audio plays correctly in either case.
a Bug Number: UDevC00163282. Interplay Assist cannot play sequences created in an Avid editing system that contain surround sound clips if the Audio Monitoring Mix Mode is set to Direct Out.
Workaround: Set the Audio Monitoring Mix Mode to Mono or Stereo.
> **Note:** Interplay Assist can play surround sound clips as Direct Out, and can create and play shotlists that
contain surround sound clips.
Limitations for 24p Proxy Resolutions (Version 2.5 and Later) a Bug Number: UDevC00163299. Clips and sequences that use 720p/23.976p proxy media cannot be streamed in the Interplay Access monitor. These clips and sequences can be played in Avid editing systems.
a Bug Number: UDevC00163297. Proxy media created from clips imported into a 720p/23.976 project on an Avid editing system (such as an .mov file) is not fully streamable in Interplay Access.
Workaround: Import the file into a 1080p/23.976 project, transcode the clip to 720p/23.976 HD, and then transcode it to 720p/23.976 proxy.
Limitations a Bug Number: UDevC00165576. 1080i /59.94 clips that you transcode to 720p/23.976 on an Avid editing system do not support multirez or dynamic relink. Media Services Transcode fails to transcode the 720p/23.976 media to a different resolution. In an Avid editing system, you can transcode to a different resolution but you can only link to the newly created resolution.
Workaround: Use a Media Services Transcode CROSSRATE profile to transcode the 1080i/59.94 clips to 720p/23.976.
a Bug Number: UDevC00165842. AMA clips that you transcode in a 720p/23.976 project on an Avid editing system cannot link to partially restored media. For example, in a 720p/23.976 project, transcode a P2 or XDCAM clip to DNxHD 60, use Interplay Transcode to transcode to H.264, archive the DNxHD media, delete the DNxHD media, and dynamically relink to the H.264 media. If you then create a sequence using the clip and do a partial restore of the DNxHD media, the sequence does not dynamically relink to the restored DNxHD media.
Workaround: Do a full restore of the clips.
a Bug Number: UDevC00165784. You receive errors if you try to render a sequence converted from 720p/23.976 to 1080i/59.94. For example, in a 720p project on an Avid editing system, create a sequence from AMA clips converted from 1080i, change the format of the sequence to 1080i/59.94, and open the sequence in a 1080i/59.94 project. If you then try to render the sequence, the render fails and displays an assertion failure message.
Limitations for Version 2.4 a Bug Number: UDevC00161315. Ancillary data monitoring in the timeline is not supported while editing with Edit While Capture (EWC) clips. To disable Ancillary data monitoring, deselect the D track monitor icon in the timeline. Note that the data track will work correctly once the EWC clip is completed and updated from Interplay.
a Bug Number: UDevC00158050. (Interplay Engine on Windows Server 2008 R2 systems) When you use the Manage Databases view in the Interplay Administrator to activate a deactivated database, you cannot browse for the .pro file. If you click the Browse button, the Open dialog is not displayed.
An error message with the headline “0xC00000BB” is displayed at the bottom of the view.
Workaround: Type the full UNC path.
a Bug Number: UDevC00157069. (Streaming Server, Macintosh) For Mac OS X 10.5, streaming playback is supported only on Macintosh Intel Core 2 Duo systems that are capable of running Java 1.6.
a Bug Number: UDevC00158418. If you are using Interplay Access v2.4 to browse the database of an Interplay v2.4 workgroup that uses an Interplay v2.3 Stream Server, a stream-while-capture clip might stop and display “Not enough media. Capture in Progress.” The clip loads again, but does not play until you click the Play button (or use a keyboard command). You might have to click the Play button more than once.
a Bug Number: UDevC00158403. If you are using Interplay Access v2.4 to browse the database of an Interplay v2.4 workgroup that uses an Interplay v2.3 Stream Server, all MPEG-4/H.263, H.264, and MPEG1 Level 2 clips display a green icon to indicate that they are playable. However, if you try to play a clip that is not published as a QuickTime reference movie, the following message is displayed:
“Streaming server or share is not registered.” Publishing the clip lets you to play the clip correctly.
Limitations a Bug Number: (no number). Do not install the STP Encode service provider and the Interplay Transcode service provider on the same server. These providers cannot run on the same server.
a Bug Number: UDevC00155898. Media Indexer: If you remove a workspace from the primary MI, the workspace may not be immediately removed from the secondary MI. This can happen if you delete a workspace from the primary MI while the secondary MI is busy indexing newly added workspaces or is performing a startup index.
a Bug Number: UDevC00149804. Media Indexer: The number of Unique Media Files and Duplicated Files shown in the Health Monitor may vary between different MIs in the same HAG. This is due to an error in the way the duplicated media files are counted. Usually the sum of Unique Media Files and Duplicated Files together on each system match correctly. However, this is not always guaranteed, especially if there are file system changes combined with moving and deleting files and/ or folders.
a Bug Number: UDevC00155897. Media Indexer: An MI might sometimes show a negative heartbeat time value in the Health Monitor, especially when the system did not yet issue a heartbeat operation.
The Heartbeat is a new feature for Interplay v2.4. See What’s New for Interplay v2.4 or the Interplay Help for information on the Heartbeat value.
a Bug Number: UDevC00156697. Media Indexer: The "Duplicate assets count" value in the Media indexer log files can sometimes show a negative value for the per workspace file count.
a Bug Number: UDevC00156698. Media Indexer: During an upgrade or uninstall of Media Indexer, the Event log may show the following error: "StartServiceCtrlDispatcher failed".
a Bug Number: UDevC00153537. (Avid editing systems, Macintosh) If you drag an asset from a bin into a folder in the folder tree (the left pane of the Interplay Window), the following error is displayed: "Error moving asset: An internal client error has occurred.
java.lang.illegalArgumentException:invalid object moniker." The error message appears because you cannot drag an asset into a folder in the folder tree. You can click OK in the error dialog and correctly drag an asset to a folder in the right pane of the Interplay Window.
a Bug Number: UDevC00157373. (Avid editing systems) Sequences with rendered video transition effects might become unrendered when selecting "Update from Interplay." The following actions will cause this problem:
1. User on system 1 creates a sequence with rendered video transition effects and checks it into
Interplay.
2. User on system 2 checks out the sequence, adds an additional rendered video transition effect,
and checks it into Interplay.
3. User on system 1 opens the sequence in the Timeline, right-clicks the sequence in a bin, then
selects Update from Interplay.
The first rendered effect in the sequence becomes unrendered. In complex sequences, this unrendered effect could cause other rendered effects to become unrendered.
Workaround: On system 1, close the bin that holds the sequence, open a new bin, and check out the sequence from the Interplay window. This version of the sequence should have all effects correctly rendered.
Limitations a Bug Number: UDevC00151575. (Avid editing systems). If a user of an Avid editing application transcodes a clip, deletes the transcoded media, transcodes again to the same resolution, and again deletes the media, the editing application reports the following error: "Error deleting shared media (path to .mxf file). Unable to delete database node (0x89901a5)." However, the media is correctly deleted.
a Bug Number: UDevC00147601. (Avid editing systems) If you send an XDCAM sequence to an AirSpeed Multi Stream server, the audio might be noticeably hotter on the AirSpeed Multi Stream server. This problem could affect sequences sent from Media Composer v5.0, Symphony v5.0, and NewsCutter v9.0 and later, because the default setting for mono tracks changed from Alternating L/R to All Tracks Centered.
Workaround: In the Audio settings, set the default pan as Alternating L/R.
a Bug Number: UDevC00158375. (Avid editing systems) If you create a sequence that includes clips with mixed audio bit rates, you cannot use STP Encode to send the sequence to a LongGOP playback device. For example, a sequence includes clips with 16-bit audio and 24-bit audio. If you select Send to Playback, and then select STP Encode, the following error is displayed: "Sequence contains clips with mixed audio bit depth. Send to Playback will not continue." Workaround: Do one of the following:
(cid:129) Select Send to Playback but do not select STP Encode.
(cid:129) Transcode the sequence to one audio rate, select Send to Playback, and select STP Encode.
a Bug Number: UDevC00154920. (Avid Instinct) If you use a USB headset microphone to record a voice-over on a Windows XP system, the recording is garbled. This is not a problem on Vista or Windows 7 systems.
Workaround: Use a microphone that connects through the computer's microphone connector.
a Bug Number: UDevC00142814. DNxHD clips that are ingested from an Omneon server during an edit-while-capture ingest from Omneon do not display a separate Data (D) track in Avid editing applications or in an Interplay environment. To display the D track, you must use the Extract DNxHD Data command in the Avid editing application.
Limitations for Version 2.3 a Bug Number: no number. In an ISIS environment, Media Indexer v2.3 servers require the ISIS v2.3 or greater client.
a Bug Number: UDevC00149782. (Avid editing applications) On an 8400 dual-quad system, playback of H.264 proxies is very choppy when you view them in a different format project. The following are examples:
(cid:129) Transcode an HD master clip (1080i 59.94 DNxHD) to create SD proxy media (H.264 800Kbs Proxy 525) and load the clip into a 1080i 59.94 HD project.
(cid:129) Ingest HD proxy media (H.264 800Kbs Proxy 1080i 29.97) from an AirSpeed Multi Stream system and load the clip into an NTSC 30i project.
Then, with the Quality Menu set to Full Quality (green), play the clip. The playback is choppy and sometimes is not responsive to user control. If you let the choppy playback continue, you eventually see the following error: Exception:StreamingPlayConsumer::ExecutePass TIMEOUT....
Limitations (The same problem results on a faster system (such as a Z800) with the Quality Menu set to Full Quality 10-bit).
Workaround: For Media Composer and Symphony, set the Quality Menu to Draft Quality (green/ yellow) or Best Performance (yellow/yellow). For Symphony Classic, change the project format.
a Bug Number: UDevC00132305. (Avid editing systems) In a workflow that includes MultiRez and Dynamic Relink, if you consolidate a clip that is associated with more than one resolution, and check in the clip, Interplay Access is aware of only the resolution that was linked to the consolidated clip when you checked it in. This limitation can prevent you from publishing the clip for streaming. For example, if you transcode a high-res clip to MPEG-4 low-res media while the working resolution is set to the high-res media, and check in the clip, Interplay Access displays only the high-res media. If you run a Stream Publish job on the clip, Stream Publish fails with the error message "Internal Error:
no valid media tracks are found or proxy media files are offline." Workaround: In the editor, dynamically relink the clip to each resolution and then check in the clip while it is linked to that resolution.
a Bug Number: UDevC00147992. On a Mac OS X system, if you open the Avid Service Configuration application from Interplay Access or the Interplay Administrator, the Hosts tree might not show any entries.
Workaround: Do not select the option “Automatically Join the Preferred Workgroup.” You can clear this option in the Login tab of the Avid Workgroup Properties.
a Bug Number: UDevC00149466. (Interplay Access, Interplay Window) Subclips of audio-only master clips do not show a headframe and use the subclip icon, instead of a smaller version of the audio-only master clip icon.
a Bug Number: UDevC00142955. (Avid editing systems) Locators (markers) on data-only mixdowns checked out to an editing system appear on the Timecode track, not the D track. For example, if you create a mixdown of a track that contains only ancillary data, add a locator, check it into Interplay, then check it out again, the locator does not appear on the D track, but instead appears on the Timecode track.
a Bug Number: UDevC00144301. On Mac OS X systems, there is no uninstaller for the Interplay Transfer client.
Workaround: Delete the following file:
/Library/Application Support/Avid/xfermgrapi.bundle Then reboot your system.
a Bug Number: UDevC00099531. (Interplay Assist) If you want to send a source clip or sequence to playback, the STP operation uses the target resolutions of the loaded shotlist or, if there is no loaded shotlist, the target resolutions set on the database root folder. If the target resolutions displayed are not the target resolutions you want to use, you must create or open a shotlist in a folder that is set with the desired target resolutions.
Limitations a Bug Number: UDevC00151810. (Interplay Access) If you right-click on a clip while it is being ingested, you cannot open the clip in Interplay Assist (the command Open in Assist is not displayed).
Workaround: Open the clip in an Avid editing application, or wait until the clip stops ingesting, then open the clip in Interplay Assist.
AVC-Intra Limitations a Bug Number: . Interplay v2.x supports capture, import, playback, transcode, and consolidation of AVC-Intra resolutions. The following limitations apply:
(cid:129) UDevC00116685 You cannot export a QuickTime movie using the Same as Source option with AVC-Intra material a Bug Number: . Performance will vary with AVC-Intra media played on HP Z400 Single Quad Core systems, due to the processing power of the systems.
a Bug Number: . (Playback of AVC-Intra is not supported with HP xw8400 or HP xw4600. Newer hardware does support playback.
a Bug Number: UDevC001137818. ((Interplay Assist, Avid Instinct, Avid editing systems) AVC-Intra media will not play or will stutter when playing on systems less capable than an HP xw8600.
Ancillary Data Limitations The following limitations pertain to using Ancillary Data with Interplay v2.2.
a Bug Number: UDevC00161432. Ancillary data monitoring in the timeline is not supported while editing with Edit While Capture (EWC) clips. To disable Ancillary data monitoring, deselect the D track monitor icon in the timeline. Note that the data track will work correctly once the EWC clip is completed and updated from Interplay.
a Bug Number: UDev00145071. Ancillary Data: Problems working with Edit While Capture feature during ingest of 1080i 60 XDCAM HD that contain ancillary data. The following error is generated:
AncDataPacketCvtr::ExecuteRequest - ANC Essence Data Key not found at expected sample Workaround: Allow the ingest to complete. Then right-click the clip in the editing application and select Update from Interplay. Now the clip should have a complete icon and it should be ready to work with.
a Bug Number: UDevC00140395. (Interplay Access) Limitation: Resync will not recreate the D-track if the metadata is lost or overwritten. If an editor uses the Extract DNxHD Data feature with a clip or sequence, and checks the clip or sequence into Interplay, the D track is preserved in the local bin. If the clip or sequence is deleted in the local bin, or the metadata in the database is lost through a failure, Resync will not recreate the D track.
Workaround: Extract the D track again in the editing application.
Omneon, K2 and Ancillary Data a Bug Number: UDevC00142013. D Track gets stripped off 720p60 XDCAM editor sequences sent to Omneon via TM.
Limitations ISIS Client Bandwidth for Copy Provider a Bug Number: no number. Copy Provider: Intermittent read timeout errors on Copy Provider jobs.
Workaround: To prevent read timeout errors on a Copy Provider, set the ISIS bandwidth on each Copy Provider to 250 MB per second. You can set the value in the Devices list in the Avid ISIS management Console..
Recording Across Midnight a Bug Number: UDevC00133312. Ingest recordings that begin at midnight report media offline errors in Access and editing applications.
Workaround: Begin recordings one or more minutes before or after midnight. It is preferable to begin the recording after midnight because you can have problems if you consolidate a sequence that contains clips recorded over the midnight boundary. If the portion of the clip you are using was recorded after midnight but the beginning of the clip is before midnight, Dynamic Relink may determine that the clip is offline.
a Bug Number: no number. Partial restore of media recorded across midnight can cause media offline errors in Access and editing applications. This can happen if you attempt to restore a portion that was recorded after midnight.
Workaround: If you have a clip that was recorded across midnight and you want a partial restore of a portion that occurred after midnight, you must specify a beginning timecode that starts before midnight.
Limitations for Interplay v2.2.1 a Bug Number: UDevC00143638. To use Interplay Transfer from an Avid editing system, you need to configure settings in Transfer Settings dialog box. In the TMClient.ini tab, make sure you use the correct case when you enter the server name and workgroup name. Server names are typically lower case. Workgroup names can use a mix of upper case and lower case. The name you enter must match the name entered in the Avid Service Framework.
a Bug Number: UDevC00145564. Avid Editing Applications on Macintosh: If you uninstall both Interplay components from a Mac OS X system, you still receive a message when starting the Avid editing application that asks if you want to run in disconnected mode.
Workaround: Delete the following file:
/Library/Preferences/avid.workgroups.avid technology incorporated.plist a Bug Number: UDev00144835. SGL Archive to Disk: Partial restore of a sequence from disk may fail. The job fails with a third party software error. The problem is related to the position of the clip in the sequence. If you encounter the problem for a particular clip in a sequence you will not be able to partially restore that clip from the sequence.
Workaround: To restore that particular clip, restore the entire sequence.
a Bug Number: UDevC00133312. Ingest recordings that begin at midnight report media offline errors in Access and editing applications.
Limitations Workaround: Begin recordings one or more minutes before or after midnight. It is preferable to begin the recording after midnight because you can have problems if you consolidate a sequence that contains clips recorded over the midnight boundary. If the portion of the clip you are using was recorded after midnight but the beginning of the clip is before midnight, Dynamic Relink may determine that the clip is offline.
a Bug Number: UDevC00144241. Macintosh Editor Bins limitation: Opening a bin that displays video resolution dots column can cause a Macintosh editor application to crash.
Workaround: Do not display columns for video resolution dots in a Macintosh editor bin. Note that you can view video columns in Access.
a Bug Number: UDevC00145562. Send to Playback to XDCAM SD devices may fail with write permission errors when using profile names.
Workaround: Change the FTP and Playback configurations in Interplay Transfer to be the actual hostname of the device. A device can be given a "hostname" by adding its IP address and name to the Window's hosts file residing on the Transfer Manager server.
a Bug Number: UDevC00145468. Occasionally a 32-bit Media Indexer server may fail to launch and may fail during use. The system displays a "Faulting application AvidMI.exe" error message. This is usually related to an incorrect version of Avid Service Frame work or to a problem with the Media Indexer cache files Workaround: Do the following:
(cid:129) Check the version of Avid Service Framework on the Media Indexer (should be v1.3.8.1 (cid:129) If the framework version is correct, delete the Media Indexer cache files and restart the Media Indexer. Note that this will cause the Media Indexer to rescan all of its storage locations. This can take a long time if the Media Indexer is monitoring a large number of of work spaces.
Limitations for Interplay v2.2 RED Camera Support Currently, workflows that use media captured from RED cameras are not supported in an Interplay environment.
MediaStream Server Support The Avid MediaStream Server (also known as Media Stream server) is not supported for Interplay Transfer v2.2 and later. If your workflow requires a MediaStream server, use Interplay Transfer v2.1 in your Interplay v2.2 environment.
Because the MediaStream server is no longer supported, the “Long GOP transfer enabled” check box has been removed from the Interplay Transfer Configuration window for Interplay v2.3.
Limitations Check in to Interplay for Pro Tools The following limitations apply to the Check in to Interplay for Pro Tools command that is available in the Avid editing application:
(cid:129) Pro Tools v9.0 adds support for multi-channel audio tracks created in the Avid editing application. If you are using an older version of Pro Tools, use the Split to Mono command in the editor command to break the multi-channel audio files into mono files.
(cid:129) Pro Tools v9.0 supports RTAS effects created by Avid editing applications. Older versions of Pro Tools ignore RTAS effects created by the Avid editing applications.
(cid:129) If you are working with Multicam or group clips, before you perform the Check in to Interplay for Pro Tools command, right-click the sequence in the bin and select “Commit Multicam Edits”.
If you don’t use the Commit command, Pro Tools will accept the sequence but when the Pro Tools editor attempts to check the sequence back into Interplay, the check in will fail.
Copy Provider and ISIS Versions You can use the Media Services Copy Provider to copy to an equal or later version of ISIS, but you cannot copy to a lower version of ISIS. For example, you can copy from an Interplay environment running ISIS v1.6 to an environment running ISIS v2.1 but you cannot copy from the ISIS v2.1 system to ISIS v1.6.
Multi-Channel Audio Tracks Send to Playback This section describes a best practice for sending a sequence containing multi-channel audio tracks to playback when using Direct Out mode.
When using Direct Out mode, keep the multi-channel audio tracks at the bottom of your audio tracks.
When you send to playback in Direct Out mode the system expands the stereo tracks to separate mono tracks. If there are single tracks at the bottom of the track list you may get unexpected results after the top tracks expand. For example, a single track that was on track 5 may now be on a different track. If you keep the single tracks at the top you can avoid this kind of problem. See the editing application What’s New documentation or Help for additional information on multi-channel audio.
Assist and Instinct a Bug Number: UDevC00142943. (Interplay Assist and Avid Instinct) Multichannel audio tracks from Avid editing systems are not supported by Interplay Assist or Avid Instinct. Workaround: Avid editors should use the “Split to Mono” command before checking in sequences that will be used in workflows with Interplay Assist or Avid Instinct.
Check in to Pro Tools for Interplay See “Check in to Interplay for Pro Tools” on page 85.
Final Cut Pro a Bug Number: UDevC00142462. Multichannel audio tracks from Avid editing systems are not supported by Final Cut Pro. Final Cut Pro fails to import the audio tracks (through Automatic Duck) and displays the error message “Unknown Audio Container Effect.” Workaround: Avid editors should use the “Split to Mono” command before checking in sequences that will be used in workflows with Pro Tools or Final Cut Pro.
Limitations Media Indexer Limitations This section describes limitations for Avid Interplay Media Indexer. For information on installing and configuring Media Indexer on a Macintosh system, see the “Installing Software on Interplay Clients” chapter of the Avid Interplay Software Installation and Configuration Guide or the Interplay Help.
Uninstall Program for Media Indexer on Mac OS Bug Number: UDevC00142377. The uninstaller for Media Indexer on Macintosh systems does not use a graphical user interface. Also, the administrator account that you use to uninstall the program must use a password.
To uninstall Media Indexer:
1. Navigate to Applications > Avid Uninstallers > Avid Media Indexer and double-click
A terminal window opens and asks for a password.
2. Enter a password for an administrator account and press Return. Media Indexer is uninstalled.
> **Note:** If you close the terminal window without uninstalling the program, you can no longer use the
terminal window. Workaround: Restart the Macintosh system.
Stopping and Starting Media Indexer on a MacOS X System To stop Media Indexer:
1. Open a Terminal window (select Applications > Utilities > Terminal).
2. At the prompt, type the following and press Return:
cd /Applications/Avid/Media\ Indexer/bin
3. Type the following and press Return:
sudo ./mi.sh remove Media Indexer is stopped. To restart it, type the following and press Return:
sudo ./mi.sh install General v2.2 Limitations The following problems are present in the Interplay v2.2 release.
a Bug Number: UDevC00142389. (Access, Macintosh) The Tools menu does not show the correct keyboard shortcuts for the following commands. The correct keyboard shortcuts are shown:
(cid:129) Check In AAF Sequence (Command+Option+I) (cid:129) Export QuickTime Reference (Command+Option+G) (cid:129) Import as QuickTime Reference (Command+Option+M) The keyboard shortcuts are correct in the context (right-click) menu.
Limitations a Bug Number: UDecC00143346. In the Property Layout View of the Interplay Administrator, the following resolutions might be listed in the Resolutions tab:
Do not select these resolutions as available. They are reserved for future use and can cause problems if selected as a working resolution for Interplay Assist. For AVCI proxy use, select the following resolutions:
a Bug Number: UDevC00143402. During installation of the Interplay Stream Server, the installation instructions state that you must enter the user name in the form domain\username. However, if you are using a local user, enter the username only.
> **Note:** The user name and password for the Stream Server Execution User must exactly match the user name
and password of the Server Execution User that is used to run the Interplay Engine.
a Bug Number: UDevC00141484. If you want to create a Media Services profile for dual-mixdown operations, make sure to select DUALMIXDOWN as the transcode mode. If you select MIXDOWN as the mode, the dialog box allows you to enter targets for a dual mixdown, but the profile will use only the first target.
a Bug Number: UDevC00143049. Assist incorrectly allows stories with offline D Tracks to be sent to playback.
a Bug Number: UDevC00142844. Interplay Access: You cannot add a drop-frame clip to a non-drop- frame shotlist in Interplay Access (or vice versa).
a Bug Number: UDevC00137852. Telestream FlipFactory TM Plugin fails to notify Interplay TM 2.2 and process a checkin to Interplay.
a Bug Number: UDevC00142061. (Interplay Access) If you are working with consolidated subclips or consolidated sequences, Access might show that the media files are online, but you cannot delete the media because it is not displayed in the Delete dialog box. For more information, search the Avid Interplay Access User’s Guide or the Interplay Help for “Limitation: Media Files Displayed as Online but Not Available for Deletion.” a Bug Number: UDevC00142535. (Interplay Access) If you select a subfolder of the Deleted Items folder, the Filters button remains enabled. You should not be able to change the filter because a Deleted Items subfolder contains only file assets.
Transcode a Bug Number: UDevC00143164. Minimizing remote window during Transcode service launch results in DSM_SERVER errors.
Workaround: If you use the Windows remote desktop feature to launch the Media Services Transcode service, make sure the Transcode service is completely launched before minimizing the window.
Limitations Omneon and K2 Media Servers a Bug Number: UDevC00142012. AVC-Intra resolutions are not supported for send to playback with Generic FTP profile.
a Bug Number: UDevC00126493. Failed K2 transfers leave behind a temp file that must be manually deleted. Temporary OP1-A exported MXF files are not deleted from the shared storage workspace if the transfer fails after the export. These files can accumulate and take up disk space on shared storage.
Workaround: To delete the files, navigate to the Temp directory within the workspace that is used to place temporary files. Select the files and delete them. For example, \\ <sharedstorage server name>\<workspace name>\Temp Archive/Restore a Bug Number: UDevC00141961. If you enable the "no spanning" option in SGL FlashNet for a group, jobs will hang in the Archive Provider during the "Backup Cache Fill: phase of the archive.
You can cancel the job but if you run it again it will fail again.
Workaround: Disable the FlashNet "no spanning" option.
a Bug Number: UDevC00140504. Windows 7: Standalone Interplay Transfer cannot perform an FTP ingest if the Firewall is turned on.
Workaround: If you have Windows Firewall turned on with Windows 7, you need to allow Interplay Transfer through the firewall. When you start Interplay Transfer, you should get a dialog like the one shown in the following illustration. Make sure to check off allowing Interplay Transfer through the firewall on private networks, such as "home or work", and that will add an exception for Interplay Transfer through the Firewall. This will allow Interplay Transfer to operate normally with Windows Firewall turned on.
Limitations Limitations for Interplay v2.1 a Bug Number: UDevC00135952. An Avid editing application running on a Macintosh system unexpectedly quits if you disconnect the shared storage user. For example, if Media Composer is running, and you want to change the logged in user, open the ISIS Client Manager, and, under Username and Password, click the Disconnect button. A Media Composer error message is displayed ("Bus Error" in thread "Main Thread"…). After you click OK, the application quits.
Workaround: Save your work and close the editing application before disconnecting the current shared storage user.
a Bug Number: UDevC00135035. Under some circumstances, if you try to delete transcoded media in an Avid editing application, an error message is displayed ("Unable to delete database node") and the media is not deleted. This could occur if you transcode a clip, check it into Interplay, delete the transcoded media, transcode the clip again to the same resolution, and try to delete it.
Workaround: Delete media for the transcoded resolution in Interplay Access.
a Bug Number: UDevC00133649. When using FlipFactory v7.0, if you create a TMIngest factory using the DNxHD codec, and submit a file to Interplay Transfer, when using Interplay Access an incorrect frame rate is displayed.
Workaround: Use FlipFactory v6.1 to create a TMIngest factory using the DNxHD codec.
a Bug Number: UDevC00135075. You must disable real-time scanning on Restore and Copy providers or jobs will fail. When anti-virus software has real-time scanning enabled, Restore and Restore jobs fail with "net.nxn.JXDK.CommandFailedException" errors.
Workaround: Disable real-time anti-virus scanning on Restore and Copy provider systems.
Limitations a Bug Number: UDevC00135121. SGL Archive job errors: If a job fails in the FlashNet application without an error, the FlashNet software does not log the error and does not return the error to the Archive Provider. In this case the Archive Provider reports that there was a 3rd party error and recommends that you check the 3rd party log. If you do check the log there is no record of the problem. This problem occurs most often with large sequences.
Workaround: Try disabling the High Speed Support setting in the FlashNet application and resend the job.
a Bug Number: UDevC00131721, UDevC00134328. (Avid Low-Res Encoder and Interplay Access) If your workflow includes publishing reference movies for streaming play, do not use the Scene Change option in the Avid Low-Res Encoder. For example, do not create a shotlist using subclips generated through this option. Reloading the shotlist could fail with an error.
a Bug Number: no number. The Avid Interplay Engine and Avid Interplay Archive Engine Administration Guide includes a topic "Using the InterplayRestore Tool to Restore Backups Remotely." Beginning with the Interplay Engine version 2.1, you can no longer run the InterplayRestore tool from another machine. You must run it on the engine on which you want to restore a backup.
a Bug Number: UDevC00134005. (Interplay Access) If you partially publish a master clip, you might need to reload the clip two or more times before it will play. For example, if you create a subclip from a clip, transcode the subclip to MPEG-4, and then publish the clip, the first time you load the published clip, it will not play and will time out with an error message. If you load it again, the published portion will not be correctly marked, and again the clip will not play. If you load it a third time, the published portion is correctly marked, and the published portion plays correctly.
a Bug Number: UDev00127524. (Interplay Access) Files of the following formats do not play correctly in the Interplay Access monitor:- m3u, - asf, -avi, - wmv .
a Bug Number: UDevC00132703. In Interplay Engine v1.6.x and Interplay Engine v2.0.x, if you created a shortcut in Interplay Access, and then moved the target, the shortcut no longer worked. This has been fixed for Interplay Engine v2.1.
a Bug Number: UDevC00133400. Partial Restore of low res with offset: When you partially restore a clip with a low res offset, you cannot not restore the offset portion even if you request the highest available resolution. For example, if you start the low res portion of a dual ingest capture two seconds before the high res capture begins, you cannot restore the first two seconds of the low resolution material.
a Bug Number: UDevC00106348. Configuring Media Indexers in an ISIS environment with Mirrored and RAID storage: If you have some workspaces that use mirrored storage and some that use RAID, put the Mirrored workspaces first in the list when configuring storage locations for Media Indexer.
This will ensure that Media Indexer indexes the storage locations with the most bandwidth first.
a Bug Number: UDevC00133056. Macintosh editors on Interplay: If you are working on a Macintosh system in an Interplay environment, avoid using non-ASCII characters in file names or machine names. For more information, see the topic "Characters to Avoid when Naming Avid Elements" in the Help for your editing application.
Limitations a Bug Number: UDevC00132571. Macintosh editors on Interplay: If you open Workgroup Properties on a Macintosh system, the Services tab does not include options to view the status of the Avid services running on the local computer, or to start, stop, restart, enable, or disable local services.
Currently, the only service running on the Macintosh client is Media Indexer.
Workaround: In Workgroup Properties, click the Lookup tab. Click edit, then click Apply. The service is stopped and restarted.
a Bug Number: no number. Macintosh editors on Interplay: The Workgroup Properties System Check tab is not available on a Macintosh system.
Changing the Name of the Stream Server Execution User UDevC00133111 (Interplay Stream Server) You might need to change the name of the Stream Server Execution User. There are two methods, depending on the exact problem.
If you added the incorrect user/password combination during installation, you need to uninstall and reinstall the Interplay Stream Server with the correct user, because in this case the Interplay Stream Server service is not added to the Windows Services list. For information about uninstalling and reinstalling the Interplay Stream Server, see the Avid Interplay Software Installation and Configuration Guide.
If the Stream Server was correctly installed, but the Stream Server Execution User is no longer available or needs to be changed for any reason, you can change the name and password in the Log On tab of the Stream Server service:
To change the name of the Stream Server Execution User:
1. Right-click My Computer, select Manage, double-click Services and Applications, then double-
click Services.
2. From the list of services, double-click Avid Interplay Stream Server.
3. Click the Log On tab.
4. Enter the correct user name and password.
- For local users, use the format .\<user> - For domain users, use the format <domain>\<user>.
5. Click OK.
6. In the Services pane, click “Restart the service”.
Limitations found in Interplay v2.0.1 a Bug Number: UDevC00127906. If you add locators to a clip in Interplay Access, the locators are not displayed in an Avid editing application, Interplay Assist, or Avid Instinct until you load a different clip in the Access Monitor. After loading a different clip in the Access Monitor, load the original clip again in the Avid editing application, Assist, or Instinct. (Refreshing the clip, pressing F5, or restarting the application does not display the locators).
a Bug Number: UDevC00127773. Dragging the position indicator along the timeline in the Access Monitor (scrubbing) does not update the monitor for every frame that you scrub through. The number of frames displayed while scrubbing depends on how fast you drag the position indicator.
Limitations a Bug Number: UDevC00130431. If you mix clips with differently labeled audio tracks in a shotlist in Access, the shotlist might play back the audio tracks on incorrect audio channels. For example, mixing a clip with V1 A1 with V1 A2 in one shotlist results in a shotlist that plays back only one audio track. The playback of the shotlist in Avid editing applications is correct.
a Bug Number: UDevC00130484. In some circumstances, Avid editing application users do not receive an error message if a check-in fails. By design, a user cannot check out a sequence from a read-only folder, edit it, and then check in the sequence. If the user uses a menu command to check in the edited sequence, no error message informs the user that the check-in failed. An error message does appear if you drag the sequence to a folder in the Interplay Window, and then appears after that anytime the user tries to check in the sequence.
a Bug Number: UDevC00131769. In the Interplay Administrator, the Select Workgroup option in the Service Configuration view does not work correctly. The Service Configuration view always shows the workgroup that was specified when first opening the view. If you enter information for a different workgroup in the Select Workgroup dialog box, the selected workgroup is not accepted.
Workaround: Either use the Service Configuration tool in the Framework installation or restart the Interplay Administrator client and log in to the desired workgroup.
a seconds when connecting to Media Indexer. The message “Initializing Quality Manager” might appear for longer than usual, and in some cases a message “Cannot connect to Media Indexer” is displayed, followed by “Your connection to Media Indexer has been restored” a few seconds later.
a Bug Number: UdevC00129075. In Interplay Assist, reloading a clip might not refresh the clip. For example, if an Assist user has a clip loaded, and an Avid editing application user adds locators to the clip, reloading the clip in Assist might not display the locators. The Assist user might need to press F5 or refresh the folder containing the sequence.
a Bug Number: UDevC00131839. When using Capture Manager and Interplay 2.x, changing the duration of a clip after it has started to be ingested could cause two different clips to be created with the same name. For example, you might schedule capture of clips using a template name (Capture.n, such as Capture.10, Capture.11, Capture.12). If you change the duration of Capture.11 while it is ingesting, the completed clip is displayed in Interplay Access as Capture.12 (even though Capture Manager displays the name as Capture.11). The next clip is ingested and stored as Capture.12, which results in two different clips with the same name.
a Bug Number: UDevC00128659. You cannot use the Update from Media Indexer command to update the media status for a remote workgroup. You receive an error message that the user is not connected to the Lookup service for that workgroup.
Workaround: Install the Avid Framework Service on the Interplay Access client. Open the Avid Framework Service Workgroup Properties and configure the remote workgroup's lookup service in the Workgroup Properties > Lookup tab.
Limitations a Bug Number: UDevC00132006. An Avid editing application earlier than Media Composer 4.0, earlier than Symphony 4.0, or earlier than Avid Newscutter 8.0 might display duplicate restrictions in the following circumstances:
1. Set a restriction on a clip with Interplay Assist (any version).
2. Check out the clip with Media Composer version 4.0.x (or Symphony 4.0.x or NewsCutter 8.0.x)
and check it in.
3. Check out the clip with Media Composer earlier than version 4.0.x (or earlier than Symphony
4.0.x or NewsCutter 8.0.x).
The Media Composer Restrictions tool displays two instances of the restriction.
If you check the clip in again, the restriction is duplicated in the database and duplicate restrictions appear in any editing application that checks out the clip.
Limitations Found in Interplay v2.0 a Bug Number: UDevC00128577. Partial Restore and Partial Delivery will not work with media created by the following versions of the Avid editing applications:
(cid:129) Media Composer v2.6.x and earlier (cid:129) Symphony v1.6.x and earlier (cid:129) NewsCutter v6.6.x and earlier Workaround: Use full restore or full delivery for this media.
a Bug Number: UDevC00130628. In a mixed environment (Interplay 2.0 engine with Avid editing applications earlier than Media Composer 4.0, earlier than Symphony 4.0, or earlier than Avid Newscutter 8.0), if an Avid editing application user edits a locator and checks in the clip, duplicate locators might be displayed in Interplay Access.
a Bug Number: no number. Interplay v2.0 does not support locators created in Avid Airspeed.
Mount Workspaces for Long GOP STP (Assist and Instinct) a Bug Number: UDevC00123047. If your workflow includes sending Long GOP (XDCAM HD or XDCAM EX) media to playback, you need to do the following:
1. Log in to the ISIS Client Manager with an account that has write access to one or more
workspaces.
2. In the Client Manager, mount at least one of the workspaces to which you have write access as a
lettered drive.
When you send to playback, the application searches the workspaces to which you have write access and writes a temporary file to a Temp folder at the top level of the workspace with the most free storage space. If you do not have workspaces mounted as lettered drives, you get an error message “Unable to find a shared storage volume for media transfer.” Limitations Relinking Offline Media for Precomputes a Bug Number: UDevC00116797. The term precomputes refers to the media files created when you render an effect or title. The precomputes associated with a sequence can appear offline in the following cases:
(cid:129) After restoring the sequence from an archive (cid:129) After moving the media files associated with a sequence to a different workspace To refresh the links for offline precomputes:
1. Select Reset Offline Info from the Bin Fast menu
The system refreshes the links to all of the precomputes in the project. If a sequence is loaded in the monitor, the system automatically reloads the sequence.
Interplay Access and Force-Delete Locked Media a Bug Number: UDevC00117091. The “Force-delete locked media” option was introduced in Interplay Access version 1.4.2. If you connect Access to an Interplay Engine running a version earlier than 1.4.2, the option is visible in the Delete dialog box but does not work. If you select the option and attempt to delete files, the files are not deleted and “access denied” is displayed in the Delete Summary dialog box.
Workaround: In the Avid editing system, locate the clip you want to delete in a bin. If it is not in a bin, drag and drop it from the Interplay Window. Select the clip in the bin and then select Clip > Unlock Bin Selection. You should then be able to delete the clip and the media from Interplay Access.
Changing Source Information for a Clip in Interplay There are two types of source information that usually should not be changed for a master clip in an Interplay environment:
(cid:129) Source tape name (cid:129) Timecode format (changing between drop frame and non-drop frame) The tape name and timecode format are part of the source information for a clip and changing them may cause the clip to become offline whenever Dynamic Relink is activated. Once this happens, the relation of the clip to its media can be permanently lost.
If it is necessary to change the tape name or timecode format for a master clip in an Interplay environment, use the procedure described in this section.
You only need to perform this procedure if both of the following statements apply:
(cid:129) If your site uses Dynamic Relink. If your site does not use Dynamic Relink there is no need to perform the procedure.
(cid:129) If you are associating a master clip with a different tape name or timecode format. If you are simply changing the name of an existing tape you don’t have to perform the procedure.
Limitations To change the tape name or timecode format for a clip in an Interplay environment:
1. Disable Dynamic Relink. See the Avid editing application Help or the Interplay Help for
information on Dynamic Relink.
2. Right-click the master clip in the bin and select Modify > Set Source.
3. To change the tape name, do the following:
a. Select Set Source from the Modify dialog box popup menu. The Select Tape dialog box opens.
b. Change the source tape name. Use an existing tape name or create a new one.
4. To change the timecode format to drop or non-drop frame, do the following:
a. Select ”Set Timecode Drop/Non-drop” from the Modify dialog box popup menu.
b. Select the format and click OK.
> **Note:** The media will remain online at this point because Dynamic Relink is turned off.
5. Consolidate the clip to generate new media that will be associated with the newly selected tape
name. Use the following options:
- Uncheck “Skip media files already on the target drive” - (Option) check “Delete original media files when done” - Use the default settings for all other conversion parameters The system generates new media files that will reference the correct tape name or timecode format. See the Avid editing application Help for additional information on the Consolidate command.
6. Re-enable Dynamic Relink.
7. Double-click the clip in the bin to trigger the relink. The media will be online and linked
correctly to the adjusted tape name.
Automatic Reservation Limitations You can set the value for automatic reservations in the Avid Interplay Administration tool using the Editor Database Settings view. This section specifies the behavior of automatic reservations for this release.
Automatic reservations now work correctly for the following situations:
(cid:129) If you duplicate metadata (such as a master clip or sequence) in the Avid editor application bin and then check it into Interplay.
(cid:129) If you create new metadata such as a new sequence, subclip, or title and check it into Interplay.
(cid:129) If you create new media in a bin and then check it in. This includes operations such as import, capture, and consolidate.
Limitations Write Permission in Interplay Applications a Bug Number: UDevC00099462. Interplay Access has different rules for allowing a user to modify a clip in a folder that they do not have write permission to. The rules are different from Assist, Instinct, and the Interplay Window. For this discussion, assume the following:
(cid:129) The user has been given write access in the Instinct/Assist User Settings window of the Interplay Administrator tool. For example, the user is allowed to modify locators or to modify column properties.
(cid:129) The clip exists in at least one folder that the user has write permission to.
In Access, the system checks whether the user has write permission on the current folder. If the user does not have write permission to this folder, the user cannot modify the asset in that folder.
In Assist, Instinct, and the Interplay Window, the system checks whether the user has write permission to any folder that contains the clip. As long as the user has write permission to at least one folder that contains the clip, the user can modify that clip in any folder.
Viewing Referenced Assets in Assist In Assist, you cannot view the master clip associated with a subclip in the same folder. In the Avid editing application and in Access, you have the option of displaying referenced assets in the same bin or folder. You do not have this option in Assist. This is not usually a problem. For example, if you are working with a subclip in Assist, you usually have no need to see the master clip it was created from.
You may encounter this problem if you move subclips and their associated masterclips in and out of folders in Access. Masterclips will not be visible in Assist if that folder once held the same clips as referenced assets. Once a subclip goes into an Assist folder, the display for the referenced asset is turned off. You may also receive a message telling you the clip already exists in that folder.
To view a referenced clip in Assist:
- In the Avid editing application, check the referenced master clip(s) into Interplay, using the
"Show Reference Clips" option in the editing application bin.
Now the master clip is an unreferenced asset and an Assist user can view the master clip.
General
> **Note:** See the following ReadMe files for additional information:
(cid:129) Avid Service Framework (cid:129) Interplay Transfer (cid:129) Interplay Media Services (cid:129) Interplay Assist (cid:129) Avid Instinct a Bug Number: UDevC00106180. Interplay and Avid editing systems: If Auto-reservation is enabled (in the Interplay Administrator), but reservations are deactivated for a particular folder ("Allow creation of reservations" is deselected in the Security options for the folder in Interplay Access), a user on an Avid editing system can check an asset into that folder but there is no message to warn the user that the asset is checked in without a reservation. This could be a problem if the user assumes auto-reservation is enabled for the folder but in fact the content of that folder is not protected.
Limitations a Bug Number: UDevC00119218. Partial restore is not supported when OMF media or MXF media are transcoded using an Avid editing application. A full restore is performed instead.
a Bug Number: UDevC00113195. Media Indexer Quarantine: If you use Windows Explorer to copy a large MXF media file (larger than 1 GB) from an external drive to shared storage, the Media Indexer may quarantine the file before it is finished copying. The problem occurs if the Media Indexer starts scanning the drive before the copy operation is completed.
Workaround: When copying large MXF files to shared storage, do not copy the file directly to the Avid MediaFiles\MXF folder. Copy the file to another folder on the workspace (such as the Creating subfolder within the Avid MediaFiles folder) and then move the file into the MXF folder. This way the copy operation will be fast enough so that the Media Indexer won’t move the file into the Quarantine folder.
a Bug Number: UDevC00113305. Media Indexer: If you try to use Windows Explorer to copy media from a network share or any folder not indexed by Media Indexer to an indexed folder (OMFI MediaFiles or Avid MediaFiles), you might get an Access Denied message.
Workaround: Copy the media files to the Creating subfolder (within the OMFI MediaFiles or Avid MediaFiles folder) and then move them to the media folder.
Also, if you were able to copy media to an indexed folder and then need to move or delete the files, or if they are quarantined and need to be deleted, you might get an Access Denied message.
Workaround: Wait a few minutes and try the operation again.
a Bug Number: UDevC00121042. Assist: If you load a clip that is being captured (an Edit-While- Capture or EWC clip), and then modify the Audio/Video Monitoring preferences and click OK, the preferences do not persist. If you then load a completed clip, you can scrub through the clip but you cannot play it, and you need to relaunch the application.
Workaround: Change the Audio/Video Monitoring Preferences before loading the EWC clip. This problem does not occur if you change the Audio/Video Monitoring preferences while the EWC clip is playing.
a Bug Number: UDevC00120939. Interplay and Avid editing application): If the working resolution is not set in the Instinct/Assist User Settings in the Interplay Administrator, the following error message appears when you log in to Interplay: “No Working Video Resolution Set, Dynamic Relink will be disabled.” This message is incorrect, because this setting does not apply to an Avid editing application.
Workaround: Close the error message and continue working. To avoid display of the error message, set the working resolution in the Instinct/Assist User Settings in the Interplay Administrator.
a Bug Number: UDevC00118842. Edit while capture with AirSpeed Multi-Stream. If you play a currently ingesting HD clip in an editing application, the audio might drop out while the video continues to play. When the dropout occurs depends on the compression of the clip, but it can be up to a minute after the live feed begins.
Workaround: Precut the clip to the head frame in the editing application and restart play.
Limitations a Bug Number: UDevC00121373. Interplay Assist and Avid editing applications: In Assist, when you apply a locator to an audio-only sequence, or to a sequence without a V1 track, the locator appears on an empty V1 track in the Avid editing application timeline.
a Bug Number: UDevC00116644. Interplay Assist and Avid Instinct: If you start the application shortly after quitting, you might see an "Unknown Exception" error message Workaround: Wait 10 seconds and log in again. If you still see the error message, close the application and relaunch it.
a Bug Number: UDevC00118600. Interplay Assist, Avid Instinct, Interplay Window: If you create a subclip from a master clip with the resolution displayed as "XDCam HD 50mb 1080i 60," the resolution of the subclip will be displayed in the Current Video Resolution column as "XDCam HD 50mb." Workaround: Assist and Instinct: If you need to determine the complete resolution for the subclip, move the mouse pointer over the title of the clip (above the monitor) and the complete resolution is displayed.
a Bug Number: UDevC00106005. FTP ingest of 1080p 23.97 proxy files fail to import when dragging and dropping the proxy only clip to a bin from FTPClipList.
Workaround: You can use a firewire connection to import the 1080p 23.97 proxy file.
a Bug Number: UDevC00115806. Assist Locators: You can add multiple locators to the same frame in Assist but you cannot view more than one locator in the Avid editing application timeline.
Workaround: In the editor, click the Locator and select the Locator window from the Tools menu.
a Bug Number: UDevC00115457. Assist – You cannot use Assist to play back a sequence with more than 16 tracks.
Workaround: Select Preferences > Audio/Video Monitoring and turn off the additional tracks.
a Bug Number: UDevC00115102. XDCAM EX and FTP Clip List – Ingest via FTPClip List does not work correctly for XDCAM 720p 5994 EX 35Mbit.
Workaround: Imports via 1394 firewire works correctly. Also, 720p 5994 50 Mbit works correctly for FTPClip List a Bug Number: UDevC00110280. On the Media Indexer server, if you change the language locale option after you install Media Indexer and then restart the server, the MI service might stop and restart constantly. Similarly, if you selected “Install files for East Asian Languages” in the Languages tab of the Windows Regional and Language Options control panel and then reinstall or update Media Indexer with an English locale selected, the MI service might stop and restart constantly.
Workaround: Change the language locale before you install or update Media Indexer. If you are going to use an English locale, deselect “Install files for East Asian Languages” before you install or update Media Indexer.
Limitations a Bug Number: UDevC00113671. If you increase the duration of a currently ingesting AirSpeed Multi Stream clip in Capture Manager™, you might not be able to play the clip beyond the original duration and you might see an error message.
Workaround: Make sure you set the initial duration of the clip to be longer than what you need.
a Bug Number: UDevC00111283. When you import P2 media from a virtual volume, the system adds a duplicate storage path for the Media Indexer. The additional path is visible in the Service Framework Service Configuration tool.
Workaround: Open the Service Configuration tool, locate the local Media Indexer on the editing system, and remove the extra storage location.
a Bug Number: UDevC00116123. In Assist or Instinct, currently ingesting media from IPV playback may stop after a couple a minutes or longer depending on the length of the ingest.
a Bug Number: UDevC00115587. When archiving a folder which contains a sequence and it's relatives, the job will display the sequence and each relatives as a separate transaction in the Job Status window.
a Bug Number: UDevC00105694. Custom fields from Assist do not appear in the editor bin.
a Bug Number: UDevC00117478. The Archive Engine will display the incorrect size of an asset.
a Bug Number: UDevC00117286. If you import media from a P2 drive and create a sequence with the media that is still on the drive, performing a Send to Playback operation consolidates the media to an incorrect drive.
Workaround: Consolidate the media from the P2 drive before you send to playback.
a Bug Number: UDevC00113856. If you check in a sequence that uses master clips that are currently being ingested, then open Interplay Access, the sequence appears as partially online (blue), although the sequence is actually online. This also applies to .transfer sequences.
Workaround: To update the status, select the items, right-click, and select Update Status from Media Indexer.
a Bug Number: UDevC00112191. Archive Restore: “No resolution found” errors after performing a Restore from Archive operation.
Workaround: If you receive this type of error when performing a restore, right-click the clip and select Update Status from Media Indexer, and perform the restore operation again.
a Bug Number: UDevC00100643. If you connect an NLTEK drive to the same Firewire bus as the Adrenaline hardware, the system competes for resources on the bus and video may stutter when playing back from the NLTEK device.
Workaround: When connecting an NLTEK drive to an Adrenaline system, connect the NLTEK drive and Adrenaline hardware to different Firewire buses Limitations a Bug Number: UDevC00105508. When performing a “Check into Interplay for Pro Tools,” two of the three options for Audio Mixdown do not work correctly if you apply the setting from the Avid editor. Selecting "No Mixdown" results in a Stereo Audio Mixdown and selecting "Stereo Mixdown" results in No Audio Mixdown. Selecting "Mono Mixdown" works properly.
Workaround: Select the option for the setting in the Interplay Administrator > Editor Export Settings for Pro Tools view.
a Bug Number: UDevC00096276. (Limitation with Interplay Media Services) Clip names containing more than 255 characters are not supported when using Interplay Media Services.
a Bug Number: UDevC00096276. (Limitation with Interplay Media Services) Clip names containing more than 255 characters are not supported when using Interplay Media Services.
a Bug Number: UDevC00099173. (Interplay Media Services) In an Avid editing application, after you deselect and then reselect the Media Services setting "Media Services are Available," the list of providers in the Media Services sub-menu is not accessible.
Workaround: To provide access to the list of Media Services providers from the Avid editing application you must exit the Avid editing application and restart it.
a Bug Number: UDevC00099633. Do not use the Windows “Fast User Switching” feature in an Interplay environment. It can lead to confusion about whether the correct drives are mounted for each user. For example, if an Administrator logs on and mounts all drives and then switches to a user that only has access to one or two drives, all drives will still be mounted.
a Bug Number: UDevC00099012. Interplay Engine E-mail service might be unreliable if there are too many event notices in a short time frame. Some events might be dropped. Workaround: A large number of event notices indicates a problem, so the administrator needs to Investigate the problem in any case.
a Bug Number: UDevC00099003. Interplay Engine When the Interplay Engine server sends e-mails, it uses the login of the Server Execution User. Make sure the mail server is aware of the username and password of this account (usually a domain account). If not, the mail server might reject the e- mail request. For information on email notification, see the Interplay Engine and interplay Archive Engine Administration Guide a Bug Number: UDevC00099458. Interplay Administrator: For best performance, a list of values for a custom property (created in an XML file) should have fewer than 20 entries, and you should not activate more five custom properties that use a list of values. For information on creating custom properties, see the Interplay Engine and interplay Archive Engine Administration Guide.
a Bug Number: UdevC00096607. During AutoArchive any failed archives are submitted continuously and exceed the maximum number set by the retry setting in the Avid Interplay Service Configuration > Service Settings > Configure AutoArchive window.
Workaround: Set the maximum number of retries for a failed job to 1. When a job fails it is moved to the failed folder.
Limitations a Bug Number: UDevC00089277. VC-1 Resolutions are not supported in Interplay v1.2.x or Interplay v1.4.2. VC-1 support was added to the Avid editing applications at the x.8 release (for example NewsCutter v6.8). However, VC-1 resolutions are not supported in an Interplay environment. VC-1 is a SMPTE 421M video codec standard.
a Bug Number: UdevC00093731. Limitation When using Frame Chase Editing (EWC), if you try to transcode subclips after the capture is complete, the transcode fails indicating the clip is still being captured even though the master clips display “complete”.
Workaround: After the master clip of the subclip is complete, re-checkin the subclip to the Interplay database before you start the transcode.
a Bug Number: UDevC00096386. Interplay Assist Send to Playback: If you perform a “Send Source to Playback” command on a source clip that contains restrictions, the system does not warn you that the clip contains restrictions. Note that the system does display a restriction message when you load the clip in the Source monitor so you are warned at least one time.
a Bug Number: UDevC00093002. Installing from shared storage: At large sites it is often useful to copy installers to a central shared storage location and run the installers from there. Sometimes when you do this the installers may display an I/O error or complain of a bad or corrupt file. If this problem occurs, copy the installer locally and run it or run the installer from the Avid Interplay Installer.
a Bug Number: UDevC00092387. Interplay Access license: When you use up all of your Access licenses and try to log in, the system displays an incorrect error message. The error message states that the evaluation period has expired. It should state that you cannot log in because there are no more licenses available.
a Bug Number: UDevC00093257. You might receive an access violation error while dragging multiple clips from the Interplay Window into a bin. This occurs if you select an individual clip, drag it to the bin and then repeat the process quickly.
Workaround: Select multiple clips and drag them to the bin.
a Bug Number: UdevC00093580. When performing a partial restore of a large sequence, the Job Status and progress bar displays a percentage of the completed job until the Restore Provider is finished processing the job. The process might appear hung during this time.
Workaround: You can monitor the Restore Provider to check the job's activity.
a Bug Number: . Avid Interplay v1.2 and Interplay v1.4 do not support MXF media encoded using the VC-1 resolution and codec. The VC-1 codec was initially developed by Microsoft and has been standardized as SMPTE 421-M. The vx.8 versions of the Avid editing applications support editing and playback of MXF media encoded using the VC-1 resolution and codec. Interplay does not support the resolution for this release.
a Bug Number: . Interplay Archive and Restore upgrades: Before starting the upgraded archive/ restore provider applications, delete the contents of the C:\Temp folder. Perform the task when the archive/restore provider applications are not running. You can perform the deletion before or after you upgrade the software.
Limitations a Bug Number: UDevC00092202. If you have used the NXNServerUser.exe tool to change the Server Execution user, the Interplay Engine installer uses the old value when you upgrade to this release. In this case, if you don’t use Custom install and supply the correct value, you will have problems with the cluster. For example, the cluster will not be able to fail over.
Workaround: On a cluster, use the Custom install option and make sure you supply the correct Server Execution user when prompted.
a Bug Number: UDevC00092128. Checking a Bin into Interplay while a capture is in progress: If you check in a bin while a capture is in progress, the clip associated with the capture may not be checked into the Interplay database.
Workaround: Perform an Update Status from Media Indexer command in Interplay Access and the status will be correct.
a Bug Number: UDevC00086972. Media Services Transcode: If you submit two transcode jobs for the same source file, and each job uses a different provider, the transcode might fail with a DISK FILE NOTE FOUND error.
Workaround: Try the operation again. If you get the same error message, check if the source clip is corrupted, that your configuration is correct, and that all Interplay components are running correctly.
a Bug Number: UDevC00087103. Media Indexer: If the media indexer service does not start after a reboot you will need to manually start it using the Avid Interplay Workgroup Properties tool.
You must use Interplay Service Configuration tool to ensure that the Avid Service Starter Service automatically restarts other services, such as the Interplay Media Indexer service. For more information, see the Interplay Software Installation and Configuration Guide.
a Bug Number: UDevC00091228. Selecting Check In All Open Bins from the Fast menu in the bin might not check in the open bins.
Workaround: To check in all open bins, select Check In All Open Bins from the File menu.
a Bug Number: UDEV00091445. “Check into Interplay for Pro Tools” command: Automatic renders occurring during command execution appear offline for the Pro Tools editor if the source media is on a local drive.
Workaround: If you have a sequence that contains local media and you apply effects to it, render the sequence in to out and explicitly select a shared Unity volume during your manual render. After the render is complete, use the Check into Interplay for Pro Tools command.
a Bug Number: UdevC00090469. Disconnect mode: If you are working on an editing system that is disconnected from Avid Interplay (using Disconnected Client mode), you cannot create OMF audio.
If OMF is selected as the media type in the Media Creation settings, and you open the Audio Project setting, the Audio File format is set to PCM and cannot be changed.
a Bug Number: UDEVC00090431. In Interplay Assist, if you change the name of a clip and then archive it, the original name (not the new name) appears in the Job tab of the Interplay Media Services window. The name appears correctly in the Archive Manager and is archived correctly.
a Bug Number: UDevC00090855. In Interplay Access, the Disk Label field does not display the XDCam disk label.
Limitations a Bug Number: UdevC00090905. The Migration Tool supports the default SQL server setup. The tool does not support a SQL server using an instance name or port other than the defaults.
Workaround: You can either reinstall the SQL server using the default setup or run the Migration Tool from another SQL server. To use a non-standard port number, you need to enter the hostname in the Migration Tool using one of the following formats:
mySQLserver:4027 or mySQLserver/portNumber=4027 In this example, mySQLserver is the hostname of the SQL server, and the port number used is 4027.
a Bug Number: . You cannot perform a partial restore operation with OMFI media files. If you want to take advantage of partial restore with material that you have migrated from a MediaManager environment, you must re-archive the material in an Interplay archive.
a Bug Number: UDevC00088720. Interplay Assist memory problems and sluggishness. If Interplay Assist encounters .pmr files in the Avid MediaFiles folder on shared storage, it will attempt to work with the files. This can interfere with the application’s use of the Media Indexer to locate files and can cause Assist to have memory problems and sluggishness. The .pmr files are used by standalone Avid editing applications (editors that are not connected to Interplay).
Workaround: Check the shared storage areas used by Assist for .pmr files. Look in the Avid MediaFiles folder. Either delete the .pmr files or point Assist to another workspace.
a Bug Number: UDevC00090952. In Interplay Assist, if you select Media > Mount Volumes, the Scanning for New Volumes window opens and does not close. You can continue to work by clicking in the Assist application, but the Scanning for New Volumes window stays open behind the application.
Workaround: Mount the drives you need before you start Interplay Assist.
a Bug Number: UDevC00081178. FTP Ingest of XDCAM HD 24p is not supported.
Workaround: Use the Firewire ingest method. For details, search for “Connecting the XDCAM Device” in the Help for your Avid editing application.
Avid MediaStream™ native ingest is not supported for this release.
a Bug Number: UDevC00090719. Audio clips that are online may display a partially online icon in the bin. You can play and edit the media normally and the clips appear correctly in the Timeline.
a Bug Number: UDevC00090212. Clips captured from an Airspeed system through Capture Manager might display the Creation Date as the completion time instead of the start time. This is possible with clips 30 minutes or longer.
Limitations a Bug Number: UDEVC00090615. Using 720p media with Assist: If Dynamic Relink is turned on for Assist and Instinct, you cannot hear the audio portion of a 720p clip that was captured by AirSpeed.
Workaround: Turn off Dynamic Relink for Assist and Instinct as follows: Open the Interplay Administration tool, open the Editor Database Settings view, and select False to disable Dynamic Relink. Note that this turns off Dynamic Relink for all Assist and Instinct users.
a Bug Number: UDEVC00088720. Avid Assist and .pmr files: If there are .pmr files present on a shared storage workspace, Assist can have performance problems because it attempts to use the .pmr files and Media Indexer information at the same time. Note that .pmr files are created by standalone Avid editing applications that are not part of the Interplay environment.
Workaround: Check the workspace for an Avid MediaFiles folder or an OMFI MediaFiles folder containing .pmr files. Determine whether you should delete the folder or have the Assist applications use a workspace that does not contain those folders.
a Bug Number: UDevC00089372. In Avid iNEWS, you cannot use the German characters “µ” or its uppercase equivalent “M” in the directory tree for folder or queue names.
a Bug Number: UDevC00085343. If you run multimedia third-party software on your Interplay Assist system, you might not be able to play video and audio, even though you can see the video when you shuttle through.
a Bug Number: UDevC00088912. If you create locators in Interplay Assist and then update them in an Avid editing application, the locators don't update within Assist even if you press F5 to refresh the application.
Workaround: Workaround: Reload the shotlist to see the updated locators.
a Bug Number: UDevC00086432. Dynamic Relink, FlightPlan, and 720p 59.94 and 50 media: The audio can go offline for these resolutions if you have dynamic relink turned on and set to the default “if no match is found, Relink to Offline”. This only happens when you use FlightPlan to transfer Airspeed-captured media to a bin.
Workaround: If the audio goes offline in this case, change the Dynamic Relink setting to “Closest Media”. Then right-click the clip in the bin and select “Update from Interplay” to update the clip.
a Bug Number: UDevC00085624. Checking out a sequence while the original sequence is loaded in the source monitor might crash the Avid editing application. This only happens if you have the sequence loaded and are in either Effects mode or Color Correction mode.
a Bug Number: UDEVC00078370. Sequence with Color limiter effect on filler might crash Avid Assist.
Workaround: Render the effect in the Avid editing application.
a Bug Number: UDEVC00080383. Cannot save Boris Effects templates to bin after checkout from Interplay.
Workaround: Save the template to a bin before checking the sequence into Interplay.
Limitations a Bug Number: UDEVC00054142. Bin display settings for the Interplay Window do not persist when changing folders.
Workaround: You can select the media search tab and then go to the bin menu and select Set Default Interplay Window Display. However, by doing so, you change all folders views within interplay.
a Bug Number: UDevC00078381. Transcode with Interplay Access: You cannot use Interplay Access to transcode a motion effect clip. Access does not display the Transcode option for motion effect clips.
Workaround: Use the Bin > Consolidate/Transcode command in the Avid editing application.
a Bug Number: UDevC00079824. AutoArchive: If you attempt to perform an AutoArchive operation with a profile that does not exist, the system returns the following error: “Unable to start job...ProviderException: 20...Parameter missing...” This can happen if you assign a profile to an Autoarchive folder and then delete the profile later on.
Workaround: Assign or create a new profile for the autoarchive folder.
a Bug Number: UDevC00078380. Media Services Transcode: You cannot use Media Services Transcode to transcode a motion effect clip. The system displays the error “Invalid Media Type.
Transcode Failed.” Workaround: Do one of the following:
- Use the Bin > Consolidate/Transcode command in the Avid editing application to transcode the
motion effect clip.
- Transcode the source master clip that makes up the motion effect using either Media Services or
Avid editor transcode.
a Bug Number: UDEVC00050258. If you restart the Media Services engine while the Archive, Restore, or Transcode providers are running, the services do not start up automatically, even if you have configured them to do so.
Workaround: Quit and restart the services.
a Bug Number: UDEVC00051583. Checking in a Duplicate clip with a restriction: If you create a duplicate of a clip that contains a restriction, and then check the clip into the Interplay database, the red triangle doesn’t automatically appear on the duplicated clip.
Workaround: Click the duplicated clip in the Interplay Window (to set focus to the window) and press F5 (to refresh). The red triangle appears.
a Bug Number: . Custom Metadata fields: If you create custom metadata fields in the Interplay Administrator, Interplay Access, or Interplay Assist, you cannot delete them or turn them off for this release. However, you can now turn off the display of individual custom metadata fields. See the Avid Interplay Access User’s Guide for more information.
Limitations a Bug Number: UDevC00090853. 720p – 220/185x Rolling Crawling Titles and Dynamic Relink:
When using 720p – 220/185x, you cannot use the “relink to offline” and “specific resolution/ dnx220x” Dynamic Relink settings with a rolling title that is more than two pages long. The system displays a wrong format error when you load the title in the source monitor. The title becomes corrupt and must be recreated.
Workaround: Turn off Dynamic Relink and recreate the title media. The problem does not occur if you use the “Use Closet Media” value in the “if no match is found” setting.
a Bug Number: UDEVC0051900. Rendered titles show two resolutions in Interplay Access. This is as designed. When the Avid editing application renders a title, it creates two media files: one in the target resolution, and a second in MXF 1:1 resolution. When you check the title in to Avid Interplay, both media files are checked in. Interplay Access lists the MXF 1:1 resolution as the current video resolution. When you delete a rendered title from Interplay Access, select both resolutions.
a Bug Number: UDEVC0025865. If you perform a Bin View Save As operation for a bin that contains resolution columns, the resolution columns are not saved. Any other columns you saved will work correctly. When you apply that Bin View to another bin, the system displays the following error message:
“One or more columns in the view are not relevant in this kind of project and will not be displayed.” Workaround: Manually add the resolution column to the bin.
a Bug Number: UDEVC00052480. Batch Import of files containing Alpha: This problem occurs if you want to batch import files in SD and HD formats and then use Dynamic Relink to switch between the different formats. The problem occurs with QuickTime movies, graphics, and sequences that contain alpha. You can batch import the files and relink to the different formats, but if you exit and then restart the Avid editing application, you can no longer relink to the HD format. The system displays an “Exception: NO Compressed Data Format found” error message.
Workaround: You cannot use Dynamic Relink with HD and SD clips that contain alpha. Import the HD files with alpha as individual clips. When you want to switch to HD format, edit the HD versions into your sequence.
a Bug Number: UDEV00230928 UDevC00026052. XDCAM HD imports: If the Avid editing application is using more than 40% of available memory, importing XDCAM HD low-resolution proxy clips into a bin might fail with a bad allocation exception error message.
Workaround: Close some bins to free up memory (especially bins containing many objects). You can view the memory usage in the Bins tab of the Project Window.
a Bug Number: . In Avid Interplay Assist and iNEWS Instinct, avoid displaying more resolution columns than you need. The system frequently updates the status in the resolution columns and having too many active can affect performance. Sequences can be especially slow to update when there are many resolution columns. Once columns are displayed, they continue to impact performance for that session even if you hide them. If you reduce the number of resolution columns and save the column layout, you won’t see a performance improvement until you restart the application.
a Bug Number: UDEV00225692 UDevC00024104. Folders containing assets marked with reservations appear in Interplay Assist, Instinct, and the Interplay Window with the reservation marker, but the individual asset type icons in the Research panel do not display the marker.
Limitations a Bug Number: UDEV00218247 UDevC00024136. Delete dialog box naming conventions: Some of the naming conventions in the Interplay Access Delete dialog box do not match the resolution names in the Avid editing application bin. For example, the following list shows some differences.
Media Composer bin Delete dialog box Dnx145 DnX HD 6:1 1:1 Uncompressed DVCPro HD DVCPro HD 9:1 Dnx220 DnX HD 4:1 Windows User Account Requirements The following limitations exist for Interplay:
a Bug Number: UDevC00052215. Avid editing applications such as NewsCutter, Media Composer, and Symphony that are part of an Interplay environment can use a regular Windows User login.
However, when you install the application you must first log in as an Administrator, install the application, and initially launch the application as an Administrator. See the Avid editing application Readme for details.
a Bug Number: UDevC00088970, 89118. Avid Assist and Avid Instinct have similar limitations:
When you install the application, you must first log in as an Administrator, install the application, and initially launch the application as an Administrator. You may then subsequently run the application as a regular User.
a Bug Number: UDEVC00098723. Regular Windows user login and Media Creation tool: When you select Auto-Indexing in the Avid editing application Media Creation tool, the system creates duplicate storage items in the Media table for the local Media Indexer. This can happen every time the Media Indexer scans the local storage drives or P2 drives. If it continues to occur the Media Indexer can become unresponsive and you could get Media Offline messages.
Workaround: To determine whether you are experiencing this problem, open the Service Configuration tool, select the editing system, and then select the Media Indexer process. Click Configure, and see whether there are duplicate entries for your local storage locations. If there are duplicate entries, delete the duplicate entries and do one of the following:
(cid:129) Periodically check the Service Configuration tool and delete the duplicate entries (cid:129) Log on as a Windows Power User or Administrator.
(cid:129) Disable the auto-indexing feature. Instead, click on "Manual scan" every time changes are made to the drives available to the editing system.
Limitations Clips from the Same Tape That Have Overlapping Timecode a Bug Number: UDevC00055238, UDevC00055241, UDevC00055244, UDevC00055249. This section describes several limitations that involve clips from the same tape that have overlapping timecode. The problem is most evident when the two clips are captured at different resolutions. This can happen when you do the following:
1. Use the Capture tool to capture a clip.
2. Change the capture resolution.
3. Back up the tape a little, and start capturing again at the new resolution.
Now you have two clips and two separate media files. The end of the first clip and the start of the second clip share the same timecode.
You see the following problems with these clips:
(cid:129) In the Interplay Access Object Inspector, each clip displays as a separate media file, each at its captured resolution. However, the Avid editing application sees the clips as sharing media. If you display the clips in an editor bin and display column headings for both resolution types, both clips show at least a partially online status for each resolution.
(cid:129) If you send the low-resolution version of the clip to Media Services Transcode, the system uses the high resolution for the Transcode. This produces a higher-quality result but takes longer than transcoding a low-resolution version.
(cid:129) If you delete the media from the first clip and then load the clip into the editor Source monitor, you see the media from the second clip. However, if you attempt to Transcode the clip, you get an error message because the actual media for the clip has been deleted. This can be confusing because you see an online version of the clip but can’t transcode it. The clip is linking to a different media file in the editor Source monitor but the media is not associated with the metadata for the clip.
In this last scenario, if you look at the clip in the Interplay Access window, you see a red X that indicates that the media is not available. There is no corresponding display in the editor bin.
Disabling the Onboard NIC on an HP xw8400 Causes System Instability UDevC00055194 The Avid Interplay Software Installation and Configuration guide contains the following information:
Computers with Multiple Network Interfaces
> **Note:** “If you have multiple network interfaces on a computer and one is not used, use the Device Manager
to disable the interface. If not, the computer may have problems communicating with the Service Framework Multicast Repeater.“ The following information should be added to that section regarding the HP xw8400:
Do not use the Device Manager to disable the onboard network interface card on an HP xw8400.
Doing so could cause intermittent hard hangs (no keyboard input or mouse movement) or other system instability such as unexpected reboots. Instead, use the following procedure.
Limitations To disable the onboard network interface card via the BIOS:
1. Boot, or reboot, the system
2. Press the F10 key when prompted to enter BIOS setup
3. Choose your preferred language when prompted to enter Setup.
4. Once into the BIOS, use the right arrow to navigate to the Security Menu
5. In the Security Menu, select Device Security
6. In the Device Security selection window, use the down arrow to select the Network Adapter.
7. Use the right arrow to change the option to read “Device Hidden” instead of “Device Available.”
8. Press F10 to save your setting change.
9. Press F10 again to get to the Save Changes and Exit prompt.
10. Press Enter to select Save Changes and Exit.
11. Press F10 to Save and Exit.
International Character Support Limitations a Bug Number: UDevC00163794. Receiving workgroup transfers from a remote workgroup to a workspace containing Chinese characters can fail. The transfer fails with a kNetwork error.
Workaround: When using Workgroup transfers, ensure that the name of the receiving workspace does not contain Chinese characters.
a Bug Number: UDevC00148244. (Archive) In an SGL archive environment, you cannot archive transcoded media that contains Japanese characters in the name. The .mxf files created have Japanese characters in their names. To archive the files, underscores must replace the Japanese characters.
Workaround: Do not use Japanese characters in the clip name when you transcode. Add Japanese characters to the clip name after you transcode, or use ASCII characters.
a characters in Chinese.
a Bug Number: UDevC00149616. (Interplay Access and Interplay Administrator) Drop-down menus for selecting custom properties do not display multibyte characters after importing an XML file containing multibyte characters.
a Bug Number: UDev00089590. Workspace names: Workspace names that contain non-ASCII characters can cause poor performance when working in a bin.
Workaround: Use only ASCII characters in workspace names.
a Bug Number: UDevC00089671. Workspace names in Asian characters might appear truncated at the end in any drive-selection list.
Workaround: Workaround: When using Asian characters, use no more than 10 characters for workspace names.
a Bug Number: . Archiving does not support ICS for this release.
Limitations a Bug Number: UDevC00052231. If you enter Asian characters as restriction information, the characters might appear as question marks when you view that restriction in another Avid application.
a Bug Number: UDevC00051060. If you change the font or font size of your input, and see characters rotated 90 degrees, make sure you select the correct font. Do not use any font that begins with the “@” symbol.
a Bug Number: UDevC00052541. Do not create a Project using the Euro currency character (ALT 0128). The Project fails to be created and a “Can't Open Project” error message is displayed.
a Bug Number: UDevC00022395, 22346. Certain Asian characters might not appear in the correct order in some text boxes in your Avid editing application.
a Bug Number: UDevC00078651. Use only ASCII characters in passwords.
Interplay Access Limitations a Bug Number: none. Compatibility with prior versions: The Interplay Engine or Interplay Archive Engine and the Interplay Access client must be updated at same time. Interplay Access clients will not work with older Interplay Access Engines or Archive Engines and vice-versa.
a Bug Number: UDEVC00035172. Multi selection drag and drop issue when one file asset already exists in target folder: When a multi selection is dragged and dropped and one of the file assets exists in the target folder already, no files are moved and the results are not as the user would expect. This is the result of a rollback of the transaction and appears as follows:
(cid:129) Red check marks (indicating a check out) turn blue. The checkout path has already been moved to the new location, so when the file is moved back to the original location but the checkout path is not updated again, the check mark appears blue. These items can be checked in again safely.
(cid:129) The local copies of not checked out assets seem to be deleted. The local copy of the asset is not actually deleted, it is just not moved back to the original location.
(cid:129) The file that exists in the target keeps its local copy.
a Bug Number: UDEVC00039014. Working in a folder during an import causes problems: When performing a large import, working in the same folder you are importing to might cause problems with the import. You might be prompted to refresh your view, in which case the import was successful. In other cases, a message indicates that the import failed and you need to perform the import again, without touching the folder.
a Bug Number: UDEVC00038766. Get latest on extremely large folder causes problems for user Administrator: When the user Administrator performs a Get Latest on a folder that contains assets in number approaching 50,000, a potential problem might occur; the client slows down, but the operation actually continues. If the client reaches the free memory limit, a corresponding message is shown and the operation is cancelled. This does not occur if another user (not Administrator) has performed a Get Latest on the same machine already.
Workaround: Users should perform a Get Latest on the smallest range of items possible, such as a subfolder.
Limitations a Bug Number: UDEVC00039061. Internally used file name appears for Avid Assets renamed to blank name: If a blank name or only spaces is entered in the Rename dialog for an Avid asset, the internally used file name (mob id) appears as the name instead (long string of numbers and letters).
a Bug Number: none. Tree state is only remembered on the same machine: The tree state upon logout is remembered the next time you log onto Interplay only on the same machine (stored per user, per machine).
a Bug Number: UDEVC00007386. Issues with preview of large text files: Text files over 1MB are not shown in the Preview by default, however, if you explicitly click the Show File button for these large files, low memory problems may occur.
Interplay Administrator Limitations a Bug Number: UDEV00210720, UDEVC00037618. Limited number of clients per user per machine: Only one Interplay Access instance and one Interplay Administrator instance can run at a time on one machine per user. This software will not support terminalserver sessions.
a Bug Number: none. Low disk space issues: In low-disk-space situations, the Administrator cannot log on and shut down the server, and move databases by normal means. There are tools provided to solve such problems (available in the Installation CD’s Tools directory or installed by default in the Server installation directory):
(cid:129) NxNServerLock.exe (cid:129) NxNServerUnlock.exe (cid:129) NxNServerShutdown.exe To move databases under low disk space conditions:
1. Lock the server using NxNServerLock.exe.
2. Shut down the server using NxNServerShutdown.exe, if necessary.
3. Move the databases to another drive or free up some disk space.
4. Unlock the server by doing one of the following:
- Use the Interplay Administrator’s Lock Server view (see the Avid Interplay Engine and Avid Interplay Access Administration Guide for details) - Use NxNServerUnlock.exe
5. Deactivate any moved databases using the Interplay Administrator’s Manage Databases view
(see the Avid Interplay Engine and Avid Interplay Access Administration Guide for details).
6. Activate any moved databases in the correct location using the Interplay Administrator’s Manage
Databases view (see the Avid Interplay Engine and Avid Interplay Archive Engine Administration Guide for details).
a Bug Number: UDEVC00039474. Passwords should only include ASCII character set: User passwords should only include the ASCII character set. Multibyte passwords might cause logon problems.
Workaround: If logon with a multibyte password fails, the administrator should reset the password in the User Management view of Avid Interplay Administrator.
Limitations a Bug Number: UDEVC00006908. Limitation: Browse for new data location does not show mounted workspaces on Avid ISIS in the tree: In the Create Database view in the Interplay Administrator, when you click Browse in the New Data Location (Assets) section, the mounted workspaces on shared storage might not be shown.
Workaround: Type the path manually.
a Bug Number: UDevC00007123, UDEVC00039984. Voice over target workspace field says “No Items to Show”: An administrator logged in to the Avid Interplay Administrator may see “There are no items to show” in the Editor Database Settings view in the field Voice over target workspace field instead of the drives. This is intended behavior: the administrator must also be a Avid Unity user with the same credentials in order to see the workspaces of the Avid Unity. If the workspaces are not visible, check that:
(cid:129) The user is a user on the Avid Unity.
(cid:129) The user has the same password as the user on the Avid Unity.
(cid:129) The Avid Unity is reachable.
(cid:129) The user is allowed to see the workspaces.
(cid:129) There are actually workspaces at all.
Configuring Remote Workgroups a Bug Number: UDevC00051760. In order to use the Configure Remote Workgroup view in the Interplay Administrator tool, you must have matching Administrator accounts on both workgroups.
The accounts must have the same user names and case-sensitive passwords. For more information on user names and passwords, see the Avid Interplay Software Installation and Configuration Guide.
Archive and Restore a Bug Number: UDEVC00052832. Archive Provider: Windows Message Queuing software must be enabled on the Archive Provider. If you perform a clean install on a system that will run the SGL FlashNet client, you must enable the Windows Message Queuing software. This applies to any system running the Interplay Media Services Archive Provider. If the Windows Message Queuing software is not running, jobs fail to archive. For details, see the Interplay Media Services Readme.
Checking in Avid Assets a Bug Number: UdevC00092889. When creating and checking in a clip or finding a clip in the Avid editing application's Interplay Window, if the clip name contains a slash (\ or /), the application hangs for about one minute then returns to normal.
Workaround: Remove the slash from the clip name.
a Bug Number: UDevC00089019. Checking in bins with deleted clips: When you check in a bin, the Avid editing application determines whether clips need to be checked in based on whether you have modified them or added them to the bin since the last check in. If clips have been deleted from Interplay since the last check in, checking in the bin will not check in the deleted clips again. You need to force a check in of the deleted clips. To force a check in, select the clips and then select Check In To Interplay from the File menu or bin context menu. To force a check in of an entire bin, select all clips in the bin and select Check In to Interplay.
Limitations a Bug Number: . When you check a large sequence into the Interplay database from the Avid editing application, the check in can take several minutes. The system provides an initial progress bar to let you know that the checkin has initiated and that you can now get back to work with the application.
However, there is no additional indication to tell you when the checkin has completed. This can be a problem if you check in a large sequence or a bin with many sequences and you don’t see it appear right away in the Interplay Window.
Workaround: If you check in a large sequence and it doesn’t appear right away in the Interplay Window or Access, return to the window in a few minutes to see if the checkin has completed.
Deleting Files from the Interplay Database a Bug Number: UDevC00025736. Try to schedule large file deletions (for example, over 300 GB) during off hours. A large delete operation can slow down the response time on the Avid Interplay Engine. This also slows down the response times on Avid editing applications that are working with the Interplay Window.
a Bug Number: . If you create shared media using a local bin, and later delete that media without ever checking the clips into the Interplay Window, the clips’ metadata is not deleted from the “Unchecked in Avid Assets” folder. An administrator can delete this metadata as part of normal system maintenance. This only happens to clips that have not been checked in to a folder in the Interplay window.
Dynamic Relink and Clips with Pulldown a Bug Number: . Dynamic relink is not currently supported for media that requires pulldown.
Therefore, you can only use it with clips where the media has been acquired at the native frame rate (without pulldown).
Dynamic Relink and Mixed Frame Rates a Bug Number: . All resolutions that are eligible for dynamic relink must use the same frame rate. For example, you cannot dynamically relink a 30i master clip in the Timeline to 24p media. You can, however, dynamically relink a 30i master clip to a 1080i/59.94 master clip.
Editing a Bug Number: UDevC00083980. Viewing media folders in the Interplay database from Assist, Instinct, and Interplay Window: Occasionally when you launch Assist, Instinct, or one of the Avid editors, the following occurs:
(cid:129) In Assist and Instinct, no media folders are visible in the Directory panel.
(cid:129) In the Avid editing application, no project folders are visible in the Interplay Window.
Workaround: Restart Assist or Instinct. For the Avid editing applications, log out of the Interplay Window and log back in.
Limitations a Bug Number: UDEVC00021278. Transcoding Titles: You cannot transcode the titles in a sequence to another resolution. If you transcode a sequence with a title in it, the sequence is transcoded but the title is not transcoded.
Workaround: Recreate the title in the new resolution or reimport the original matte key.
a Bug Number: UDevC00025855. Creating subclips - After you drag a clip to a local bin from the Interplay Window, you cannot use the simple drag-and-drop method to create a subclip. The simple drag-and-drop method involves loading the clip into the monitor and then dragging it from the monitor to the bin.
Workaround: Alt+drag the clip from the monitor to the bin or use the Subclip button.
a Bug Number: UDevC00036994. Deleting media from a master clip might not update the online/ offline status of the associated group clips or subclips in Interplay Access.
Workaround: Return to the Avid editing application bin and check the group clip in to Interplay Access again by dragging it into the Interplay Window.
a Bug Number: UDevC00021148. When you search for non-alphabetic characters in clip names in the Interplay Window of an Avid editing application, the search results might not be accurate.
Workaround: Searching in Interplay Access finds the non-alphabetic characters correctly.
a Bug Number: UDevC00024672. If you drag an unnamed clip into the Interplay Window in an Avid editing application, the clip might appear in the Interplay Window with no name or with its original name and might appear in Interplay Access with a numeric name.
Workaround: Name clips before you drag them into the Interplay Window.
a Bug Number: UDevC00052609. Editing apps If you import a graphic from your local drive into a project in an Avid editing application, change the original name of the clip to a name of your choice, and check that clip into a folder in the Interplay Window, the new name does not appear in the Interplay Window even when you refresh the window. You see only the original name.
a Bug Number: UDEV00217606 UDevC00023944 Editing Apps. In the Avid editing application, the Record Track monitor buttons might be deselected if the following happens:
1. On System 1, you create a sequence and check it into a folder in the Interplay Window.
2. On System 2, you check out the sequence and load it into the Timeline.
3. On System 1, you edit the sequence and check it into the Interplay folder again.
4. On System 2, you refresh the Interplay window then check out the same sequence again.
Workaround: Select the Record Track buttons again.
a Bug Number: UDEV00216346 UDevC00023435 Editing Apps. If you consolidate a MultiRez master clip at a particular resolution, and either drag it into the Interplay Window or check it into Interplay Access, it might be available at only the resolution you had set when you consolidated the clip.
Limitations a Bug Number: . The Avid editing applications might encounter the following errors using AVX™ plug-ins:
(cid:129) Running out of memory with AVX plug-ins (cid:129) Check-in and check-out errors with sequences containing AVX plug-ins (cid:129) Unable to render AVX plug-ins a Bug Number: UDEV00215167 UDevC00023009 (as designed) . Avid editing application: The OMF® option is not available in the Media Creation settings on a system that is part of an Avid Interplay environment.
Edit While Capture (Frame Chase Editing) a Bug Number: UDevC00086768. You may see the following error message when loading a clip captured by Frame Chase capture in the editor:
“Error encountered during relink process: New track length does not equal original track length.” Workaround: In the editing application, right click the clip and sequence and select Update from Interplay. In Assist, refresh the clip from the Interplay database by selecting the clip and pressing F5.
a Bug Number: UDevC00080038. When you perform a Frame Chase capture of a DNxHD 45 clip, the master clip displays incorrectly in Interplay Access as 1080 36.
Workaround: The clip is still useful as DNxHD 45. Subclips created from the masterclip show as DNxHD 45. The clips show the correct resolution in the Avid editing application.
a Bug Number: . You cannot perform a Send to Playback operation while capturing from AirSPACE.
Workaround: Wait until the capture is complete and then do the Send to Playback.
a Bug Number: UDevC00035776. Frame Chase Editing: The system returns a Disk Space Error if you attempt to perform a workgroup transfer on a sequence that contains a clip that is currently being captured.
Workaround: Wait until the system finishes capturing the clip, and then perform the workgroup transfer operation.
For more information on Frame Chase Editing, see the Avid Interplay Transfer ReadMe.
Folder Limitations for the Interplay Database a Bug Number: none. It is important that you do not store more than 20,000 assets in Interplay database folders. In general, you can keep up to 5,000 assets in a folder without affecting system performance. One of the problems with storing many assets in a folder is the amount of time it takes to list the items in the folder when you open the folder for browsing.
Periodically check that folders do not contain more than 5,000 assets. Delete or move assets to other folders. If a folder must contain a large number of assets it is more efficient to add multiple subfolders for storing the assets. For additional information, see see the Best Practices Guide.
Limitations This limitation also applies to ingest folders. If you know that you will have recurring ingests, you could set up folders for those ingests. For example, you could name folders for the days of the week or for specific types of ingest.
Film Projects a Bug Number: UDEVC00080131. Media Services Transcode does not support progressive film resolutions.
Workaround: Use the Consolidate/Transcode command in the Avid editing application.
> **Note:** You can use Media Services Transcode to transcode progressive HD resolutions 720p and 59.94.
Those are not film resolutions.
a Bug Number: UDevC00025645. Editing Apps In a film project, if you capture a clip at one resolution and then try to batch capture it at a different resolution, the media is not deleted and the clip links to only one resolution (dynamic relink is not available for film projects). This can cause orphan media files.
a Bug Number: UDevC00083571. If you have film projects and non-film projects on the same Interplay database, do not check film clips into the non-film projects. For example, the following scenario causes problems:
1. Check a film clip that contains audio and video into an 23.976 NTSC project.
2. Check the clip out and then check it into a 23.976 NTSC 35mm 4 perf project.
3. Check the clip out to the film project.
In this scenario, the system strips away the video.
Importing File Assets a Marquee™ Bug Number: UDevC00038006. If you check a Settings File (*.mqp) and/or an Image File (e.g., PNG, JPG, PCT, TIFF, PSD) into Avid Interplay Access, you can’t drag the newly created asset into a bin.
Workaround: Do the following:
1. Select the graphics file in Interplay Access and then select Get Latest from the context menu.
The file is copied to the working path on the local drive.
2. Use the Avid editing system's Import feature to import the graphic from the working path.
For more information, see the Avid Interplay Access User's Guide.
Limitations Media Indexer a Bug Number: UDevC00085031. Assist: If you start Interplay Assist while the Media Indexer that monitors shared storage is not available, Assist displays the following error message:
A program error has occurred. If you need assistance record the following information and call Avid costumer support. Error assertion failed m_pointer Workaround: Make sure that the Media Indexer is online and correctly identified in the Interplay Administration tool Server Hostname Settings view. Then restart Interplay Assist.
a Bug Number: UDevC00017894 as designed. Media Indexers that are part of a redundancy group must all be on the same subnet or VLAN. You can use the Service Framework Unicast Discovery feature to communicate with Media Indexers on different subnets or VLANs. However, if the Media Indexers are part of a redundancy group, they must be on the same subnet or VLAN. See the Interplay Software Installation and Configuration Guide for details on Unicast Discovery.
Migration from MediaManager to Interplay The MediaManager to Interplay Migration tools and related documentation are available on a separate CD. See your Avid representative for more information.
a Bug Number: UDevC00040002 as designed. Some master clips and subclips imported from a MediaManager environment (also known as Workgroup 4) might appear offline or partially offline.
Workaround: Open an Avid editing application, locate the clips in the Interplay Window, and drag the clips to a bin. Then check the files back into the Interplay Window. The clips should now appear online.
MultiRez a Bug Number: . The following features are not available for this release:
(cid:129) Multirez relink by tape name and key number.
(cid:129) Multirez support for pre-Interplay precomputes. This means that if you bring existing sequences into an Interplay environment, you must rerender effects.
(cid:129) Media files created by rendering effects (precomputes) are not dynamically relinked. If you render effects when they are linked to target settings and then switch back to working settings, the rendered effects will be lost. You can create effects in either mode, but render them only when they are linked to target settings as the last step before output. Render effects in the target resolution only as the last step before output.
Send to Playback a Bug Number: UDevC00058307 Limitation. When you send media to playback, the Send to Playback dialog box lists two separate bit depth settings: the Target Audio Resolution Bit Depth in the Relink Settings (Input) area, and the Bit Depth in the Audio Mix Settings (Output) area. The Relink Settings indicate the audio bit depth of your target resolution as set in the Interplay Administrator. The Audio Mix Settings match the bit depth settings of your playback device. Since Limitations the audio bit depth used by your media must match the bit depth settings of your playback device, your audio bit depth might be converted twice during the send-to-playback operation, first to the bit depth of your target resolution and then to the bit depth of your playback device.
For additional limitations and information on Sending to Playback, search for “playback” in this Readme. Also see the Assist ReadMe and the Interplay Transfer ReadMe.
Send to Workgroup a Bug Number: UDevC00081706 Limitation. MediaManager to Interplay Transfer: To perform transfers from a MediaManager workgroup to an Interplay v1.1.x environment, you must have MediaManager v4.5.12 or later and the related software versions (referred to as Bundle 10a).
Workaround: On MediaManager v4.5.10 (Bundle 9), you can use the Avid editing applications to perform the transfer. You can’t use Interplay Access to perform the transfer on MediaManager v4.5.10.
a Bug Number: UDevC00020533 Limitation. If you select multiple items to transfer to another workgroup, the system might perform more transfers than you expect. For example, if you select three clips and each has two resolutions online, the system performs 6 transfers, one for each resolution.
Workaround: Use the resolution bin columns in the Avid editing application so you can tell how many resolutions are online for clips that you want to transfer. Then you can select all of the clips that you want to transfer at a particular set of resolutions. When you transfer multiple clips in this way, the system displays a dialog box that allows you to choose the resolutions that you want to transfer. If you have performed a lot of transcode or redigitize operations, there might be a large number of resolutions associated with a particular master clip.