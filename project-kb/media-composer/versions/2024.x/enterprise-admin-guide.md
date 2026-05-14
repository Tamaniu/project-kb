---
product: media-composer
product-area: editing
version: "2024.x"
release-date: 01/01/2024
doc-type: enterprise-admin-guide
source: pdf
confidentiality: public
date-added: 13/05/2026
status: current
---

Avid Media Composer | Enterprise Admin Tool Administration Guide Using This Guide Using This Guide This document provides instructions for installing, configuring and using the Avid Media Composer | Enterprise Admin Tool and the Avid Media Composer | Enterprise client. Avid recommends that you read all of the information in this document before installing or using the corresponding software release.
The Enterprise Admin Tool might be hosted on either a MediaCentral | Cloud UX system, or an Avid NEXIS | EDGE server. As a result, you might be required to review the following documentation:
Avid MediaCentral | Cloud UX Documentation
- https://kb.avid.com/pkb/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation
Avid NEXIS | EDGE Documentation
- https://kb.avid.com/pkb/articles/en_US/Knowledge/Avid-NEXIS-EDGE-Documentation
Revision History Date Changes Made Revised March, Format and style updates. Removal of references to Avid Editorial Management. Updated steps in 2025 "MediaCentral Cloud UX Server Installation" on page 9 to reflect more current versions of MediaCentral Cloud UX.
May, 2019 Initial Product Release Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Meaning or Action Convention
> **Note:** A note provides important related information, reminders, recommendations, and strong
suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
w A warning describes an action that could cause you physical harm. Follow the guidelines in this document or on the unit itself when handling electrical equipment.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
- This symbol indicates a single-step procedure. Multiple arrows in a list indicate that you
perform one of the actions listed.
(Windows), This text indicates that the information applies only to the specified operating system, (Windows only), either Windows or macOS.
(macOS), or (macOS only) Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables. Variables are often enclosed in angled brackets: < >.
Using This Guide Symbol or Meaning or Action Convention Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse Press and hold the first key while you press the last key or perform the mouse action. For action example, Command+Option+C or Ctrl+drag.
| (pipe character) The pipe character is used in some Avid product names, such as MediaCentral | Production Management. In this document, the pipe is used in product names when they are in headings or at their first use in text.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view these online versions, visit the Knowledge Base at https://kb.avid.com/articles/en_US/User_Guide/Media- Composer-Documentation-Links.
3. Check the documentation that came with your Avid application or your hardware for maintenance or
hardware-related issues.
4. Visit the online Knowledge Base at https://www.avid.com/search#t=KB. Online services are available
24 hours per day, 7 days per week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message- board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit https://www.avid.com/learn-and-support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 System Installation and Prerequisites 1 System Installation and Prerequisites The Media Composer | Enterprise Admin Tool offers administrative control to customize the Media Composer interface for specific roles and users within your organization. Site administrators are able to define levels of customization of Media Composer features based on user groups and individual users.
Installation Prerequisites Before you begin the installation process, you must verify that you have the following systems and minimum versions of software available:
Avid Media Composer v2019.6 or later. For access to all features described in this guide, you must be
- running v2022.4 or later.
One of the following:
  - Avid MediaCentral | Cloud UX with the Media Composer Enterprise Feature Pack enabled.
v2019.6 (minimum), or v2022.3 or later to access all of features described in this guide.
  - Avid NEXIS | EDGE with the Media Composer Enterprise feature enabled.
Avid recommends installing the latest versions of both Media Composer and MediaCentral Cloud UX to ensure that you have full administrator control over the Media Composer features. If your version of MediaCentral Cloud UX is older than the version of Media Composer, all of the older Admin Tool features will still control Media Composer. If the version of MediaCentral Cloud UX is newer than the Media Composer version, then only the Admin Tool features supported by the older Media Composer will take effect.
If you are using Media Composer Distributed Processing or the MediaCentral Panel for Media Composer, you should consult the compatibility documents on the following site to ensure full end- to-end compatibility:
https://kb.avid.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Licensing
  - Only Media Composer instances running with the Media Composer | Enterprise license will be
controlled by Media Composer Definitions received from the MC|E Admin Tool server.
  - Your MediaCentral Cloud UX or Avid NEXIS EDGE system must include a "Media Composer |
