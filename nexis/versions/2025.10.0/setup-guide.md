---
product: nexis
product-area: shared-storage
version: "2025.10.0"
release-date: 01/10/2025
doc-type: setup-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid NEXIS® Setup and Maintenance Guide Version 2025.10.0 Using This Guide Using This Guide NEXIS® The Avid software-defined storage system provides a high-performance distributed file system that uses high-capacity shared media storage for workgroups of connected devices. This guide describes how to manage your storage system.
Windows®, macOS®, Unless noted otherwise, the material in this document applies to the and Linux operating systems. The majority of screen shots in this document were captured on a Windows system, but the information applies to all operating systems. Where differences exist, information on the differences is provided.
The documentation describes the features and hardware of all models. Your system might not contain certain features and hardware that are covered in this guide.
Revision History Date Version Description of Changes February 16, 2026 2025.5.0 and higher Updated the "Installing the Software" on page 49 to include the password change enforcement.
February 9, 2026 All Updated the Avid NEXIS F-Series Controller part numbers (see "Avid NEXIS F-Series Controller Features and Identification" on page 14).
December 1, 2025 All Added instruction to stop the Media Indexer and MCUX server before restarting or shutting down the Avid NEXIS system.
November 14, 2025 2025.10.0 Clarified the step for adding a virtual IP address.
November 7, 2025 2025.10.0 Updated the "Appendix — Setting up a Client VPN for Avid NEXIS October 21, 2025 2025.10.0 Added "Appendix — Setting up a Client VPN for Avid NEXIS | October 7, 2025 All Clarified the notes for installing redundant Controllers in new systems.
Added the LED status indicators for POST (Power On Self-Test) LEDs on F-series Controllers.
June 4, 2025 2025.5.0 Added support for 1.6TB SSD as a system drive.
February 2025 2025.2.0 Additional drive size support for Avid NEXIS F2/F2X, F5, and F5 | NL.
November 2024 All Revised the rack mounting spacing specification.
July 2024 All Added a note to open a new web browser tab for the Agent when changing the configuration of an engine.
May 2024 2024.5.0 and higher Added steps for replacing a failed Controller or installing a redundant Controller in systems running 2024.5.0; sub- component incompatibility February 2024 2023.8.0 and higher Updated Interface Speeds supported for Avid NEXIS | F2 SSD Engine (see "Avid NEXIS F-Series Controller Features and Identification" on page 14) Using This Guide Date Version Description of Changes January 2024 2023.8.0 and higher Strengthened text about switch connections for High Performance Media Packs in paired F2/F2X setups.
November 2023 2023.8.0 and higher Added notes about installing redundant Controllers. Restored Dual Controller Diagrams.
September 2023 2023.8.0 and higher Updated Agent and Management Console password behavior.
Added note about license impact to Replacing a Chassis.
August 2023 2023.7.0 Post-release updates and corrections July 2023 2023.7.0 Updated for Modular Licensing May 2023 2023.3.0 Clarified that Avid NEXIS | F5 and Avid NEXIS | F5 NL ship with two (2) spare media drives March 2023 2023.3.0 Introduced Avid NEXIS | F2 SSD Engine; added new “ECO” Power Supply Units December 2022 2022.12.0 Updated redemption/registration process September 2022 2022.9.0 Clarified Controller descriptions July 2022 2022.5.0 Introduced Avid NEXIS | F Series August 2021 All Corrected Media Pack drive sizes March 2021 2021.3.0 Updated system drive capacities July 2020 2020.5.0 Added Avid NEXIS | FS description, cautions when adding Engines to an existing system . Some document restructuring.
May 2020 2020.5.0 Avid NEXIS | All-Mirror support April 2020 2020.3.0 USM version 1.37 or 1.37a factory installed on G2 labeled Controllers March 2020 2020.3.0 Updated specs for Avid NEXIS E5 chassis and change to default Agent password 12/19/2019 (Update) Strengthened caution to lock all E5 drives 10/29/2019 2019.10.0 Added new Controller types (USM 1.37 and 32GB memory) 06/30/2019 2019.6.0 Additional drive size support for Avid NEXIS E2 | SSD Using This Guide Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Meaning or Action Convention
> **Note:** A note provides important related information, reminders, recommendations, and
strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
w A warning describes an action that could cause you physical harm. Follow the guidelines in this document or on the unit itself when handling electrical equipment.
g A user tip provides a helpful hint that can aid users in getting the most from their system.
b A shortcut shows the user keyboard or mouse shortcuts for a procedure or command.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
- This symbol indicates a single-step procedure. Multiple arrows in a list indicate that
you perform one of the actions listed.
(Windows), (Windows This text indicates that the information applies only to the specified operating system, only), (macOS), or either Windows or macOS.
(macOS only) Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italicfont Italic font is used to emphasize certain words and to indicate variables.
Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse Press and hold the first key while you press the last key or perform the mouse action.
action For example, Command+Option+C or Ctrl+drag.
| The pipe character is used in some Avid product names, such as MediaCentral | Cloud UX. In this document, the pipe is used in product names when they are in headings or at their first use in text.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. Always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view the online version, visit the Avid NEXIS Documentation available on the Avid Knowledge Base.
3. Check the documentation that came with your Avid application or your hardware for maintenance or
hardware-related issues.
Using This Guide
4. Visit the Avid Online Support at www.avid.com/support. Online services are available 24 hours per
day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download upgrades, and to read or join online message-board discussions.
Accessing the Online Documentation The Avid online documentation contains all the product documentation in PDF format. You can access the documentation from the Knowledge Base site specific to your release. Download and install Acrobat Reader before you access the PDF documentation.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 Avid NEXIS System Overview 1 Avid NEXIS System Overview Avid NEXIS is a shared-storage solution for acquisition-, creative-, distribution-, and archive media workflows. Avid network storage systems are built for media and entertainment. They enable multiple clients to share, capture, play, and edit video and audio media.
An Avid NEXIS system consists of:
- One or more Engines(a chassis that contains MediaPacksand one or two Controllers)
- Optionally, one or more ExpansionChassis(a chassis that contains a Media Pack and two I/O
modules, but no Controllers)
- Depending on the configuration, a SystemDirectorAppliance(a chassis that contains no drives for
media storage, but has one or two Controllers and manages the entire configuration) The SystemDirectoris a process that runs on one Controller, in either an Engine or the System Director Appliance, depending on your configuration, and provides the management functionality for the entire configuration through the ManagementConsole, an HTML-5 user interface. For more information, see "System Director Functionality" below.
The Avid NEXIS Engines, Expansion Chassis, and the System Director Appliance are rack-mountable units housing the other system components (Media Packs, Controllers, and power supplies). If a component fails, the Avid NEXIS shared-storage system is designed to remain operational while you replace it.
Data passes between the Engine and clients through a switch connected to the Engines (and System Director Appliance if applicable) with one or more Ethernet connections. These connections provide clients access to the data on the media drives.
Avid NEXIS uses a proprietary file system, which is scalable to support every media production team from individuals to the largest broadcast enterprises. As your storage needs grow, you can add to your configuration in the same file system, seamlessly combining all the storage into one centrally-managed system.
This chapter provides an overview of the Avid NEXIS system and the basic function of each component.
Other chapters in this guide describe how to install the system in a rack, connect the power, Ethernet, and SAS cables as applicable, and configure the system.
System Director Functionality The System Director is a process or service that manages and maintains the Avid NEXIS file system.
In any Avid NEXIS configuration, there is only one System Director, which runs on one Controller, either in an Engine (and is called an embeddedSystemDirector) or in a System Director Appliance (SDA), which is sometimes called an externalSystemDirector.
The System Director Appliance (models Avid NEXIS | SDA and Avid NEXIS | SDA+) is a separate 2U chassis with its own power supplies and system drives. It runs the System Director service for the whole configuration and provides no media storage.
A System Director Appliance is required for any configuration that will use Media Mirroring (also called Engine Protection; see the Avid NEXIS Administration Guide for more information), and also any configuration that includes or consists of:
More than four Media Packs in the same shared-storage system (in any combination of 2U Engines,
- Expansion chassis, and 4U Engines)
Any 5U chassis 1 Avid NEXIS System Overview Avid NEXIS All-Mirror Engines
> **Note:** TheSystemDirectorAppliancecannotbeusedwithAvidNEXIS|PRO40TBorAvidNEXIS|PRO+
systems.
In a configuration with no System Director Appliance, the first Engine that you configure runs the System Director for the entire system. Otherwise the System Director service runs on the System Director Appliance.
If the Engine or System Director Appliance has two Controllers, the System Director service can switch over to run on the other Controller in case of a failure. However, the System Director service never moves to a different Engine, or between an Engine and a System Director Appliance.
The System Director manages the metadata by storing directory information and file attributes, and provides:
- A location to coordinate file access modes (read/write), file locking, range locking, performance data
collection, logging, file lookup, and directory change tracking for client systems.
- The identity of all connected storage systems
- Information about the drives, power, cooling and Controllers in the configuration
- Names of workspaces
- Lists of users and groups within the system
Client data (media files) is stored on the Media Packs (drives) within one or more Engines (and Expansion Chassis, if applicable). System Director metadata is mirrored on the system drives in the Engine or in the System Director Appliance, wherever the System Director is running.
System Directors, workgroup servers, and clients must all be synchronized with a common time of day. For information on setting the Network Time Protocol (NTP), see "Using NTP to Set System Time" on page 45.
Avid NEXIS Models The following table lists current and legacy models. Also see the Avid NEXIS ReadMe for system configuration limits.
Model Type Rack Units Supports Dual Media Packs Controllers? (10 drives each) (See Notes) Avid NEXIS | SDA+ System Director 2U Y N/A Appliance Avid NEXIS | F2X Expansion Chassis 2U N/A 1 plus 2 spare drives (optional) Avid NEXIS | F2 Engine 2U Y 2 plus 2 spare drives SSD (optional) Avid NEXIS | F5 Engine 5U Y 4-8 plus two spare drives (included) Avid NEXIS | F5 NL Engine 5U Y 4-8 plus two spare drives (included) --------------------------------------------------Legacy Models-------------------------------------------------- 1 Avid NEXIS System Overview Model Type Rack Units Supports Dual Media Packs Controllers? (10 drives each) (See Notes) 40TB Avid NEXIS | SDA System Director 2U Y N/A Appliance All-Mirror SSD Avid NEXIS | E4 Engine 4U Y 1-2 plus two spare drives (optional) Avid NEXIS | E4 Engine 4U Y 1-2 plus two spare drives All-Mirror (optional) Avid NEXIS | E5 Engine 5U Y 4-8 plus two spare drives (optional) Avid NEXIS | E5 Engine 5U Y 4-8 plus two spare drives All-Mirror (optional) Avid NEXIS | E5 NL Engine 5U Y 4-8 plus two spare drives (optional) Notes:
- An Avid NEXIS | F2X Expansion chassis must be paired with an Avid NEXIS | F2 Engine.
- If supported, redundant Controllers must be the same type.
- In 2U models that support redundant Controllers, the second Controller is always installed upside-
down in the bottom slot.
- In 4U models, the second Controller is in the third slot (slot 2).
- In 5U models, the second Controller is in the right slot.
- For Media Pack capacities, see "Media Pack and System Drives" on page 25.
Controllers and I/O Modules Depending on your Avid NEXIS model, the Engine or System Director Appliance supports one or two Controllers, or two I/O modules for Avid NEXIS | F2X.
You can optionally order and install a redundant Controller for certain Avid NEXIS models. Redundant Controllers are not factory installed.
Both Controllers in an Engine or a System Director Appliance must be the same type, with the same label.
> **Note:** InAvidNEXISversionspriortov2021.3.0,afterthesystemcompletesitsbootcycle,allLEDsonthe
backoftheControllerremainon.InAvidNEXISversionv2021.3.0andlater,afterthebootcycleall LEDsonthebackoftheControllerturnoff.
1 Avid NEXIS System Overview Upgrading Controllers to Version 2024.5.0 or Higher Normally, redundant and replacement Controllers can be installed in an Avid NEXIS Engine with no disruption. However, Avid NEXIS version 2024.5.0 is incompatible with the factory-installed software on Controllers and requires a maintenance window for replacing a failed Controller or adding a redundant one. See "Version Incompatibility with Replacement Controllers and Avid NEXIS version 2024.5.0" on page 72 for more information.
Avid NEXIS F-Series Controller Features and Identification The following table lists the Controllers that are supported in the F-Series models, including the PRO+ and SDA+.
Controller Label Interface Speed Used In 9900-74191-XX 2x10/25GbE Avid NEXIS | SDA+ SBB-SI-128-S 9900-74189-XX 2x10/25GbE Avid NEXIS | F2 SBB-BR-32-S 1x10/25GbE Avid NEXIS | PRO+ InthePRO+theControllerisinstalledupside- downinthebottomslot.
9900-74193-XX 2x10GbE only Avid NEXIS | F5 NL SBB-GO-128-10Gb 9900-74190-XX 2x100GbE (full qualification) Avid NEXIS | F2 SSD SBB-GO-128-U Can auto-negotiate to 2x40GbE or 2x50GbE 9900-74192-XX 2x40/50GbE Avid NEXIS | F5 SBB-GO-128-H F-Series Controller Features and LEDs Controller connectors and ports, and the LED colors and flash patterns are described in the following figures and tables.
> **Note:** FeaturesthatarenotidentifiedinthefiguresandtablesarenotusedintheAvidNEXIS
implementation.Donotconnectanythingtounidentifiedports.
1 Avid NEXIS System Overview [Avid NEXIS F-Series Controller Features] Feature Description Management For connection to a laptop or other computer to install the Avid NEXIS software and initially Interface port configure the system. Default IP address is 169.254.10.10.
Do not use the Management Interface port after initial configuration. It is not intended for system I/O.
Right side LEDs:
- Steady green: Link is active
- Flashing green: Network activity
- Left side—Network speed LEDs:
- Yellow: 1000Mb/s
- Green: 100Mb/s
- Off: 10Mb/s
Controller For connecting redundant Controllers in the Engine. See "Adding a Redundant Controller" Interconnect port on page 71.
Power/OK, Fault, Power/OK:
1 Avid NEXIS System Overview Feature Description and ID LEDs l Steady green when the Controller is operating correctly.
- Flashing green indicates a Controller error.
- Fault: Amber when the Controller has a fault.
- ID: Blue when the Controller is being identified.
POST (Power On Shows the boot progress of the Controller. If the Controller fails to boot, the LEDs show the Self-Test) LEDs stage in which the error occurred.
LED states:
- Green or No LED: Normal, no hardware issue
- Amber LED: The Controller has detected a hardware fault within the enclosure
SAS ports Used only in the Avid NEXIS | F2 to connect one or both Controllers to the SAS ports on the I/O Modules in an Avid NEXIS | F2X. See "Rack-Mounting the Equipment" on page 35 for how to connect the cables.
Controller label Indicates the Controller type, which specifies in which Engine it can be used. See "Controllers and I/O Modules" on page 13 for more information.
Release Latch Disconnects the Controller from the backplane for removal from the Engine (see "About Controller Failures" on page 75).
Data ports Connects the Engine or System Director Appliance to a network switch (see "Connecting the Equipment to a Switch" on page 59).
LED states:
- Flashes green for link/activity
- Flashes amber for fault
10/25GbE Controllers
> **Note:** NotusedinAvidNEXIS|F5andAvidNEXIS|F2SSD. InAvidNEXIS|F5NL,onlythe10GbEconnectionissupported.Thesystemwillnotrunif
connectedtoa25GbEswitch.
- For a single switch connection, use the primary port (closest to the 25/10Gb label).
Be aware of the Controller orientation in the Engine: the primary port is on the bottom when installed right-side up, but on the top when installed upside-down.
For link aggregation (LACP, or NIC teaming) use both the primary and secondary
- ports.
40/50GbE Controllers and 2x100GbE Controllers:
- For a single switch connection, use the primary port (closest to the SAS ports). Be
aware of the Controller orientation in the Engine: the primary port is on the left when installed right-side up, but on the right when installed upside-down.
For link aggregation (LACP, or NIC teaming) use both the primary and secondary
- ports.
1 Avid NEXIS System Overview I/O Module Features and Functionality The Avid NEXIS | F2X has two I/O modules that connect to an Avid NEXIS | F2. The I/O modules provide data connection to the Controllers in an Avid NEXIS | F2, which manages both chassis. The I/O modules do not support direct switch connections.
IOM Label Interface Speed Used In 9900-74187-00 NA Avid NEXIS | F2X IOM-F2X Avid NEXIS F2X IO Module Features Feature Description SAS ports A and B Connects the expansion chassis to one Controller in an Avid NEXIS | F2.
If the Avid NEXIS | F2 has only one Controller, connect the cables only to the top I/O module in the Avid NEXIS | F2X.
If the Avid NEXIS | F2 has redundant Controllers, connect the top Controller to the top I/O module, and connect the bottom Controller to the bottom I/O module.
Do not connect one Controller to both I/O modules, and do not cross connect two Controllers to both I/O modules.
SAS port C Not used.
Release Latch Disconnects the I/O module from the backplane for removal from the chassis (see "Replacing an I/O Module" on page 76).
Avid NEXIS E-Series Controllers and Identification The following table lists the Controllers that are supported in the legacy E-Series models, including the PRO and SDA.
Controller Label Notes Used In Controller 10 2x10GbE Avid NEXIS | E2 1x10GbE (PRO 40 TB) Avid NEXIS | E2 All-Mirror Avid NEXIS | PRO 40TB (InPRO40,Controllerisinstalled upside-downinthebottomslot.) Controller PRO 40 G2 1x10GbE Avid NEXIS | PRO 40TB 1 Avid NEXIS System Overview Controller Label Notes Used In USM version 1.37/1.37a factory (Controllerisinstalledupside- installed downinthebottomslot.) Avid NEXIS PRO 40/E2, 2x10GbE Avid NEXIS | E2 Avid NEXIS PRO 40/E2 G2, USM version 1.37/1.37a factory Avid NEXIS | E2 All-Mirror installed Controller E2 G2 Avid NEXIS | PRO 40TB Avid NEXIS | E2 SSD Controller 2x40GbE Avid NEXIS | E2 SSD (Controllerisinstalledupside- downinthebottomslot.) Avid NEXIS | E2 SSDG2 2x40GbE Avid NEXIS | E2 SSD USM version 1.37/1.37a factory (Controllerisinstalledupside- installed downinthebottomslot.) Controller 20/SDA 2x10GbE Avid NEXIS | E4 Avid NEXIS | E4 All-Mirror Avid NEXIS | SDA Avid NEXIS | E4 G2/SDA G2 2x10GbE Avid NEXIS | E4 USM version 1.37/1.37a factory Avid NEXIS | E4 All-Mirror installed Avid NEXIS | SDA Controller 80 2x40GbE Avid NEXIS | E5 Avid NEXIS | E5 All-Mirror Avid NEXIS | E5 G2 2x40GbE Avid NEXIS | E5 USM version 1.37/1.37a factory Avid NEXIS | E5 All-Mirror installed Controller E5 NL 2x10GbE Avid NEXIS | E5 NL Avid NEXIS | E5 NL G2 2x10GbE Avid NEXIS | E5 NL USM version 1.37/1.37a factory installed E-Series Controller Features and LEDs The only visible difference between the Controllers is the identification label text.
1 Avid NEXIS System Overview E-Series Controller Features Feature Description Management Interface The Management Interface port is used ONLY to connect to a laptop or other port, Interconnect computer to install the software and initially configure the system.
Interface port Do not use the Management Interface port after initial configuration. It is not intended for system I/O.
Default IP address is 169.254.10.10.
The port has the following LEDs.
Right side:
- Steady green: Link is active
- Flashing green: Network activity
Left side—Network speed:
- Yellow: 1000Mb/s
- Green: 100Mb/s
- Off: 10Mb/s
The Interconnect Interface port is used to connect two Controllers. See "Adding a Redundant Controller" on page 71.
Power/OK, Fault, and ID Power/OK: Green when the Controller is operating correctly. Flashing green LEDs indicates a Controller error.
Fault: Amber when the Controller has a fault.
ID: Blue when the Controller is being identified.
POST LEDs Shows the boot progress of the Controller. If the Controller fails to boot, the LEDs show the stage in which the error occurred.
Controller identification Indicates the Controller type, which specifies in which Engine it can be used. See label "Controllers and I/O Modules" on page 13 for more information.
Controller Release Latch Disconnects the Controller from the backplane for removal from the Engine (see "About Controller Failures" on page 75).
1 Avid NEXIS System Overview Feature Description Data Interface ports (SFP+) Connects the Engine or System Director Appliance to a network switch (see "Connecting the Equipment to a Switch" on page 59).
The Avid NEXIS | E5 NLcomes with QSFP to SFP+ adapters for these ports and supports connection only to a 10GbE switch.
For a single-port connection to a switch, use the left port (gx0). If using link aggregation (NIC teaming), connect both ports (gx0 and gx1) to one or more switches.
LED states: Flashes green for link/activity, amber for fault.
Controller Functionality and Restrictions The Controller provides the software management functionality, in some cases including the System Director (in Engines with an embedded System Director and on the System Director Appliance).
The Controller is turned on when the power supplies are on.
Controller (Agent) Password Each Controller runs its own Agent. Effective with Controllers manufactured after April 1, 2020, the default Agent password for a Controller is the last eight characters of the serial number, which is printed on a label on the top of the Controller housing. For example, a Controller with serial number RMS1013034G085N has a default Agent password of 034G085N. To see the serial number, you must partially remove the Controller from the Engine. See "Replacing a Controller" on page 75 for how to remove a Controller.
The serial number-based default password replaces the previous default Agent password of se-admin. Use the new default Agent password when configuring a new Engine (see "Installing the Software and Setting up the Avid NEXIS System" on page 42).
If the Avid NEXIS Controller password does not work, or if you change it and later lose or forget it, it can only be reset by creating a case with Avid Customer Support. This process requires a remote access session to a client machine connected to the Avid NEXIS Controller via a serial cable. For details, see "Serial Cable Information" on page 83.
Single vs Dual Controllers Some Avid NEXIS models support only one Controller, and others support two, for high availability.
g IftwoControllersarepresent,theyarebothactive,anddividethesystemservicesbetweenthem (unlessonefails).ThereisnoconceptofanActiveandStandbyController.
If one Controller fails, the System Director service (and other services) can switch over to the other one while the system keeps running. However, switchover does not occur if the network connection to a Controller fails. Switchover occurs only between Controllers in the same physical chassis, never between Controllers in different chassis.
Front Views Every Avid NEXIS model has a control panel on the front, with LEDs that indicate its status. In the 2U and 4U models, the drives are accessible from the front, behind a removable bezel.
1 Avid NEXIS System Overview 2U and 4U Control Panel The following figure shows the control panel on the left side of the chassis on all 2U and 4U models, including the PRO, PRO+, and System Director Appliances.
2U and 4U Engines: Common Control Panel (Including Expansion Chassis) Feature or LED Color and Status System Power Green — system is on (operational) Amber — system is in standby mode (not operational) Module Fault Amber — system hardware fault (another LED on the faulty component may also be lit) Logical Fault Amber — something other than the enclosure management system (usually a drive) fails Unit ID Display Enclosure identification number (optional; useful with multiple-enclosure systems) 5U Chassis Status and Control Panels The 5U Engine has a bezel that does not need to be removed to access any components. The control panels and status panels on the front are visible with the bezel in place.
5U Sideplane and Drive Drawer Status Panel (Four Panels) The sideplane and drive drawer status panels indicate the health of the drives, and show drive activity.
1 Avid NEXIS System Overview 5U Engines: Common Sideplane and Drive Status Panels Feature or LED Color and Status Sideplane/Power OK Green — Sideplane card is on and operational Sideplane Fault Amber — Drive has failed Logical Fault Flashing amber — Failed drive in one or more RAID sets Cable Fault Amber — Cable failure between the drawer and the back of the enclosure Activity Bar Graph Shows the amount of data I/O from zero segments lit (no I/O) to all six segments lit (maximum I/O) 5U Engine Status and Control Panel The Engine Status panel displays the overall health of the system and indicates the location of a failed component.
1 Avid NEXIS System Overview 5U Engines: Common Status and Control Panel Feature or LED Color and Status Enclosure ID Display Displays the enclosure identification number (optional; helps you locate the engine in a high-density rack or cabinet populated with several other similar systems).
Power On/Standby Green — system is on (operational) Amber — system is in standby mode (not operational) Module Fault Amber — system hardware fault (another LED will be lit also) Logical Status Amber — Component has failed Top Drawer Fault, Amber — Indicates the location (drawer) of a failed component Bottom Drawer Fault Rear Views The power supply units and fans, power/cooling modules, Controllers, or IO Modules are in the rear of the chassis.
Serial Number Location On all Avid NEXIS models, the chassis serial number is printed on a label attached to the left rear chassis mounting ear. The following figure shows the location of the serial number label on an Avid NEXIS | E4.
2U Chassis Rear Details The rear of the 2U chassis provides access to the Controllers (or I/O modules) and power/cooling modules (PCMs).
The following figure shows a typical 2U chassis. The Avid NEXIS | F2X has two I/O modules in place of Controllers. The Controller details, number of Controllers supported, and their orientation depend on your model; see "Controllers and I/O Modules" on page 13.
1 Avid NEXIS System Overview 4U Chassis Rear Details The rear of the 4U chassis provides access to the Controllers and the power/cooling modules (PCMs). If you use a redundant Controller, it must be installed in the third slot from the top, as shown.
Rear View Features: 2U and 4U Chassis Component Notes Power/Cooling 2U Engines: Dual 760W PCMs, numbered 1 (left) and 2 (right).
Modules (PCM) Avid NEXIS | F2X: Dual 580W PCMs, numbered 1 (left) and 2 (right).
(bottom right).
Storage Controllers 2U Chassis: Controller 1 can be in top or bottom slot. Controller 2 (if supported) is always in the bottom slot, upside down.
4U Chassis: Controller 1 is always in top slot. Controller 2 (optional) is in slot 2 (third from top).
5U Chassis Rear Details The rear of the 5U chassis provides access to the Controllers, power supply units (PSUs), and fan modules.
In a single-Controller configuration, the Controller can be in either slot but Avid recommends keeping it in the left-hand slot (Controller 1 in the figure below).
1 Avid NEXIS System Overview Rear View Features: 5U Engines Component Notes Controllers If only one Controller is present, it is typically in the left slot. Controllers are identified in error and status messages as 1 (left) and 2 (right).
Avid NEXIS | E5 NL comes with a QSFP to SFP+ adapter to connect 10GbE SFP+ optics or cables to a switch.
Avid NEXIS | F5 NL uses the built-in 10/25GbE ports and does not need a secondary interface card.
Fans Five fan modules, each containing two fans. In the Management Console, each fan (1-10) is listed separately.
PSUs Power supply units, identified in error and status messages as 1 (left) and 2 (right) Media Pack and System Drives A Media Pack is a set of 10 drives, all of which are typically the same capacity and type. The following table lists the Media Pack drives previously or currently supported in Avid NEXIS Engines.
All System Director Appliances and Engines contain two SSD system drives. The system drives store metadata, startup files, and other system files. An Engine or System Director Appliance can run with one failed system drive but Avid recommends replacing it as soon as possible.
> **Note:** TheAvidNEXIS|F2XisnotanEnginebecauseitcontainsnoControllersandnosystemdrives.
Some drive capacities (in italics) are no longer sold for new systems, and may not be available from Avid to replace a failed drive. For more information, see https://kb.avid.com/articles/en_US/faq/End-of-support- dates.
Avid NEXIS Model Media Pack Capacity System Drive Capacity Avid NEXIS | SDA+ N/A 800GB, 1600GB Avid NEXIS | F2 60TB, 100TB, 140TB, or 200TB SAS 800GB, 1600GB Avid NEXIS | F2X 60TB, 100TB, 140TB, or 200TB SAS N/A Avid NEXIS | F2 SSD 38TB or 150TB 800GB, 1600GB Avid NEXIS | F5 60TB, 100TB, 140TB, or 200TB SAS 800GB, 1600GB Avid NEXIS | F5 NL 160TB or 240TB SAS 800GB, 1600GB Avid NEXIS | PRO+ 40TB SATA 400GB, 1600GB Avid NEXIS | SDA N/A 400GB, 1600GB Avid NEXIS | E2, 60TB, 100TB, or 140TB 200GB, 1600GB Avid NEXIS | E2 All-Mirror 20TB Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror Avid NEXIS | E5, 60TB, 100TB, or 140TB 800GB, 1600GB Avid NEXIS | E5 All-Mirror 20TB Avid NEXIS | E5 NL 160TB 800GB, 1600GB 120TB 1 Avid NEXIS System Overview Avid NEXIS Model Media Pack Capacity System Drive Capacity Avid NEXIS | E2 SSD 19.2TB, 38.4TB 400GB, 1600GB 9.6TB Avid NEXIS | PRO 40TB 40TB 400GB, 1600GB
> **Note:** Dependingonavailability,Avidreservestherighttosupplyalargercapacitydriveasareplacement.
The 1600GB system drives require Avid NEXIS | VFS 2025.5.0 or later. Previous releases— Avid NEXIS | VFS 2025.2.2 and earlier are not compatible with the new 1600GB SSDs. Replacing a failed system drive with the new 1600GB SSD without first updating to Avid NEXIS | VFS 2025.5.0 or later will result in no metadata redundancy and could lead to data loss.
Avid NEXIS SSD system drives cannot be removed from one system and used as a replacement in another system. The system drives are initialized as a mirrored pair during the manufacturing process. A new, replacement SSD from Avid has not been initialized in an Engine and is the only safe replacement for a failed system drive.
Drive Labels All drives, whether for Media Packs or system drives, have a label that indicates the type, capacity, and a serial number, as follows:
Label Description System drive and SSD Media Pack drive labels include the capacity, the letters SS for solid state, and a manufacturer serial number.
HDD Media Pack drive labels include the capacity, the abbreviation 7K2 indicating the drive speed (7200 RPM), and a manufacturer serial number.
Drive Types and Sizes Avid NEXIS systems use the following drive types, sizes, and carrier sizes.
Avid NEXIS Model Media Pack Drives System Drives F2, F2X, PRO+, F5, F5 NL 3.5” HDDs in 3.5” carrier 2.5” SSDs in 3.5” carrier Legacy: E2, E4, PRO 40 TB, E5, E5 NL F2 SSD 2.5” SSDs in 2.5” carrier 2.5” SSDs in 2.5” carrier Legacy: E2 SSD 2.5” SSDs in 3.5” carrier 2.5” SSDs in 3.5” carrier SDA+ N/A 2.5” SSDs in 3.5” carrier Legacy: SDA The drives in the 2U and 4U models have a red lock indicator and two LEDs that show the drive status, explained in the following figure and table.
1 Avid NEXIS System Overview 2U and 4U Drive LEDs Feature Status Indicator Power and activity LED Off—No power Blinking—I/O activity Status and identification LED Blinking 1 second on, 1 second off—To identify the drive On—Drive failed Off—OK The drives in the 5U chassis Media Packs have one LED that indicates a drive failure. The drive LED is visible only when the drive drawer is open.
Default Location of System Drives The system drives can occupy any slots. From the factory, the system drives are typically installed as follows:
Slots 0 and 1 in 2U and 4U chassis and the System Director Appliances
- Slots 28 (top drawer) and 70 (bottom drawer) in 5U chassis
1 Avid NEXIS System Overview Chassis Drive Numbering In 2U and 4U models, the drives are behind the front bezel.
A System Director Appliance contains two system drives but no media drives; the empty slots are covered with blank plates for proper airflow and cooling.
System Drive Numbering for the System Director Appliance Drive Numbering for 2U (12-Drive) Storage Chassis (Except Avid NEXIS | F2X) Drive Numbering for Avid NEXIS | F2X Drive Numbering for Avid NEXIS | F2 SSD 1 Avid NEXIS System Overview Drive Numbering for All 4U Chassis Drive Numbering for All 5U Chassis The 5U models have two drive drawers, accessible from the front without removing the bezel. Drive slot numbering is shown in the previous figure (top view, with bottom drawer extended).
Drives 0-41 are in the top drawer, drives 42-83 are in the bottom drawer.
> **Note:** Thetwosystemdrivesarefactoryinstalledinslots28(topdrawer)and70(bottomdrawer)butcanbe
inanyslots.
Power Supplies and Fans Depending on your Avid NEXIS model, the Engine or System Director Appliance has the following number and type of power supply/cooling modules (PCMs) or power supply units (PSUs). The PCMs or PSUs are turned on when the power cord is plugged in and the power switch is on.
All the PSUs or PCMs in a given Engine must be the same power rating. For example, in a 2U Engine or SDA+, both PSUs must be 764W.
1 Avid NEXIS System Overview Avid NEXIS Models Power and Cooling Modules Power Supply Operation All 2U Engines including Dual 764W PCMs with integrated 1+1 redundant configuration, meaning the PRO and PRO+ fans system remains running even if one PCM fails.
System Director Appliances For maximum protection from power loss, both PCMs must be plugged in to separate electrical circuits or separate UPS devices and turned on, so the system can balance its power needs between them. If one PCM fails, the system can continue operating.
Expansion Chassis Dual 580W PCMs with integrated 1+1 redundant configuration, meaning the (Avid NEXIS | F2X only) fans system remains running even if one PCM fails.
For maximum protection from power loss, both PCMs must be plugged in to separate electrical circuits or separate UPS devices and turned on, so the system can balance its power needs between them. If one PCM fails, the system can continue operating.
All 4U Engines Four 580W PCMs with integrated 2+2 redundant configuration, meaning the fans system remains running even if any two PCMs fail.
For maximum protection from power loss, each pair of PCMs must be plugged in to separate electrical circuits or separate UPS devices (for example, two on circuit A and two on circuit B), and all must be turned on, so the system can balance its power needs among them.
All 5U Engines Dual 2200W PSUs and five fan 1+1 redundant configuration, meaning the modules with two fans each (total of system remains running even if one PCM 10 fans) fails.
Engine can run with only two of the five fan modules.
Leave failed power supplies or fans in place until the replacement is ready to be installed to maintain proper airflow and cooling.
ECO Power Supply Units Avid NEXIS F-Series and Avid NEXIS | PRO+ systems can use a new generation of power supply units that are more energy efficient and conform to the requirements of the 2009/125/EC Ecodesign Directive, established by the European Environmental Agency.
The ECO PSUs look the same as the current High-Efficiency (HE) PSUs but have a label that indicates they are the ECO type, as follows:
1 Avid NEXIS System Overview PSU Rating Non-ECO Part Number and Label ECO Part Number and Label 580W 9900-74184-00 9900-74210-00 PCM-580-HE PCM-580-ECO 764W 9900-74185-00 9900-74211-00 PCM-764-HE PCM-764-ECO 2200W 9900-74183-00 9900-74209-00 PCM-2200-HE PSU-2200-ECO All the power supplies in a particular Engine must be the same: either HE or ECO. However, in a shared-storage system with multiple Engines, you can have both HE or ECO power supplies.
When ordering a replacement PSU or power module, make sure it has the same part number suffix as the one you are replacing.
764W Power Supply Features The 764W PCMs are used in all 2U Engines, PROs, and System Director Appliances.
> **Note:** ThetwoLEDsmarkedwithbatteryicons,arenotused.
580W Power Supply Features The 580W PCMs are used in all 4U Engines and the Avid NEXIS | F2X Expansion Chassis.
1 Avid NEXIS System Overview The LEDs on the 580W PCM work together to indicate overall module status; in the following table, for each row, all the LEDs must be in the listed state for the definition to apply.
580W Power Supply/Cooling Module LEDs AC Fault Fan Fault Power/Module OK DC Fault Definition
> **Note:** Forreadability,aseriesofdashes(---)meanstheLEDisOFF.
--- --- --- --- No AC power on any PCM On --- --- On No AC power on this PCM --- --- On --- AC present; PCM OK --- --- On On PCM fan speed is outside acceptable limits --- --- --- --- PCM fan has failed On On --- On PCM fault (over temperature, over voltage, or over current) --- --- Flashing --- Standby mode Flashing Flashing --- Flashing PCM firmware download in progress 2200W Power Supply Features The 2200W PSUs are used in all 5U Engines.
1 Avid NEXIS System Overview 2200W PSU LEDs PSU Fail AC Fail Power OK Status (Amber) (Amber) (Green)
> **Note:** Forreadability,aseriesofdashes(---)meanstheLEDisOFF.
--- --- --- No AC power to either PSU On On --- PSU present but not supplying power --- --- On Mains AC present, switch on. This PSU is providing power --- --- Flashing AC power preset, PSU in standby mode (other PSU is providing power) Flashing Flashing --- PSU firmware download in progress On On --- PSU alert state (usually due to reaching critical temperature) --- On --- Mains AC to this PSU is missing (This PSU is on standby, other PSU is OK) On On On GEM software has lost communication with PSU On --- --- PSU has failed Fan Modules (5U Only) The 5U Engines have fan modules that are separate from the PSUs. (2U and 4U Engines use a a combination power/cooling module.) 1 Avid NEXIS System Overview Fan Module LEDs Fan OK Battery fault Fan fault Status (Green) (Amber) (Amber)
> **Note:** Forreadability,aseriesofdashes(---)meanstheLEDisOFF.
--- --- --- Fans OK --- --- On Communication lost with fan module Controller --- --- On Reported fan speed is out of tolerance On --- --- Fans and battery OK Flashing --- --- Battery charging --- On --- Battery fault On --- --- PSU has failed Leave failed power supply or fan modules in place until you have a replacement so you maintain the proper airflow. Obtain a replacement as soon as possible.
2 Connecting the Equipment 2 Connecting the Equipment This chapter explains how to rack mount and connect the system hardware.
If you purchased redundant Controllers for your Engines or System Director Appliance, do not fully insert them until you have completed the initial system configuration, including upgrading the software. The system must be running with single Controllers in all components before installing (or fully seating) redundant Controllers.
Rack Mounting Guidelines and Requirements Avid recommends installing the Avid NEXIS hardware in a rack, using the following guidelines:
If installed in a closed or multi-unit rack assembly, the operating ambient temperature of the rack
- environment might be greater than room ambient. Make sure the rack environment is compatible with
the maximum ambient temperature (Tma) specified by the manufacturer.
- No significant temperature changes. Choose a location where the temperature does not vary more
than 18°F (7.78°C) per hour.
No significant humidity changes. A location with approximately 40 percent humidity can prevent
- problems stemming from electrostatic discharge.
Avoid uneven mechanical loading.
- Make sure your rack enclosure is stable enough to prevent tipping over if using extending sliding rails.
- Follow the equipment nameplate ratings to avoid overloading the circuits.
- Maintain reliable grounding of rack-mounted equipment, especially regarding supply connections
- other than direct connections to the branch circuit (for example, power strips).
- Adequate space in front of and behind the rack. You must be able to connect cables and service parts
of your hardware.
- Adequate airflow for cooling, from the front of the enclosure to the rear. Make sure nothing blocks
airflow to the front panel surface and the rear.
For normal operation, maintain approximately 2 feet (0.6 meters) of open space in front of and
- behind the rack. This allows free access to the components in the rack for operating changes or
adjustments. For service, maintain approximately 3 feet (1 meter) of open space in front of the rack and 2 feet (0.6 meters) of open space behind the rack. This allows for the removal of any component that needs to be replaced.
Spacing between Avid NEXIS engines in a rack is not required. However, if possible, it is advisable to
- leave 1U between units to facilitate servicing. Please note that doing so will reduce the number of
units that can fit in a single rack.
To ensure the stability of the rack enclosure, install the heaviest equipment in the lower sections of the rack enclosure. Install lighter equipment in the middle and upper sections.
> **Note:** Forinformationaboutpowerspecificationanddimensionssee"SpecificationsandNotices"on
page 83.
Rack-Mounting the Equipment The Avid NEXIS chassis are designed for 19-inch (483-mm) rack configurations and need rack units corresponding to the chassis size. See "Avid NEXIS Models" on page 12.
2 Connecting the Equipment The rack mount kit can accommodate racks with round, square, or threaded holes, sometimes called broadcast racks. Installation instructions are included on a decal located on the side of one of the bracket rails.
> **Note:** Donotlifttheequipmentbythehandlesonthepowersupplyunits,fanmodulesorController–they
arenotdesignedtosupporttheweightoftheentiresystem.
w Avid recommends that two people lift the chassis, especially when installing in upper rack units.
To mount a 2U or 4U chassis in the rack:
1. Install the mounting rails using the instructions on the attached label.
2. Mount the chassis to the rack.
For new systems with redundant Controllers, mount the chassis to the rack with only a single Controller installed. If you purchased a redundant Controller, do not fully insert it to the chassis until you have completed the initial system configuration. The initial system configuration includes "Installing the Software" on page 49 and "Configuring the Engine or SDA+" on page 51. The system must be running with a single Controller before inserting (or fully seating) the redundant Controller.
3. Remove the plastic end cap covers from the front of the chassis. (These cover the screws that secure
the chassis to the rack in the absence of a bezel.)
4. Slide the chassis onto the mounting rails and secure to the rack using the two supplied screws.
5. If applicable, rack-mount the Avid NEXIS | F2 and Avid NEXIS | F2X into adjacent rack units. Make sure
the supplied SAS cables (approximately 0.5 meters) can easily reach between the chassis.
6. If applicable, connect the SAS cables between the Controllers in the Avid NEXIS | F2 and the
I/O modules in the Avid NEXIS | F2X. Connect the cables exactly as follows:
If the Avid NEXIS | F2 has a single Controller, connect it to the top I/O module in the Avid NEXIS | F2X.
If the Avid NEXIS | F2 has two Controllers, connect the top Controller to the top I/O module, and connect the bottom Controller to the bottom I/O module.
7. Insert the Media Pack drives into the empty drive slots (see "Installing Media Packs in 2U and 4U
Engines" on page 39).
8. Attach the bezel to the front of the chassis.
2 Connecting the Equipment To mount a 5U chassis in the rack:
1. (Optional) If using racks with threaded holes, unscrew and remove the five round pegs on each end of
the bracket rail.
2. Loosen the four slide adjustment screws so to adjust the bracket rail to the depth of your rack.
The adjustment screws are highlighted in a colored circle around the screw.
3. Position the bracket rail between your rack mount rails and adjust the length of the bracket so that it
meets the inside of both the front and rear rails as shown in the following figure.
4. Secure the bracket rail to the front and rear mounting rails using either the screws that come with the
rack mount kit of your rack screws (five screws in the front and the rear).
> **Note:** Leavethetopholesonthefrontoftherailemptysoyoucanusethoseholestosecurethe
chassistokeepitfromslidingforwardonceracked.
5. Tighten the four slide adjustment screws.
6. Repeat steps 1 through 5 to install the other bracket rail on the opposite side of the rack.
Make sure that the media drives are not yet installed in the chassis.
7. With at least one more person, lift the Engine and place the rear of the chassis onto the brackets as
shown in the following figure.
2 Connecting the Equipment
8. Position the bracket extender on the outside of the rear mounting rail so that the sliding nut in the
bracket extender inserts into the rack mounting tab on the chassis. Using the short screws included in the rack mount kit, secure the bracket extender to the rack mounting tab on the chassis as shown in the following figure.
g Therackmountkitprovidestwosetsofbracketextenders:alongpairandshortpair.Usethe pairofbracketextendersthataremostappropriateforyourrack.Forshallowerracksusethe longerbracketextenders.
9. Using the screws from the rack mount kit, secure the chassis to the front of the rack through top and
bottom holes of the plastic end caps as shown in the following figure.
2 Connecting the Equipment
10. Using the screws from the rack mount kit or screws you supply, secure the rear stabilizer brackets to
the rear rack mount rails through top and bottom holes in the extender bracket as shown in the preceding figure.
11. Snap the left and right plastic covers over the plastic end caps on the front of the chassis as shown in
the preceding figure.
Installing Media Packs in 2U and 4U Engines The 2U and 4U Engines can hold the following numbers of Media Packs and spare drives.
Model Media Packs Spare Drives Avid NEXIS | F2 SSD 1-2 0-2 Avid NEXIS | F2X 1 0-2 LegacyModels Avid NEXIS | E2, Avid NEXIS | E2 All-Mirror, Avid NEXIS | E2 SSD Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror 1-2 0-2 To install the Media Pack (and optional spare) drives:
1. Make sure the anti-tamper lock is not engaged (see "Media Pack and System Drives" on page 25).
The red lock indicator is visible if the lock is engaged. Unlock the drive using a screwdriver with a Torx T20 bit by rotating the lock counterclockwise until the lock indicator is completely hidden.
2. Insert the drive into the slot, with the lock mechanism pointing left (if drive slots are horizontal) or
pointing upwards (if drive slots are vertical).
2 Connecting the Equipment
3. Push the drive in until the release latch starts to pull inward.
4. Push the release latch in you hear it click shut.
5. Lock the drive with the Torx T20 bit; make sure the red lock icon is fully visible in the viewing window.
Installing Media Packs in 5U Chassis A 5U chassis comes with at least four Media Packs (the required minimum) and supports up to eight Media Packs and up to two spare drives. The system drives are preinstalled in the chassis, in slots 28 (top drawer) and 70 (bottom drawer).
For correct airflow, the chassis must contain at least four Media Packs (divided between the two drawers) and two system drives.
If starting with fewer than eight Media Packs, populate the front rows of both drawers first, then the middle rows. As you purchase and install more Media Packs and spares, fill the slots in the remaining rows (there is no need to move the spare drives when inserting additional media drives).
Insert spare drives in the next sequential slots after the last Media Pack drive.
To install the Media Pack drives:
1. Open the top drawer.
2. Install 20 of the Media Pack drives into the first several rows of slots. Push each drive downwards and
hold it down while sliding the drive carrier plate in the direction shown in the following figure. This locks the drive in place.
3. Make sure the drive is securely locked into place before closing the drawer. Unlocked drives can open
due to chassis vibration and lift up enough to prevent the drawer from opening. Forcing the drawer open will damage the drive and the chassis.
4. Close and lock the drawer.
5. Open the bottom drawer.
6. Install the remaining 20 Media Pack drives into the first several rows of slots. Again, make sure all
drives are locked.
7. Close and lock the drawer.
Connecting the Equipment to Power All Avid NEXIS systems ship with the following quantity and type of North American standard power cables.
You might need to obtain power cords from your local reseller or support depot suitable for your locale.
2 Connecting the Equipment
> **Note:** The“female”endconnectstothepowersupplyinthechassis,andthe“male”endconnectstothe
powersource(mains)orpowerdistributionunit.
Avid NEXIS Model Power Cable Type Quantity Avid NEXIS | F2X, or Avid NEXIS | F2 SSD, C13 Female to C14 Male Avid NEXIS | PRO+, Avid NEXIS | SDA+ Avid NEXIS | E2 All-Mirror, Avid NEXIS | E2 SSD, Avid NEXIS | PRO 40TB, Avid NEXIS | SDA Avid NEXIS | E4 All-Mirror Distribution Unit with C19 style connectors) Avid NEXIS | E5 NL, Avid NEXIS | E5 All-Mirror, Avid NEXIS | F5 NL Avid does not recommend any specific vendor or model of PDU. A PDU is a rack mount ready, high current power strip that can offer a variety of plug types. Purchase a model that suits the needs of the equipment in your rack.
For the 5U models, connect each power supply in the Engine to a different 30-amp circuit. This allows the system to continue running if one circuit fails.
Plug the power cords into the power supplies on the back of the chassis and then plug the other ends into power outlets on separate circuits. If they are not already in the ON position, turn on the switches on the power supplies.
> **Note:** Whenyouturnonthepowersupplies,thehardwarebeginsitsinternalstartupprocesses;itcantake
severalminutesbeforethesystembecomesavailabletologin.TheLEDsontheEngine(orSystem DirectorAppliance)andpowersupplieslightup.Initially,thepowersupplyfansrunattheirmaximum RPMforafewminutes,thenslowdowntonormalRPM.
3 Installing the Software and Setting up the Avid NEXIS System 3 Installing the Software and Setting up the Avid NEXIS System The process of installing and setting up the Avid NEXIS Engine and System Director Appliance, if applicable, consists of the following overall steps.
> **Note:** Thisoverviewassumesyouaretheownerorenduseroftheequipment.Rentalhousesdonotneedto
performallofthesesteps.
1. Collect the information you will need. See "System Setup Information" below.
2. Register the system and download the software and the license onto a computer you can physically
connect to the Avid NEXIS hardware. See "Registering the System and Downloading the Avid NEXIS Software" on page 46 and "Understanding System Licenses " on page 45.
3. Set the computer’s IP address to be compatible with the hardware. See "Configuring the Computer’s
IP Address" on page 46.
4. Starting with the SDA+ (if applicable) or the first Engine in a configuration without a System Director
Appliance, connect the computer to the management port on the Controller.
5. Run the setup wizard to install the software and configure the system. See "Installing the Software"
on page 49 and "Configuring the Engine or SDA+" on page 51.
If you plan to use a redundant Controller in any Engine or the SDA+, you can enter its information during this process before physically installing it.
> **Note:** ThisstepdoesnotapplytotheAvidNEXIS|F2XExpansionchassis.See"AddinganAvidNEXIS|
F2X(ExpansionChassis)toaSystem"onpage 65.
g Atthispoint,rentalhousescanactivatethemodularlicenseontheEngineandthendeliverthe Enginetotheircustomer.See"ActivatingaModularLicense"onpage 54formoreinformation.
7. Connect the equipment to one or more switches. See "Connecting the Equipment to a Switch" on
page 59.
> **Note:** TheEngineandtheSystemDirectorAppliance(ifapplicable)mustbeconnectedtoasupported
switchtocompletethenextsteps.
8. Complete the system configuration, including creating the file system, applying a system (capacity)
license or activating a modular license on one or more Engines, and binding the Media Packs. See the Avid NEXIS Administration Guide.
Before you begin, review the information in "Avid NEXIS System Overview" on page 11. If you have questions during the installation process, contact your Avid representative or your local ACSR.
System Setup Information To complete the initial software installation and system setup, you will need the following information. In addition, determine whether you will use link aggregation (LACP) in your environment. See "Using Link Aggregation (LACP) " on page 58.
Attribute Notes Storage System Name — Identifies the Avid The Storage System Name must follow RFC 952 and RFC 1123 3 Installing the Software and Setting up the Avid NEXIS System Attribute Notes NEXIS system to clients and to all the Engines, guidelines for host names.
and the System Director Appliance if applicable, Avid NEXIS supports names includingonlythefollowing: up to that belong to the same Avid NEXIS system.
31 English alphanumeric characters (a-z and A-Z, and 0-9), See "Understanding the Shared Name Space" plus a dash/hyphen character (-). The name must start with a below. letter or number, and cannot end with a dash.
System Director IP Address — An IP address that Get the IP address from your IT administrator (for example if enables you to log into the system’s you work for an organization such as a broadcaster or Management Console and administer the production facility.
system as a whole.
If you manage your own network (sole proprietorship, for example), enter an IP address that is not currently assigned to another system or device in your network.
Engine Name — Identifies the Engine or System Names can be up to 18 English alphanumeric characters long, Director Appliance, if applicable. can contain a dash or hyphen (-), must start with a letter, and cannot end with a dash.
See "Understanding the Shared Name Space" below. n TheEnginenameisusedtogeneratetheController name,withapositionalsuffix(-left,-right,-top,or- bottom) Controller IP addresses In a multi-Engine configuration, you will need a separate IP address for each Controller in each Engine, all of which must be on the same subnet.
Netmask and Gateway IP address Must be the same for all the Controllers in all Engines in a multi-Engine configuration DNS domain, server list and search list If your environment uses DNS, you can enter that information to allow you to use either the System Director name or the IP address to connect to the Avid NEXIS system.
> **Note:** DNSisrequiredtoactivatealicenseonline.See"Using
DNSforSystemNameRecognitionandOnlineLicense Activation"onthenextpage.
NTP server IP addresses (optional) You can configure up to two. Enter the same information on all Engines and the System Director Appliance, if applicable, in the configuration. For more information, see "Using NTP to Set System Time" on page 45.
Alternatively, enter the local time (in 24-hour format) and time zone information.
Understanding the Shared Name Space The Avid NEXIS shared storage system uses several names to identify its physical and virtual components.
Storage System Name The Storage System Name represents all the physical Engines, expansion chassis, and the System Director Appliance if applicable, operating as one shared storage group. Clients see and connect to the Storage System name through the Client Manager UI. You enter the Storage System Name in the Remote Host 3 Installing the Software and Setting up the Avid NEXIS System Settings dialog box in the Client Manager if the Avid NEXIS system is not in the same subnet as the client system (use the System Director IP address if your environment does not use a DNS server; see "System Director Name and IP Address" below).
If you plan to use DNS, make sure to give the system a different name from the domain name, to avoid conflict. For example, if your domain name is “netsirkusa.internal”, do not name a shared-storage system “netsirkusa.” Clients that do not use Net BIOS are incompatible with the default DFSN (Distributed File System Namespace) behavior and will fail to distinguish between the domain name and the Avid NEXIS system name, since DFS client names take precedence. For more information on this issue and correctly configuring DFS, see the following Microsoft article: Configuring DFS to use fully qualified domain names.
Engine and Controller Names Each Engine, and the System Director Appliance if applicable, has an Engine name. The Engine name is used to generate the host names of the Controllers in that chassis. This helps associate a particular Controller with the physical chassis it resides in.
System Director Name and IP Address The shared storage system has one System Director, which runs either on an Engine (if no System Director Appliance is present) or on the System Director Appliance. Specifically, the System Director runs on one of the Controllers in the Engine or System Director Appliance.
The System Director is a service that can switch over to the redundant Controller in an Engine or System Director Appliance, if two Controllers are present. The System Director name, therefore, can change based on where it is running at the time:
In a multi-Engine configuration that does not include a System Director Appliance, the System
- Director runs on the first Controller in the first configured Engine. Therefore, that Controller name is
initially also the System Director name.
- In a configuration with a System Director Appliance, the first Controller in the System Director
Appliance runs the System Director, and its name initially becomes the System Director name.
Because the System Director service can migrate between the Controllers, the System Director uses an IP address different from the IP addresses assigned to the Controllers. This functions as a virtual IP address, and allows you to connect to the System Director any time, without needing to know the IP address or host name of the Controller currently serving the System Director process.
> **Note:** VirtualIPaddressisnotavailableonAvidNEXISPROandPRO+systems.
Using DNS for System Name Recognition and Online License Activation DNS, or Domain Name System, is a distributed naming system that lets you use human-readable and - memorable names for computers in your environment. The Internet uses the same principle; for example, to go to Avid’s website, you enter www.avid.com into a browser. If the Internet did not have the ability to resolve that name to an IP address, you would have to remember and enter the IP address for Avid’s website.
Because most people find it easier to remember a name than a number, with a DNS service in your environment, you can use the name you assign to your Avid NEXIS system (for example, MyAvidStorage) instead of the IP address. Then you can enter the name into a browser to open the Management Console and log in.
Using DNS is required to use the online method to activate an Avid NEXIS license (see the Avid NEXIS Administration Guide for more information about licenses).
3 Installing the Software and Setting up the Avid NEXIS System Using NTP to Set System Time NTP, or Network Time Protocol, is a means of synchronizing the system clocks for all the computers in your environment. This can be important in cases where network-wide operations must happen at the same time, or for logging accuracy, or simply to eliminate potential human error when setting system times manually.
Avid recommends using an NTP server to make sure all Engines (and the System Director Appliance, if applicable) in a multi-Engine configuration are set to the same time, and to avoid unexpected license expiration issues. See the Avid NEXIS Administration Guide for more information.
Understanding System Licenses A license is required to control functionality of the system, such as Flexible or All-Mirror Protection, SDA+ capabilities, and (for Subscriptions) the end date and licensed capacity.
An Avid NEXIS shared-storage system can have one of the following license configurations.
Modular License Beginning in Avid NEXIS version 2023.7.0, any Perpetual (non-subscription) F-Series Engine and PRO+ supports a modular license. Installing the modular license is a one-time operation, making it easier to add or remove an Engine from a given system without needing to change the system capacity license.
For example, rental houses can purchase an Engine and activate its modular license, then bring the Engine to their customer’s site. The customer can add it to their shared-storage system for the duration of a project with no impact on their system capacity license, then remove it and return it to the rental house.
The Engine retains its own license (both owned by the rental house) and can be redeployed to a different customer system as a building block.
For facilities that own their equipment, a modular license also makes it easy to move Engines between systems as capacity or project needs change.
Modular licensing requires Avid NEXIS | VFS 2023.8.0 or higher.
Newly purchased Engines will receive a modular license. You can add these Engines to systems with capacity licenses.
System Capacity License A system capacity license, for subscription systems, enables the System Director service and covers the capacity of the Media Packs, configurable either as Flexible or All-Mirror protection. The protection type of a given license cannot be changed.
Capacity licenses are required for any configuration containing an F-Series subscription Engine, and were also previously supplied for Perpetual systems. (The Avid NEXIS | SDA+ uses a specific license type to enable either Standard or Advanced functionality.)
> **Note:** InexistinginstallationsofAvidNEXISusingacapacitylicense,youcanaddnewEngineswithModular
licensesiftheentiresystemisrunningAvidNEXIS|VFS2023.7.0orhigher.
The Avid license (modular or capacity) is associated with the chassis ID. If you replace an Avid NEXIS | PRO+ or F-Series chassis that has a modular license, or the Engine running the System Director service for the shared-storage system, contact Avid for an updated license. (The Avid NEXIS | F2X expansion chassis does not have its own modular license and does not need a new one.) Legacy Systems (Avid NEXIS E-Series and Avid NEXIS | PRO 40TB) Cross-graded E-Series and PRO 40TB require a license. Perpetual configurations of all Avid NEXIS | PRO 40TB or all E-Series Engines (with or without an SDA) do not require a license. Cross-grade subscriptions provide customer support and the ability to download and use new releases of the Avid NEXIS software 3 Installing the Software and Setting up the Avid NEXIS System while the subscription is active.
Registering the System and Downloading the Avid NEXIS Software You must register your system before you can download the Avid NEXIS software. Avid suggests downloading the software onto the same computer you will connect to the hardware.
To register the hardware and download the software:
1. Open a browser and go to www.avid.com/redemption and register your system using the redemption
code you received when you purchased your system. (Your redemption code or license code might already be in your MyAvid account.) After you register, the software and the license activation ID and system ID will be available in your Avid.com account.
2. Download the Avid NEXIS software kit (a zip file) to a computer that you can physically connect to the
Engine or System Director Appliance.
3. Unzip the software kit. You will see several files and folders. The file you will install on the Engine is
named AvidNEXISSetup_<version>.bin.
Configuring the Computer’s IP Address To communicate with the Avid NEXIS hardware, the computer must use an IP address in the same subnet as the default IP address on the Controller (169.254.10.10). This guide uses the address 169.254.10.20 and assumes the computer is running the Windows operating system.
To configure the computer’s IP address for Avid NEXIS installation:
1. Open the Windows Control Panel Network and Sharing Center.
2. Click Local Area Connection.
3. Click Properties.
3 Installing the Software and Setting up the Avid NEXIS System
4. On the Networking tab, select Internet Protocol Version 4 (TCP/IPv4), then click Properties.
5. Make a note of the computer’s current IP address (if specified), so you can restore it after finishing
the Avid NEXIS setup.
6. Click Use the following IP address: and enter 169.254.10.20, with a subnet mask of
255.255.255.0, then click OK.
3 Installing the Software and Setting up the Avid NEXIS System
> **Note:** Bydefault,theControllerIPaddressoneveryAvidNEXISsystemissetto169.254.10.10.You
mustsettheIPaddressofthecomputerto169.254.10.xx,wherexxcanbeanythingexcept10.
Thisexampleuses169.254.10.20.
7. Click Close to exit the Properties dialog.
8. Click Close to exit the Local Area Connection Properties dialog.
9. Close the Control Panel.
To restore the computer’s previous IP address:
1. Open the Windows Control Panel Network and Sharing Center.
2. Click Local Area Connection.
3. Click Properties.
3 Installing the Software and Setting up the Avid NEXIS System
4. On the Networking tab, select Internet Protocol Version 4 (TCP/IPv4), then click Properties.
5. Enter the previous IP address (if it was specified) or click Obtain an IP address automatically.
6. Click Close to exit the Properties dialog.
7. Click Close to exit the Local Area Connection Properties dialog.
8. Close the Control Panel.
Installing the Software Always start with the SDA+, if applicable. For configurations with no SDA+, configure the first Engine to run as the System Director for the remaining members of the shared-storage system.
If you purchased a redundant Controller, do not fully insert it until the initial system configuration is complete. The initial system configuration includes "Installing the Software" below and "Configuring the Engine or SDA+" on page 51. The system must be running with a single Controller before inserting the redundant Controller.
3 Installing the Software and Setting up the Avid NEXIS System If both Controllers are inserted before system configuration, after software installation the system will default to using the serial number of one Controller as the password on both Controllers. If you cannot log in to a Controller using its own serial number after software installation, try logging in with the serial number of the other Controller. For more information on Controller (Agent) To install the software:
1. Connect a standard Ethernet cable between the computer and the Management Interface port on
the Controller of the System Director Appliance if applicable, or the first Engine you are setting up.
Connect to the following:
- The Controller in the top slot in a 2U (F2, PRO+, or SDA+)
- The Controller in the left slot in a 5U
See "Avid NEXIS F-Series Controller Features and Identification" on page 14 or "Avid NEXIS E-Series Controllers and Identification" on page 17 to identify the Management Interface port for the Controller in your model.
2. On the computer, open a new browser tab and go to https://169.254.10.10:5015
You might see a warning about the site’s security certificate. Double-check the IP address, and if it is correct, click Continue to this website.
3. At the login screen, enter the default Agent password. (See "Controller (Agent) Password " on
page 20.)
4. On the Install page, click Choose File and navigate to the location on the computer where you
downloaded and extracted the Avid NEXIS software kit contents.
5. Select the file named AvidNEXISSetup_<version>.bin
6. Change the Administration password for the Agent.
The password can be up to 8 ASCII characters long. If the New Password and Confirm Password values do not match, a warning is displayed.
3 Installing the Software and Setting up the Avid NEXIS System
> **Note:** ThisstepisnotapplicabletoEnginesorSystemDirectorApplianceswithControllersrunningon
factory-installedsoftwareversion2024.11.0orearlier.ForEnginesorSDAsrunningtheseearlier versions,thepasswordcanbechangedafterthesoftwareinstallation.See"Configuringthe EngineorSDA+"below.
7. Click Submit.
The Engine installs the software and reboots, displaying messages about the installation progress and the time until the system will reboot.
8. Continue with "Configuring the Engine or SDA+" below.
Configuring the Engine or SDA+ This procedure completes the configuration of the Engine or SDA+, which includes assigning a system name and IP addresses, configuring the Controller network interfaces, setting up a DNS server (required for online license activation), setting the system date and time, and changing the default Administrator password.
This procedure covers creating a standalone system (one Engine operating independently) or a shared- storage system of multiple Engines and the SDA+ if applicable.
Repeat this procedure for every Engine you are adding to your environment.
g Duringinitialsystemsetup,youcanconfiguretheIPaddressandotherinformationforaredundant Controllerevenifyoudonothaveoneyet.See"ControllersandI/OModules"onpage 13todetermine ifyourmodelsupportsredundantControllers.
Do not fully insert redundant Controllers until afterinstalling the software, rebooting the system, and completing the initial configuration.
To complete the configuration:
1. After installing the software, open a new browser tab and log back into the Agent.
The setup wizard starts on the CONFIGURE screen. All fields marked with a red asterisk are required.
Some fields, while marked Optional, might be required for licensing the Engine using the online method later.
2. In the Engine area:
3 Installing the Software and Setting up the Avid NEXIS System a. Type a Storage System Name. This is the name of the shared storage system containing one or more Avid NEXIS Engines, including the System Director Appliance, if applicable.
> **Note:** MakesurealltheEngines/SDA+thatwillbelongtothesameshared-storagesystemhave
thesameStorageSystemName.
b. (Optional) Type a value or use the up and down arrows to set an Enclosure ID for the Engine and if applicable, the Expansion chassis, which will be displayed on the control panel; see "Front Views" on page 20. For example, in a four-Engine configuration, you could number them 01 through 04. If you do not enter a value, the default value (two dashes, or --) is displayed.
c. Enter a name for the Engine or SDA+. The Engine name is used to generate the host names for the Controllers, which appear in the fields for Top and Bottom Controllers or Left and Right Controllers, as applicable.
> **Note:** EachEngineorSDA+hasauniqueEnginename.OnlytheStorageSystemNameis
commontoallmembersinashared-storagesystem.
3. In the System Director area:
a. Select the option to the Run System Director only if this is the first Engine in a configuration that will not use a System Director Appliance.
> **Note:** ThisoptionisnotpresentonaSystemDirectorApplianceorona5UEngine,whichcannot
runasitsownSystemDirector.All5UEnginesrequiretheuseofaSystemDirector Appliance.) b. (Applies only to chassis that supports redundant Controllers) Enter an IP address for the System Director that is different from the Controller IP addresses. This functions as the virtual IP address for the System Director.
> **Note:** IfyoudonotsetanIPaddressfortheSystemDirector(virtualIP),theController
IP addresswillalsobetheSystemDirectorIPaddress.Formoreinformation,see"System DirectorNameandIPAddress"onpage 44.
g MakeanoteoftheSystemDirectorIPaddress;youwillneeditinalaterstep.
4. In the Data Interfaces area:
a. (For a single Controller) Enter the IP address, netmask, and gateway you received from your IT administrator.
b. (For redundant Controllers) Enter the IP address in the field for the bottom or right Controller.
(A second Controller inherits the netmask and gateway information from the first.) c. If using LACP (see "System Setup Information" on page 42), select the option for Link Aggregation.
5. Leave the Management Interfaces section as is.
6. Configure a DNS server if you plan to activate the license using the online method.
g RentalhousescantemporarilyconfiguretheEnginetousetheirin-houseDNSserver,andthe endcustomercanchangeittotheirownDNSserverlater(eitherintheAgentorthe ManagementConsole).
a. In the DNS Domain field, type the DNS domain name for your environment.
b. In the DNS Server list field, type the IP addresses, separated by spaces, for one or more DNS servers in your environment.
3 Installing the Software and Setting up the Avid NEXIS System c. In the DNS Search List field, you can enter alternate DNS names, separated by spaces, that are used in your environment. These will be used to help resolve the System Director name in a browser.
7. Click Next.
8. On the Time screen:
a. (Optional but strongly recommended) Configure one or more NTP servers.
> **Note:** Inamulti-Engineconfiguration,enterthesameNTPserverortimeinformationonall
EnginesandtheSystemDirectorAppliance,ifapplicable.
g RentalhousescanomitconfiguringanNTPserverbutarestronglyadvisedtosetthelocal timeoneachEngineandSDA+beforedeliverytotheirendcustomers.
b. Manually set the current date and time using 24-hour format (for example, for 4 PM enter 16:00) and select the appropriate time zone from the list, even if you configured NTP servers.
Otherwise, when the system reboots and the NTP server time is applied, a large time adjustment might be necessary, which can cause problems later.
9. Click Next.
ASCII characters long. If the New Password and Confirm Password values do not match, a warning is displayed.
> **Note:** ForEnginesandSystemDirectorApplianceswithControllersoriginallyshippedwithfactory-
installedsoftwareversion2024.11.1orlater,thepasswordchangeisperformedearlierduringthe softwareinstallation;proceedtothenextstep.
> **Note:** TheAgentpasswordcanalsoaccesstheManagementConsole.ChangingtheAgentpassword
improvessystemsecurityandenablesAvidsupportpersonneltoremotelyconnecttothesystem whennecessary.
Enter the same password on all members of the same shared-storage system.
11. Click Finish.
The system reboots to complete the configuration.
g Torunthewizardagain(forexample,toconfirmyourentriesortomakechanges),openthe AgentandclickWizardontheCONFIGUREtab.
12. To configure more hardware, connect the computer to the Management Port on the next Engine.
g Youdonotneedtochangethecomputer’sIPaddressagain.TheIPaddressyouconfigured earlieristhesameforallAvidNEXISEnginesyouareconfiguring.
13. Install the software on the next Engine if applicable (see "Installing the Software" on page 49) and
repeat this procedure.
14. When you have configured all the equipment, disconnect the computer. You can optionally restore
the computer’s IP address to what it was originally; see "Configuring the Computer’s IP Address" on page 46.
Make sure nothing remains connected to the Management Interface port. This port does not support media traffic or access to data stored on the system.
3 Installing the Software and Setting up the Avid NEXIS System If you are a rental service, you can activate the modular license for the Engines but do not need to continue with the rest of this Setup Guide. Refer to the Avid NEXIS Administration Guide for activating the licenses and the final on-site configuration.
Activating a Modular License Avid NEXIS | VFS version 2023.7.0 introduced modular licenses for F-Series Engines and the PRO+. You can activate a modular license before or after adding the Engine to an existing shared-storage system.
g ForAvidNEXIS|F2,themodularlicenseisactivatedonlyontheF2andappliestoanF2X,regardlessof whentheyarepaired.
> **Note:** IftwoControllersareinstalled,usetheIP addressofthetopController(ina2U)orleftController(ina
5U).InthePRO+,onlyoneControllerissupported,andisinstalledupside-downinthebottomslot.
Make sure to activate the correct license for the Engine you are logged into. Once the license is active, you cannot remove it without help from Customer Care.
To activate a Modular License:
1. In a browser, type the IP address of the Controller in the Engine.
2. On the Login screen, enter the Administrator user name and the password.
The Management Console opens in Engine mode (no System Director is running). Engine mode supports only two operations: installing the software and activating the license.
3. Do one of the following:
- For ONLINE activation:
a. Click the blue License tab.
b. In the Activation section, select the Online Activation Method.
c. Type (or copy and paste) the Activation ID and System ID (for new systems only) you received from Avid.
d. Click Activate.
e. In the confirmation dialog, click Continue.
f. The system licensing process starts. When complete, click Close.
- For OFFLINE activation:
a. In a separate browser tab, go to the following page: https://avid.com/license b. Type the Activation ID you received from Avid and the Device ID from the Avid NEXIS system.
The Activation ID is verified, and the System ID field is displayed.
c. Type (or copy and paste) the Device ID from the Management Console and the System ID you received in the email from Avid.
d. Type your email address, then click Submit.
A license file is created.
e. Click Download to save the license file to the computer.
f. In the Management Console, click the blue License tab.
g. Select the Offline Activation method.
3 Installing the Software and Setting up the Avid NEXIS System h. Type (or copy and paste) the Activation ID and the System ID you received in the email from Avid.
i. Click Choose File and navigate to the location of the license file.
j. Click Activate.
k. In the Warning dialog, click OK to continue..
The Engine reboots to complete the activation process.
4. Log back into the Management Console and confirm the license information.
The Entitlements field displays the license type, and the Details pane fields show the information for this license.
You can add it to an existing shared-storage system or use it as a standalone system (if configured to run the System Director service). You can bind the Media Packs in the Engine with no effect on the system capacity license (if applicable).
Performing a Drive Test Avid strongly recommends performing a drive test and collecting drive statistics on the deployment of all new Avid NEXIS engines before the system is made available to a production environment.
All spinning hard drives, as they are mechanical devices, will experience a high initial failure rate which then drops significantly after a few months. These failing drives are known as "infant mortality" drives due to their early demise.
The drive test or burn-in procedure outlined in this section helps identify potentially faulty drives early, so that they can be replaced before the system enters production. This ensures the reliability and performance of new Avid NEXIS engines and helps reduce downtime for the users.
Do not perform the test on drives that contain media, as it involves intensive read and write operations that can be destructive. This is intended only for testing new drives.
You can test the drives and collect their statistics before or after creating the file system, but ideally do it before you create users and start using the system.
3 Installing the Software and Setting up the Avid NEXIS System Drive Test Prerequisites Before running the drive test you should ensure that all media drives are using the appropriate firmware version and you have the Avid NEXIS Toolbox installed.
Drive Firmware Update The hard drives used by Avid NEXIS to store media are often sensitive to firmware versions. Drives for use in Avid NEXIS engines have very specific requirements regarding internal drive maintenance tasks and require that these are postponed for the duration of a write. If a drive has an inappropriate firmware version, it may cause Delayed Write Failures ( DWF).
However, not all drives are affected. The list of affected drive models and their minimum firmware version are available in this Knowledge Base article: https://kb.avid.com/pkb/articles/en_US/Knowledge/NEXIS- Media-Drive-Firmware. You can request a firmware update from Avid Support if necessary.
Installing the Avid NEXIS Toolbox To perform the drive test and collect disk statistics, you need the Disk Analyzer tool that is part of the Avid NEXIS Toolbox.
To install the Avid NEXIS Toolbox:
1. Log in to the Management Console
Log in as Administrator with the Administrator password. Depending on the state of the system, the default password is blank (no password) or one you have created.
2. In the navigation sidebar, click System, then Installers.
3. Download and install the Avid NEXIS Toolbox on a computer with network connection to the Avid
NEXIS system.
For more information about the Avid NEXIS Toolbox, refer to the "Avid NEXIS Toolbox" chapter in the Avid NEXISAdministrationGuide, available in the Avid NEXIS Documentation Knowledge Base.
Running the Drive Test This test is good for systems that will not use mirrored workspaces, where one failed disk can cause workflow issues. Systems running Avid NEXIS version 2023.12 and later contain fixes that help, but do not solve all potential problems related to disk performance.
To run the drive test:
1. Start the Avid NEXIS Toolbox and enter the Avid NEXIS system IP address, your administrator user
name, and password.
2. Click Disk Analyzer.
3. Select the box for the System Director which will select all Engines in the system, along with their
Media Packs (if bound) or all drives (if not yet bound).
If you are adding a new Avid NEXIS engine to an existing system, be careful not to select the drives that contain media. It will be necessary to bind the new Media Packs to the System Director (but not add them to a Storage Group) so that you can select ONLY the newly added drives.
4. From the Action drop-down list, select Execute disk tests.
5. Click the green Start button.
6. In the Disk Test Options dialogue, select the following:
3 Installing the Software and Setting up the Avid NEXIS System
  - Test Type: Read/Write
  - Access Mode: Random
  - Duration: Minutes, and enter at least 1440 minutes (24 hours) or 2880 minutes (48 hours) for
