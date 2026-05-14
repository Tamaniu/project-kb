---
product: avid-flexnet
product-area: licensing
version: "v8.x"
release-date: 01/01/v8
doc-type: flexnet-legacy-admin
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This document is protected under copyright law. An authorized licensee of [product name] may reproduce this publication for the licensee’s own use in learning how to use the software. This document may not be reproduced or distributed, in whole or in part, for commercial purposes, such as selling copies of this document or providing support or educational services to others. This document is supplied as a guide for [product name]. Reasonable care has been taken in preparing the information it contains. However, this document may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc. does not accept responsibility of any kind for customers’ losses due to the use of this document. Product specifications are subject to change without notice.
The following disclaimer is required by Flexera Software, Inc.:
Pages 10-19 in this guide are an excerpt from FlexNet Embedded Server Application User Guide FNE-0400-SAG01. Rights provided by Flexera Software Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid logo, and Digidesign are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or other countries. See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.
FlexNet Device Manager for Avid Administration Guide (cid:129) Created 2/19/16 2 Installing and Configuring the FlexNet Device Manager for Avid This document is intended for the Administrator at your facility. The FlexNet Device Manager for Avid is used for large facilities to license, activate and manage concurrent floating licenses for Avid applications which require software activation. Using the FlexNet Device Manager for Avid application on a dedicated Windows server, you can license multiple applications or options.
In addition to the FlexNet Device Manager for Avid, you must activate each client license with the Avid Application Manager. You can activate all or just some of the purchased client licenses using the Avid Application Manager utility.
You need to install the FlexNet Device Manager for Avid application on a Windows system; either a physical system or a virtual machine. Supported Windows operating systems include:
Windows XP SP3 or newer, Windows Server 2003 SP1, or newer. Your Avid editing application can be installed on a Windows or Macintosh system.
If you are setting up a Floating License server for the first time and are adding a redundant Floating License server, follow the procedures supplied in this document. If you already have a Floating License server and are configuring a redundant Floating License server, contact Customer Care before you attempt to configure a redundant server.
> **Note:** Flexnet Device Manager does not currently work with a server that has teamed NIC cards. Some of the screenshots and examples displayed in this guide use Avid Media Composer as the
client. You may be activating a different application or option.
Before you Begin Before you Begin Before you install and configure the FlexNet Device Manager for Avid to manage your floating licenses, you should make sure that you configure your network to allow client systems to access the Windows server where you install the FlexNet Device Manager for Avid application.
> **Note:** You must have ports 3333 and 8888 opened in your Firewall settings.
The FlexNet Device Manager for Avid application must be installed on a Windows system.
However, you can activate the licenses from either a Windows or Macintosh client system.
After you purchase a floating license from Avid, you will be provided with Activation Cards that will provide a System ID and Activation IDs once redeemed.
> **Note:** Access to the Internet is required to complete the activation procedure, either directly from the
licensing server or indirectly from a different system. Either way, the Internet access only needs to be temporary.
Installing the FlexNet Device Manager for Avid The FlexNet Device Manager for Avid manages the concurrent use licenses for Avid applications and some options. To use the FlextNet Device Manager, you must install the application on a Windows system server to license and manage your Avid licenses. The server must be viewable by all network clients that will run the software.
> **Note:** For server access, port 3333 and port 8888 must be open on your Windows server. For more
information, see your Firewall settings in your Windows documentation.
Supported Windows operating systems include: Windows XP SP3 or newer, Windows Server 2003 SP1, or newer.
To install the FlexNet Device Manager for Avid application:
1. Quit all active applications.
2. Log into your Master Avid Account.
3. Under My Products and Subscriptions, locate the Avid Floating License Server.
4. Download the FlexNet Device Manager.
5. Run the FlexNetDeviceManagerSetup.exe.
The installation program starts.
6. Follow the prompts to finish the installation.
7. Click Exit.
Setting Up the FlexNet Device Manager for Avid Setting Up the FlexNet Device Manager for Avid After you install the license application on your server, use the FlexNet Device Manager for Avid application to configure the server and activate your Avid software licenses.
The FlexNet Device Manager for Avid has a browser based administration user interface.
The Device Manager supports the following browsers:
• Microsoft Internet Explorer 7.x, 8.x (cid:129) Mozilla Firefox 3.x The ID’s you will need for setup and activation:
(cid:129) System ID Located on the Activation Card you receive when you purchase a floating license. The System ID will also be placed in your Account once you redeem the code. See Redeeming an Activation Code.
(cid:129) Activation ID All Activation IDs will be placed in your account once you redeem the codes from the Activation Cards. See Redeeming an Activation Code.
(cid:129) Server Host ID Your Server Host ID is located on the Properties and Status page in the FlextNet Device Manager application. Go to http://your server name:8888/FneServer/ and click Properties and Status, and write down the Server Host ID.
If you are performing a first time license installation, follow the procedures in “FlexNet Device Manager Setup for Initial Licenses” on page 5.
FlexNet Device Manager Setup for Initial Licenses Perform the following if you are setting up the FlexNet Device Manager for an initial license.
If you are setting up a redundant server, follow the procedure in “Configuring a Redundant Floating License Server” on page 18.
To set up the FlexNet Device Manager for Avid (Initial License setup):
1. From any system, go to http://www.avid.com/license.
You will need your System ID, Activation ID and Server Host ID. To obtain these IDs, see “The ID’s you will need for setup and activation:” on page 5.
The Avid Software License Activation Web page opens.
Setting Up the FlexNet Device Manager for Avid
2. In the Software License Activation Web page, enter your Activation ID.
To locate the Activation ID, see “The ID’s you will need for setup and activation:” on page 5.
3. Enter your System ID and then your Server Host ID in the Device ID field.
To locate the Server Host ID and the System ID, see “The ID’s you will need for setup and activation:” on page 5.
4. If you would like to have your Activation file sent to you, enter your e-mail address.
5. Click Activate.
The Avid licensing system creates a bin license file. This file contains license information needed to activate your floating license server.
If you entered an e-mail address, the .bin file will be sent to you as an attachment. You can also download the .bin file directly from the site.
6. Click Download to save the .bin file to your system.
7. Locate the .bin file and move the .bin file onto your Server system.
8. From your Server system, go to http://your server name:8888/FneServer/ (case sensitive).
The FlexNet Device Manager for Avid opens.
9. Under the FNE Server options, click Offline Server Updates.
Setting Up the FlexNet Device Manager for Avid
10. Click the Browse button and locate the .bin file (Upload response file) that you copied onto
your Server system, then click Open.
11. Click Upload.
This sets up and activates your floating license server. You can now activate each machine where you have installed the Avid application or options.
> **Note:** You can verify a successful activation by viewing the Feature Usage page in the FlexNet Device
Manager. For more information, see “Feature Usage View in FlexNet Device Manager” on page 16.
To activate your Avid software application or options, see “Activating Each Client” on page 10.
Adding Additional Licenses to a FlexNet Server Perform the following if you have already setup a server and need to add more licenses. When you purchase additional licenses, you will receive an activation card. Use the card to redeem an Activation ID. Once you have redeemed the Activation ID (see Redeeming an Activation Code), perform the following to add the licenses.
To add licenses:
1. From any system, go to http://www.avid.com/license.
You will need your System ID, Activation ID and Server Host ID. To obtain these IDs, see “The ID’s you will need for setup and activation:” on page 5.
The Avid Software License Activation Web page opens.
Setting Up the FlexNet Device Manager for Avid
2. In the Software License Activation Web page, enter your Activation ID and if you would like
to have your Activation file sent to you, enter your e-mail address.
To locate the Activation ID, see “The ID’s you will need for setup and activation:” on page 5.
3. Enter your Server Host ID in the Device ID field and your System ID.
To locate the Server Host ID and the System ID, see “The ID’s you will need for setup and activation:” on page 5.
If you are configuring a Backup server, make sure you enter your Backup Server Host ID as well.
4. Click Activate.
The Avid licensing system creates a .bin. This file contains license information needed to activate your floating license server.
If you entered an e-mail address, the .bin file will be sent to you as an attachment. You can also download the .bin file directly from the site.
5. Click Download to save the .bin file to your system.
6. Locate the .bin file and move the .bin file onto your Server system.
7. From your Server system, go to http://your server name:8888/FneServer/ (case sensitive).
The FlexNet Device Manager for Avid opens.
8. Under the FNE Server options, click Offline Server Updates.
9. Click the Browse button and locate the .bin file (Upload response file) that you copied onto
your Server system, then click Open.
10. Click Upload.
Setting Up the FlexNet Device Manager for Avid The additional licenses are added to the server.
> **Note:** You can verify a successful activation by viewing the Feature Usage page in the FlexNet Device
Manager. For more information, see “Feature Usage View in FlexNet Device Manager” on page 16.
To activate your Avid software application or options, see “Activating Each Client” on page 10.
Changing the Port Number for the Floating License Server Use the following procedure if you need to change the port for the Floating License Server. This might be useful if you want to install the Floating License Server on the same server as the Media Indexer.
To change the port number for the Floating License Server:
1. Log onto the Server (either directly or via Remote Desktop).
2. Open the Floating License Server UI page locally as a test: http://localhost:8888/FneServer/
3. Edit the server.xml file to change the port number.
a. Open C:\Program Files (x86)\Avid\FlexNet Device Manager\Server\conf.
b. Edit the file server.xml file. (You can edit in Notepad.) c. Search for the text 8888 and replace the first occurrence with the new port number, for example, 8889.
d. Save and close the file.
4. Restart the Floating License UI service.
a. Open the Task Manager.
b. On the Services tab, find FlexNetDeviceManager.
c. Right-click Stop Service.
d. Right-click Start Service.
5. Open the Floating License Server UI page as a test of the new port:
http://localhost:8889/FneServer/
6. Test the new port on other machines (You may need to open the port in the firewall)
http://<server_name>:8889/FneServer/ Activating Each Client Activating Each Client Use the Avid Application Manager to activate the licenses for each Avid software application and options. Repeat these steps for each client or option you are activating.
To activate each Avid software application:
1. To activate an Avid software application, install and launch the application on each machine.
The Welcome window opens.
Activating Each Client
2. Click “I want to activate my software using the Internet, another computer, or a floating
license server” under the Electronic Activation section.
3. The Application Manager opens.
4. Select Floating from the Select Activation method menu.
5. Enter your Floating License Server URL, then click Save.
The Application Manager confirms your system information.
If applicable, enter the Backup Server URL, then click Save.
6. Quit out of the Application Manager utility and the editing application will continue to
launch via the Floating License.
7. To confirm this activation, you can go to the FlexNet Device Manager, and click the Devices
tab.
The system displays the Device ID and device alias of each activated client.
You can also checkout a floating license if you want to work on your system while not being connected to the Internet. This might be useful if you are working on a laptop and then want to take the laptop home to finish working on your project. For details on checking out a floating license, search for “Checking Out a Floating License” in the Installation Guide for Avid Editing Applications.
Using the Different Views in the FlexNet Device Manager for Avid Using the Different Views in the FlexNet Device Manager for Avid The following sections are excerpts from Flexera™ Software Inc.
These are optional features you can use to manage your floating license:
(cid:129) Reserving new entries and modifying entries on your server (cid:129) Viewing information on reserved devices (cid:129) Viewing details regarding every feature in the counted pool including overage information (cid:129) Upload Response views to enable you to update the server license pool using offline operations (cid:129) Display the Properties and Status view with the current settings used by the server application (cid:129) Display log information about the server (cid:129) Display Device Manager information and settings Reservations View in FlexNet Device Manager The FlexNet Device Manager software allows the administrator to set activation reservations for specific users or devices. Using a reservations list, the administrator can define a specified quantity of a feature or features in a pool to be available to a specific device. In essence you are allocating an activation from the license pool and reserving it for a device with a specific host id.
The Reservations View enables viewing and modifying entries in your server’s reservation list.
Using the Different Views in the FlexNet Device Manager for Avid The Reservations view displays the contents of the current reservation list. The notation in the Status column indicates whether license rights exist to fulfill the reservation. The green check mark indicates that a reservation can be satisfied, and the red cross indicates a reservation that cannot be satisfied.
Using the Different Views in the FlexNet Device Manager for Avid To add a reservation:
1. Click Add to add a single reservation to the reservation list.
The Add Reservation page opens. If a reservation list does not yet exist, it will be created in the server’s configured XML cache location as a file named reservations.xml.
2. Enter the required fields.
The Device ID refers to the client needing a reserved license. You can locate the Feature Name and Version in the Devices View (see “Devices View in FlexNet Device Manager” on page 15).
3. Click Add to add the reservation to the reservation list.
Click Cancel to reset the current entry values without saving.
4. Click Edit in the Reservations view to modify the reserved count of a particular
device–feature combination in the reservations list.
Changing a feature’s count to 0 (zero) removes the reservation entry from reservations.xml and from the Reservations view.
5. When finished editing, click Submit to finalize the changes and apply them to the server
system.
> **Note:** You can Export the list of reservations and Import on the backup server to save time rather than
entering each reservation again.
Using the Different Views in the FlexNet Device Manager for Avid Devices View in FlexNet Device Manager The Devices view displays the devices recognized by the server application from having fulfilled licenses from the counted pool or from having reservations defined. The name displayed for a device in the Device Alias column is set in the device code using FlxPublisherSetDeviceName.
To use the Device View:
1. Click a Device ID in the Device ID column.
The device’s details display, including information about its consumed features and reserved features.
2. Use the Search field to search for a device by its hostid.
3. Click the Device ID header to sort the devices table.
Using the Different Views in the FlexNet Device Manager for Avid Feature Usage View in FlexNet Device Manager The Feature Usage view displays details regarding every feature in the counted pool served by the server application. The Search field enables searching by feature name or version, and features can be sorted by name, version, or count by clicking the column header.
Clicking a feature name displays detailed information about the devices currently consuming features from the counted pool and those reserving a given feature.
Using the Different Views in the FlexNet Device Manager for Avid Properties and Status View in FlexNet Device Manager The Properties and Status view displays the current settings used by the server application. With the exception of settings related to security and server policy—borrow interval, renew interval, response lifetime, failover maintenance interval, whether server synchronization to FNO is enabled—settings can be edited in this view. Any changes made it this view take effect when you click Save at the bottom of the page. Properties that additionally require the server—the launcher executable—to be restarted before taking effect are denoted with a restart icon.
The properties exposed on this page include:
(cid:129) Server host ID: the server application’s hostid value used to fulfill capability requests against a back-office server. If the server has multiple hostid values, the list contains the available hardware Ethernet addresses and dongle IDs; select the value registered with the back-office server.
(cid:129) General properties: this category contains settings such as the port number the server application uses to listen to requests from devices (by default 3333); the back-office server’s hostname or IP address, port number, and type; and how frequently the server application refreshes its license rights. Also included in this section is the option to select Remote or Local for the XML access permission. The XML access permission has to be set to Remote to allow activation from external systems.
> **Note:** If you modify the Listen Port setting here, you must also modify the FNE Server Listen Port
setting in the User Interface Configuration view.
Using the Different Views in the FlexNet Device Manager for Avid (cid:129) FNO poll properties: indicate whether and how often the server application contacts the back-office server (such as FlexNet Operations), and how often to retry communications after a failed attempt.
(cid:129) Synchronization properties: exposes different types of server synchronization properties.
(cid:129) Failover properties: information about the main and backup servers, if using server failover.
This section can be hidden using the Device Manager Settings view.
(cid:129) Security properties: read-only information about the security-policy settings borrow interval, borrow granularity, renew interval, and response lifetime.
(cid:129) Error log properties: external destination (if any) and log levels to include in the server application’s FNE error log. Selecting “File” as the log destination results in additional prompts for log rotation policy settings. Note that the error log location is defined in the value of the error-log/log-directory element in properties.xml, and not exposed in this view.
(cid:129) Access log properties: external destination (if any) for the Device Manager’s HTML access log. Selecting “File” as the log destination results in additional prompts for log rotation policy settings.
The server application’s configuration settings are stored in the server’s cache file properties.xml. In demo mode, this file is expected to be in the same directory as the launcher executable; in production mode, the directory containing properties.xml is defined in the configured cache location.
This view also provides a Status tab that displays information about the server application, including its version, status, failover role, and last attempted contact and last successful contact with the back-office server.
Server Logs View in FlexNet Device Manager The Server Logs view shows two logs related to the server application:
(cid:129) For file destinations, you can select the desired log file to view from the Log Files drop-down list.
The Error Log tab shows the server application’s log file, which includes messages generated by the server application. Which messages are displayed in this log depend on the log levels enabled in the “Log level” selections in the server properties. (For performance reasons, debug-level messages are not displayed in the Device Manager’s Error Log tab if the “Log destination” is set to “stderr” or “stdout”, even if enabled in the log-level settings.
Debug-level messages are of course written to the actual target log destination.) Using the Different Views in the FlexNet Device Manager for Avid (cid:129) The Access Log tab (not pictured) shows standard web-server access information.
FlexNet Device Manager Information and Settings Below the other commands in the FlexNet Device Manager menu is the Device Manager group, which contains the About and Settings views. The About view displays build, system, and browser information. In the Settings view, you specify the port number and host name where the FNE server application is running, as well as whether to enable certain Device Manager functionality. These configuration settings appear in a separate list because they can be modified even if the server application is inaccessible, unlike the other server configuration properties.
The properties include:
(cid:129) Number of log lines: the number of lines of an error or access log file to display per page (cid:129) Allow device drop: whether a device’s details page should enable the functionality to mark a device as destroyed (cid:129) Page size: the number of records to display per page (cid:129) FNE server listen port: the port number on which the Device Manager will listen for server application data (default is 3333) (cid:129) FNE server host name: the hostname of the system on which the server application executable is running (default is “localhost”) (cid:129) Display failover properties: whether to display failover-related properties in the Properties and Status view Configuring a Redundant Floating License Server Configuring a Redundant Floating License Server The FlexNet Device Manager for Avid is used for large facilities to license, activate and manage concurrent floating licenses for Avid applications which require software activation. Using the FlexNet Device Manager for Avid application on two dedicated Windows servers, you can license multiple applications or options with high availability.
Before You Begin The following equipment is needed:
(cid:129) Two Windows Servers. Supported Windows operating systems include: Windows XP SP3 or newer, Windows Server 2003 SP1, or newer (cid:129) One or more systems for running Avid Software Applications (Mac or Windows) (cid:129) An Administrator console (any computer connected to the Intranet) The redundancy scheme for the FlexNet Device Manager is active/passive. One of the Windows servers will be designated the main server, and the other will be designated the backup server.
Both servers will have the same licensing software installed, but be configured differently.
System Diagram The following diagrams show how the system will operate in both the normal and failover modes of operation.
Figure 1 shows the normal mode of operation. The editing systems connect to the main licensing system to activate floating licenses.
Figure 1 Normal Mode of Operation Figure 2 shows the failover mode of operation. The editing systems connect to the backup licensing system to activate floating licenses.
Configuring a Redundant Floating License Server Figure 2 Normal Mode of Operation Installing the Redundant Server Use the following instructions to configure the redundant floating license server. Note that the server names main-server and backup-server should be replaced with the actual names of your servers.
To configure a Redundant Server
1. Follow the instructions “Setting Up the FlexNet Device Manager for Avid” on page 5.
Perform the setup for both the primary and backup servers. Once you perform those steps, return to this procedure and perform steps 2 through 7.
2. On the main server, make the following changes on the Properties and Status Page settings:
a. Browse to http://main-server:8888/FneServer/serverProperties_view.action b. Sync to FNE enabled: Yes c. Select Save.
d. Sync to FNE backup server URI: backup-server:3333/fne/bin/sync e. Main server URI: main-server:3333/fne/bin/capability f. Backup server URI: backup-server:3333/fne/bin/capability Configuring a Redundant Floating License Server
3. Click Save.
4. On the backup server, make the following changes on the Properties and Status Page
settings:
a. Browse to http://backup-server:8888/FneServer/serverProperties_view.action b. Sync to FNE enabled: No c. Main server URI: main-server:3333/fne/bin/capability d. Backup server URI: backup-server:3333/fne/bin/capability
5. Click Save.
Configuring a Redundant Floating License Server
6. Restart the services on both machines:
a. Either directly or by remote access, log onto the machine.
b. Right-click on the Task Bar and choose Task Manager c. Click on The Services Tab d. Right-click to stop then start the following two services:
- FlexNetDeviceManager - FNEServer
7. Note the System ID, Activation ID, and BOTH Server Host IDs and follow instructions on
“FlexNet Device Manager Setup for Initial Licenses” on page 5. Then return to perform step 8.
8. Load the .bin files onto the two servers using the instructions “FlexNet Device Manager
Setup for Initial Licenses” on page 5, starting from step 7.
On the Status tab of Properties and Status the main server is set to Failover role of main and the backup server is set to the role of backup.
http://main-server:8888/FneServer/serverStatus_view.action http://backup-server:8888/FneServer/serverStatus_view.action Activating Clients Follow “Activating Each Client” on page 10 to activate the clients.
Testing the System To test the system, shut down the main server, and activate a client while just the backup-server is running. You can use the Feature Usage View to check to make sure the backup server is working properly. Be sure restart the main server once the test is done.
Configuring a Redundant Floating License Server In the Event of Server Failure In the event of either planned maintenance or system failure, the Avid software will automatically switch to the backup server. Once the main server is back up and configured properly, the Avid software will default back to it. Refer to Figure 2 to see a diagram of the failover mode. If the main server is in need of replacement, please contact Customer Care as its license will need to be deactivated from the original server before it can be applied to a new one.