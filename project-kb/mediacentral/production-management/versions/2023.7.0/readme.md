---
product: mediacentral-production-management
product-area: production-management
version: "2023.7.0"
release-date: 01/07/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid MediaCentral | Production Management Version 2023.7 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Production Management documentation (all releases):
https://kb.avid.com/articles/en_US/readme/Avid-Interplay-Production-Documentation For the latest information on this release, see the following Avid Knowledge Base article:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Production-Management-v2023-x- Documentation MediaCentral Production Management v2023.7 is distributed as a Long-Term Maintenance release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at: https://www.avid.com/resource-center/avid-long-term-maintenance-releases Revision History Date Revised Changes Made April 10, 2025 Added IPI-3732 to Limitations for Production Management 2023.7.
May 28, 2024 Updated "Supported Operating Systems and Hardware" on page 3 with the following:
- Added reference to the newly available Avid MediaCentral | Production
Management Hardware Guide.
- Formally referenced in the Avid MediaCentral | Production Management Dell and
HPE Server Support guide, added "Additional Information on System Prerequisites" on page 3.
October 25, 2023 Updated the statement on Microsoft Defender to add that it is not supported on Windows server versions 2016, 2019, and 2022.
October 6, 2023 Added a couple limitations for Transfer Engine (IPI-3558, and IPI-3556). For more July 27, 2023 Initial v2023.7.0 publication.
About This Release About This Release This section includes additional information for MediaCentral Production Management and related concepts.
Supported Software For a list of software supported with Production Management releases, see the Avid Knowledge Base article “Avid Video Compatibility Charts.” For an article listing end of support dates, see the Avid Knowledge Base article “End of Support Dates.” Avid Editing Application Compatibility The following Knowledge Base articles provide information on compatibility between Production Management releases and Avid editor releases: https://kb.avid.com/articles/en_US/compatibility/Avid- Video-Compatibility-Charts For details on the operating system (PC and Mac), QuickTime version, and nVidia drivers supported on the different editor releases, see the Avid editing application Readme and the Knowledge Base article “Avid Media Composer Documentation and Version Matrix.” For more information, see your Avid Customer Service Representative.
Additional Information About Pro Tools For the latest information about using Pro Tools with Production Management, go to the Knowledge Base page titled “Avid Interplay Requirements With Pro Tools.” Supported Operating Systems and Hardware Supported Operating Systems and Hardware When considering your choice of operating system, you must make sure to verify that all systems are supported together. For example, if you install Production Management components on an Avid Media Composer client, you must make sure that your Media Composer and Production Management versions both support the same operating system. You must also verify that the Avid components are compatible.
For more information on supported operating systems and Avid software interoperability, see the following article on the Avid Knowledge Base: https://kb.avid.com/articles/en_US/compatibility/Avid- Video-Compatibility-Charts For details on Production Management server hardware requirements, see the Avid MediaCentral | Production Management Hardware Guide.
Additional Information on System Prerequisites The following table lists Production Management components that require extra preparation before installation.
Component Windows DEP User Account Control Settings .NET Framework v3.5 Transcode Required Required Not Required Production Services Not Required Not Required Required Engine STP Encode Required Required Required Consolidate Required Required Not Required Transfer Not Required Not Required Required (Windows 10 / 11) Enable the “Turn on DEP for essential Windows programs and services only” option in Windows System Properties.
Change User Account Control settings to "Never notify".
Support for HPE MSA 2060 on Production Management Cluster Systems The HPE MSA 2060 has been qualified for use with Production Management v2023.7.
For more information on this hardware and how to configure a Production Management cluster, see the Failover Guide on the Avid Knowledge Base.
Support for Virtual Environments Production Management supports running server applications in a virtual environment using VMware vSphere 6. For more information, see MediaCentral Production Management Virtual Environment with VMWare Best Practices Guide on the Avid Knowledge Base.
Security Guidelines Security Guidelines Avid allows you to install an endpoint detection and response solution on your MediaCentral Production Management servers. This applies to both single-server and cluster environments. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://kb.avid.com/articles/en_US/troubleshooting/en239659 Microsoft Defender on Windows Servers At the time of writing of this document, Microsoft Defender on Windows Server is not supported and must be completely uninstalled. Avid is working towards qualifying Defender as part of an antivirus solution for a future release.
Apache Log4j Updates With the exception of the Production Management Engine, the 2022.3 release updates components previously running Apache Log4j v1.x or v2.17.0 to v2.17.1.
> **Note:** The Production Management Engine is still running one 1.x component.
For more information, see Avid's Apache Log4j Security Assessment documentation on the Avid Knowledge Base at: https://kb.avid.com/articles/en_US/troubleshooting/en239659 International Character Support MediaCentral Production Management includes international character support (ICS). ICS allows you to display and input characters in languages other than English.
Production Management applications are qualified on an English operating system running locales for the following languages:
Simplified Chinese and Traditional Chinese
- Japanese
- French, Italian, German, and Spanish
- Hebrew
- All clients and applications must use the same locale in the same Production workgroup, either English or
one other locale.
macOS systems are not qualified for international character support (ICS).
Multi-byte languages (Simplified Chinese, Traditional Chinese, and Japanese) are not supported by Production Services or SGL FlashNet, except as noted below.
FlashNet v6.4.5 and later includes support for Simplified Chinese, which is qualified for use with Production Management Archive and Restore services. See also the topic “International Character Support Limitations” in the MediaCentral Production Management v2021.3 ReadMe.
New for Production Management v2023.7 New for Production Management v2023.7 This section contains information for all of the new features and improvements for the Production Management v2023.7 release.
MediaCentral Cloud UX Asset Visibility The Asset Visibility feature in the MediaCentral Search Connector section of the Interplay Administrator includes a new Relax Asset Visibility option that allows you to limit or expand on the assets returned by the MediaCentral Search app. Results are based on the settings that you select in this tool, the permissions that are configured for the users and for the database itself.
For more information about how to configure these settings and for examples on how your MediaCentral Cloud UX search results might change based on these settings and permissions, see v2023.7 of the Avid MediaCentral | Cloud UX Installation Guide.
New Setting in MediaCentral Transfer We have added a new setting “Disable Opts UTF8” to FTP device configuration in the Configuration tool > FTP Settings. This setting disables Opts UTF8 commands when in SFTP mode.
This setting is enabled by default.
Upgrading MediaCentral Production Management Upgrading MediaCentral Production Management To upgrade the software, see the following topics:
"Manually Uninstall Before Upgrading" below
- "Best Practices for Performing an Engine Upgrade" below
- Manually Uninstall Before Upgrading
Avid recommends that you manually uninstall the Production Management components before upgrading to the next version.
1. Use the operating system to manually uninstall the installed components.
Depending on the software, you might be required to reboot following the uninstall process.
Do not manually uninstall the Production Engine or the Archive Engine. When upgrading the Production Services Engine, make sure to preserve SQL and the SQL database.
2. Use the MediaCentral Production Management installer to reinstall the components.
For more information, see the Avid MediaCentral | Production Management Software Installation and Configuration Guide.
MediaCentral Transcode Before you install the an updated version of Transcode, you must uninstall the following components:
- Avid Application Manager
- Avid Interplay Access
- Avid MediaCentral Transcode
- (if visible) Media Composer Place Holder
Best Practices for Performing an Engine Upgrade This section lists a number of procedures that can help ensure a smooth upgrade. These can be particularly useful for sites with clustered configurations and large databases. In general, it is useful to get a baseline snapshot of the health of the database and of the Production Management Engine before performing the upgrade. This allows you to fix any problems before the upgrade begins. It also provides a record of the state of the system over time. You can use this information for comparison later if any problems develop after the upgrade.
Back Up the Production Management Database You use the Interplay Administrator to create backups of the database. However, the Administrator does not back up the complete database folder. Before you perform an upgrade, Avid recommends that you create a backup copy of the complete database folder (AvidWG or AvidAM) and the user database folder (_InternalData). See "Backing Up the Production Management Engine Database" on page 9.
Upgrading MediaCentral Production Management Send the Database to Avid Engineering for Testing Avid recommends that you contact your Avid representative about sending a copy of your Production Management database to Production Management engineering for testing. This testing provides a report that includes the following type of information:
An estimation about the duration of the database upgrade/migration
- An analysis of other database characteristics like object count
- Tips for the upgrade if there are any caveats
- Your Avid representative can provide details on which files should be provided for the test.
> **Note:** Avid recommends sending the database for testing prior to starting the upgrade process.
Examine Log Files Before Performing the Upgrade In order to analyze the state of the Production Management Engine, you need the relevant log files and the status of the OS/machine hosting the Production Management Engine or Archive Engine. The easiest way to gather these logs is to use the Collect tool. The Collect tool is typically run by Avid support. See your Avid representative for details.
Your Avid representative can examine the Base Analyzer portion of the Collect tool before the upgrade and determine whether you should make any changes before proceeding with the upgrade. Save the output of the Collect tool. Besides providing troubleshooting information, the Collect tool will provide a baseline of system status information that you can refer back to at a later date.
Restart the Production Management Engine Before the Upgrade While not required, this is a good test of the health of the system. In particular, it is useful to perform a failover of a Production Management cluster system. This can expose any problems with the cluster services. If there are any problems restarting the system, fix the problems before you begin the upgrade.
Deactivate the Database During the Upgrade If the release requires a database upgrade, it is important to control the timing of when the database upgrade occurs. if you deactivate the database before upgrading, the database upgrade will occur when you reactivate the database. See "Database Changes for Upgrading to v2019.x" on the next page.
For the recommended upgrade procedure, see "Updating the Avid Production Management Engine Software" on page 12.
Check the Logs During a Database Upgrade The Production Management Engine displays a status bar during a database upgrade/migration. The status bar appears if you perform the recommended steps and deactivate the database before the upgrade. For a more accurate indication of how the upgrade is progressing, you can use an application such as Notepad to periodically view the bottom of the NXNServer.log file in the following folder:
C:\Program Files\Avid\Avid Interplay Engine\Logs\Machines\<machine_name> Examine and Archive the Logs After the Upgrade If you use the Collect tool, examine the Base Analyzer portion after the upgrade. This portion should run successfully without any errors. Archive the output of the tool as a record of the state of the system after the upgrade.
Upgrading MediaCentral Production Management Database Changes for Upgrading to v2019.x Upgrading from any release earlier than Interplay v3.2 requires a database upgrade. Make sure you back up your database before the upgrade and lock the database when you perform the upgrade as described in "Updating the Avid Production Management Engine Software" on page 12.
Upgrading from Interplay v2.3 or Earlier Upgrading from v2.3 (or earlier) to v3.x involves a schema upgrade which can not be reversed. That means that a full backup of the database must be created before upgrading the Interplay Engine.
Once migrated, the database cannot be loaded by earlier versions of the Interplay Engine. If you need to access the database through an earlier version, contact your Avid representative.
For a very large database, the upgrade process can take up to three hours. For systems earlier than v2.3, an additional upgrade occurs that can take additional time.
> **Note:** For releases earlier than v2.3 there are additional steps you must take after the upgrade to delete
unused rendered effects. See "Database Changes for Upgrading Systems Earlier than v2.3" below.
See "Best Practices for Performing an Engine Upgrade" on page 6.
Free Disk Space for a Database Upgrade The database migration requires a significant amount of free disk space on the drive that hosts the _ Database folder. You should have twice the amount of free disk space that the _Database folder occupies on disk.
Database Changes for Upgrading Systems Earlier than v2.3 This section includes important information for upgrading a system earlier than Interplay v2.3.
Upgrade to Interplay v2.7.5 or Higher Before Upgrading to Interplay v3.x Before you upgrade a system earlier than Interplay v2.3 to Interplay v3.x, you must first upgrade to a version between Interplay v2.3 and v2.7.x, inclusive. Note that only Interplay v2.7.5 and higher installers are available on the Avid download center.
> **Note:** Avid recommends that before you perform an upgrade you contact your Avid representative about
sending a copy of your Interplay database to Interplay engineering for testing. Part of the testing results will include an estimate of the time it will take to perform the database upgrade.
Removing Rendered Effects During the Database Upgrade The upgrade to Interplay v2.3 required a database upgrade. So if you are upgrading a system earlier than v2.3 to Interplay v3.0, the database upgrade will take effect. The first time you open the database after the upgrade, the Production Management Engine automatically removes links for rendered effects (they are replaced as emulated rendered effects by the client application). No media is deleted.
This process significantly reduces the size of the database. For a very large database, the upgrade process can take up to three hours.
Because the process of removing the links can take a long time, it is important to follow the upgrade procedure described in "Upgrading MediaCentral Production Management" on page 6. If you follow the procedure, the database change occurs while you are logged into the Interplay Administrator. During the process, the Interplay Administrator displays a progress bar. Messages are also displayed in the Production Management Engine log file, nxnserverlog. You can periodically open the log file with Notepad to monitor the progress.
Upgrading MediaCentral Production Management During the database upgrade, the Production Management Engine also determines if there are rendered effects that are not currently in use and moves these rendered effects to one or more subfolders in the Orphan Clips folder. An administrator or media manager can then delete these assets and their media.
For more information about options for deleting, see "Deleting Unused Rendered Effects After an Upgrade" on page 17.
Backing Up the Production Management Engine Database You use the Interplay Administrator to create backups of the database (see the Avid MediaCentral Production Management Engine and Archive Engine Administration Guide). However, the Administrator does not back up the complete database folder. Before you perform an upgrade, use the following procedures to create a backup copy of the complete database folder (AvidWG or AvidAM) and the user database folder (_InternalData).
Before you create a backup copy, determine the location of the database folder and whether the database was split between the Production Management Engine and a shared storage workspace.
> **Note:** A split database is no longer recommended. Storing many small files on Avid NEXIS workspaces is an
inefficient use of Avid NEXIS storage and can lead to performance problems. Customers with existing split databases can continue to use them but Avid does not recommend creating new split databases.
To determine the location of the database folder:
1. On the Production Management Engine, open a Command Prompt and type the following
command:
net share All shares on the system are displayed. By default, WG_Database$ (a hidden administrative share) represents the root folder of the database.
  - For a non-cluster system, the root folder is usually D:\Workgroup_Databases.
  - For a cluster system, the root folder is S:\Workgroup_Databases
