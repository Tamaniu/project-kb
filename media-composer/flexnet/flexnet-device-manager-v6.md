---
product: avid-flexnet
product-area: licensing
version: "v6.x"
release-date: 01/10/2013
doc-type: flexnet-device-manager-admin
source: Avid_Volume_License_Server_Administration_Guide.pdf
confidentiality: public
date-added: 08/06/2026
status: historical
note: FlexNet Device Manager for Avid v6.x (volume licensing); 0175-30994-00 Rev D, October 2013; covers Windows Server 2008/2003 R2, Win XP/7; uses Avid License Control tool and license.bin; older than flexnet-legacy-admin.md (v8.x)
---

Flex Net Device Manager for Avid
Administration Guide

Legal Notices
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may
only be used in accordance with the license agreement.
This product may be protected by one or more U. S. and non-U. S patents. Details are available at www.avid.com/patents.
This document is protected under copyright law. An authorized licensee of [product name] may reproduce this publication for the
licensee’s own use in learning how to use the software. This document may not be reproduced or distributed, in whole or in part, for
commercial purposes, such as selling copies of this document or providing support or educational services to others. This document
is supplied as a guide for [product name]. Reasonable care has been taken in preparing the information it contains. However, this
document may contain omissions, technical inaccuracies, or typographical errors. Avid Technology, Inc. does not accept
responsibility of any kind for customers’ losses due to the use of this document. Product specifications are subject to change without
notice.
Copyright © 2013 Avid Technology, Inc. and its licensors. All rights reserved.
The following disclaimer is required by Flexera Software, Inc.:
Pages 10-19 in this guide are an excerpt from Flex Net Embedded Server Application User Guide FNE-0400-SAG01. Rights
provided by Flexera Software Inc.
Attn. Government User(s). Restricted Rights Legend
U. S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or
“commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a
unit or agency of the U. S. Government, all rights with respect to this Software and documentation are subject to the terms of the
License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Trademarks
Avid, the Avid logo, and Digidesign are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or
other countries. See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or
other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U. S. and other countries. Windows
is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other
trademarks contained herein are the property of their respective owners.
This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.
Flex Net Device Manager for Avid Administration Guide (cid:129) 0175-30994-00 Rev D (cid:129) October 2013

2 Installing and Configuring the Flex Net
Device Manager for Avid
This document is intended for the Administrator at your facility. The Flex Net Device Manager
for Avid is used for large facilities to license, activate and manage concurrent volume licenses for
Avid applications which require software activation. Using the Flex Net Device Manager for
Avid application on a dedicated Windows server, you can license multiple applications or
options.
In addition to the Flex Net Device Manager for Avid, you must activate each license with the
Avid License Control tool. When you activate your Avid licenses using Flex Net Device Manager
for Avid, you can activate all or some of the licenses that you have purchased.
Each volume license needs to be licensed separately. However, multiple volume licenses can be
hosted on a single server. If you purchased licenses for more than one Avid product— for
example, you have licenses for Avid Media Composer and Avid News Cutter— you activate
licenses for these products separately. You cannot activate volume licensed products with
non-volume licensed products on the same client device. If you purchase a volume license for
Media Composers, you will not be able to use Script Sync or Phrase Find as they are not available
in volume licensing format. If you purchase Phrase Find or Script Sync licenses, you will only be
able to use them on non-volume Media Composer activations.
You need to install the Flex Net Device Manager for Avid application on a Windows system.
Supported Windows operating systems include: Windows Server 2008, Windows 7 (32-bit and
64-bit), Windows Server 2003 R2, and Windows XP. Your Avid editing application, Phrase Find
or Script Sync can be installed on a Windows or Macintosh system.
n
Some of the screenshots and examples displayed in this guide use Avid Media Composer as the
client. You may be activating a different application or option.
3

