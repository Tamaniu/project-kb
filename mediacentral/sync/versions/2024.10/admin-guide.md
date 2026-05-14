---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2024.10"
release-date: 01/10/2024
doc-type: admin-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Using This Guide Using This Guide This document provides instructions for configuring and using Avid MediaCentral | Sync. Avid recommends that you read all the information in this document before installing or using the corresponding software release.
The following documents are referenced in this guide:
Avid MediaCentral | Cloud UX Installation Guide — As a MediaCentral Cloud UX app, MediaCentral
- Sync is deployed as a standard feature pack. This document describes how to configure and operate
the MediaCentral Sync app.
- Avid Networking Port Usage Guide — A reference document for configuring network ports for firewalls
and other security purposes.
Important: See the following link on the Avid Knowledge Base for the latest updates to this guide and all related documentation:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation Revision History Date Revised Changes Made April 1, 2025 Added notes related to the Target - DB Path in "Adding a Synchronization Task" on page 24.
November 14, 2024 2024.10 Release Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action
> **Note:** A note provides important related information, reminders, recommendations,
and strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
- This symbol indicates a single-step procedure. Multiple arrows in a list indicate
that you perform one of the actions listed.
(Windows), (Windows only), This text indicates that the information applies only to the specified operating (macOS), or (macOS only) system, either Windows or macOS.
Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables.
Variables are often enclosed in angled brackets: < >.
Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse action Press and hold the first key while you press the last key or perform the mouse action. For example, Command+Option+C or Ctrl+drag.
Using This Guide If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view these online versions, select ReadMe from the Help menu, or visit the Knowledge Base at https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation.
3. Check the documentation that came with your Avid application or your hardware for maintenance or
hardware-related issues.
4. Visit the online Avid Knowledge Base. Online services are available 24 hours per day, 7 days per week.
Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visithttps://www.avid.com/learn-and-support and follow the Training links, or call Avid Sales at 800-949- AVID (800-949-2843).
1 MediaCentral Sync Overview 1 MediaCentral Sync Overview Avid MediaCentral Sync enables system administrators to synchronize MediaCentral Production Management metadata and assets stored on Avid NEXIS with one or more similarly configured Production Management systems. Administrators use the MediaCentral Sync app in each workgroup to create profiles that define the parameters of each synchronization task. Profiles can be configured to run continuously, or at scheduled intervals — eliminating the need for manual intervention. In the event that you want to alter a profile or job, an intuitive user interface allows you to start, stop, reorder, and monitor the synchronization tasks as necessary.
The following illustration shows an example of three interconnected MediaCentral Cloud UX workgroups.
The physical location of these workgroups is irreverent. They might be co-located in the same building, they might be in remote cities or countries, or they might include a mix of on-premises (“on-prem”) and qualified virtual cloud deployments — such as Microsoft Azure.
> **Note:** Avid does not support connecting multiple Production Management modules to the same local
MediaCentral Cloud UX system in this version of MediaCentral Sync. All workgroups must be connected through a Multi-Site environment. For more information on Multi-Site, see “Enabling a Multi- Site Configuration” in the Avid MediaCentral | Cloud UX Installation Guide.
MediaCentral Sync is designed as a backup or disaster recovery solution. Avid does not expect users to directly use or edit material that is sent to the Sync destination. Additionally, administrators must not create bi-directional synchronization tasks between the source and destination. Such a configuration is not supported.
All communication between sites is realized through a secure HTTPS protocol. The nature of this connection allows assets to be securely transmitted over the public internet to potentially geographically disperse locations. MediaCentral Sync requires the administrator to configure access and network firewall 1 MediaCentral Sync Overview connectivity rules so that only an authenticated, dedicated, and authorized (service) user can transfer metadata and media files between sites, and only desired connections from MediaCentral Sync services can be established over public or outside LAN networks.
The avid-sync-controller service on each source system coordinates the synchronization process and sends commands to a remote (target) system. Metadata and media files are transferred by the XFER services that are deployed in the MediaCentral Cloud UX systems on both sites (source and target).
You must deploy MediaCentral Sync as a feature pack on each of the MediaCentral Cloud UX systems using the standard MediaCentral Cloud UX Feature Pack ISO, and each system must be licensed for the MediaCentral Sync app.
Additional Information Edit While Capture Assets Products such as Avid FastServe Ingest have the ability to check partial assets into the Production Management and shared storage systems. When MediaCentral Sync encounters these EWC or “in- progress” assets, the metadata and the available media are copied to the destination system. During the next synchronization cycle, the sync job transfers any updates to the asset to the destination. This process continues until the final asset metadata and media are synchronized to the destination.
MediaCentral Sync is optimized to minimize network data consumption and it is not designed to replicate a real-time experience for growing files. Files are transferred outside of an MXF framework and Avid does not guarantee that a receiving device can process partially transferred files.
MediaCentral Capture Assets When working with MediaCentral Capture, Avid recommends that you synchronize both the Device Clips and the Master Clips that are created as a result of a recording. When these assets arrive at the destination, they maintain their relationship — mirroring the original assets.
Production Management Database Replication MediaCentral Sync provides intelligent monitoring of the MediaCentral Production Management database.
The workflow includes the following features and options:
Continuous Monitoring
- The Sync app monitors your Production Management modules to ensure that newly created assets
are found and replicated during the next synchronization interval. This is true even if the source location has already been synchronized in a previous cycle.
- Metadata Awareness
If a user alters the metadata for an asset on the source system, the Sync app recognizes the change and resynchronizes the asset metadata during the next sync interval.
If an asset has already been synchronized (media exists in both source and destination systems), only the metadata is updated. The Sync app does not attempt to replicate the source media again.
Move Operations
- If a user moves assets between folders in the source Production Management system, the changes
are replicated on the destination system.
Asset Deletion
- Administrators can configure jobs to automatically delete assets on the target system if they are
deleted on the source, or the admin can elect to disable this feature and keep deletion control with the individuals that are assigned to media management.
- Synchronized MOB IDs
1 MediaCentral Sync Overview Media Object IDs are globally unique identifiers that are included in the asset metadata. When MediaCentral Sync replicates an asset, the resulting file that is created on the destination system includes an identical MOB ID as the original — making it a true duplicate copy.
> **Note:** Standard Production Management rules apply for assets protected by reservations and user
permissions. If the user specified in the Sync app configuration does not have the required read/write/delete access to the assets, the operation could fail.
Managing Assets on the Target System Following a successful MediaCentral Sync job, Avid recommends that you use Interplay Access to "Update Status from Media Indexer" on any synchronized assets before taking any actions to manage those assets - such as deletion workflows. Completing this step ensures that the metadata and file path information is up to date on the target system.
2 Deploying MediaCentral Sync 2 Deploying MediaCentral Sync The following main topics are described in this chapter:
- "Installation and Configuration Notes" below
Installation and Configuration Notes User Account Requirements During the Sync app configuration process, you are required to specify one or more user accounts. The following table describes each of these accounts.
> **Note:** MediaCentral Sync requires that your MediaCentral Cloud UX system uses Microsoft Active Directory
as an authentication provider.
Account Name Description and Requirements Production This user is defined during the Production Management Engine installation process. It Management requires access to all of the Avid NEXIS workspaces that are connected to its local Service Execution Production Management Engine.
User Required as part of the process for:
"Installing the MC|PM Exchange Service" on page 13.
- “Configuring the MediaCentral Sync Controller”, as documented in the Avid
- MediaCentral | Cloud UX Installation Guide.
You are not required to create the same Service Execution User for each site.
Production The following two processes require that you define a Production Management user that has Management Read/Write access (at minimum) to the entire database:
User The Avid MediaCentral | Cloud UX Installation Guide describes the steps for
- “Connecting to MediaCentral Production Management”.
- "Installing the MC|PM Exchange Service" on page 13.
You can use the same user account for both processes. You are not required to create the same user account on both the local and remote Production Management systems.
Avid best practices recommend that you create and use a dedicated user in the Production Management database that has the “Internal Authentication” option enabled in the “User Management” section of the Interplay Administrator. To avoid any possible conflicts with Active Directory, this user should not share the same name as any domain user. Although there is no technical limitation with enabling multiple authentication types for a single user, Avid best practices recommend that you limit this user to “Internal Authentication” only.
Avid XFER Service This user account has the following requirements:
User
- Used during the process of “Configuring Media Services XFER Access Rules” in the
Avid MediaCentral | Cloud UX Installation Guide.
- The “Configuring Media Services XFER Access Rules” process allows you to configure
individual users or groups. If you define one or more groups, the Default Service user 2 Deploying MediaCentral Sync Account Name Description and Requirements (see below) must be included in one of those groups.
- The account must be created as a domain user in Microsoft Active directory.
Review the following options to create or assign the required user account:
If the Default Service user that you define when completing the process of
- “Configuring an Authentication Provider” in the Avid MediaCentral | Cloud UX
Installation Guide meets these requirements, you can use that account as the Avid XFER user. In this case, you are not required to alter the settings in the Service Accounts section of the Configuration Settings app (see below).
If the Default Service user does not meet these requirements, you can assign a
- different Active Directory user that does meet the requirements to the Avid Sync
Controller service, the Avid XFer service, and the Token Resolver service in the Service Accounts section of the Configuration Settings app. The following illustration shows an example of the Sync Controller and XFer services.
Avid NEXIS User The General settings are of the MediaCentral Sync app requires you to enter the name of an Avid NEXIS user that has read / write access to all workspaces involved in the MediaCentral Sync workflow.
Given that the Avid XFER User has similar requirements, best practice is to assign the same user account for both processes.
Shared Storage Notes The Avid NEXIS Client installed on the Production Management Engine requires access to the local Avid shared storage only. You are not required to connect the Production Engine to the shared storage systems of the other workgroups. In other words, Production Engine-A needs access to Avid NEXIS-A — it does not need to connect or mount workspaces for the Avid NEXIS system connected to Production Engine-B.
2 Deploying MediaCentral Sync Software Compatibility Refer to the Avid MediaCentral Compatibility Matrix on the Avid Knowledge Base to verify that you are running compatible versions of MediaCentral Cloud UX, MediaCentral Production Management, and Avid NEXIS.
The mixed software versions described in the “Upgrade Options for Multi-Site Environments” section of the Avid MediaCentral | Cloud UX ReadMe do not apply to the MediaCentral Sync workflow.
MediaCentral Sync Deployment Checklist Before you can configure any synchronization tasks, you must install the MediaCentral Sync feature pack on your MediaCentral Cloud UX systems, and complete a number of configuration tasks. You must complete the following tasks to configure your systems for use with MediaCentral Sync.
Complete the standard MediaCentral Cloud UX installation process. This includes processes such as
- configuring your: authentication provider, Avid NEXIS storage connection, Production Management
connection, Multi-Site configuration, and more.
- Prior to installing the feature packs, complete the following processes:
  - Configuring the MediaCentral Sync Controller
  - Configuring the Avid XFER and XFORM Services