2. Navigate to the root folder and double-click the AvidWG folder (or AvidAM folder for an Archive
Engine).
By default, this folder includes all database folders and files, as shown in the following illustration:
Upgrading MediaCentral Production Management You need to back up the entire AvidWG folder.
If the AvidWG folder includes only the _Database folder, then the Production Management Engine is using a split database.
> **Note:** For some split databases, the Workgroup_Databases folder might incorrectly include all
database folders. To verify if the split database is active, open both _PropertyStore folders and check for recent timestamps. The folder on shared storage should show recent activity.
To determine the location of the second (split) database folder:
- Navigate to the workgroup.xml file and open it in a text editor.
This file is located in the Production (Interplay) Engine installation directory, for example,
  - C:\Program Files\Avid\Avid Interplay Engine\Data\Apache\Conf\workgroup.xml (non-
cluster systems)
  - S:\WorkgroupData\Apache\conf\workgroup.xml (cluster systems).
Both database paths should be listed, for example:
  - \\InterplayServer\WG_Database$
  - \\UnityServer\WorkspaceName
Both of these folders hold an AvidWG folder. You need to back up both AvidWG folders.
To make a backup copy of the database on a non-cluster system:
1. Open the Interplay Administration tool.
2. Use the following steps to lock the database:
a. Click Lock/Unlock Databases.
b. Select the database in the Unlocked Databases list.
c. Click Lock Database.
Upgrading MediaCentral Production Management
3. Click Menu and click Manage Databases.
4. Select the AvidWG database and click Deactivate. Select AvidAM for an Archive Engine.
5. Click Menu and click the Restart Server view.
6. Click Restart Server and close the Interplay Administration tool.
7. Use a backup tool to make a copy of the following folders and record their location.
Production Engine or Archive Engine Folder Name Default Location AvidWG (Production Engine database) D:\Workgroup_Databases\AvidWG AvidAM (Archive Engine database) D:\Workgroup_Databases\AvidAM _InternalData (user database if engine is \D:\Workgroup_Databases\_InternalData a Central Configuration Server) Production Engine (Split Database) Folder Name Default Location AvidWG (_Database folder only) D:\Workgroup_Databases\AvidWG AvidWG (all other database folders) \\UnityServer\WorkspaceName\AvidWG _InternalData (user database if engine is \D:\Workgroup_Databases\_InternalData a Central Configuration Server)
> **Note:** Use a backup tool that can handle long path names (longer than 255 characters). For
example, perform a backup with Robocopy (from the Microsoft Windows Resource Kit) or use a tool such as 7-ZIP (free download) to zip the folder.
> **Note:** Depending on the size of your database, this kind of backup can take a long time. To save
time you can temporarily move the _Backups folder from within the AvidWG (or AvidAM) folder. to another location. After you perform the copy you can move the folder back under AvidWG.
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
Upgrading MediaCentral Production Management a. On the desktop, right-click This Computer and select Manage.
The Server Manager window opens.
b. In the Server Manager list, click Tools and select Failover Cluster Manager.
The Failover Cluster Manager window opens.
7. Open the Groups folder.
8. Select the Avid Workgroup Server group.
9. Select the Avid Workgroup Engine Monitor resource and take it offline.
10. If you performed the previous step correctly, drive S: should still be accessible within the Windows
environment. If it is not available, use the Cluster Administration tool to put drive S: online by clicking on the disk resource within the “Avid Workgroup Server” group and selecting online.
11. Use a backup tool to make a copy of the following folders and record their location.
Production Engine or Archive Engine Folder Name Default Location AvidWG (Production database) S:\Workgroup_Databases\AvidWG AvidAM (Archive database) S:\Workgroup_Databases\AvidAM _InternalData (user database if engine is \S:\Workgroup_Databases\_InternalData a Central Configuration Server) Production Engine (Split Database) Folder Name Default Location AvidWG (_Database folder only) S:\Workgroup_Databases\AvidWG AvidWG (all other database folders) \\UnityEngine\WorkspaceName\AvidWG _InternalData (user database if engine is a S:\Workgroup_Databases\_InternalData Central Configuration Server)
> **Note:** Use a backup tool that can handle long path names (longer than 255 characters). For
example, perform a backup with Robocopy (from the Microsoft Windows Resource Kit) or use a tool such as 7-ZIP (free download) to zip the folder.
> **Note:** Depending on the size of your database, this kind of backup can take a long time. To save
time you can temporarily move the _Backups folder from within the AvidWG (or AvidAM) folder. to another location. After you perform the copy you can move the folder back under AvidWG.
12. Before you perform the upgrade, bring all of the resources inside the “Avid Workgroup Server”
group online. Right-click the “Avid Workgroup Server” group and select Start Role.
For more information on the Cluster Administration tool, see the MediaCentral Production Management Engine Failover Guide.
Updating the Avid Production Management Engine Software The following topics describe how to update the Production Management Engine and Archive Engine software:
Upgrading MediaCentral Production Management "Upgrading a Production Management Engine Cluster or Archive Engine Cluster" below
- "Upgrading a Non-Clustered Production or Archive Engine" on the next page
- Upgrading a Production Management Engine Cluster or Archive Engine Cluster
The process described here is similar to a rolling update as documented in the MediaCentral Production Management Engine Failover Guide, except that the database is locked and deactivated before you begin.
To upgrade a clustered Production Engine or Archive Engine:
1. Verify that you have a valid backup as described in "Backing Up the Production Management
Engine Database" on page 9.
2. If you took the Avid Workgroup Engine Monitor resource offline when you performed a backup,
bring all of the resources inside the cluster resource group online. Right-click the “Avid Workgroup Server” group and select Start Role. For more information, see the final steps in "Backing Up the Production Management Engine Database" on page 9.
> **Note:** If you deactivated your database when backing it up in Step 1, proceed to "Updating the
Production Management Engine Software on a Cluster" below.
3. Open the Interplay Administrator tool.
4. Use the following steps to lock the database:
a. Click Lock/Unlock Databases.
b. Select the database in the Unlocked Databases list.
c. Click Lock Database.
5. Use the following steps to deactivate the database:
a. Click Menu in the Interplay Administration tool and click Manage Databases.
b. Select the AvidWG database and click Deactivate. For an archive database, select AvidAM.
6. Use the Interplay Server Installer to update the Production Engine or Archive Engine software as
described in the following section.
Updating the Production Management Engine Software on a Cluster Use this procedure to update the Production Management Engine or Archive Engine software.
To update a cluster:
1. On either node, determine which node is active:
a. Right-click My Computer and select Manage. The Server Manager window opens.
b. In the Server Manager list, open Features and click Failover Cluster Manager.
c. Click Roles.
Upgrading MediaCentral Production Management d. On the Summary tab, check the name of the Owner Node.
Consider this the active node or the first node.
2. Run the Production Management Engine installer to update the installation on the non-active node
(second node). Select the values suggested by the installer to reuse values set during the previous installation on that node. Note that the Server Execution user password will be required during the installation.
> **Note:** You are not required to restart the node following the software upgrade. However if you have
another reason to reboot your upgraded node at this time, it is safe to do so.
Do not move the Avid Workgroup Server to the second node yet.
3. Make sure that first node is active. Run the Production Engine installer to update the installation on
the first node. Accept the parameters suggested by the installer so that all values are reused. Note that the Server Execution User password will also be required during this installation.
4. The installer displays a dialog box that displays the following message:
“To proceed with the installation, the installer will now trigger a failover to the offline node."
5. Click OK in the dialog box to continue.
6. After you update both nodes, follow the steps in "Activating the Database" on the next page.
Upgrading a Non-Clustered Production or Archive Engine To update the Avid Production Management Engine software:
1. Verify that you have a valid backup as described in "Backing Up the Production Management
Engine Database" on page 9.
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
5. Use the Interplay Server Installer to update the Production Management Engine software. Follow the
onscreen instructions.
6. After you update the software, follow the procedure in "Activating the Database" on the next page.
Upgrading MediaCentral Production Management Activating the Database After you perform the upgrade, you must activate the database. The Production Management Engine software performs any necessary database updates when you activate the database.
1. Use the Interplay Administrator tool to activate the database and perform the database upgrade as
follows:
a. Open the Interplay Administrator tool on the system running the Production Management Engine.
b. Click Manage Databases.
c. Type the following in the “Database (.pro) file to activate” text box.
\\engine_name\WG_Database$\AvidWG\AvidWG.pro or \\engine_name\WG_Database$\AvidAM\AvidAM.pro (for an Archive Engine) For a split database, type:
\\Avid_Unity_server_name\workspace_name\AvidWG\AvidWG.pro Where Avid_Unity_server_name is the Avid NEXIS System Director.
> **Note:** You can also browse to the appropriate .pro file and then click Activate. On a cluster
you must browse from the network, not from the mount.
The following example shows the pathname on a system that does not have a split database.
The system name is wgb-ab.
d. Make sure the option “Load Database on Activation” is checked.
e. Click Activate.
The upgrade begins. The system displays a dialog box with a progress bar that bounces from side to side while the database is being updated.
For an accurate indication of how the database upgrade is progressing, you can use an application such as Notepad to periodically view the bottom of the NXNServer.log file in the following folder:
C:\Program Files\Avid\Avid Interplay Engine\Logs\Machines\<machine_name> The system will automatically unlock the database if you have Load Database on Activation selected.
The database upgrade can take up to several hours, depending on the size and complexity of the database. It is important not to interrupt or stop the Production Management Engine or perform a failover during the upgrade process. This could result in problems with the database. To recover from a failed or interrupted upgrade, you need a valid backup of the old database.
Upgrading MediaCentral Production Management
2. To verify that you can log onto the database, do the following:
a. Click Menu in the Interplay Administration tool.
b. Click Manage database Roles.
The Manage Database Roles view opens.
c. Click the AvidWG icon (AvidAM for archive database).
You can tell that you have successfully logged onto the database when the database icon displays a green check mark and the users and roles are displayed as shown in the above illustration.
If you do not deactivate the database before the software upgrade, any automatic database upgrades begin on your first login to the Production Management Engine after you update the software. This occurs the first time you log onto the database with any client (for example, Interplay Access or Interplay Assist).
After you type your username and password at the login screen, the system stays at a “Connecting” status while it performs the upgrade. In this case, the system does not display any messages indicating that the upgrade is in progress. Do not exit the application, shut down the system, or fail-over the Production Management Engine while the upgrade is being performed.
> **Note:** Note that an automatic database upgrade will occur if the database is older than Interplay v3.7.
Verifying the Upgrade To verify the upgrade:
1. Depending on whether you upgraded an Production Management Engine or an Archive Engine,
navigate to one of the following locations:
C:\ProgramData\Avid\Production Management Engine\Logs\Machines\<machine name> C:\ProgramData\Avid\Archive Production Engine\Logs\Machines\<machine name>
2. Open the NXNServer.log file in Notepad.
3. Search for the text “success”. There should be a message similar to the following:
Database AvidWG has been successfully updated from version xxxxx to yyyyy Where xxxxx and yyyyy are the old and new releases, respectively. The message could also say “successfully corrected”. Messages such as the following are part of the upgrade process and can be ignored:
Can't open file 'S:\Workgroup_Databases\AvidWG\_Database\Avidxxx.xxx' for reading Upgrading MediaCentral Production Management Deleting Unused Rendered Effects After an Upgrade The MediaCentral Production Management Engine does not include rendered effects as links in the database. Instead, they are displayed as emulated rendered effects in Interplay Access.
The first time you open the Production Management database after an upgrade from a version earlier than v2.3, the Production Management Engine automatically removes links for rendered effects. In a large database, this can take several hours (see "Activating the Database" on page 15). During this process, the engine also determines if there are rendered effects that are not currently in use and moves these rendered effects to one or more subfolders in the Orphan Clips folder. An administrator or media manager can then delete these assets and their media.
Each numbered subfolder contains 2,000 rendered effects each (except for the last subfolder, which can contain less). The resulting folder structure looks like the following:
An administrator or media manager has two options for deleting the unused rendered effects:
Using the standard deletion procedure in Interplay Access.
- Using a Windows command-line tool, which deletes both metadata and media. This tool has two
- advantages compared to deleting in Interplay Access:
  - Deletion is faster (for example, there are fewer client-server round-trips with the tool and no
need to refresh the user interface)
  - You can run the tool as a scheduled task. This is especially useful if there are a large number