Enterprise Admin Tool" license.
MediaCentral Cloud UX Minimum Specifications In some cases your organization might already own a MediaCentral Cloud UX server that connects to MediaCentral Production Management, Newsroom Management, or other MediaCentral modules. In these cases you must meet the minimum specifications outlined in the Avid MediaCentral | Cloud UX Hardware Guide.
In other cases you might be integrating with MediaCentral Cloud UX to enable Media Composer Enterprise only. When deploying MediaCentral Cloud UX for this purpose, review the following minimum requirements:
1 System Installation and Prerequisites Memory: 32 GB of RAM
- Processors: One or more CPUs with a total of 8 cores or better
- Storage: MediaCentral Cloud UX requires separate OS and Data volumes for all deployment types.
- The OS volume is used for the operating system and Avid applications. The Data volume hosts the
MongoDB database which stores information about user login (avid-iam), license data, and more.
  - 256 GB or better for the OS volume
  - 500 GB or better for the Data volume
If you have already purchased or plan to purchase Media Composer Enterprise, Avid supports co-installing this product on the same MediaCentral Cloud UX server with no increase to the minimum requirements specified above.
User Accounts The Media Composer Enterprise Admin Tool workflow requires you to sign in to the MediaCentral Cloud UX or Avid NEXIS EDGE server. Your server must connect to a supported user authentication system (such as Windows Active Directory) to allow an administrator to sign in and customize the Media Composer user experience.
Note the following:
If the Admin Tool is hosted on Media Central Cloud UX, that system must authenticate against
- Windows Active Directory. The Media Composer Enterprise Admin Tool does not support integration
with OpenID providers, such as Okta.
- If the Admin Tool is hosted on Avid NEXIS | EDGE, you can authenticate against either Windows Active
Directory, or Avid NEXIS authentication.
- Only the admin user of the Admin Tool must have login credentials. None of the Media Composer
users who will be controlled by Media Composer definitions are expected to have Admin Tool login credentials. The controlled Media Composer users are not expected to ever log in to the Media Composer Enterprise Admin Tool.
- To verify the correct case-sensitive shortname/alias of the user who is selected in the Center Panel,
look in the Right Panel at the top in the “Name:” field. This is the username that will be saved in the Admin Tool database with its Media Composer Definitions.
1 System Installation and Prerequisites MediaCentral Cloud UX Server Installation If you are hosting the Media Composer Enterprise Admin Tool on a MediaCentral Cloud UX system, you must install and configure an Avid MediaCentral Cloud UX server or cluster. This section includes a high- level overview of the minimum steps required to install and configure your MediaCentral Cloud UX server for use with Media Composer Enterprise.
The following process does not include steps to configure a MediaCentral Cloud UX cluster. If you plan to deploy a MediaCentral Cloud UX cluster, you must complete additional installation and configuration steps as detailed in the Avid MediaCentral | Cloud UX Installation Guide.
If you plan to deploy a MediaCentral Cloud UX system with the intention of integrating with any of the MediaCentral modules (MediaCentral Production Management, MediaCentral Asset Management, or others), ignore this abbreviated process and refer to the Avid MediaCentral | Cloud UX Installation Guide for complete instructions.
Complete the following sections of the Avid MediaCentral | Cloud UX Installation Guide to deploy your MediaCentral Cloud UX server:
- Installation Prerequisites (recommended)
This chapter describes concepts related to Linux and MediaCentral Cloud UX. It also outlines some of the prerequisite requirements for the installation, such as identifying the host name and IP address of your MediaCentral Cloud UX server.
Software Installation and Configuration
- This chapter includes the processes to deploy the operating system and the MediaCentral Platform. It
also includes procedures on how to log into the OS for the first time, and how to access the MediaCentral Cloud UX user interface. Complete the following sections of this chapter:
  - Configuring Your System Hardware
  - Verifying Disk Partitioning
  - Installing and Configuring Ubuntu
  - Logging in to the OS for the First Time
  - Additional Network Configuration
  - Installing Ubuntu Software Updates
  - Installing and Configuring Additional Features
  - Installing the Platform Software
  - Running the Post-Install Setup Scripts
  - Installing Ansible and SSHpass
  - Running the Cloud UX Setup Script
  - Creating a Site Key
  - Creating Certificate Files
  - Deploying the TLS or SSL Certificates
  - Configuring an Authentication Provider
If you are connecting to MediaCentral Cloud UX, that system must authenticate against Windows Active Directory. The Media Composer Enterprise Admin Tool does not support integration with OpenID providers, such as Okta.
1 System Installation and Prerequisites If you are using Avid NEXIS EDGE, see “Running the Avid NEXIS EDGE Configuration Tool” in the Avid NEXIS | EDGE Installation Guide for additional authentication provider options.
  - Configuring Avid NEXIS API Services
  - Enabling System Monitoring
  - Running the Feature Pack Deployment Script