This includes “Configuring an Avid NEXIS Workspace” and “Configuring Media Services XFER Access Rules”.
For complete details on these processes, see the Avid MediaCentral | Cloud UX Installation Guide.
- Run the Feature Pack deployment script, selecting both the Media Services feature pack and the
MediaCentral Sync feature pack when prompted to do so.
Use the License app to license the MediaCentral Sync feature pack on each MediaCentral Cloud UX
- system in your multi-site environment that intends to participate in the workflow.
If for example your multi-site configuration includes four sites and you only want to enable the Sync workflow on three of those sites, you are not required to install or license the feature pack on the fourth MediaCentral Cloud UX system.
- (if necessary) Assign a service user to the Avid Sync Controller service and the Avid XFER service in
the Configuration Settings app > Services > Service Accounts.
For more information, see "User Account Requirements" on page 11.
You must install the Production Management Exchange Service on all Production Management
- Engines that will participate in the workflow. For more information, see "Installing the MC|PM
Exchange Service" below.
Installing the MC|PM Exchange Service MediaCentral Sync requires you to install a new service on each of the Production Management Engines that will participate in the workflow. The PM Exchange Service works with MediaCentral Sync to help manage the synchronization process. This service is also responsible for reporting status updates which can be viewed in either the Sync app’s Overview page or the Process app.
To avoid licensing and configuration issues later in the process, Avid recommends that you do not install the Exchange Service on any Production Engine that you do not intend to use with MediaCentral Sync. For additional details on unlicensed systems, see "Viewing the Production Management Modules" on page 22.
Avid does not support installing the Exchange Service on a Production Management Archive system.
2 Deploying MediaCentral Sync
> **Note:** If you ever change the workgroup or domain assignment of your Production Management Engine, you
must restart the Avid Xfer service pod on the source and all target MediaCentral Cloud UX systems.
Working with Production Management Clusters If you are running your Production Engines in a cluster configuration, you must complete the following process on both cluster nodes. You can start the installation on either the online node, or the standby node.
The installation order is not important.
When installed in a cluster, the service is added as a cluster monitored resource. Much like other cluster- aware services, the Exchange Service is only active on the node that owns the cluster. In the event of a cluster failover the Exchange Service on the failover node becomes active and continues to process sync tasks Detailing the Export and Import Process Every MediaCentral Sync job consists of three phases: export, import, and synchronization. During the export phase, the source Production Management Engine creates a snapshot of the metadata associated with the sync job and it writes this data to a share on Production Engine.
Each job creates a new sub-folder in this share that contains a full set of metadata that will be transferred to the destination Production Management system. This process of creating a binary snapshot of the source metadata is referred to as an export. The destination Production Engine reads this data and performs the import.
The following process requires you to define an export location and an export data retention time frame (time until the temporary files are deleted).
To install the Production Management Exchange Service:
1. Prior to installing the MC|PM Exchange Service, you must install the Production Management Engine
software on your server(s). If the Exchange Service installer determines that the Engine is not installed, the installation process is canceled.
2. Copy and uncompress the Exchange Service installer (MCSyncExchangeSvc_<ver>.zip) to a temporary
location on your Production Management Engine — such as the Windows desktop.
You can download this software package from the Avid Download Center.
> **Note:** If you have not already created an Avid.com user account, you must do so now. This Master
Account enables you to sync your Avid Video Download and Avid Video Community accounts as well as gain access to the Avid Support Center.
2 Deploying MediaCentral Sync
3. Right-click on the setup.cmd file and select Run As Administrator.
If Windows asks if you want to allow this app to make changes to your device, click Yes.
The installer checks your Engine for multiple prerequisites. After your system meets the requirements, an installer command window appears, followed by the Exchange Service installer Welcome page.
4. Click Next.
5. Accept the license agreement in the following screen and click Next.
6. Accept the default installation location and click Next.
The Server Execution User window appears.
7. Specify the same Service Execution user that you defined when installing the Production
Management Engine and click Next.
8. Enter and confirm the password for the Execution user and click Next.
The installer validates the Execution user credentials. If the installer is not able to verify the password, you are asked to re-enter the information. If necessary, you can click the Back button to verify your user name.
9. Enter the name of a Production Management user that has Read/Write/Delete access at minimum to
the Production database and click Next.
10. Enter and confirm the password for this user account and click Next.
The Network Share configuration window appears.
11. Accept the default for the Import-Export Folder share and click Next.
The Exchange Service installer creates a network share on your Production Engine that is used to store exported metadata. The default name for this share is DbExport$.
2 Deploying MediaCentral Sync Avid recommends that you use the default name. If you must enter a custom name, this value must end with a $ symbol.
12. Accept the default for the Import-Export Folder path and click Next.
The default path and name of this folder is D:\DbExport. If you entered a custom name for the share in the previous step, you might want to assign the same name to the folder.
13. Specify the FQDN (fully qualified domain name) of the MediaCentral Cloud UX server or cluster and
click Next.
For example: wavd-mcux.wavd.com
14. At the server port window, accept the default value of 9900 and click Next.
The Disk Space window appears.
15. In the Disk Space window, specify the disk space threshold in megabytes (MB) and click Next.
When synchronizing Production Management assets, the Sync app requires access to a network share that can be used as temporary storage to transfer assets. If free space on the drive hosting the share falls below this threshold, export operation requests are rejected so that “normal” Engine operations are not impacted.
16. Specify a backoff time (in seconds). The default value of 300 seconds is equivalent to 5 minutes.
To ensure that the Production Management system is not over-tasked, the Sync app adds a “cool down” time between each continuous job. This value determines the length of that time period. When a job completes, the Process app displays an “export pending for <x> min” message to indicate the amount of time remaining until the start of the next job. For more information, see "The Process App" on page 34.
Avid does not recommend configuring this value for a period shorter than 5 minutes. Doing so might introduce a performance impact on the Production Management systems — especially on the target system.
17. Click Next.
The Export Data Retention window appears.
2 Deploying MediaCentral Sync
18. Configure the settings in the Export Data Retention window to specify the retention time for exported
data. A larger duration enables the system to recover from longer outages, but requires more disk space.
Enter a value in number of days, hours, or minutes. Do not enter more than one value. Avid recommends specifying a value of 1 day.
19. Click Next.
An installation summary window appears.
20. Review the summary and do one of the following:
- Click the Next button to start the software installation and configuration process.
- Click the Back button to adjust any of your configuration settings.
- Click the Cancel button to abort the installation.
21. (single-server installations only) Use Windows Services to start the Exchange Service.
Avid registers the Exchange Service with startup type Auto and an initial status of Stopped. The service is dependent on both the Avid_Workgroup_Preview_Server and Avid Workgroup TCP COM Bridge services. After a reboot, the exchange service is started automatically — as soon as both dependent services have started.
> **Note:** Following the installation, you can find the configuration settings in the Windows Registry at: HKEY_
LOCAL_MACHINE\SOFTWARE\Avid Technology\Workgroup\Avid Workgroup Exchange Service. If you use the registry to alter any settings, you must manually restart the service following the change.
To uninstall the Production Management Exchange Service:
1. Right-click on Windows PowerShell and select Run As Administrator.
If you are running a cluster configuration, start with the offline node.
2. In the PowerShell window, navigate to the location of the Exchange Service uninstall script:
cd "C:\Program Files\Avid\Avid Workgroup Exchange Service\Uninstall" UninstallExchSrv.ps1
3. Type to uninstall the Exchange Service.
4. If you are running a cluster configuration, repeat the above steps on the online node.
3 Configuring MediaCentral Sync 3 Configuring MediaCentral Sync The following main topics are described in this chapter:
- "Sync App Overview" below
Sync App Overview The MediaCentral Sync app provides you with controls to configure synchronization profiles and to monitor the progress of synchronization tasks. The following illustration shows the Sync Tasks — Overview area of the app.
The MediaCentral Sync app is divided into the following areas.
1 Sidebar The Sidebar gives you access to the different areas of the app in a familiar directory tree structure.
General
- This section allows you to configure settings that are common to all sync tasks.
For more information, see "Configuring MediaCentral Sync General Settings" on page 20.
- Production Management Systems
This section allows you to view the status of the connected MediaCentral Production Management modules, and to create Groups that link those modules together.
For more information, see "Viewing the Production Management Modules" on page 22.
3 Configuring MediaCentral Sync Sync Groups — Configuration
- This section allows you to configure groups of Production Management
modules that you will later associate with a sync task.
For more information, see "Configuring Synchronization Groups" on page 22.
- Sync Tasks — Configuration
This section allows you to configure jobs that synchronize Production Management assets between modules.
For more information, see "Configuring Synchronization Tasks" on page 24.
- Sync Tasks — Overview
The Overview page allows you to monitor the status of the sync tasks and manually add tasks to the Sync Queue.
For more information, see "Monitoring Sync Tasks" on page 30.
- Sync Tasks — Queues
This section displays the upcoming sync tasks and allows you to re-prioritize tasks as needed.
For more information, see "Reordering Jobs" on page 34.
2 Main app After selecting an option in the Sidebar, this area of the user interface allows you to panel configure settings or monitor sync tasks.
Filtering and Sorting Some areas of the user interface allow you to filter or sort the display. These controls allow you to more easily identify and locate the information that you are most interested in viewing. The following illustration and table highlight the filter and sort options in the user interface.
1 Filter This option works almost like a search in that you can enter text in the field and the system displays only those values that match your filter.
2 Sort This option allows you to reorder the selected column based on the column header.
Columns are organized in alphabetical order (0-9, Aa-Zz).
The following processes use the Sync Tasks Configuration panel and the Sync Tasks Overview panel as examples, but the concepts for filtering and sorting can be applied to multiple areas of the Sync app user interface.
3 Configuring MediaCentral Sync To filter the Results list:
1. After signing in, click the Sync Tasks - Configuration option in the app’s sidebar.
2. Use the Filter field in the Configuration panel to enter the full or partial name of a task field.
For example, you could enter the partial name of a task or you could enter the name of a target Production Management system.
As you enter text, the results list is updated with the available results.
3. (optional) After you have filtered the list, you can clear the filter by either deleting the text or clicking
the X button to the right of the filter.
To sort the Results list:
1. After signing in, click the Sync Tasks - Overview option in the app’s sidebar.
2. Click on a column header to reorder the results list.
An up arrow appears to the right of the column name to indicate that this column is used to sort the results in ascending order.
3. (optional) When you click on a column header, the column is sorted in ascending order. If you need to
sort the list in descending order, simply click on the column header again to reverse the order of the list.
A down arrow appears to the right of the column name to indicate that this column is used to sort the results in descending order.
Configuring MediaCentral Sync General Settings The General settings allow you to configure settings that are common to all tasks. The following topics are included in this section:
- "Configuring Email Alerts" below
> **Note:** You must configure the General > Avid NEXIS settings prior to configuring any sync tasks as the Avid
NEXIS user is required to access the shared storage workspaces.
Configuring Email Alerts MediaCentral Sync can alert an administrator or a group of administrators to the status of any failed synchronization jobs. This can be a useful troubleshooting tool in the event of a failed job where an error could be an indicator of a larger problem — such as a communication breakdown between MediaCentral Sync and one of the configured MediaCentral Production Management workgroups.
Emails sent from the Sync app start with a (MCSync) identifier in the email subject title to allow you to sort or more easily configure rules in your email system to organize the email traffic.
This is an optional, but recommended configuration step.
> **Note:** If you wish to receive notifications regarding your shared storage — including notifications about low
disk space, see “Configuring the Notification Service” in the Avid NEXIS Administration Guide.
3 Configuring MediaCentral Sync To configure email alerts:
1. After signing in, click the General link in the app sidebar and expand the SMTP section of the panel on
the right.
2. Configure the following fields:
  - Host: This is the host name or IP address of your SMTP server.
  - Port: Enter your SMTP server port (typically 25 for unencrypted transfers).
  - Username: Enter the name of a user that can be used to authenticate against your SMTP