Before you Begin
Before you Begin
Before you install and configure the Flex Net Device Manager for Avid to manage your volume
licenses, you should make sure that you configure your network to allow client systems to access
the Windows server where you install the Flex Net Device Manager for Avid application.
n
You must have ports 3333 and 8888 opened in your Firewall settings.
The Flex Net Device Manager for Avid application must be installed on a Windows system.
However, you can activate the licenses from either a Windows or Macintosh client system.
After you purchase a volume license from Avid, you will be provided with an Entitlement
Certificate which includes a unique System ID and Activation ID.
n
The Flex Net Device Manager for Avid application installs on a server that requires an Internet
connection to complete the activation procedure.
Installing the Flex Net Device Manager for Avid
The Flex Net Device Manager for Avid manages the concurrent use licenses for Avid applications
and some options. To use the Flext Net Device Manager, you must install the application on a
Windows system server to license and manage your Avid licenses. The server must be viewable
by all network clients that will run the software.
n
For server access, port 3333 and port 8888 must be open on your Windows server. For more
information, see your Firewall settings in your Windows documentation.
The following Windows operating systems are supported for the Flex Net Device Manager:
(cid:129) Windows Server 2008
(cid:129) Windows 7 (32-bit and 64-bit)
(cid:129) Windows Server 2003 R2
(cid:129) Windows XP
To install the Flex Net Device Manager for Avid application:
1. Quit all active applications.
2. Navigate to Editing Application Name\Installers\Volume License Server in your editing
application’s installation folder and double-click Flex Net Device Manager Setup.exe.
The installation program starts.
3. Follow the prompts to finish the installation.
4. Click Exit.
4

Setting Up the Flex Net Device Manager for Avid
Setting Up the Flex Net Device Manager for Avid
After you install the license application on your server, use the Flex Net Device Manager for Avid
application to configure the server and activate your Avid software licenses.
The Flex Net Device Manager for Avid has a browser based administration user interface.
The Device Manager supports the following browsers:
(cid:129) Microsoft Internet Explorer 7.x, 8.x
(cid:129) Mozilla Firefox 3.x
The ID’s you will need for setup and activation:
(cid:129) Activation ID
You receive an Activation ID if you purchased the Avid volume license application. The
Activation ID is located on the Entitlement Certificate.
(cid:129) System ID
Located on the Entitlement Certificate
(cid:129) Server Host ID
Your Server Host ID is located on the Properties and Status page in the Flext Net Device
Manager application. Go to http://your server name:8888/Fne Server/ and click Properties
and Status, and write down the Server Host ID.
If you are performing a first time license installation, follow the procedures in “Flex Net Device
Manager Setup for Initial Licenses” on page5. If you are performing a license upgrade, follow
the procedures in “Upgrading Licenses in Flex Net Device Manager” on page7.
Flex Net Device Manager Setup for Initial Licenses
Perform the following if you are setting up the Flex Net Device Manager for an initial license.
To set up the Flex Net Device Manager for Avid (Initial License setup):
1. From any system, go to http://www.avid.com/license.
You will need your System ID, Activation ID and Server Host ID. To obtain these IDs, see
“The ID’s you will need for setup and activation:” on page5.
The Avid Software License Activation Web page opens.
2. In the Software License Activation Web page, enter your Activation ID and if you would like
to have your Activation file sent to you, enter your e-mail address.
5

Setting Up the Flex Net Device Manager for Avid
To locate the Activation ID, see “The ID’s you will need for setup and activation:” on
page5.
3. Enter your Server Host ID in the Device ID field and your System ID.
To locate the Server Host ID and the System ID, see “The ID’s you will need for setup and
activation:” on page5.
4. Click Activate.
The Avid licensing system creates a license.bin. This file contains license information
needed to activate your volume license server.
If you entered an e-mail address, the license.bin file will be sent to you as an attachment.
You can also download the license.bin file directly from the site.
5. Click Download to save the license.bin file to your system.
6. Locate the license.bin file and move the license.bin file onto your Server system.
7. From your Server system, go to http://your server name:8888/Fne Server/ (case sensitive).
The Flex Net Device Manager for Avid opens.
8. Under the FNE Server options, click Offline Server Updates.
9. Click the Browse button and locate the license.bin file (Upload response file) that you
copied onto your Server system, then click Open.
10. Click Upload.
This sets up and activates your volume license server. You can now activate each machine
where you have installed the Avid application or options.
6