of unused rendered effects (several thousand or more).
The Windows command-line tool (delete_obsolete_rendered_effects.exe) is located in the following folder:
drive:\Program Files\Avid\Avid Interplay Engine\Server The syntax of the tool is described in the following in-line help:
********************************************************************** delete_obsolete_rendered_effects - Deletes obsolete rendered effects.
delete_obsolete_rendered_effects [user:] [psw:] [maxAssets:] [maxTime:] This tool automates the deletion of rendered effects (including media) that were moved to the Orphan Clips folder during the database upgrade from versions prior to Interplay 2.3.
Options:
user:<user name> Name of the user to logon to AvidWG with psw:<password> Password of the user to logon to AvidWG with maxAssets:<number> (optional) Maximum number of rendered effects to delete maxTime:<minutes> (optional) Maximum run time in minutes; tool will stop deletion when this period is exceeded The maxAssets: and maxTime: options are useful if this tool is run as a scheduled task, e.g. using Windows Task Scheduler.
********************************************************************** Upgrading MediaCentral Production Management To run the delete tool:
1. On the Production Management Engine system (or for a cluster system, on the online node), open a
Windows Command Prompt.
2. Navigate to the location of the tool. For example, type
cd C:\Program Files\Avid\Avid Interplay Engine\Server
3. Type the command line for the tool and press Enter, using the following syntax:
delete_obsolete_rendered_effects [user:] [psw:] [maxAssets:] [maxTime:] If you want to direct the output of the tool to a file, append the following to the command:
>> output_file.txt For example, to run the program for one hour and print the output in a file named results.txt, type the following and press Enter:
delete_obsolete_rendered_effects user:administrator psw:admin maxTime:60 >>results.txt If you want to schedule the tool to run at a particular time, use a program such as Windows Task Scheduler.
Additional Information About the Server Execution User The Server Execution User is a Windows operating system user account that is used to run the Production Management Engine processes. The Server Execution User is set up the first time that you install the Avid Production Management Engine software and has the following features:
- The account must have local administration rights on the operating system for the Production
Management Engine Server (both nodes on a cluster). The Production Management Engine installation software asks you for a user name and password and automatically adds the account to the Administrator Group. Usually this is a domain account that has already been created. The account must have the following local security policy settings:
  - Act as part of the operating system
  - Back up files and directories
  - Restore files and directories
  - Adjust memory quotas for a process
  - Log on as a service
  - Increase scheduling priority