server. This value is optional as not all SMTP servers require authentication.
  - Password: If you entered a user name, enter the associated password for that user.
  - Mail from: Enter the email address of an account that can be used to send the Sync app alert
emails.
Example: sync_admin@wavd.com
  - Mail to: Enter an email address that will receive the alert emails.
If you wish to add more than one recipient of the email alerts, click the Add button to create a new “mail to” field and enter another email address.
Alternatively, you can remove email addresses by clicking the Delete button to the right of any address.
3. Click the Save button at the bottom of the panel to save your settings.
If you do not want to save your changes, you can click either the Revert button to the right of the section header, or click the Cancel button at the bottom of the panel.
4. (optional) After you save your changes, you can click the Test Configuration button to verify that the
Sync app can connect to your SMTP server.
If the test is successful, you should receive an email at each of the addresses defined in the General settings. If the system cannot contact your SMTP server, the app provides feedback regarding the source of the problem.
> **Note:** If the Sync app believes that the test was successful, the Test button deactivates itself. If
needed, you can reactive the button by refreshing your page.
3 Configuring MediaCentral Sync Configuring the Avid Shared Storage User Account When working with MediaCentral Sync, you must define an Avid NEXIS user that has read/write access to all workspaces involved in the MediaCentral Sync workflow.
To configure the Avid shared storage user:
1. Click the General link in the app sidebar and expand the Avid NEXIS section of the panel on the right.
2. Configure the following fields:
  - Username: Enter the name of your Avid shared storage user account that can be used by
