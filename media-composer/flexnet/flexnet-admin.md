---
product: avid-flexnet
product-area: licensing
version: "current"
release-date: 01/01/current
doc-type: flexnet-admin
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Installing and Configuring the FlexNet License Server Manager Installing and Configuring the FlexNet License Server Manager This document is intended for the Administrator at your facility. The Avid FlexNet License Server Manager is used for large facilities to license, activate and manage concurrent floating licenses for Avid applications which require software activation. Using the Avid FlexNet License Server Manager application on a dedicated Windows workstation or server, you can license multiple applications or options.
In addition to the Avid FlexNet License Server Manager, you must activate each client license with Avid Link. You can activate all or just some of the purchased client licenses using Avid Link.
You need to install the Avid FlexNet License Server Manager application on a Windows system; either a physical system or a virtual machine. Supported Windows operating systems include:
- Windows Server 2012 and 2012 R2
- Windows Server 2016
- Windows Server 2019
- Windows Server 2022
- The Avid FlexNet License Server Manager has a browser based administration user interface. Supported
browsers include:
- Microsoft Edge version 38.1
- Mozilla Firefox versions 43 and later
- Google Chrome versions 47 and later
Your Avid editing application can be installed on Windows or macOS.
If you are setting up a Floating License server for the first time and are adding a redundant Floating License server, follow the procedures supplied in this document. If you already have a Floating License server and are configuring a redundant Floating License server, contact Customer Care before you attempt to configure a redundant server.
> **Note:** Avid FlexNet License Server Manager does not currently work with a server that has teamed NIC
cards.
> **Note:** Some of the screenshots and examples displayed in this guide use Avid Media Composer as the client.
You may be activating a different application or option.
Before you Begin Before you Begin Before you install and configure the Avid FlexNet License Server Manager to manage your floating licenses, you should make sure that you configure your network to allow client systems to access the Windows server where you install the Avid FlexNet License Server Manager application.
> **Note:** You must have ports 3333, 8888, 7070 (or custom ports that were manually modified) opened in your
Firewall settings on each client machine and in the Floating License Server Manager.
The Avid FlexNet License Server Manager application must be installed on a Windows system. However, you can activate the licenses from either a Windows or macOS client system.
After you purchase a floating license from Avid, you will be provided with activation information, which will include a System ID and Activation IDs once redeemed.
> **Note:** Access to the Internet is required to complete the activation procedure.
If this is the first time you will install Avid FlexNet License Server Manager, you may proceed to "Installing the Avid FlexNet License Server Manager" on page 8. However, if you are upgrading your software from a previous version, there are some steps you must follow first, as outlined in the next section "Upgrading from a Previous Version" below.
Upgrading from a Previous Version If you are upgrading from a previous version, you must first uninstall the old software and perform a clean install. However, before you uninstall the previous version, it is important to collect some information.
- Make a note of any server information for Sync to FNE backup server URI (the legacy name for Main
FNE Server URI), Main URI, and Backup URI, which can be found in the Properties view. For more information on the Properties view, see "Properties View" on page 20.
Gather existing bin license files (.bin), or recreate them using My.Avid.com. It is important that you
- have this information for each product you want to activate and manage, since you will need to
add these after installing the new software. Products must be activated and available before creating new reservations or importing old reservations. "Avid FlexNet License Server Manager Setup for Initial Licenses" on page 9 and "Activating Each Client" on page 13 cover the process of obtaining a .bin file and activating licenses for each client.
- It is necessary to export any reservations you want to migrate before uninstalling the old software.
"Reservations View" on page 18 covers the process of working with reservations.
- Users who have manually modified their port or enabled HTTPS should make sure to save their YAML
and JKS files before uninstalling and upgrading.
To uninstall a previous version of Avid FlexNet License Server Manager (or FlexNet Device Manager):
1. Copy the server information for your existing version, as outlined above.
2. Export any existing reservations you may want to migrate or preserve.
3. Uninstall the previous version of the software by using Control Panel > Programs > Programs and
Features to locate and remove it from your system.
4. Open Windows Settings.
5. Type “env” into the search field and select “Edit the system environment variables”, which opens
the System Properties window. Alternately, to arrive at this window, you can right-click on “This PC”, select Properties, and type “env” into the search field. If “Edit the system environment Upgrading from a Previous Version variables” option does not appear in the search field, click on Advanced system settings instead.
6. In the System Properties window, click the “Environment Variables...” button to open the
Environment Variables window.
7. In the “System variables” section of the Environment Variables window, select JAVA_HOME and
JRE_HOME and click Delete to remove them, one at a time.
Upgrading from a Previous Version
8. Click OK to apply the changes and close the window.
9. You MUST reboot your system before installing the new software.
After collecting information, exporting reservations, uninstalling the old software, and installing the new Avid FlexNet License Service Manager, you must apply your bin license file (.bin) before adding or importing any reservations. Additionally, you will need to convert your old reservations from XML to JSON (using the included conversion utility), if you want to import them into the new software. "Converting Reservation Files from XML to JSON" on the next page discusses the process of converting files.
> **Note:** JSON is the only file format that is supported for reservations in the latest version of the software.
Installing the Avid FlexNet License Server Manager Installing the Avid FlexNet License Server Manager The Avid FlexNet License Server Manager manages the concurrent use licenses for Avid applications and some options. To use the Avid FlextNet License Server Manager, you must install the application on a Windows workstation or server to license and manage your Avid licenses. The system must be available to all network clients with host applications that will be licensed by the Avid FlexNet License Server Manager.
> **Note:** For server access, port 3333, 8888, and 7070 (or custom ports that were manually modified) must be
open on your Windows server. For more information, see your Firewall settings in your Windows documentation.
To install the Avid FlexNet License Server Manager application:
1. Quit all active applications.
2. Log into your Avid Master Account.
3. Under My Products and Subscriptions, locate the Avid Floating License Server.
4. Download the Avid FlexNet License Server Manager.
5. Make sure you reviewed the information in the sections labeled "Before you Begin" on page 5.
6. Uninstall any previous versions of Avid FlexNet License Server Manager (or FlexNet Device Manager),
as described in "Upgrading from a Previous Version" on page 5.
7. Run the AvidFlexNetLicenseServerManager.exe.
The installation program starts.
8. Follow the prompts to finish the installation.
9. Click Exit.
Converting Reservation Files from XML to JSON When upgrading from a previous version of the software to the current Avid FlexNet License Server Manager, you must first export any reservations you want to migrate and convert them from XML to JSON, which is the only format supported by the latest version of the software. "Reservations View" on page 18 provides details on how to add, export, and import reservations. The following steps demonstrate how to convert the files and can be performed after installing Avid FlexNet License Server Manager, which adds a special conversion utility to your computer during the installation process.
> **Note:** If you installed Avid FlexNet License Server Manager for the first time and do not have any
reservations to migrate from previous versions of the software, you can skip these steps.
To convert reservation files from XML to JSON:
1. After downloading and installing the Avid FlexNet License Server Manager as outlined in "Installing
the Avid FlexNet License Server Manager" above, locate the ConvertReservations.exe utility in the following folder: C:\Program Files\Avid\FlexNetServer\Utilities.
2. Drag a reservation file in the XML format from its stored location on your computer and drop it onto
ConvertReservations.exe.
A reservations.json file will be generated and placed in the folder where the original XML file was located.
Setting Up the Avid FlexNet License Server Manager Setting Up the Avid FlexNet License Server Manager After you install the license application on your server, use the Avid FlexNet License Server Manager application to configure the server and activate your Avid software licenses.
Required Setup and Activation ID’s System ID
- Located with the activation information (or Activation Card) you received when you purchased a
floating license. The System ID will also be placed in your My Avid Account once you redeem the code. Only one System ID may be used per server. See Redeeming an Activation Code.
- Activation ID
All Activation IDs will be placed in your account once you redeem the codes from the Activation Cards. See Redeeming an Activation Code.
- Server Host ID
Your Server Host ID is located on the Properties page in the Avid FlexNet License Server Manager application. Go to http://your server name:8888/flsm and click Properties, and write down the Server Host ID. The Server Host ID (which is the same as Device ID) does not change and should be the same after doing an upgrade.
If you are performing a first time license installation, follow the procedures in "Avid FlexNet License Server Manager Setup for Initial Licenses" below.
Avid FlexNet License Server Manager Setup for Initial Licenses Perform the following steps if you are setting up the Avid FlexNet License Server Manager for an initial license.
If you are setting up a redundant server, follow the procedure in "Configuring a Redundant Floating License Server" on page 22.
> **Note:** Subscription redemptions are done in your Avid account. It is recommended that you renew any
subscriptions in advance, although they may be done at anytime. The end date of your subscription will reset based on the term of your original license and renewal.
Setting Up the Avid FlexNet License Server Manager To set up the Avid FlexNet License Server Manager (Initial License setup):
1. From any system, go to http://www.avid.com/license.
You will need your System ID, Activation ID and Server Host ID. To obtain these IDs, see "Required Setup and Activation ID’s" on the previous page.
2. The Avid Software License Activation Web page opens.
3. In the Software License Activation Web page, enter your Activation ID.
To locate the Activation ID, see "Required Setup and Activation ID’s" on the previous page. Once the Activation ID is entered into the Web form, additional fields will become visible on the page.
4. Enter your System ID and then your Server Host ID in the Device ID field.
To locate the Server Host ID and the System ID, see "Required Setup and Activation ID’s" on the previous page.
5. If you would like to have your Activation file sent to you, enter your e-mail address.
6. Click Activate.
The Avid licensing system creates a bin license file (.bin). This file contains license information needed to activate your floating license server.
If you entered an e-mail address, the .bin file will be sent to you as an attachment. You can also download the .bin file directly from the site.
> **Note:** If you lose a .bin file, you can reenter your activation information and submit the form again to
download another copy.
7. Click Download to save the .bin file to your system.
8. Locate the .bin file and move the .bin file onto the system running Avid FlexNet License Server
Manager.
9. From your Server system, go to http://your server name:8888/flsm (case sensitive).
The Avid FlexNet License Server Manager opens.
10. Under the License Server options, click Offline Server Updates.
11. Click the Choose File button and locate the .bin file that you copied onto your Server system, then
click Open.
12. Click Upload.
Setting Up the Avid FlexNet License Server Manager This sets up and activates your floating license server. You can now activate each machine where you have installed the Avid application or options.
> **Note:** You can verify a successful activation by viewing the Feature Usage page in the Avid FlexNet
License Server Manager. For more information, see "Feature Usage View" on page 19.
To activate your Avid software application or options, see "Activating Each Client" on page 13.
Adding Additional Licenses to a FlexNet Server Follow the steps below if you have already setup a server and need to add more licenses. When you purchase additional licenses, you will receive activation information (or an activation card). Use this information to redeem an Activation ID. Once you have redeemed the Activation ID (see Redeeming an Activation Code), perform the following steps to add the licenses.
To add licenses:
1. From any system, go to http://www.avid.com/license.
You will need your System ID, Activation ID and Server Host ID. To obtain these IDs, see "Required Setup and Activation ID’s" on page 9.
The Avid Software License Activation Web page opens.
2. In the Software License Activation Web page, enter your Activation ID and if you would like to have
your Activation file sent to you, enter your e-mail address.
To locate the Activation ID, see "Required Setup and Activation ID’s" on page 9.
3. Enter your Server Host ID in the Device ID field and your System ID.
To locate the Server Host ID and the System ID, see "Required Setup and Activation ID’s" on page 9.
If you are configuring a Backup server, make sure you enter your Backup Server Host ID as well.
4. Click Activate.
The Avid licensing system creates a .bin. This file contains license information needed to activate your floating license server.
If you entered an e-mail address, the .bin file will be sent to you as an attachment. You can also download the .bin file directly from the site.
5. Click Download to save the .bin file to your system.
6. Locate the .bin file and move the .bin file onto your server system.
7. From your server system, go to http://your server name:8888/flsm (case sensitive).
The Avid FlexNet License Server Manager opens.
8. Under the License Server options, click Offline Server Updates.
9. Click the Browse button and locate the .bin file (Upload response file) that you copied onto your
Server system, then click Open.
10. Click Upload.
The additional licenses are added to the server.
> **Note:** You can verify a successful activation by viewing the Feature Usage page in the Avid FlexNet
License Server Manager. For more information, see "Feature Usage View" on page 19.
To activate your Avid software application or options, see "Activating Each Client" on page 13.
Setting Up the Avid FlexNet License Server Manager Changing the Port Number for the Floating License Server Manager Use the following procedure if you need to change the port for the Floating License Server. This might be useful if you want to install the Floating License Server on the same server as the Media Indexer.
To change the port number for the Floating License Server Manager:
1. Log onto the Server (either directly or via Remote Desktop).
2. Open the Floating License Server UI page locally as a test: http://localhost:8888/flsm
3. Edit the server.xml file to change the port number.
a. Open C:\Program Files\Avid\FlexNetServer\FlexNetLSM\conf.
b. Edit the file server.xml file. (You can edit in Notepad.) c. Search for the text 8888 and replace the first occurrence with the new port number, for example, 8889.
d. Save and close the file.
4. Restart the Floating License UI service.
a. Open the Task Manager.
b. On the Services tab, find FlexNetLSM c. Right-click Stop Service.
d. Right-click Start Service.
5. Open the Floating License Server UI page as a test of the new port: http://localhost:8889/flsm
6. Test the new port on other machines (You may need to open the port in the firewall) http://<server_
name>:8889/flsm Activating Each Client Activating Each Client Use Avid Link to activate the licenses for each Avid software application and options. Repeat these steps for each client or option you are activating.
To activate each Avid software application:
1. To activate an Avid software application, install and launch the application on each machine.
The Avid Media Composer Activation window opens.
2. Click “I want to activate my software using Avid Link.”
Avid Link opens.
3. Click the tab for License Server and make sure the “Use License Server” checkbox is activated.
If for some reason this page doesn't appear by default, you can open it manually. Find the software you want to activate under the Products category, and select “License” from the dropdown menu, located to the right of the product name.
Activating Each Client
4. Click the linked name for the “Current License Server” to make changes.
5. Under the section for License Server Options, enter your Floating License Server URL, then click
Save.
Avid Link confirms your system information.
If applicable, enter the Backup Server URL, then click Save.
6. Quit out of Avid Link and the editing application will continue to launch via the Floating License.
If the application did not activate by default, you may have to click the Activate button at the bottom of the License Server page.
7. To confirm this activation, you can go to the Avid FlexNet License Server Manager, and click the
Devices tab.
The system displays the Device ID and device alias of each activated client.
You can also checkout a floating license if you want to work on your system while not being connected to the Internet. This might be useful if you are working on a laptop and then want to take the laptop home to finish working on your project. For details on checking out a floating license, search for “Checking Out a Floating License” in the Installation Guide for Avid Editing Applications.
Enabling HTTPS for the Floating License Server and Client Enabling HTTPS for the Floating License Server and Client Although it is not usually necessary, some users may require encrypted communications for license requests using HTTPS. HTTPS uses SSL/TLS certificates to verify that the license server is legitimate and not compromised. Some IT security policies require encryption for both internal and external communications, and may block HTTP traffic.
Establishing a trusted connection to your floating license server requires obtaining a security certificate to place on the server, modifying a file to access the certificate, and enabling the HTTPS option in Avid Link.
To enable HTTPS for the floating license server:
1. Obtain a security certificate file in the .jks (Java Keystore) format and place it on the server in the
following directory:
C:\Program Files\Avid\FlexNetServer\FlexNetLS\server
2. Open the “local-configuration.yaml” file, which is located in the same directory as the security
certificate, using a text editor.
3. Locate the “https-in” section in the .yaml file, and change “enabled:false” to “enabled:true”, on line
46.
4. Change the “keystore-path”, on line 50, to match the file path of your .jks security certificate. If the
file was placed in the recommend location, at the root level of the directory listed above, this field is simply the name of the .jks file.
5. Save and close the local-configuration.yaml file.
6. Restart the floating license server.
> **Note:** If setting up a redundant server, the same .yaml file configuration and SSL/TLS certificate work would
need to be repeated.
To enable HTTPS for a client:
> **Note:** In order to enable HTTPS for a client, you must be running Media Composer v2023.12.5 or later, or
v2024.12.1 or later.
Viewing and Modifying Ports
1. Open Avid Link and sign in to your Avid Master Account.
2. In the Preferences page, locate License Server Options and click the checkbox to “Enable HTTPS”.
Viewing and Modifying Ports Ports that are used to connect with a floating license server can be found in a client's Avid Link software and the corresponding server's YAML file. While most users will be fine with the default settings, there may be situations that require custom port settings.
> **Note:** You must have ports 3333, 8888, and 7070 (or custom ports that were manually modified) opened in
your Firewall settings on each client machine and in the Floating License Server Manager.
> **Note:** If using Media Composer v2025.6 or newer, port 7070 replaces port 3333, unless a custom port has
been specified.
To view and modify port settings:
1. Open Avid Link and sign in to your Avid Master Account.
2. In the Preferences page, locate License Server Options and click the “Modify Port” checkbox to view
the HTTPS or HTTP listening port for the client.
For HTTPS, this is set to 1443 by default in both Avid Link and the “local-configuration.yaml” file. If using an HTTP port (without activating the “Enable HTTPS” checkbox), this may be set to 3333 by default. If you require a different port, make sure to change the port number in both the YAML file and in Avid Link.
3. Modify the port number displayed in Avid Link to match your network requirements.
4. Open the “local-configuration.yaml” file, which is located in the following directory, using a text
editor:
C:\Program Files\Avid\FlexNetServer\FlexNetLS\server
5. For HTTP only, locate the “HTTP listening port” section in the YAML file, and change the port number
listed on line 4 to match your requirements.
6. For HTTPS only, reference the instructions in the section titled, "Enabling HTTPS for the Floating
License Server and Client" on the previous page
7. Save and close the local-configuration.yaml file.
8. Restart the floating license server.
Using the Avid FlexNet License Server Manager Views Do not activate the “Connect using HTTPS” option in the FlextNet License Server Manager Settings page. This checkbox is specifically for the FlexNet License Server Manager software, and it is recommended that you do not modify it.
Using the Avid FlexNet License Server Manager Views The following sections include information on optional features to help you manage your floating licenses using different views withing the Avid FlexNet License Server Manager. Among others, these features include reserving and modifying entries on your server, as well as viewing information on reserved devices.
Not all views are necessary when working with Avid products, including the Client Key Operations view, which is not documented here. Some of this information has been excerpted from Flexera™ Software Inc.
Devices View The Devices view displays the devices recognized by the license server as having been served licenses from the server’s shared pool or from licenses reserved for the client. Available information includes Device ID (same as Server Host ID), Device ID Type, Device Type (physical, virtual, or unknown), and Device Alias, if this has been set on the device.
Clicking a Device ID name in the Device ID column provides additional details for the device, including its consumed features.
Using the Avid FlexNet License Server Manager Views Reservations View The Avid FlexNet License Server Manager software allows the administrator to set activation reservations for specific users or devices. Using a reservations list, the administrator can define a specified quantity of a feature or features in a pool to be available to a specific device. In essence you are allocating an activation from the license pool and reserving it for a device with a specific host id.
The Reservations View enables viewing and modifying entries in your server’s reservation list.
The Reservations view displays the contents of the current reservation list. The notation in the Status column indicates whether license rights exist to fulfill the reservation. The green check mark indicates that a reservation can be satisfied, and the red cross indicates a reservation that cannot be satisfied.
> **Note:** It is possible to run multiple types of licenses, such as Media Composer | Ultimate and Media
Composer | Enterprise, on the same floating license server by using reservations to assign them to specific machines.
To add a reservation:
1. Click Add to add a single reservation to the reservation list.
The Add Reservation page opens. If a reservation list does not yet exist, it will be created in the server’s configured JSON cache location as a file named reservations.json.
Using the Avid FlexNet License Server Manager Views
2. Enter the required fields.
The Device ID refers to the client needing a reserved license. You can locate the Feature Name and Version in the Devices Details view (see "Devices View" on page 17).
3. Click Add to add the reservation to the reservation list.
Click Cancel to reset the current entry values without saving.
4. Click Edit in the Reservations view to modify the reserved count of a particular device–feature
combination in the reservations list.
Changing a feature’s count to 0 (zero) removes the reservation entry from reservations.json and from the Reservations view.
5. When finished editing, click Submit to finalize the changes and apply them to the server system.
> **Note:** You can Export the list of reservations and Import on the backup server to save time rather than
entering each reservation again.
To export a reservation:
1. Click the selection box, located in the column to the left of each reservation you want to export, or
click the selection box at the top of the column to select all reservations.
2. Click the Export button, at the top of the Reservations View, to export selected reservations in the
reservation list.
A reservations.json file is added to the Downloads folder on your computer.
To import a reservation:
1. Click the Import button, located at the top of the Reservations View.
The Upload reservations windows appears.
2. Click Choose File and select a reservations.json file on your computer. This could be a file that you
exported and converted earlier, as part of the upgrade process, or a file that you stored as a backup.
3. Click Open to add the file to the Upload reservations window.
4. Click Upload to complete the import process.
Feature Usage View The Feature Usage view displays details regarding every feature in the counted pool served by the server application. The Search field enables searching by feature, and features can be viewed by name, version, count, availability, expiry date, start date and vendor string.
Using the Avid FlexNet License Server Manager Views Clicking a feature name displays detailed information about the devices currently consuming features from the counted pool and those reserving a given feature.
Properties View The Properties view displays the current settings used by the server application. Some settings can be edited in this view, and any changes made will take effect when you click Save at the bottom of the page.
The properties available for editing on this page include:
Using the Avid FlexNet License Server Manager Views
> **Note:** Synchronization to Backoffice features (Page Size, Interval, Retry Count, Retry Interval, and Delay)
are not supported with Avid products.
- Server host ID: Server's host ID used when fulfilling served licenses with the back office. If multiple
IDs are available, select the one registered with the back-office server.
REST Security enabled: The property that determines if security is applied to REST endpoints
- Backup URI: The URI of the backup server in a failover configuration.
- Main URI: The URI of the main server in a failover configuration.
- Client Expiry Timer Interval: The interval between client expiry sessions.
- Borrow Interval Maximum: The maximum borrow interval allowed for any client, in seconds by
- default. This value can be specified with an optional unit-suffix letter-s, m, h, d, or w-indicating
seconds, minutes, hours, days or weeks. This parameter can be set by the administrator to override the producer-defined borrow interval and the borrow interval set in a client capability request to set a shorter borrow interval.
Synchronization to fne enabled: The property that determines whether to enable server to server
- synchronization (true or false).
Main FNE Server URI: The URI of the main server in a failover configuration.
- Synchronization to fne pagesize: The maximum number of client records to include in a
- synchronization message to the backup server.
- Synchronization to fne retry count: When a synchronization from the main server fails, the number
of times to retry synchronization.
- Synchronization to fne retry repeat interval: The amount of time between synchronization attempts
when, synchronization from the main server fails. The value can be specified with an optional unit- suffix letter-s, m, h, d, or w-indicating seconds, minutes, hours, days, or weeks. If no suffix is used, the server assumes the value is in seconds.
- Capability Polling Interval: The amount of time between capability-request polls. The value can be
specified with an optional unit-suffix letter-s, m, h, d, or w-indicating seconds, minutes, hours, days, or weeks. If no suffix is used, the server assumes the value is in seconds.
Capability Polling Retry Count: The number of capability-polling attempts allowed, if polling fails.
- Capability Polling Retry Interval: The amount of time between capability-polling attempts, if the
- polling fails. The value can be specified with an optional unit-suffix letter-s, m, h, d, or w-indicating
seconds, minutes, hours, days, or weeks. If no suffix is used, the server assumes the value is in seconds.
- Logging Threshold: The lowest level of log-message granularity to record?fatal, error, warn, or info.
For example, if fatal is set, only messages about fatal events are recorded. However, if warn is set, fatal-event, error, and warning messages are recorded.
Graylog Host: The host name of a Graylog server, if any, to which logging messages will be sent.
- Graylog Threshold: The lowest level of log-message granularity to record ? fatal, error, warn, or
- info. For example, if fatal is set, only messages about fatal events are recorded. However, if warn is
set, fatal-event, error, and warning messages are recorded.
Avid FlexNet License Server Manager About and Settings Below the other commands in the Avid FlexNet License Server Manager menu is the License Server Manager group, which contains the About and Settings views. The About view displays build, system, and browser information. In the Settings view, you specify the page size, license server name and port number, Configuring a Redundant Floating License Server as well as whether to connect using HTTPS or allow devices to drop. These configuration settings appear in a separate list because they can be modified even if the server application is inaccessible, unlike the other server configuration properties.
The properties include:
Page size: Number of records to display per page.
- FlexNet license server host name: Host name where UI will look for FlexNet license server. Default is
- localhost.
- FlexNet license server listen port: Port on which UI will look for FlexNet license server. Default is
7070.
- Connect using HTTPS: Indicates whether to use HTTPS protocol while communicating with the
server or not. Default is No.
Allow device drop: Allow a device to be deleted (marked as destroyed) from its details page.
> **Note:** Currently, only HTTP is available for use with Avid FlexNet License Server Manager.
Configuring a Redundant Floating License Server The Avid FlexNet License Server Manager is used for large facilities to license, activate and manage concurrent floating licenses for Avid applications which require software activation. Using the Avid FlexNet License Server Manager application on two dedicated Windows servers, you can license multiple applications or options with high availability.
Before You Begin The following equipment is needed:
Two Windows Servers. Supported Windows operating systems include: Windows Server 2012 and
- 2012 R2, Windows Server 2016, Windows Server 2019, and Windows Server 2022, or newer
- One or more systems for running Avid Software Applications (macOS or Windows)
- An Administrator console (any computer connected to the Intranet)
The redundancy scheme for the Avid FlexNet License Server Manager is active/passive. One of the Windows servers will be designated the main server, and the other will be designated the backup server.
Both servers will have the same licensing software installed, but be configured differently.
System Diagram The following diagrams show how the system will operate in both the normal and failover modes of operation.
Figure 1 shows the normal mode of operation. The editing systems connect to the main licensing system to activate floating licenses.
Configuring a Redundant Floating License Server Figure 1 Normal Mode of Operation Figure 2 shows the failover mode of operation. The editing systems connect to the backup licensing system to activate floating licenses.
Figure 2 Failover Mode of Operation Installing the Redundant Server Use the following instructions to configure the redundant floating license server. Note that the server names main-server and backup-server should be replaced with the actual names of your servers.
> **Note:** If using Media Composer v2025.6 or newer, port 7070 replaces port 3333, unless a custom port has
been specified.
To configure a Redundant Server:
1. Follow the instructions "Setting Up the Avid FlexNet License Server Manager" on page 9. Perform the
setup for both the primary and backup servers. Once you perform those steps, return to this procedure and perform steps 2 through 7.
2. On the main server, make the following changes on the Properties view settings:
a. Browse to http://main-server:8888/flsm/serverProperties_view.action b. Synchronization to fne enabled: True c. Select Save.
d. Main FNE Server URI: main-server:3333/fne/bin/sync e. Main URI: main-server:3333/fne/bin/capability f. Backup URI: backup-server:3333/fne/bin/capability Configuring a Redundant Floating License Server
3. Click Save.
4. On the backup server, make the following changes on the Properties view settings:
a. Browse to http://backup-server:8888/flsm/serverProperties_view.action b. Synchronization to fne enabled: True c. Main FNE server URI: main-server:3333/fne/bin/sync d. Main URI: main-server:3333/fne/bin/capability e. Backup server URI: backup-server:3333/fne/bin/capability
5. Click Save.
6. Restart the services on both machines:
a. Either directly or by remote access, log onto the machine.
b. Right-click on the Task Bar and choose Task Manager c. Click on The Services Tab d. Right-click to stop then start the following two services:
  - Avid FlexNet Gasket Service
  - FlexNet License Server - avidlm