When deploying the feature packs, you must answer Yes to the Media Composer | Enterprise and final “Feature packs” (additional feature packs common to all installations) prompts.
> **Note:** In the event that you are deploying both Media Composer Enterprise and Media
Yes Composer Distributed Processing, you must also answer at the Media Composer Distributed Processing prompt.
  - Deploying System Monitoring
Using the License App
- Using the User Management App
- Working with the Kubernetes Dashboard
MediaCentral Cloud UX is built in a Kubernetes® (K3s) managed container environment. MediaCentral Cloud UX includes one Kubernetes managed UI plugin and one service. The UI plugin is contained in the avid-ui-media-composer-admin-app-uidpl pod, and the service is contained in the avid-media-composer- admin-service-mce pod.
MediaCentral Cloud UX administrators can use the Kubernetes Dashboard to monitor the health of the Cloud UX system, gather logs, and restart Pods.
If you do not see the Enterprise Admin Tool in the MediaCentral Cloud UX user interface after installing and licensing the application, you can attempt to delete the avid-plugins-list-core-app pod. After Kubernetes recreates the pod, refresh the MediaCentral Cloud UX user interface.
For more information, see “Understanding Kubernetes and Containers” and “Working with Kubernetes” in the Avid MediaCentral | Cloud UX Installation Guide.
2 Media Composer Enterprise Admin Tool Workflow 2 Media Composer Enterprise Admin Tool Workflow Complete the procedures in this section to install and configure the Media Composer Enterprise Client and Admin Tool. At a high level, this process involves:
Installing Media Composer as an Enterprise installation.
- Connecting to the Enterprise Admin Tool server and configuring settings.
- Launching Media Composer to test and verify your changes.
- Installing Media Composer
Complete the following steps during the Avid Media Composer installation process to enable the Enterprise Admin Tool connection.
To install Media Composer as an Enterprise client:
1. Sign in to your client workstation as a user with administrative privileges.
2. Install the Media Composer application.
During the install process, one of the following windows appear.
Windows Installer 2 Media Composer Enterprise Admin Tool Workflow macOS Installer
3. Do one of the following:
- (Windows) Select the "This is Media Composer | Enterprise installation" check box.
- (macOS) Select the "Media Composer | Enterprise Scripts" check box and click Continue.
4. Enter the hostname (FQDN recommended) or IP address of the server where the Media Composer
Enterprise Admin Tool is installed.
5. (if applicable) If you are using Avid NEXIS authentication on an Avid NEXIS EDGE system, enable the
"Use NEXIS Client User Name" check box, and enter your Avid NEXIS System Name.
You must enter the case-sensitive Avid NEXIS System Name that each Media Composer user will log onto via Avid NEXIS Client Manager on the same machine where they run Media Composer. If you are using this feature, Avid recommends that all users sign in to the Avid NEXIS Client Manager before launching Media Composer.
6. Continue with the installation and restart your system.
When restarting your system on macOS, make sure to UNCHECK the "Reopen windows when logging back in" check box. If it is selected, the environment variable will not apply.
2 Media Composer Enterprise Admin Tool Workflow Signing Into the Enterprise Admin Tool To access the Enterprise Admin Tool:
1. In a browser window, enter the following URL:
https://(server_name)/admin/app/avid-ui-media-composer-admin-app Where server_name is the hostname of your MediaCentral Cloud UX or Avid NEXIS EDGE server.
The server Sign In page appears. The following example illustration shows the MediaCentral Cloud UX sign in page.
2. Sign in to the Administrator portal using your administrator credentials.
If you installed the Admin Tool using the Avid NEXIS EDGE installer and you selected NEXIS authentication, enter your Avid NEXIS user name and password.
3. Click Sign In.
The server's administration page opens with the Media Composer | Enerprise Admin Tool in focus.
Top: Admin Tool icon, Left Panel: List of User Groups, Center Panel: List of users in selected User Group, Right Panel: Media Composer Definitions.
2 Media Composer Enterprise Admin Tool Workflow Customizing User Definitions This topic describes how to add or remove user definitions.
To customize Media Composer Enterprise users:
1. Select a User Group in the left panel.
The list represents either the Active Directory user groups that have been imported into the system, or the list of Avid NEXIS user groups.
2. (optional) Select a User in the center panel that you want to assign specific features of the Media
Composer user interface.
If you do not select an individual user, your changes are applied to the currently selected user group.
3. Using the Definitions panel on the right, select and / or deselect the Media Composer features which
you want the group or user to have access.
In the following example illustration, the administrator has disabled editor1's ability to access the Media Tool.
When the editor launches Media Composer, one of three things might happen:
- The user interface displays the features that have been enabled for that user.
- If no features have been specified for this user or the User Group they belong to, then
definitions received for this user in previous launches of Media Composer are used.
- If no previous definitions exist, Media Composer will not launch.
All users on a machine controlled by the Media Composer Enterprise Admin Tool must have user or group definitions. For an exception to this rule, see Bypassing User Definitions.
2 Media Composer Enterprise Admin Tool Workflow Definitions defined for an individual user always take precedence over the definitions of any User Group that the user might belongs to. If definitions have been saved in the Admin Tool for a user, those definitions will be used even if the user belongs to a group that has definitions. Adding group definitions later will also not affect the definitions of group members who already have their own saved definitions.
For a user to consistently receive the definitions of a User Group, Avid recommends the following:
  - Users should belong to a single User Group only.
  - That the User Group must have definitions.
  - The user must not have any individual definitions applied.