MediaCentral Sync to access all required workspaces.
  - Password: Enter the password for this account.
3. Click the Save button at the bottom of the panel to save your settings.
If you do not want to save your changes, you can click either the Revert button to the right of the section header or click the Cancel button at the bottom of the panel.
Viewing the Production Management Modules The Production Management Systems area displays the MediaCentral Production Management modules that are available to the Sync app. The following illustration shows three Production Management modules.
After you install the Production Management Exchange Service on your Production Management Engine, the service communicates with MediaCentral Sync. When that connection is made, the Sync app adds the Production system to this list.
The Status column indicates if the Production Management system is online or offline. A system might appear offline if it is powered-off, or disconnected from the network. Offline systems also appear offline in the Multi-Site Settings app.
If for some reason you have not yet configured your Production Management systems, this window displays the following message: “There are currently no Production Management Systems connected. Please refer to the MediaCentral Sync documentation for information about how to add a new system.” Configuring Synchronization Groups Sync Groups allow you to organize Production Management modules for easier management of your synchronization tasks. Each group must consist of exactly two Production Management modules (source and destination), but you can assign the same module to more than one group if desired. When creating a synchronization task, you must associate it with a group — which then defines the modules that will participate in that task.
3 Configuring MediaCentral Sync Creating a Sync Group Complete the following process to create one or more Sync Groups.
To create a new sync group:
1. Click the Sync Groups - Configuration link in the app sidebar.
A list of configured Sync groups appears to the right of the sidebar. If this is your first time creating a sync group, the list appears empty.
2. In the panel on the right, click the Add Group button to the right of the Source / Target PM Name
column.
A New Profile appears in the panel.
3. Enter a name for this group and then click the Save button that appears in the upper-right corner of
the group header.
The group appears in the panel. If you have more than one group, the new group is added to the list in alphabetical order.
4. Click the field to the right of the first Pm System field and select a Production Management modules
from the list of available systems.
5. Repeat the process to add a second Production Management module to the group.
At least one of the two systems must be your locally connected module. You cannot create a group that consists of two remote Production Management modules. Changes to Sync Groups are saved automatically.
You can change the members of a group at any time, but doing so deletes any sync tasks that are already associated with that group — without any additional warning about the deletion of the existing tasks.
Deleting a Sync Group You can delete a sync groups from the MediaCentral Sync app, but doing so deletes any sync tasks that are already associated with that group.
Also note that the system does not prompt you for a confirmation. Deletes are immediate and the action is irreversible.
To delete a sync group:
- Click the delete button in the far right of the group header.
The group is deleted from the app and any tasks that are associated with this group are similarly deleted.
If the system deletes a sync task that is already in process, the Sync app does not stop the active task. You can either allow the task to complete or you can use the Process app to stop the task.
3 Configuring MediaCentral Sync Configuring Synchronization Tasks This ares of the MediaCentral Sync app allows you to configure one or more sync tasks. This is where you define exactly which directories in the Production Management database are synchronized, and to where.
Whenever you configure a sync task, you must configure settings related to both the source system (where assets will be copied from) and the target system (where assets will be copied to). All sync tasks are uni- directional — there is always one source and one destination. The Sync app does not allow you to specify the same Production Management module as both a source and a target.
The following topics are included in this section:
"Adding a Synchronization Task" below
- Adding a Synchronization Task
Complete the following process to create one or more Sync Tasks.
As a reminder, you must not create a synchronization loop between the source and destination. Do not create a task on both the source and destination systems that would synchronize the same workspaces in both directions. Such a configuration is not supported.
3 Configuring MediaCentral Sync To add a synchronization task:
1. Click the Sync Tasks - Configuration link in the app sidebar.
A list of configured Sync tasks appears to the right of the sidebar. If this is your first time creating a sync task, the list appears empty.
2. In the panel on the right, click the Add Task button to the right of the Source / Target PM Name
column.
A list of configuration fields appears in the panel.
3. Configure the following fields to create your sync task:
  - Group: You must associate a group with each sync task. This setting acts as a filter that limits