Setting Up the Flex Net Device Manager for Avid
n
You can verify a successful activation by viewing the Feature Usage page in the Flex Net Device
Manager. For more information, see “Feature Usage View in Flex Net Device Manager” on
page16.
To activate your Avid software application or options, see “Activating Each Client” on
page9.
Upgrading Licenses in Flex Net Device Manager
Perform the following if you are upgrading the licenses on your Flex Net Device manager.
n
Not all clients in your environment need to be updated. For example, if you have a number of
Media Composer v6.0 systems in your environment, you can leave some at version 6.0 and
upgrade others to v6.5. They do not all have to be upgraded at the same time.
To set up the Flex Net Device Manager for Avid (For Upgrade Licenses)
1. From any system, go to http://www.avid.com/upgrade.
The Upgrades page opens.
You will need your System ID, Activation ID and Server Host ID. To obtain these IDs, see
“The ID’s you will need for setup and activation:” on page5.
2. In the Academic Volume License Avid Advantage Plan Customers section, select Click here
to claim you upgrade license.
The Volume License Server Upgrades window opens
3. Enter your Activation ID and your System ID. (These were on your initial Entitlement
Certificate.)
4. (optional) Enter your email address.
5. Click Submit to ensure you are eligible for the upgrade.
6. At the bottom of the page, select Click here to upgrade.
The Avid licensing system creates a license.bin. This file contains license information
needed to activate your volume license server.
If you entered an e-mail address, the license.bin file will be sent to you as an attachment.
You can also download the license.bin file directly from the site.
7. Click Download to save the license.bin file to your system.
8. Locate the license.bin file and move the license.bin file onto your Server system.
9. From your Server system, go to http://your server name:8888/Fne Server/ (case sensitive).
The Flex Net Device Manager for Avid opens.
10. Under the FNE Server options, click Offline Server Updates.
7

Setting Up the Flex Net Device Manager for Avid
11. Click the Browse button and locate the license.bin file (Upload response file) that you
copied onto your Server system, then click Open.
12. Click Upload.
This sets up and activates your volume license server. You can now activate each machine
where you have installed the Avid application or options.
n
You can verify a successful activation by viewing the Feature Usage page in the Flex Net Device
Manager. For more information, see “Feature Usage View in Flex Net Device Manager” on
page16.
To activate your Avid software application or options, see “Activating Each Client” on
page9.
8

Activating Each Client
Activating Each Client
Use the Avid License Control tool to activate the licenses for each Avid software application and
options. Repeat these steps for each client or option you are activating. The steps are slightly
different when activating the Avid software application or options, follow the steps that apply.
To activate each Avid software application:
1. To activate an Avid software application, install the application on each machine.
The Welcome window opens.
2. Click “I want to activate my software using the Internet, another computer, or a volume
license server” under the Electronic Activation section.
The Avid License Control tool opens.
9

Activating Each Client
3. Click Activate next to the Avid application.
4. Click Volume License Server.
5. Enter your Volume License Server name or URL, then click Continue.
To obtain your Volume License Server name on your server system, go to Control Panel >
System and Security > System. The Computer name is the Volume License Server name.
Your Avid application or option is activated and you can begin using the software.
6. To confirm this activation, you can go to the Flex Net Device Manager, and click the Devices
tab.
The system displays the Device ID of each activated client.
To activate each Avid option:
1. If your option is not installed with your Avid software application, install the option.
For some Avid options, you can also activate them from within the application. See the
instructions that came with your option
2. Go to the following location:
(Windows) Start/All Programs/Avid/Utilities/License Control
(Macintosh) Applications/Utilities/Avid Utilities/License Control
The Avid License Control tool opens.
10

Activating Each Client
3. Click Activate next to the option.
4. Click Volume License Server.
5. Enter your Volume License Server name or URL, then click Continue.
To obtain your Volume License Server name on your server system, go to Control Panel >
System and Security > System. The Computer name is the Volume License Server name.
Your Avid option is activated and you can begin using the option
6. To confirm this activation, you can go to the Flex Net Device Manager, and click the Devices
tab.
The system displays the Host ID of each activated option.
11