the test duration.
  - Refresh Rate: Normal
7. Click OK.
The test starts and runs until complete.
8. When the test is done, click the Save Results button.
Enter a name and location for the saved file. The default file type is .csv.
g NameitsomethingidentifiablesuchasDiskTest<date>or<IPaddress>DiskTest,ifyouare performingthisprocedureandsavingresultsfordifferentAvidNEXISsystems,orondifferent dates.
Collecting Drive Statistics When the drive test completes, collect disk statistics.
To collect disk statistics:
1. From the Action drop-down list, select Collect disk statistics.
2. Click the green Start button.
3. In the Confirm Action dialogue, click Yes.
3 Installing the Software and Setting up the Avid NEXIS System
4. When the operation is done, click Save Results button.
Enter a name and location for the saved file.
g NameitsomethingidentifiablesuchasDiskStats<date>or<IPaddress>DiskStats,ifyouare performingthisprocedureandsavingresultsfordifferentAvidNEXISsystems,orondifferent dates.
Analyzing Test Results At any time, even while the drive test or drive statistics collection are running, you can log into the Management Console and display the Dashboard to see error messages about any drives in Media Packs that are bound. Look for any error messages about drives that state: "Performance Degraded" or "Disk failing" and replace those drives as soon as possible.
Analyzing the Disk Test Open the saved Disk Test file and look at the MB/sec column.
- If the Media Packs are bound, the results will reflect their bind option. For example, if some disks
report ~40MBps and others of the same model and capacity report ~60MBps, that likely means that one MP is bound as Scale-Out (40MBps) and the other is bound as High Performance (60MBps). This is normal and not cause to replace any disks.
- Regardless of whether the Media Packs are bound or not, each drive should perform the same
random R/W at the same relative MBps given at least a four-hour burn-in time. Any drive that falls more than 10% outside the range of the others should be replaced.
Analyzing the Disk Statistics Open the saved Disk Statistics file. and look at the LCT (Long Command Times) values for each disk. If any disk reports the following values, replace it before making the system generally available to users:
HDDs More than 1 LCT > 750ms HDDs More than 5 LCTs > 500m SSD (data drives only) More than 1 LCT > 150000m Replace any suspect or failed/failing drives, then repeat these procedures to verify that the replacement drives are good. Once all drives are performing properly, you can finish configuring the Avid NEXIS system and clients can start using it.
Using Link Aggregation (LACP) If your environment supports and requires it, you can configure link aggregation (also called redundant networking, NIC teaming, link bundling, or port trunking) on the network ports on each Controller, which provides redundancy in case one network port fails.
The Avid NEXIS implementation follows the Link Aggregation Control Protocol (LACP) standard.
> **Note:** LinkaggregationisnotsupportedonAvidNEXIS|PRO+orAvidNEXIS|PRO40TB.
LACP is supported with one or two Controllers, but if two Controllers are present, it must be enabled on both. The Ethernet ports on all installed Controllers must be connected to one or more supported switches.
The overall process for enabling LACP is as follows:
3 Installing the Software and Setting up the Avid NEXIS System
1. Configure link aggregation on the switches. See your switch documentation for details.
2. Log into the Agent on each Controller in the SDA and Engines, as applicable, using each Controller’s
unique IP address, to enable link aggregation (see "Installing the Software" on page 49).
3. Connect the System Director Appliance and Engines to the switches (see "Connecting the Equipment
to a Switch" below).
Connecting the Equipment to a Switch See the AvidNEXISNetworkandSwitchGuidefor the currently supported switches, cables, and transceivers for use with Avid NEXIS. Refer to the figures in "Controllers and I/O Modules" on page 13 to identify the switch (data) ports for your model.
When connecting an Engine to a single switch, use only the Primary Data Port on each Controller (see "Avid NEXIS F-Series Controller Features and Identification" on page 14 or "Avid NEXIS E-Series Controllers and Identification" on page 17).
Considerations for High Performance Media Packs in Paired F2/F2X Two High Performance Media Packs in a paired Avid NEXIS | F2 and Avid NEXIS | F2X configuration use more aggregate bandwidth than a 1 x 10GbE connection can support. You must use 25GbE for single Controllers, or dual 10 or 25GbE connections (with LACP) for single or dual Controllers.
To maximize the bandwidth required for High Performance Media Packs, connect them to a suitable switch as follows:
2 x 10GbE with LACP enabled on the Avid NEXIS | F2 single or dual Controllers
- 1 x 25GbE with no LACP configured, or 2 x 25GbE with LACP configured on the Avid NEXIS | F2 single
- or dual Controllers
See "Using Link Aggregation (LACP) " on the previous page and the figures in "Dual LACP Connections" below.
All the Engines and the System Director Appliance must be connected to supported, networked switches to complete the system configuration (described in the Avid NEXIS Administration Guide).
Dual LACP Connections The following figures show how to connect cables between the network ports on the Controllers and an LACP-enabled switch.
Dual LACP Connections to Avid NEXIS | F2, Avid NEXIS | SDA+ 3 Installing the Software and Setting up the Avid NEXIS System Dual LACP Connections to Avid NEXIS | F2 SSD Dual LACP Connections to Avid NEXIS | F5, Avid NEXIS | F5 NL 3 Installing the Software and Setting up the Avid NEXIS System Dual LACP Connections to Avid NEXIS | E2, Avid NEXIS | E2 All-Mirror, Avid NEXIS | SDA, or Avid NEXIS | E2 SSD Dual LACP Connections to Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror Dual LACP Connections to Avid NEXIS | E5, Avid NEXIS | E5 All-Mirror, or Avid NEXIS | E5 NL Use the supplied QSFP to SFP+ adapter (shown in the following figure) to connect an Avid NEXIS | E5 NL to a 10GbE switch.
3 Installing the Software and Setting up the Avid NEXIS System 4 Adding and Replacing Hardware 4 Adding and Replacing Hardware The Avid NEXIS shared-storage system is designed to remain operational if a component fails. You can expand your system (add an Engine, add more Media Packs) to the existing file system in real time, as specified by your system configuration (see the Avid NEXIS ReadMe for configuration limits).
Do not add new hardware if there are any issues with the system. Correct all problems before adding new hardware or making changes to the system, and perform quick checks to verify that the system is in good working order.
Do not lift the chassis by the handles on the power supply units—they are not designed to support the weight.
Always have available a replacement or blank module before removing the old module. When you replace a module, do not leave a bay empty for more than 10 minutes.
w Use a suitable anti-static wrist or ankle strap and observe all conventional ESD precautions when handling plug-in modules and components.
You can replace most hardware components without disrupting the system operation.
Collecting Logs for Customer Care To help Avid evaluate returned components, collect any available system logs from the time the failure occurred, including any event or error messages, and send them to your Customer Care representative when ordering a replacement part.
To collect system logs:
1. In the Management Console, click Logs, then Event History.
2. Click Download.
A file named history.zip is created and saved to your default downloads directory.
3. Mention this file when ordering a replacement part. Your Customer Care representative can provide
information on how to send that file to Avid.
Understanding Hardware Faults LED colors are used consistently throughout the Engine and its components for indicating status:
Green – good or positive indication
- Flashing green/amber – non-critical condition
- Amber – fault
- Make sure that you have obtained a replacement before removing any faulty component.
Observe all conventional ESD precautions when handling Engine modules and components.
If the System Director Appliance and Engine are not communicating:
- Verify that the network cables from the Engine and the System Director are connected to the same
switch.
Check the indicators on the Controller (see "Avid NEXIS F-Series Controller Features and
- Identification" on page 14 and"Avid NEXIS E-Series Controllers and Identification" on page 17 ).
4 Adding and Replacing Hardware Adding an Engine to a System You can add more Avid NEXIS Engines to your infrastructure to increase available space and allow for more flexible configurations. See the Avid NEXIS ReadMe for the limits on the number of Media Packs supported in your configuration.
An Avid NEXIS system can contain:
- All Avid NEXIS | PRO, or all Avid NEXIS | PRO+, or a combination
- All Avid NEXIS | E Series, or all Avid NEXIS | F Series, or a combination, with or without a System
Director Appliance To mix F-Series Engines and E-Series Engines or PRO and PRO+ in the same configuration, you must update the system to version 2022.5.0 or higher.
To add Engines with Modular Licenses to an existing system using a capacity license, upgrade the system to version 2023.7.0 or higher.
You configure the new Engines to join the existing Avid NEXIS shared-storage system file system, which is designed for system expansion. For more information, see "Avid NEXIS System Overview" on page 11.
Do not create a new file system as part of adding new Engines to the system. Creating a new file system where one already exists is a permanently destructive operation, akin to reformatting the hard drive in a computer. All your Workspaces, containing all your media files, clips, project and bins, sound files, and all other media are permanently and irrecoverably destroyed. All system configuration, users and user groups, Storage Groups and Media Packs are deleted and must be re- created. There is no recovery.
After you add new Engines to the system, bind the new Media Packs and add them to an existing Storage Group or create a new Storage Group.
Before You Begin:
Log in to the existing system and make a note of the following information:
- Storage System Name
- Avid NEXIS version
- IP Address, netmask, and gateway assigned to the Controllers in all Engines in the shared storage
system To add Engines to an existing shared storage system:
1. Rack-mount the chassis and connect the power cables as described in "Connecting the Equipment"
on page 35.
2. Connect one or more network cables (depending on the number of Controllers) to the same subnet on
the switch currently used by the existing Avid NEXIS system.
3. Turn on the new chassis.
4. Connect a laptop or local computer to the Management Port on the Controller inthechassisyouare
adding(the top or left Controller, if there are two) and configure the computer’s IP address to 169.254.10.20 and the subnet to 255.255.255.0.
5. Launch a browser and open the Agent on the new chassis: https://169.254.10.10:5015.
6. Download and install the same Avid NEXIS software version that is running on the existing shared
storage system. As part of the software installation, the chassis reboots.
4 Adding and Replacing Hardware
7. After the chassis restarts, reopen the Agent and configure the new system, with the following
information:
a. Enter the same Storage System Name as the existing shared storage system it is joining.
b. Enter a name for the new chassis in the Engine Name field, and optionally enter an Enclosure ID.
c. Do not check the box to “Run as System Director.” d. In the Data Interfaces section, enter an IP address for the Controller (or both Controllers, if applicable) in the same subnet as the existing shared storage system. If using redundant Controllers and LACP, check the Link Aggregation box.
e. Click Submit.
The new chassis reboots again.
8. (Applicable to Avid NEXIS | VFS version 2023.7.0 and higher) Activate the modular license on the new
Engine or PRO joining the system. See "Activating a Modular License " on page 54.
9. When the system restarts, log in to the Management Console for the shared storage system. The
new Engine appears in the Engines list with unbound Media Packs.
10. Bind the Media Pack (or Packs) to the existing file system.
DO NOT CREATE A NEW FILE SYSTEM ON THE EXISTING SHARED STORAGE SYSTEM.
11. Perform a Drive Test to ensure the reliability and performance of the new Avid NEXIS engine. See
12. Add the Media Pack (or Packs) to an existing Storage Group or create a new Storage Group. See the
If you add the Media Packs to an existing Storage Group, redistribution will begin.
Adding an Avid NEXIS | F2X (Expansion Chassis) to a System If you have an Avid NEXIS | F2 in your configuration, you can add an Avid NEXIS | F2X expansion chassis.
Instead of Controllers, the Avid NEXIS | F2X contains two I/O modules that connect to the Controllers in the Avid NEXIS | F2 with the supplied SAS cables.
> **Note:** MakesureyourcapacitylicensehasenoughavailablespacetobindthenewMediaPacks.If
necessary,purchaseorupdateyourlicensefromAvid.IftheMediaPacksarepartoforpairedwithan Enginewithamodularlicense,noadditionalpurchaseorupdateisnecessary.
The paired Avid NEXIS | F2 and Avid NEXIS | F2X are the equivalent of an Avid NEXIS | E4.
To add an Avid NEXIS | F2X to a system:
1. Rack-mount the Avid NEXIS | F2X and connect the cables as described in "Connecting the Equipment"
on page 35.
2. Using the supplied SAS cables, connect the top Controller in the Avid NEXIS | F2 to the top I/O module
in the Avid NEXIS | F2X. If applicable, connect the bottom Controller to the bottom I/O module. See "Rack-Mounting the Equipment" on page 35 for a figure showing the cable connections.
3. Turn on the power supplies in the Avid NEXIS | F2X.
4. In the Management Console, verify that the Avid NEXIS | F2X information is displayed on the Engines
page, in the Details section (Edit mode). Make sure the serial number and enclosure ID are listed for the Avid NEXIS | F2X and the Avid NEXIS | F2 it is paired with.
5. Bind the Media Pack in the Avid NEXIS | F2X to the file system.
4 Adding and Replacing Hardware
7. Add the Media Pack to a Storage Group. See the Avid NEXIS Administration Guide for more
information.
Adding Media Packs to an Engine You can add Media Packs to an Engine that is not fully populated, up to the limits based on your system configuration and system capacity license entitlements, if applicable. When bound to the file system, the Media Packs automatically become part of the Avid NEXIS shared-storage system, and are available to add to an existing Storage Group to increase its capacity, or to create a new Storage Group.
> **Note:** MakesureyourcapacitylicensehasenoughavailablespacetobindthenewMediaPacks.If
necessary,purchaseorupdateyourlicensefromAvid.IftheMediaPacksarepartoforpairedwithan Enginewithamodularlicense,noadditionalpurchaseorupdateisnecessary.
As a best practice, add Media Packs with the same capacity drives as the other Media Packs in your system. However, if you want to increase the total capacity of a Storage Group, you can add larger Media Packs and remove the smaller Media Packs. After you remove the last smaller-capacity Media Pack, the Storage Group expands to use the extra space. See the Avid NEXIS Administration Guide for more information.
If your system contains spare drives and you plan to add more drives of a different capacity, Avid recommends temporarily removing the spare drives before installing the new Media Pack drives. This prevents the system from assembling a Media Pack from mixed drive sizes, resulting in a Media Pack capacity based on the smallest of its drives.
Adding a Media Pack to an Engine (2U and 4U) You can add drives in any available slots. The system combines any 10 unassigned drives into a Media Pack automatically.
To add a Media Pack to a 2U or 4U Engine:
1. Remove the bezel by inserting your fingers into the rectangular openings on the front of the bezel and
gently pulling. The bezel is held in place by small plastic tabs that latch onto the face of the Engine.
On the 2U chassis, there are also two small metal posts that snap into holes on the front of the chassis.
2. For each drive, do the following:
a. Remove the blank drive plate.
b. Fully open the drive latch.
c. Insert the media drive into the slot with the latch pointing left (if drive slots are horizontal) or pointing upwards (if drive slots are vertical).
d. Push the media drive in and push the latch inward until the drive locks in place.
e. Lock the media drive.
3. Reattach the bezel.
Adding a Media Pack to an Engine (5U) Two system drives are preinstalled in all 5U Engines. You can insert new Media Pack drives into any available slots; see "Installing Media Packs in 5U Chassis" on page 40 for recommendations on how to populate the drive drawers. The system combines any 10 unassigned drives into a Media Pack automatically.
4 Adding and Replacing Hardware To add a Media Pack to a 5U Engine:
1. Open the appropriate drawer.
2. For each drive in the Media Pack, and the included spares:
a. Lower the drive into the slot with the drive capacity label facing towards you.
b. Push the drive downwards and hold it down while sliding the drive carrier plate in the direction shown in the following figure. This locks the drive in place.
Make sure the drive is securely locked into place before closing the drawer. Unlocked drives can open due to chassis vibration and lift up enough to prevent the drawer from opening.
Forcing the drawer open will damage the drive and the chassis.
3. When all the drives are installed, close and lock the drawer.
About Drive Failures When any drive fails, the drive fault LED illuminates (see "Media Pack and System Drives" on page 25) and the Management Console and Agent display an error (see the Avid NEXIS Administration Guide).
Leave failed drives in place until you have a replacement so you maintain the proper airflow. Obtain a replacement as soon as possible. Avid recommends not storing drives for longer than 6 months before first use.
Media Pack drives and system drives have different effects on the system when they fail:
If one system drive fails, the Avid NEXIS Engine continues to operate, but you should replace the
- failed drive as soon as possible.
- If both system drives fail, the Engine stops operating because no metadata for writes can be
recorded.
  - In a mirrored configuration, if both system drives fail in the same Engine, the system continues
to operate.
  - In a non-mirrored configuration, the loss of one Engine results in the failure of the entire
Storage Group.
The impact to Workspaces from a Media Pack drive failure depends on the Engine Protection mode (Workspace mirroring), and the Media Pack Protection Mode on the Workspaces. The following table lists the highest to lowest protection for a Workspace.
Workspace Protection Failure Tolerance Mirror + Two Disk Workspace remains available if up to 5 drives fail, in any Media Pack(s), or the loss of one Engine Mirror + One Disk Workspace remains available if up to 3 drives fail, in any Media Pack(s), or the loss of one Engine No Mirror, Two Disk Workspace remains available if up to two drives fail in any Media Pack(s) No Mirror, One Disk Workspace remains available if up to one drive fails in any Media Pack(s) No Mirror, Unprotected Workspace (and media) are not recoverable if any drive fails
> **Note:** CreatingWorkspaceswithnoMediaPackprotectionisnolongersupported.
InformationprovidedforlegacyWorkspacesonly.
If a hot spare drive is available, after a short delay the Media Pack status changes to Drive rebuilding.
Media Packs are also rebuilt when a drive is removed from the Engine for any reason.
4 Adding and Replacing Hardware When a new drive is inserted, the system automatically rebuilds the Media Pack or formats and partitions the new system drive, as applicable.
Identifying the Slot Number for a Failing or Failed Drive When a drive is failing or has failed, its status is displayed:
In the System Dashboard
- On the Engines page in the Storage menu. Click Advanced, then click the Disks tab. The slot number
- is shown in the disk details table.
- On the Media Packs pane in the Storage menu. Click Advanced, then click the Disks tab. The slot
number is shown in the disk details table.
Replacing a Drive Always use an appropriate drive from Avid of the same size as, or larger than, the failed drive. For more information, see "Media Pack and System Drives" on page 25.
Do not use a system drive from another Engine or System Director Appliance as a replacement. The system drives operate as a pair, and contain metadata from the original system they belonged to.
Using a system drive from another chassis, even if new and never deployed, will cause problems because the system drives are initialized as a mirrored pair during the manufacturing process.
g YoucanuseadrivefromanotherAvidNEXISEngine,butifitpreviouslybelongedtoaMediaPack,you mustclearitsconfigurationbeforethenewEnginecanuseit.SeetheAvidNEXISAdministrationGuide forinformationaboutclearingaforeigndiskerror.
The replacement drive must be the same size as the failed drive or larger. For example, in a Media Pack, you can use a 10TB HDD to replace a failed 6TB HDD. However, the Media Pack will use only 6TB of the space on the larger drive. You cannot replace a larger drive with a smaller one.
> **Note:** IfyourMediaPacksareboundwithacapacitylicense,andyouarereplacingindividualdrives(orall
thedrivesinaMediaPack)withlargerones,youmightneedtoupdateyourlicensetosupportthe extracapacity.
g IfyouaccidentallyremovethewrongmediadrivewhiletheMediaPackisreconstructingdatafora faileddrive,andclientI/Oisactive,allclientactivitymightstopafterabriefdelayasthesystemstarts anotherreconstructionprocess.Youcansafelyreinsertthedrivewithinfiveminutesofremovingit, andthenremovethefaileddrive.
If a system drive fails, the system remains running as long as the other system drive is operating. If both system drives fail, the system shuts down.
After you replace a failed system drive, metadata reconstruction starts. The rebuild progress is displayed on the System Status Console in the Management Console. On an idle system, the rebuild typically completes within 20 minutes for a 400 GB drive. If the system is busy, the rebuild time can increase significantly, up to 40 hours if clients are performing heavy I/O (especially writes) during the entire rebuild process.
4 Adding and Replacing Hardware Removing a Drive (2U and 4U Chassis) To remove a drive:
1. Remove the bezel by inserting your fingers into the rectangular openings on the front of the bezel and
gently pulling. The bezel is held in place by small plastic tabs that latch onto the face of the Engine.
g Onthe4Uchassis,therearealsotwosmallmetalpoststhatsnapintoholesonthefrontofthe chassis.
2. Identify the drive to be replaced by looking for the amber LED on the drive that indicates a fault; see
"Media Pack and System Drives" on page 25.
3. Make sure the anti-tamper locks are not engaged. The red lock symbol is visible if the drive is locked
(see "Drive Types and Sizes" on page 26). Unlock them if necessary by rotating them counterclockwise using a screwdriver with a Torx T20 bit.
4. Push the drive carrier latch in the direction of the white arrow.
5. Open the drive latch and pull the drive out of the slot.
Inserting a Drive (2U and 4U Chassis) To insert a drive:
1. Fully open the drive latch.
2. Insert the drive into the slot with the latch pointing left (if drive slots are horizontal) or pointing
upwards (if drive slots are vertical).
3. Push the drive in and push the latch inward until the drive clicks into place.
4. Lock the drive.
5. Gently snap the bezel onto the front of the chassis.
Removing a Drive (5U Chassis) To remove a drive:
1. Identify the drawer containing the failed drive; see "Front Views" on page 20.
2. Open the appropriate drive drawer and identify the failed drive by its LED. (See "Media Pack and
System Drives" on page 25.)
3. Push the drive carrier latch in the direction shown in the following illustration to unlock the drive.
4 Adding and Replacing Hardware
4. Pull the drive upwards and out of the drawer.
> **Note:** Ifyouarenotgoingtoreplacethedriveimmediately,closethedrawersothatcorrectairflowand
coolingaremaintainedintheEngine.
Inserting a Drive (5U Chassis) To insert a drive:
1. Open the appropriate drawer.
2. Lower the drive into the slot with the drive capacity label facing towards you.
3. Push the drive downwards and hold it down while sliding the drive carrier plate in the direction shown
in the following figure. This locks the drive in place.
Make sure the drive is securely locked into place before closing the drawer. Unlocked drives can open due to chassis vibration and lift up enough to prevent the drawer from opening.
Forcing the drawer open will damage the drive and the chassis.
4. Close and lock the drawer.
4 Adding and Replacing Hardware Adding a Redundant Controller If your model supports it, you can order and install a redundant Controller for a Engine or System Director Appliance. You can install the redundant Controller at any time, even if the Engine or System Director Appliance is already mounted in a rack and operating.
For systems running (or upgraded to) Avid NEXIS version 2024.5.x, see "Version Incompatibility with Replacement Controllers and Avid NEXIS version 2024.5.0" on the next page.
Do not fully insert redundant Controllers until afterinstalling the software, rebooting the system, and completing the initial configuration.
Installing a redundant Controller has no effect on the system license. No additional license is required.
g Duringinitialsystemsetup,youcanconfiguretheIPaddressandotherinformationforaredundant Controllerevenifyoudonothaveoneyet.See"ControllersandI/OModules"onpage 13todetermine ifyourmodelsupportsredundantControllers.Donotinstall(orfullyseat)thesecondControlleruntil youhaveconfigureditsIPaddressasdescribedinthefollowingprocedure.
> **Note:** BothControllersinanEnginemustbethesametype,withthesamelabel.Inparticular,makesurethat
bothControllersinanEnginehavethesameamountofmemory.InstallingControllerswithdifferent formoreinformation.
For highest availability, Avid recommends using a redundant Controller in all Engines and System Director Appliance, if applicable, in the entire shared storage system. However, you can add a redundant Controller in the System Director Appliance alone, to ensure the System Director service remains running in case the Controller fails.
To install and use a redundant Controller (repeat procedure for each applicable Engine and the System Director Appliance):
1. Before physically inserting a second Controller, upgrade the Engine or the System Director
Appliance to the current release if possible. See the Avid NEXIS Administration Guide for more information on upgrading your system.
2. Configure the second Controller as follows:
a. Open the Management Console and click System, then System Setup.
b. Click the blue Interfaces tab.
c. Enter the IP address for the redundant Controller.
d. (Optional) If you plan to enable link aggregation (LACP) on the Controller, see the Avid NEXIS Administration Guide before checking the box.
e. Click Save.
3. Remove the blank plate covering the empty Controller slot.
4. Install the redundant Controller as follows:
a. Open the release latch on the new Controller all the way.
b. Note the correct orientation of the Controller for the system you are adding it to:
c. In the 2U chassis the redundant Controller is installed upside down. See "Rear Views" on page 23.
4 Adding and Replacing Hardware d. In the 4U chassis the redundant Controller is installed right side up, in the third slot from the top (leaving a one-slot gap between the first and redundant Controllers). See "Rear Views" on page 23.
e. In the 5U chassis the redundant Controller is installed in the right-hand slot. See "Rear Views" on page 23.
f. Slide the replacement Controller into its slot until it will go no further.
g. Close the lever until it clicks in place.
The Controller engages with the connector on the midplane.
5. Check the Power/OK LED on the Controller to make sure it is lit; see "Avid NEXIS F-Series Controller
Features and Identification" on page 14 or "Avid NEXIS E-Series Controllers and Identification" on page 17 for more information.
6. Connect the two Controllers with a standard Ethernet cable between the ports indicated in the
figures in "Dual Controller Connection Diagrams" on the next page. The cable provides ongoing communication between the Controllers and must remain in place.
As soon as the Controllers are connected, the original Controller sends the necessary firmware and configuration data to the redundant Controller, bringing them into sync. This process can take up to 20 minutes. The system is fully usable during this time.
7. Log in to the management Console and verify that both Controllers are displayed and running the
same version. For more information see the Avid NEXIS Administration Guide.
Version Incompatibility with Replacement Controllers and Avid NEXIS version 2024.5.0 Avid NEXIS | VFS 2024.5 includes an updated version of Debian Linux to improve supportability. This version includes a sub-component used for inter-controller synchronization that is not compatible with earlier versions of Avid NEXIS. Therefore adding redundant controllers or replacing a failed redundant controller will now require a maintenance window to allow the controller to read the engine configuration.
> **Note:** ThisissueaffectsbothAvidNEXISF-Series(includingSDA+andPRO+)andAvidNEXISE-Series
(includingSDA,PRO20TB,andPRO40TB),andappliesonlytosystemsrunningversion2024.5.0or higher.
As always, make sure to update all the Engines and the System Director Appliance, if applicable, in a shared-storage system to the same Avid NEXIS version.
For F-series Engines with a single (failed) Controller do the following:
1. Remove the failed Controller.
2. Insert the replacement Controller.
The system automatically updates the new Controller to the required version from the system drives and reboots. The system is ready to use.
For F-series Engines with redundant Controllers do the following:
1. Remove both Controllers.
2. Insert the replacement Controller.
The system automatically updates the new Controller to the required version from the system drives and reboots. The system is ready to use.
3. Reinsert the other (previously running) Controller.
4 Adding and Replacing Hardware For E-series Engines with a single (failed) Controller do the following:
1. Remove the failed Controller.
2. Insert the replacement Controller.
3. Connect a laptop to the 1Gbps Ethernet Management Port on the rear of the Engine.
4. Install Avid NEXIS version 2024.5.0 or higher.
The system reboots and then is ready to use.
For E-series Engines with redundant Controllers do the following:
1. Remove both Controllers.
2. Insert the replacement Controller.
3. Connect a laptop to the 1Gbps Ethernet Management Port on the rear of the Engine.
4. Install Avid NEXIS version 2024.5.0 or higher.
The system reboots and then is ready to use.
5. Reinsert the other (previously running) Controller.
Controllers cannot be swapped between F-Series and E-Series, or between PRO 20TB/40TB and PRO+ or SDA and SDA+.
Avid strongly recommends performing the above procedure on all “shelf spare” Controllers after upgrading to 2024.5.0 or higher to allow future Controller replacements to be performed while the system remains running.
Dual Controller Connection Diagrams Refer to the following figures when connecting two Controllers in an Engine or the System Director Appliance.
> **Note:** NotallmodelssupportredundantControllers;see"ControllersandI/OModules"onpage 13formore
information.
Dual Controller Connection in Avid NEXIS | F2, Avid NEXIS | SDA+ Dual Controller Connection in Avid NEXIS | F2 SSD 4 Adding and Replacing Hardware Dual Controller Connection in Avid NEXIS | F5, Avid NEXIS | F5 NL Dual Controller Connection in Avid NEXIS | E2, Avid NEXIS | E2 All-Mirror, Avid NEXIS | SDA Dual Controller Connection in Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror 4 Adding and Replacing Hardware Dual Controller Connection in Avid NEXIS | E5, Avid NEXIS | E5 All-Mirror, Avid NEXIS | E5 NL About Controller Failures When a Controller fails, the fault LED will be lit red. If the Engine has two Controllers, services that were running on the failed Controller will move to the operational Controller. This process can take three to five (3-5) minutes on 2U and 4U Engines and the SDA, and 10 or more minutes on 5U Engines.
In an Engine with a single Controller, clients cannot access Workspaces until the Controller is replaced.
In any Engine or System Director Appliance with a single Controller, insert the replacement Controller in the same slot as the original factory-installed Controller. See "Controllers and I/O Modules" on page 13 for the required location and orientation for a single-Controller system.
> **Note:** BothControllersinanEnginemustbethesametype,withthesamelabel.See"ControllersandI/O
Modules"onpage 13formoreinformation.Inparticular,makesurethatbothControllersinanEngine havethesameamountofmemory.InstallingControllerswithdifferentmemorycapacitiesinthesame Engineisnotsupported.
g Makesureyouhaveareplacementbeforeremovingafailedcomponent.WhenreplacingaController whilethesystemisrunning,insertthenewControllerwithintwominutesofremovingthedefective Controller.
The new Controller can be a spare you already have on hand or a Controller purchased specifically because of a failure. No matter which replacement Controller you use, as soon as it is installed in the Engine the system automatically configures it with the current default Agent and Management Console passwords (seenotebelow). Therefore, the manufacture date of the Controller (and its default password) does not affect the replacement process. For more information see "Controller (Agent) Password " on page 20.
For systems running (or upgraded to) Avid NEXIS version 2024.5.x, see "Version Incompatibility with Replacement Controllers and Avid NEXIS version 2024.5.0" on page 72.
Replacing a Controller To replace a Controller:
1. Make note of the locations of all cables (between the Controllers, between the Controller and an I/O
module in an expansion chassis, if applicable, and to the switch) and disconnect them from the failed Controller.
4 Adding and Replacing Hardware
2. Pinch the latch on the Controller and pull the handle toward you.
The Controller disengages from the connector on the midplane.
3. Pull the Controller out of the Engine.
4. Hold the replacement Controller in the same orientation as the one you removed.
5. Open the release latch lever all the way.
6. Slide the replacement Controller into its slot until it will go no further.
7. Close the lever until it clicks in place.
The Controller engages with the connector on the midplane, and syncs with the other Controller (if present) and automatically receives the software and all the other system information from the system drives. This process can take up to 20 minutes. The system is fully usable during this time.
In a single-Controller configuration, if the failed Controller was functioning as the System Director, the new Controller becomes the System Director.
8. Connect the cables to the replacement Controller (if necessary, refer to the notes you made before
removing the cables).
Replacing an I/O Module The Avid NEXIS | F2X expansion chassis contains I/O modules (instead of Controllers), which are replaceable if one fails.
If the failed I/O module is connected to an Avid NEXIS | F2 with a single Controller, you can
- disconnect the cables from the failed I/O module and connect them to the other I/O module to
maintain access to the Media Pack.
- If the Avid NEXIS | F2 has redundant Controllers, both of which are connected to an I/O module, the
Media Pack remains accessible with no further action.
To replace an I/O module:
1. Disconnect the SAS cables from the failed I/O module.
2. Pinch the latch on the I/O module and pull the handle toward you.
The I/O module disengages from the connector on the midplane.
3. Pull the I/O module out of the chassis.
4. Hold the replacement I/O module in the same orientation as the one you removed.
5. Open the release latch lever all the way.
6. Slide the replacement I/O module into its slot until it will go no further.
7. Close the lever until it clicks in place.
4 Adding and Replacing Hardware The I/O module engages with the connector on the midplane.
for a figure of the SAS cable connections between the Avid NEXIS | F2 and the Avid NEXIS | F2X).
Power Supply Failures When you encounter a problem with the power supply, check for:
Missing or damaged power cords
- Incorrect or ungrounded circuits
- Proper power is supplied to the Engine
> **Note:** WhentheEngineisturnedon,allLEDsarelitforashortperiodtoensurethattheyareworking.This
doesnotindicateafaultunlesstheLEDsremainlitafterafewseconds.
> **Note:** Ifapowersupply’sfirmwareisbeingprogrammedandthedownloadfails,thepowersupplyLEDswill
flash.
See "Power Supplies and Fans" on page 29 for more information.
Replacing a Power Supply (2U and 4U) The power supplies in the 2U and 4U chassis include cooling fans as well as supplying power to the system.
The power supplies are bi-directional; you can insert a power supply into either the left or right slot. When installed on the left side of the Engine, the plug is below the ON/OFF switch. When installed on the right side, the plug is above the ON/OFF switch.
All the PSUs or PCMs in a given Engine must be the same power rating. For example, in a 2U Engine or SDA+, both PSUs must be 764W.
To remove a power supply:
1. Open the strain relief and unplug the power cord.
2. Press the black release latch (see "Power Supplies and Fans" on page 29) towards the center of the
module.
3. Open the silver latch, which disengages the power supply module from the Engine.
To insert a power supply:
1. Position the power supply so that the release latch and handle are closest to the Controller.
2. Slide the power supply into its slot and close the handle until the latch clicks in place.
3. Reconnect the power cord and secure the strain relief.
Replacing a Power Supply (5U) In a 5U Engine the power supplies are separate from the fan modules. These systems are designed to continue working with only one of the two power supplies.
All the PSUs or PCMs in a given Engine must be the same power rating. For example, in a 2U Engine or SDA+, both PSUs must be 764W.
> **Note:** Makesureyouhaveareplacementbeforeremovingafailedcomponenttomaintainproperairflow.
WhentheEnginepowerislefton,insertthenewpowersupplywithintwominutesafterremovingthe defectivepowersupply.
4 Adding and Replacing Hardware To remove a power supply:
1. Identify the power supply to be removed. If the module has failed, the fan fault LED will be lit amber.
2. Push the red release latch to the right and hold it (callout 1 in the following figure), then pull the
module out by its handle (callout 2).
To insert a power supply:
1. Position the power supply so that the red release latch and handle are on the left-hand side.
2. Slide the power supply into its slot until the latch clicks in place. The Engine will automatically detect
the new unit.
Replacing a Fan Module (5U only) In a 5U Engine the fan modules are separate from the power supplies. These Engines are designed to continue working with at least two of the five fan modules.
> **Note:** Makesureyouhaveareplacementbeforeremovingafailedcomponenttomaintainproperairflow.
WhentheEnginepowerislefton,insertthenewfanmodulewithintwominutesafterremovingthe defectiveone.
To remove a fan module:
1. Identify the fan module to be removed. If the module has failed, the fan fault LED will be lit amber
(see "Rear Views" on page 23).
2. Push down and hold the red release latch (callout 1 in the following figure) and pull the module out by
4 Adding and Replacing Hardware its handle (callout 2).
To insert a fan module:
1. Position the fan module so that the red release latch and handle are on the right-hand side.
2. Slide the fan module into its slot until the latch clicks in place. The Engine will automatically detect
and use the new module.
Shutting Down the System Under normal working conditions the system can remain running all the time. All FRU components are hot- swappable (drives, controllers, power supplies and fans) so that if a component fails you can replace it while the system remains running.
However there might be cases where you have to cleanly shut down the entire Avid NEXIS system; for example, a site-wide power shutdown, equipment room move, or some other disruptive procedure.
In a multi-Engine system, with or without an SDA, you shut down the storage Engines first (one Controller at a time), then shut down the SDA or Engine running the embedded System Director last (also one Controller at a time).
To shut down the entire Avid NEXIS system:
1. Notify all clients to stop using and unmount all Workspaces.
If you are working in a MediaCentral Production Management or MediaCentral Cloud UX environment, you must stop the Media Indexer and put the CloudUX server in standby mode before shutting down the Avid NEXIS system.
2. In the navigation sidebar, click Storage, then Engines.
3. Identify the Engines used only for storage (on the Engines page, the Type field displays Storage
Engine, not SDA or Storage with SD). Shut these down first.
4. Click Controllers. Identify the Controller(s) in the Engine you want to shut down. (The Controller
names are based on the Engine name, with a suffix of -left, -right, -top, or -bottom, designating their relative slot positions.)
5. Select a Controller and click Tools.
6. In the CONTROLLER SHUTDOWN field, type the Agent administrator password (see the Avid NEXIS
Setup and Maintenance Guide for more information) and click Shutdown.
7. In the dialog box, click OK.
8. If the Engine has a second Controller, shut it down.
4 Adding and Replacing Hardware
9. Shut down the other storage-only Engines, until only the SDA (if applicable) or the Engine running the
System Director remains.
10. On the SDA or Engine running the System Director, if two controllers are present, identify the one
running the System Director service, as follows:
a. In the navigation sidebar, click Storage, then Controllers.
b. Click Advanced.
c. Click the Services tab.
d. Look for services named adminServer and indexServer, as shown in the following figure (these two services are always paired on a Controller):
11. Select the other Controller (the one notrunning these services) and shut it down.
12. Select the last Controller (running the adminServer and indexServer services) and shut it down.
The entire Avid NEXIS system is now shut down. You lose access to the Management Console for the system.
13. Turn off the switches on all the power supplies in all Engines and the SDA, and unplug the power
cables from the power source.
Restarting the System If you have completely shut down an on-premises Avid NEXIS system, follow this procedure to start it again.
To restart an Avid NEXIS system:
- If the power supplies are not plugged in to AC power, connect them and turn on the power supply
switches.
- If the power supplies are connected to AC power, turn off the power supply switches for a few
seconds, then turn them on again.
The system begins its power-on self test (POST) process. After several minutes the fans start running at full speed. No matter which Engine starts first, eventually all the Engines and the SDA (if applicable) or Engine running the System Director communicate with each other and reestablish the shared-storage system. In a few more minutes the system becomes available on the network, and you can open a browser (or a new tab) and log into the Management Console.
4 Adding and Replacing Hardware Removing or Replacing a Chassis In rare cases, the chassis itself might have an internal fault that cannot be fixed by replacing other components.
You can replace the entire chassis by removing all the replaceable components — Media Packs, system drives, Controllers or I/O modules, and power supplies and fans (if applicable) — and installing them in a new chassis.
Make sure to move the two system drives (SSDs) along with the Media Packs to the new chassis. (The Avid NEXIS | F2X expansion chassis does not have system drives.) The Avid license (modular or capacity) is associated with the chassis ID. If you replace an Avid NEXIS | PRO+ or F-Series chassis that has a modular license, or the Engine running the System Director service for the shared-storage system, contact Avid for an updated license. (The Avid NEXIS | F2X expansion chassis does not have its own modular license and does not need a new one.) To remove a chassis:
1. Open the Management Console and click System, then System Setup.
2. Write down the host name, IP address, and other important network details to reuse with the new
chassis.
3. Shut down the Controllers in the failed Engine as follows:
a. In the navigation sidebar, click Storage, then Controllers.
b. Double-click a Controller name to open the Advanced panel, then click the blue Tools tab.
c. In the Controller Shutdown field, enter the administrator password, then click Shutdown.
d. In the confirmation message, click Continue.
In a single-Engine configuration, shutting down the Controllers also shuts down the entire system and your login session will end until the system reboots.
4. Make note of the locations of all connected cables and disconnect them from the failed chassis.
5. Turn off the switches on all the power supply modules.
6. Disconnect all network and power cables from the failed chassis.
7. Carefully remove all the media drives, system drives, Controllers, and the power supplies and fans,
as applicable, and put them in a safe place.
8. Remove the failed chassis from the rack.
To set up a new chassis:
1. Install the new empty chassis into the rack.
2. Insert all the media drives and system drives from the old chassis into the new one.
3. Insert the Controllers and power supplies from the old chassis into the new one (see "Avid NEXIS
System Overview" on page 11 for the proper orientation of Controllers in the chassis).
> **Note:** YoudonotneedtochangetheControllerIP addressifusingitinthesameshared-storage
system.
4. Connect all Ethernet, SAS, and power cables as applicable to the new chassis.
5. Turn on the new chassis.
6. Allow two minutes for the new chassis to initialize.
4 Adding and Replacing Hardware
> **Note:** IfanyoftheLEDsindicateanerror,callAvidCustomerCare.
7. Open the Management Console and apply the new license, if applicable. See "Activating a Modular
License " on page 54 for more information. (To update a capacity license, see the Avid NEXIS Administration Guide.)
8. Verify that the Media Packs are online with a green icon and no status messages on the Media Packs
page.
> **Note:** IfanyStatuserrorsarelisted,callAvidCustomerCare.
9. Verify that media is available to the clients.
5 Specifications and Notices 5 Specifications and Notices This chapter provides information on the physical, electrical, and serial cable specifications for the Avid NEXIS Engines and the optional external System Director Appliance. Avid recommends the use of an Uninterruptible Power Supply (UPS) and supported network cabling. See "Uninterruptible Power Supply (UPS)" below.
Electrical Requirements Consider installing a separately derived power system for your Avid shared storage hardware. This ensures that you can control the hardware grounding, with all grounds brought to a single point, and that uncontrolled equipment, such as coffee makers or floor polishers, cannot be plugged into the same power source as the Avid shared storage hardware.
If you run more than one power line because you have more than one UPS, make sure the power lines come from the same distribution panel.
As you choose the location for your Avid shared storage hardware, keep these electrical requirements in mind:
- Make sure there is adequate, dedicated power for the UPSes that are part of your Avid shared
storage workgroup.
Make sure your location is away from major electrical equipment such as motors, air conditioners, or
- elevators.
Make sure the location is not subject to electrostatic buildup.
- Plug only your Avid hardware into the power strips. Do not plug in coffee makers, radios, lights, or
- other non-Avid devices.
Uninterruptible Power Supply (UPS) UPS systems must specify a transfer time of <10ms in order to prevent power loss to the power supply modules. The power supply modules for an Engine should not be connected to the same UPS.
See "Power Supplies and Fans" on page 29 for more information, and provide a UPS that meets the power requirements of each individual power supply module in the Engines in your environment. Make sure there is adequate, dedicated power for each UPS.
> **Note:** AvidrecommendstheuseofUPSs,appropriatelysizedforyourAvidsharedstorageworkgroup,or
conditionedpowerinyourcomputerroomenvironment.Thisprovidesprotectionagainstsuddenpower surgesorlossesthatcouldcauseyoutolosefilesorexperiencedatacorruption.
Serial Cable Information When resetting a lost or forgotten password on an Avid NEXIS Controller, a serial connection is required between the client machine and the Controller. This cable is not supplied by Avid. You can either purchase or create one, ensuring it follows the pinout specifications below:
Cable type: 3.5mm to DB9 (Female) Serial Cable DB-9 Pin Function Color 3.5mm Jack 2 Rx Green Ring 3 Tx Red Tip 5 GND Black Sleeve 5 Specifications and Notices Configure the serial port as follows:
Baud Rate (Speed): 115200 Parity: none Flow Control: none
> **Note:** ContactAvidCustomerSupportforassistanceinresettingtheControllerpassword.
Physical Specifications Model Width (with Depth Height Weight ear mounts) Avid NEXIS | E2 483 mm (19 630 mm 89 mm (3.5 Without drives: 16.2 Avid NEXIS | E2 All-Mirror in) (24.8 in) in) kg (36 lb) Avid NEXIS | E2 SSD With drives: 26 kg Avid NEXIS | F2 (57.2 lb) Avid NEXIS | F2 SSD Without drives: 17 kg (38 lb) With drives: 30 kg (66 lb) Avid NEXIS | PRO 40TB (Shipped with drives Avid NEXIS | PRO+ installed): 26 kg (57.2 lb) Avid NEXIS | F2X Without drives: 12.6 kg (28 lb) With drives: 26 kg (57.2 lb) Avid NEXIS | SDA (Shipped with two Avid NEXIS | SDA+ system drives installed): 16.2 kg (36 lb) Avid NEXIS | E4 178 mm (7 Without drives: 32 kg Avid NEXIS | E4 All-Mirror in) (70 lb) With drives: 46 kg (101.4 lb) Avid NEXIS | E5 930 mm 22 2mm (8.7 Without drives: 75.5 Avid NEXIS | E5 All-Mirror (36.8 in) in) kg (166 lb) Avid NEXIS | E5 NL With drives: 128 kg Avid NEXIS | F5 (282 lb) Avid NEXIS | F5 NL 5 Specifications and Notices
> **Note:** OneMediaPack(10drives)weighsamaximumof7.4kg(16.3lb)regardlessofthedrivecarrierortype
(HDDorSSD).
Electrical and Power All the PSUs or PCMs in a given Engine must be the same power rating. For example, in a 2U Engine or SDA+, both PSUs must be 764W.
Model Power Voltage Frequency Power Conversion Efficiency Supplies (Consumption) Avid NEXIS | PRO+ AC (>30% load) Avid NEXIS | F2 SSD Max startup power: 764 W Avid NEXIS | E2 BTU/Hr at startup: 2607 Avid NEXIS | E2 All-Mirror Avg. Load power: 200 W Avid NEXIS | E2 SSD (estimated) Avid NEXIS | SDA (estimated) AC (>30% load) Avid NEXIS | F5 Dual 2200 180V-264V 60/50 Hz 94% @ 240 V (50% load) Avid NEXIS | F5 NL W AC Max startup power: 2200 W Avid NEXIS | E5 BTU/Hr at startup: 7507 Avid NEXIS | E5 All-Mirror Avid NEXIS | E5 NL Avid NEXIS | E4 All-Mirror AC (>30% load) Max startup power: 1160 W BTU/Hr at startup: 3958 Avg. Load power: 512 W BTU/Hr at avg. load: 1747 Altitude and Temperature Model Operating/Non- Operating/Non- Operating/Non- operating Temperature operating Humidity operating Altitude Avid NEXIS | F2 ASHRAE A2, 5°C to 35°C –12°C DP minimum, Avid NEXIS | PRO+ (41°F to 95°F), derate 8% RH to 85% RH, Avid NEXIS | SDA+ 1°C/300m above 900m, max DP 21°C / 5% to Avid NEXIS | F2X 20°C/hr max rate of 100% noncondensing change / –40°C to 70°C (–40°F to 158°F) Avid NEXIS | F2 SSD RBOD: 5°C to 35°C 20% to 80% (41°F to 95°F), EBOD: noncondensing / 5°C to 40°C (41°F to 5% to 100% 104°F) / –40°C to +70°C noncondensing (–40°F to +158°F) Avid NEXIS | F5 ASHRAE A2, 5°C to 35°C –12°C DP and 10% RH –100m to 3000m (–330 Avid NEXIS | F5 NL (41°F to 95°F), derate to 21°C DP and 80% ft to 10,000 ft) / –100m 1°C/300m above 900m, RH, Max DP 21°C / 5% to 12,192m (–330 ft to 5 Specifications and Notices Model Operating/Non- Operating/Non- Operating/Non- operating Temperature operating Humidity operating Altitude 20°C/hr max rate of to 100% noncondensing 40,000 ft) change / –40°C to +70°C (–40°F to +158°F) Avid NEXIS | E2 5° to 40° C 8% to 80% 0 to 3000 m (0 to Avid NEXIS | E2 All-Mirror noncondensing 10,000 ft) / -300 to (41° to 104° F) Avid NEXIS | E2 SSD 12,192 m (-1000 to Avid NEXIS | PRO 40TB 40,000 ft) Avid NEXIS | SDA Avid NEXIS | E4 5° to 40° C 20% to 80% 0 to 3000 m (0 to Avid NEXIS | E4 All-Mirror noncondensing 10,000 ft) / -300 to (41° to 104° F) 12,192 m (-1000 to 40,000 ft) Avid NEXIS | E5 5º to 35ºC 10% to 80% -100 to 3000m (-330 to Avid NEXIS | E5 All-Mirror noncondensing 10,000 ft) / -100 to (41° to 95° F) Avid NEXIS | E5 NL 12,192m (-330 to 40,000 ft) Shock and Vibration Model Operating/Non-operating Shock Operating/Non-operating Vibration Avid NEXIS | F2 5 Gs, 10ms, half sine pulses / 15 Gs, 0.21 Gs rms, 5Hz to 500Hz random / Avid NEXIS | F2X 10ms, half sine pulses 1.04 Gs rms, 2Hz to 200Hz random Avid NEXIS | PRO+ Avid NEXIS | SDA+ Avid NEXIS | F2 SSD 5.0 Gs, 10ms, half sine pulses (Y- 0.21 Gs rms 5Hz to 500Hz random / axis) / 30.0 Gs, 10ms, half sine 1.04 Gs rms 2Hz to 200Hz random pulses Avid NEXIS | F5 5 Gs 10ms half sine (X, Y, and Z 0.21 Gs rms (5Hz to 500Hz) / 1.04 Gs Avid NEXIS | F5 NL axes), 20 Gs 10ms half sine (X and Y rms (2Hz to 200Hz) axes) Avid NEXIS | E2 5g 10ms ½ Sine/20g 10ms ½ Sine Random 0.21g RMS 5- Avid NEXIS | E2 All-Mirror 500Hz/Random 1.04g RMS 2-200Hz Avid NEXIS | E2 SSD Relocation Vibration: Swept Sine Avid NEXIS | PRO 40TB 0.3g 2-200Hz Avid NEXIS | SDA Avid NEXIS | E4 5g 10ms ½ Sine/30g 10ms ½ Sine Random 0.21g RMS 5- Avid NEXIS | E4 All-Mirror 500Hz/Random 1.04g RMS 2-200Hz Relocation Vibration: Swept Sine 0.3g 2-200Hz Avid NEXIS | E5 5g 10ms ½ Sine/30g 10ms ½ Sine Random 0.21g RMS 5- Avid NEXIS | E5 All-Mirror 500Hz/Random 1.04g RMS 2-200Hz Avid NEXIS | E5 NL Relocation Vibration: Swept Sine 0.3g 2-200Hz 5 Specifications and Notices Acoustics Model Acoustics Avid NEXIS | E2, Avid NEXIS | E2 All-Mirror Sound power operating < 6.5 Bels LWAd @ 23°C Avid NEXIS | E2 SSD Avid NEXIS | PRO 40TB Avid NEXIS | SDA Avid NEXIS | E4, Avid NEXIS | E4 All-Mirror Sound power operating < 7.2Bels LWAd @ 23°C Avid NEXIS | E5, Avid NEXIS | E5 All-Mirror Sound power operating < 8.0Bels LWAd @ 23°C Avid NEXIS | E5 NL Approvals Avid NEXIS | F2, Avid NEXIS | F2X, Avid NEXIS | F5, Avid NEXIS | F5 NL Category Standards/Approvals EMC (Emissions) FCC CFR 47 Part 15 Subpart B Class A (United States); ICES/NMB-003 Class A (Canada); EN 55032 Class A, EN 55024; EN 61000-3-2, EN 61000-3-3 (Europe); AS/NZS CISPR 3 Class A (Australia/New Zealand); CI Class A (Japan); KS 32; Class A/KS 35 (S. Korea); CNS 13438 Class A (Taiwan) Safety Australia/New Zealand (RCM), Canada (cUL/ICES/NMB-003 Class A), China (CCC – PSU only), European Union (CE) Japan (VCCI), South Korea (KC), Taiwan (BSMI), United States (FCC/UL), The Eurasian Economic Union (EAC), India (BIS), UL62368-1 ED3 (United States); CAN/CSAC22.2 No.60950-1-07/No.62368-1-14, 2nd Ed (Canada); EN62368-1 (European Union); IEC 62368-1 Ed3 (International); CQC (China PRC – CQC Power Supplies); BIS (India – BIS Power Supplies) Ecodesign Commission Regulation (EU) 2019/424 (Directive 2009/125/EC) Harmonics EN 61000-3-2 (EU) Flicker and EN 55024 (EU); KS 24/KS 35 (S. Korea); CISPR 24/CISPR35 Immunity Environmental The RoHS Directive (2015/65/EU), The WEEE Directive (2012/19/EU), The REACH Directive (EC/1907/2006), The Batteries Directive (2006/66/EC) Avid NEXIS | F2 SSD Standards/Approvals EMC (Emissions) FCC CFR 47 Part 15 Subpart B Class A (United States); ICES/NMB-003 Class A (Canada); EN 55032 Class A, EN 55024, EN 61000-3-2, EN 61000-3-3 (Europe); Class A/KN 35 (S. Korea); CNS 13438 Class A (Taiwan) Safety UL 60950-1 (United States); CAN/CSA-C22.2 No.60950-1-07 (Canada); EN 60950-1 (European Union); IEC 60950-1 (International); CCC (China PRC – CCC Power Supplies); BIS (India – BIS Power Supplies) Harmonics EN 61000-3-2 (EU) Flicker EN 61000-3-3 (EU) 5 Specifications and Notices Standards/Approvals Immunity EN 55024 (EU); KN 24/KN 35 (S. Korea) Environmental Standards The RoHS Directive (2011/65/EU); The WEEE Directive (2012/19/EU); The REACH Directive (EC/1907/2006); The Batteries Directive (2006/66/EC) Standard Australia/New Zealand (RCM); Canada (cUL/ICES/NMB-003 Class A); China (CCC Marks/Approvals – PSU only); European Union (CE); Japan (VCCI); South Korea (KC); Taiwan (BSMI); United States (FCC/UL) Avid NEXIS E-Series and Avid NEXIS | PRO 40TB Standards/Approvals EMC (Emissions) FCC pt15B Class A; EN55022 Class A; CISPR 22 Class A; EN 55024; CISPR24; EN61000-3-2/3; CNS13438 Safety EN/IEC/UL 60950-1; CNS14336 CB report: CE; UL; cUL; FCC; BSMI; VCCI; CCC (PSU only) 6 Safety and Regulatory Information 6 Safety and Regulatory Information This section contains safety and regulatory information for Avid NEXIS hardware.
Symbols The lightning flash with arrowhead symbol, within an equilateral triangle, is intended to alert the user to the presence of uninsulated “dangerous voltage” within the product’s enclosure that may be of sufficient magnitude to constitute a risk of electric shock to persons.
The exclamation point within an equilateral triangle is intended to alert the user to the presence of important operating and maintenance (servicing) instructions in the literature accompanying the product.
The garbage bin with a cross is intended to alert the user that the product may not be disposed of by regular garbage, but as electronic equipment.
Product Safety Warning Important Safety Instructions
1. Read these instructions.
2. Keep these instructions.
3. Heed all warnings.
4. Follow all instructions.
5. Do not use this equipment near water.
6. Clean only with dry cloth.
7. This equipment is intended only for installation in a RESTRICTED ACCESS LOCATION.
8. Do not block any ventilation openings. Install in accordance with the manufacturer's instructions.
9. Do not install near any heat sources such as radiators, heat registers, stoves, or other equipment
(including amplifiers) that produce heat.
10. Protect power cords from being walked on or pinched particularly at plugs, convenience receptacles,
and the point where they exit from the equipment.
11. Only use attachments/accessories specified by the manufacturer.
12. For products that are not rack-mountable: Use only with a cart, stand, tripod, bracket, or table
specified by the manufacturer, or sold with the equipment. When a cart is used, use caution when moving the cart/equipment combination to avoid injury from tip-over.
13. Unplug this equipment during lightning storms or when unused for long periods of time.
6 Safety and Regulatory Information
14. Refer all servicing to qualified service personnel. Servicing is re- quired when the equipment has been
damaged in any way, such as power-supply cord or plug is damaged, liquid has been spilled or objects have fallen into the equipment, the equipment has been exposed to rain or moisture, does not operate normally, or has been dropped.
15. For products that are a Mains powered device:
The equipment shall not be exposed to dripping or splashing and no objects filled with liquids (such as vases) shall be placed on the equipment.
WARNING! To reduce the risk of fire or electric shock, do not expose this equipment to rain or moisture.
ATTENTION! Pour réduire les risques d'incendie ou d'électrocution, n'exposez pas cet équipement à la pluie ou à l'humidité.
Do not defeat the safety purpose of the polarized or grounding-type plug. A polarized plug has two blades with one wider than the other. A grounding type plug has two blades and a third grounding prong. The wide blade or the third prong are provided for your safety. If the provided plug does not fit into your outlet, consult an electrician for replacement of the obsolete outlet.
16. For products containing a lithium battery:
WARNING! Danger of explosion if battery is incorrectly replaced. Replace only with the same or equivalent type.
ATTENTION! Risque d'explosion si la batterie n'est pas remplacée correctement. Remplacez uniquement par un type identique ou équivalent. Jetez les piles usagées conformément aux instructions.
17. For products with a power switch: It should remain accessible after installation.
18. The equipment shall be used at a maximum ambient temperature of 40' C.
19. This unit is provided with a power supply cord set suitable for 120V AC input only (for U.S.A. and
Canada). For other than U.S.A. and Canada, a qualified person must provide for use with this unit, an appropriate, approved power supply cord set which is in compliance with the end use country requirements and has a minimum cross-sectional area of 1.0mm2.
20. For products with more than one power cord:
This unit has more than one power supply cord. Disconnect two power supply cords before servicing to avoid electrical shock.
ATTENTION: Cet appareil comporte plus d'un cordon d'alimentation. Afin de prévenir les chocs électriques, débrancher les deux cordons d'alimentation avant de faire le dépannage.
21. For products with an operator-accessible fuse:
For continued protection against risk of fire, replace only with same type and rating of fuse.
ATTENTION: Pour ne pas compromettre la protection contre les risques d'incendie, remplacer par un fusible de même type et de même caractéristiques nominales.
Rack-Mount Safety Instructions
1. Elevated Operating Ambient- If installed in a closed or multi-unit rack assembly, the operating
ambient temperature of the rack environment might be greater than room ambient. Therefore, consider installing the equipment in an environment compatible with the maximum ambient temperature (Tma) specified by the manufacturer.
6 Safety and Regulatory Information
2. Reduced Air Flow- Installation of the equipment in a rack should be such that the amount of air flow
required for safe operation of the equipment is not compromised. Make allowances for cooling air to be available to the front panel surface and no re- strictions at the rear.
3. Mechanical Loading- Mounting of the equipment in the rack should be such that a hazardous
condition is not achieved due to uneven mechanical loading.
4. Circuit Overloading- Consideration should be given to the connection of the equipment to the supply
circuit and the effect that overloading of the circuits might have on over-current protection and supply wiring. Appropriate consideration of equipment nameplate ratings should be used when addressing this concern.
5. Reliable Earthing- Reliable Earthing of rack-mounted equipment should be maintained. Particular
attention should be given to supply connections other than direct connections to the branch circuit (for example, use of power strips).
LED Safety Notices Avid hardware might contain LED or Laser devices for communication use. These devices are compliant with the requirements for Class 1 LED and Laser Products and are safe in the intended use. In normal operation the output of these laser devices does not exceed the exposure limit of the eye and cannot cause harm.
Environmental Compliance Proposition 65 Warning This product can expose you to chemicals including Pb and Pb compounds, which is known to the State of California to cause cancer and birth defects or other reproductive harm. For more information go to www.P65Warnings.ca.gov.
Perchlorate Notice This product may contain a lithium coin battery. The State of California requires the following disclosure statement:
“Perchlorate Material- special handling may apply, see www.dtsc.ca.gov/hazardouswaste/perchlorate.” Recycling Notice Disposal of Waste Equipment by Users in the European Union This symbol on the product or its packaging indicates that this product must not be disposed of with other waste. Instead, it is your responsibility to dispose of your waste equipment by handing it over to a designated collection point for the recycling of waste electrical and electronic equipment. The separate collection and recycling of your waste equipment at the time of disposal will help conserve natural resources and ensure that it is recycled in a manner that protects human health and the environment. For more information about where you can drop off your waste equipment for recycling, please contact your local city recycling office or the dealer from whom you purchased the product.
EMC (Electromagnetic Compliance) Avid declares that this product complies with the following standards regulating emissions and immunity:
6 Safety and Regulatory Information FCC Part 15 Class A
- BS/EN, EN 55032 Class A
- AS/NZS CISPR 32 Class A
- CISPR32 Class A
- BS/EN, EN 61000-3-2
- BS/EN, EN 61000-3-3
- BS/EN, EN 55035
- FCC Notice: Class A Equipment
This equipment has been tested and found to comply with the limits for a Class A digital device, pursuant to Part 15 of the FCC rules. These limits are designed to provide reasonable protection against harmful interference when the equipment is operated in a commercial environment. This equipment generates, uses, and can radiate radio frequency energy and, if not installed and used in accordance with the instructions, may cause harmful interference to radio communications. Operation of this equipment in a residential area is likely to cause harmful interference, in which case the user will be required to correct the interference at personal expense.
Cables Connections to Avid hardware must be made with shielded cables with metallic RFI/EMI connector hoods in order to maintain compliance with FCC Rules and Regulations.
Any modifications to the unit, unless expressly approved by Avid, could void the user's authority to operate the equipment.
Australian Compliance Safety Compliance This equipment has been tested to comply with USA, Canadian, EU and International safety certification standards: UL/CSA 62368-1:2014, BS EN 62368-1:2014+A11:2017 and IEC/EN 62368-1:2014 (2nd Edition).
United Kingdom Compliance (EMC, Safety, and RoHS) Avid Tech. EU LTD 20 Station Road Gerrards Cross England SL9 8EL CE Compliance (EMC, Safety, and RoHS) Avid is authorized to apply the CE (Conformite Europenne) mark on this compliant equipment thereby declaring conformity to EMC Directive 2014/30/EU, Low Voltage Directive 2014/35/EU and RoHS Recast Directive 2011/65/EU.
7 Appendix — Setting up a Client VPN for Avid NEXIS | Remote 7 Appendix — Setting up a Client VPN for Avid NEXIS | Remote Avid NEXIS | Remote requires a client VPN to securely access your cloud resources from any location.
OpenVPN is currently the only client VPN solution that has been tested and supported for use with Avid NEXIS | Remote. This section describes the steps for setting up a client VPN on AWS using OpenVPN.
> **Note:** OpenVPNisnotanAvidproductbuthasbeentestedandqualifiedbyAvidEngineering.Settingsmay
varydependingonyourspecificinfrastructureandconfiguration.
Setting up OpenVPN on AWS includes the following steps:
1. "Creating an OpenVPN Server" below
Creating an OpenVPN Server Creating an OpenVPN server on AWS involves deploying the OpenVPN Access Server from the AWS Marketplace.
To create an OpenVPN server on AWS:
1. Open a browser window and log into your AWS Management Console.
2. On the top of the AWS Services page, select a region from the dropdown (i.e. us-east-1 N. Virginia).
3. Launch an EC2 instance.
Do one of the following:
- Search for EC2 in the search bar and click Launch instance.
- Go to https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-
1#LaunchInstances
4. In the Name and tags section, enter a name for the instance.
5. In the Application and OS Images (Amazon Machine Image) section, search OpenVPN in the search
field.
6. Go to the AWS Marketplace AMIs tab. Select OpenVPN Access Server ('n' Connected Devices) from
the search results. Choose one from the list based on the number of connections you need.
Example:
7 Appendix — Setting up a Client VPN for Avid NEXIS | Remote
7. Click Subscribe now.
After successful subscription, you will be redirected back to the Launch an instance page. The OpenVPN subscription appears in the Summary section.
8. In the Key pair (login) section, select a Key pair name from the dropdown.
Select from any existing key pair set by your organization or create a new one.
Example:
9. In the Network Settings, click Edit and set the following configurations.
a. Choose the same VPC as to where your Avid NEXIS on AWS is located b. Choose or create a public subnet c. Enable auto-assign public IP d. Create or select security group 7 Appendix — Setting up a Client VPN for Avid NEXIS | Remote
> **Note:** TheselectedsettingswerepreconfiguredbyAvidadministrators.Ensurethatthesecuritygroup
youchooseincludesyourIPaddressinitsrules.Youcancheckandeditthislaterafterlaunching theinstance.See"AddingRulestoSecurityGroup"below
10. Click Launch instance.
11. Click the instance to see the Instance summary.
Get the public IP address. This public IP address is used to configure and access the OpenVPN admin web interface.
Adding Rules to Security Group To access OpenVPN on the web, ensure that your IP address is included in the Security Group. If it is not added yet, edit the inbound rules. If it is already added, proceed to "Configuring OpenVPN" on the next page"Configuring OpenVPN" on the next page To edit inbound rules:
7 Appendix — Setting up a Client VPN for Avid NEXIS | Remote
1. In the Summary Instance, go to the Security tab and click the security group.
2. Click Edit inbound rules.
3. Click Add rule.
4. Add SSH protocol.
Choose SSH from the Protocol Type dropdown and add your IP address.
5. Add HTTPS protocol.
Choose HTTPS from the Protocol Type dropdown and add your IP address.
6. Add UDP 5003 for the Avid NEXIS Client listening port.
Choose Custom UDP from the protocol type dropdown, enter 5003 in the Port Range field, and add your IP address.
7. Add UDP 1194 for OpenVPN.
Choose Custom UDP from the protocol type dropdown, enter 1194 in the Port Range field, and add your IP address.
8. Click Save Rules.
Configuring OpenVPN To configure the OpenVPN, you need the following:
a. Key Pair .pem file.
Check and request this from your administrator.
b. Public IP address of the OpenVPN instance.
You can find this in the Instance summary.
To configure via SSH:
1. Connect to your EC2 instance via SSH using Command Prompt or any command line program.
ssh -i [drag and drop the Key Pair .pem file] openvpnas@[Public IP address]
2. Type yes to continue connecting.
3. Type yes to Agree.
7 Appendix — Setting up a Client VPN for Avid NEXIS | Remote
4. Select the default values for the next configurations. Press ENTER for [default].
  - Will this be the primary Access Server node? [yes]
  - Please specify the network interface and IP address to be used by the Admin Web UI: [1]
  - What public/private type/algorithms do you want to use for the OpenVPN CA? [secp384r1]
  - What public/private type/algorithms do you want to use for the self-signed web certificate?
[secp384r1]
  - Please specify the port number for the Admin Web UI. [943]
  - Please specify the TCP port number for the OpenVPN Daemon [443]
  - Should client traffic be routed by default through the VPN? [no]
  - Should client DNS traffic be routed by default through the VPN? [no]
  - Should private subnets be accessible to clients by default? [yes]
  - Do you wish to login to the Admin UI as "openvpn"? [yes]
5. Type your preferred password.
> **Note:** Thepasswordmustbeatleast8charctersandincludeamixofuppercaseletters,lowercase
letters,numbers,andsymbols.
6. For Activation key, leave it blank. Press Enter.
7. Wait until the initial configuration completes.
Connecting to OpenVPN Connecting to OpenVPN includes downloading and installing the OpenVPN application, and importing your profile.
To connect to OpenVPN:
1. Open a web browser.
2. Enter the OpenVPN public IP address in the URL.
g YoucanfindthePublicIPaddressintheInstancesummary.
3. In the User Login, enter the following:
Username: openvpn Password: The password you specified during the setup
4. Download and install the OpenVPN Connect app for your device. Select the appropriate operating
system.
7 Appendix — Setting up a Client VPN for Avid NEXIS | Remote
5. Click Go to Admin Panel.
Enter the same username and password:
  - Username: openvpn
  - Password: The password you specified during the setup
6. Go to Configuration> Network Settings.
a. Ensure that the VPN Server name is the Public IP address.
b. In the Multi-Daemon Mode section, enter 1194 in the UDP port number field.
c. Keep the remaining settings at their default values then click Save Settings.
d. Click Update Running Server
7. Go to Configuration> VPN Setting.
a. In the Routing section, add the [IP address/nn] to the private subnet.
> **Note:** 100.0.0.0/24isprovidedasanexampleofaprivatesubnet.Yourconfigurationmayusea
differentsubnetdependingonyourenvironment.Theprivatesubnetislistedunderthe VPCIDintheInstancesummary.
b. Keep all the default settings then click Save Settings.
c. Click Update Running Server.
d. You will be logged out from the Admin Panel.
8. (Optional) When using OpenVPN, Data Channel Offload (DCO) may be disabled by default, which
may result in lower performance. For better performance, enable DCO on both the OpenVPN server and all clients. For instructions, see the OpenVPN documentation at https://openvpn.net/as- 7 Appendix — Setting up a Client VPN for Avid NEXIS | Remote docs/tutorials/tutorial--turn-on-openvpn-dco.html##.
9. Log in again to the OpenVPN Access Server using the Public IP address.
a. Click Profile Management.
b. Click create.
c. Select the file location where you want to save the user profile.
10. Import the user profile in the OpenVPN Connect app. There are two ways:
- Open the downloaded profile. The OpenVPN Connect app launches. Click OK to import the
profile.
- Launch the OpenVPN Connect app. In the Import profile page, upload the profile that you
saved.
11. Click Connect.
12. Enter the password you specified during the setup.
13. Once the VPN is connected, ping the Avid NEXIS server.
If the ping is successful, the setup is complete.