the list of Production Management modules in the Source and Target settings below.
If your system is configured for multiple groups and you know the name of the group that you want to use, you can type the name of the group to filter and shorten the list.
  - Enabled: If you select this check box, the sync task is active. If the Enabled option is not
selected, the task is disabled. This time saving feature allows administrators to retain, but disable sync tasks — avoiding the need to delete and recreate tasks.
  - Task Name: Enter a custom name for the sync task.
The Sync Tasks list that appears in the Configuration section of the app is sorted by the Task Name field. There are no special character restrictions on the Task Name. However, Avid recommends that you keep the name somewhat short for display purposes.
  - Source - PM Name: Select your local Production Management system.
The app displays the Production Management modules regardless of their current status (online or offline). You cannot select a remote module as a source.
If you do not see your desired Production Management module in either the Source or Target settings, you might need to select a different group or assign the module to the group. For more information, see "Configuring Synchronization Groups" on page 22.
  - Source - DB Path: Select a directory path in the Production Management database that
includes the assets that you want to copy to the target system.
When specifying a directory path, Avid recommends selecting more specific (deeper paths) whenever possible as this results in best system performance.
Avid strongly discourages administrators from selecting the database root path as the Source DB Path.
  - Target - PM Name: Select a target Production Management system from the menu. As with the