If a user belongs to multiple User groups and there is no way to limit the user's membership to a single User Group, then save definitions for that particular user rather than relying on the user's group definitions.
4. After making the selections for the group or individual user, click the Save Definitions button at the
bottom of the Definitions panel.
To remove definitions from a user or group:
1. Select the user's name in the middle pane of the Admin Tool.
2. Press the Remove Definitions button.
This button is active only if custom definitions exist for the user.
3. When prompted, click OK to verify the change.
Agreeing to the removal immediately removes these definitions from the database. This action cannot be reversed.
To reset current values to default:
1. In the Media Composer | Enterprise Definitions page, click the "Reset to default" button.
The following message appears.
2. Click OK.
All values in the Media Composer Definitions pane are reset to default values for the user or group.
This only resets the values in the UI. To save these changes for the selected User or Group, press Save Definitions.
Bypassing User Definitions The default functionality of the Enterprise workflow requires that all users on a machine controlled by the Media Composer Enterprise Admin Tool must have user or group definitions. As an administrator, you can chose to bypass this default behavior.
Complete the following steps to allow any user or group who does not receive definitions to run Media Composer without restriction (when they are connected to this Enterprise Admin Tool server).
2 Media Composer Enterprise Admin Tool Workflow To bypass user definitions:
1. Sign into the server that is hosting the Enterprise Admin Tool.
For details, see Signing Into the Enterprise Admin Tool.
2. Click the General Setting button in the upper-right corner of the app.
3. Click the chevron to the left of the Security Bypass category and enable the “Allow security bypass”
setting.
A lock icon appears next to General, which indicates that “Allow security bypass” has been enabled for all users not receiving definitions. The setting change is automatic (no "Save" required).
Creating, Saving and Deploying User and Site Settings You can create, save, and deploy User and Site Settings to Avid Media Composer Settings. This process consists of the following three procedures:
- "Enabling the Export Option" below
- "Exporting Settings from Media Composer" on the next page
- "Selecting User and Site Settings" on the next page
Enabling the Export Option To create, save, and deploy User and Site Settings:
1. Sign into your Enterprise Admin Tool server.
For details, see Signing Into the Enterprise Admin Tool.
2. After selecting a user group, or an individual user account, click the chevron to the left of the
Shapshot category in the Media Composer Definitions panel to display the options.
3. Enable the “Can export Settings from MC|E” option.
4. Click Save Definitions.
2 Media Composer Enterprise Admin Tool Workflow Exporting Settings from Media Composer To export the settings:
1. Launch Media Composer, then select File > Settings.
2. Make any desired changes to your User or Site Settings.
3. While the Settings window is still open, select File > Save Settings to make sure the settings are saved
to disk.
4. Select File > Export MC|E Snapshot.
You can export those settings together in a single file, save just the User settings, or save just the Site settings.
5. Click OK.
6. Choose a location to place the snapshot file. Provide a file name that will help you remember the
settings.
7. Click Save.
Selecting User and Site Settings To apply setting through the Admin Tool:
1. Sign into your Enterprise Admin Tool server.
For details, see Signing Into the Enterprise Admin Tool.
2. In the Media Composer Enterprise Admin Tool, click the General Settings icon.
3. Open the Snapshots options in the General Settings pane.
4. Click the + button.
5. Locate the snapshot file that you exported from Media Composer.
6. Click OK.
The import settings are listed in the panel.
2 Media Composer Enterprise Admin Tool Workflow
7. Click a user group or individual user to exit the General Settings.
8. Click the chevron to the left of the Shapshot category in the Media Composer Definitions panel to
display the options.
9. Enable the "Provide MC|E Settings Snapshot" check box, and select a setting snapshot from the
menu.
> **Note:** If the snapshot selected in the top dropdown menu contains both User and Site Settings, the
second dropdown menu cannot be used.
10. Click Save Definitions.
If the applied Settings Snapshot was a combined User and Site Settings snapshot from a previous version, then when the specified user launches Media Composer Enterprise, if there is not already a User profile with the same name as the User settings being applied, then the new User settings name will be created and by default will be selected in the User Profile field in the Project Window.
If the applied Settings Snapshots is created in Media Composer v2020.4 or later, then these will only be applied the first time the user launches Media Composer with these new Settings Snapshots. If the user makes User and / or Site Settings changes and then relaunches Media Composer with the same previous Settings Snapshots in place, the user's settings will not be overwritten by Media Composer Enterprise.
2 Media Composer Enterprise Admin Tool Workflow Limiting the Send To Playback Targets You can limit the number of Send To Playback targets that will appear in a user’s Media Composer Transfer menu. This section includes the following processes:
- "Adding and Removing Servers in the General Settings" below
- "Configuring the STP Profile" on the next page
Adding and Removing Servers in the General Settings To add a server to the Server list:
1. Sign into your Enterprise Admin Tool server.
For details, see Signing Into the Enterprise Admin Tool.
2. In the Media Composer Enterprise Admin Tool, click the General Settings icon.
3. Click the chevron to the left of the Send To Playback category.
The Send to Playback options appear.
4. Click the Add Server button and enter values into the Add Server window.
a. Enter the hostname or IP address of a MediaCentral Transfer server, or AirSpeed studio.
AirSpeed Studios can be entered using the following naming convention:
base-hostname[#] For example, if you had three Avid AirSpeed servers with hostnames wavdas-1, wavdas-2, and wavdas-3, you would enter a value of wavdas[3]. For more information on AirSpeed Studios, see “Adding an Avid AirSpeed Studio” in the Avid MediaCentral | Transfer Setup and User’s Guide.
2 Media Composer Enterprise Admin Tool Workflow b. Do one of the following:
- Enter a custom Workgroup name.
- Deselect the Workgroup check box to have the system populate the field with a default
workgroup name.
For details on the Workgroup value, see "Setting Transfer Settings in the Avid Editing Application" in either the Avid Media Composer Editing Guide, or the Media Composer Help.
5. Click OK.
The server is added to the Server column.
To remove a server from the Server list:
1. In the Media Composer Enterprise Admin Tool, click the General Settings icon.
2. Click the chevron to the left of the Send To Playback category.
3. Select a server from the list and press the Delete key on your keyboard.
The system displays a confirmation window.
4. Click OK to delete the server from the Admin Tool.
Configuring the STP Profile After you have added at least one server to the Send to Playback section of the General Settings, you must create at least one profile. You can later associate this profile with a user, or group of users.
To customize and create the profile:
1. Select a server from the Server column in the Send to Playback section of the General Settings.
The targets for that server appear in the Target column.
2. Do any of the following to move one or more targets to the Enabled column:
- Select an individual target, and click + at the bottom the Target column.
- Ctrl+click or shift+click multiple targets, and click + at the bottom the Target column.
- Select an AirSpeed Studio and press the + at the bottom of the Server pane.
When you select an AirSpeed studio, the Target column is expected to be empty.
- Without selecting any targets, press the + at the bottom of the Server pane to add all of the
selected server's targets to the Enabled column.
The targets that appear in the Enabled column are allowed to appear in the Media Composer Send to Playback menu. In the following example illustration, the administrator added one server and three profiles.
2 Media Composer Enterprise Admin Tool Workflow The Enabled column shows the server name, and the associated workgroup name. The targets appear indented below the server name.
3. You can repeat the steps above to add one or more additional servers and targets to the Enabled
column.
4. Click the STP Profile menu and select Save Profile.
> **Note:** You can return to this area at any time to remove profiles from the system.
5. Enter a custom name in the Save Profile window and click OK.
6. Exit General Settings and return to Media Composer Definitions by clicking on a user or group you
want to view in the panes to the left.
Configuring the Send to Playback Definitions To limit the Send To Playback targets:
1. After selecting a user group, or an individual user account, click the chevron to the left of the Send To
Playback category in the Media Composer Definitions panel to display the options.
2. Do one of the following:
- Click the "Disallow STP devices" option to prevent users from sending asset to playback
targets.
This option not only prevents access to the Send to Playback feature in Media Composer, but also blocks the initialization of the Transfer client when launching Media Composer.
If you select this option, the settings below are disabled in the Admin Tool.
- Click the "STP Profile" check box, and select an STP profile from the menu.
2 Media Composer Enterprise Admin Tool Workflow The area below the STP Profile area is populated with the settings from that profile.
3. (optional) Select an alternate Primary Server from the menu.
If your profile includes two or more servers, you change the server that appears in the My Workgroup section of the Media Composer Transfer Settings (TMClient.ini tab).
4. Click Save Definitions.
When the user selects the Send To Playback option from the Media Composer Transfer menu, the number of targets is limited to the values you defined in the Definitions panel.
Working with Roles Using the Media Composer Enterprise Admin Tool, you can use the Roles feature to create Media Composer definitions that can be saved by name and made available for users and groups. This allows you to limit what a user or a group of users can do. Avid provides one factory default role named Producer that is not editable.
Creating and Removing Roles Complete the following processes to either create a new role, or delete an existing role.
To create a new Role based on the Producer default:
1. Sign into your Enterprise Admin Tool server.
For details, see Signing Into the Enterprise Admin Tool.
2. After selecting a user group, or an individual user account, click the Roles tab in the Media Composer
Definitions panel.
2 Media Composer Enterprise Admin Tool Workflow The Roles menu shows the default role of Producer.
3. Make changes by selecting or deselecting definition options (Media Composer options, Functions,
Formats, etc).
As soon as you make your first change, the role name changes to Producer.01 in italics to show that it has not been saved yet.
4. Click the Roles menu and do one of the following:
- Click Save to save the Role with the currently displayed name (for example Producer.01).
- Click Save As to enter a custom name for the Role.
5. Click OK.
The new custom role appears in the Role pulldown menu.
To create a new role based on custom definitions:
1. After selecting a user group, or an individual user account, use the Media Composer Definitions panel
on the right-side of the app to customize the user or group.
2. Click the chevron to the left of the Roles category in the Media Composer Definitions panel to expand
the options.
3. Click the Save Current as Role button.
4. Do one of the following in the confirmation dialog:
- Click Save to save these definitions as a new role, and also save/create the changes to the
existing definitions.
- Click Skip to save these definitions as a new role, without saving the changes to the existing
definitions.
If you selected Save, the new role is created using the same name as the user or user group that you were modifying.
To remove an existing role:
1. After selecting a user group, or an individual user account, click the Roles tab in the Media Composer
Definitions panel.
2. Use the Roles menu to select a role.
2 Media Composer Enterprise Admin Tool Workflow
3. Click the Roles menu again and select Remove Current.
The role is removed with no confirmation dialog.
Applying Roles to a User or Group To apply one or more roles:
1. After selecting a user group, or an individual user account, click the chevron to the left of the Rules
category in the Media Composer Definitions panel.
2. Click the + button under the Enabled box.
A list of existing roles appears.
3. Select the role or roles you want to assign to the user.
4. Click Close.
5. Click Save Definitions.
If the “Allow custom definitions” check box is enabled, then the user’s custom definitions will be available for use when launching the Media Composer client.
When the user launches Media Composer, if they have more than one set of definitions available to them (custom user definitions and / or Roles), a “Choose MC|E Definitions” dialog is displayed on launch. If only one set of definitions has been specified for this user, no dialog will be presented on launch and the specified definitions will be automatically used.
Scripts to Change Servers Perform the following steps to set or change which Admin Tool server and / or optional Avid NEXIS system are used. This might be helpful if you need to reset either of these values or if they were not set during the initial installation of Media Composer Enterprise.
(Windows) To allow scripts to run:
1. From the Start menu, type the following in the search text box and press Enter:
PowerShell
2. When Windows PowerShell appears in the search results, right click PowerShell and select Run as
Administrator.
3. On the PowerShell command line, type the following and press Enter:
cd "C:\Program Files\Avid\Avid Media Composer\Media Composer Enterprise" 2 Media Composer Enterprise Admin Tool Workflow
4. On the PowerShell command line, type the following and press Enter:
powershell -executionpolicy unrestricted .\AMCEAdminToolEnvVar-PC.ps1
5. In the first field of the "Media Composer | Enterprise Admin Tool" dialog box that appears, enter the
hostname (FQDN recommended) or IP address of the server where the Media Composer Enterprise Admin Tool is installed.
6. (if applicable) If you want to use Media Composer Definitions based on users' Avid NEXIS usernames,
do the following:
a. Check the box for "Use NEXIS Client User Name to define Media Composer." b. Type the case-sensitive Avid NEXIS system name (not the IP address). This is the Avid NEXIS system that users will log onto via Avid NEXIS Client Manager before running Media Composer.
7. Press OK.
8. Restart the computer for these variables to take effect.
(macOS) To allow scripts to run:
1. Open your Applications folder.
2. Open Utilities and double-click Terminal.
3. On the terminal command line, type:
cd "/Applications/Avid Media Composer/Media Composer Enterprise"
4. On the terminal command line, type:
sudo bash ./AMCEAdminToolEnvVar-Mac.sh
5. Enter your macOS system password if prompted.
The system prompts you with a series of dialog boxes.
6. Enter the hostname (FQDN recommended) or IP address of the server where the Media Composer
Enterprise Admin Tool is installed.
2 Media Composer Enterprise Admin Tool Workflow
7. In the second dialog box, you are asked, "Do you want to use NEXIS Client User Name?"
- Click Yes if to want to use Media Composer Definitions based on users' Avid NEXIS usernames.
- Click No for any other type of configuration.
8. (if applicable) If you selected Yes in the previous dialog, a third dialog box appears. Type the case-
sensitive Avid NEXIS system name (not the IP address) and press OK. This is the Avid NEXIS system that users will log onto via Avid NEXIS Client Manager before running Media Composer.
9. Restart the computer for these variables to take effect.
A Troubleshooting A Troubleshooting The following information relates to troubleshooting the Media Composer Enterprise Admin Tool and Client.
General
- IMPORTANT: Troubleshooting is most effective if the Media Composer Enterprise Admin Tool’s health
is first verified before jumping to a later troubleshooting section.
  - If Media Composer can launch, then follow the later 2 bullet points in this General section,
which describe how to access info in the Media Composer console and Help dialog.
  - Test that the Admin Tool is working by following the steps in the Admin Tool troubleshooting
section.
  - Test that the Media Composer client is configured correctly by following the steps in the Media
Composer Client troubleshooting section.
- If Media Composer is not responding as expected after making and saving changes in the Admin Tool
for the Media Composer user, open the Media Composer console (Tools -> Console) and scroll to the very top to read any logging comments from MC|E.
In the About box (Avid Media Composer -> About Avid Media Composer), click on the Configuration
- tab and scroll to the “Customize MC features info” section to see what features are configured, if
any.
Admin Tool Verify that you are accessing the Admin Tool from a supported web browser. For details, see
- https://kb.avid.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts.
When entering the Admin Tool URL into the browser, verify that you have /admin at the end of the
- URL. A more complete URL ending is /admin/app/avid-ui-media-composer-admin-app
- After making changes in the Admin Tool, the Save Definitions button must be pressed for the change
to persist and to be available to Media Composer.
- To verify that the Admin Tool data persists, try unchecking a box in the Admin Tool’s rightmost pane.
Press Save Definitions. Refresh the page. Verify that the box remains unchecked. Failure means that there is an Admin Tool service or database issue. If so, try deleting the Admin Tool service pod in Kubernetes, wait until it reloads, and try again.
Media Composer Client Security features in Media Composer | Enterprise
  - Before any single user is controlled on the system, Media Composer can run under the
Enterprise license without MC|E specific security checks. This allows other Media Composer features to run that require the Enterprise license but do not depend on the Media Composer Enterprise Admin Tool.
  - Once any Media Composer user has been controlled by Media Composer Definitions, however,
that system will enable security features to detect tampering and prevent Media Composer from launching.
  - This means that once any user on the system is controlled by Media Composer Definitions,
then all users on the system must be controlled by Media Composer Definitions.
  - Tampering includes manually altering or removing files in the user’s Media Composer |
Enterprise folder, which may trigger a security shutdown of Media Composer.
A Troubleshooting
  - For more information on how to verify that a specific Media Composer user can be controlled
by the MC|E Admin Tool, please see the OS User section and then return here for further security troubleshooting.
  - Media Composer might launch with a security dialog saying that “Media Composer |
Enterprise is not able to launch. Please contact your administrator or reconnect to your facility network and shared storage.” * This can happen if Media Composer was configured to use the Media Composer Definitions of an Avid NEXIS username but the Admin Tool server is down or inaccessible and this user was never controlled by the Admin Tool on this machine before.
* This can also happen if the user forgot to log on to the Avid NEXIS server before launching Media Composer.
* Please see the AVID_MC_ADMIN_NEXIS_SYSTEM troubleshooting section for more details about Media Composer Definitions based on Avid NEXIS usernames.
* Please also step through the rest of the Media Composer Client troubleshooting section.
  - Media Composer may launch with a security dialog saying that “Media Composer | Enterprise
is not able to launch. Please contact your administrator or reconnect to your facility network.” Notice that nothing is mentioned about shared storage in this dialog.
*This can happen if Media Composer was configured to use the Media Composer Definitions of a user’s OS login shortname but the Admin Tool server is down or inaccessible and this user was never controlled by the Admin Tool on this machine before.
*Please step through the rest of the Media Composer Client troubleshooting section, ignoring the AVID_MC_ADMIN_NEXIS_SYSTEM troubleshooting section.
  - Security can be triggered when launching Media Composer if no Media Composer Definitions
are returned for the user and if there are also no Media Composer Definitions saved on disk from a previous successful launch of Media Composer that did receive Media Composer Definitions for this user. This can happen if:
*The username is not listed in the Admin Tool.
*The username is listed in the Admin Tool but does not have any Media Composer Definitions AND belongs to a group that also has no definitions.
*The username is listed in the Admin Tool but does not have any Media Composer Definitions AND belongs to multiple groups, one of which has no definitions. This configuration is currently undefined, so either limit this user’s membership to a single group that has definitions or save definitions specifically for this user. A user’s definitions always take precedence over any group’s definitions.
- The client machine running Media Composer must have network or internet connection to access the
Admin Tool server.
- Media Composer must have an MC|Enterprise license, which is visible in the splash screen and About
box.
After installing Media Composer with a Media Composer Enterprise configuration, the machine must
- be restarted for the environment variables to become accessible.
Media Composer must be relaunched after any changes are made in the Admin Tool for the Media
- Composer user.
- AVID_MC_ADMIN_HOST
  - Verify that a value is set.
  - The value must be the same as the Admin Tool host. Do not include https:// before the value.
Example values are: server.company.com or 123.45.67.89 A Troubleshooting
  - A reboot is required on the PC or a log out on the Mac for the environment variable to be
available for use by Media Composer.
  - Make sure that the Admin Tool with the same hostname/IP as the value set in AVID_MC_
ADMIN_HOST can be accessed via a web browser on the machine running Media Composer. If not, this may indicate that there is a network issue that needs to be resolved.
  - The Admin Tool server must be running on Cloud UX 2019.6 or later, or communication will fail.
  - It might be necessary to use the fully qualified domain name (FQDN) of the server (example:
server.company.com) instead of the short name (example: server) if the Media Composer machine is not in the same domain or subnet as the server.
  - It might be necessary to use the numeric IP address (example: 123.45.67.89) instead of the host
name if there are nameserver issues.
- AVID_MC_ADMIN_NEXIS_SYSTEM
  - This value should only be set if you wish to use Media Composer Definitions based on users'
Avid NEXIS usernames. If you are expecting to use their OS user names, then delete AVID_MC_ ADMIN_NEXIS_SYSTEM and restart the system.
  - If you do wish to use Media Composer Definitions based on users' NEXIS user names, then
verify that this is the case-sensitive Avid NEXIS server name that the Media Composer user will log onto via Avid NEXIS Client Manager on the same machine.
  - Verify that the Media Composer user has logged onto this server via Avid NEXIS Client Manager
before launching Media Composer. Continuous Avid NEXIS connection is not necessary, just that this user was the last person to log on to the Avid NEXIS server. The case-sensitive name of the user who most recently logged onto the Avid NEXIS server is the name that will be used to receive Media Composer Definitions from the MC|E Admin Tool.
- OS User
  - If Media Composer Definitions are based on users' OS login shortnames, then the Media
Composer user must have logged onto the OS using the same identity as one that also exists in the middle pane of the Admin Tool server. If Media Composer Definitions are based on users' NEXIS login names, then this name must also exist in the middle pane of the Admin Tool server.
  - The user’s alias (example: jdoe), not the Display Name (example: John Doe), is case-sensitive in
the MC|E database, and it is the alias that is used to apply Admin Tool definitions to Media Composer for the logged-on OS user. The same is true with NEXIS usernames.
  - The user folder cannot be read-only, or the required MC|E files won’t be written.
  - Example PC user folder: C:\Users\jdoe
  - Example Mac user folder: /Users/jdoe
  - An admin must have previously saved definitions in the Admin Tool for this user or a group that
the user belongs to, or the Admin Tool service will have no definitions to return for that user.
  - If definitions are saved for a group that the user belongs to, the group definitions will be
applied unless definitions were also saved specifically for that user. In this case, the user- specific definitions will be applied.