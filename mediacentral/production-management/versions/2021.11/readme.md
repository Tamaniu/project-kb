---
product: mediacentral-production-management
product-area: production-management
version: "2021.11"
release-date: 01/11/2021
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

MediaCentral | Production Management Version 2021.11 ReadMe Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Also refer to “Important Information in This ReadMe” on page 5.
Media Indexer MongoDB Security Issue If you are running an older version of Media Indexer that is between 2020.4.2 and 2021.3.x, you can avoid a security issue without upgrading to the latest version. For information, see this article on the Avid Knowledgebase:
https://avid.secure.force.com/pkb/articles/en_US/troubleshooting/Media-Indexer-MongoDB- Security-Notice Updated Security Guidelines As system and network security attacks become increasingly more inventive and persistent, Avid has adopted a new security strategy to help you, our customer and partner, better protect your assets and intellectual property. As you might know, Avid has traditionally recommended Symantec Endpoint Protection as the preferred and qualified solution for much of the Avid product line. As of Q3, 2020, Avid has introduced a more flexible strategy that provides general guidelines for protecting your Avid systems. This new policy allows you to choose the best security solution for your organization, while still following Avid best practices.
Revision History Date Revised Changes Made September 26, 2022 Updated the wording regarding the HPE MSA 2050 server to say “The HPE MSA 2050 has been qualified on the following operating systems running Interplay 2018.11 through 2021.3. After 2021.3 there is no support for Win2012R2.” For more information see “Support for HPE MSA 2050 on Interplay Engine Cluster Systems” on page 7.
February 1, 2022 Corrected the support of macOS Mojave 10.14.x to Production Management components 2021.3.
For more information, see “Support for MacOS Mojave 10.14.x” on page 8.
Date Revised Changes Made December 16, 2021 Updated the topic title from “New for Interplay Engine and Interplay Access 2021.11” to “New Features and Improvements for Production Management 2021.11”.
December 10, 2021 First released version. See the following:
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
New for Production Management v2021.11 See the following sections for information specific to 2021.3:
For information on fixes for Production Management 2021.11, see “Fixed in 2021.11” on page 48.
New for Production Management v2021.3 See the following sections for information specific to 2021.3:
For information on fixes for Production Management 2021.3, see “Fixed in 2021.3” on page 48.
New for Production Management v2020.4 See the following sections for information specific to 2020.4:
For information on fixes for Production Management 2020.4, see “Fixed in 2020.4” on page 50.
New for Interplay Production v2019.6 New for Interplay Production v2019.6 See the following sections for information specific to 2019.6:
New for Interplay Production v2018.11 The following features are new for Interplay Production 2018.11:
Hardware and Software Requirements For hardware and software requirements, see the following topics:
Supported Software For a list of software supported with Interplay releases, see the Avid Knowledge Base article “Avid Video Compatibility Charts.” For an article listing end of support dates, see the Avid Knowledge Base article “End of Support Dates.” Avid Editing Application Compatibility with Interplay Releases The following Knowledge Base articles provide information on compatibility between Interplay releases and editor releases:
(cid:129) See the Knowledge Base article “Interplay and Avid Editor Compatibility.” (cid:129) For details on the operating system (PC and Mac), QuickTime version, and nVidia drivers supported on the different editor releases, see the Avid editing application Readme and the Knowledge Base article “Avid Media Composer Documentation and Version Matrix.” Supported Hardware and Operating Systems For details on supported servers, operating systems, and components, see “Interplay Production Server and Operating System Support” in the Avid Knowledge Base article “Avid Video Compatibility Charts.” For an article listing end of support dates, see the Avid Knowledge Base article “Avid End of Life Dates.” Hardware and Software Requirements
> **Note:** When considering your choice of operating system, you must make sure to verify that all systems are
supported together. For example, if you install Production Management components on an Avid Media Composer client, you must make sure that your Media Composer and Production Management versions both support the same operating system. You must also verify that the Avid components are compatible. For more information on Avid software interoperability, see the following article on the Avid Knowledge Base:
http://avid.force.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Windows Server 2019 Support Starting with Production Management 2020.4.0, Windows Server 2019 Standard is now supported for all Production Management components.
Production Management v2021.3.x will be the last version to support Windows Server 2012.
http://avid.force.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Operating Systems and Servers no longer supported for Interplay 2018.11 and Higher Starting with Interplay 2018.11, the following are not supported:
(cid:129) AS3000 Server (cid:129) Windows Server 2008 R2 Interplay 2018.11.x was the final release for the above OS and servers.
Support for HPE MSA 2050 on Interplay Engine Cluster Systems The HPE MSA 2050 has been qualified on the following operating systems running Interplay 2018.11 through 2021.3. After 2021.3 there is no support for Win2012R2:
(cid:129) Windows Server 2012 R2 (cid:129) Windows Server 2016 For support on Interplay v2018.11 and later, see the following document:
http://resources.avid.com/SupportFiles/attach/Failover_Guide_Interplay_v2018_11.pdf Support for Avid Editing Clients Interplay Production components v2017.2 and later that are installed on Avid editing systems are qualified for the following operating systems:
(cid:129) Windows v7 64-bit SP1(Professional) (cid:129) Windows v8.1 (Professional and Enterprise) (cid:129) Windows v10 64-bit (Professional, Creators, and Enterprise) The following components are qualified:
(cid:129) Avid System Framework (ASF) (cid:129) Interplay Access (cid:129) Interplay Assist Hardware and Software Requirements (cid:129) Interplay Capture Client (cid:129) Media Composer Cloud components (cid:129) Media Indexer client (cid:129) Standalone Transfer Manager (cid:129) Transfer Manager client Support for MacOS Catalina Production Management (macOs) client components 2020.4 are not supported on Catalina at this time.
Do not upgrade your macOS to Catalina if you plan on installing and using Production Management 2020.4.
Support for MacOS Mojave 10.14.x Interplay Production components 2021.3 that are installed on Avid editing systems require macOS 10.14x. MacOS 10.12.x and 10.13.x are not supported at this time.
These components include:
(cid:129) Interplay Access (cid:129) Media Composer Cloud components (cid:129) Media Indexer client (cid:129) Transfer Manager client Interplay Support for Dell and HP Servers Interplay Production supports using Dell and HP servers for the Interplay Engine and other Interplay Production servers. Support includes the following:
(cid:129) DELL R630 and R640 For additional information including minimum specifications, see Avid MediaCentral | Production Management Dell and HPE Server Support on the Avid Knowledge Base at http://avid.force.com/ pkb/articles/en_US/readme/Avid-Interplay-Production-Documentation.
Support for Virtual Environments Interplay Production v3.3 and later supports running Interplay server applications in a virtual environment using VMware vSphere 6. See Interplay Production Virtual Environment with VMWare Best Practices Guide on the Avid Knowledge Base.
Upgrading Interplay Software Upgrading Interplay Software To upgrade the software, see the following topics:
Manually Uninstall Interplay Production Components Before Upgrading Avid recommends that before upgrading Interplay Production components, use the operating system to manually uninstall the installed components. Then use the Interplay Production installer, as described in the Avid Interplay | Production Software Installation and Configuration Guide.
Do not manually uninstall the Interplay Engine or Interplay Archive Engine. When upgrading the Production Services Engine, make sure to preserve SQL and the SQL database.
Best Practices for Performing an Engine Upgrade This section lists a number of procedures that can help ensure a smooth upgrade. These can be particularly useful for sites with Interplay Engine clusters and large databases. In general, it is useful to get a baseline snapshot of the health of the database and of the Interplay Engine before performing the upgrade. This allows you to fix any problems before the upgrade begins. It also provides a record of the state of the system over time. You can use this information for comparison later if any problems develop after the upgrade.
Back Up the Interplay Database You use the Interplay Administrator to create backups of the database. However, the Administrator does not back up the complete database folder. Before you perform an upgrade, Avid recommends that you create a backup copy of the complete database folder (AvidWG or AvidAM) and the user database folder (_InternalData). See “Backing Up the Interplay Engine Database” on page 12.
Send the Database to Avid Engineering for Testing Avid recommends that you contact your Avid representative about sending a copy of your Interplay database to Interplay engineering for testing. This testing provides a report that includes the following type of information:
(cid:129) An estimation about the duration of the database upgrade/migration (cid:129) An analysis of other database characteristics like object count (cid:129) Tips for the upgrade if there are any caveats Your Avid representative can provide details on which files should be provided for the test.
Upgrading Interplay Software
> **Note:** Sending the database for testing is recommended for all version but should be considered mandatory
for Interplay versions v1.4 and lower.
Examine Log Files Before Performing the Upgrade In order to analyze the state of the Interplay Engine, you need the relevant log files and the status of the OS/machine hosting the Interplay Engine or Archive Engine. The easiest way to gather these logs is to use the Collect tool. The Collect tool is typically run by Avid support. See your Avid representative for details.
Your Avid representative can examine the Base Analyzer portion of the Collect tool before the upgrade and determine whether you should make any changes before proceeding with the upgrade.
Save the output of the Collect tool. Besides providing troubleshooting information, the Collect tool will provide a baseline of system status information that you can refer back to at a later date.
Restart the Interplay Engine Before the Upgrade While not required, this is a good test of the health of the system. In particular, it is useful to perform a failover of an Interplay cluster system. This can expose any problems with the cluster services. If there are any problems restarting the system, fix the problems before you begin the upgrade.
Deactivate the Interplay Database During the Upgrade If the release requires a database upgrade, it is important to control the timing of when the database upgrade occurs. if you deactivate the database before upgrading, the database upgrade will occur when you reactivate the database. See “Database Changes for Upgrading to v2019.x” on page 10.
For the recommended upgrade procedure, see “Updating the Avid Interplay Engine Software” on page 16.
Check the Logs During a Database Upgrade The Interplay Engine displays a status bar during a database upgrade/migration. The status bar appears if you perform the recommended steps and deactivate the database before the upgrade. For a more accurate indication of how the upgrade is progressing, you can use an application such as Notepad to periodically view the bottom of the NXNServer.log file in the following folder:
C:\Program Files\Avid\Avid Interplay Engine\Logs\Machines\<machine_name> Examine and Archive the Logs After the Upgrade If you use the Collect tool, examine the Base Analyzer portion after the upgrade. This portion should run successfully without any errors. Archive the output of the tool as a record of the state of the system after the upgrade.
Database Changes for Upgrading to v2019.x Upgrading from any Interplay release earlier than Interplay v3.2 requires a database upgrade. Make sure you back up your database before the upgrade and lock the database when you perform the upgrade as described in “Updating the Avid Interplay Engine Software” on page 16.
Upgrading Interplay Software Upgrading from Interplay v2.3 or Earlier Upgrading from v2.3 (or earlier) to v3.x involves a schema upgrade which can not be reversed. That means that a full backup of the database must be created before upgrading the Interplay Engine.
Once migrated, the database cannot be loaded by earlier versions of the Interplay Engine. If you need to access the database through an earlier version, contact your Avid representative.
For a very large database, the upgrade process can take up to three hours. For systems earlier than v2.3, an additional upgrade occurs that can take additional time.
> **Note:** For releases earlier than v2.3 there are additional steps you must take after the upgrade to delete
unused rendered effects. See “Database Changes for Up[“Database Changes for Upgrading Systems Earlier than v2.3” on page 11.
See “Best Practices for Performing an Engine Upgrade” on page 9.
Free Disk Space for a Database Upgrade The database migration requires a significant amount of free disk space on the drive that hosts the _Database folder. You should have twice the amount of free disk space that the _Database folder occupies on disk.
Database Changes for Upgrading Systems Earlier than v2.3 This section includes important information for upgrading a system earlier than Interplay v2.3.
Upgrade to Interplay v2.7.5 or Higher Before Upgrading to Interplay v3.x Before you upgrade a system earlier than Interplay v2.3 to Interplay v3.x, you must first upgrade to a version between Interplay v2.3 and v2.7.x, inclusive. Note that only Interplay v2.7.5 and higher installers are available on the Avid download center.
> **Note:** Avid recommends that before you perform an upgrade you contact your Avid representative about
sending a copy of your Interplay database to Interplay engineering for testing. Part of the testing results will include an estimate of the time it will take to perform the database upgrade.
Removing Rendered Effects During the Database Upgrade The upgrade to Interplay v2.3 required a database upgrade. So if you are upgrading a system earlier than v2.3 to Interplay v3.0, the database upgrade will take effect. The first time you open the database after the upgrade, the Interplay Engine automatically removes links for rendered effects (they are replaced as emulated rendered effects by the client application). No media is deleted.
This process significantly reduces the size of the database. For a very large database, the upgrade process can take up to three hours.
Because the process of removing the links can take a long time, it is important to follow the upgrade procedure described in “Upgrading Interplay Software” on page 9. If you follow the procedure, the database change occurs while you are logged into the Interplay Administrator. During the process, the Interplay Administrator displays a progress bar. Messages are also displayed in the Interplay Engine log file, nxnserverlog. You can periodically open the log file with Notepad to monitor the progress.
Upgrading Interplay Software During the database upgrade, the Interplay Engine also determines if there are rendered effects that are not currently in use and moves these rendered effects to one or more subfolders in the Orphan Clips folder. An administrator or media manager can then delete these assets and their media. For more information about options for deleting, see “Deleting Unused Rendered Effects After an Upgrade” on page 20.
Backing Up the Interplay Engine Database You use the Interplay Administrator to create backups of the database (see the Avid Interplay Engine and Avid Interplay Archive Engine Administration Guide). However, the Administrator does not back up the complete database folder. Before you perform an upgrade, use the following procedures to create a backup copy of the complete database folder (AvidWG or AvidAM) and the user database folder (_InternalData).
Before you create a backup copy, determine the location of the database folder and whether the database was split between the Interplay Engine and a shared storage workspace.
> **Note:** A split database is no longer recommended. Storing many small files on ISIS workspaces is an
inefficient use of ISIS storage and can lead to performance problems. Customers with existing split databases can continue to use them but Avid does not recommend creating new split databases.
To determine the location of the database folder:
1. On the Interplay Engine, open a Command Prompt and type the following command:
net share All shares on the system are displayed. By default, WG_Database$ (a hidden administrative share) represents the root folder of the database.
- For a non-cluster system, the root folder is usually D:\Workgroup_Databases.
- For a cluster system, the root folder is S:\Workgroup_Databases
2. Navigate to the root folder and double-click the AvidWG folder (or AvidAM folder for an
Archive Engine).
Upgrading Interplay Software By default, this folder includes all database folders and files, as shown in the following illustration:
You need to back up the entire AvidWG folder.
If the AvidWG folder includes only the _Database folder, then the Interplay Engine is using a split database.
> **Note:** For some split databases, the Workgroup_Databases folder might incorrectly include all database
folders. To verify if the split database is active, open both _PropertyStore folders and check for recent timestamps. The folder on shared storage should show recent activity.
To determine the location of the second (split) database folder:
- Navigate to the workgroup.xml file and open it in a text editor.
This file is located in the Interplay Engine installation directory, for example, - C:\Program Files\Avid\Avid Interplay Engine\Data\Apache\Conf\workgroup.xml (non- cluster systems) - S:\WorkgroupData\Apache\conf\workgroup.xml (cluster systems).
Both database paths should be listed, for example:
- \\InterplayServer\WG_Database$ - \\UnityServer\WorkspaceName Both of these folders hold an AvidWG folder. You need to back up both AvidWG folders.
To make a backup copy of the database on a non-cluster system:
1. Open the Interplay Administration tool.
2. Use the following steps to lock the database:
a. Click Lock/Unlock Databases.
b. Select the database in the Unlocked Databases list.
c. Click Lock Database.
Upgrading Interplay Software
3. Click Menu and click Manage Databases.
4. Select the AvidWG database and click Deactivate. Select AvidAM for an Archive Engine.
5. Click Menu and click the Restart Server view.
6. Click Restart Server and close the Interplay Administration tool.
7. Use a backup tool to make a copy of the following folders and record their location.
Interplay Engine or Interplay Archive Engine Folder Name Default Location AvidWG (Interplay Engine database) D:\Workgroup_Databases\AvidWG AvidAM (Archive Engine database) D:\Workgroup_Databases\AvidAM _InternalData (user database if engine is a \D:\Workgroup_Databases\_InternalData Central Configuration Server) Interplay Engine (Split Database) Folder Name Default Location AvidWG (_Database folder only) D:\Workgroup_Databases\AvidWG AvidWG (all other database folders) \\UnityServer\WorkspaceName\AvidWG _InternalData (user database if engine is a \D:\Workgroup_Databases\_InternalData Central Configuration Server)
> **Note:** Use a backup tool that can handle long path names (longer than 255 characters). For example,
perform a backup with Robocopy (from the Microsoft Windows Resource Kit) or use a tool such as 7- ZIP (free download) to zip the folder.
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
Upgrading Interplay Software
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
Interplay Engine or Interplay Archive Engine Folder Name Default Location AvidWG (Interplay Engine database) S:\Workgroup_Databases\AvidWG AvidAM (Archive Engine database) S:\Workgroup_Databases\AvidAM _InternalData (user database if engine is a \S:\Workgroup_Databases\_InternalData Central Configuration Server) Interplay Engine (Split Database) Folder Name Default Location AvidWG (_Database folder only) S:\Workgroup_Databases\AvidWG AvidWG (all other database folders) \\UnityEngine\WorkspaceName\AvidWG _InternalData (user database if engine is a S:\Workgroup_Databases\_InternalData Central Configuration Server)
> **Note:** Use a backup tool that can handle long path names (longer than 255 characters). For example,
perform a backup with Robocopy (from the Microsoft Windows Resource Kit) or use a tool such as 7- ZIP (free download) to zip the folder.
> **Note:** Depending on the size of your database, this kind of backup can take a long time. To save time you
can temporarily move the _Backups folder from within the AvidWG (or AvidAM) folder. to another location. After you perform the copy you can move the folder back under AvidWG.
12. Before you perform the upgrade, bring all of the resources inside the “Avid Workgroup Server”
group online. Right-click the “Avid Workgroup Server” group and select Start Role.
For more information on the Cluster Administration tool, see the Avid Interplay Failover Guide.
Upgrading Interplay Software Updating the Avid Interplay Engine Software The following topics describe how to update the Interplay Engine and Interplay Archive Engine software:
Upgrading an Interplay Engine Cluster or Interplay Archive Engine Cluster The process described here is similar to a rolling update as documented in the Interplay Engine Failover Guide, except that the database is locked and deactivated before you begin.
To upgrade an Interplay Engine cluster or Interplay Archive Engine Cluster:
1. Verify that you have a valid backup as described in “Backing Up the Interplay Engine Database”
on page 12.
2. If you took the Avid Workgroup Engine Monitor resource offline when you performed a backup,
bring all of the resources inside the cluster resource group online. Right-click the “Avid Workgroup Server” group and select Start Role. For more information, see the final steps in “Backing Up the Interplay Engine Database” on page 12.
> **Note:** If you deactivated your database when backing it up in Step 1, proceed to “Updating the Interplay
Engine Software on a Cluster” on page 16.
3. Open the Interplay Administrator tool.
4. Use the following steps to lock the database:
a. Click Lock/Unlock Databases.
b. Select the database in the Unlocked Databases list.
c. Click Lock Database.
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
Upgrading Interplay Software Consider this the active node or the first node.
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
Upgrading a Non-Cluster Interplay Engine or Interplay Archive Engine To update the Avid Interplay Engine software:
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
Upgrading Interplay Software
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
e. Make sure the option “Load Database on Activation” is checked.
f. Click Activate.
The upgrade begins. The system displays a dialog box with a progress bar that bounces from side to side while the database is being updated.
For an accurate indication of how the database upgrade is progressing, you can use an application such as Notepad to periodically view the bottom of the NXNServer.log file in the following folder:
C:\Program Files\Avid\Avid Interplay Engine\Logs\Machines\<machine_name>
> **Note:** The system will automatically unlock the database if you have Load Database on Activation selected.
Upgrading Interplay Software g. The database upgrade can take up to several hours, depending on the size and complexity of the database. It is important not to interrupt or stop the Interplay Engine or perform a failover during the upgrade process. This could result in problems with the database. To recover from a failed or interrupted upgrade, you need a valid backup of the old database.
2. To verify that you can log onto the database, do the following:
a. Click Menu in the Interplay Administration tool.
b. Click Manage database Roles. The Manage Database Roles view opens.
Database icon c. Click the AvidWG icon (AvidAM for archive database).
d. You can tell that you have successfully logged onto the database when the database icon displays a green check mark and the users and roles are displayed as shown in the above illustration.
> **Note:** If you do not deactivate the database before the software upgrade, any automatic database upgrades
begin on your first login to the Interplay Engine after you update the software. This occurs the first time you log onto the database with any client (for example, Interplay Access or Interplay Assist).
After you type your username and password at the login screen, the system stays at a “Connecting” status while it performs the upgrade. In this case, the system does not display any messages indicating that the upgrade is in progress. Do not exit the application, shut down the system, or fail- over the Interplay Engine while the upgrade is being performed.
Note that an automatic database upgrade will occur if the database is older than Interplay v3.7.
Verifying the Upgrade To verify the upgrade:
1. Depending on whether you upgraded an Interplay Engine or an Interplay Archive Engine,
navigate to one of the following locations:
C:\ProgramData\Avid\Production Management Engine\Logs\Machines\<machine name> C:\ProgramData\Avid\Archive Production Engine\Logs\Machines\<machine name>
2. Open the NXNServer.log file in Notepad.
3. Search for the text “success”. There should be a message similar to the following:
Database AvidWG has been successfully updated from version xxxxx to yyyyy where xxxxx and yyyyy are the old and new releases, respectively. The message could also say “successfully corrected”. Messages such as the following are part of the upgrade process and can be ignored.
Can't open file 'S:\Workgroup_Databases\AvidWG\_Database\Avidxxx.xxx' for reading Upgrading Interplay Software Deleting Unused Rendered Effects After an Upgrade Starting at Interplay v2.3, the Interplay Engine does not include rendered effects as links in the database. Instead, they are displayed as emulated rendered effects in Interplay Access. For more information, see What’s New for Interplay v2.3 or the Interplay Help.
The first time you open the Interplay database after an upgrade from a version earlier than v2.3, the Interplay Engine automatically removes links for rendered effects. In a large database, this can take several hours (see “Activating the Database” on page 18). During this process, the engine also determines if there are rendered effects that are not currently in use and moves these rendered effects to one or more subfolders in the Orphan Clips folder. An administrator or media manager can then delete these assets and their media.
Each numbered subfolder contains 2,000 rendered effects each (except for the last subfolder, which can contain less). The resulting folder structure looks like the following:
An administrator or media manager has two options for deleting the unused rendered effects:
(cid:129) Using the standard deletion procedure in Interplay Access.
(cid:129) Using a Windows command-line tool, which deletes both metadata and media. This tool has two advantages compared to deleting in Interplay Access:
- Deletion is faster (for example, there are fewer client-server round-trips with the tool and no need to refresh the user interface) - You can run the tool as a scheduled task. This is especially useful if there are a large number of unused rendered effects (several thousand or more).
The Windows command-line tool (delete_obsolete_rendered_effects.exe) is located in the following folder:
drive:\Program Files\Avid\Avid Interplay Engine\Server The syntax of the tool is described in the following in-line help:
*********************************************************************** delete_obsolete_rendered_effects - Deletes obsolete rendered effects.
delete_obsolete_rendered_effects [user:] [psw:] [maxAssets:] [maxTime:] This tool automates the deletion of rendered effects (including media) that were moved to the Orphan Clips folder during the database upgrade from versions prior to Interplay 2.3.
Options:
user:<user name> Name of the user to logon to AvidWG with psw:<password> Password of the user to logon to AvidWG with maxAssets:<number> (optional) Maximum number of rendered effects Upgrading Interplay Software to delete maxTime:<minutes> (optional) Maximum run time in minutes; tool will stop deletion when this period is exceeded The maxAssets: and maxTime: options are useful if this tool is run as a scheduled task, e.g. using Windows Task Scheduler.
*********************************************************************** To run the delete tool:
1. On the Interplay Engine system (or for a cluster system, on the online node), open a Windows
Command Prompt.
2. Navigate to the location of the tool. For example, type
cd C:\Program Files\Avid\Avid Interplay Engine\Server
3. Type the command line for the tool and press Enter, using the following syntax:
delete_obsolete_rendered_effects [user:] [psw:] [maxAssets:] [maxTime:] If you want to direct the output of the tool to a file, append the following to the command:
>> output_file.txt For example, to run the program for one hour and print the output in a file named results.txt, type the following and press Enter:
delete_obsolete_rendered_effects user:administrator psw:admin maxTime:60 >>results.txt If you want to schedule the tool to run at a particular time, use a program such as Windows Task Scheduler.
Additional Information About the Server Execution User The Server Execution User is a Windows operating system user account that is used to run the Interplay Engine processes. The Server Execution User is set up the first time that you install the Avid Interplay Engine software and has the following features:
(cid:129) The account must have local administration rights on the operating system for the Interplay Engine Server (both nodes on a cluster). The Interplay Engine installation software asks you for a user name and password and automatically adds the account to the Administrator Group.
Usually this is a domain account that has already been created. The account must have the following local security policy settings:
- Act as part of the operating system - Back up files and directories - Restore files and directories - Adjust memory quotas for a process - Log on as a service - Increase scheduling priority On a cluster system the account must have these permissions on both nodes. The account must be a local Administrator on both nodes.
International Character Support Ideally this should be an account that human users do not use to log onto the system. This will prevent accidental changes to the Server Execution User user account during normal administration duties. For example, if someone changes the password by mistake, users may not be able to access the Interplay database.
(cid:129) An account with an identical user name and password must have read/write access to the shared storage workspaces that contain media.
> **Note:** In order to prevent accidental changes to the Server Execution User account during normal
administration duties, Avid recommends that you use a dedicated Windows user account as a Server Execution User and cluster service user. This account should not be used for administrative logins to the Interplay engine hardware.
Changing the Server Execution User The tool used to modify the Server Execution User changed for Interplay 2018.11. See “Updated Tool for Changing the Server Execution User” on page 45.
Additional Information for Interplay Transfer Upgrades Before you upgrade Interplay Transfer to a new release: If your configuration includes playback and ingest through a third-party DHM, you must check with the third-party vendor to determine if an updated DHM is required. Existing third-party DHMs might need to be rebuilt using the latest DHM SDK for compatibility with the latest version of the Interplay Transfer Engine and the Interplay Transfer Client.
Upgrading an Interplay Transfer System to Interplay Transfer v3.x or later Interplay Transfer v3.x and later is a 64-bit application and stores profile information in .xml files. In previous releases the information was stored in registry settings. Interplay Transfer v3.x includes a tool to convert the older profiles to Interplay v3.0 profiles. Use the following procedure:
1. Install Interplay Transfer. It doesn’t matter if you uninstall the v2.7 version first or not. The
settings will remain in the registry.
2. Before you start Interplay Transcode, navigate to the following folder:
C:\Program Files\Avid\Utilities\FTPProfilesTool
3. Execute the tool.
The system stores the FTP profiles in an .xml file. Now you can start Interplay Transcode and use the profiles. The following shows the path to the new profiles file:
C:\ProgramData\Avid\GenericFTP\FtpProflies.xml Additional Information About Pro Tools For the latest information about using Pro Tools with Interplay, go to the Knowledge Base page titled “Avid Interplay Requirements With Pro Tools.” International Character Support Interplay includes international character support (ICS). ICS allows you to display and input characters in languages other than English.
Support for Symantec Endpoint v12.1.x and 14.0.x Interplay applications are qualified on an English operating system running locales for the following languages:
(cid:129) Simplified Chinese and Traditional Chinese (cid:129) Japanese (cid:129) French, Italian, German, and Spanish (cid:129) Hebrew (v2017.2 and later) In an Interplay workgroup, all clients and applications must use the same locale, either English or one other locale.
Macintosh systems are not qualified for international character support (ICS) in an Interplay environment.
Multi-byte languages (Simplified Chinese, Traditional Chinese, and Japanese) are not supported by Interplay Media Services or SGL FlashNet. except as noted below.
FlashNet v6.4.5 and later includes support for Simplified Chinese, which is qualified for use with Interplay Archive and Interplay Restore services V2.6 and later. See also “International Character Support Limitations” on page 55.
Support for Symantec Endpoint v12.1.x and 14.0.x Interplay supports the Antivirus and Spyware components of Symantec™ Endpoint v12.1.x and 14.0.x on servers and clients.
Interplay does not support the following components:
(cid:129) Proactive Threat Protection (cid:129) Network Threat Protection The Avid Knowledge Base article “Symantec on Interplay Production and Interplay Central” provides more information and describes how to install and configure it in an Interplay environment.
Microsoft Defender on Windows 2016 Server At the time of writing of this document, Microsoft Defender on Windows 2016 server is not supported and must be completely uninstalled. Avid is working towards qualifying Defender as part of an antivirus solution for a future release.
Interplay 2019.6 Server Installer Contains Some 2018.11.2 Components The Interplay 2019.6 Server installer contains three version 2018.11.2 applications:
(cid:129) Interplay Transcode 2018.11.2 (cid:129) Interplay STP Encode 2018.11.2 (cid:129) Interplay Consolidate 2018.11.2 Interplay 2019.6 Server Installer Contains Some 2018.11.2 Components The installers are included as the default installers for Transcode, STP Encode, and Consolidate.
After you install the applications you can view the version numbers in the Windows Add/Remove Programs view.
These three applications are also released as individual patch releases on the Avid Download Center.
Interplay Server Installer Limitations The installers for Transcode, STP Encode, and Consolidate install incorrect versions of Interplay Access.In addition, the Transcode 2018.11.2 installer installs an incorrect version of the Transfer client. After you install the applications you must verify the versions and reinstall the Access and/or Transfer client software if necessary. Use the following procedures.
> **Note:** You will need both the Interplay 2019.6 server and client installers to upgrade the STP Encode
application because you may need to install the 2019.6 Transfer client. Transcode and Consolidate only require the server installer because they only require Access.
To install STP Encode 2019.6:
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
- Access 4.3.0.11180 Upgrading to MediaCentral Cloud UX 2021.11
4. If the Access version number is correct then you have successfully updated the system.
5. If the Access version is not correct, uninstall Access and install Access from either the 2019.6
Server installer or Client installer. The following version is installed:
- Access 4.3.0.11180 Verify that the versions are correct and you are done.
Upgrading to MediaCentral Cloud UX 2021.11 If your Production Management system is integrated with an existing MediaCentral Cloud UX system, and you are upgrading MediaCentral Cloud UX to v20201.11 or later, you must perform a remapping of the search index to enable the new search-related features that are included in this release. For more information, see v2021.11 of the Avid MediaCentral | Cloud UX ReadMe.
Upgrading to MediaCentral Cloud UX 2021.3 If your Production Management system is integrated with an existing MediaCentral Cloud UX system, and you are upgrading MediaCentral Cloud UX to v20201.3 or later, you must perform a remapping of the search index to enable the new search-related features that are included in this release. For more information, see v2021.3 of the Avid MediaCentral | Cloud UX ReadMe.
Upgrading Media Indexer to 2021.11 When upgrading a Media Indexer server to 2021.11, you must do the following:
1. Uninstall the previous version of Media Indexer. If the installer fails,
2. Delete the following folders:
- %ProgramData%\Avid\AvidMI - %ProgramFiles%\Avid\AvidMI
3. (Option) If you cannot delete %ProgramFiles%\Avid\AvidMI and, or
%ProgramData%\Avid\AvidMI, restart the OS to finish uninstalling.
4. Install the new version of Media Indexer.
This upgrade will require a full reindex of the Media Indexer. Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can take several hours.
The following guide provides information that can help you plan for the upgrade and reindex operation.
http://resources.avid.com/SupportFiles/attach/ Production_Management_Best_Practices_Guide_2020.4.pdf (cid:129) For information on estimating how long a reindex could take, see the section “Estimating the Indexing Time” (cid:129) For a procedure that explains how to perform the upgrade and reindex operation on one Media Indexer and copy the cache files to the production Media Indexers during the upgrade, see the section “Prebuilding a Cache During an Upgrade for Media Indexer v3.6.x or Higher” Upgrading Media Indexer to 2021.3 The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations.If you plan to use this feature in MI 2019.6 and later, use the latest Chrome browser to perform the reimport. See “Media Indexer Limitations” on page 53.
Upgrading Media Indexer to 2021.3 When upgrading a Media Indexer server to 2021.3, you must do the following:
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
Upgrading Media Indexer to 2020.4 Upgrading Media Indexer to 2020.4 When upgrading a Media Indexer server to 2020.4, you must do the following:
1. Uninstall the previous version of Media Indexer. If the installer fails,
2. Delete the following folders:
- %ProgramData%\Avid\AvidMI - %ProgramFiles%\Avid\AvidMI
3. (Option) If you cannot delete %ProgramFiles%\Avid\AvidMI and, or
%ProgramData%\Avid\AvidMI, restart the OS to finish uninstalling.
4. Install the new version of Media Indexer.
This upgrade will require a full reindex of the Media Indexer. Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can take several hours.
The following guide provides information that can help you plan for the upgrade and reindex operation.
http://resources.avid.com/SupportFiles/attach/InterplayBestPractices_V2017_2.pdf (cid:129) For information on estimating how long a reindex could take, see the section “Estimating the Indexing Time” (cid:129) For a procedure that explains how to perform the upgrade and reindex operation on one Media Indexer and copy the cache files to the production Media Indexers during the upgrade, see the section “Prebuilding a Cache During an Upgrade for Media Indexer v3.6.x or Higher” The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations.If you plan to use this feature in MI 2019.6 and later, use the latest Chrome browser to perform the reimport. See “Media Indexer Limitations” on page 53.
Upgrading Media Indexer to 2019.6 Media Indexer 2019.6 contains an updated version of MongoDB (MongoDB 4.0.8). Installing the new version requires that you delete the old MongoDB database and cache files before you begin the installation.
When upgrading a Media Indexer server to 2019.6, you must do the following:
(cid:129) Uninstall the previous version of Media Indexer (cid:129) Delete the folders C:\ProgramData\Avid\AvidMI This upgrade will require a full reindex of the Media Indexer. Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can take several hours.
New Features and Improvements for Production Management 2021.11 The following guide provides information that can help you plan for the upgrade and reindex operation.
http://resources.avid.com/SupportFiles/attach/InterplayBestPractices_V2017_2.pdf (cid:129) For information on estimating how long a reindex could take, see the section “Estimating the Indexing Time” (cid:129) For a procedure that explains how to perform the upgrade and reindex operation on one Media Indexer and copy the cache files to the production Media Indexers during the upgrade, see the section “Prebuilding a Cache During an Upgrade for Media Indexer v3.6.x or Higher” The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations.If you plan to use this feature in MI 2019.6, use the latest Chrome browser to perform the reimport. See “Media Indexer Limitations” on page 53.
New Features and Improvements for Production Management 2021.11 The following are new or improved for Production Management v2021.11:
(cid:129) Media Indexer improvements:
- Turn off MongoDB Binding to 0.0.0.0 - MongoDB Access now Protected by a Password Media Indexer Improvements Media Indexer contains the following updates in 2021.11:
Turn off MongoDB Binding to 0.0.0.0 We have updated the configuration for MongoDB to use 127.0.0.1 instead of 0.0.0.0, and made this the default configuration.
If you are running an older version of Media Indexer that is between 2020.4.2 and v2021.3.x, you can avoid a security issue without upgrading to the latest version. For more information, see this article on the Avid Knowledgebase:
https://avid.secure.force.com/pkb/articles/en_US/troubleshooting/Media-Indexer-MongoDB- Security-Notice MongoDB Access now Protected by a Password We have protected access to MongoDB with a password.
New for Interplay Engine and Interplay Access 2021.3 New for Interplay Engine and Interplay Access 2021.3 The following are new or improved for Interplay Engine and Interplay Access 2021.3:
(cid:129) Interplay Access / Admin Client improvements:
- Interplay Admin Client has New and Improved Statistic Information - Asset Visibility Option on the MediaCentral Search Connector - Interplay Access Client Supports XAVC-I 100 1080p 50 and 59.94 (cid:129) Interplay Engine improvements:
(cid:129) Delivery Provider improvements:
- “Delivery Provider Now Respects the Media Indexer Files per Folder Limitation” on (cid:129) Installer Changes:
Interplay Admin Client has New and Improved Statistic Information The Interplay Admin Client has a new and improved statistic information displayed for Extended Search Status, including separate counters for the following:
(cid:129) Asset Changes including Location Changes (cid:129) Taxonomy Changes (cid:129) Namespace Updates (cid:129) Namespace Updates (cid:129) Message Processing in Production Management (cid:129) Message Transfer to Kafka For more information see the topic “Configuring the MediaCentral Search Connector” in the MediaCentral | Cloud UX Installation Guide.
New for Interplay Engine and Interplay Access 2021.3 Interplay Access Client Supports XAVC-I 100 1080p 50 and 59.94 The Access Client has been modified so that Partial restore works with XAVC-I 100 1080p 50 and 59.94.
Asset Visibility Option on the MediaCentral Search Connector The Asset Visibility option located on the Manage Status tab of the MediaCentral Search Connector allows you to limit the results of the Search app to display only those assets for which the individual users have permission to view. If you do not enable this functionality, the search results respect the permissions of the single user that is configured in the Assign section of this window.
Avid suggests that you enable this feature only after you have upgraded all MediaCentral Cloud UX and Production Management sites in the multi-site environment to v2021.3 or later.
If you want to enable this feature you must meet the following minimum software requirements:
(cid:129) MediaCentral Cloud UX v2021.3 or later (cid:129) MediaCentral Production Management Engine v2021.3 or later (cid:129) You must install at least one instance of the v2021.3 Interplay Access client in your network to access and configure this setting in the Interplay Administrator.
For more information, see the MediaCentral | Cloud UX Installation Guide.
Support for GPT Partitions In Production Management v2021.3, we have added support for GPT partitions for the Production Management Engine Cluster shared storage RAID disks (NAS).
For more information, see the Interplay Engine Failover Guide (v2018 or later).
Apache Service Option (TCP) “Keep Alive” Turned On by Default In 2021.3, Production Management Engine Apache service has the option (TCP) “KeepAlive” turned on by default. This reduces the pressure on the TCP/IP system resources, both on the Production Management Engine, as well as on the Client side.
Delivery Provider Now Respects the Media Indexer Files per Folder Limitation Media Indexer puts a limitation on the number of files per folder. The maximum number of files must not be higher than 5,000. Delivery Provider is now respecting the number of files per folder (5000 files/folder).
New for Interplay Engine and Interplay Access 2021.3 Media Indexer Improvements Media Indexer contains the following updates in 2021.3:
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
When installing MCDS, you must do the following.:
(cid:129) Uninstall, and then remove or rename the C:\ProgramFiles\Avid\ “App Name” folder.
(cid:129) If this is Win7 or Win2008R2 system, you must install Microsoft Update KB3125574.
Without installing the Microsoft Update, the Pace installer fails silently, and then the app will pop up iLok errors.
> **Note:** It takes 1 1/2 hours to install the Microsoft Update.
New for Interplay Engine and Interplay Access 2020.4 New for Interplay Engine and Interplay Access 2020.4 The following are new or improved for Interplay Engine and Interplay Access 2020.4:
(cid:129) Interplay Engine usability improvements:
- Interplay Engine No Longer Creates Empty Folders in the _Master Folder (cid:129) Installer Changes:
Interplay Engine No Longer Creates Empty Folders in the _Master Folder The change in behavior is that the Engine does not anymore create empty folders in the “_Master” folder. It only creates folders when a folder actually contains a file asset.
A new tool called “clean-master.exe” is located in the Server folder of the Engine installation. It is a command line tool, and it is very simple to use:
[?|help] clean_master.exe dbpath:<absolute path to database> The dbpath parameter is one of the following:
(cid:129) (Preferably) The local path of a DB; (for example “D:\Workgroup_Databases\AvidWG”, or (cid:129) The network share of a DB (for example “\\iengine\WG_Database$\AvidWG”).
The tool must be executed with Administrator privileges, meaning the command prompt must be started with Administrator privileges.
The tool deletes all empty folders in _Master, (i.e. those which a 2020.4 Engine would not have created in the first place).The following illustration shows an example dialog.
STP Encode, Transcode, and Consolidate Installer Updates In this release, the installers for STP Encode v2018.11.6, Interplay Transcode v2018.11.6, and Interplay Consolidate v2018.11.6 have been upgraded to include Access 2020.4 bundled with each of them.
> **Note:** When using DATAEXTRACT via Transcode, you will not be able to use Dynamic Relink with the
resulting media/clips.
> **Note:** The installers for these components are full installers that do not require a prior installation of a
previous version.
If you are upgrading a previous installation, manually uninstall the previous version. Then install the updated version of software.
New for Interplay Engine and Interplay Access 2019.6 When installing these components, you must do the following.:
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
(cid:129) Engine installer usability improvements - Installer: Back Button for Installer Dialogs - Installer: Public Cluster Network Dropdown Menu - Installer: Shared Drive Dropdown Menu Note that you can continue to use the following document for Cluster installations:
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
3. Click OK to continue with the user import.
New for Interplay 2018.11 The Import User Groups dialog box opens with all User groups selected by default.
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
Also see “New for Interplay Production v2018.11” on page 6 and “New for Interplay Engine and Interplay Access 2019.6” on page 33.
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
Fixed in 2021.11 Do Not Disable Indexing of Custom Properties Interplay Administrator v3.8 through 2017.2 included an Indexed column on the Custom Metadata tab, as shown below.
One purpose of the Indexed column is to give an administrator the option of not including the custom property in the Interplay Engine’s internal Indexed search mechanism.
Interplay 2018.6 removes the Indexed column from the Interplay Admin tool. However, if you view the Interplay 2018.6 with a version of Access 3.8 through 2017.2 you may still see the Indexed column.
DO NOT deselect the Indexed check box for any custom property unless instructed to do so by Avid Customer Care.
If a custom property is not included in the Indexed search, any user search that contains that property has the potential to be very slow. Even if a custom property is deselected in the Available column or the Text Search column, it should still be selected in the Indexed column and thus included in the Indexed search, except under special circumstances.
Fixed in 2021.11 The following fixes were in this release.
Media Indexer The following fix requires an update to Media Indexer:
a Bug Number: SAK-141. Media Indexer fails to start MongoDB on run-time..
Fixed in 2021.3 The following fixes were in this release.
Interplay Access / Admin Client The following fixes require an update to the Interplay Access / Admin client:
Fixed in 2021.3 a Bug Number: ASSETS-2806. Check-in auto-reservations now do not create reservations on system folders and special folders (Catalogs, Projects, etc). This new behavior can be disabled for single or all clients if desired or necessary. If the new behavior conflicts with established workflows, please contact Avid support for instructions on how to disable it.
a Bug Number: ASSETS-2855. We now prevent merging attribute values that are too large into an AAF on check-out. Previously, this might cause issues in applications like Media Composer, but now these values will be shortened before checking out / exporting into such applications. The goal was to prevent AAFs that cannot be opened by Media Composer. The part of the attribute value that is too large is discarded.
a Bug Number: IPI-3040. In the Interplay Administrator tool, if you configure Media Indexer hostnames settings with different versions of the Interplay Administrator (one must be version 2020.4.1 and one older), the Media Indexer “Server MI Connection URL” shows different values depending used Administrator version.
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
Fixed in 2020.4 a Bug Number: IPI-3033. Media Indexer Format Independent data is missing from the A1 media track.
a Bug Number: IPI-3079. Pro Tools media is offline in Media Composer with Media Indexer v2020.4.3.
a Bug Number: SAK-439. Some time ago, we changed the version format from three points to two points and a dash. This caused some unexpected issues with connections to Media Indexer which were caused because QM internally sets up its features using the three points version string which has been returned by GetMediaIndexerInfo(). So, to fix this, we changed the Align version of Media Indexer in GetMediaIndexerInfo back to the three points format.
Fixed in 2020.4 Maintenance Cleanup Tool - Delete File Assets The following fixes are in the Maintenance Cleanup Tool:
a Bug Number: IPI-2545. When trying to run the Maintenance Cleanup tool “Delete File Assets” the user / administrator must adhere to the displayed WARNING: “Do NOT run this cleanup operation in case Capture is used!”. Ignoring this warning will cause data loss in the Capture Server.
Archive/Restore The following fixes require an update to Archive/Restore:
a Bug Number: IPI-2805. When performing a partial restore of master clips with multiple audio tracks that reference multiple source IDs, while loading the master clip (or a sequence that contains it), with dynamic relink enabled, the following exception error occurs multiple times, requiring the user to click Continue multiple times to bypass.
Assertion failed: fileMobTrackNbr != NULL_TRACKNBR File: e:
\ws2\workspace\MC\Release_Installer_Git\Win_Build\coresw\ame\src\msmdb\QMFIQualityManag erImpl.cpp, Line: 4073 Unable to render embedded object: File (FaulttScreenshot1.png) not found.(dynamic relink enabled) Media Indexer The following fixes require an update to Media Indexer:
a Bug Number: IPMI-10483. The Media Indexer daily build contains a lower of media files than release 2018.11.1.
a Bug Number: IPI-2848. Media Indexer installation fails during Microsoft C++ 2013 portion of the install.
Limitations Limitations For International Character Set (ICS) limitations, see “International Character Support Limitations” on page 55.
Limitations have been removed for all Interplay Production versions of software prior to v2018.11.
To locate any limitations prior to v2018.11, look in previous ReadMes.
Limitations for 2021.11 The following limitations are related to 2021.3 Media Indexer a Bug Number: SAK-xxx.
Limitations for 2021.3 The following limitations are related to 2021.3 Interplay Access Client a Bug Number: IPI-3199. The 2021.3 / 2021.3.1 Access installer does not install the “xquartz-osx- pkg-x86_64” package on macOS. This results in the Access application failing to launch.
Workaround: To resolve this issue, either install “xquartz-osx-pkg-x86_64” before/after installation of Access 2021.3.x, or install a prior version of Access (e.g. 2020.4) and then reinstall 2021.3.x.
a Bug Number: IPI-2962. If the Clip Tool is used for selected clips, this results in a partially Online status in Interplay Access.
Production Management Engine a Bug Number: IPI-3067. The MediaCentral Production Management v2020.4.3 or later installer fails if a newer version of Microsoft Visual C++ 2015-2019 Redistributable (x64) is already installed.
Workaround: Uninstall the newer version of Microsoft Visual C++ 2015-2019 Redistributable (x64) - 14.27.29016, and install MediaCentral Production Management After uninstalling the newer version, the 2020.4.3 or later Production Management installation successfully completes.
Media Indexer a Bug Number: SAK-348. Media Indexer 2020.4 seems to ignore priority for workspace. On a fresh start and new release installed, the logging shows logging against a workspace that is very low in the display by priority on the Media Indexer Web Page. The legacy desired operations are for new content (Ingesting materials, for example) to get first media indexer data extractions attended to in a state where there is a backlog of activity to attend to Limitations Example: A large workspace with legacy content is added to the scan tables and news programming is recording and editing to a different workspace. The Shared Storage 10 second notifications on the news production should take president over the legacy added workspace for Media Indexer processing.
a Bug Number: SAK-466. The Media Indexer installer displays an error trying to update MS Visual C++ 2012 Update 4. This error may appear on some systems that have an existing MSVS 2012 installed. Press the Yes button to proceed with the Media Indexer installation.
Interplay Transcode a Bug Number: IPI-3102. Interplay Transcode does not support the DNxHR SQ and DNxHR HQ resolutions in Production Management v2021.3 and Interplay Production v2018.11.7.
Limitations for 2020.4 The following limitations are related to 2020.4.
Production Management Installer a Bug Number: RELENG-3176. When unzipped, the Production Management installer might include long file path names that are incompatible with some versions of Windows. If you need to copy unzipped installation packages from one location to another, Windows 10 and Windows 2016 provide a registry setting that allows for these long path names.
You can find this setting under: Computer Configuration > Admin Templates > System > FileSystem > Enable Win32 long paths Production Management (macOs) Client Components Not Supported on Catalina Production Management (macOS) client components are not supported on Catalina.
Interplay Transcode a Bug Number: IPI-2764. When bringing in 1080i content with logged markers, when transcoding, using Interplay Transcode, with a profile set for Crossrate, the markers are preserved, but the Timecode changes from Master (military) to Absolute.
Media Composer does not exhibit this issue and leaves the Timecode as is when cross rate transcoding.
Workaround: Use Media Composer to transcode the content.
Media Indexer a Bug Number: IPI-2862. Due to the potential of a high memory use instance while the reporting is being generated, it is important to note that this report should only be run on “Not in Production” host systems, and definitely not during high production times a Bug Number: IPI-2883, IPMI-10529. There are many open threads after one or two days when performing Media Indexing operations. After one or two days, there are not useful actions to or from the server.
Limitations Production Automation Service a Bug Number: RELENG-3260. When running the Production Automation Service installer from the main Install Media | Index Support page, you will get the error “Avid Interplay Production Service Automation installation has failed.” Workaround: Uninstall Production Automation Service, and run the installer from the main installer.
Limitations for 2019.6 The following limitations are related to 2019.6.
Archiving of Large AAF Files Causes Production Systems Failure a Bug Number: IPI-2530. There are two expected conditions where a failure of the production systems may occur from the processing of either large AAF composition data, or corrupted items.
Because there is no one to one relationship to equate the elements in composition to the amount of Java memory required to process the data, Avid cannot offer solid guidance to what should be within the limitations of the systems.
Should there be a failures in processing (send to archive, transcode, copy, move, etc,) an element that is complex. the recommendation is to re-try the action with a shortened version of the element. For most production needs, this will nominally achieve the desired end goal.
Transcode, STP Encode, and Consolidate 2018.11.2 Install Incorrect Versions of Access and TM Client For details, see “Interplay 2019.6 Server Installer Contains Some 2018.11.2 Components” on page 23.
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
Limitations International Character Support Limitations a Bug Number: UDevC00163794. Receiving workgroup transfers from a remote workgroup to a workspace containing Chinese characters can fail. The transfer fails with a kNetwork error.
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
a Bug Number: UDevC00052231. If you enter Asian characters as restriction information, the characters might appear as question marks when you view that restriction in another Avid application.
a Bug Number: UDevC00051060. If you change the font or font size of your input, and see characters rotated 90 degrees, make sure you select the correct font. Do not use any font that begins with the “@” symbol.
a Bug Number: UDevC00052541. Do not create a Project using the Euro currency character (ALT 0128). The Project fails to be created and a “Can't Open Project” error message is displayed.
a Bug Number: UDevC00022395, 22346. Certain Asian characters might not appear in the correct order in some text boxes in your Avid editing application.
a Bug Number: UDevC00078651. Use only ASCII characters in passwords.
Limitations Interplay Access Limitations a Bug Number: none. Compatibility with prior versions: The Interplay Engine or Interplay Archive Engine and the Interplay Access client must be updated at same time. Interplay Access clients will not work with older Interplay Access Engines or Archive Engines and vice-versa.
a Bug Number: UDEVC00035172. Multi selection drag and drop issue when one file asset already exists in target folder: When a multi selection is dragged and dropped and one of the file assets exists in the target folder already, no files are moved and the results are not as the user would expect. This is the result of a rollback of the transaction and appears as follows:
(cid:129) Red check marks (indicating a check out) turn blue. The checkout path has already been moved to the new location, so when the file is moved back to the original location but the checkout path is not updated again, the check mark appears blue. These items can be checked in again safely.
(cid:129) The local copies of not checked out assets seem to be deleted. The local copy of the asset is not actually deleted, it is just not moved back to the original location.
(cid:129) The file that exists in the target keeps its local copy.
a Bug Number: UDEVC00039014. Working in a folder during an import causes problems: When performing a large import, working in the same folder you are importing to might cause problems with the import. You might be prompted to refresh your view, in which case the import was successful. In other cases, a message indicates that the import failed and you need to perform the import again, without touching the folder.
a Bug Number: UDEVC00038766. Get latest on extremely large folder causes problems for user Administrator: When the user Administrator performs a Get Latest on a folder that contains assets in number approaching 50,000, a potential problem might occur; the client slows down, but the operation actually continues. If the client reaches the free memory limit, a corresponding message is shown and the operation is cancelled. This does not occur if another user (not Administrator) has performed a Get Latest on the same machine already.
Workaround: Users should perform a Get Latest on the smallest range of items possible, such as a subfolder.
a Bug Number: UDEVC00039061. Internally used file name appears for Avid Assets renamed to blank name: If a blank name or only spaces is entered in the Rename dialog for an Avid asset, the internally used file name (mob id) appears as the name instead (long string of numbers and letters).
a Bug Number: none. Tree state is only remembered on the same machine: The tree state upon logout is remembered the next time you log onto Interplay only on the same machine (stored per user, per machine).
a Bug Number: UDEVC00007386. Issues with preview of large text files: Text files over 1MB are not shown in the Preview by default, however, if you explicitly click the Show File button for these large files, low memory problems may occur.
Interplay Administrator Limitations a Bug Number: UDEV00210720, UDEVC00037618. Limited number of clients per user per machine: Only one Interplay Access instance and one Interplay Administrator instance can run at a time on one machine per user. This software will not support terminalserver sessions.
Limitations a Bug Number: none. Low disk space issues: In low-disk-space situations, the Administrator cannot log on and shut down the server, and move databases by normal means. There are tools provided to solve such problems (available in the Installation CD’s Tools directory or installed by default in the Server installation directory):
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
a Bug Number: UDEVC00006908. Limitation: Browse for new data location does not show mounted workspaces on Avid ISIS in the tree: In the Create Database view in the Interplay Administrator, when you click Browse in the New Data Location (Assets) section, the mounted workspaces on shared storage might not be shown.
Workaround: Type the path manually.
a Bug Number: UDevC00007123, UDEVC00039984. Voice over target workspace field says “No Items to Show”: An administrator logged in to the Avid Interplay Administrator may see “There are no items to show” in the Editor Database Settings view in the field Voice over target workspace field instead of the drives. This is intended behavior: the administrator must also be a Avid Unity user with the same credentials in order to see the workspaces of the Avid Unity. If the workspaces are not visible, check that:
(cid:129) The user is a user on the Avid Unity.
(cid:129) The user has the same password as the user on the Avid Unity.
(cid:129) The Avid Unity is reachable.
Limitations (cid:129) The user is allowed to see the workspaces.
(cid:129) There are actually workspaces at all.
Configuring Remote Workgroups a Bug Number: UDevC00051760. In order to use the Configure Remote Workgroup view in the Interplay Administrator tool, you must have matching Administrator accounts on both workgroups.
The accounts must have the same user names and case-sensitive passwords. For more information on user names and passwords, see the Avid Interplay Software Installation and Configuration Guide.
Archive and Restore a Bug Number: UDEVC00052832. Archive Provider: Windows Message Queuing software must be enabled on the Archive Provider. If you perform a clean install on a system that will run the SGL FlashNet client, you must enable the Windows Message Queuing software. This applies to any system running the Interplay Media Services Archive Provider. If the Windows Message Queuing software is not running, jobs fail to archive. For details, see the Interplay Media Services Readme.
Checking in Avid Assets a Bug Number: UdevC00092889. When creating and checking in a clip or finding a clip in the Avid editing application's Interplay Window, if the clip name contains a slash (\ or /), the application hangs for about one minute then returns to normal.
Workaround: Remove the slash from the clip name.
a Bug Number: UDevC00089019. Checking in bins with deleted clips: When you check in a bin, the Avid editing application determines whether clips need to be checked in based on whether you have modified them or added them to the bin since the last check in. If clips have been deleted from Interplay since the last check in, checking in the bin will not check in the deleted clips again. You need to force a check in of the deleted clips. To force a check in, select the clips and then select Check In To Interplay from the File menu or bin context menu. To force a check in of an entire bin, select all clips in the bin and select Check In to Interplay.
a Bug Number: . When you check a large sequence into the Interplay database from the Avid editing application, the check in can take several minutes. The system provides an initial progress bar to let you know that the checkin has initiated and that you can now get back to work with the application.
However, there is no additional indication to tell you when the checkin has completed. This can be a problem if you check in a large sequence or a bin with many sequences and you don’t see it appear right away in the Interplay Window.
Workaround: If you check in a large sequence and it doesn’t appear right away in the Interplay Window or Access, return to the window in a few minutes to see if the checkin has completed.
Deleting Files from the Interplay Database a Bug Number: UDevC00025736. Try to schedule large file deletions (for example, over 300 GB) during off hours. A large delete operation can slow down the response time on the Avid Interplay Engine. This also slows down the response times on Avid editing applications that are working with the Interplay Window.
Limitations a Bug Number: . If you create shared media using a local bin, and later delete that media without ever checking the clips into the Interplay Window, the clips’ metadata is not deleted from the “Unchecked in Avid Assets” folder. An administrator can delete this metadata as part of normal system maintenance. This only happens to clips that have not been checked in to a folder in the Interplay window.
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