Source setting, this menu is populated with systems associated with the selected Group.
You cannot configure the same target Production Management system that you specified in the source field.
  - Target - DB Path: Select a path in the target Production Management database where assets
will be copied. When selecting a target path, note the following:
  - Do not select the root level on the target system. If you do, the sync task will fail.
  - If you select a folder at the root level of the database such as Projects, Catalogs, or
other, the task will creates a new subfolder under the root folder. For example if you attempt to synchronize WAVD-A1/Projects to WAVD-B2/Projects, the task creates an additional Projects folder under the root-level Projects directory (WAVD- B2/Projects/Projects). This behavior is intentional and is meant to protect you from accidental deletes of a top-level folder.
3 Configuring MediaCentral Sync
  - Target - Workspace: Select an Avid shared storage workspace from the menu. Assets from the
source Production system will be copied to this location.
The Sync app creates this list of workspaces by polling the Production Management Engine.
The menu displays the Avid shared storage systems that are connected directly to Production Management. Additionally, the menu displays only workspaces that are granted write permissions for the user specified in the General settings.
> **Note:** When selecting a target workspace, you must make sure that the workspace has enough
free space to accommodate the assets from the source system.
  - Metadata Only
If you enable this option, the task will synchronize only the metadata contained in the selected folder and not the media.
4. Configure the deletion options.
These options can assist system administrators or media managers with the process of managing the synchronized assets.
  - Include Media Deletion
  - Include Metadata Deletion
