---
product: media-composer
product-area: editing
version: "2022.x"
release-date: 01/01/2022
doc-type: enterprise-admin-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Media Composer | Enterprise Admin Tool Administration Guide Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This product might be protected by one or more U.S. and non-U.S patents. Details are available at www.avid.com/patents.
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
Permission to use, copy, modify, and distribute this software for any purpose without fee is hereby granted, provided that this entire notice is included in all copies of any software which is or includes a copy or modification of this software and in all copies of the supporting documentation for such software.
Using This Guide Revision History Date Revised Changes Made June, 2022 Updated Installation Prerequisites.
May, 2022 Updated Troubleshooting and Scripts to Change Servers sections with more detailed procedures and graphics. Updated the Installation Prerequisites to reflect an accurate Media Composer version.
February, 2022 Updated document to include updated Roles feature and multiple edits to procedures and graphics.
May, 2020 Updated graphics and procedures.
May, 2019 Initial Release This document provides instructions for installing, configuring and using the Avid Media Composer | Enterprise Admin Tool and the Avid Media Composer | Enterprise client. Avid recommends that you read all the information in this document before installing or using the corresponding software release.
The following documents are referenced in this guide:
• Avid MediaCentral | Cloud UX Installation Guide — The Enterprise Admin Tool is hosted by a MediaCentral | Cloud UX system. Some sections of this guide refer to the Cloud UX Install Guide for additional information. The Media Composer | Enterprise Admin Tool can also be hosted by a MediaCentral | Editorial Management system.
This document is available on the Avid Knowledge Base at:
http://avid.force.com/pkb/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation (cid:129) MediaCentral | Editorial Management Installation Guide This document is available on the Avid Knowledge Base at:
http://avid.force.com/pkb/articles/en_US/readme/MediaCentral-Editorial-Management-v2020- Documentation (cid:129) Avid NEXIS | EDGE - LINK TO DOC TO BE ADDED Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action A note provides important related information, reminders, recommendations, and
> **Note:** strong suggestions.
If You Need Help Symbol or Convention Meaning or Action A warning describes an action that could cause you physical harm. Follow the w guidelines in this document or on the unit itself when handling electrical equipment.
c A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
This symbol indicates a single-step procedure. Multiple arrows in a list indicate that you perform one of the actions listed.
(Windows), (Windows This text indicates that the information applies only to the specified operating only), (Mac), or (Mac only) system, either Windows or macOS.
Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables. Variables are often enclosed in angled brackets: < >.
Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse action Press and hold the first key while you press the last key or perform the mouse action. For example, Command+Option+C or Ctrl+drag.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is
especially important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view these online versions, select ReadMe from the Help menu, or visit the Avid Knowledge Base.
3. Check the documentation that came with your Avid application or your hardware for
maintenance or hardware-related issues.
4. Visit the online Avid Knowledge Base. Online services are available 24 hours per day, 7 days per
week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient.
Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
Avid Training Services For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 Media Composer | Enterprise Admin Tool Server Installation The following main topics are described in this chapter:
(cid:129) Product Overview (cid:129) Installation Prerequisites (cid:129) MediaCentral Cloud UX Server Installation (cid:129) Working with the Kubernetes Dashboard Product Overview The Media Composer | Enterprise Admin Tool offers administrative control to customize the Media Composer interface for specific roles and users within the production organization. Site administrators will be able to define levels of customization of Media Composer features based on user groups and individual users.
Installation Prerequisites Before you begin the installation process, you must verify that you have the following systems and minimum software versions available:
(cid:129) Avid Media Composer v2019.6 or later. For access to all features described in this guide, v2022.4 is required.
(cid:129) Avid MediaCentral Cloud UX with the “Media Composer Enterprise” Feature Pack enabled.
To install MediaCentral Cloud UX for this release of Media Composer | Enterprise, you must have the following:
- Avid MediaCentral Cloud UX Platform ISO v2019.6 or later. For access to all features described in this guide, v2022.3 is required. This is the primary installer package that includes the CentOS operating system and core Avid installation components.
- Avid MediaCentral Cloud UX Feature Pack ISO v2019.6 or later. For access to all features described in this guide, v2022.3 is required. This package includes additional software to install MediaCentral Cloud UX applications on the Platform.
For full Admin Tool control of Media Composer features, install the newest Cloud UX and Media Composer versions specified above. If the Cloud UX version is older than the Media Composer version, all of the older Admin Tool features will still control Media Composer. If the Cloud UX version is newer than the Media Composer version, then only the Admin Tool features supported by the older Media Composer will take effect.
MediaCentral Cloud UX Server Installation Server Minimum Specifications In some cases your organization might already own a MediaCentral Cloud UX server that connects to MediaCentral Production Management, Newsroom Management, or other MediaCentral modules. In these cases you must follow the minimum specifications outlined in the Avid MediaCentral | Cloud UX Hardware Guide.
In other cases you might be integrating MediaCentral Cloud UX to enable Media Composer Enterprise only. When deploying MediaCentral Cloud UX for this purpose, review the following minimum requirements:
(cid:129) Memory: 32 GB of RAM (cid:129) Processors: One or more CPUs with a total of 8 cores or better (cid:129) Storage: 256 GB or better for the sda volume (operating system and applications) The MediaCentral Cloud UX documentation references setup for a second volume (RAID 5). As the Media Composer Enterprise workflow does not require you to play media through MediaCentral Cloud UX, you are not required to include a second volume (RAID 5).
If you have already purchased or plan to purchase Media Composer Enterprise, Avid supports co- installing this product on the same MediaCentral Cloud UX server with no increase to the minimum requirements specified above.
MediaCentral Cloud UX Server Installation To enable access to the Media Composer Enterprise Admin Tool, it is necessary to install and configure an Avid MediaCentral Cloud UX server or cluster. This section includes a high-level overview of the minimum steps required to install and configure your MediaCentral Cloud UX server for use with Media Composer Enterprise.
The following process does not include steps to configure a MediaCentral Cloud UX cluster.
In the event that you are deploying both the Media Composer Enterprise Admin Tool and MediaCentral Cloud UX server or cluster with the intention of integrating with any of the MediaCentral modules (MediaCentral Production Management, MediaCentral Asset Management, or others), you must complete additional installation and configuration steps as detailed in the Avid MediaCentral | Cloud UX Installation Guide.
Complete the following sections of the Avid MediaCentral | Cloud UX Installation Guide to deploy your MediaCentral Cloud UX server:
(cid:129) Installation Prerequisites (recommended) This chapter describes concepts related to Linux and MediaCentral Cloud UX. It also outlines some of the prerequisite requirements for the installation, such as identifying the host name and IP address of your Cloud UX server.
(cid:129) BIOS and RAID Configuration (if applicable) If you are deploying MediaCentral Cloud UX on qualified hardware, review this chapter to configure your server’s BIOS settings. For more information on Avid qualified hardware, see the Avid MediaCentral | Cloud UX Hardware Guide.
(cid:129) Software Installation and Configuration MediaCentral Cloud UX Server Installation This chapter includes the processes to deploy CentOS and the MediaCentral Platform. It also includes procedures on how to log in to CentOS for the first time and how to access the MediaCentral Cloud UX user interface. Complete the following sections of this chapter:
- Verifying Disk Partitioning - MCUX Software Deployment If your server is configured with only one disk volume, you can bypass the process for “Configuring the Installation Destination in the CentOS Install Wizard”.
- Logging in to CentOS for the First Time - Additional Network Configuration As network connectivity and proper host resolution are essential to a successful installation, you must complete the sections for “Verifying the Hostname and Network Connectivity” and “Configuring DNS”. The process for “Renaming the Primary Network Interface” only applies to MediaCentral Cloud UX clusters.
(cid:129) Running the Post-Install Setup Scripts - Running the Cloud UX Setup Script - Creating a Site Key - Creating Certificate Files - Deploying the Secure Sockets Layer Certificates - Configuring an Authentication Provider — Media Composer | Enterprise requires that you either be an Active Directory user or you can use Avid NEXIS as your authentication provider.
If you are running MediaCentral Cloud UX, see the Avid MediaCentral | Cloud UX Installation Guide for details on setting Active Directory user.
If you are running MediaCentral | Editorial Management, see “Selecting an Installation Package” topic in the MediaCentral | Editorial Management Installation Guide and follow the steps in “Configuring with the MediaCentral Editorial Management Configuration Tool” for details on setting up your Avid NEXIS as your authentication provider.
- Configuring Avid NEXIS API Services - Enabling System Monitoring - (optional) Deploying the Kubernetes Dashboard - Running the Feature Pack Deployment Script When deploying the feature packs, you must answer to the question about the Media Yes Composer | Enterprise feature pack. When the script displays the final “Feature packs” prompt (additional feature packs common to all installations), you must answer Yes.
> **Note:** In the event that you are deploying both Media Composer Enterprise and Media Composer |
Distributed Processing, you must also answer Yes at the Media Composer Distributed Processing prompt.
Working with the Kubernetes Dashboard Working with the Kubernetes Dashboard MediaCentral Cloud UX is built in a Kubernetes® managed Docker® container structure.
MediaCentral Cloud UX includes one Kubernetes managed UI plugin and one service. The UI plugin is contained in the avid-ui-media-composer-admin-app-uidpl pod, and the service is contained in avid-media-composer-admin-service-mce.
MediaCentral Cloud UX administrators can use the Kubernetes Dashboard to monitor the health of the Cloud UX system, gather logs, and restart Pods.
If you do not see the Enterprise Admin Tool in the MediaCentral Cloud UX user interface after installing and licensing the application, you can attempt to delete the avid-plugins-list-core-app pod. After Kubernetes recreates the pod, refresh the MediaCentral Cloud UX user interface.
For more information, see “Understanding Docker Containers and Kubernetes” and “Working with Kubernetes” in the Avid MediaCentral | Cloud UX Installation Guide.
2 Media Composer | Enterprise Admin Tool and Client Workflow The following main topics are described in this chapter:
(cid:129) Media Composer | Enterprise Admin Tool and Client Prerequisites (cid:129) Working with the Media Composer | Enterprise Admin Tool and Client Media Composer Enterprise Admin Tool and Client Prerequisites Review the following information that relates to Media Composer Enterprise Admin Tool and Client workflows.
Media Composer Licensing In order to use the Media Composer client, your Media Composer must be licensed for:
(cid:129) Media Composer | Enterprise Media Composer Enterprise Admin Tool Licensing In order to use the Media Composer Enterprise Admin Tool, your Cloud UX must be licensed for:
(cid:129) Media Composer | Enterprise Admin Tool User Accounts The Media Composer Enterprise Admin Tool workflow requires you to sign in to the MediaCentral Cloud UX server. Your MediaCentral Cloud UX server must be integrated with Windows Active Directory for the admin user to sign in, and for the Admin Tool to customize a Media Composer user's experience, that Media Composer user must have a valid Media Composer Enterprise license when running Media Composer. For more information about configuring Cloud UX with Windows Active Directory, see the Avid MediaCentral Cloud UX Installation Guide.
Working with the Media Composer Enterprise Admin Tool and Client The Windows Active Directory requirement is accurate for customers who are accessing the Admin Tool from the full Cloud UX installation. However, if you have installed using the MC|EM installer, then that Admin Tool config could be authenticated by either Windows Active Directory or NEXIS authentication.
(cid:129) Only the admin user of the Admin Tool must have login credentials. None of the Media Composer users who will be controlled by Media Composer Definitions are expected to have Admin Tool login credentials, and the controlled Media Composer users are not expected to ever log in to the Media Composer Enterprise Admin Tool.
(cid:129) To verify the correct case-sensitive shortname/alias of the user who is selected in the Center Panel, look in the Right Panel at the top in the “Name:” field. This is the username that will be saved in the Admin Tool database with its Media Composer Definitions.
Working with the Media Composer Enterprise Admin Tool and Client Use the following procedures to setup the Media Composer Enterprise Client and Admin Tool. You must install Media Composer as an Enterprise installation. Then you must connect to MediaCentral Cloud UX to access the Enterprise Admin Tool.
To install Media Composer as a Media Composer Enterprise Administrator:
1. Install the Media Composer application.
During the install process, the following window will appear.
Windows Installer Working with the Media Composer Enterprise Admin Tool and Client macOS Installer
2. Select the (Windows) This is Media Composer | Enterprise installation checkbox or
(macOS) Media Composer | Enterprise Scripts.
3. Enter the Hostname or IP Address of the Cloud UX server where the Media Composer
Enterprise Admin Tool is installed.
4. If you have configured Avid NEXIS as your Authentication Provider for the Cloud UX server
running the Media Composer Enterprise Admin Tool and plan to create Media Composer Definitions for those NEXIS users and groups, enable Use NEXIS Client User Name to define Media Composer.
The NEXIS System Name you are prompted to enter will be the case-sensitive NEXIS server name that each Media Composer user will log onto via Avid NEXIS Client Manager on the same machine where they run Media Composer. To have their Admin Tool definitions accurately customize their Media Composer experience, they should log onto their NEXIS via Avid NEXIS Client Manager account before launching Media Composer.
5. Continue with the installation and restart your system. When restarting your system on macOS,
make sure to UNCHECK the "Reopen windows when logging back in" checkbox. If it is selected, the environment variable will not apply.
To connect to MediaCentral Cloud UX and access the Enterprise Admin Tool:
1. In a browser window, enter the following url.
https://(your Cloud UX Server name)/admin/app/avid-ui-media-composer-admin-app The following window will appear:
Working with the Media Composer Enterprise Admin Tool and Client
2. Log in using your Cloud UX credentials. If you installed the Admin Tool using the MediaCentral
| Enterprise MC|EM (MediaCentral | Editorial Management) Installer or the Avid NEXIS | EDGE Installer and selected NEXIS authentication, enter your NEXIS user name and password.
Otherwise, you must be an LDAP administrator to sign in. Enter the LDAP Admin user name and password.
3. Click Sign In.
The following window opens.
Top: Admin Tool icon, Panel on Left: List of User Groups, Center Panel: List of users in selected User Group, Right Panel: Media Composer Definitions.
Working with the Media Composer Enterprise Admin Tool and Client To customize Media Composer | Enterprise users:
1. Select a User Group in the left panel.
2. Select the User in the center panel that you want to assign specific features of the Media
Composer user interface.
> **Note:** You can choose to make selections for an entire group or for individual users.
3. In the Definitions panel on the right, select and or deselect which features of Media Composer to
which you want the group or user to have access. For example, you can select which tools you want a specific group or individual user to have access to in Media Composer. For examples of customizable features, see Examples of Customizable Features.
4. After making the selections for the group or individual user, click Save Definitions.
Working with the Media Composer Enterprise Admin Tool and Client
5. Continue assigning features for each user and/or group.
When the Media Composer user launches their editing application, the user interface will display the features that have been enabled for that user. If no features have been specified for this user or the User Group they belong to, then definitions received for this user in previous launches of Media Composer will be used. If those do not exist, Media Composer will not launch, as all users on a machine controlled by the Media Composer Enterprise Admin Tool must have user or group definitions.
In the Admin Tool, a user's definitions always take precedence over the definitions of any User Groups the user belongs to. If definitions have been saved in the Admin Tool for a user, those definitions will be used even if the user belongs to a group that has definitions. Adding group definitions later will also not affect the definitions of group members who already have their own saved definitions.
For a user to consistently receive the definitions of a User Group, the user should only belong to a single User Group, that User Group must have definitions, and the user must not have their own definitions. To remove a user's definitions, select the user's name in the middle pane of the Admin Tool, then press the Remove Definitions button, which will be enabled if any definitions exist for the user. Doing so will bring up a dialog to verify that this action should take place for this user. Agreeing to the removal immediately removes these definitions from the database and is not undoable.
If a user belongs to multiple User groups and there is no way to limit the user's membership to a single User Group, then save definitions for that particular user rather than relying on the user's group definitions.
To reset all definitions to default:
1. In the Media Composer | Enterprise Definitions page, click the Reset to default button.
The following message appears.
Working with the Media Composer Enterprise Admin Tool and Client
2. Click OK. All definitions are reset to default values. This only resets the values in the UI. To save
these changes for the selected Group or User, press Save Definitions.
Creating, Saving and Deploying User and Site Settings You can create, save and deploy User and Site Settings to Avid Media Composer Settings.
To create, save and deploy User and Site Settings:
1. In a browser window, enter the following url.
https://(your Cloud UX Server name)/admin/app/avid-ui-media-composer-admin-app
2. Enter your MediaCentral | Cloud UX User name and password.
3. Click to open the Snapshot options.
4. Enable the “Can export Settings from MC|E” option.
5. Click Save Definitions.
6. Launch Media Composer, then select File > Settings.
7. Make any desired changes to your User or Site Settings.
Working with the Media Composer Enterprise Admin Tool and Client
8. While the Settings window is still open, select File > Save Settings to make sure the settings are
saved to disk.
9. Select File > Export MC|E Snapshot. You can export those settings together in a single file, save
just the User settings, or save just the site settings.
10. Click OK.
11. Choose a location to place the snapshot file. Provide a file name that will help you remember the
settings.
12. Click Save.
13. In the Media Composer Enterprise Admin Tool, click the General Settings gear icon.
Click the Snapshots tab to open the list of snapshots.
Working with the Media Composer Enterprise Admin Tool and Client
14. Click the + button.
15. Locate the snapshot file you exported from Media Composer.
16. Click OK.
> **Note:** In the Snapshot section of the Media Composer Definitions pane, if the snapshot selected in the top
dropdown menu contains both User and Site Settings, nothing will be available in the second dropdown menu.
Working with the Media Composer Enterprise Admin Tool and Client
17. You can now assign the snapshot(s) to individual users or groups by selecting the user or group
and enabling “Provide MC|E Settings Snapshot” and selecting the snapshot name from the pulldown menu(s).
18. Click Save Definitions.
If the applied Settings Snapshot was a combined User and Site Settings snapshot from a previous version, then when the specified user launches Media Composer Enterprise, if there is not already a User profile with the same name as the User settings being applied, then the new User settings name will be created and by default will be selected in the User Profile field in the Project Window.
If the applied Settings Snapshots were created in Media Composer 2020.4 or later, then these will only be applied the first time the user launches Media Composer with these new Settings Snapshots. If the user makes User and/or Site Settings changes and then relaunches Media Composer with the same previous Settings Snapshots in place, the user's settings will not be overwritten by Media Composer Enterprise.
Limiting the Send To Playback Targets You can limit the number of Send to Playback targets in the Media Composer Transfer menu.
Working with the Media Composer Enterprise Admin Tool and Client To limit the Send to Playback targets:
1. In the Media Composer Enterprise Admin Tool, click the General Settings gear icon.
Click the Send to Playback tab.
Working with the Media Composer Enterprise Admin Tool and Client
2. You can click the Add Server button to add a server to the list. Once you add a server, the targets
for that server appear in the Target column. Click or shift click to select the targets you want to appear in Media Composer and click + at the bottom the Target column to move them to the Enabled column.
> **Note:** Pressing the + at the bottom of the Server pane will add all of the selected server's targets to the
Enabled pane.
3. If you select a server that uses studio syntax (e.g. myserver[3]), it is expected behavior for no
Targets to appear. To add this server to the Enabled pane, press the + icon at the bottom of the Server pane.
4. Click the STP Profile menu and name the Profile.
5. Click Close to close the General Settings.
6. Select the user you want to limit the Send to Playback targets.
7. Open the Send to Playback options.
Working with the Media Composer Enterprise Admin Tool and Client
8. Enable STP Profile and select the profile you created limiting the targets.
9. Click Save Definitions.
When the user selects the Send To Playback option from the Media Composer Transfer menu, the limited list will appear.
Working with Roles Using the Media Composer Enterprise Admin Tool, you can use the Roles feature to create Media Composer definitions that can be saved by name and made available for users and groups. This allows you to limit what a user or a group of users can do. There is a factory default Role named Producer that is provided as a Role and is not editable.
Working with the Media Composer Enterprise Admin Tool and Client To create a new Role based on the Producer default:
1. Select the Roles tab.
The default Role is set to Producer.
2. Make changes by selecting or deselecting definition options (Media Composer options,
Functions, Formats, etc).
As soon as you make changes, Role name changes to Producer.01 in italics to show that it has not been saved yet.
3. You can either Save the Role using the existing Producer.01 name by selecting Save from the
Roles menu, or select Save As from the Roles menu and enter a new name.
4. Click OK. The new custom Role appears in the Role pulldown menu.
Working with the Media Composer Enterprise Admin Tool and Client To apply Roles to an existing user:
1. Select the existing user.
2. Open the Roles option under the existing user.
3. Click the + button under the Enabled box.
A list of existing Roles appears.
If the “Allow custom definitions” checkbox is enabled, then the user’s custom definitions will be available for use when launching the Media Composer client.
4. Select the Role or Roles you want to assign to the user.
5. Click Close.
6. Click Save Definitions.
When the user launches Media Composer, if they have more than one set of definitions available to them (custom user definitions and/or Roles), a “Choose MC|E Definitions” dialog will be presented on launch. If only one set of definitions has been specified for this user, no dialog will be presented on launch and the specified definitions will be automatically used.
Working with the Media Composer Enterprise Admin Tool and Client Examples of Customizable Features The following graphics provide a sample of the features that you can customize with Media Composer Enterprise.
Working with the Media Composer Enterprise Admin Tool and Client Working with the Media Composer Enterprise Admin Tool and Client Working with the Media Composer Enterprise Admin Tool and Client Working with the Media Composer Enterprise Admin Tool and Client Working with the Media Composer Enterprise Admin Tool and Client Scripts to Change Servers Perform the following steps to set or change which Admin Tool server and/or optional NEXIS system are used. This might be helpful if you need to reset either of these values or if they were not set during the initial installation of Media Composer Enterprise.
(Windows) To allow scripts to run:
1. From the Start menu, type the following in the search text box and press Enter:
PowerShell
2. When Windows PowerShell appears in the search results, right click PowerShell and select Run
as Administrator.
3. On the PowerShell command line, type the following and press Enter:
cd "C:\Program Files\Avid\Avid Media Composer\Media Composer Enterprise"
4. On the PowerShell command line, type the following and press Enter:
powershell -executionpolicy unrestricted .\AMCEAdminToolEnvVar-PC.ps1
5. In the first field of the "Media Composer | Enterprise Admin Tool" dialog box that appears, type
the full host name or IP address of the Admin Tool server.
Working with the Media Composer Enterprise Admin Tool and Client
6. If you want to use Media Composer Definitions based on users' NEXIS usernames, check the
box for "Use NEXIS Client User Name to define Media Composer."
7. In the last field, type the case-sensitive NEXIS system name (not the IP address). This is the
NEXIS system that users will log onto via Avid NEXIS Client Manager before running Media Composer.
8. Press OK.
The host name(s) will be set successfully.
9. Restart the computer for these variables to take effect.
(Mac) To allow scripts to run:
1. Open your Applications folder.
2. Open Utilities and double-click Terminal.
3. On the terminal command line, type:
cd "/Applications/Avid Media Composer/Media Composer Enterprise"
4. On the terminal command line, type:
sudo bash ./AMCEAdminToolEnvVar-Mac.sh
5. Enter your macOS system password if prompted.
6. In the first "Media Composer | Enterprise Admin Tool" dialog box that appears, enter the full
host name or IP address of the Admin Tool server and press OK.
Working with the Media Composer Enterprise Admin Tool and Client
7. In the second dialog box that appears, you are asked, "Do you want to use NEXIS Client User
Name?" Press Yes if to want to use Media Composer Definitions based on users' NEXIS usernames.
8. If you pressed Yes to use NEXIS users' Definitions, a third dialog box will appear. Type the case-
sensitive NEXIS system name (not the IP address) and press OK. This is the NEXIS system that users will log onto via Avid NEXIS Client Manager before running Media Composer.
The host name(s) will be set successfully.
9. Restart the computer for these variables to take effect.
3 Troubleshooting The following main topics are described in this chapter:
Troubleshooting the Media Composer | Enterprise Admin Tool and Client The following information relates to troubleshooting the Media Composer Enterprise Admin Tool and Client.
General (cid:129) IMPORTANT: Troubleshooting is most effective if the Media Composer Enterprise Admin Tool’s health is first verified before jumping to a later troubleshooting section.
- If Media Composer can launch, then follow the later 2 bullet points in this General section, which describe how to access info in the Media Composer console and Help dialog.
- Test that the Admin Tool is working by following the steps in the Admin Tool troubleshooting section.
- Test that the Media Composer client is configured correctly by following the steps in the Media Composer Client troubleshooting section.
(cid:129) If Media Composer is not responding as expected after making and saving changes in the Admin Tool for the Media Composer user, open the Media Composer console (Tools->Console) and scroll to the very top to read any logging comments from MC|E.
(cid:129) In the About box (Avid Media Composer->About Avid Media Composer), click on the Configuration tab and scroll to the “Customize MC features info” section to see what features are configured, if any.
Admin Tool (cid:129) If there is difficulty accessing the Admin Tool server from the browser, use a browser supported by the version of Cloud UX where the Admin Tool resides. Historically, Google Chrome has been the only supported browser on both Mac and Windows. Check in the Browsers section of the compatibility chart for the Cloud UX version that is installed. Check in the Qualified Products section to verify the compatible versions of Avid Media Composer. http:// resources.avid.com/SupportFiles/Attachments/MediaCentral_Compatibility_Matrix.pdf (cid:129) /admin must be at the end of the URL, or Cloud UX will not show the Admin Tool Icon. A more complete URL ending is /admin/app/avid-ui-media-composer-admin-app (cid:129) After making changes in the Admin Tool, the Save Definitions button must be pressed for the change to persist and to be available to Media Composer.
(cid:129) To verify that the Admin Tool data persists, try unchecking a box in the Admin Tool’s rightmost pane. Press Save Definitions. Refresh the page. Verify that the box remains unchecked. Failure means that there is an Admin Tool service or database issue. If so, try deleting the Admin Tool service pod in Kubernetes, wait until it reloads, and try again.
Troubleshooting the Media Composer | Enterprise Admin Tool and Client Media Composer Client (cid:129) Security features in Media Composer | Enterprise - Before any single user is controlled on the system, Media Composer can run under the Enterprise license without MC|E specific security checks. This allows other Media Composer features to run that require the Enterprise license but do not depend on the Media Composer Enterprise Admin Tool.
- Once any Media Composer user has been controlled by Media Composer Definitions, however, that system will enable security features to detect tampering and prevent Media Composer from launching.
- This means that once any user on the system is controlled by Media Composer Definitions, then all users on the system must be controlled by Media Composer Definitions.
- Tampering includes manually altering or removing files in the user’s Media Composer | Enterprise folder, which may trigger a security shutdown of Media Composer.
- For more information on how to verify that a specific Media Composer user can be controlled by the MC|E Admin Tool, please see the OS User section and then return here for further security troubleshooting.
- Media Composer may launch with a security dialog saying that “Media Composer | Enterprise is not able to launch. Please contact your administrator or reconnect to your facility network and shared storage.” * This can happen if Media Composer was configured to use the Media Composer Definitions of a NEXIS username but the Admin Tool server is down or inaccessible and this user was never controlled by the Admin Tool on this machine before.
* This can also happen if the user forgot to log on to the NEXIS server before launching Media Composer.
* Please see the AVID_MC_ADMIN_NEXIS_SYSTEM troubleshooting section for more details about Media Composer Definitions based on NEXIS usernames.
* Please also step through the rest of the Media Composer Client troubleshooting section.
- Media Composer may launch with a security dialog saying that “Media Composer | Enterprise is not able to launch. Please contact your administrator or reconnect to your facility network.” Notice that nothing is mentioned about shared storage in this dialog.
*This can happen if Media Composer was configured to use the Media Composer Definitions of a user’s OS login shortname but the Admin Tool server is down or inaccessible and this user was never controlled by the Admin Tool on this machine before.
*Please step through the rest of the Media Composer Client troubleshooting section, ignoring the AVID_MC_ADMIN_NEXIS_SYSTEM troubleshooting section.
- Security can be triggered when launching Media Composer if no Media Composer Definitions are returned for the user and if there are also no Media Composer Definitions saved on disk from a previous successful launch of Media Composer that did receive Media Composer Definitions for this user. This can happen if:
*The username is not listed in the Admin Tool.
*The username is listed in the Admin Tool but does not have any Media Composer Definitions AND belongs to a group that also has no definitions.
Troubleshooting the Media Composer | Enterprise Admin Tool and Client *The username is listed in the Admin Tool but does not have any Media Composer Definitions AND belongs to multiple groups, one of which has no definitions. This configuration is currently undefined, so either limit this user’s membership to a single group that has definitions or save definitions specifically for this user. A user’s definitions always take precedence over any group’s definitions.
(cid:129) The client machine running Media Composer must have network or internet connection to access the Admin Tool server.
(cid:129) Media Composer must have an MC|Enterprise license, which is visible in the splash screen and About box.
(cid:129) After installing Media Composer with a Media Composer Enterprise configuration, the machine must be restarted for the environment variables to become accessible.
(cid:129) Media Composer must be relaunched after any changes are made in the Admin Tool for the Media Composer user.
(cid:129) AVID_MC_ADMIN_HOST - Verify that a value is set.
- The value must be the same as the Admin Tool host. Do not include https:// before the value.
Example values are: server.company.com or 123.45.67.89 - A reboot is required on the PC or a log out on the Mac for the environment variable to be available for use by Media Composer.
- Make sure that the Admin Tool with the same hostname/IP as the value set in AVID_MC_ADMIN_HOST can be accessed via a web browser on the machine running Media Composer. If not, this may indicate that there is a network issue that needs to be resolved.
- The Admin Tool server must be running on Cloud UX 2019.6 or later, or communication will fail.
- It might be necessary to use the long host name (example: server.company.com) instead of the short name (example: server) if the Media Composer machine is not in the same domain or subnet as the server.
- It might be necessary to use the numeric IP address (example: 123.45.67.89) instead of the host name if there are nameserver issues.
(cid:129) AVID_MC_ADMIN_NEXIS_SYSTEM - This value should only be set if you wish to use Media Composer Definitions based on users' NEXIS usernames. If you are expecting to use their OS user names, then delete AVID_MC_ADMIN_NEXIS_SYSTEM and restart the system.
- If you do wish to use Media Composer Definitions based on users' NEXIS user names, then verify that this is the case-sensitive NEXIS server name that the Media Composer user will log onto via Avid NEXIS Client Manager on the same machine.
Troubleshooting the Media Composer | Enterprise Admin Tool and Client - Verify that the Media Composer user has logged onto this server via Avid NEXIS Client Manager before launching Media Composer. Continuous NEXIS connection is not necessary, just that this user was the last person to log on to the NEXIS server. The case- sensitive name of the user who most recently logged onto the NEXIS server is the name that will be used to receive Media Composer Definitions from the MC|E Admin Tool.
(cid:129) OS User - If Media Composer Definitions are based on users' OS login shortnames, then the Media Composer user must have logged onto the OS using the same identity as one that also exists in the middle pane of the Admin Tool server. If Media Composer Definitions are based on users' NEXIS login names, then this name must also exist in the middle pane of the Admin Tool server.
- The user’s alias (example: jdoe), not the Display Name (example: John Doe), is case- sensitive in the MC|E database, and it is the alias that is used to apply Admin Tool definitions to Media Composer for the logged-on OS user. The same is true with NEXIS usernames.
- The user folder cannot be read-only, or the required MC|E files won’t be written.
Example PC user folder: C:\Users\ jdoe Example Mac user folder: /Users/ jdoe - An admin must have previously saved definitions in the Admin Tool for this user or a group that the user belongs to, or the Admin Tool service will have no definitions to return for that user.
- If definitions are saved for a group that the user belongs to, the group definitions will be applied unless definitions were also saved specifically for that user. In this case, the user- specific definitions will be applied.