7. Note the System ID, Activation ID, and BOTH Server Host IDs and follow instructions on "Avid FlexNet
License Server Manager Setup for Initial Licenses" on page 9. Then return to perform step 8.
8. Load the .bin files onto the two servers using the instructions "Avid FlexNet License Server Manager
Setup for Initial Licenses" on page 9 starting from step 7.
> **Note:** If HTTPS was setup on the main server, the same .yaml file configuration and SSL/TLS certificate work
would need to be done for the backup server.
Activating Clients Follow "Activating Each Client" on page 13 to activate the clients.
Testing the Redundant System Perform the following steps to test the redundant system. Once the test is complete, be sure to restart the main server. You can check the Feature Usage view to make sure the backup server is working properly.
To test the redundant system:
1. Activate a client with the main server running.
2. Shut down the main server.
3. Launch client with just the backup server running.
In the Event of Server Failure In the event of either planned maintenance or system failure, the Avid software will automatically switch to the backup server. Once the main server is back up and configured properly, the Avid software will default back to it. Refer to Figure 2 to see a diagram of the failover mode. If the main server is in need of replacement, please contact Customer Care as its license will need to be deactivated from the original server before it can be applied to a new one.
> **Note:** If you are in a backup or failover state, the server will not honor any existing reservations, and you will
not be able to activate any new clients.
Configuring Windows Defender Firewall Locating Log Files on Your System Log files created by Avid FlexNet License Server Manager are stored on the computer’s C: drive. You can locate these files by going to the following location:
C:\Windows\ServiceProfiles\NetworkService\flexnetls\avidlm\logs In the logs folder, there are access_request logs, which show the client requests for licenses, as well as a general flexnetls log.
Configuring Windows Defender Firewall In some instances, it may be necessary to configure Windows Defender Firewall to allow your floating license server to communicate with client instances on the required ports.
Prerequisites Administrative access to the license server
- IP address range of your client instances
- To configure Windows Defender Firewall:
1. Access Windows Defender Firewall
  - Open the Start menu and search for "Windows Defender Firewall"
  - Launch the Windows Defender Firewall application
  - Select "Advanced settings" from the left panel