On a cluster system the account must have these permissions on both nodes. The account must be a local Administrator on both nodes.
Ideally this should be an account that human users do not use to log onto the system. This will prevent accidental changes to the Server Execution User user account during normal administration duties. For example, if someone changes the password by mistake, users may not be able to access the Production Management database.
- An account with an identical user name and password must have read/write access to the shared
storage workspaces that contain media.
> **Note:** In order to prevent accidental changes to the Server Execution User account during normal
administration duties, Avid recommends that you use a dedicated Windows user account as a Server Execution User and cluster service user. This account should not be used for administrative logins to the Production Management engine hardware.
Upgrading Media Indexer to 2023.7 Additional Information for MediaCentral Transfer Upgrades Before you upgrade MediaCentral Transfer to a new release: If your configuration includes playback and ingest through a third-party DHM, you must check with the third-party vendor to determine if an updated DHM is required. Existing third-party DHMs might need to be rebuilt using the latest DHM SDK for compatibility with the latest version of the Transfer Engine and the Transfer Client.
Upgrading an Transfer System to Transfer MediaCentral Transfer is a 64-bit application and stores profile information in .xml files. In releases prior to v3.0 the information was stored in registry settings. MediaCentral Transfer includes a tool to convert the older profiles to current generation profiles. Use the following procedure:
1. Install MediaCentral Transfer.
2. Before you start MediaCentral Transfer, navigate to the following folder:
C:\Program Files\Avid\Utilities\FTPProfilesTool
3. Execute the tool.
The system stores the FTP profiles in an .xml file. Now you can start MediaCentral Transfer and use the profiles. The following shows the path to the new profiles file:
C:\ProgramData\Avid\GenericFTP\FtpProflies.xml Upgrading Media Indexer to 2023.7 When upgrading a Media Indexer server to 2023.7, you must do the following:
1. Uninstall the previous version of Media Indexer. If the installer fails,
2. Delete the following folders:
  - %ProgramData%\Avid\AvidMI
  - %ProgramFiles%\Avid\AvidMI