Deactivating the Avid Application and Options
Deactivating the Avid Application and Options
You can deactivate one or more Avid licenses using the Avid License Control tool. This increases
the number of licenses available on the server.
You must have access to the licensing server to deactivate your software. Deactivation
deactivates your license, but also returns it to the license pool maintained by the Volume license
server.
n
You must have an Internet Connection and have access to the Flex Net Device Manager server to
deactivate the software and its options.
To deactivate your Avid application and options:
1. Open the Avid License Control tool, go to the following location:
(Windows) Start/All Programs/Avid/Utilities/License Control
(Macintosh) Applications/Utilities/Avid Utilities/License Control
The Avid License Control tool opens.
2. Next to the Avid application or the option, click Deactivate.
3. Click Yes or No to confirm the deactivation.
You successfully deactivate the Avid application or option and the button changes to
Activate.
Getting a Replacement License
If you have a computer in your environment that stopped functioning before you deactivated the
license, it is possible to get a replacement license. You must first gather system information and
then contact Customer Support to receive the replacement license.
To gather the system information:
1. Access the Flex Net Device Manager page: http://your server name:8888/Fne Server/ (case
sensitive).
2. Click the Feature Usage tab.
3. Note the following: the Feature, the Version, and the Count of the missing entitlement. For
example, (Feature - ENT_Media_Composer) (Version - 6.0) (Count - 20)
4. Click the Properties and Status tab.
5. Note the Server Host ID Value.
12

Using the Different Views in the Flex Net Device Manager for Avid
6. Contact Avid Customer Success and report the following information:
a. Your e-mail address
b. Server Host ID value
c. Number of replacement licenses needed
d. Feature
e. Version
f. Count
Avid Customer Success will send you an e-mail that provides you with a new Activation ID
and System ID. Follow the procedures in “Activating Each Client” on page9 using these
new IDs.
n
It might take up to 24 hours to receive the new IDs.
Using the Different Views in the Flex Net Device
Manager for Avid
The following sections are excerpts from Flexera™ Software Inc.
These are optional features you can use to manage your volume license:
(cid:129) Reserving new entries and modifying entries on your server
(cid:129) Viewing information on reserved devices
(cid:129) Viewing details regarding every feature in the counted pool including overage information
(cid:129) Upload Response views to enable you to update the served license pool using offline
operations
(cid:129) Display the Properties and Status view with the current settings used by the server
application
(cid:129) Display log information about the server
(cid:129) Display Device Manager information and settings
Reservations View in Flex Net Device Manager
The Flex Net Device Manager software allows the administrator to set activation reservations for
specific users or devices. Using a reservations list, the administrator can define a specified
quantity of a feature or features in a pool to be available to a specific device. In essence you are
allocating an activation from the license pool and reserving it for a device with a specific host id.
13

Using the Different Views in the Flex Net Device Manager for Avid
The Reservations View enables viewing and modifying entries in your server’s reservation list.
The Reservations view displays the contents of the current reservation list. The notation in the
Status column indicates whether license rights exist to fulfill the reservation. The green check
mark indicates that a reservation can be satisfied, and the red cross indicates a reservation that
cannot be satisfied.
To add a reservation:
1. Click Add to add a single reservation to the reservation list.
The Add Reservation page opens. If a reservation list does not yet exist, it will be created in
the server’s configured XML cache location as a file named reservations.xml.
14

Using the Different Views in the Flex Net Device Manager for Avid
2. Enter the required fields.
The Device ID refers to the client needing a reserved license. You can locate the Feature
Name and Version in the Devices View (see “Devices View in Flex Net Device Manager” on
page15).
3. Click Save to add the reservation to the reservation list.
Click Cancel to reset the current entry values without saving.
4. Click Edit in the Reservations view to modify the reserved count of a particular
device–feature combination in the reservations list.
Changing a feature’s count to 0 (zero) removes the reservation entry from reservations.xml
and from the Reservations view.
5. When finished editing, click Submit to finalize the changes and apply them to the server
system.
Devices View in Flex Net Device Manager
The Devices view displays the devices recognized by the server application from having fulfilled
licenses from the counted pool or from having reservations defined. The name displayed for a
device in the Device Alias column is set in the device code using Flx Publisher Set Device Name.
To use the Device View:
1. Click a Device ID in the Device ID column.
The device’s details display, including information about its consumed features and reserved
features.
2. Use the Search field to search for a device by its hostid.
3. Click the Device ID header to sort the devices table.
15

Using the Different Views in the Flex Net Device Manager for Avid
Feature Usage View in Flex Net Device Manager
The Feature Usage view displays details regarding every feature in the counted pool served by
the server application. The Search field enables searching by feature name or version, and
features can be sorted by name, version, or count by clicking the column header.
Clicking a feature name displays detailed information about the devices currently consuming
features from the counted pool and those reserving a given feature.
16

