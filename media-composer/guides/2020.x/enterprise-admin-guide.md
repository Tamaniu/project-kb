---
product: media-composer
product-area: editing
version: "2020.x"
release-date: 01/01/2020
doc-type: enterprise-admin-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
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
Using This Guide This document provides instructions for installing, configuring and using Avid Media Composer | Enterprise. Avid recommends that you read all the information in this document before installing or using the corresponding software release.
The following documents are referenced in this guide:
• Avid MediaCentral | Cloud UX Installation Guide — The Enterprise Admin Tool is hosted by a MediaCentral | Cloud UX system. Some sections of this guide refer to the Cloud UX Install Guide for additional information.
This document is available on the Avid Knowledge Base at:
http://avid.force.com/pkb/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation (cid:129) MediaCentral | Editorial Management Installation Guide This document is available on the Avid Knowledge Base at:
http://avid.force.com/pkb/articles/en_US/readme/MediaCentral-Editorial-Management-v2020- Documentation Revision History Date Revised Changes Made May, 2020 Updated graphics and procedures.
May, 2019 Initial Release Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action
> **Note:** A note provides important related information, reminders, recommendations, and
strong suggestions.
w A warning describes an action that could cause you physical harm. Follow the guidelines in this document or on the unit itself when handling electrical equipment.
c A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
This symbol indicates a single-step procedure. Multiple arrows in a list indicate that you perform one of the actions listed.
If You Need Help Symbol or Convention Meaning or Action (Windows), (Windows This text indicates that the information applies only to the specified operating only), (Mac), or (Mac only) system, either Windows or macOS.
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
For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 Media Composer | Enterprise Server Installation The following main topics are described in this chapter:
(cid:129) Product Overview (cid:129) Installation Prerequisites (cid:129) MediaCentral Cloud UX Server Installation (cid:129) Working with the Kubernetes Dashboard Product Overview Media Composer | Enterprise offers administrative control to customize the Media Composer interface for specific roles and users within the production organization. Site administrators will be able to define levels of customization of Media Composer features based on user groups and individual users.
Installation Prerequisites Before you begin the installation process, you must verify that you have the following systems and minimum software versions available:
(cid:129) Avid Media Composer v2021.6 or later (cid:129) Avid MediaCentral Cloud UX with the Media Composer | Enterprise Feature Pack enabled.
To install MediaCentral Cloud UX for this release of Media Composer | Enterprise, you must have the following:
- Avid MediaCentral Cloud UX Platform ISO v2021.3.1 or later This is the primary installer package that includes the CentOS operating system and core Avid installation components.
- Avid MediaCentral Cloud UX Feature Pack ISO v2021.3.1 or later This package includes additional software to install MediaCentral Cloud UX applications on the Platform.
Server Minimum Specifications In some cases your organization might already own a MediaCentral Cloud UX server that connects to MediaCentral Production Management, Newsroom Management, or other MediaCentral modules. In these cases you must follow the minimum specifications outlined in the Avid MediaCentral | Cloud UX Hardware Guide.
MediaCentral Cloud UX Server Installation In other cases you might be integrating MediaCentral Cloud UX to enable Media Composer | Enterprise only. When deploying MediaCentral Cloud UX for this purpose, review the following minimum requirements:
(cid:129) Memory: 32 GB of RAM (cid:129) Processors: One or more CPUs with a total of 8 cores or better (cid:129) Storage: 256 GB or better for the sda volume (operating system and applications) The MediaCentral Cloud UX documentation references setup for a second volume (RAID 5). As the Media Composer | Enterprise workflow does not require you to play media through MediaCentral Cloud UX, you are not required to include a second volume (RAID 5).
If you have already purchased or plan to purchase Media Composer | Enterprise, Avid supports co- installing this product on the same MediaCentral Cloud UX server with no increase to the minimum requirements specified above.
MediaCentral Cloud UX Server Installation Media Composer | Enterprise requires that you install and configure an Avid MediaCentral | Cloud UX server or cluster to enable access to the Enterprise Admin Tool. This section includes a high-level overview of the minimum steps required to install and configure your MediaCentral Cloud UX server for use with Media Composer | Enterprise.
The following process does not include steps to configure a MediaCentral Cloud UX cluster.
If you plan to deploy a MediaCentral Cloud UX server or cluster with the intention of integrating with any of the MediaCentral modules (MediaCentral Production Management, MediaCentral Asset Management, or others), you must complete additional installation and configuration steps as detailed in the Avid MediaCentral | Cloud UX Installation Guide.
Complete the following sections of the Avid MediaCentral | Cloud UX Installation Guide to deploy your MediaCentral Cloud UX server:
(cid:129) Installation Prerequisites (recommended) This chapter describes concepts related to Linux and MediaCentral Cloud UX. It also outlines some of the prerequisite requirements for the installation, such as identifying the host name and IP address of your Cloud UX server.
(cid:129) BIOS and RAID Configuration (if applicable) If you are deploying MediaCentral Cloud UX on qualified hardware, review this chapter to configure your server’s BIOS settings. For more information on Avid qualified hardware, see the Avid MediaCentral | Cloud UX Hardware Guide.
(cid:129) Software Installation and Configuration This chapter includes the processes to deploy CentOS and the MediaCentral Platform. It also includes procedures on how to log in to CentOS for the first time and how to access the MediaCentral Cloud UX user interface. Complete the following sections of this chapter:
- Verifying Disk Partitioning - MCUX Software Deployment If your server is configured with only one disk volume, you can bypass the process for “Configuring the Installation Destination in the CentOS Install Wizard”.
Working with the Kubernetes Dashboard - Logging in to CentOS for the First Time - Additional Network Configuration As network connectivity and proper host resolution are essential to a successful installation, you must complete the sections for “Verifying the Hostname and Network Connectivity” and “Configuring DNS”. The process for “Renaming the Primary Network Interface” only applies to MediaCentral Cloud UX clusters.
(cid:129) Running the Post-Install Setup Scripts - Running the Cloud UX Setup Script - Creating a Site Key - Creating Certificate Files - Deploying the Secure Sockets Layer Certificates - Configuring an Authentication Provider — Media Composer | Enterprise requires that you either be an Active Directory user or you can use Avid NEXIS as your authentication provider.
If you are running MediaCentral | Cloud UX, see the Avid MediaCentral | Cloud UX Installation Guide for details on setting Active Directory user.
If you are running MediaCentral | Editorial Management, see “Selecting an Installation Package” topic in the MediaCentral | Editorial Management Installation Guide and follow the steps in “Configuring with the MediaCentral Editorial Management Configuration Tool” for details on setting up your Avid NEXIS as your authentication provider.
- Configuring Avid NEXIS API Services - Enabling System Monitoring - (optional) Deploying the Kubernetes Dashboard - Running the Feature Pack Deployment Script When deploying the feature packs, you must answer Yes to the question about the Media Composer | Enterprise feature pack. When the script displays the final “Feature packs” prompt (additional feature packs common to all installations), you must answer Yes.
> **Note:** In the event that you are deploying both Media Composer | Enterprise and Media Composer |
Distributed Processing, you must also answer Yes at the Media Composer Distributed Processing prompt.
Working with the Kubernetes Dashboard Kubernetes® Docker® MediaCentral Cloud UX is built in a managed container structure.
MediaCentral Cloud UX includes one Kubernetes managed UI plugin and one service. The UI plugin is contained in the avid-ui-media-composer-admin-app-uidpl pod, and the service is contained in avid-media-composer-admin-service-mce.
MediaCentral Cloud UX administrators can use the Kubernetes Dashboard to monitor the health of the Cloud UX system, gather logs, and restart Pods.
If you do not see the Enterprise Admin Tool in the MediaCentral Cloud UX user interface after installing and licensing the application, you can attempt to delete the avid-plugins-list-core-app pod. After Kubernetes recreates the pod, refresh the MediaCentral Cloud UX user interface.
Working with the Kubernetes Dashboard For more information, see “Understanding Docker Containers and Kubernetes” and “Working with Kubernetes” in the Avid MediaCentral | Cloud UX Installation Guide.
2 Media Composer | Enterprise Workflow The following main topics are described in this chapter:
(cid:129) Media Composer | Enterprise Prerequisites (cid:129) Working with Media Composer | Enterprise Media Composer | Enterprise Prerequisites Review the following information that relates to Media Composer | Enterprise workflows.
Media Composer Licensing In order to use Media Composer | Enterprise your Media Composer must be licensed for:
(cid:129) Media Composer | Enterprise User Accounts The Media Composer | Enterprise workflow requires you to sign in to the MediaCentral Cloud UX server. Your MediaCentral Cloud UX server must be integrated with Windows Active Directory and all Media Composer users must be included in User Groups that have a valid Client License assigned to them. For more information about these processes, see the Avid MediaCentral Cloud UX Installation Guide.
The Windows Active Directory requirement is accurate for customers who are accessing the Admin Tool from the full Cloud UX installation. However, if you have installed using the MC|EM installer, then that Admin Tool config could be authenticated by either Windows Active Directory or NEXIS authentication.
Working with Media Composer | Enterprise Use the following procedures to setup Media Composer | Enterprise. You must install Media Composer as an Enterprise installation. Then you must connect to MediaCentral Cloud UX to access the Enterprise Admin Tool.
To install Media Composer as a Media Composer | Enterprise Administrator:
1. Install the Media Composer application.
During the install process, the following window will appear.
Working with Media Composer | Enterprise Windows Installer macOS Installer
2. Select the (Windows) This is Media Composer | Enterprise installation checkbox or
(macOS) Media Composer | Enterprise Scripts.
3. Enter the Enterprise Hostname or IP Address.
4. If you have configured Avid NEXIS as your Authentication Provider, enable Use NEXIS Client
User Name to define Media Composer.
5. Continue with the installation and restart your system when prompted.
Working with Media Composer | Enterprise To connect to MediaCentral Cloud UX and access the Enterprise Admin Tool:
1. In a browser window, enter the following url.
https://(your Cloud UX Server name)/admin/app/avid-ui-media-composer-admin-app The following window will appear:
2. If you installed the Admin Tool using the Media Composer | Enterprise MC|EM (MediaCentral |
Editorial Management) Installer and selected NEXIS authentication, enter your NEXIS user name and password. Otherwise, you must be an LDAP administrator to sign in. Enter the LDAP Admin user name and password.
3. Click Sign In.
The following window opens.
Working with Media Composer | Enterprise Top: Admin Tool icon, Panel on Left: List of User Groups, Center Panel: List of users in selected User Group, Right Panel: Media Composer Definitions.
To customize Media Composer | Enterprise users:
1. Select a User Group in the left panel.
2. Select the User in the center panel that you want to assign specific features of the Media
Composer user interface.
> **Note:** You can choose to make selections for an entire group or for individual users.
3. In the Definitions panel on the right, select and or deselect which features of Media Composer to
which you want the group or user to have access. For example, you can select which tools you want a specific group or individual user to have access to in Media Composer. For examples of customizable features, see Examples of Customizable Features.
Working with Media Composer | Enterprise
4. After making the selections for the group or individual user, click Save Definitions.
Working with Media Composer | Enterprise
5. Continue assigning features for each user and/or group.
When the Media Composer user launches their editing application, the user interface will display the features that have been enabled for that user. If no features have been specified for that user, then the features specified for the User Group they belong to will be used instead. If no features have been specified for the User Group they belong to, then the user will have access to all the features available in Media Composer | Ultimate.
To reset all definitions to default:
1. In the Media Composer | Enterprise Definitions page, click the Reset to default button.
The following message appears.
2. Click OK. All definitions are reset to default values. This only resets the values in the UI. To save
these changes for the selected Group or User, press Save Definitions.
Creating, Saving and Deploying User and Site Settings You can create, save and deploy User and Site Settings to Avid Media Composer | Enterprise Settings.
To create, save and deploy User and Site Settings:
1. In a browser window, enter the following url.
https://(your Cloud UX Server name)/admin/app/avid-ui-media-composer-admin-app
2. Enter your MediaCentral | Cloud UX User name and password.
3. Click to open the Snapshot options.
Working with Media Composer | Enterprise
4. Enable the “Can export Settings from MC|E” option.
5. Click Save Definitions.
6. Launch Media Composer, then select File > Settings.
7. Make any desired changes to your User or Site Settings.
8. While the Settings window is still open, select File > Save Settings to make sure the settings are
saved to disk.
9. Select File > Export MC|E Snapshot. You can export those settings together in a single file, save
just the User settings, or save just the site settings.
Working with Media Composer | Enterprise
10. Click OK.
11. Choose a location to place the snapshot file. Provide a file name that will help you remember the
settings.
12. Click Save.
13. In the Media Composer | Enterprise Admin Tool, click the General Settings gear icon.
Click the Snapshots tab to open the list of snapshots.
Working with Media Composer | Enterprise
14. Click the + button.
15. Locate the snapshot file you exported from Media Composer.
16. Click OK.
> **Note:** If the snapshot contains both User and Site Settings, then nothing will be available in the second
dropdown. If the top dropdown contains only User or Site Settings, then the second dropdown will only show Site or User Settings snapshots, correspondingly.
Working with Media Composer | Enterprise
17. You can now assign the snapshot(s) to individual users or groups by selecting the user or group
and enabling “Provide MC|E Settings Snapshot” and selecting the snapshot name from the pulldown menu(s).
18. Click Save Definitions.
If the applied Settings Snapshot was a combined User and Site Settings snapshot from a previous version, then when the specified user launches Media Composer | Enterprise, if there is not already a User profile with the same name as the User settings being applied, then the new User settings name will be created and by default will be selected in the User Profile field in the Project Window.
If the applied Settings Snapshots were created in Media Composer 2020.4 or later, then these will only be applied the first time the user launches Media Composer with these new Settings Snapshots. If the user makes User and/or Site Settings changes and then relaunches Media Composer with the same previous Settings Snapshots in place, the user's settings will not be overwritten by Media Composer | Enterprise.
Limiting the Send To Playback Targets You can limit the number of Send to Playback targets in the Media Composer Transfer menu.
Working with Media Composer | Enterprise To limit the Send to Playback targets:
1. In the Media Composer | Enterprise Admin Tool, click the General Settings gear icon.
Click the Send to Playback tab.
Working with Media Composer | Enterprise
2. You can click the Add Server button to add a server to the list. Once you add a server, the targets
for that server appear in the Target column. Click or shift click to select the targets you want to appear in Media Composer and click + at the bottom the Target column to move them to the Enabled column.
> **Note:** Pressing the + at the bottom of the Server pane will add all of the selected server's targets to the
Enabled pane.
3. Click the STP Profile menu and name the Profile.
4. Click Close to close the General Settings.
5. Select the user you want to limit the Send to Playback targets.
6. Open the Send to Playback options.
Working with Media Composer | Enterprise
7. Enable STP Profile and select the profile you created limiting the targets.
8. Click Save Definitions.
When the user selects the Send To Playback option from the Media Composer Transfer menu, the limited list will appear.
Examples of Customizable Features The following graphics provide a sample of the features that you can customize with Media Composer | Enterprise.
Working with Media Composer | Enterprise Working with Media Composer | Enterprise Working with Media Composer | Enterprise Working with Media Composer | Enterprise Working with Media Composer | Enterprise Working with Media Composer | Enterprise Working with Media Composer | Enterprise Working with Media Composer | Enterprise Working with Media Composer | Enterprise Enabling Scripts Perform the following in order to enable scripts to run on your system. This might be helpful if you need to reset the host name or if the host name was not set during the initial installation of Media Composer | Enterprise.
(Windows) To allow scripts to run:
1. From the Start menu, enter Powershell in the search text box.
2. Right click Powershell and select Run as Administrator.
3. Enter cd "C:\Program Files\Avid\Avid Media Composer\Media Composer Enterprise"
4. Enter powershell -executionpolicy unrestricted .\AMCEAdminToolEnvVar-PC.ps1
5. In the Media Composer | Enterprise Admin Tool window, enter the host name.
The host name will be set successfully.
(Mac) To allow scripts to run:
1. Open your Applications folder.
2. Open Utilities and double-click Terminal.
3. Enter "cd /Applications/Avid Media Composer/Media Composer Enterprise"
Working with Media Composer | Enterprise
4. Enter sudo bash ./AMCEAdminToolEnvVar-Mac.sh
5. Enter your Mac system password if prompted.
6. In the Media Composer | Enterprise Admin Tool window, enter the host name.
The host name will be set successfully.
3 Troubleshooting The following main topics are described in this chapter:
Troubleshooting Media Composer | Enterprise The following information relates to Media Composer | Enterprise troubleshooting.
General (cid:129) If Media Composer is not responding as expected after making and saving changes in the Admin Tool for the Media Composer user, open the Media Composer console (Tools->Console) and scroll to the very top to read any logging comments from MC|E.
(cid:129) In the About box (Help->About Avid Media Composer), click on the Configuration tab and scroll to the “Customize MC features info” section to see what features are configured, if any.
Admin Tool (cid:129) If there is difficulty accessing the server, use a browser supported by Cloud UX 2019.6 or later.
Check in the Browsers section of the compatibility chart for the Cloud UX version that is installed. Check in the Qualified Products section to verify the compatible versions of Avid Media Composer. http://resources.avid.com/SupportFiles/Attachments/ MediaCentral_Compatibility_Matrix.pdf (cid:129) /admin must be at the end of the URL, or Cloud UX will not show the Admin Tool Icon. A more complete URL ending is /admin/app/avid-ui-media-composer-admin-app (cid:129) After making changes in the Admin Tool, the Save Definitions button must be pressed for the change to persist and to be available to Media Composer.
(cid:129) To verify that the Admin Tool data persists, try unchecking a box in the Admin Tool’s rightmost pane. Press Save Definitions. Refresh the page. Verify that the box remains unchecked. Failure means that there is an Admin Tool service or database issue. If so, try deleting the Admin Tool service pod in Kubernetes, wait until it reloads, and try again.
Media Composer Client (cid:129) The client machine running Media Composer must have network or internet connection to access the Admin Tool server.
(cid:129) Media Composer must have an MC|Enterprise license, which is visible in the splash screen and About box.
(cid:129) Media Composer must be relaunched after any changes are made in the Admin Tool for the Media Composer user.
(cid:129) AVID_MC_ADMIN_HOST - Verify that a value is set.
- The value must be the same as the Admin Tool host. Do not include https:// before the value.
Example values are: server.company.com or 123.45.67.89 Troubleshooting Media Composer | Enterprise - A reboot is required on the PC or a log out on the Mac for the environment variable to be available for use by Media Composer.
- Make sure that the Admin Tool with the same hostname/IP as the value set in AVID_MC_ADMIN_HOST can be accessed via a web browser on the machine running Media Composer. If not, this may indicate that there is a network issue that needs to be resolved.
- The Admin Tool server must be running on Cloud UX 2019.6 or later, or communication will fail.
- It might be necessary to use the long host name (example: server.company.com) instead of the short name (example: server) if the Media Composer machine is not in the same domain or subnet as the server.
- It might be necessary to use the numeric IP address (example: 123.45.67.89) instead of the host name if there are nameserver issues.
(cid:129) OS User - The Media Composer user must have logged onto the OS using the same identity as one that also exists in the middle pane of the Admin Tool server.
- The user’s alias (example: jdoe), not the Display Name (example: John Doe), is case- sensitive in the MC|E database, and it is the alias that is used to apply Admin Tool definitions to Media Composer for the logged-on OS user.
- The user folder cannot be read-only, or the required MC|E files won’t be written.
Example PC user folder: C:\Users\ jdoe Example Mac user folder: /Users/ jdoe - An admin must have previously saved definitions in the Admin Tool for this user or a group that the user belongs to, or the Admin Tool service will have no definitions to return for that user.
- If definitions are saved for a group that the user belongs to, the group definitions will be applied unless definitions were also saved specifically for that user. In this case, the user- specific definitions will be appliedhost name if there are nameserver issues.