---
product: mediacentral-newsroom-management-data-receiver
product-area: newsroom-management
version: "2026.4"
release-date: 01/04/2026
doc-type: install-admin-guide
source: pdf
confidentiality: public
date-added: 08/06/2026
status: current
---

MediaCentral | Data Receiver Installation and Administration Guide Version 2026.4 Using This Guide Using This Guide Congratulations on your purchase of your Data Receiver system, which ingests commercial news wire feeds, such as AP, Reuters, UPI and others, and formats them into individual stories within the host system to which it is attached.
This guide is written for information systems technicians, network administrators, and any other technical personnel responsible for purchasing the equipment, preparing a site for installation, and connecting Data Receiver to the network. Portions of the guide provide operations information for system administrators who are managing Data Receiver, and guidelines for general system users.
> **Note:** It is strongly recommended that system administrators have prior experience in or classroom
knowledge of the Windows-based operating systems.
This guide describes the features and hardware for basic Data Receiver installation and operation, providing requirements and specifications for your Data Receiver system in the following areas:
System requirements
- Installation and setup procedures
- System configuration and maintenance
- Use this manual to prepare for and set up your system on the network, after you purchase Data Receiver
components, according to Avid Technology, Inc. requirements and specifications. Before installing any equipment, the site must already have a configured network.
Revision History Date Revised Changes Made May 2026 Added 2026.4 info to Process sub-section in Data Receiver Administrator Application chapter.
November 2025 Updated versions of software & applications found in some install procedures for 2024.10.5 release July 2023 Initial publication for 2023.7 release Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action
> **Note:** A note provides important related information, reminders, recommendations, and
strong suggestions.
w A warning describes an action that could cause you physical harm. Follow the guidelines in this document or on the unit itself when handling electrical equipment.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
This symbol indicates menu commands (and subcommands) in the order you select > them. For example, File > Import means to open the File menu and then select the Import command.
- This symbol indicates a single-step procedure. Multiple arrows in a list indicate that
you perform one of the actions listed.
Using This Guide Symbol or Convention Meaning or Action Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables. Variables are often enclosed in angled brackets: < >.
Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse Press and hold the first key while you press the last key or perform the mouse action.
action For example, Command+Option+C or Ctrl+drag.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view these online versions, select ReadMe from the Help menu, or visit the Knowledge Base at:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-Newsroom-Management
3. Check the documentation that came with your Avid application or your hardware for maintenance or
hardware-related issues.
4. Visit the online Knowledge Base. Online services are available 24 hours per day, 7 days per week.
Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
...With the Syntax of Commands If you are at the console and are unsure about the function of a command, use the help command.
To view instructions about using a command:
- Usethe following command: help <command name>
help dbvisit For instance, type: for an explanation of the dbvisit command.
The following data appears:
dbvisit -<d or v or i> [-r or -c] [-s] [-l] [block# ...] ‘r’ for read only ‘s’ for “slow” to eliminate cache usage ‘c’ use checkpoint partition (forces “-s”) ‘i’ to just validate isam files ‘l’ to list link count distribution ‘v’ verbose mode; extra diagnostic messages ‘d’ print a dot for each queue started (-v overrides)
> **Note:** Lengthy console displays might be edited to emphasize only the most important information in this
guide. An ellipsis (...) represents portions of the console display not shown in the text. Also, because of the margin limitations of this guide, command lines might appear wrapped to multiple lines. This does Using This Guide not necessarily indicate the need to press an Enter key. Unless otherwise indicated, commands should be typed on a single line, allowing the computer to wrap the text whenever the command line stretches beyond the screen margin.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit https://www.avid.com/learn-and-support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 Introduction 1 Introduction The MediaCentral | Data Receiver system is an integrated digital news production system, which provides journalists, producers, directors, writers, and technical personnel with an array of tools to make their jobs easier.
Data Receiver is a highly configurable wire server designed to handle all of a newsroom’s subscription wire feeds in a single server, while enabling all Newsroom Management users to have access to the data from their desktops. It replaces the legacy iNEWS PCU by allowing all wire services to be handled by a single server or by multiple servers. It processes incoming wire data from multiple input sources including e-mail, telnet, RSS, and file in multiple data formats. It’s compatible with existing Newsroom Management systems version 2024.10 and later.
The Data Receiver delivers wire content under demanding conditions; it caches stories as they come in so no data is lost even if the Newsroom Management system is taken offline. The system captures status and error events in Data Receiver logs and may optionally send e-mail system notifications to specified users.
The administrative interface allows configuration of wire or data feeds. Individual content streams each of different formats, such as ANPA, IPTC, and NewsML-G2, are accepted. Each instance of the Data Receiver is configurable to ingest data from these formats, as well as from the different input sources supported.
Data Receiver supports four input types:
- Email—allows the Data Receiver to ingest data from an IMAP or POP3 email server. For POP3 server, it
deletes emails after they are read.
- Telnet—allows the Data Receiver to log on to a Telnet server and detect data streamed from the
Telnet port.
File—allows the Data Receiver to poll a directory on a local or remote PC at a given interval. Any files
- placed into this directory are ingested by the Data Receiver and deleted from the directory.
RSS—enables subscription to syndicated RSS feeds, in addition to public RSS feeds, and use them as
- a wire service source. It uses a poll interval to go to a specified URL, and retrieve new RSS feeds since
its last update.
For all input types, Data Receiver then reformats the data using JavaScript files and put stories into Newsroom Management systems.
Components The Data Receiver is comprised of two major components:
- "Data Receiver Server" on the next page
- "Administrator Application" on the next page
The Data Receiver server performs the processing, while the Administration application allows for configuring of wire feeds and provides diagnostic tools for troubleshooting and maintaining the Data Receiver.
1 Introduction Data Receiver Server The Data Receiver Server performs the majority of the Data Receiver processing, except processing specifically related to the Newsroom Management system.
Data are picked up by the Data Receiver Server Input module, whether it is files in specified directories, email through configured email servers, RSS feed with configured RSS server, or data sent through telnet connections.
These inputs are then going through the Data Processing module, which consists of the configured translation to UTF16, and then transformed with the JavaScript in conjunction with any XSLT so that useful data is extracted and formatted for the Newsroom Management system.
Then, these stories are sent to the Newsroom Management system through the Output module, which communicates with the Newsroom Management system using a wire connection service on the Newsroom Management Server. It uses the configured information regarding the server and any backup server as identified by the Wire Source configuration. On the Newsroom Management Server, the distribution configured for the Wire Source directs the stories into its corresponding destination and applies keyword search feature as configured on the Newsroom Management Server.
Administrator Application The Data Receiver Administrator Application is a graphical user interface (GUI) that is used to configure parameters and monitor any of the configured Data Receiver services. This application displays a summary of configured wire services and their current statuses.
The status of each configured wire service includes:
- Service Name—the name of a configured wire service
- Service Status—the current state (running/stopped/disabled) of a wire service
- Last Input Time—The time stamp for which an input (such as a file, an email, an RSS feed, or the
Telnet connection, depending on the instance configuration) was received on that Data Receiver service instance.
Last Output Time—the time the last story was successfully processed and sent to the Newsroom
- Management system
Stories Processed—the number of stories sent to the newsroom computer system
> **Note:** For more information about checking status of configured wire service instances, "Summary & Wire
Instance Configuration Tabs" on page 23.
1 Introduction Site Preparation For a successful and productive Data Receiver installation, the customer must do the following:
- Network and Power Requirements—Provide a fully functional LAN/WAN network using TCP/IP
networking protocols and install power and cable for all equipment at the site.
- Hardware—Purchase and install required hardware, software, and other needed equipment. The
Data Receiver is supported, compatible with, and qualified with the following:
  - Windows Server 2025 (or Windows Server 2022) with ASP.NET Core Runtime 8.0.21 and .NET
Runtime 8.0.21 or later 8.0 versions
  - Newsroom Management Server 2024.10 and higher
Newsroom Management Server Data Receiver supports wire profiles configured on the Newsroom Management Server. When adding a wire for ingesting through the Data Receiver, you must complete four phases in the setup.
- Phase 1 - Ensure the Data Receiver software is installed and configured.
- Phase 2 - Optional: Create a wire profile for the wire service.
- Phase 3 - Add the wire distribution information.
- Phase 4 - Reconfigure the Newsroom Management system and start the Data Receiver so it can begin
receiving and distributing wire stories.
See the Newsroom Management Setup and Configuration Guide, Chapter 12 - Wires, for more information on all four phases in the setup. With iNEWS licensing, session license will be used for wires. With MediaCentral Subscription licensing, wire service quota will be used for wires. There is no need to configure resources for wires; however, configuring session resources with IP of the wires computer could be used to reserve session licenses for iNEWS licensing.
For dual or triple server systems, the configuration file has multiple host sessions to define which server handles which devices under various circumstances. Resource list entries must be added to each host section depending on which server you want the Data Receiver instances to run.
The following steps must be completed on the Newsroom Management Server:
1. The Data Receiver may have a wire profile in the /site/wires directory. The only profile options
associated with the Data Receiver are form and idle.The wire profile must have the same name as the Data Receiver instance’s Wire Source name. To modify the wire profile, use the line editor command, ed with the following format:
ed /site/wires/<Wire Source name>
> **Note:** See “Phase 2” in Chapter 12 - Wires the Newsroom Management Setup and Configuration
Guide for more information. For help with using the line editor command, see Appendix F in the Newsroom Management Setup and Configuration Guide.
2. Each Data Receiver instance must have its own set of instructions in a story, called the wire
distribution story, located on the Newsroom Management system in the Distribution queue in the SYSTEM.WIRES directory. See Chapter 12 in the Newsroom Management Setup and Configuration Guide for more information.
3. After making the previous changes, do the following:
1 Introduction a. Take the Newsroom Management Server offline using the offline command. While the server is offline, users will not be able to login to the system.
b. Make the new resources take affect by using the configure command.
c. Put the server back online using the online command.
The Data Receiver processes incoming wire stories using information obtained from the Newsroom Management keyword server story. If the keyword story is updated in Newsroom Management the Data Receiver automatically recognizes the updates during processing. For more information about keyword servers, see Chapter 13 - Servers in the Newsroom Management Setup and Configuration Guide.
> **Note:** The preceding steps must be performed for each instance of the Data Receiver.
Different Data Receivers may be used to provide redundancy using a distribution server and parallel wire servers. For more information, see “Parallel Wire Servers”in Chapter 13 - Servers in the Newsroom Management Setup and Configuration Guide.
2 Data Receiver Install and Configuration 2 Data Receiver Install and Configuration This chapter explains the installation and configuration of the Data Receiver.
Before you begin check the following table. It provides a checklist of steps for installing and configuring the Data Receiver and references on where to find more information about each step.
Tasks Refer to...
"Installing the Data Receiver Software" below Install the Data Receiver software Configure Data Receiver "Setup Users" on page 14 and "Setup Remote "Adding a new Wire Service Instance" on Add new wire service instance(s) Installing the Data Receiver Software Before installing Data Receiver software, ensure the network configuration conforms to hardware and software requirements as specified by Avid.
There are two folders in the ISO under DataReceiver: one for the server installation and one for the Data Receiver Administrator Application. Copy both folders to the Data Receiver computer.
To install the Data Receiver Server software:
1. Ensure that ASP.NET Core Runtime 8.0.21 and .NET Runtime 8.0.21 or later 8.0 versions are installed.
2. Navigate to the folder containing the installer for the Data Receiver Server.
3. Double click the setup file in the server folder to start the installation process for the server
component.
> **Note:** If you skipped step 1 and have not installed .NET 8.0.21 or later 8.0 versions, you will get a
message asking you to do so prior to the Data Receiver installation.
4. If you have installed the required ASP.NET Core Runtime and .NET Runtime as instructed, then, when
the Welcome dialog appears, click Next.
5. Read and accept the Data Receiver Setup License Agreement, and then follow the on-screen
instructions to install the server software.
2 Data Receiver Install and Configuration After the installation is completed, the success message appears:
6. Click Finish.
To install the Data Receiver Administrator Application software:
1. Ensure that ASP.NET Desktop Runtime 8.0.21 or later 8.0 version is installed.
2. Navigate to the folder for application software, and select Setup to start the installation.
3. When the Welcome dialog appears, click Next.
4. Read and accept the Administrator Application Setup License Agreement appears, and then follow
the on-screen instructions to install the software.
After the installation is completed, a dialog will inform you about the completion. A checkbox allows 2 Data Receiver Install and Configuration you to launch the Data Receiver Administrator Application after the installation.
5. Click Finish.
Data Receiver Software Configuration Configuring the Data Receiver software involves setting up users, setting up remote clients, and configuring the firewall to open the port to the Data Receiver Server.
Setup Users The default user and password for the Data Receiver Administrator Application is “user” and “pass”. It is C:\Program Files\Avid\Data Receiver stored in the file appsettings.json under the folder at:
Server Avid strongly recommends that users at least change the password. Additional users could be added to the file. Password hashes are generated by using the utility CreatePassword in the same folder. The Data Receiver Server must be restarted to accept changes to the appsettings.json file.
Below is an example of the appsettings.json with another user “inews” added.
2 Data Receiver Install and Configuration
> **Note:** Avid strongly recommends that you make a copy of the working JSON file before making
modifications so that if the Wire Server is unable to restart, you could use the backup JSON.
Setup Remote Clients The Data Receiver Administrator Application could also be run on any computer in the network that could talk to the computer hosting the Data Receiver Server. In this case, the port 7145 needs to be open and a certificate needs to be setup.
> **Note:** The default port is 7145. If the port was changed in the appsettings.json, then the port specified there
has to be opened in the firewall to allow remote clients to connect. The change of the port (or any other setting in the JSON file) requires a restart of the Data Receiver Server.
Configuring the Firewall To open the port 7145 on the Data Receiver Server:
1. Click Control Panel > System and Security > Windows Defender Firewall, and create a new rule with
the following steps:
a. Select Advanced settings on the left panel.
b. Select Inbound Rules (on left panel) and New Rule (on right panel) to create a new rule. This will open the New Inbound Rule Wizard.
2 Data Receiver Install and Configuration c. Select the Rule Type.
d. Specify Protocols and Ports.
2 Data Receiver Install and Configuration e. Specify the Action to be taken when a connection matches specified conditions.
f. Specify the Profile.
2 Data Receiver Install and Configuration g. Specify the Name.
2. Click Finish
Installing Certificates
> **Note:** Avid strongly recommends that certificates provided by your organization are used on the server
instead.
To be able to run the Data Receiver Administrator Application on a different computer, you must configure certification on that computer.
To setup the default certificate delivered with the installation:
1. Configure the path to your organization certificate to the appsettings.json in the Data Receiver
folder.
2. When using the default certificate, copy the certificate file (dr_pub.cer) from the Data Receiver
Server to the client computer. The default certificate is located in the folder:
C:\Program Files\Avid\Data Receiver Server
3. Double-click on it, which then starts the installation and opens the Certificate Import Wizard.
4. On the Welcome dialog, select Local Machine as the Store Location (requires Administrator
privileges), and then click Next.
2 Data Receiver Install and Configuration
5. Under Certificate Store, select Place all certificates in the following store.
6. Click the Browse button, and in the Select Certificate Store dialog, select Trusted Root Certification
Authorities.
7. Click OK. The Select Certificate Store dialog closes.
8. On the Completing dialog, click Finish.
2 Data Receiver Install and Configuration Uninstalling the Data Receiver Software The previously installed Data Receiver software must be uninstalled prior to upgrading to a newer version of the Data Receiver.
To remove the Data Receiver software:
1. Select Start > Control Panel.
2. Select Uninstall a Program in Programs.
3. Double-click on MediaCentral | Data Receiver Administrator to remove the Administrator application.
The system will ask for uninstall confirmation.
4. Select Yes to uninstall the program.
5. Double-click on MediaCentral | Data Receiver Server to remove the server software.
The system will ask for uninstall confirmation.
6. Select Yes to uninstall the program.
2 Data Receiver Install and Configuration Data Receiver Upgrade Information Prior to upgrading the Data Receiver software, ensure the network configuration conforms to hardware and software requirements as specified by Avid. For the latest information, contact Avid Customer Support.
This version of Data Receiver requires the outdated version be uninstalled manually. See "Uninstalling the Data Receiver Software" on the previous page for more information. You can use the Browse button to select the old configuration files.
Wire Service Configuration Migration After uninstalling the older versions, the configuration files should still be available at:
C:\ProgramData\Avid\Data Receiver. These files could be used to set up the new version of Data Receiver Server.
After installing both the new version of Data Receiver Server and the Administrator application, launch the Administrator application and use Services > Import to create a new instance of the wires service from the old configuration files during migration.
3 Data Receiver Administrator Application 3 Data Receiver Administrator Application The Administrator application is a graphical user interface (GUI) which is used to configure parameters, select, and monitor any of the configured wire services. It also displays a summary of configured wire services and shows their current statuses.
The status of each configured wire service includes the wire service name, current state (running/stopped/disabled), the time the last story was sent to the newsroom computer system, and the number of stories sent to the newsroom computer system.
The Data Receiver Administrator window is made up of a menu bar, Summary and Configuration tabs, an Auto Scroll check box, two control buttons, and a Summary panel as shown in the following image:
Menu Bar The Menu bar provides access to the following menu options:
- The Help Menu
- The Services Menu
The Help Menu The Help menu has two options for selection:
- About—displays the Data Receiver version number of the product.
- Help—displays the Data Receiver Installation and Administration Guide.
The Services Menu The Services menu has seven menu options as shown in the following image:
- New—used to configure and add a new wire service instance. See "Adding a new Wire Service
Instance" on page 43 for more information.
- Import—adds an exported wire service instance to the Data Receiver Administrator Application. See
"Importing a Previously Configured Wire Service Instance" on page 45 for more information.
3 Data Receiver Administrator Application Export—exports a configured wire service instance. See "Exporting a Configured Wire Instance" on
- page 44 for more information.
- Clone—creates another wire service instance from an existing wire service instance. See "Cloning a
Configured Wire Service Instance" on page 45 for more information.
- Delete—removes the selected configured instance of a wire service from the Data Receiver
Administrator Application. See "Deleting a Wire Service Instance" on page 44 for more information.
Print—allows a user to print the selected wire service instance. See "Printing a Configured Wire
- Service Instance" on page 46 for more information and to see an example of a printed wire service
instance.
- Exit—closes the Data Receiver Administrator window.
Toolbar With an enabled wire service selected, users can use the top buttons to start or stop the service.
To start or stop a specific wire service instance:
1. Click on the row corresponding to the instance of a wire service on the Summary tab.
2. Do one of the following:
- Click the Start button to start the selected instance of the wire service.
- Click the Stop button to stop the selected instance of the wire service.
To save the configuration of a specific wire service instance:
1. Click on the row corresponding to the instance of a wire service on the Summary tab.
2. Click Save to save all changes that are not yet stored.
The Reload Services button loads the current status for all wire service configurations from the server and updates the user interface.
Operations are logged in the Application Log displayed in the lower part of the Data Receiver Administrator window. See "Summary Panel" on page 42 for more information.
Summary & Wire Instance Configuration Tabs The Summary and Wire Service Instance Configuration tabs are the tabs displayed in the Data Receiver Administrator window. The Summary tab shows the details of each wire service instance configured. See "The Summary Tab" on the next page for more information. The number of Wire Instance Configuration tabs and their names will vary depending on the number of wire service instances configured. See "The Wire Service Configuration Tabs" on page 25 and "Adding a new Wire Service Instance" on page 43 for more information.
3 Data Receiver Administrator Application The Summary Tab The Summary tab displays a list showing the details of each wire service instance configured and a log area. The size of the area may be adjusted with the splitter above the radio buttons for the log section.
The details of each configured instance include:
- Service Name—the name of a configured wire service instance
- Service Status—the current state (running/stopped/disabled/unknown) of a wire service
- Latest Input Time—the time stamp for which something (a file, an e-mail, a RSS feed or the Telnet
connection, depending on the instance configuration) was received on that particular wire service instance Latest Output Time—the time the last story was successfully processed and sent to the newsroom
- computer system
> **Note:** The time stamp in the Latest Output Time column must be within one minute of the time stamp
in the Latest Input Time column. If the time stamps for these two columns differ by more than one minute, then the processed stories are not being successfully sent to the newsroom computer system and are being cached on the Data Receiver.
Stories Processed—the number of stories sent to the newsroom computer system since the instance
- was started (the number of stories is reset each time the instance is restarted)
- The log area displays either the application log or the wire service log based on the selection of the
radio button.
3 Data Receiver Administrator Application The log display may be filtered further through type of message and period. The server retained seven days of both application and wire service log.
The Wire Service Configuration Tabs The number of tabs and their names will vary depending on the number of wire service instances which have been configured. If no instances of wire services are set up, no Wire Service Configuration tabs appear. The Wire Service Configuration tabs may be used to configure and make changes to the particular wire service instance they represent.
For instance, to change the details about the RSS-1 wire service instance shown in the example below, click the RSS-1 tab to bring it forward.
The tab is divided (down the left side) into the Service Description, Input Type, Input Translations, Input Data Capture, Output Type, Output Cache, Logging and Process sections. These sections are explained on the following pages.
Service Description Service Description shows a summary of the current configurations for the selected wire service.
> **Note:** After making any configuration changes, the wire service must be restarted for the changes to take
effect.
3 Data Receiver Administrator Application Input Type This section describes how to change configuration settings for Input Type.
To change a wire service input type:
1. Select Input Type on the left.
2. Select the Active Type from the list using the down arrow. See "Active Input Types" below for more
details on each type.
3. Adjust settings for the input type selected.
4. After making the configuration changes, the Data Receiver must be restarted.
Active Input Types The active types—File, Email, RSS and Telnet—are described in more detail in the following sections:
For File Input Select a Directory using the Select button located to the right of the text box. The directory name is limited to 1-256 alpha numeric characters.
For Order, select the file attribute to be used to sort the files. This will be the order in which they are
- processed.
Enter the Poll Time. The Poll Time controls how often the directory is examined for new files. Valid
- values for Poll Time are from one second to one day.
- Enter the Time-out settings. This is an inactivity timeout. A notification is sent if no new files are found
within the specified period. Valid values are the numbers zero or from one second to one day. If the time-out is not zero, the time out must be greater than the Poll Time Interval. A value of zero will disable Time-out and a warning message is logged.
> **Note:** Files read by the Data Receiver are deleted from the directory after they are read.
The Data Receiver also supports the accessing of file directories over a network connection. Its File Input module may be configured to use a share on a remote PC.
For Email Input:
- Enter the Server Host name.
- Select the Server Type - POP3 or IMAP.
- Enter the Port Number.
3 Data Receiver Administrator Application Enter the User Name.
- Enter the User Password.
> **Note:** If your mail server requires multi-factor authentication (MFA), you need to create an application
password to be used for Data Receiver and use that password instead of your user password.
- Enter an IMAP Folder if the Server Type is IMAP.
- Enter the Poll Time settings. The Poll Time controls how often a connection to the E-Mail server is
made. Valid entries are from one second to one day.
Enter the Time-out. Valid entries are either zero or entries from one second to one day. If the time-out
- is not zero, the time out must be greater than the Poll Interval. A value of zero will disable Time-out
and a warning message is logged.
> **Note:** Files read by the Data Receiver are deleted from the POP3 e-mail server after they are read.
For RSS Input Data Receiver now supports one RSS source per input, and Data Receiver v3.0 supports RSS functionality with (optional) authentication. The purpose of this functionality is to enable subscription to syndicated RSS feeds, in addition to public RSS feeds, and use them as a wire service source.
Data Receiver uses a poll interval to go to a specified URL and retrieve new RSS feeds since its last update.
Like with other input types, Data Receiver then reformats the data using processing configuration and sends stories to the Newsroom Management Server.
Fill in the Feed URL.
- (Optional) Select the Use authentication check box and enter the user credentials for the RSS server.
- Set the polling interval.
- For Telnet Input
- Enter the Server name.
- Enter the Port Number in the text box. The standard Telnet port is 23. Valid values for port numbers
are 1 through 65535.
- Enter the User Name.
- Enter the User Password.
- Enter the Logout time. Valid values are zero or from one second to one day. If Logout Time is zero, the
Wire Service remains connected to the Telnet server. If Logout Time is anything other than zero, the Wire service disconnects from the Telnet server if it does not read any data from the Telnet server during the specified Logout time period, and logs a warning message. After the disconnection, the Wire Service attempts to log on to the Telnet server at the next Poll Time Interval.
- Enter the Poll Time. The Poll Time controls how often a connection to the Telnet server is made. Valid
entries are from one second to one day.
Enter the Timeout settings. This is an inactivity timeout. A notification is sent if no new files are found
- withing the specified period. Valid values are numerical values of zero (0) or from one second to one
day. If the time-out is not zero, the time-out must be greater than the Poll Interval. A value of zero will disable Time-out and a warning message is logged.
- Start Sequence—The string of characters that specify the start of a story byte sequence.Valid values
for the Start Sequence are one or more hexadecimal numbers between 0 and ff, separated by 3 Data Receiver Administrator Application commas.
End Sequence—The string of characters that specify the end of a story byte sequence.Valid values
- for the End Sequence is one or more hexadecimal numbers between 0 and ff, separated by commas.
Input Translations Changing the input translations involves selecting the correct character mapping and the proper custom code page for the input.
> **Note:** After making any custom code page translation table changes, the Data Receiver must be restarted.
To change Input Translations:
1. Select Input Translation on the left.
2. Use the down arrow to select a Character Mapping. The following selections are available:
Character Map Type(s) IBM 437 United States ANSI 1250 (Central European), 1251(Cyrillic), 1252(Latin 1), 1253(Greek), 1254(Turkish), 1255(Hebrew),1256(Arabic), 1257(Baltic), 1258(Vietnamese) UTF -8, -16 Baudot TTS BIG5 Traditional Chinese GB Simplified Chinese Shift-JIS Japanese (Windows 932) KS Korean (Windows 949) 3 Data Receiver Administrator Application Character Map Type(s) 57002 Hindi, Devanagari Dialect Custom Single Byte, Multi Byte, Shifted Select the character mapping recommended by the wire service provider.
> **Note:** Only incoming data formatted to match the input character mapping code page selected are
translated properly. Data not formatted to match the input character mapping code page selected, may not display properly.
3. Use the Create button to create Custom Code Page. Custom Code Page allows the user to define a
Custom Single-Byte, a Custom Multi-Byte, or a Custom Shifted character mapping. See "Custom Code Pages" on page 55 for more information about custom code pages.
4. Check the Reverse check box to specify if certain characters, which are adjacent to each other in a
data stream, are to be order reversed relative to the rest of the data stream. This option accommodates some Arabic language wires that send numeral strings in a reversed character order relative to the other alpha text of a wire story.
5. The Reverse List text box is used to specify the list of characters to be order reversed if they appear
immediately adjacent to each other in the data stream. These characters must be entered in 2-byte hex representation of UTF-16 character with comma (,) separator between entries.
The following example Reverse List entry reverses the digits 0-9:
0030,0031,0032,0033,0034,0035,0036,0037,0038,0039 This Reverse List entry example changes the character input string of numbers 8 201 65 into the
6. The Embedded Reverse Characters text box is used to specify characters that can appear within a
sequence of characters that will be reversed but cannot begin or end the sequence.
7. Optionally, if a Phrase needs to be converted, you can add an entry and enter the phrase (From field)
and its translation (To field) as text or hex representation of characters of the text.
> **Note:** Phrase conversion is intended for use with a small number of letters or words. It is not intended
for translation of entire character sets. When it is necessary to translate an entire character set, use one of the custom code page options available in the Character Mapping text box.
8. Click Save.
9. After making the configuration changes, the Data Receiver must be restarted.
> **Note:** These settings are configured during the creation of the wire service instance and rarely need to
be changed. If you have questions about making changes to the information in the following, contact Avid Customer Support.
3 Data Receiver Administrator Application Input Data Capture To change the Input Data Capture:
1. Select Input Data Capture on the left.
2. When the Input Data Logging dialog box appears, check or clear the Enabled check box to turn on or
off the logging feature.
3. Enter a maximum size (in bytes) for the data log file in the Size text box. When this size is reached,
raw data capturing will stop. The initial value is 1 MiB. The log file is stored under the wire’s folder in:
4. Click Save.
Output Type Output Type allows for changing of the output connection details of the Newsroom Management Server for the wire service instance.
To change the output type information:
1. Select Output Type on the left. The output connection details are shown:
2. Set Active Type to Newsroom Management.
3. Enter the name of the Primary server in the primary Server Host text box.
The Data Receiver must have a corresponding wire server resource on the Newsroom Management Server to which it may connect. The Primary server is the Newsroom Management Server running the corresponding wire server resource for this particular instance. If the name of the Primary server is changed, the Data Receiver must be restarted.
4. For Data Receiver redundancy and failover protection on second or third Newsroom Management
Servers, enter the server name(s) in the Backup Server1 and Backup Server2 text boxes.
The Port Number entry is a read only field and provided for reference only.
3 Data Receiver Administrator Application
5. Enter the wire source in the Wire Source text box. This must match the source specified in the
/site/wires/<Wire Service name> if wires profile is configured on the Newsroom Management Server. It is also used by the Newsroom Management Server for story distribution.
6. Enter the Poll Time duration. Valid Poll Time entries are one (1) second to one (1) day. This is the
frequency with which the Data Receiver checks for incoming stories from Newsroom Management. If there is no response, it times out.
7. Click Save.
Output Cache Data Receiver caches incoming wire stories for output later if it cannot connect to the Newsroom Management Server. This is so no wire stories are lost in a situation where the Newsroom Management Server is not available. Options are available for setting the maximum cache size. The next time the Data Receiver successfully connects to the Newsroom Management Server, processes the stories in its cache according to the cache priority setting.
To change the output cache settings:
1. Select Output Cache on the left. The output cache contains stories which are ready to be sent to the
newsroom computer system. The Output Cache details appear.
2. Enter the numeric cache size in the Cache Size text box. This determines the maximum size of all of
the stories contained in the cache directory.
3. Enter the numeric backup size in the Backup Size text box. This is the maximum size of all stories
contained in the backup directory. When the backup size is reached, all the stories are purged by First In, First Out (FIFO) that is, the oldest stories are removed to make room for the newer stories.
4. Select a Cache Priority using the down-arrow. This is the order in which stories are sent to the NRCS
from the wire service.
The options are:
  - Bulletin—this is the default option; it sends stories containing Bulletin strings to NRCS first
followed by any other stories. If this is used and there are no bulletin stories in the cache, the stories are sent to the newsroom computer system in the order in which they were ingested.
  - Normal—this option sends stories to NRCS in the order in which they were ingested.
  - New—this option sends new stories to NRCS first. Selecting this option means new stories are
always sent ahead of cached stories; cached stories are sent only if there are no new stories to 3 Data Receiver Administrator Application send.
  - Alternating—this option sends new and cached stories to NRCS alternating them so that all
stories are sent. When there are no cached stories, there is nothing to alternate.
5. Click the plus (+) or minus (-) buttons to add or remove the Bulletin strings.
Bulletin strings are only used when the Cache Priority is bulletin. When this is the case, stories which are bulletins get sent to the NRCS before non-bulletin stories. The processed stories are searched for each of the bulletin strings. If any bulletin string is found anywhere in the story, the story is considered a bulletin and handled appropriately.
Also, multiple bulletin strings may be specified. Since the entire story is searched for the matching string, a more finely tuned search can be made by adding functionality to the story format configuration file and adding more specific strings to the final story when necessary. For instance, !- -BULLETIN-- or !--URGENT-- and adding those same strings as Bulletin Strings.
Logging Logging allows for changing of the Logging information details for the wire service instance.
Logging options may include:
- Starting and stopping of the Wire Service
- Wire Service configuration changes
- Story processing time-outs
- Raw data logging errors
- Cache status and errors
- Story received information
- Story sent information
- NRCS communication failures
3 Data Receiver Administrator Application Changing Log Information Details To change the log information details:
1. Select Logging on the left. The Logging details appear.
2. In the Event Logging section, ensure the check boxes are selected for all types of events for which
logging is needed. This is a useful troubleshooting tool particularly if you need logging for a specific area of the Data Receiver.
3. In the OS Logging section, click on the arrow to select the logging level from the list. This selection
determines what messages—errors, warnings, and so forth—are entered in the Windows Event Viewer.
Avid recommends using discretion when selecting the Info-log high-level information, warnings and errors and All-log all information, warnings, and errors OS logging options. These settings increase the workload on the wire server and may impede performance.
4. In the File Logging section, click on the down arrow to select a logging level.
The path for the location of the file is under the individual wire in:
This directory contains separate folders for each wire service instance identified by the ID that was generated when created; the logs are in logs folder under the wire folder.
The Data Receiver creates a log file for each wire service instance, for each day of the week, so at any given time there is one week’s worth of logs per wire service instance. There will never be more than 7 log files per wire service instance.
The log file for each day is unlimited in size, so it is important to have enough hard disk space.
For the latest information on hardware specifications visit: http://www.avid.com/products The following is the naming convention used for a log file:
<GUID>.log.<Day of the week> 31556319.Wednesday Example:
3 Data Receiver Administrator Application In the previous example, when Wednesday rolls around, the log file from last week will be flushed out and a new Wednesday log file will be started.
> **Note:** By default Windows hides file extensions for known file types. When Data Receiver log files are
associated with a program, such as WordPad or Notepad, the extensions —.Monday, .Tuesday, and so forth—are hidden making it difficult to tell which day of the week a particular file is from.
Avid recommends changing the Windows folder settings to always show file extensions.
5. When email notification is needed, use the Email Notification section, to enter an email server name,
a from and destination address, and for setting the Email Limit.
To add an email destination address:
- Click the Plus (+) button on the right of the Recipients to add a new entry; enter an email and
corresponding level.
3 Data Receiver Administrator Application To change an email destination address:
- Double-click on the email in the Recipients and change the email address.
- You can also change the corresponding Level by clicking on the down arrow.
The Email Limit setting is the maximum number of consecutive e-mails regarding any single error reported by the service. It applies to errors of the same type reported consecutively. If a different error is reported, the count is reset. When the maximum number is reached, the last email will indicate that no more emails will be sent regarding the problem until the instance of the service is restarted. Emails for other errors will continue. Setting the value to zero (0) means there is no limit.
Use the arrow to set the maximum number of consecutive emails regarding errors of the same type, as shown in the following.
Viewing Log Files To view the log file:
1. Navigate to the location of the folder containing the log files.
In the following example, the <instance_name> is 11FBF1A8.
2. Open the log file text document you want to view.
3 Data Receiver Administrator Application The previous example shows a log file for a wire service instance with a GUID of 31556319, for Wednesday, opened with Notepad. The log shows the wire server making a connection to the configured Newsroom Management Server and reading the distribution codes and keywords.
Process Process allows the user to change the process information details contained in the JS and XSLT files for the wire service instance. It also provides a way for the user to debug with the input options specified in the Input Translations tab in conjunction with the process file with any XSLT to make sure the input is converted as expected.
> **Note:** Processing can create multiple NSML in a single output; these will be sent to the wire service instance
in the order they are in the output.
Sample JS and XSLT are available in the following folder:
C:\Users\Public\Avid\Data Receiver 3\Samples
> **Note:** Avid recommends saving a backup copy of the JS and XSLT files prior to making any changes.
To change process information:
1. Select Process on the left. The JS file content will be displayed. When a new wire serviceinstance is
created, there will be no JS file setup, and it will be blank.
2. Use the File menu to import an existing JS or SFC file. For SFC files, the content will be converted into
JS with the internal converter.
3 Data Receiver Administrator Application
3. If the JS uses an XSLT file for conversion, the XSLT file should be uploaded using the menu option
under the File menu.
> **Note:** Sample JS and XSLT files may be found in C:\Users\Public\Avid\Data Receiver 3 \ Samples.
A script is written in JavaScript and can use any of the language constructs. There are two predefined variables:
- input is a string that contains the input to the script. It is populated by the Data Receiver when
starting the script.
output is a string for the script to store the result of the processing. It is read by the Data Receiver to
- retrieve the script result.
As many of the processing involves transforming one XML (for example: a wire) into another XML (mainly NSML), this transformation can be done using an XSL, called XSLT. The processor supports an XslTransform method with the input parameters:
stylesheet is the name of the XSL file, and
- inputXML is the XML string to process.
- The method returns the result as an string.
A very simple processor script could look like:
The rules for the transformation would be defined in the stylesheet Wire2NSML.xslt.
3 Data Receiver Administrator Application Debugging For debugging the input translation options for Telnet or File input, there are three checkboxes that could be used to exercise configuration already setup in the Input Translations tab. For example, with the setting of phase conversions in the Input Translations tab below:
The input without applying any Input Translations appears as shown in the next image:
Checking the Phase Conversions checkbox would apply the conversion and the input would become the following:
3 Data Receiver Administrator Application This way, each separate component defined in the Input Translation could be tested to ensure the conversion is correct.
For debugging a process file, you need to load the process file and an input file that the process file uses to generate the output.
- Setting up the process file - Use File > Open Process File to load an existing process file. Acceptable
file extensions are JS or SFC. SFC files will be converted by the internal converter automatically, and the resultant JS file is displayed and available for debugging. If the process file uses a XSLT, the XSLT should be uploaded using File > Upload XSLT.
- Setting up the input file - Use File > Open Input File to load the input file that the process file uses to
generate output. The selected file is displayed on the right side of the Process area.
3 Data Receiver Administrator Application With the JS and input file loaded, debugging may begin. There are individual Find text and wordwrap control for each of the panes to help users locate specific text and improve text readability.
Debugging Toolbar The debugging toolbar provides the following functions:
Button Description Run Start Debugging Stop Debugging Step Over Step Into Step Out Set Breakpoint Input Translation Toolbar Under the Input Translation toolbar, there are three checkboxes:
Encoding
- Reverse
- Phase Conversion
3 Data Receiver Administrator Application Put a check in the checkbox to apply the setting as configured under Input Translation. Leave the checkbox blank to skip the conversion.
Inspector The Inspector section provides three tabbed views to help monitor the output during the debugging process:
- Variables
- Watch
- Call Stack
Wire Service Instance Controls The Wire Service Instance controls are located above the Summary & Wire Configuration tabs, next to the menu.
The controls are buttons, from left to right as follows:
Start/Stop Buttons
- Save Button
- Reload Services Button
- Start/Stop Buttons
The Start and Stop buttons work with respect to a specific instance of a wire service. They allow the user to immediately start or stop the selected wire service instance.
To start or stop a specific instance of a wire service:
1. Click the row corresponding to the instance of a wire service on the Summary tab.
2. Click the Start/Stop buttons located above the Summary & Configuration tabs. The status will
change, reflecting if the operation is successful.
> **Note:** Stopping a wire service instance results in the loss of any data arriving while the instance is stopped.
Save Button The Save button provides a quick way to save all changes to the selected wire service.
Reload Services Button The Reload Services button will do a refresh of all wire services and allows the user to immediately get the current configuration and statuses of all of the services.
To reload all the settings and statuses of all wire services:
1. Click the Reload Services button.
2. All of the settings and statuses are updated for all of the wire services and displayed in the UI.
3 Data Receiver Administrator Application Summary Panel The lower portion of the Administrator window is known as the Summary panel. It displays information about the Data Receiver Administrator Application or the Wire Service log of a specified service’s activity.
For instance, to view information about the application:
- Select the Application Log radio button. The Application log will be displayed. You may also select
when you would like the log to be scrolled automatically with the Auto Scroll checkbox. You may also select the number of days of logs to display and the level for the log information.
For instance, to view information about a specific wire service instance:
- Click the row corresponding to the wire service instance and then select the Wire Service Log radio
button, as shown below. You may also select the number of days and the level for the log information. The existing log satisfying the criteria will be retrieved and displayed.
4 Wire Service Instances 4 Wire Service Instances Each wire service instance contains built in parsing language that allows it to input many kinds of raw data—including data received from a commercial news service—and convert that data into an acceptable format for the connected Newsroom Management system.
A wire feed or data feed refers to data received from a commercial news service such as the Associated Press (AP), Reuters, United Press International (UPI) and others. Typically these wire providers conform to one or more standards, such as NewsML-G2, and/or NITF.
It uses a basic two buffer concept: the input data buffer, and the output buffer.
The input buffer is not comprised of true raw data but rather, data converted to UTF-16 where additional character modifications may be applied to it if they are required. See "Input Translations" on page 28 for more information.
The input buffer contains a single story, and the output buffer is initially empty and is populated as data is formatted for output to the Newsroom Management system.
This chapter provides procedures for adding, starting, and deleting wire service instances. Additionally, it explains import/export processes, and how to clone and print wire service instances.
Adding a new Wire Service Instance Wire service instances are configured after the Data Receiver software is installed.
> **Note:** When a new instance is created and added to the Data Receiver Administrator Application, the
instance resource must also be added to the Newsroom Management Server.
To create a new wire service instance:
1. Start the Data Receiver Administrator Application.
2. Select Services > New. The Create Wire Service dialog box appears.
3. Enter a name for this new instance in the Service Name text box.
4. Click the Create button. A confirmation dialog appears; select OK to continue. A new entry with the
Service name will be created in the Summary tab. Additionally, a new tab with the Service name is added, awaiting configuration.
4 Wire Service Instances
5. Click the newly added instance tab. Make any necessary changes to the Input, Process, Output, and
Logging information as required to enable the new instance to work properly with the wire input source and the Newsroom Management system. See "The Wire Service Configuration Tabs" on page 25 for more information.
6. Start the new instance.
Starting a New Instance To start the new instance, do one of the following:
- Click on the Summary tab and select the row containing the wire service instance, and then click on
the Start button.
- Click on the tab of the wire service instance you want to start, and then click on the Start button.
Deleting a Wire Service Instance When using the Service > Delete option, the selected wire service instance is completely removed.
To remove an instance of a wire service:
1. On the Summary tab, click the row containing the instance you want to remove.
2. Click the Wire Services menu.
3. Select Services > Delete. The instance is removed.
Exporting a Configured Wire Instance Sometimes, it is useful to have a backup copy of a configured wire service, which could be used to re-create the same wire service instance on another Data Receiver computer.
To export a configured instance:
1. Select the wire service in the Summary tab, or the tab of the wire service.
2. Click Services > Export.
3. When the following Export Wire Service dialog appears, select the location where you want to save
4 Wire Service Instances the relevant files.
4. Click Export.
Importing a Previously Configured Wire Service Instance If you have configuration files of a previously configured instance, you may create a new instance with the files.
To import a previously configured instance:
1. Click the Wire Services menu.
2. Select the Import option. The Import Wire Service dialog box appears.
3. Click the Browse button to locate the files, select all relevant files, and then select Open so the entries
will be populated.
4. Enter the Service Name if it is not populated from the imported files.
5. Select Import to use the information to create a new wire instance.
Cloning a Configured Wire Service Instance If you have wire service instances that are very similar, it may be useful to clone a configured wire service instance and then make the slight changes for the new wire service instance.
4 Wire Service Instances To close a configured instance:
1. Select the wire service instance on the Summary tab or the tab of the wire service instance.
2. Select Services > Clone. The Clone <Service Name> Wire Service dialog is displayed.
3. Enter the name of the clone service instance.
4. Select the Clone button.
5. A new wire service instance of the clone name will be created, an entry is added to Summary, and a
new tab created.
Printing a Configured Wire Service Instance Sometimes, it is useful to have a printed copy of a configured wire service, which could be used to re-create the same wire instance on another Data Receiver computer.
To print a configured instance:
1. Select the wire service instance on the Summary tab or the tab of the wire service instance.
2. Select Services > Print. The Print Wire Service Configuration dialog appears.
4 Wire Service Instances
3. Select the printer and define the configuration settings for printing.
4. Select Print to print as directed and to the specified location.
The following is another example of a printed wire service instance:
5 Troubleshooting 5 Troubleshooting This chapter provides information on how to troubleshoot various Data Receiver issues you might encounter, such as if either Data Receiver or the wire service instance does not start or if you are unable to log onto the Data Receiver Administrator Application. It provides guidance on what to look for should you run into synchronization issues or problems after making configuration modifications.
Data Receiver Does Not Start This section covers troubleshooting if Data Receiver does not start correctly.
Issue Description Data Receiver Does If a newly installed Data Receiver wire instance does not run after the Not Start After installation it may be because the PC has not been restarted. Restart the PC to installation correct the problem.
A Previously Data Receiver may not be able to start due to errors in the appsettings.json file.
Running Data Avid recommends that the file be backed up before making any changes so that Receiver Does Not the previous working file could be reused if the service won’t start with the Start newly modified file.
Wire Service Instance Does Not Start This section covers troubleshooting if wire service instances do not start correctly.
Issue Description New Wire Service If a newly installed Data Receiver wire service instance does not run after the Instance Does Not installation it may be because there may be an invalid parameter in the Start configuration file for the instance or the JS file.
Review the Windows Event Viewer logs and Data Receiver log files for more information about the instance not starting.
A Previously This may happen after adding or changing an instance.
Functional Instance Review the Windows Event Viewer logs and Data Receiver log files for more Does Not Run information about the instance not starting.
All Previously Review the Windows Event Viewer logs and Data Receiver log files for more Functional Instances information about the instance not starting.
Do Not Run Unable to Logon the Data Receiver Administrator If you get the error “No connection could be made because the target machine actively refused it.
(localhost:7145)”, check that the Data Receiver Server service is running.
Problems after Hardware Configuration Changes If a Data Receiver wire instance does not run after hardware configuration changes are made it may be that after making the configuration changes the Data Receiver was not restarted.
Another possibility may be an invalid parameter in the configuration file for the instance or the JS file.
5 Troubleshooting Review the Windows Event Viewer logs and Data Receiver log files for more information about the instance not starting.
Synchronization Issues This section covers troubleshooting out-of-sync issues with both new and previously working configurations.
Issue Description Previously Working If in a previously working configuration, the Latest Input Time column is out of Configuration sync with the Latest Output Time column and is not updating as new stories come in, the probable cause may be that the Data Receiver is unable to communicate with the Newsroom Management Server.
To troubleshoot a previously working configuration, do the following:
1. Ensure the network connection to the Newsroom Management Server or
servers is present.
2. Ensure that the Newsroom Management Server is online.
3. Ensure that the wire server process is properly configured and is running
on the Newsroom Management Server.
4. If you suspect a problem with the Newsroom Management Server, see the
documentation provided with your Newsroom Management system for more information.
New Configuration If in a new configuration, the Latest Input Time column is out of sync with the Latest Output Time column and is not updating as new stories come in, the probable cause may be that the Data Receiver is unable to communicate with the Newsroom Management Server.
To troubleshoot a new configuration, do the following:
1. Ensure the network connection to the Newsroom Management Server or
servers is present.
2. Ensure that the Newsroom Management Server is running.
3. Ensure the wire server process is properly configured and is running on
the Newsroom Management Server.
4. Ensure theNewsroom Management Server name(s) are set correctly for
the Newsroom Management Server(s) with which the Data Receiver is attempting to communicate.
A ASCII Hexidecimal Information A ASCII Hexidecimal Information Some information in the Data Receiver configuration is entered in hexadecimal format. This appendix provides some helpful definitions and also includes an ASCII Hexadecimal table.
Terms Definitions ASCII ASCII stands for American Standard Code for Information Interchange and was developed by the American National Standards Institute (ANSI). It is the most common format for text files in computers and on the Internet. In an ASCII file, each alphabetic, numeric, or special character is represented with a 7-bit binary number (a string of seven 0s or 1s). There are 128 possible characters defined.
This format may be understood by any computer and the file may be imported into their own applications without issues. Notepad.exe creates ASCII text, or in MS Word you can save a file as text only.
Character A character is one of a limited number of symbols, including the letters of a particular language's alphabet, the numerals in the decimal number system, and certain characters such as the ampersand (&) and at sign (@). There are several standards of computer encoding for characters the most common of which is ASCII.
Decimal The term decimal describes the base-10 number system. The system consists of ten single digit numbers: 0, 1, 2, 3, 4, 5, 6, 7, 8, and 9. The number after 9 is 10. The number after 19 is 20 and so forth. Additional powers of 10 require the addition of another positional digit.
Hexadecimal Hexadecimal also known as hex describes a base-16 number system. The hexadecimal numbers are 0-9 and then use the letters A-F.
Hex notation is a convenient way to express binary numbers in which a byte is defined as containing eight binary digits. For instance, when expressing a string of text characters or a string of binary values in coding a program or HTML page, one hex digit can represent the arrangement of four binary digits and two hex digits can represent eight binary digits, or a byte.
ASCII Hexidecimal Table The following is an ASCII character table including decimal & hexadecimal characters:
Character Name Char Code Decimal Hex A ASCII Hexidecimal Information Character Name Char Code Decimal Hex Line Feed LF Ctrl J 10 0A Vertical Tab VT Ctrl K 11 0B Form Feed FF Ctrl L 12 0C Carriage Return CR Ctrl M 13 0D Shift Out SO Ctrl N 14 0E Shift In SI Ctrl O 15 0F Substitute SUB Ctrl Z 26 1A Escape ESC Ctrl [ 27 1B File Separator FS Ctrl \ 28 1C Group Separator GS Ctrl ] 29 1D Record Separator RS Ctrl ^ 30 1E Unit Separator US Ctrl _ 31 1F (aka Hash Tag) Asterisk * Shift 8 42 2A Plus Sign + Shift + 43 2B A ASCII Hexidecimal Information Character Name Char Code Decimal Hex Comma , , 44 2C Hyphen / Minus Sign - - 45 2D Period . . 46 2E Forward Slash / / 47 2F Colon : : 58 3A Semicolon ; ; 59 3B Less Than Sign < Shift < 60 3C Equal Sign = = 61 3D Greater Than Sign > Shift > 62 3E Question Mark ? Shift ? 63 3F Capital J J Shift J 74 4A Capital K K Shift K 75 4B Capital L L Shift L 76 4C Capital M M Shift M 77 4D Capital N N Shift N 78 4E A ASCII Hexidecimal Information Character Name Char Code Decimal Hex Capital O O Shift O 79 4F Capital Z Z Shift Z 90 5A Left Bracket [ [ 91 5B Back Slash \ \ 92 5C Right Bracket ] ] 93 5D Caret ^ Shift 6 94 5E Underscore _ Shift _ 95 5F Lower-case J j J 106 6A Lower-case K k K 107 6B Lower-case L l L 108 6C Lower-case M m M 109 6D Lower-case N n N 110 6E Lower-case O o O 111 6F A ASCII Hexidecimal Information Character Name Char Code Decimal Hex Lower-case Z z Z 122 7A Left Brace { Shift { 123 7B Vertical Bar / Pipe | Shift | 124 7C Right Brace } Shift } 125 7D Tilde ~ Shift ~ 126 7E Delta r 127 7F B Custom Code Pages B Custom Code Pages The term code page is sometimes known by other names, such as codepage, encoding, charset, character set, coded character set, (CCS), graphic character set, character map and so forth. Some of these have more specific names, such as DBCS (double-byte character set), MBCS (multi-byte character set). Some encodings are the result of transformations, and are known as transformation formats as in the case of Unicode UTF-8, UTF-16, UTF-32.
The Input Translations menu lists code pages to use with the Data Receiver. It includes code page choices of Custom Single-Byte, Custom Multi-Byte, and Custom Shifted. When selected, these options must be used with table containing byte-to-byte conversions for all of the characters received by the Data Receiver instance using the specific custom code page. This table is contained in a text file stored in the Data Receiver Server working directory. All custom code pages are shared resources and available for any configured wire service in the system, so changes made to the custom code page will affect the translation part of processing of all wire services that use that code page.
> **Note:** Both the Custom Multi-Byte and Custom Shifted custom code pages may also be used with single-
byte data input streams.
In all cases for Custom Multi-Byte and Custom Shifted translation tables the input bytes are always translated to UTF-16 (big-endian byte order) sequence for the translated to character. These values are typically the translated byte values for the Unicode representation for the characters that make up the Windows code page that the newsroom computer system client uses. For Custom Single-Byte, the translated to values do not require leading zeros.
Custom Single-Byte The custom single-byte code page translation table has a different structure than that of the custom multi- characters.
Using the Administrator application’s Custom Code Page Editor, a user can provide entries only for the characters that must be translated. All remaining entries will be generated automatically, so the resulting table will contain all 256 required entries for all 256 possible characters. This data will be stored as a file that contains a single line separated by commas (,) with no line feeds or carriage returns. No comments are allowed. Translation values for all 256 possible single-byte characters must be provided in the translation table even if the input data stream only contains a subset of the entire list. If the translation table does not contain values for all 256 characters, the instance will not start and the following error message appears in the Windows Application Event log:
Error starting wire: XML configuration file parsing error: Main section: Input section:
numbers required (255) Values in the custom single byte translation table are the UTF-16 translated to values that do not need two bytes, if the leading byte of the Unicode character is zero.
> **Note:** The following examples omitted most of the characters for clarity.
The following are some example lines from a custom single byte code page translation table:
0000,0001,0002,0003,0004,<next 251 characters omitted>,00FF 00,01,02,03,04,<next 251 characters omitted>,FF B Custom Code Pages 0,1,2,3,4,<next 251 characters omitted>,FF 0,01,673,0692,6544 <next 251 characters omitted>,6051 Custom Multi-Byte In the custom multi-byte code page translation table format the input bytes and output bytes must be separated by a pipe symbol ( | ) and each pair of bytes making up the Unicode output must be separated by a comma (,). Two forward slashes (//) denote the beginning of comment text. All four digits of the Unicode output translated to characters must be included even if they are zeros. The number of translation lines in this table only needs to cover the characters expected to appear in the input data stream.
The following are some example lines from a custom multi byte code page translation table:
table:
// Denotes a comment Line // Sample Multi-Byte Custom Code Page // Single-Byte Input Example 30|00,30 // DIGIT ZERO 31|00,31 // DIGIT ONE // Multi Byte Input Example 00,30|00,30 // DIGIT ZERO 00,31|00,31 // DIGIT ONE // END Custom Shifted In the custom shifted code page translation table format the translation table is similar to that of the custom multi-byte code page with a few additions to accommodate the shift characters. These additions are the shift and unshift byte indicators and the shift separator, represented by three asterisks (***). Only two shift character sets are supported. If data stream reader encounters shift/unshift byte indicator in the incoming stream, then all following bytes will be translated using corresponding to the indicator (shifted/unshifted) part of the table until another shift/unshifted byte appears.
Like the custom multi-byte code page the input bytes and output bytes must be separated by a pipe (|) and each pair of bytes must be separated by a comma (,). Two forward slashes (//) denote the beginning of comment text. All four digits of the Unicode output translated to characters must be included even if they are zeros. The number of translation lines in this table only needs to cover the characters expected to appear in the input data stream.
The following are some example lines from a custom shifted code page translation table:
// Baghdad 70 to Windows code page 1256 Unicode equivalents Shift Characters:1F,1B // Specifies shift characters to be used // 1F Shifts 03|06,35 // ARABIC LETTER SAD 19|06,27 // ARABIC LETTER ALEF B Custom Code Pages 1E|06,27,06,44 // Double Output Characters // END 1F Shifts *** // Shift Separator // 1B Shifts 03|06,35 // ARABIC LETTER SAD 19|06,21 // ARABIC LETTER HAMZA 00,03|06,36 // Double Input Characters // END 1B Shifts C NewsML-G2 Specific Field Information C NewsML-G2 Specific Field Information For the transform file, Avid has extracted the following tags from the NewsML XML source file at the following link:
https://developer.ap.org/ap-media-api/agent/index.html#t=Content_Metadata_ Fields.htm&rhsearch=faststory&rhhlterm=faststory&rhsyns=%20 The wire form can be customized to display the relevant information, according to the following table:
Tag Field Name Example description w-desc Initial release itemMeta/role/name[1] w-editorial <itemMeta><role><name> FullStory</name></role>..
=><string id=”w-editorial”>FullStory</string> embargoed w-embargoed <embargoed>2022-08-15T21:25:39Z</embargoed> => <string id=”w-embargoed”> 2022-08-15T21:25:39Z</string> headline w-headline <headline>Toyota to start deploying vehicle-to-vehicle tech in 2021</headline => <string id=”w-slug”>Toyota to start deploying vehicle-to-vehicle tech in 2021</string> located w-located <located type="cptype:city"><name>Cincinnati</name>.. => <string id=”w-located”>Cincinnati</string> profile w-profile <profile>daybook</profile> => <string id=”w-profile”> daybook </string> copyrightNotice w-rights <copyrightNotice>Copyright 2022 The Associated Press. All rights reserved. This material may not be published, broadcast, rewritten or redistributed without permission.</copyrightNotice> => <string id=”w- rights”Copyright 2022 The Associated Press. All rights reserved. This material may not be published, broadcast, rewritten or redistributed without permission.
</string> slugline w-slug <slugline>BC-US--Julia Child Exhibit,1st Ld- Writethru</slugline> => <string id=”w-slug”>BC-US--Julia Child Exhibit,1st Ld-Writethru</string> <headline role="aprol:extendedHeadline"> Toyota says it Headline role w-subhl will start equipping models with technology to talk to other vehicles starting in 2021, as it tries to push safety communications forward </headline> => <string id=”w- subhl”> Toyota says it will start equipping models with technology to talk to other vehicles starting in 2021, as it tries to push safety communications forward </string> <subject type="cpnat:abstract" subject w-subject qcode="apcategorycode:a"><name>a</name></subject> => <string id=”w-subject”>a</string> usageTerms w-terms <usageTerms> This content is intended for editorial use only. For other uses, additional clearances may be C NewsML-G2 Specific Field Information Tag Field Name Example required. </usageTerms> => <string id=”w-terms”> This content is intended for editorial use only. For other uses, additional clearances may be required</string> urgency w-urgency <urgency>3</urgency> => <string id=”w-urgency”>3</string> altId w-version <altId type="ap:recordSequenceNumber">0</altId> => <string id=”w-version”>0</string> <pubStatus qcode="stat:usable"/> => <string id=”w- pubStatus w-pubstatus pubstatus”>usable</string> title w-title <title>France Royal Christmas Lights</title> => <string id=”title”>France Royal Christmas Lights</string>