Using the Different Views in the Flex Net Device Manager for Avid
Properties and Status View in Flex Net Device Manager
The Properties and Status view displays the current settings used by the server application. With
the exception of settings related to security and server policy—borrow interval, renew interval,
response lifetime, failover maintenance interval, whether server synchronization to FNO is
enabled—settings can be edited in this view. Any changes made it this view take effect when you
click Save at the bottom of the page. Properties that additionally require the server—the launcher
executable—to be restarted before taking effect are denoted with a restart icon.
The properties exposed on this page include:
(cid:129) Server host ID: the server application’s hostid value used to fulfill capability requests against
a back-office server. If the server has multiple hostid values, the list contains the available
hardware Ethernet addresses and dongle IDs; select the value registered with the back-office
server.
(cid:129) General properties: this category contains settings such as the port number the server
application uses to listen to requests from devices (by default 3333); the back-office server’s
hostname or IP address, port number, and type; and how frequently the server application
refreshes its license rights. Also included in this section is the option to select Remote or
Local for the XML access permission.
17

Using the Different Views in the Flex Net Device Manager for Avid
n
If you modify the Listen Port setting here, you must also modify the FNE Server Listen Port
setting in the User Interface Configuration view.
(cid:129) FNO poll properties: indicate whether and how often the server application contacts the
back-office server (such as Flex Net Operations), and how often to retry communications
after a failed attempt.
(cid:129) Synchronization properties: exposes different types of server synchronization properties.
(cid:129) Failover properties: information about the main and backup servers, if using server failover.
This section can be hidden using the Device Manager Settings view.
(cid:129) Security properties: read-only information about the security-policy settings borrow interval,
borrow granularity, renew interval, and response lifetime.
(cid:129) Error log properties: external destination (if any) and log levels to include in the server
application’s FNE error log. Selecting “File” as the log destination results in additional
prompts for log rotation policy settings. Note that the error log location is defined in the
value of the error-log/log-directory element in properties.xml, and not exposed in this view.
(cid:129) Access log properties: external destination (if any) for the Device Manager’s HTML access
log. Selecting “File” as the log destination results in additional prompts for log rotation
policy settings.
The server application’s configuration settings are stored in the server’s cache file
properties.xml. In demo mode, this file is expected to be in the same directory as the launcher
executable; in production mode, the directory containing properties.xml is defined in the
configured cache location.
This view also provides a Status tab that displays information about the server application,
including its version, status, failover role, and last attempted contact and last successful contact
with the back-office server.
Server Logs View in Flex Net Device Manager
The Server Logs view shows two logs related to the server application:
(cid:129) For file destinations, you can select the desired log file to view from the Log Files
drop-down list.
The Error Log tab shows the server application’s log file, which includes messages
generated by the server application. Which messages are displayed in this log depend on the
log levels enabled in the “Log level” selections in the server properties. (For performance
reasons, debug-level messages are not displayed in the Device Manager’s Error Log tab if
the “Log destination” is set to “stderr” or “stdout”, even if enabled in the log-level settings.
Debug-level messages are of course written to the actual target log destination.)
(cid:129) The Access Log tab (not pictured) shows standard web-server access information.
18

Using the Different Views in the Flex Net Device Manager for Avid
Flex Net Device Manager Information and Settings
Below the other commands in the Flex Net Device Manager menu is the Device Manager group,
which contains the About and Settings views. The About view displays build, system, and
browser information. In the Settings view, you specify the port number and host name where the
FNE server application is running, as well as whether to enable certain Device Manager
functionality. These configuration settings appear in a separate list because they can be modified
even if the server application is inaccessible, unlike the other server configuration properties.
The properties include:
(cid:129) Number of log lines: the number of lines of an error or access log file to display per page
(cid:129) Allow device drop: whether a device’s details page should enable the functionality to mark a
device as destroyed
(cid:129) Page size: the number of records to display per page
(cid:129) FNE server listen port: the port number on which the Device Manager will listen for server
application data (default is 3333)
(cid:129) FNE server host name: the hostname of the system on which the server application
executable is running (default is “localhost”)
(cid:129) Display failover properties: whether to display failover-related properties in the Properties
and Status view
19