2. Create Inbound Rule
  - In the Windows Defender Firewall with Advanced Security window, select "Inbound Rules"
from the left panel
  - Click "New Rule..." from the Actions panel on the right
3. Configure Rule Type
  - Select "Port" as the rule type
  - Click "Next"
4. Specify Protocol and Ports
  - Select "TCP" protocol
  - Choose "Specific local ports"
  - Enter the following ports separated by commas: 3333, 8888, 7070
  - Click "Next"
> **Note:** If any ports were manually modified, these custom ports should be included in the list
above, separated by commas.
5. Set Action
  - Select "Allow the connection"
  - Click "Next"
6. Apply Profile Settings
Configuring Windows Defender Firewall
  - Keep all profiles selected (Domain, Private, Public) unless your security policy requires
otherwise
  - Click "Next"
7. Name the Rule
  - Enter a descriptive name (e.g., "Floating License Server - Client Communication")
  - Add an optional description
  - Click "Finish"
8. Configure IP Address Scope
  - Locate the newly created rule in the Inbound Rules list
  - Right-click the rule and select "Properties"
  - Navigate to the "Scope" tab
9. Restrict Source IP Addresses
  - In the "Remote IP address" section, select "These IP addresses"
  - Click "Add..." and enter the IP address range of your client instances
  - Format examples:
Single IP: 192.168.1.100 IP range: 192.168.1.100-192.168.1.200
10. Apply Configuration
  - Click "OK" to save the scope settings
  - Click "Apply" then "OK" to finalize the rule configuration
Verification After completing these steps, your floating license server should be able to communicate with client instances on ports 3333, 8888, and 7070 (or custom ports that were manually modified), restricted to the specified IP address range.
Troubleshooting
- Ensure the client instance IP addresses fall within the configured range
- Verify that the client security groups also allow outbound traffic on these ports
- Check that no other firewall rules are blocking the connection