> **Note:** If you enable the Metadata Deletion check box, this box is enabled automatically and cannot be
deselected. This assures that when you delete metadata, the associated media is also deleted.
The following table helps to describe the effect of each setting on the deletion process. The Results column describes what happens if you have only one copy of the asset in the synced folder on the target database. If you have the same asset in multiple locations in your target database, your results will vary.
Sync Task Administrator Result on the Target System Setting Action in Access Include Media I delete media The media is deleted from Avid NEXIS (unless reserved). The only only on my source metadata goes offline in the target folder.
system.
Include Media I delete metadata No change. Media and metadata stay as they are.
only only on my source system.
Include Media I delete both No change. Media and metadata stay as they are.
only media and When Sync exports the asset list from the source database, the metadata on my deleted asset is not included in that list. When the source system source system.
imports the list, it does nothing with the asset because it is not included in that list. The target takes no action because it does not know about the change.
Include Media I delete media The media is deleted (unless reserved). The metadata goes and Metadata only on my source offline and stays where it is.
system.
Include Media I delete metadata The metadata is deleted. The effect on the media on your Avid and Metadata only on my source NEXIS storage depends on the settings that you have configured system. in the Interplay Administrator.
Include Media I delete both The metadata is deleted. The effect on the media on your Avid 3 Configuring MediaCentral Sync Sync Task Administrator Result on the Target System Setting Action in Access and Metadata media and NEXIS storage depends on the settings that you have configured metadata on my in the Interplay Administrator.
source system.
System administrators must have a complete understanding the Production Management deletion workflows. This knowledge ensures that you understand what happens when you enable the MediaCentral Sync deletion settings.
For more information, see "Setting Options for Deletion" in the Avid MediaCentral | Production Management Engine Administration Guide, "Developing a Delete Strategy" in the Avid MediaCentral | Production Management Best Practices Guide, and other related Production Management documentation.
5. Configure the task’s Schedule Type. The following options are available:
- Fixed Period
If you select the Fixed Period option, you must also configure a sync interval. This value determines how often the sync task is executed. For instance if you specify one hour, the sync task is run immediately after saving the task and then again every hour from the time when the task was finished.
You can click the increase / decrease arrows to adjust the hours and minutes or you can manually type your desired value into the fields.
While you can configure the sync interval for a value as little as 1 minute, Avid recommends that you do not configure all of your sync tasks for such a short time frame. To avoid oversubscribing the Production Management Engines, you should consider configuring longer intervals — 1, 12, or even 24 hours — depending on the contents of the directory and the importance of the synchronization task.
- Fixed Schedule
This option allows you to select a specific date and time when the Sync Task is executed. Times are displayed as a 24 hour clock (military time). The Hour menu’s asterisk (*) option allows you to configure the task to execute every hour, on the hour.
The following illustration shows a task that will be executed at 6pm (18:00 hours) on Sundays and Thursdays.
The times displayed in the Fixed Schedule area are associated with your workstation’s local time zone. If your client workstation is in a different time zone than your MediaCentral Sync server, you can use the Time Zone menu to define the timezone of the remote server to avoid 3 Configuring MediaCentral Sync doing manual calculations for the different zones. If for example you are in Los Angeles and the MediaCentral Cloud UX system is in New York, you would configure the Time Zone menu for Americas/New_York and the task illustrated above would be executed at 6pm, local New York time.
If desired, you can click the Add Time Row button (+) to configure additional execution times.
The following illustration shows that the task will now be executed at 6pm and at midnight, every Sunday and Thursday.
After you add a second time frame, delete options appear to the right of each time frame. You can click the delete button to remove scheduled times from the task.
- Continuous
Tasks configured for this Schedule Type operate on a continuous rotating schedule. If you configure multiple tasks with this option enabled, the jobs form a queue where tasks are executed in order. When the final continuous task is complete, the jobs start over again from the top of the order. For more information about the job queue, see "Reordering Jobs" on page 34.
Selecting this option disables the interval settings associated with the other schedule types.
6. (optional) Repeat the steps above to create additional profiles.
7. Do one of the following to save your profile:
- Click the Save button to the right of a single profile.
The system prompts you to confirm that you want to accept the changes.
Click Yes to save the profile or No to return to the profile and make additional changes.
- Click the Save button at the bottom of the list of profiles.
If you have created or edited multiple profiles, this button saves changes to all profiles. This button does not prompt you to confirm the action.
After you Save your profile(s), the Sync Tasks are queued and executed according to your task parameters. Additionally, the act of saving a task converts some fields such as Group, Source, and Target to a read-only status. If you need to alter these fields, you must delete the existing task and create a new one.
If you do not want to save your changes, you can click the Cancel button at the bottom of the page to abort the changes that you made to the sync tasks.
3 Configuring MediaCentral Sync Deleting a Synchronization Task To delete a synchronization task:
1. Click the Sync Tasks - Configuration link in the app sidebar.
A list of configured sync tasks appears to the right of the sidebar.
2. Click the Delete button to the right of any task to remove it from the system configuration.
The system prompts you to confirm that you want to delete the task. Click OK to confirm the delete.
If you delete a sync task that is currently in process, deleting the task does not stop the sync process.
You can either allow the task to complete or you can use the Process app to stop the task. For more information, see "The Process App" on page 34.
Modifying a Synchronization Task To edit an existing synchronization task:
- If you have already created a task and want to make a change to the configuration settings, you can
alter and save the task at any time. If you need to undo your changes before saving the task, you can click the Revert button that appears to the right of the task to return it to its original state.
If you alter an in-process task, the updated settings are used only after the current task is complete.
4 MediaCentral Sync Administration 4 MediaCentral Sync Administration The following main topics are described in this chapter:
- "Monitoring Sync Tasks" below
Monitoring Sync Tasks The Overview section of the MediaCentral Sync app provides a “snapshot” of all the Sync Tasks that are configured on the local system and their current status.
Divided into Enabled and Disabled panels, the information in the Overview page is organized in a “table” format with each task appearing as a separate row with related information in columns.
Sorted by the Task Name column by default, the following information is available:
4 MediaCentral Sync Administration Task Status (icon): The following table further describes each status icon:
- Icon Task Status Description
In Progress Tasks that are currently running show this status.
Complete The task completed successfully when last run.
Failed The task failed to complete when last run. If you see a failure, you should investigate the issue before the next cycle to avoid continuous failures of this job.
Pending This task has not yet been initiated and is in a “first execution pending” state.
If you place your cursor over any of the Task Status icons, the app displays a tool tip that provides
- more information about the task. If you hover over a failed task, the tool tip provides additional
information as to the reason for the failure.
- Task Name: This is the name of the task as defined during the Sync Task configuration process.
- Group: This is the name of the Sync Group used in this task.
- Source: This column lists the Production Management module and folder path from which assets are
being copied.
Target: This column lists the Production Management module and folder path to which assets are
- being copied.
Last Synchronized: This column details the last date and time that the task was last run. You can use
- the Task Status column to determine if the task was completed successfully or not.
- If the task is ongoing, the Last Synchronized column displays a “Running” status.
- If you have never executed a particular task before, the Last Synchronized column displays an “First
execution pending” status.
The information in the Overview page updates automatically whenever a change is made.
You might also notice that many of the tasks in the Overview panel includes a green button at the far right of each row. This button allows you to execute a task on demand. For more information, see "Manually Triggering a Task" on the next page.
Accessing the Overview Panel Complete the following steps to access the Overview panel.
To access the Overview panel:
1. Sign in to the MediaCentral Sync server.
2. Click on the Sync Tasks - Overview option in the app’s sidebar.
Synchronization Details As noted above, the Task Name column in the Overview page lists all tasks that are configured on the local MediaCentral Cloud UX system. After you have run a particular task, you can click on the task name to obtain more information. When you click on a task, a new window is displayed on top of the Overview page that includes details about the sync task. If you need to obtain information about remote tasks, you can refer to the Process app.
> **Note:** You cannot get additional details on Running (in-progress) tasks.
The following illustration provides an example of the Details page.
4 MediaCentral Sync Administration The top of the Details page provides information about the task, such as the name of the task, the source and target Production databases, the target shared storage workspace, and the last synchronization time.
The Details page also includes the following information:
- Task Status: Each task is associated with an icon that provides the administrator with a quick
pass/fail status. A green icon indicates that the asset has been synchronized successfully and a red icon suggests that there was an issue with the sync task.
Source File: Displays the file path and name of the synchronized asset.
- Size: Displays the file size of the asset.
- State: Provides more information about the status of the individual asset (Completed or Failed).
- Copied At: Displays the time at which the task was executed for the particular asset.
- Message: Provides more information about the state of the asset. If an asset fails to synchronize, you
- can review the message column to obtain more information as to the reason for the failure.
Each of these columns can be resized to show more or less detail. Additionally, you can use the scroll bar on the right-side of the panel to display more results.
tasks, you can either scroll to see the next set of tasks or click the Load All Pages button to load all tasks at once. In this case, you would still need to scroll to see the additional tasks.
You can close the Details panel by clicking on the X in the top-right corner of the window.
Manually Triggering a Task Rather than waiting for a task to start at its defined interval, you can manually start a task through the Overview page. This includes tasks that have been disabled through the task configuration process. The only task that you cannot manually trigger is one that is already in progress.
If you start a disabled task, the task is added to the bottom of the queue order in the Sync Tasks Queue. The Task Status icon updates in the same way as any other task. When the job is complete, the Task Status icon reports the last known state (the green Complete status in most cases), but the task remains disabled.
4 MediaCentral Sync Administration To manually start a task:
1. After signing in, click on the Sync Tasks - Overview link in the app sidebar.
A list of sync tasks appears to the right of the sidebar.
2. Click on the Start button to the right of the task.
The task is executed and the Start button is temporarily replaced with a spinning status icon to indicate that the task is starting. When the task begins, the Task Status column displays a blue In Progress icon.
You can watch the progress of the task in either the Overview window or the Process app. For more information on the Process app, see "The Process App" on the next page.
Working with the Sync Queue The Queues section of the Sync app provides a dashboard that displays the execution order of all sync jobs and the status of all currently active jobs. The jobs list is displayed according to the Queue Order column with the next chronological job appearing as first in the order.
As shown in the following illustration, the sync queue is divided into sections where the header of each section displays the name of the source Production Management system and the names of all active (running) jobs. In this example, the Sync app is connected to three Production modules:
MUN-PM1, MUN-PM2, and MUN-PM3.
You can click on the chevron to the left of any section to expand or collapse the list of jobs for that section.
If you delete or disable a sync task, the job is removed from the sync queue. In this example, the “MUN- PM3” section does not show an associated chevron because that system is not associated with any enabled jobs.
The following table provides additional information about each column.
Column Name Description Unique ID The Sync app assigns an easy to understand identification number to each job to help you identify and refer to the job when speaking with another Sync app user. For example instead of referring to the task name, you can simply say “Please run job number 3 again”.
Each job ID number is unique, regardless of the section in which it is located.
Queue Order This column determines the job execution order (highest to lowest) where job number 1 has the highest priority.
4 MediaCentral Sync Administration Column Name Description Sync Task Displays the name of the task.
Name Group Displays the name of the group associated with this task.
Target Displays the target (destination) Production Management module.
Scheduled Displays the scheduled time for the task (if a schedule is defined in the task configuration).
The following illustration shows the Sync Queue with two continuous jobs and one scheduled job under MUN-PM1. You know that job number 3 is a scheduled job because it is not associated with a Queue Order number and the Scheduled column lists the job’s execution time.
When a scheduled task reaches its execution time, the job is moved into the queue and it is assigned a Queue Order number. The Sync app completes the currently active job and then executes the scheduled task. When the scheduled task is complete, it moves back down to the bottom of the queue and the Sync app runs the next available continuous task.
Reordering Jobs The Queues panel allows you to alter the execution order of any continuous task by dragging and dropping the job up or down through the list. However, the ability to re-prioritize a job is limited to continuous tasks. If you create tasks associated with a scheduled time, those tasks appear at the bottom of the list and cannot be reordered through the Sync Queues area.
To reorder the queue list:
- Click and drag a sync job to a new position in the list.
After you release the mouse, the job is moved to the new position and the Queue Order column is renumbered accordingly.
The Process App The Process app lets you monitor the progress of each of your Sync tasks. Each task appears in the app with a process title (name) and information about its life cycle and status. Additionally, each task is associated with three sub-processes: export, import, and synchronization.
4 MediaCentral Sync Administration If any job encounters a failure, the Sync app attempts to retry the export and import steps automatically.
During this time, the Message column displays the number of retry attempts [x of 3]. For example:
If the job continues to fail after three attempts, the Sync app stops retrying the job and it sends an email to the contact or contacts that are configured in the SMTP section of the General Settings. Failed jobs appear in both the Process app and the Sync Tasks Overview section.
To ensure that the Production Management system is not over-tasked, the Sync app adds a “cool down” period between jobs. Administrators define this period when installing the Exchange Service on the Production Management Engine. When a job completes, the Process app panel displays an “export pending for <x> min” message to indicate the amount of time remaining until the start of the next job.
For more information about the Process app, see “Working with the Process App” in the Avid MediaCentral | Cloud UX User’s Guide on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation 4 MediaCentral Sync Administration Log Locations In the event that you need additional detail on completed or failed synchronization events, you can review the following logs for additional information:
- On the MediaCentral Cloud UX system:
  - Use the Kubernetes Dashboard to access the log files for the avid-sync-controller pod.
For more information, see “Understanding Docker Containers and Kubernetes” and “Working with Kubernetes” in the Avid MediaCentral | Cloud UX Installation Guide.
On the Production Management Engine:
  - C:\Program Files\Avid\Production Management Engine\Logs\Machines\<machine name>
See the Engine logs for information on any errors that might occur during execution of the import/export process.
  - C:\ProgramData\Avid\Avid Workgroup Exchange Service\Logs
Review the logs at this location for details regarding connectivity problems between the Sync app and the Production Management systems. For these types of issues, you might also want to review the Windows Event logs (filter by Source “Avid Workgroup Exchange Service”).