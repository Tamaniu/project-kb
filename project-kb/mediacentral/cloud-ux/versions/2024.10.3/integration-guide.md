---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2024.10.3"
release-date: 01/10/2024
doc-type: integration-guide
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid MediaCentral | Panel for ENPS ® Version 2024.10.3 ReadMe Avid recommends that you read all the information in this ReadMe thoroughly before installing or using any new software release.
This document describes the Avid MediaCentral | Panel for ENPS. Since this software might be supported with multiple versions of Avid MediaCentral | Cloud UX or ENPS, some of the illustrations, menus, or features described in this document might not match your version of software. Visit the Avid Knowledge Base to obtain more information on your specific version of MediaCentral Cloud UX:
http://avid.force.com/pkb/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation For compatibility information, see the “Compatibility Matrix for MediaCentral | Cloud UX” on the Avid Knowledge Base:
http://avid.force.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts For documentation related to the Associated Press News Production System (AP ENPS), see:
http://aphelp.ap.org/.
Revision History Date Revised Changes Made March 7, 2025 First publication Contents Installing Trusted Certificates . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10 Working with the MediaCentral Cloud UX Panel . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11 Legal Notices. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 22 About the MediaCentral | Panel for ENPS About the MediaCentral | Panel for ENPS ENPS users can now access the power of the Avid MediaCentral Platform from within the newsroom system’s user interface through a dedicated panel, the Avid MediaCentral Panel for ENPS. This plug- in panel enables access to assets stored in MediaCentral modules such as MediaCentral | Production Management, MediaCentral | Asset Management, and others, and allows users to create and edit Production Management sequences which can be attached to ENPS stories as MOS item references.
This guide references elements of the MediaCentral Cloud UX user interface, such as the Fast Bar, the Asset Editor, the Browse and Search apps, and more. Users are expected to have a good working knowledge of the MediaCentral Cloud UX software. If you need more information about these or other areas of MediaCentral Cloud UX, see the Avid MediaCentral | Cloud UX User Guide.
Obtaining the Software The MediaCentral Panel for ENPS is included in the MediaCentral Cloud UX Feature Pack ISO (mediacentral_feature_packs_<build>.iso).
The software can be downloaded from the Avid Download Center. If you have not already created an Avid.com user account, you must do so now. This Master Account enables you to sync your Avid Video Download and Avid Video Community accounts as well as gain access to the Avid Support Center.
You are also required to install and configure Maestro | News Producer MOS Gateway and Maestro | News MOS Service. These packages are included in the Avid Maestro News installer package. For more information on these products, see “Configuring Maestro News Components” on page 4.
> **Note:** Although the two components listed above are required to use the MediaCentral Panel for ENPS, a
complete installation of Avid Maestro News is not required.
> **Note:** If any required software is not available through the Download Center, contact your Avid
representative for assistance.
Limitations and Notes for Version 2024.10.3 The MediaCentral Panel for ENPS v2024.10.3 requires the following versions:
(cid:129) MediaCentral Cloud UX v2024.10.3 or newer
> **Note:** The MediaCentral Panel for ENPS is not supported with the following MediaCentral Cloud UX
versions: 2024.10, 2024.10.1, 2024.10.2.
(cid:129) MOS Gateway 3.2.7.193 or newer (cid:129) ENPS 9.5.1.1053 The following workflows are not supported with the MediaCentral Panel for ENPS:
(cid:129) Enterprise Editing (ability to create draft sequences) (cid:129) Multi-Site The ability to create and edit sequences through the Panel is limited to MediaCentral Production Management only.
Configuring the MediaCentral Cloud UX Server Configuring the MediaCentral Cloud UX Server Before ENPS users can access the MediaCentral Cloud UX panel, you must perform the following tasks on the MediaCentral Cloud UX server or cluster:
Installing the Panel for ENPS The MediaCentral Panel for ENPS is one of the feature packs included in the MediaCentral Cloud UX Feature Pack ISO. If you are installing a new MediaCentral Cloud UX system, complete the process for “Running the Feature Pack Deployment Script” in the Avid MediaCentral | Cloud UX Installation Guide to install the feature pack. If you are installing the Panel as part of a system upgrade, complete the steps outlined in the Avid MediaCentral | Cloud UX ReadMe.
In either case, you must answer yes to the NRCS Integration prompt when running the avidctl platform deploy script to install the required feature pack.
Special Note Regarding the Maestro News MOS Service The MediaCentral Panel for ENPS requires access to the Maestro News MOS Service. When installing this service, you are presented with a configuration option: BUS or REST. Whenever integrating with the Panel for ENPS, Avid recommends that you select the BUS service option and not the REST option. For more information, see “Configuring Maestro News Components” on page 4.
If you select the REST service option, you must execute the following script on the MediaCentral Cloud UX system. If you select the BUS service, you are not required to complete this process.
- Enter the following command on your single server or primary master node to execute the
configuration script:
avidctl platform config nrcs -s http://<host-server>:<port> Where the following values are used:
- <host-server>: This is the fully qualified domain name or IP address of the server that is running the Maestro News MOS Service with REST mode.
- <port>: Is the port used to communicate with this server (normally 9030 by default).
> **Note:** If you need more information about the script referenced in this process, you can use the script’s help
function by entering the following command:
avidctl platform config nrcs --help Updating the MediaCentral Cloud UX License In addition to other standard licenses such as User licenses, Platform licenses, and other, your MediaCentral Cloud UX system must include the following licenses to enable the Panel for ENPS:
(cid:129) MediaCentral | 3rd Party ENPS Your MediaCentral Cloud UX system must include one instance of this license type.
(cid:129) MediaCentral | Cloud UX Panel for ENPS You must have one Panel license for each user that connects to MediaCentral Cloud UX.
Configuring Maestro News Components For more information, see “Using the Licensing App” in the Avid MediaCentral | Cloud UX Installation Guide.
Enabling User Permissions After you install a license on your MediaCentral Cloud UX system, you must ensure that you enable the entitlement for the Panel in the User Management app. For more information, see “Group Details and Entitlements” in the Avid MediaCentral | Cloud UX Installation Guide.
Only those users who are included in groups associated with the Edit or Full license type are able to create sequences in MediaCentral Cloud UX.
Configuring Maestro News Components In addition to updates made to the MediaCentral Cloud UX server, you must install and configure two additional components on a Windows-based server or workstation: the Maestro News Producer MOS Gateway and the Maestro News MOS Service.
For more information on how to install, license, and configure this software, see the Avid Maestro | News Installation and Configuration Guide on the Avid Knowledge Base at:
https://avid.secure.force.com/pkb/articles/en_US/User_Guide/Maestro-Documentation Configuring the Maestro News Producer MOS Gateway The Maestro News Producer MOS Gateway software (Maestro MOS Gateway for short) enables communication between the MediaCentral Platform and ENPS. Prior to using the MediaCentral Panel for ENPS, you must install, license, and configure the Maestro MOS Gateway.
Communication between ENPS and the Maestro MOS Gateway is established through network ports 10540 and 10541.
> **Note:** The Maestro MOS Gateway application referenced below is not the same as the MediaCentral MOS
Gateway software that is described in the Avid MediaCentral Newsroom Management documentation. When installed, Maestro MOS Gateway appears as the “Avid MOS Gateway”.
To configure Maestro MOS Gateway:
1. If you are using MediaCentral Cloud UX v2023.12 or newer, proceed to the next step. If you are
using MediaCentral Cloud UX version which is older than 2023.12, perform the following steps:
a. Go to the plugins subdirectory in the location where MOS Gateway is installed. The default location is:
%PROGRAMFILES%\Avid\MOSGateway\3.2\plugins b. Change the file extensions of the following files from “.dll” to “ .dl_”:
- MOSGatewayCloudUXRestPlugin.dll - MOSGatewayGAMAccessRestPlugin.dll c. Change the file extensions of the following files from “.dl_” to “.dll”:
- MOSGatewayCloudUxCommunicator.dl_ - MOSGatewayGAMAccessAxPlugin.dl_
2. Launch the Maestro MOS Gateway software.
Configuring Maestro News Components When you install the application, a shortcut is placed on your desktop. If this shortcut is not present, you can locate the application in the Start menu under Avid > Maestro > MOS Gateway.
3. Click the Window menu and select the Settings option.
The MOS Gateway GUI Settings window appears.
4. Click the MOS tab and do one of the following:
- If the MOS ID setting is empty, assign a value to this setting. This value must match the ID
that you enter in both the Maestro News MOS Service and the ENPS MOS configuration settings. Example: MediaCentral.MOS
- If you already have a MOS ID value configured, take note of it for future use.
Configuring Maestro News Components
5. Click the Extensions tab and verify that the following are configured for the MediaCentral Video
Placeholder:
a. If you are using MediaCentral Cloud UX v2023.12 or newer:
- Enabled: This must be set to true.
- Host: Enter the MediaCentral Cloud UX hostname or IP address.
- Realm: This value must match the Database GUID of your MediaCentral Production Management module. You can obtain this value through the Interplay Administrator > Database Information window.
- User name: Enter the name of a MediaCentral Production Management user that has read/write access to the path that you specified for the Location value.
- Password: Enter the password for the user you entered in the previous field.
- Location: This is the path in the MediaCentral Production Management database where sequences created through the MediaCentral ENPS Panel are saved.
Example: /Projects/ENPS - Prevent Duplicates: When enabled, an error occurs when creating a new sequence or cloning an existing one if the specified name has already been used.
- Delete Sequence: MOS protocol includes a command to delete 'objects' in media servers. If your MOS application is designed with the ability to delete sequences and this value is set to true, the MOS Gateway can delete Production Management sequences.
- Omit path creation: When enabled, this option disables automatic folder creation in the asset path, improving performance in contexts with predefined, repetitive paths.
b. If you are using MediaCentral Cloud UX version older than 2023.12:
Configuring Maestro News Components - Location: This is the path in the MediaCentral Production Management database where sequences created through the MediaCentral ENPS Panel are saved.
Example: /Projects/ENPS - avid.pam: This value must match the Database GUID of your MediaCentral Production Management module. You can obtain this value through the Interplay Administrator > Database Information window.
- Delete Sequence: MOS protocol includes a command to delete 'objects' in media servers. If your MOS application is designed with the ability to delete sequences and true, the MOS Gateway can delete Production Management this value is set to sequences.
- User name: Enter the name of a MediaCentral Production Management user that has read/write access to the path that you specified for the Location value.
- Password: Enter the password for the user you entered in the previous field.
- Enabled: This must be set to true.
6. Click Apply and OK to close the MOS Gateway GUI Settings window.
Configuring the Maestro News MOS Service After installing the Maestro News MOS Service (MaestroNewsMosService_<version>.exe), you must complete the following steps to update the SystemSettings.ini configuration file. This file contains both required and optional settings that affect the operation of the Panel for ENPS.
When integrating with the Panel for ENPS, Avid recommends that you select the “ACS Bus Services” option as the Service Type when installing the Maestro News MOS Service.
To configure the Maestro News MOS Service:
1. Navigate to the following location: C:\Program Files\Avid\MaestroNewsMosService\<version>
2. Open the SystemSettings.ini file in a text editor such as Microsoft Notepad and locate the [MOS]
section of the file.
3. Edit the following required values for your environment:
- MOSID: Enter a custom name for the MOS ID. This value must match the MOS ID that you enter in both the Maestro MOS Gateway and the ENPS MOS Configuration settings.
Example: MediaCentral.MOS for this field.
- ServerEnabled: Keep the default value of true - ServerHost: Enter the IP address of the Windows system that is running the Maestro MOS Gateway.
Configuring Maestro News Components - ServerPort: Avid recommends using the default port, 5002.
4. The [Misc] section of the SystemSettings.ini file includes optional features that you can either
enable or disable to effect the operation of the panel. Configure the values for each of the following settings for either =true (enabled) or =false (disabled):
a. EditModeEnabled If enabled, the Insert button in the bottom-left corner of the Panel is replaced with a Save button when you load a sequence into the Asset Editor by either clicking the Create button in the Panel or double-clicking the MOS item in your ENPS story.
If disabled, the Insert button is always displayed.
For more information, see “Editing and Saving Sequences” on page 20.
b. CancelBtnEnabled If enabled, the Duplicate button in the bottom-left corner of the Panel is replaced with a Cancel button when you load a sequence into the Asset Editor by either clicking the Create button in the Panel or double-clicking the MOS item in your ENPS story.
If disabled, the Duplicate button is always displayed.
For more information, see “Editing and Saving Sequences” on page 20.
c. MultiInsertEnabled If enabled, the New Sequence button in the Create Sequence window is displayed. If disabled, this button is removed from the user interface.
d. DuplicateBtnEnabled If enabled, the Duplicate button in the bottom-left corner of the Panel is displayed. If disabled, this button is removed from the user interface.
e. OpenSeqDefault If enabled, the Open Sequence check box in the Create Sequence window is displayed. If disabled, this option is removed from the user interface.
f. InsertMosDefault If enabled, the Insert MOS Item check box in the Create Sequence window is displayed. If disabled, this option is removed from the user interface.
g. MaxQueueSequence If you create multiple sequences in the Insert Sequence window, this value defines the number of sequences that are processed simultaneously. Unlike the other options listed in this section, you must associate a numerical value with this option.
The following illustration shows the Insert Sequence window with four sequences. In this case the MaxQueueSequence is configured with it’s default value of 3.
Configuring the ENPS Server The first sequence is already created, the following two sequences are in-process, and the fourth sequence is waiting to be processed.
h. ShowCloseButton If enabled, the Close button is displayed in the bottom-right corner of the Panel. If disabled, this option is removed from the user interface.
5. Close and save the file.
6. Access Windows Services and Applications and restart the Avid Maestro Monitor Service to
enable the changes.
Configuring the ENPS Server After you complete the steps to update the MediaCentral Cloud UX system, you must configure a setting on the ENPS server to enable it to connect to your instance of MediaCentral Cloud UX.
To configure the ENPS server:
1. Sign in to the ENPS client as an administrator and select Options > System Maintenance from
the main menu.
Alternatively, you can launch the ENPS System Maintenance application as a separate application if it is installed on your local workstation.
2. Select the MOS Configuration option from the list of Settings.
3. Click the “Click here to add a new row” area of the MOS Configuration window to add a new
row.
4. Enter values for the following fields, pressing Enter after each to commit the change:
Name Description Example Address Enter the MOS ID for the MediaCentral Cloud UX Panel. When MediaCentral.MOS entering a value, Avid recommends that you end the ID with a .MOS extension. This value must match the ID that you entered in both the Maestro MOS Gateway and the Maestro News MOS Service.
Description Enter a user-friendly name for the MOS plug-in. This value is MediaCentral Cloud UX Panel displayed when users access the MOS plug-in menu from the ENPS Navigation bar.
IP Enter the IP address of the playout device (Command, 3rd party 192.168.10.10 studio playout or automation).
Active X Enter ENPSHTMLHost for this value. ENPSHTMLHost Installing Trusted Certificates Name Description Example Program Consult with your ENPS administrator to verify the desired value ENPSMOS for this field.
Default Settings Enter the fully qualified domain name of your MediaCentral Cloud UX server or cluster, formatted as a URL.
If you have installed multiple copies of the Maestro News MOS Service, you must add the realm value to the end of the URL to identify the specific instance of the service:
URL=https://wavd-mcux.wavd.com/ URL=https://<FQDN>/nrcs/?realm=<value> nrcs/?realm=ENPS If you have only a single instance of the Maestro News MOS Service installed, use the following format: or URL=https://wavd-mcux.wavd.com/ URL=https://<FQDN>/nrcs/ nrcs/ If you do not specify a realm, the default value of global is used.
MOS Version Enter 2.8.2 for this value. 2.8.2 Local DragDrop Enter for this value. Off Off
5. Click the Save button to save the settings.
Although the changes are saved to the ENPS server and activated immediately, any user that is signed in to the ENPS client must sign out and sign back in again to access the Panel.
6. Close System Maintenance.
Installing Trusted Certificates The MediaCentral Panel for ENPS includes a version of Chromium, the source code used to create the Google Chrome browser. As a result, the panel works much like a web browser.
Certificates are small data files that web browsers use to verify the identity of a system for enhanced security. When you connect to a server that has a valid certificate, you are connected to the system immediately. If your client workstation does not have a valid certificate, you might be blocked from accessing the MediaCentral Cloud UX user interface from within ENPS. Instead, you might see a “Login failed” message when you try to sign in to the Avid MediaCentral Cloud UX panel.
You can resolve this issue by installing a valid, trusted certificate into your local client workstation.
For more information, see “Importing SSL Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
Working with the MediaCentral Cloud UX Panel Working with the MediaCentral Cloud UX Panel The following topics provide information about how to work with the MediaCentral Panel for ENPS:
(cid:129) Panel Basics (cid:129) Signing In and Signing Out of the Panel (cid:129) Understanding the MediaCentral Cloud UX Layout (cid:129) Creating a Sequence (cid:129) Adding a Sequence to an ENPS Story (cid:129) Loading a Sequence From an ENPS Story (cid:129) Editing and Saving Sequences (cid:129) Duplicating a Sequence (cid:129) Sending to Playback Panel Basics The MediaCentral Cloud UX panel includes many of the same controls that are found in other ENPS windows. The following table provides additional information on these controls.
Button Name Description or Detach or Reattach The Detach button releases the panel from its docked position in the user interface and converts it to a floating window that can be moved independently from the other areas of the UI.
The Reattach button moves the window back to its original position as a panel that is docked to a specific position in the UI.
or Maximize or Split The Maximize button displays the panel in full screen mode. Your Horizontal Layout configuration and your Notifications settings (hidden or displayed) might affect the amount of space used for full screen mode.
The Split Horizontal button reverts the window to its former size.
Close This button closes the MediaCentral Cloud UX panel. If you close the panel, you are not signed-out of the MediaCentral session.
Panel Context Menu Introduced in ENPS v9, context menus provide you with quick access to common actions such as Save, Print, and more. This version of the MediaCentral Panel for ENPS does not use the context menu.
In addition to the controls described above, you can manually adjust the size of the panel by clicking and dragging the bar that separates the panel from adjacent windows. For additional information on these controls or working with individual windows, see the ENPS Client documentation.
Signing In and Signing Out of the Panel The process to access MediaCentral Cloud UX through ENPS consists of a simple two step process.
First you must access the panel plug-in, and then you must sign in to MediaCentral Cloud UX.
Working with the MediaCentral Cloud UX Panel When accessing MediaCentral Cloud UX through the Panel for ENPS, the User Profile menu does not include a Sign Out option. If you close the panel from within ENPS, your MediaCentral Cloud UX user session remains active. When you close your ENPS client, the user session is released on the MediaCentral Cloud UX server.
> **Note:** Although system administrators can configure a MediaCentral Cloud UX setting that automatically
disconnects users after a period of inactivity, the Panel for ENPS intentionally disables this feature for users of the Panel.
To sign in to MediaCentral Cloud UX:
1. Do one of the following to access the MediaCentral Cloud UX Panel:
- If the MediaCentral Cloud UX panel is configured as the default MOS plug-in, left-click on
the MOS button in the Navigation Bar at the bottom of the ENPS user interface.
- If the panel is not configured as the default plug-in, right-click on the MOS button and select
the MediaCentral Cloud UX option in the menu.
> **Note:** You can configure the MediaCentral Cloud UX panel as the default plug-in by right-clicking on the
MOS button and selecting the panel in the Set Default Media Control sub-menu.
The Avid MediaCentral Cloud UX panel appears in a new window.
Working with the MediaCentral Cloud UX Panel
2. (if required) Sign into MediaCentral Cloud UX.
If this is your first time accessing the panel during this client session, you must complete the following steps to sign into MediaCentral Cloud UX.
a. Type your user name.
b. Type your password.
c. Click the Sign In button.
The MediaCentral Cloud UX application opens and displays the Browse app. The following example illustration shows the MediaCentral Cloud UX Panel with the Browse app displayed.
> **Note:** If you have already signed-in to MediaCentral Cloud UX during this session, the panel opens
automatically without the need to sign in.
To sign out of the panel:
- Press the Close button in the bottom-right corner of the panel and quit the ENPS Client.
This process gracefully exits the panel, prompting you to save any unsaved work and disconnects the MediaCentral Cloud UX user session upon exiting the ENPS Client.
- Press the Close button in the bottom-right corner of the panel.
By using the panel’s dedicated Close button, the system prompts you to save any unsaved work before closing the panel. This action does not actually sign you out of the MediaCentral Cloud UX system.
- Press the X in the upper-right corner of the panel.
If you are working with a sequence that includes unsaved changes and you close the panel in this way, you are not prompted to save any unsaved work. However, unsaved changes are retained in most cases through the MediaCentral Cloud UX auto-recovery feature. For more information, see “Recovering Sequences” in the Avid MediaCentral | Cloud UX User’s Guide.
This action does not actually sign you out of the MediaCentral Cloud UX system.
> **Note:** In some cases the Close button in the bottom-right corner of the panel might not be available. System
administrators have the ability to disable this button and remove it from the user interface.
Working with the MediaCentral Cloud UX Panel Understanding the MediaCentral Cloud UX Layout The following sections detail some of the basics of using and navigating through the MediaCentral Cloud UX user interface, including information on actions common to all apps.
Understanding the Fast Bar The Fast Bar at the top of the screen provides easy access to available apps. The following table provides a list of the MediaCentral Cloud UX apps that are available in the panel for ENPS.
Button Title Description Browse The Browse app gives you access to databases that are managed by MediaCentral modules, such as MediaCentral Production Management, MediaCentral Asset (core app) Management, or others. The app includes breadcrumbs, the navigation side bar (directory sidebar), and the results area. The Browse app is opened by default when you sign in to MediaCentral Cloud UX.
Search The Search app enables you to quickly and easily locate assets across multiple MediaCentral modules. When you search for an asset, the system accesses an index (core app) of standard text-based metadata fields to return the desired assets.
Process The Process app lets you monitor all processes that you might create while working with MediaCentral assets.
(core app) User Profile The User Profile menu includes the following entries.
(cid:129) About: Opens a screen with information about the product.
(cid:129) Help: Opens the MediaCentral Cloud UX Help system.
For more information, see the Avid MediaCentral | Cloud UX User’s Guide.
Opening and Closing Apps When you click on any of the icons in the Fast Bar, the selected app opens and the icon is highlighted to indicate that the app is active. Unless docked, clicking on a different app switches the user interface to the newly selected app. If all apps are closed, the interface shows a black main area.
When using the Docking feature, you can have two apps open at the same time.
Additionally, you can show the Asset Editor to the right of the core or focused app. See “The Asset Editor” on page 15.
To open an app:
- Click the app button on the Fast Bar.
To close an app:
- Click the X in the app’s upper right corner.
Working with the MediaCentral Cloud UX Panel Docking Apps The left side of the MediaCentral Cloud UX window is the place where you can dock an app. When an app is docked, the app is reduced in size and shifted to the left. You can then use the docked app alongside other apps. Apps that support docking provide a Dock/Undock toggle button in its upper right corner. You can dock any core app, but you can only dock one app at the same time. If you have one app docked and dock another app, the first app is hidden.
To dock an app, do one of the following:
- Click the app’s Dock button.
- Place your cursor over the icon of a core app in the Fast Bar and drag and drop it downward to
the left side of the user interface that will be highlighted as drop area (shown dimmed and marked with a blue frame).
To undock an app:
- To restore the app to take up the initial width, click the Dock button again.
The Asset Editor The Asset Editor is a utility view that is available in core apps as a way to view information about an active asset. The upper area of the Asset Editor provides a preview of most asset types — such as video clips, a still images, or others — in the Media Viewer. This area also provides the appropriate shuttle controls and timecode displays to interact with loaded assets. The Media Viewer includes a Source Monitor and Record Monitor toggle button that allows you to switch between individual media assets and any sequence that is loaded into the Sequence Timeline.
In the middle part of the Asset Editor, there is an area that displays several tabs to show different categories of metadata for the asset. By default, these are the Audio, Metadata, File Info, and Storyboard tabs. Additional tabs can be added in context when appropriate. For instance the Hits tab appears when you load an asset from the Results area of the Search app.
The Sequence Timeline at the bottom of the Asset Editor allows you view and edit a sequence. A portion of media that is contained on a track in a sequence is called a segment. You can use the trim controls on the timeline to adjust segments already contained in the sequence or you can use the Browse or Search apps to add new content to the sequence.
The following illustration and table describe the different areas of the Asset Editor.
Working with the MediaCentral Cloud UX Panel 1 Asset Editor header 3 Tabs 2 Media Viewer 4 Sequence Timeline The Asset Editor is always positioned on the right side of the user interface and is collapsed by default when you first sign in to MediaCentral Cloud UX. When collapsed, the Asset Editor includes buttons to quickly access different areas of the tool. These buttons include:
Button Image Button Name or Expand / Collapse Asset Editor Media Viewer or Tabs: Enables / disables the tabs area as well as toggles the single and dual column view of the Asset Editor.
Sequence Timeline Working with the MediaCentral Cloud UX Panel Once the Asset Editor is expanded, the Media Viewer, Tabs, and Timeline buttons appear at the top of the tool and are colored blue to indicate that they are open and active. You can click on any of the buttons to show or hide different areas of the Asset Editor.
To show and hide the Asset Editor:
- Click the expand icon on the upper right corner of an app.
- To hide the Asset Editor, click the Asset Editor’s Collapse icon.
To open an asset in the Asset Editor:
- Double-click an asset in the Browse or Search app’s Results area.
Creating a Sequence In addition to the processes described in the Avid MediaCentral | Cloud UX User Guide for creating new sequences, the MediaCentral Panel for ENPS provides you with an alternate method to complete this task. The panel’s Create button includes custom functionality that is not available through other sequence creation methods — such as the ability to create multiple sequences at once and an option to automatically add the sequence as a MOS Item Reference (MIR) in your ENPS story.
Whenever creating a sequence through the methods described below, MediaCentral Cloud UX creates a News sequence. If you want to associate other sequence types with an ENPS story, see “Adding a Sequence to an ENPS Story” on page 19.
Information about the sequence’s title and duration is included in the story. However, the story is not provided with details regarding the sequence’s content. Therefore any sequence that you add to an ENPS story might be either a Fulfilled or Unfulfilled MIR.
> **Note:** System administrators have the ability to customize the user interface. As a result, some buttons
described below might not be available. For more information, see “Configuring the Maestro News MOS Service” on page 7.
MediaCentral Cloud UX systems can be configured with one or more MediaCentral modules, such as MediaCentral Production Management, MediaCentral Asset Management, Avid Maestro, or others. Although you can use the Panel for ENPS to find and view assets for many of these modules, the ability to create and edit sequences through the panel is limited to MediaCentral Production Management only.
To create a new sequence:
1. Click the Create button in the bottom-right corner of the panel.
The Create Sequence window appears as illustrated below.
Working with the MediaCentral Cloud UX Panel
2. Enter a name for your new sequence.
3. (Optional) If you want to create one or more additional sequences, do one of the following:
- Click the New Sequence button to the right of the Sequence Name field and enter the next
sequence name.
- The ENPS panel allows you to copy and paste a list of sequence names from external
applications such as Microsoft Word, Excel, Notepad, or others. If creating a list in a text- editor, each name should be separate by a return (each on its own line). If you have created a list of sequence names outside of the panel, press CRL+V to paste the list into the Create Sequence window.
If you create more than one sequence, you might notice that the name of the window changes to Insert Sequence and the Create button changes to an Insert button. Each sequence is added as a separate MIR in your story. Sequences are created in the Production Management database at the location defined in the Maestro MOS Gateway settings. For more information, see “Configuring the Maestro News Producer MOS Gateway” on page 4.
If you change your mind, you can click the Delete button to the right of the sequence name to remove it from the Create Sequence window.
4. Configure the following additional settings:
- Insert MOS Item Enable this button to add the sequence as a MIR in your story. If you do not enable this option, the sequence is created in the MediaCentral module’s database, but is not associated with your story.
- Open Sequence Enable this option to load the sequence into the Asset Editor automatically after you click the Create button. If you create multiple sequences in the Create Sequence (Insert Sequence) window, this option is disabled.
5. Do one of the following:
- If you are creating a single sequence, click the Create button.
If you selected both check boxes in the Create Sequence window, the sequence appears as a MOS placeholder in your story (as illustrated below) and the sequence is loaded into the Asset Editor.
The name of your sequence is displayed in the upper-right corner of the Sequence Timeline as well as at the bottom of the Panel.
- If you are creating more than one sequence, click the Insert button and then click the Cancel
button to close the window.
Working with the MediaCentral Cloud UX Panel As the sequences are added to your story, the window displays a status indicator to the right of each sequence name to provide you with visual feedback.
Icon Description Create / insert sequence in-progress.
The action is complete.
The action is pending.
- Click the Cancel button to abort the sequence creation process.
Adding a Sequence to an ENPS Story The MediaCentral Cloud UX panel provides you with two methods for adding a sequence to your ENPS story. The first method requires you to create a new sequence through the process described in “Creating a Sequence” on page 17. The following steps describe the second method which involves adding an existing sequence to your story.
To add an existing sequence to your ENPS story:
1. Load a story in the ENPS client.
2. Use the panel’s Browse or Search apps to find an existing sequence.
> **Note:** As a reminder, the Browse and Search apps might provide you with information on sequences
included in multiple different modules. The ability to insert existing sequences is limited to Production Management sequences only.
3. Double-click on the sequence to load it into the Asset Editor.
4. Click the Insert button in the bottom-left corner of the panel.
The sequence is added to your story.
Loading a Sequence From an ENPS Story In addition to the standard methods available in MediaCentral Cloud UX for loading a sequence into the Asset Editor, the ENPS workflow includes one new method for completing this same task.
To load a sequence from a story:
1. Open a story that includes a MOS Item Reference for an Avid sequence.
2. Double-click the MOS item to load the sequence into the Asset Editor.
Working with the MediaCentral Cloud UX Panel Editing and Saving Sequences When you create your sequence, you are really creating structure that will eventually contain the media assets that you will use to tell your story. You can use the MediaCentral Panel for ENPS to add assets to your sequence, just as you would when accessing MediaCentral Cloud UX through a web browser. For more information, see “Editing a Sequence” in the Avid MediaCentral | Cloud UX User’s Guide.
Whenever you make a change to your sequence, you must remember to save it to retain your changes.
To save a sequence, do one of the following:
- Click the Save button in the Sequence Timeline toolbar.
The sequence is saved, but if it is included in an ENPS story — the associated MOS item is not updated.
- Click the turn-down arrow to the right of the Save button and select Save.
The sequence is saved, but if it is included in an ENPS story — the associated MOS item is not updated.
- With focus in the Sequence Timeline area, press Ctrl+S
The sequence is saved, but if it is included in an ENPS story — the associated MOS item is not updated.
- (if applicable) If you loaded your sequence into the Asset Editor by either clicking the Create
button in the Panel or double-clicking the MOS item in your ENPS story, you can click the Save button in the bottom-left corner of the Panel to save the sequence and update the MOS Item in the ENPS story.
- (if applicable) If you do not want to update the MOS item in your ENPS story with the latest
version of your sequence, you can click the Cancel button to abort the update to your ENPS story.
If you press the Cancel button, the Panel does not abort the changes to your sequence. You can either save your sequence using one of the first three options listed above, or close the Panel.
When you reopen the Panel, MediaCentral Cloud UX might display sequence recovery options.
In this case, you can keep your original, unaltered version of the sequence.
> **Note:** The Save and Cancel buttons are displayed in the same location as the Insert and Duplicate buttons
(respectively). These buttons are available if enabled in the system configuration settings. For more information, see “Configuring the Maestro News MOS Service” on page 7.
For more information on this topic, see “Using the Save Button” in the Avid MediaCentral | Cloud UX User’s Guide.
Working with the MediaCentral Cloud UX Panel Duplicating a Sequence If you need to make a copy of your sequence so that you can retain the original and make edits to an alternate version of the same sequence, the MediaCentral Panel for ENPS includes a Duplicate button that allows you to easily create this duplicate copy.
To duplicate a sequence:
1. Double-click on a sequence in the Browse or Search apps to load it into the Asset Editor.
2. Click the Duplicate button in the bottom-left corner of the Panel.
The Duplicate Sequence window appears.
3. (optional) Complete the following in the Duplicate Sequence window:
a. Enter a new name for the sequence.
b. Insert MOS Item Enable this button to add the sequence as a MIR in your story. If you do not enable this option, the sequence is created in the MediaCentral module’s database, but is not associated with your story.
c. Open Sequence Enable this option to load the sequence into the Asset Editor automatically after you click the Create button. If you create multiple sequences in the Create Sequence (Insert Sequence) window, this option is disabled.
4. Click the Duplicate button to create a duplicate copy of the sequence.
The duplicate is created at the same folder location as the original sequence.
Sending to Playback The Quick Send button in the Asset Editor enables you to send Production Management assets to a playback destination. The following illustration shows the Quick Send menu with the Production Management Send to Playback option available.
For more information on this feature, see “Using Quick Send to Send To Playback” in the Avid MediaCentral | Cloud UX User’s Guide.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This product may be protected by one or more U.S. and non-U.S patents. Details are available at www.avid.com/patents.
This guide is protected by copyright. This guide is for your personal use and may not be reproduced or distributed, in whole or in part, without permission of Avid. Reasonable care has been taken in preparing this guide; however, it may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc. disclaims liability for all losses incurred through the use of this document.
Product specifications are subject to change without notice.
Copyright © 2025 Avid Technology, Inc. and its licensors. All rights reserved.
The following disclaimer is required by Apple Computer, Inc.:
APPLE COMPUTER, INC. MAKES NO WARRANTIES WHATSOEVER, EITHER EXPRESS OR IMPLIED, REGARDING THIS PRODUCT, INCLUDING WARRANTIES WITH RESPECT TO ITS MERCHANTABILITY OR ITS FITNESS FOR ANY PARTICULAR PURPOSE. THE EXCLUSION OF IMPLIED WARRANTIES IS NOT PERMITTED BY SOME STATES. THE ABOVE EXCLUSION MAY NOT APPLY TO YOU. THIS WARRANTY PROVIDES YOU WITH SPECIFIC LEGAL RIGHTS. THERE MAY BE OTHER RIGHTS THAT YOU MAY HAVE WHICH VARY FROM STATE TO STATE.
The following disclaimer is required by Sam Leffler and Silicon Graphics, Inc. for the use of their TIFF library:
Copyright © 1988–1997 Sam Leffler Copyright © 1991–1997 Silicon Graphics, Inc.
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
THIS SOFTWARE IS BEING PROVIDED "AS IS", WITHOUT ANY EXPRESS OR IMPLIED WARRANTY. IN PARTICULAR, NEITHER THE AUTHOR NOR AT&T MAKES ANY REPRESENTATION OR WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF THIS SOFTWARE OR ITS FITNESS FOR ANY PARTICULAR PURPOSE.
This product includes software developed by the University of California, Berkeley and its contributors.
The following disclaimer is required by Paradigm Matrix:
Portions of this software licensed from Paradigm Matrix.
The following disclaimer is required by Ray Sauers Associates, Inc.:
“Install-It” is licensed from Ray Sauers Associates, Inc. End-User is prohibited from taking any action to derive a source code equivalent of “Install-It,” including by reverse assembly or reverse compilation, Ray Sauers Associates, Inc. shall in no event be liable for any damages resulting from reseller’s failure to perform reseller’s obligation; or any damages arising from use or operation of reseller’s products or the software; or any other damages, including but not limited to, incidental, direct, indirect, special or consequential Damages including lost profits, or damages resulting from loss of use or inability to use reseller’s products or the software for any reason including copyright or patent infringement, or lost data, even if Ray Sauers Associates has been advised, knew or should have known of the possibility of such damages.
The following disclaimer is required by Videomedia, Inc.:
“Videomedia, Inc. makes no warranties whatsoever, either express or implied, regarding this product, including warranties with respect to its merchantability or its fitness for any particular purpose.” “This software contains V-LAN ver. 3.0 Command Protocols which communicate with V-LAN ver. 3.0 products developed by Videomedia, Inc. and V-LAN ver. 3.0 compatible products developed by third parties under license from Videomedia, Inc. Use of this software will allow “frame accurate” editing control of applicable videotape recorder decks, videodisc recorders/players and the like.” The following disclaimer is required by Altura Software, Inc. for the use of its Mac2Win software and Sample Source Code:
©1993–1998 Altura Software, Inc.
The following disclaimer is required by 3Prong.com Inc.:
Certain waveform and vector monitoring capabilities are provided under a license from 3Prong.com Inc.
The following disclaimer is required by Interplay Entertainment Corp.:
The “Interplay” name is used with the permission of Interplay Entertainment Corp., which bears no responsibility for Avid products.
This product includes portions of the Alloy Look & Feel software from Incors GmbH.
This product includes software developed by the Apache Software Foundation (http://www.apache.org/).
© DevelopMentor This product may include the JCifs library, for which the following notice applies:
JCifs © Copyright 2004, The JCIFS Project, is licensed under LGPL (http://jcifs.samba.org/). See the LGPL.txt file in the Third Party Software directory on the installation CD.
Avid Interplay contains components licensed from LavanTech. These components may only be used as part of and in connection with Avid Interplay.
Portions © Copyright 2003-2007 of MOG Solutions.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:
http://www.avid.com/US/about-avid/legal-notices/trademarks.
Avid MediaCentral | Panel for ENPS ReadMe (cid:129) Revised March 6, 2025 (cid:129) This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.