3. (Option) If you cannot delete %ProgramFiles%\Avid\AvidMI and, or %ProgramData%\Avid\AvidMI,
restart the OS to finish uninstalling.
4. Install the new version of Media Indexer.
This upgrade will require a full reindex of the Media Indexer. Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can take several hours.
The following guide provides information that can help you plan for the upgrade and reindex operation.
http://resources.avid.com/SupportFiles/attach/Production_Management_Best_Practices_Guide_ 2020.4.pdf
- For information on estimating how long a reindex could take, see the section “Estimating the
Indexing Time” For a procedure that explains how to perform the upgrade and reindex operation on one Media
- Indexer and copy the cache files to the production Media Indexers during the upgrade, see the
section “Prebuilding a Cache During an Upgrade for Media Indexer v3.6.x or Higher” The prebuild cache procedure allows you to take one Media Indexer out of the NOMI (Network of Media Indexers), upgrade it separately, and then allow it to perform the reindex. This can be done while the MIs in the NOMI are still monitoring the production system. Then you can copy the cache over to the other Media Indexers as they are upgraded. This can save time during the upgrade.
Upgrading Production Services Engine to 2023.7
> **Note:** Media Indexer allows you to export the storage configuration files from one MI and then import them
to another MI to save time adding the storage locations. If you plan to use this feature in MI 2019.6 and later, use the latest Chrome browser to perform the reimport.
Upgrading Production Services Engine to 2023.7 When upgrading a Production Services Engine server to 2023.7, please note that some changes are required to support a future upgrade path with MSSQL 2019, and the following issues have been identified:
Before performing this upgrade, it is HIGHLY RECOMMENDED to make a backup of your Production Services profiles. This can be done in the Production Services Engine Configuration. There is a shortcut to the application on the Desktop of the Production Services Engine).
Automatic upgrades are not supported for this release of Production Services Engine if a previous
- version is installed.
If the install detects an existing installation of Production Services, it will not continue. A window will be displayed with the following message and a single “Exit” button that allows you to exit, uninstall the previous version and install the new one. The message displayed is:
A previous version of Production Services has been detected. Upgrade to the latest version is not supported in this release. Please remove the existing Avid Interplay Production Services and restart the install process.
C:\Program
- Clean install is blocked if the installer detects the file dmsdb10_Data.MDF in
Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA.
You must remove the file from that location and back it up somewhere safe before restarting the install. The message displayed is:
The Avid Interplay Production Services installer has detected an existing DMS database and cannot continue the installation process. Please see product documentation for instructions. The install process will now exit.
- If the install detects that there is an existing install of Microsoft SQL Server Express 2012 or 2016, it
will not continue and show the message below. You need to uninstall the existing SQL server instance before restarting the install.
  - MSSQL 2012:
The Avid Interplay Production Services installer has detected an installation of Microsoft SQL
2012. Installation cannot continue with an existing Microsoft SQL 2012 installed. Please see
product documentation for instructions. The install process will now exit.
  - MSSQL 2016:
The Avid Interplay Production Services installer has detected an installation of Microsoft SQL
2016. Installation cannot continue with an existing Microsoft SQL 2016 installed. Please see
product documentation for instructions. The install process will now exit.
If the install detects a Windows version of Windows Server 2012 or older, it will not continue and the
- following message will be displayed:
Avid Interplay Production Services requires Windows Server 2016 or greater.
Follow the procedure in the topic "Uninstalling SQL 2012 and Installing Production Services Engine" on the next page.
Upgrading Production Services Engine to 2023.7 Uninstalling SQL 2012 and Installing Production Services Engine This section shows you how to uninstall SQL 2012 and install Production Services Engine v2022.3. This was done on Windows 2019 Server.
The following lists the components installed on the server prior to the uninstall/upgrade:
To uninstall SQL 2012 and Install Production Services Engine:
1. Select Control Panel > Programs and Features > Uninstall Microsoft SQL Server 2012 (64-bit) and
remove everything, and confirm everything succeeds.
When you are done, make sure you check Programs and Features for any remnants of programs that did not uninstall.
For example, the first attempt, might leave the SQL Server 2019 Setup (English). So, when you run the install, it will not install SQL Express 2019 (in Step 4) and give you an error in Step 9.
2. Uninstall Production Services Engine by selecting Control Panel > Programs and Features > Uninstall
Production Services Engine.
3. Install Production Services from Production Management Installer.
4. When you launch you should see the window below to install Microsoft SQL Server 2019 Express
(x64).
Upgrading Production Services Engine to 2023.7
> **Note:** If you do not see this window, you will get the error in Step 8 later.
5. Click Install, and the Welcome to the Install Shield Wizard Screen opens:
6. Click Next on the Welcome screen.
You are then prompted to accept the License agreement.
7. Select Yes, I accept the terms in the license agreement, and click Next.
The Destination Folder window appears.
8. In the Destination Folder window, leave the default location, and click Next.
The Select the Server window appears asking you to select the server where you want to create the Production Services database from.
Upgrading Production Services Engine to 2023.7
9. On the Select the Server window, leave the defaults (Database Server (local) and sa for the Login ID,
and do not modify the password, and click Next.
If you get the following error message, the 2019 SQL Express installation did not work properly.
Click OK to close the error message, go back to Step 1, and repeat this procedure. Otherwise, continue to the next step.
10. On the Ready to Install the Program window, click Install.
The InstallShield Wizard Completed window opens.
11. Click Finish on the InstallShield Wizard Completed window, and then click Yes to reboot the
Production Services system.
After a successful install of Production Services/SQL Express 2019, you see the following SQL components in Programs and Features:
Now that you have successfully installed the Production Services Engine and SQL Express 2019, you need to check a few areas to make sure they are configured correctly.
For more information, see the following topics:
  - "Checking the Production Services Engine Configuration Settings" on the next page.
  - "Importing Your Backed Up Production Services Engine Profiles" on page 25.
Upgrading Production Services Engine to 2023.7 Checking the Production Services Engine Configuration Settings After successfully installing Production Services Engine and SQL Express 2019, the Settings were retained in this process To check the Production Services Engine Configuration Settings:
1. Open the Production Services Engine Configuration Settings dialog box.
2. Check to make sure that the following fields are configured as they were before the upgrade:
  - Database Computer Name
  - Interplay Engine Hostname
  - All Purge handling fields
3. If everything looks fine, close the Settings dialog box, and import your Production Services Engine
profiles that you backed up. For more information, see "Importing Your Backed Up Production Services Engine Profiles" on the next page.
Upgrading Production Services Engine to 2023.7 Importing Your Backed Up Production Services Engine Profiles After successfully installing Production Services Engine and SQL Express 2019, the Settings were retained in this process To import your backed up Production Services Engine Profiles:
1. Launch the Avid Interplay Production Services Engine Configuration Tool.
2. Click the Profiles button.
The Import / Export Profiles dialog box opens:
3. Click the Browse button.
The Select File Location dialog box opens.
4. Navigate to your backup file, select it, and click Open.
The Import / Export Profiles dialog box opens.
Upgrading Production Services Engine to 2023.7
5. Click Import, and then click Yes in the confirmation dialog box to import the .xml file.
The Import Profiles dialog box opens.
6. Click OK to close the Import Profiles dialog box.
The profiles are imported.
7. Open Avid Interplay Administrator > Production Services > Profiles and confirm that the profiles
appear as expected.
Once you have confirmed that the profiles have been imported correctly, you are ready to start testing Production Services.
Fixed in Production Management v2023.7 Fixed in Production Management v2023.7 The following issues have been resolved in MediaCentral Production Management v2023.7.0.
Media Indexer Bug Number: SAK-2600. The lastModifiedTime.utc property of the format descriptor lacks the letter z at the end of the value, so it is not in UTC format.
Bug Number: SAK-2465. Media Indexer on macOS is dependent on an Avid NEXIS Client being installed. If the Avid NEXIS Client is not installed, after installation, the Media Indexer Web user interface does not work for a long time, and it will never work because the backend did not start.
Bug Number: SAK-2070. Media Indexer on macOS Monterey version 12.6 fails to index media on the first run.
Bug Number: IPI-3518. Media Indexer 2022.3.4 does not create enough CLASSIC Indexing workers, meaning the workers count is different compared to previous versions resulting in slow indexing.
Transfer Engine and Client Bug Number: CCUX-3469. Bug Number: Using SFTP to Transfer to an FTP Server in the AWS Cloud is failing.
Transcode Bug Number: IPI-3472. When transcoding a sequence with unrendered subcap-effects, the transcoder ignores the “letter spacing” setting. After transcoding, 'letter spacing” looks like it's set to a value of -1 or 0.
Bug Number: IPI-3444. When attempting to Transcode an UHD 50p XAVC Intra Class 300 CBG to proxy H.264 720p50 800kbps, Transcode will generate the following error message:
Exception: FatalProc() Assertion failed: IndexDuration() <= IndexEntryCount(), fileName=s:\coresw\ame\src\msm\mxfmappersegmented.c, line=254 STP Encode This release does not contain any STP Encode fixes.
Interplay Web Services Bug Number: IPI-3507. Apache Tomcat that ships with Interplay Web Services is a 9.x version, but prior to build 68, has smuggling vulnerability.
Limitations for Production Management 2023.7 Limitations for Production Management 2023.7 This section includes information on known limitations and defects related to this release of MediaCentral | Production Management.
For limitations previous to this release, see the topic"Limitations and Defects Found in Earlier Versions" on the next page .
For International Character Set (ICS) limitations, see the topic “International Character Support Limitations in the MediaCentral Production Management v2021.3 ReadMe.
Installation and Configuration Bug Number: RELENG-3176. When unzipped, the Production Management installer might include long file path names that are incompatible with some versions of Windows. If you need to copy unzipped installation packages from one location to another, Windows 10 and Windows 2016 provide a registry setting that allows for these long path names.
You can find this setting under: Computer Configuration > Admin Templates > System > FileSystem > Enable Win32 long paths.
Bug Number: IPI-3732. Transcode and STP Encode fail to start, and MediaCentral Distribution Service (MCDS) Send To Playback jobs fail with a "Remote STP process failed: RelinkInternalErrorException(- 1073741819)" error message after installing VMWare Tools 12.5.0.
Workaround: Install VMWare Tools 12.5.1. This release addresses the issue where applications may stop responding or fail to initialize. For further information about this issue, please visit the Avid Knowledge Base troubleshooting article here.
Media Central Distribution Service (MCDS) Bug Number: IPI-3490. Certain news sequences cannot be sent to playback AirSpeed from MediaCentral Cloud UX. The job never shows up in Production Services and fails with the errorRemote "STP Process Failed-Unknown Exception".
Bug Number: IPI-3373. Certain media fails on Send To Playback, with the error “Remote STP Process failed: Unknown exception” on MCDS.
In MCDS logs, it shows the media is offline, but the media is actually online in Interplay Access and MediaCentral Cloud UX.
Media Central Transfer Engine Bug Number: IPI-3576. When sending to playback using the Generic_FTP DHM, and selecting the “create clip xml” in the Playback Device field in the TM Config, the XML file is created, but there is no attempt to FTP it to the destination.
Bug Number: IPI-3558. Using the Avid Interplay Production Services and Transfer Status Tool from the 2023.7_LTM Server kit and trying to get a status while in the TM Tab will fail with Java.lang.NullPointerException.
Workaround: Install the Avid Interplay Production Services and Transfer Status Tool from the 2023.7 Standalone Transfer installer.
Limitations and Defects Found in Earlier Versions Bug Number: IPI-3556. When performing an SFTP, you could run into an issue where the job has failed but the status delivered back to the user is “Completed”. This can be caused by setup errors for this TM Profile in TMConfig.
In the TM log, LibCurl will show an error:
LibCurlSendingThread: LibCurlSendingThread() curl_easy_perform() failed: Error in the SSH layer However, the Transfer Engine job continues as if nothing happened. The percentage in the Transfer Status goes to a value based on how big the file is (e.g. 12%), and then a minute later, it goes to 100% Completed, even though no file was ever transferred.
The FTP Server logs will show you what the error actually was: (for instance) ftp [Command] Opening file '/xx/XDCAM/My_Bug1.tmp'.
In this case the Path to where the file is being written on the FTP Server was incorrect / did not exist.
Limitations and Defects Found in Earlier Versions Limitations and defects in are organized in the following sections:
- "Limitations for Production Management v2022.3" below
Limitations for Production Management v2022.3 This section includes information on known limitations and defects related to this release of MediaCentral | Production Management.
For limitations previous to this release, see the MediaCentral | Production Management v2021.3 ReadMe.
For International Character Set (ICS) limitations, seethe topic “International Character Support Limitations in the MediaCentral Production Management v2021.3 ReadMe.
Installation and Configuration Bug Number: RELENG-3176. When unzipped, the Production Management installer might include long file path names that are incompatible with some versions of Windows. If you need to copy unzipped installation packages from one location to another, Windows 10 and Windows 2016 provide a registry setting that allows for these long path names.
You can find this setting under: Computer Configuration > Admin Templates > System > FileSystem > Enable Win32 long paths Interplay Access Bug Number: IPI-3296. If you installed new Production Services Engine build that included custom fields (implemented within SAK-1528) and then imported profiles which were previously exported from a system with public Production Services Engine or from a system with a custom Production Services Engine, and then create a completely new profile, the data (both at the imported and at newly created profiles), randomly disappears or might be substituted with other values.
The issue occurs due to the difference in the number of fields at the version from which the export was made. Data cannot be saved correctly in the database on the system with combined new Production Services Engine (PSE public build with custom fields) fields.
Limitations and Defects Found in Earlier Versions If you export profiles from a system with a custom Production Services Engine, these profiles would have xml file parameters for two additional fields (TargetAudioSampleRate and TargetAudioSampleRateDual) that exist in the custom Production Services Engine, but are not included in the combined new Production Services Engine. When this xml is imported, it harms something in the profile’s data processing. If you export profiles from a system with previous public Production Services Engine, it does not have the xml file parameters for 5 additional fields that was added from the custom build.
At the same time if you do not import profiles and just install the new combined Production Services Engine build with clean database and start adding profiles from scratch everything works correctly.
> **Note:** In order to perform an upgrade until a new Production Services Engine version is released, you user
must delete the database (new Production Services supporting MSSQL Server 2019 Express). This means you would have to use export/import to not lose previously created profiles while upgrading.
So, export/import functionality is critically important.
Workaround: Restart the service immediately after importing a profile.
Bug Number: IPI-2945. Service Framework has JRE 7, but Copy/Move/Archive/Restore providers are built with JRE 8. Due to this, Service Configuration tools fail with an error, and you are not able to configure the providers.
Workaround: Complete the following steps:
1. Install Access 2020.4 or later.
2. Open Interplay Administrator tool and login.
3. Open Avid Service Framework inside the Interplay Administrator tool.
4. Configure the affected services normally.
Media Indexer Bug Number: CCUX-3256. There is a configuration issue, where the settings of Production Management are not consistent with the settings of MediaCentral |Stream resulting in the check-in to storage not being added in Media Indexer. The check-in looks successful, but cannot play in the Asset Editor.
Workaround: You can resolve the offline status issue by adding the workspace to Media Indexer.
Bug Number: SAK-1424. In some instances, Media Indexer has an issue with some Unicode symbols in pathnames. It seems, the lowercasing of them makes paths unresolvable in the filesystem. This results in Media Indexer not processing the media with Unicode symbols in pathnames.
Production Services Engine Bug Number: IPI-3267. Cycling through the Transcode Profile list in the Production Services page in Interplay Access gives a save prompt, even when no changes have been made to the profile. This happens every time a new Transcode Profile is selected and deselected.
Workaround: Click “Yes” at the message dialog to prevent the prompt from appearing again.
Limitations and Defects Found in Earlier Versions Transfer Bug Number: None. When launching the Transfer Engine application, an installer dialog may appear and additional update steps will be performed. Once the update has completed you will be required to reboot a second time.
Bug Number: CCUX-5590. The “scavenge” metadata attribute is no longer being set on ingest, yet the “Enable Auto Scavenge” option is still available to select.
Bug Number: CCUX-5545. Using the FTP Browser to initiate an Ingest of 1080i50 Media, the 100% value occurs well before the actual end of the Ingest, giving the appearance that the Transfer Engine is hung, and waiting for the final checkin. The Transfer Complete message does not appear for many minutes after the 100% value is reached. Additionally, the % calculation seems to be based on 50% of the file as it crawls from 0-50%, and then in a flash displays 100%.
Bug Number: IPI-3468. With the XML option checked so as to deliver an XML file with the OP1A on STP, the Transfers will eventually start continuously failing until the Transfer Engine application is restarted. This # of jobs where the problem starts seems to be around 1200 transfers.
Bug Number: IPI-3380. When using PWT on send to playback with DET, specifically XDAM50 jobs send from the Editor, you get in a bad state after canceling a PWT job. This leads to stuck jobs that were requiring a Transfer Engine restart to clear up and give back the stream.
Bug Number: IPI-3361. New AVCI50 media from Telestream plays fine in the Editor and if alone on the timeline can also be sent to playback. However, when another piece of AVCI50 media (imported bars for instance) is added to the timeline, this new sequence will fail to STP with the following error: SendFrames Error: 21, desc: Encoder Exception: AVCIEncoder::Encode() - class MXF::SDK::Exceptions::InvalidFormat.
Bug Number: IPI-3349. Customers are unable to move to a new version of Transfer because of Colorspace inconsistencies in the AVCI-100 OP1A file created by older versions of Transfer Engine.
Bug Number: IPI-3321. Sending certain sequences to playback is causing black on air. This issue occurs when two partial Ingest clips from the same source (Different locations within the source) are available to the Editor, and then depending which of the two are used, will cause black. Even though there is only one clip on the timeline, when the Editor does a “Reveal file”, it reveals BOTH of the media files (we are doing video only, audio not involved). This appears to be an AAF issue as both clips are in the AAF even though only one is in the sequence.
Workaround: Remove one of the clips from Avid NEXIS/ Interplay and clear bin memory in the Editor.
when you do a “Reveal file” you will only sees the one available clip now, and can now properly send the video, that was black previously, to playback.
Bug Number: IPI-3317. Sending a DNX sequence to playback when there are no audio tracks is failing with [Build MXF Header: AvGenericFTP_MXF::DNxHDEncode::SetPictureInformation()-Composition information failure]. This problem does not exist for AVCI or DV media.
Workaround: Add an empty audio track to fix the problem.
Limitations and Defects Found in Earlier Versions Bug Number: IPI-3303. Large, complex sequences that are sent to playback via EVS, fail on the connect to playback service with the error message: Failed to connect to the playback service.
This timeout occurs after a 3 second window, which may not be enough time to process such a large AAF file.
Bug Number: CCUX-5013. When performing a Send-To-Playback, with AAFs provided via Transfer Manager, result in the OP-1a file (like the .transfer AAF) shows as “VC-3” in metadata dependent on audio mixdown.
Bug Number: IPI-3136. Sending to playback AVCI media that is created with MediaCentral Ingest cannot be moved with Transfer Engine. There are three different TM errors that can occur depending on whether audio is present or has been modified:
Error: SessionQ:GetStatus-Interprocess Exception
- Error: GFTP DHM AVCI: Timed out waiting for frame(1,0)
- Error: GFTP DHM AVCI: class MXF::SDK:Exceptions:InvalidFormat
- Bug Number: IPI-3132. Negative actions on the FTP Server that you are transferring to will not fail out the
job with Transfer Engine 2021.3.
Bug Number: IPI-2790. Capture server clips fail to perform a Workgroup transfer unless checked out and relinked by the editor first.
Workaround: Do the following:
1. Check out the Capture server clip to Media Composer.
2. Force a Dynamic Relink to your resolution of choice. This becomes “Current resolution” in Access.
Transfer of the Capture server clips succeeds for that resolution.
> **Note:** The transfer of Device clips works as expected, regardless of the above information.
Bug Number: IPI-2731. When using the PWT option with Send to Playback, you are unknowingly limited to how long a job can be paused. If your job is paused for longer that the FTP timeout configured on the FTP Server, then the following scenario will occur. The job that was paused will stay in “Running”, but will slow down dramatically and appear to be on the way to finish. However, at 99% it will finally fail.
For example, although using the PWT option when performing a STP will get your job to the head of the line, you need to be aware of a potential pitfall. The job that gets “paused” is subject to timeout values set by the FTP Server, to be specific, the “connection timeout”. This result could happen if PWT is used constantly, or with long jobs. For more detail, assume this scenario:
You are set for two Playback Transfers in TM, where:
- Two, one hour shows are transferring.
- Two, two hour shows with PWT are started.
The running jobs are both paused, and the two PWT jobs start. If the two PWT jobs take longer to transfer than what the FTP Servers connection timeout is set to, the original Transfers will timeout Limitations and Defects Found in Earlier Versions and fail. The connection timeout value needs to be at least 15 minutes (and possibly longer), depending or your transfer speeds and media type. This value may need to be set higher depending on your individual workflow.
Transcode Bug Number: IPI-3364. MediaCentral Transcode does not support UME linking.
Bug Number: IPI-3255. The Reset State function in MediaCentral Transcode is taking too long to complete.
Bug Number: IPI-3190. MediaCentral Transcode of an IMX30 OMF clip results in a single audio file and nothing else. However, if Transcode is done within the Editor, you get the expected result of video.mxf and 2 audio files. When you perform the MediaCentral Transcode, it looks like nothing is happening, but the audio file is created in the \\Nexis\WS\Transcode folder.
Bug Number: IPI-3102. MediaCentral Transcode does not support the DNxHR SQ and DNxHR HQ resolutions in Production Management v2021.3 and Production Management v2018.11.7.
Bug Number: IPI-3064. Transcoding a masterclip with the Whole or Consolidate operation mode, and with the option “Interplay Checkin folder” configured, causes the masterclip to be updated with the wrong track settings (e.g., V1 only).
Workaround: Remove any value in the “Interplay Checkin Folder”. This setting should not be used with Whole or Consolidate operation modes, as it does not create a new asset, only new media.
Bug Number: IPI-2764. When bringing in 1080i content with logged markers, when transcoding, using MediaCentral Transcode, with a profile set for Crossrate, the markers are preserved, but the Timecode changes from Master (military) to Absolute.
Media Composer does not exhibit this issue and leaves the Timecode as is when cross rate transcoding.
Workaround: Use Media Composer to transcode the content.
STP Encode Bug Number: IPI-2769. STP fails when running an STP job on a sequence containing a Dissolve with a “start /end at cut” positioning.
Interplay Web Services Bug Number: IPI-3307. Sequences from Pro Tools cause the error “Invalid segment” error for the “GetSegmentsFromComposition” command in Web Services logs.
> **Note:** 1080i50 sequences do not exhibit the problem.
Workaround: Re-import the Sequence into Media Composer prior to sending it via Web Services.
Limitations and Defects Found in Earlier Versions