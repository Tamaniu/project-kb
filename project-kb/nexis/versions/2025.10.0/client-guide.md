---
product: nexis
product-area: shared-storage
version: "2025.10.0"
release-date: 01/10/2025
doc-type: client-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid NEXIS® Client Manager Installation and User’s Guide Version 2025.10.0 Using This Guide Using This Guide NEXIS® The Avid software-defined storage system provides a high-performance distributed file system that uses high-capacity shared media storage for workgroups of connected devices. This guide describes how to manage your storage system.
Unless noted otherwise, the material in this document applies to the Windows®, macOS®, and Linux operating systems. The majority of screen shots in this document were captured on a Windows system, but the information applies to all operating systems. Where differences exist, information on the differences is provided.
The documentation describes the features and hardware of all models. Your system might not contain certain features and hardware that are covered in this guide.
Revision History Date Description of Changes April 2026 Added clarification on caching newly added files in pinned folders.
March 2026 Removed all CentOS-related procedures; Consolidated on-premises and cloud client procedures into the Client Guide.
November 2025 Added a note to the "Adding and Removing Remote Hosts (System Directors)" on page 32, recommending not to use Virtual IP addresses in the Remote Hosts list.
October 2025 Added "Using Avid NEXIS | Remote " on page 44 and support for Ubuntu 24.04.
Updated the "About the Client Type Settings" on page 30 to include support for DNxHR SQ on High resolution client types.
May 2025 Updated the "Uninstalling a Previous Client Version" on page 12 and the "Installing Client March 2025 Added a troubleshooting procedure for Linux clients that cannot mount a NEXIS workspace.
November 2024 Added the steps for installing the Avid NEXIS client software on Rocky Linux and the steps for booting into Recovery Mode on Apple Silicon Macs.
October 2024 Updated the installer names to include the word 'for' before the trademarked names of the operating systems.
September 2024 Added a note to use the System Name and not the IP address when mounting and umounting workspaces using Linux commands.
June 2024 Updated Client Type (Resolution) descriptions, added numerical values for Linux CLI use; updated Ubuntu command-line installation steps.
May 2024 Clarified Workspace mount behavior (by UNC path or drive letter); added “percent used” column in Workspaces panel February 2024 Added steps to install the Client Manager GUI for CentOS Using This Guide Symbols and Conventions Avid documentation uses the following symbols and conventions:
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
1 Installing the Network Adapter and Driver 1 Installing the Network Adapter and Driver This chapter does not apply to Cloud client systems. However, make sure your client VM meets the necessary configuration to support your workflow.
Before installing the Avid NEXIS Client software on a physical workstation, make sure you have the appropriate network adapter and driver installed. See the Avid NEXIS Network and Switch Guide and the Avid NEXIS ReadMe for more information, both of which are available on the Avid NEXIS Documentation KB page.
IMPORTANT: See the Avid Configuration Guidelines and Slot Configurations Knowledge Base article, and select the platform you have or are considering, to determine the correct network adapter slot locations for client systems qualified with Avid NEXIS. The Slot Configurations KB article also includes all the Avid NEXIS- specific information and settings for these platforms.
Supported Adapters and Drivers Avid supports several different network adapters for editing systems that connect to Avid NEXIS. Depending on the network adapter used in your system, use the default driver that came with the operating system.
Avid recommends using the vendor’s latest driver unless otherwise noted. Check your driver version in the Windows Control Panel.
Avid has qualified several switches that provide 10Gbps, 25Gbps, 40Gbps, and 50Gbps connections to Engines and the System Director Appliance.
> **Note:** ForthelatestsupportedEthernetnetworkadaptersanddriverversions,seetheAvidNEXISReadMe
andtheAvidNetworkandSwitchGuide,availableontheAvidNEXISDocumentationKnowledgeBase.
Installing or Updating a Driver on Windows Clients To install or update a driver on a Windows client:
1. Download the appropriate driver from the web to your client system.
2. Double-click the .exe file to expand the compressed file and run the installer.
3. Accept the default settings to install the driver.
> **Note:** Formanyadapters,thedefaulttransmitandreceivedescriptorsaresetto256;however,the
adaptertype.Formoreinformation,seetheAvidNEXISNetworkandSwitchGuide.
4. Continue with setting the IP address; see "Configuring the Network Interface" on page 34.
Using Dual Port Network Connections Dual Ethernet connections (supported for Mac and Windows) allow you to use a dual-attached client, on the same subnet as the Avid NEXIS, for redundancy and performance enhancements.
> **Note:** LinuxdoesnotsupportmultipleNICsonthesamesubnet.
Avid NEXIS uses Avid Adaptive Load Balancing (AALB) to optimize client performance when using dual NICs configured in the Client Manager. AALB is configured automatically when both ports are enabled. No additional actions are required.
1 Installing the Network Adapter and Driver When using a dual port configuration, make sure both ports are enabled in the Avid NEXIS Client Manager Network Interface Settings and the network properties (see and "Configuring the Network Interface" on page 34).
2 Installing the Client Software 2 Installing the Client Software This guide covers the steps for installing the Avid NEXIS Client software for both on-premises and cloud deployments.
To install Avid NEXIS client software on your machine you must have a user account with Administrator privileges.
You can download the Client software from the Management Console or the Avid NEXIS Installer kit. For physical computers, you can also copy the Client software to a USB flash drive to take to each client.
A client system name (hostname) must comply with RFC 952 standards, such as not including an underscore (_) character. For more information, see Naming Conventions in Active Directory for Computers, Domains, Sites, and OUs on the Microsoft Support Knowledge Base.
> **Note:** TheSystemDirectorrecognizesonlythefirst31charactersofaclientsystemname;ifmultipleclient
systemnameshavethesamefirst31characters,afterthefirstclientconnects,otherclientswillreceive anerrorwhentheytrytoconnect.Makesurethatallclientnamesareuniquewithinthefirst31 charactersoftheirhostnames.
> **Note:** StartingwithAvidNEXIS2024.10.0,theinstallernameshavebeenupdatedtoincludetheword'for'
beforethetrademarkednamesoftheoperatingsystems.
Uninstalling a Previous Client Version Uninstall any existing Avid NEXIS Client software from your machine before installing a new version.
g IfyouareworkingwithAvidMediaCentralCloudUX,seethesectionon“UpgradingtheAvidNEXIS Client”inthelatestAvidMediaCentral|CloudUXInstallationGuideforimportantdifferencesinthe installationprocess.
> **Note:** AvidrecommendscheckingyourClientPreferencesandmakinganoteofthem(ortakeascreen
captureofthedialogbox)incaseyouneedtoreapplythemafterinstallingthenewClientsoftware.
Preferencesmightnotbesavedandappliedautomatically.
To check existing preferences and uninstall an existing Client version:
1. In the current version of Client Manager, open the Preferences dialog box, and write down any
preferences you have selected (if other than the default) for future reference. Close the dialog box.
2. Open the Remote Hosts dialog box, and write down the names or IP addresses of any configured
remote hosts, then close the dialog box.
3. Open the Network Interface Settings dialog box, and write down which network interface is selected,
if more than one is listed, then close the dialog box.
4. Optionally, unmount any mounted Workspaces.
5. Close and quit the Client Manager.
6. Do one of the following, depending on your client operating system:
- Windows: Open the Windows Control Panel and go to Programs > Programs and Features, or
go to Settings > Apps > Apps & features. Select the Avid NEXIS Client and click Uninstall.
Reboot the computer to complete the uninstallation.
2 Installing the Client Software
- macOS: Run the uninstaller located in Applications/ Avid Uninstallers/ AvidNEXIS. The
uninstaller allows you to save your remote host and network interface settings. Even if you select this option, Avid recommends checking them after installing the new Client software and reapplying them as needed.
Reboot the computer to complete the uninstallation.
- Ubuntu and Rocky Linux: Open the Terminal application and type [sudo]
/usr/sbin/avid-nexis-uninstaller Installing Client Software on Windows If you already have a previous version of the Avid NEXIS Client software installed, uninstall it before installing the new version. See "Uninstalling a Previous Client Version" on the previous page.
Make sure to install the latest Windows critical updates before installing the Avid NEXIS Client.
> **Note:** OnWindowsclouddeployments,theAvidNEXISClientsoftwareisinstalledautomaticallyaspartof
thedeployment.
To install the Windows client software:
1. Log into your Windows client system as a user with Administrative privileges.
2. Copy the AvidNEXISClient_for_Win64_n.0.0-nnnnn.msi file to your Windows client system
from either:
- The \AvidNEXISClientInstallers folder in the software kit
- The Management Console, Installers page
3. Double-click the AvidNEXISClient_for_Win64_n.0.0-nnnnn.msi file.
4. Follow the on-screen instructions.
5. To complete the Client software installation on Windows, reboot the client.
6. Start the Client Manager and, if applicable, reapply any previous preferences and network interface
settings. You can also re-add any previously configured remote hosts.
7. Repeat this procedure on each Avid NEXIS Windows client.
g YoucanmanuallycopytheclientinstallertoaUSBflashdriveanduseittoinstalltheclient softwareonmultipleWindowsclients.
Installing Client Software on Mac If you already have a previous version of the Avid NEXIS Client software installed, uninstall it before installing the new version. See "Uninstalling a Previous Client Version" on the previous page.
System Extension Alerts When installing the Avid NEXIS Client on a macOS system, you may see a System Extension alert during the installation process. Click "OK" or open the Privacy and Security Settings to allow the extension to load. For more information, visit the Apple Support page at https://support.apple.com/en-ng/120363.
> **Note:** OnrecentversionsofmacOS,theSystemExtensionalertmaybedelayedornotappearatall,anda
manualapprovalisrequired.Ifyoudonotseethisalert,gotoSystemSettings>Privacy&Security.
ScrolldowntotheSecuritysectionandallowtheAvidNEXISextension.
2 Installing the Client Software Installing the Client Software on macOS On a Mac with Apple Silicon (M-series) processor, you need to change the security policy on the startup disk before installing the Avid NEXIS Client software.
> **Note:** ThestepsrelatedtoStartupSecurityareincludedforconvenienceandarenotguaranteedtobe
accurateatthetimeofthisrelease.Forthelatestdetails,alwaysconsulttheAppledocumentation.
To install the client software on macOS (for Intel-based Macs, skip to Step 6):
1. Reboot the Apple Silicon client system into Recovery Mode.
Follow the steps below:
a. Shut down your Mac.
b. Press and hold the power button until you see the “Loading startup options” screen.
c. Click Options and then click Continue.
d. If prompted, select a volume to recover, then click Next.
e. Select an administrator account and enter the password.
2. In the Utilities menu, select Startup Security Utility.
3. Select the system you want to use and click Security Policy.
4. Enable Reduced Security, and allow user management of kernel extensions.
5. Click OK and restart the computer.
6. On the Mac client, copy and save the file
from either:
2 Installing the Client Software
- The \AvidNEXISClientInstallers folder in the software kit
- The Management Console> Installers page
> **Note:** IfyouusetheSafaribrowsertoinstalltheAvidNEXISsoftwareonaMacclient,thediskimageis
mountedassoonasthedownloadiscomplete,andtheinstallerstartsautomatically.Other browserapplicationsdonotautomaticallymountthediskimage.
7. Double-click the AvidNEXISClient_for_MacOSX_n.0.0-nnnnn.dmg file.
8. Double-click the AvidNEXISClient.pkg file to run the installer.
9. Follow the on-screen instructions:
a. On the Welcome screen, click Continue.
b. On the Software License Agreement screen, click Continue.
c. In the License dialog box, read the license agreement, then click Agree.
d. Select the location where you want to install the Avid NEXIS Client and click Continue.
e. Click Install.
2 Installing the Client Software f. Enter your password then click Install Software.
g. In the System Extension popup window, click Open System Settings.
> **Note:** OnrecentversionsofmacOS,theSystemExtensionalertmaybedelayedornotappear
atall,andamanualapprovalisrequired.Ifyoudonotseethisalert,gotoSystem Settings>Privacy&Security.ScrolldowntotheSecuritysectionandallowtheAvidNEXIS extension.
2 Installing the Client Software h. Click the Allow button to proceed with the setup and installation.
i. Enter the computer password to modify the system settings.
j. A popup window prompts you to restart.
- For on-premises systems, click Restart.
- For cloud deployments, click Not Now and wait for the Restart button to appear on the
2 Installing the Client Software Privacy & Security page. Click the Restart button on the Privacy & Security page.
10. After the system reboots, you may see the System Extension alert again. If so, repeat the procedure
from step 9g.
Make sure no pending approvals remain; otherwise, the Client software might launch, but the driver might not be properly loaded.
Installing Client Software on Ubuntu Avid NEXIS includes an Ubuntu Linux client kit for command-line only use (no Client Manager GUI support).
g SeetheMediaCentral|CloudUXdocumentationforinformationonmigratingcurrentCentOSLinux clientstoUbuntuLinux.
To install the Ubuntu client kit:
1. Copy and save the Ubuntu client kit to the Ubuntu client computer.
- For Ubuntu 22.04
- For Ubuntu 24.04
2. Open the Terminal application: Application, System Tools, Terminal on your client.
> **Note:** WhenusingtheTerminalprogram,filenamesandpathsarecasesensitive.
3. Navigate to the directory where you copied the installer:
cd [path]
4. Type the following to change the permission on the installer file, then press Enter:
- For Ubuntu 22.04
sudo chmod +x AvidNEXISClient_for_Ubuntu22_n.0.0-nnnnn.bin
- For Ubuntu 24.04
sudo chmod +x AvidNEXISClient_for_Ubuntu24_n.0.0-nnnnn.bin
5. To install the client kit, type the following, then press Enter.
- For Ubuntu 22.04
sudo ./AvidNEXISClient_for_Ubuntu22_n.0.0-nnnnn.bin
- For Ubuntu 24.04
sudo ./AvidNEXISClient_for_Ubuntu24_n.0.0-nnnnn.bin 2 Installing the Client Software The Ubuntu Client kit depends on the presence of certain Ubuntu packages. During installation, the client tries to retrieve missing packages from the internet, if possible. If that fails, a list of the missing dependencies is displayed. Install all the listed packages, then retry the installation.
6. Restart the Ubuntu client.
Configuring an Ubuntu Linux Client (No GUI) The Avid NEXIS Ubuntu client kit does not support the Client Manager GUI. Use the command line interface to configure the network interface, add the Avid NEXIS system information, set the client type, and mount and unmount Workspaces.
When configuring an Avid NEXIS system as a remote host, use the IP addresses or DNS name of the controllers in the Engine or System Director Appliance that runs the System Director service. Do not use the Avid NEXIS shared-storage system name. If redundant Controllers are installed, enter both controller IP addresses or both names.
For more information on the numerical values for client resolution (client types) for the AvidFos\Parameters\UsrvTransport\Hires To configure the network interface, client type, and add a remote host:
1. Run the following command to see all available interfaces:
ip a
2. Identify the interface(s) for communicating with the Avid NEXIS system.
3. Edit the /etc/AvidRegistry file and uncomment the following lines:
AvidFos\Parameters\RemoteSystemDirectors IP_addresses AvidFos\Parameters\UseIfnames interface_name AvidFos\Parameters\UsrvTransport\Hires n /etc/AvidRegistry
4. Save and close the file.
Installing Client Software on Rocky Linux Avid NEXIS includes a Rocky Linux client kit for command-line use only (without Client Manager GUI support).
The Rocky Linux client installer is available from either the Management Console Installers page or the \AvidNEXISClientInstallers folder in the Avid NEXIS software kit.
To install the Rocky Linux client kit:
1. Copy and save the Rocky Linux client kit, named AvidNEXISClient_for_el9.RockyLinux_
n.0.0-nnnnn.bin, to the client computer.
2. Open the Terminal application: Activities, Terminal on your client.
> **Note:** Filenamesandpathsarecase-sensitivewhenusingtheTerminalprogram.
3. Navigate to the directory where you copied the installer:
cd [path]
4. Type the following to change the permission on the installer file, then press Enter:
sudo chmod +x AvidNEXISClient_for_el9.RockyLinux_n.0.0-nnnnn.bin
5. To install the client kit, type the following, then press Enter.
2 Installing the Client Software sudo ./AvidNEXISClient_for_el9.RockyLinux_n.0.0-nnnnn.bin The Rocky Linux Client kit depends on certain Rocky Linux packages. During installation, the client attempts to retrieve any missing packages from the internet. If that fails, a list of the missing dependencies is displayed. Install all the listed packages and retry the installation.
6. Restart the Rocky Linux client.
Configuring a Rocky Linux Client (No GUI) The Avid NEXIS Rocky Linux client kit does not support the Client Manager GUI. Use the command line interface to configure the network interface, add the Avid NEXIS system information, set the client type, and mount and unmount Workspaces.
When configuring an Avid NEXIS system as a remote host, use the IP addresses or DNS name of the controllers in the Engine that runs the System Director service or the System Director Appliance. Do not use the Avid NEXIS shared-storage system name. If redundant Controllers are installed, enter both controller IP addresses or both names.
For more information on the numerical values for client resolution (client types) for the To configure the network interface, client type, and add a remote host:
1. Run the following command to see all available interfaces:
ip a
2. Identify the interface(s) for communicating with the Avid NEXIS system.
3. Edit the /etc/AvidRegistry file and uncomment the following lines:
AvidFos\Parameters\RemoteSystemDirectors IP_addresses AvidFos\Parameters\UseIfnames interface_name AvidFos\Parameters\UsrvTransport\Hires n
4. Save and close the /etc/AvidRegistry file.
> **Note:** WhenupgradingtheClientsoftwareonRockyLinux,theAvidRegistryconfigurationfilesare
automaticallybackedupandrestoredduringthereinstallationprocess.
Installing the Client Software on Amazon Linux Installing the Avid NEXIS Client Manager on Amazon Linux is a two-part process that involves (1) installing the software and (2) configuring the client using the command line interface.
The following instructions covers the installation process on Amazon Linux 2 (AL2).
> **Note:** AL2willreachEndofLife(EOL)onJune30,2026.
To install the Avid NEXIS Client Manager on AL2:
1. Copy and save the installer to the AL2 client.
Installer name: AvidNEXISClient_for_amzn2_n.0.0-nnnn.bin.
2. Open the Terminal application and connect to the VM.
3. Type the following to change the permission on the installer file, then press Enter.
sudo chmod +x AvidNEXISClient_for_amzn2_n.0.0-nnnn.bin 2 Installing the Client Software
4. Type the following to start the installation, then press Enter.
sudo ./AvidNEXISClient_for_amzn2_n.0.0-nnnn.bin
5. Installation complete. Proceed to configuring the client.
Configuring a Amazon Linux 2 Client After the installation, edit the /etc/AvidRegistry file to add a remote host, configure the network interface, and set the client type.
To configure the AL2 client:
/etc/AvidRegistry
1. Type the following to edit the file
sudo nano /etc/AvidRegistry AvidFos\Paremeters\RemoteSystemDirectors
2. In the line, enter the IP addresses OR host
names of the controllers in the engine that runs the System Director or the System Director Appliance.
3. In the AvidFos\Parameters\UsrvTransport\Hires, enter the numerical value for client type
(client resolution).
The recommended client types are:
- 4 UltraHigh (10Gb clients)
- 5 40Gbit clients
AvidFos\Parameters\UsrvTransport\forceNICsToMin,
4. In the enter the network speed (in
megabytes).
5. Exit and Save the /etc/AvidRegistry file.
6. Reboot the AL2 client. Run the command:
sudo reboot Installing the Client Software on Amazon Linux 2023 Amazon Linux 2023 (AL2023) is the new generation of Amazon Linux from AWS.
Installing the Avid NEXIS Client Manager on Amazon Linux 2023 is a two-part process that involves (1) installing the software and (2) configuring the client using the command line interface.
To install the Avid NEXIS Client Manager on AL2023:
1. Copy and save the installer to the AL2023 client.
Installer name: AvidNEXISClient_for_amzn2023_n.0.0-nnnn.bin.
2. Open the Terminal application and connect to the VM.
3. Type the following to change the permission on the installer file, then press Enter.
sudo chmod +x AvidNEXISClient_for_amzn2023_n.0.0-nnnn.bin
4. Type the following to start the installation, then press Enter.
sudo ./AvidNEXISClient_for_amzn2023_n.0.0-nnnn.bin
5. Installation complete. Proceed to configuring the client.
2 Installing the Client Software Configuring an Amazon Linux 2023 Client /etc/AvidRegistry After the installation, edit the file to add a remote host, configure the network interface, and set the client type.
To configure the AL2023 client:
1. Type the following to edit the /etc/AvidRegistry file
sudo nano /etc/AvidRegistry
2. In the AvidFos\Paremeters\RemoteSystemDirectors line, enter the IP addresses OR host
names of the controllers in the engine that runs the System Director or the System Director Appliance.
AvidFos\Parameters\UsrvTransport\Hires,
3. In the enter the numerical value for client type
(client resolution).
The recommended client types are:
- 4 UltraHigh (10Gb clients)
- 5 40Gbit clients
4. In the AvidFos\Parameters\UsrvTransport\forceNICsToMin, enter the network speed (in
megabytes).
/etc/AvidRegistry
5. Exit and Save the file.
6. Reboot the AL2023 client by typing
sudo reboot 3 Configuring the Client Ethernet Ports 3 Configuring the Client Ethernet Ports Configure each client computer’s Ethernet port to allow them to connect to Avid NEXIS systems.
> **Note:** IfyourAvidNEXISnetworkincludesaDHCPserver,clientscanautomaticallyobtainIP addresses.If
youdonothaveaDHCPserver,assignstaticIPaddresses.
Configuring Windows Client Ethernet Ports To configure the Ethernet port on your Windows clients:
ncpa.cpl
1. Click Start and type in the Search text box.
2. Right-click the Local Area Connection icon and select Properties.
3. Select the Internet Protocol Version 4 (TCP/IP) option.
4. Click Properties.
The Internet Protocol Version 4 (TCP/IP) Properties dialog box opens.
5. In the General tab, select Use the following IP address.
6. Type a unique IP address in the IP address text box, depending on your configuration. For help, ask
your Avid NEXIS administrator.
7. Type the appropriate subnet mask in the Subnet mask text box.
3 Configuring the Client Ethernet Ports
8. (Optional) If connecting to a corporate network or outside the Avid NEXIS subnet, add the Default
gateway and DNS server addresses.
See your corporate administrator for the Default gateway and DNS server addresses.
9. Click OK to close each of the open dialog boxes and save the changes.
Configuring Mac Client Ethernet Ports For macOS clients, you can use any of the onboard Ethernet ports on the Mac system to connect to the Avid NEXIS. For a list of supported Mac systems, see the AvidNEXISReadMe. See the documentation provided with your Mac system for the exact location of the Ethernet port.
To configure the Ethernet port on your Mac clients:
1. Click System Preferences in the Dock.
2. Click Network.
3. Select the Ethernet port in the left pane.
4. In the right pane select Manually from the Configure IPv4 menu.
5. Type a unique IP address in the IP address text box, depending on your configuration. For help, ask
your Avid NEXIS administrator.
6. Type the appropriate subnet mask in the Subnet Mask text box.
7. (Optional) If connecting to a corporate network or outside the Avid NEXIS subnet, add the Default
gateway and DNS server addresses.
See your corporate administrator for the Default gateway and DNS server addresses.
8. (Option) If this is a dual port configuration, repeat steps 3 through 7 through to configure the second
port.
9. Click Apply.
3 Configuring the Client Ethernet Ports Configuring Rocky Linux and Ubuntu Client Ethernet Ports To configure the Ethernet port on your Rocky Linux and Ubuntu clients (with GUI):
1. Click the System menu in the top-right corner.
2. Select Settings.
3. In the left sidebar, click Network.
4. Under Wired, select the Ethernet adapter for the Avid NEXIS connection.
5. Click the gear-icon button to edit settings.
6. Select IPv4.
7. Configure the adapter’s addressing (method, addresses, DNS, etc.) according to the connection plan
for your facility.
8. If you have made changes, click Apply.
4 Configuring the Client Manager 4 Configuring the Client Manager You can configure the Client Manager before using it for the first time, and change it as your workflow changes. For example, you can set preferences for how to display information, control whether the Client Manager starts automatically, and specify the client type (resolution) for your workflow.
Starting the Client Manager Start the Client Manager and become familiar with its features and the configuration options and preferences you want to set.
To start the Client Manager:
Do one of the following:
- (Windows) Click Start, Avid, Avid NEXIS Client Manager.
- (Mac) Select Go, Applications, and then double-click the AvidNEXIS folder. In this folder, double-click
the Avid NEXIS Client Manager icon.
When the Client Manager is running, an icon appears in the system tray on Windows systems. The tray icon color indicates the client connection status:
Icon Status Client Manager is running, but there are no active Avid NEXIS connections.
Client is connected to one or more Avid NEXIS systems, but there are no mounted Workspaces.
Client is connected to one or more Avid NEXIS systems, and there are one or more mounted Workspaces.
Indicates a connection error.
Navigating the Client Manager The following illustration describes the Client Manager window and the tools available in each area.
4 Configuring the Client Manager Avid NEXIS Client Manager - Main Window Icons Main Tool bar. Functions available:
Show or hide the Systems panel (callout 2) Show or hide the Logs panel (callout 4) Change the Client Manager preferences (startup behavior, columns displayed, how free space is measured, client resolution, drive mapping, and more). See "Client Manager General Preferences" on page 29.
Configure Avid NEXIS systems that are not on the same network as the client system. See "Adding and Removing Remote Hosts (System Directors)" on page 32.
Configure the appropriate network interfaces for your workflow. See "Choosing the Network Interface for Your Workflow " on page 33.
Clear various caches. See "Clearing Cached Settings" on page 51.
> **Note:** AvailableonAvidNEXIS|CloudStorage(AzureOnline,AWSNearlineS3Standard,AWS
OnlineS3ExpressOneZone) Select the language for the Client Manager interface from the following:
- English (default)
4 Configuring the Client Manager
- Simplified Chinese
- French
- German
- Japanese
- Spanish
- Italian
- Arabic
- Korean
- Ukrainian
Open a link to the documentation on the Avid Knowledge Base.
Systems panel.
Lists all available and connected Avid NEXIS systems and information about them. By default, only the System, User, and System Type columns are shown. To show more columns, see "Client Manager General Preferences" on the next page.
Connect to an Avid NEXIS system.
Disconnect from an Avid NEXIS system.
Open the Management Console for the selected Avid NEXIS system (Not supported for Team Users; see the Avid NEXIS Administration Guide for more information).
Change your password for the selected Avid NEXIS system.
Run a connection test on an Avid NEXIS system (usually done by, or with help from, Avid Customer Care).
Reserve bandwidth for the selected Avid NEXIS system.
Used with Configure Reserve Rate for Selected System(s).
First, configure a reserve rate. Then click this button to apply the reservation.
Configure a Reserve Rate. Lets you specify how many streams of various formats to reserve on the Avid NEXIS system. Displays the equivalent speed in MB/sec for each available format. See "About Bandwidth Reservations" on page 38.
Toggle Auto Reservation. Lets you turn reservations on or off as needed.
Workspaces panel. Lists all Workspaces available on connected Avid NEXIS systems, and shows details for mounted Workspaces. See "Displaying Workspace Details" on page 43.
Mount the selected Workspaces (using the next available drive letters).
Unmount the selected Workspaces.
Assign a mount point to the selected workspace. Use this to mount a Workspace on a specific drive letter (not the next available) or UNC mount point.
4 Configuring the Client Manager Toggle automount for selected Workspaces. Controls whether the Workspace is mounted automatically whenever you connect to the Avid NEXIS system.
Retrieve details for mounted Workspaces (gets and displays the size, free space, used space percentage, performance and protection modes, and access type).
Retrieve details for all Workspaces (mounted or not).
Logs panel. Displays information, warnings, and error messages and lets you save the log as a text file for Customer Care.
Client Manager logs are saved automatically in the following location:
- C:\Users\username\AppData\Local\Avid\
[Drive]:/Users/username/Library/Application
- Support/AvidNEXISClientManager/Logs (on macOS clients)
Save the messages displayed in the current Client Manager Logs panel to the following location:
- C:\Program Files\Avid\Avid NEXIS Client (on Windows clients)
- [Drive]:/Users/username (on macOS clients)
Client Manager General Preferences In the General Preferences dialog box, the Client Manager lets you configure the following properties:
Setting Description Start Client Manager (Windows) Allows the Client Manager to run continuously, but hidden and accessible Hidden from the Client Manager icon in the taskbar. Disable this option if you prefer to start the Client Manager yourself.
Use UNC (Letterless) (Windows) Use UNC paths to map Workspaces instead of drive letters Drive Mapping Enable Automatic Automatically refreshes the data in the Systems and Workspace panels for both Refresh Windows and Mac clients (enabled by default) Enable System IP When enabled, displays the IP address of all connected Avid NEXIS systems.
Column Enable this column to identify the IP address of a system for troubleshooting or to run a Connection Test (see "Running Connection Tests (for Avid NEXIS | EDGE)" on page 58).
Show Transfer Rate Displays the columns showing Read and Write Transfer Rates between the client and Columns the connected Avid NEXIS systems.
Formerly,Enable Use this setting in an Avid NEXIS | EDGE workflow or if you plan to configure and BandwidthColumns monitor bandwidth reservations (see "Creating or Releasing Bandwidth Reservations" on page 38).
Show Transfer Rates in Available when Show Transfer Rate Columns is enabled. Displays the transfer rate Bits Per Second (default between the client and the Avid NEXIS system in either bits per second or (default) 4 Configuring the Client Manager Setting Description is Bytes Per Second) bytes per second.
Formerly,Display BandwidthinBitsPer Second Measure Free Space in Displays the amount of available space in your Workspace either in gigabytes (GB; default) or in the remaining time available (hours:minutes:seconds) at the selected resolution Client Type Selects the resolution for the client type. See "About the Client Type Settings" below.
Windows Firewall (Windows) Enables the firewall profile configurations used in your Avid NEXIS shared storage network: domain network, public network, or private network. See "Identifying the Network Profiles (Windows)" on the next page.
About the Client Type Settings The Client Manager supports the following client types for different workflows, as described in the following table. These settings limit the maximum bandwidth your workstation can use in an Avid network.
Client Type Use Case and Notes Option Remote Avid Workstations using a remote Avid NEXIS | EDGE solution. For more information, see the Avid NEXIS NEXIS | EDGE Documentation available on the Avid Knowledge Base.
Performance and responsiveness will vary due to network conditions (bandwidth and latency).
When using this setting, you can run a Connection Test (see "Running Connection Tests (for Avid NEXIS | EDGE)" on page 58) to determine if your connection will support the workflow.
Low Workstations connected to a network of unknown Quality of Service (QoS) or working with very resolution low bitrate files (for example, Avid DNxHD 36 proxy) Medium All non-real time applications and real-time editing applications using “lite” compression resolution resolutions such as DNxHR LB, DNxHD 60, or Apple ProRes 422 LT (default) Use with 1GbE-connected media servers such as AirSpeed and FastServe High Editing applications using DNxHR SQ and above, DNxHD 145 and above, or any other file format resolution above 145Mbps per stream, including Apple ProRes 422 HQ and above.
Ultra high Intended for dual 1GbE, 10GbE, and dual 10GbE connections performing high-end finishing resolution tasks with high bandwidth codecs such as DNxHR 444, Apple ProRes 4444 or higher, and uncompressed HD or 4K files Also works with 25GbE (not optimized) Generally used for 10GbE-connected media servers, such as AirSpeed and FastServe, and some configurations of 10GbE-connected media management systems such as MediaCentral 40 Gigabit Workstations with 40Gbps network adapters performing very high-end finishing work or file- per-frame workflows; sets specific driver parameters Also for 50GbE and 100GbE connections (not optimized) 4 Configuring the Client Manager Linux Deployments In most Linux deployments, there is no GUI and thus the Client Manager is not available to set the Client Type. For these systems, the Client Type is set as a numeric value in the /etc/AvidRegistry file.
The most common use of the Linux client is in the service of FastServe or MediaCentral. Management of the Client Type on each of these products must be done through the product’s controlling automation and /etc/AvidRegistry scripting (which will overwrite the file).
- For MediaCentral, consult the installation and configuration sections of the installation guide.
- For FastServe, consult the Avid NEXIS client sections in the setup guide.
If you’re using the Linux client on a system that does not have configuration automation, edit the /etc/AvidRegistry file with a text editor (such as vi) to set the Client Type, which is read as the AvidFos\Parameters\UsrvTransport\Hires value.
The following table lists the numerical values that correspond to the Client Types:
Client Type Value New installations of the Linux client have an /etc/AvidRegistry template file that includes a helpful comment (which will get stripped if overwritten by automation).
The following example shows the AvidFos\Parameters\UsrvTransport\Hires setting for a Medium Resolution client.
## Uncomment this line to set client mode.
## This mostly manages switching load.
## 3 Low (lowest switching requirements) ## 0 Medium ## 1 High (lower timeouts) ## 4 UltraHigh (10Gb clients) ## 5 40Gbit clients ## 6 WAN access mode Identifying the Network Profiles (Windows) Network profiles are used by Windows operating systems to distinguish between Public, Private, and Domain network connections. Because each network profile uses its own security settings, you must configure the Client Manager settings so that the appropriate ports are opened for each applicable network profile on your system.
4 Configuring the Client Manager When enabled, some firewall settings on Windows or macOS clients can prevent you from connecting to the Avid NEXIS environment. On Linux clients, the client installer configures the Linux firewall settings for communication between the Linux clients and the System Director in the Avid NEXIS environment.
To determine which network profiles your Windows client uses:
1. Click Start, Control Panel.
2. Click Network and Internet.
3. Click Network and Sharing Center.
The Network and Sharing Center window lists the network connections present on your system and which of the possible network profiles has been applied to them:
  - Domain network
  - Public network
  - Private network
4. Use this information to configure the Client Manager firewall profiles.
Setting or Changing the General Preferences You can set or change the preferences and client type (also called client resolution) at any time.
> **Note:** ChangestoWindowsFirewallsettingstakeeffectafteryourebootthecomputer.
To set or change the Client Manager preferences:
1. Start the Client Manager.
2. Click General Preferences, then do the following:
a. In the General section, select the options for how you want Client Manager to start, map drives, refresh the display, and show or hide additional columns (see "Client Manager General Preferences" on page 29).
b. In the Client Type list box, select the client resolution for your workflow (see"About the Client Type Settings" on page 30).
c. In the Windows Firewall section, select each applicable network profile type (see "Identifying the Network Profiles (Windows)" on the previous page).
> **Note:** ConfigureonlythenetworkprofilesneededtoconnecttoyourAvidNEXISsystem.Ifyou
arenotsurewhichfirewallprofilestoenableforWindowsclients,enableallofthemto ensuretheclientcanconnectinallfirewallconfigurations,oraskyournetwork administrator.
3. Click the green check mark to apply the settings or the red X to close the dialog box without any
changes.
Adding and Removing Remote Hosts (System Directors) If your client is not in the same location or on the same subnet as the Avid NEXIS system, add either the name (if your environment uses DNS) or IP address of the System Director to the Client Manager.
For Avid NEXIS Cloud Storage systems, enter the VM IP address or DNS name.
On Linux clients with no GUI, see "Performing Operations without the Client Manager" on page 53.
4 Configuring the Client Manager If an Avid NEXIS system has redundant Controllers, you can add the IP addresses of both Controllers to the Remote Hosts list so that the button to open the Management Console (see "Opening the Management Console from the Client Manager" on page 37) will work even if the System Director service switches from one Controller to the other.
If the Avid NEXIS system is configured with a Virtual IP address, do not use the Virtual IP address in the Remote Hosts list to avoid potential issues with System Director Virtual IP discovery in certain network configurations. Use the IP addresses of the System Director Controller and redundant Controller instead.
> **Note:** TheClientManagerautomaticallydisplaysalldetectedAvidNEXISSystemDirectorsthatareinthe
samesubnetastheclient.
To add a remote host to the Client Manager:
1. Start the Client Manager application.
2. In the toolbar, click Remote Host Settings.
3. In the text box, type the name or IP address of the Avid NEXIS System Director, then click Add (green
plus button).
4. Click Apply (green check mark button). (It can take up to 30 seconds for the Hosts list to display the
new entry.)
5. Close the dialog box.
To remove a System Director from the Remote Hosts list:
- Select a System Director name or IP address and click Delete (red X button).
To remove all System Directors from the Remote Hosts list:
- Click Clean.
Choosing the Network Interface for Your Workflow The network interfaces available on your client system depend on several factors:
The operating system
- Your location relative to the Avid NEXIS system (local/on-premises or remote)
- The speed of your network interface cards (NICs)
- For on-premises clients with multiple NICs (for example, 10Gbps for editing work and 1Gbps for the
corporate network), you might be required to enable only the 10Gbps network adapter for the Avid production network and identify and disable the NIC to the corporate network.
If you are working off-site (Remote Avid NEXIS client type), you might connect to the Internet through a Wi- Fi network in your home or current working location. Additionally, you might need to connect securely to the corporate network of the company that owns the Avid NEXIS system, through a Virtual Private Network (VPN) service.
Before you connect to your home or corporate network, only the Wi-Fi interface will be displayed. After you connect, the display also shows the available VPN interface (names can vary by vendor). At that point, you must disable the Wi-Fi interface and keep only the VPN interface enabled.
> **Note:** Linuxclientsarenotsupportedforremoteworkflows.
4 Configuring the Client Manager g DisablinganetworkcardintheClientManagerPreferencesmakesthecardunavailableonlytoAvid NEXIS.Thenetworkcardisavailableforusebytheoperatingsystemandotherapplications.
Configuring the Network Interface See before you begin.
To select the Network Interface:
1. Start the Client Manager application.
2. Click Network Interface Settings in the Client Manager window.
3. Select the appropriate Ethernet network connection.
4. Click Apply.
Enabling Avid NEXIS | Remote Avid NEXIS | Remote is available for Avid NEXIS | Cloud Storage deployments (Azure Online, AWS Nearline S3 Standard, AWS Online S3 Express One Zone) starting with Avid NEXIS 2025.10.0. Avid NEXIS | Remote uses intelligent caching to deliver high-performance, high-resolution editing experience from the cloud. See "Using Avid NEXIS | Remote " on page 44 for more information.
To enable Avid NEXIS | Remote:
1. Open the Client Manager, click the Avid NEXIS | Remote button.
The Avid NEXIS Remote Settings dialog box opens.
2. Select a cache location or accept the default.
3. Type a size for the cache or accept the default. If available, the larger, the better.
> **Note:** Avidrecommendsstartingwith200GBcachesize.
4. Click Enable Avid NEXIS | Remote.
The system creates a folder named Avid_Cache in the specified location and runs a speed test.
Click OK to start the test.
4 Configuring the Client Manager The speed test runs for about one minute:
  - If the test fails, a message is recorded in the Client Manager logs. Choose a different cache
location or a different size, depending on the failure message, and rerun the test.
  - If the test is successful, the following message is shown:
> **Note:** OnmacOS,grantFullDiskAccessfortheAvidNEXISservice'userverd'inSystemSettingsto
ensureAvidNEXIS|Remotefunctionsproperly.
5. Click OK to exit.
A green indicator on the Avid NEXIS | Remote icon shows that the feature is enabled, and the Avid NEXIS | Remote column in the Workspaces section becomes available.
Automatic caching begins. In addition, you can do the following to improve more demanding workflows:
  - Use the File Explorer or Finder to select and pin the files, folders, bins or other objects you want
to cache. See "Enabling Avid NEXIS | Remote" on the previous page
  - From within Media Composer or Adobe Premiere Pro, manually select files, folders, bins or
other objects you want to cache. See "Enabling Avid NEXIS | Remote" on the previous page or "Enabling Avid NEXIS | Remote" on the previous page 5 Using the Avid NEXIS Client Manager 5 Using the Avid NEXIS Client Manager You must connect your client system to an Avid NEXIS network (shared-storage system), then mount a Workspace before you begin your work session.
> **Note:** Fornon-GUIusers,see"PerformingOperationswithouttheClientManager"onpage 53.
When you start the Client Manager it automatically detects and displays all available System Directors and Workspaces. You can configure the Client Manager to reconnect automatically to Avid NEXIS systems when you restart your system.
Users with the necessary account privileges can specify client bandwidth reservations, if any.
Fast User Switching Not Supported Fast User Switching is a Windows feature that allows multiple user accounts to log on to a computer simultaneously. Fast User Switching is enabled by default in Windows computers. The Fast User Switching feature and multiple concurrent logged on user modes are not supported in the Avid NEXIS environment. The Avid NEXIS software does not distinguish the different drive letters mapped to the same Workspaces on the same computer. Conflicts appear in the following scenarios:
- When one user maps a drive letter to one Workspace and another user maps the same drive letter to
a different Workspace When one user maps a Workspace to one drive letter, and another user maps a different drive letter
- for the same Workspace.
Connecting to an Avid NEXIS System After you start the Client Manager, it continues to run in the background so you can mount and access your Workspaces at any time, as well as manage your Workspaces and bandwidth reservations. Depending on your client operating system, an icon for the Client Manager is displayed in the following location:
Windows — In the System tray in the lower-right corner of your desktop
- macOS — In the dock
- To connect to an Avid NEXIS system:
1. Do one of the following:
- (Windows) If the Client Manager is not already running, click Start, Avid, Avid NEXIS Client
Manager.
- (Windows) If the Client Manager icon is visible in the Windows Taskbar, click it.
- (Windows) If the Client Manager icon is not in the Windows taskbar, open the System Tray,
then click the Client Manager icon.
- (Mac) If the Client Manager alias icon is not available, select Go, Applications, and then
double-click the AvidNEXIS folder. In this folder, double-click the Avid NEXIS Client Manager icon.
2. In the Systems list, double-click the name of an Avid NEXIS system or select it and click Connect to
Selected System(s).
3. Type your user name and password.
On Windows clients only, this might be your network user name and password. If so, click the box for OS Login and enter your network credentials. If you want to log in automatically every time you start your system, also click the box for AutoConnect.
5 Using the Avid NEXIS Client Manager
4. Click Connect.
> **Note:** Youmightbepromptedtochangeyourpassword.Afteryoutypeandconfirmanewpassword,
clickApply,thenclickConnectagainandloginwiththenewpassword.
When the connection is successful, the Client Manager displays the Workspaces you can access.
Systems Panel Information By default, the Systems panel shows the following columns:
System — The name of the Avid NEXIS systems found on the network
- User — If connected, the user name used to connect to the Avid NEXIS system (otherwise, shows not
- connected)
System Type — The type of Avid NEXIS system (for example online or nearline)
- You can display additional columns as follows:
- Reserve Rate — The bandwidth reservation setting, if any, for the connected client. If a bandwidth is
configured and reserved, the reserve rate value is shown in bold.
- User Limit — The bandwidth limit on the user, if any, configured on the Avid NEXIS system (this limit is
configured for each user) System Limit — The bandwidth limit, if any, configured for all users of the Avid NEXIS system
- Write Transfer Rate [formerly,WriteBandwidth] — The rate in MB/sec at which the client can write
- data to the Avid NEXIS system (displayed on macOS and Windows clients only).
Read Transfer Rate [formerly,ReadBandwidth] — The rate in MB/sec at which the client can read
- data from the Avid NEXIS (displayed on macOS and Windows clients only).
- Latency — Amount of time it takes for data to be exchanged between the client and the Avid NEXIS
system (displayed on macOS and Windows clients only).
- System IP — Shows the IP address of a connected Avid NEXIS system. Enable this column for
troubleshooting, or to see the IP address you want to enter in the Connection Test dialog box. (You can also run a connection test by right-clicking the name of any connected system.) For more information, see "Client Manager General Preferences" on page 29 and "Setting or Changing the Opening the Management Console from the Client Manager You can open the Avid NEXIS Management Console from the Client Manager window after you have connected to an Avid NEXIS system.
g To open the Avid NEXIS Management Console:
- Select one or more systems in the Systems panel of the Client Manager window and click the
Management Console button.
- Right-click on a system and click Management Console.
Your default web browser opens the Avid NEXIS Management Console login page in separate tabs.
5 Using the Avid NEXIS Client Manager If you see a Change Password dialog box, this means the Avid NEXIS administrator set up or changed your account to use a temporary password for security. Change your password and click Apply, then click the Management Console button again and log in with the new password.
> **Note:** TheAvidNEXISManagementConsoledisplaymightdifferaccordingtoyouruseraccount’saccess
privileges.
About Bandwidth Reservations Bandwidth reservations control the amount of bandwidth available to the client for both reads and writes.
The Avid NEXIS administrator can set overall limits in the Management Console optionally based on the client type specified by the Client Manager, but you can set a default bandwidth reservation within the Client Manager which cannot exceed your system’s device limit or your client bandwidth limit, whichever is lower. Bandwidth limits are hidden by default; to display them, see "Client Manager General Preferences" on page 29.
For more information on using the Management Console to set bandwidth limits, see the AvidNEXIS AdministrationGuide.
> **Note:** Settingabandwidthlimitoneditingclientscanadverselyaffectplaybackperformance.Avid
recommendsthatyoudonotsetbandwidthlimitsforusersotherthanAvidFastServe(andlegacy AirSpeed®)clients.However,youradministratormightneedtosetabandwidthlimitforother Avid devices,suchasTransferManager,intheeventthedeviceisconsumingmorebandwidththan expected.
Creating or Releasing Bandwidth Reservations This procedure assumes that there are existing bandwidth reservations on the Avid NEXIS Management Console for the device (client system) or the users of the client system. On the client system, you can further restrict the bandwidth to less than the limit set on the Avid NEXIS.
To create or modify a bandwidth reservation:
1. Open the Client Manager.
2. Connect to the Avid NEXIS system on which you want to configure a bandwidth reservation.
3. Make sure the System panel displays the columns for Reserve Rate, User Limit, and the other columns
for Bandwidth. (See "Setting or Changing the General Preferences" on page 32 for more information.)
4. Make sure the system is selected, then click Configure Reserve Rate for Selected System(s).
5. In the Configure Reserve Rate dialog box, do the following:
a. Use the up/down buttons to select the number of streams you will need.
b. Select the type of stream from the list. There are several presets for various formats, as well as numeric bandwidth values.
> **Note:** Iftheselectedbandwidthvalueexceedsthelimitsimposedeitherbytheclienttype
specifiedbytheClientManagerorthereservedbandwidthvaluesetintheManagement Console,awarningsymbolwillappearnexttotheTotalRatevalue.Youcansavethese values,butcannotcreateormodifyanexistingreservation.
c. Click Apply, then close the dialog box.
6. Do one of the following:
5 Using the Avid NEXIS Client Manager
- To reserve the bandwidth for the current session only, click Reserve bandwidth for selected
System(s).
When the reservation is applied, a green circle is displayed in the Reserve Rate cell for the selected system.
- To reserve the bandwidth for the current session and future sessions automatically, click
Toggle Auto Reservation for Selected System(s). This reapplies the bandwidth reservation the next time you connect to the Avid NEXIS.
When enabled, the Toggle Auto Reservation icon is displayed in the Reserve Rate cell for the selected system.
To release a reservation:
1. Select the system reservation you want to release.
2. Click Release bandwidth for selected System(s).
The selected reservation is released, and the green circle is removed from the cell.
Mounting and Unmounting Workspaces Your Avid NEXIS user account must have access to at least one Workspace. For information on Workspace access, see the AvidNEXISAdministrationGuide.
If a Workspace is mounted and the connection to the System Director is subsequently lost, a message appears in the Log pane of the Client Manager window. The Client Manager icon in the Taskbar changes color (on Windows systems). The Client Manager then automatically attempts to reestablish the connection with the System Director. When successful, a log message informs you of the connection state.
To mount an Avid NEXIS Workspace on your system:
1. Open the Client Manager and connect to a storage system.
The Workspaces list opens. In the Online column, a green icon indicates Workspaces that are already mounted. You can filter the Workspaces list by clicking any column heading.
2. Do one of the following:
- Select a Workspace and click Mount.
- Right-click a Workspace and select Mount.
- Double-click the Workspace.
- (Option) Right-click, and select Assign Mount Point from the menu.
> **Note:** Selectingthisoptionwilloverridethecurrentdrivemappingoptionsettingsfortheselected
Workspace.Formoreinformationondriveletterassignments,see"ClientManagerGeneral Preferences"onpage 29.
The Client Manager mounts the selected Workspace on your client and the Online icon for the mounted Workspace changes to green.
  - On Windows, the Workspaces list displays the drive the Workspace is mounted on. If you use
letterless drive mappings, the Workspaces list displays UNC path” next to the Online icon.
  - On macOS, the Workspaces list displays the path to the mount point.
g IfyoumanageyourletteredorUNCWorkspacemountsoutsideoftheClientManager application(forexample,usingMapNetworkDrivesonwindowsclients)youcancreatemultiple mountpointstothesameWorkspace.ClientManagerwilldisplaythemultiplemountsproperly.
5 Using the Avid NEXIS Client Manager
3. (Option) To automatically remount the selected Workspace the next time you log in, do one of the
following:
- Select the Workspace and click Toggle Auto Mount.
- Right-click the Workspace and select Enable Auto Mount.
The next time you log in to your client system, the Client Manager automatically mounts the selected Workspace.
To mount multiple Avid NEXIS Workspaces on your system:
1. Open the Client Manager.
The Workspaces list opens. The Online column displays a green icon for Workspaces that are already mounted. You can filter the Workspaces list by Workspace name.
2. Do one of the following:
- Select multiple non-contiguous Workspaces with Control+click.
- Select a range of contiguous Workspaces by clicking on the first Workspace row in the range,
then Shift+clicking on the last.
- Select all Workspaces by right-clicking in the Workspaces list and selecting Select All.
- Select all Workspaces by pressing Control+A.
3. Right-click, and select Mount.
The Client Manager mounts the selected Workspace on your client and the Online icon for the mounted Workspace changes to green.
  - On Windows, the Workspaces list displays the drive the Workspace is mounted on. If you use
letterless drive mappings, the Workspaces list displays UNC path” next to the Online icon.
  - On macOS, the Workspaces list displays the path to the mount point.
g IfyoumanageyourletteredorUNCWorkspacemountsoutsideoftheClientManager application(forexample,usingMapNetworkDrivesonwindowsclients)youcancreatemultiple mountpointstothesameWorkspace.ClientManagerwilldisplaythemultiplemountsproperly.
4. (Option) To automatically remount the selected Workspace the next time you log in, do one of the
following:
- Select the Workspace and click Toggle Auto Mount.
- Right-click the Workspace and select Enable Auto Mount.
The next time you log in to your client system, the Client Manager automatically mounts the selected Workspace.
To unmount an Avid NEXIS Workspace on your system:
1. Open the Client Manager.
The Workspaces list opens. The Online column displays a green icon for Workspaces that are already mounted. You can filter the Workspaces list by Workspace name.
2. Do one of the following:
- Select a Workspace and click Unmount Selected Workspace.
- Right-click on the Workspace and select Unmount.
The Client Manager unmounts the Workspace from your client, and the green icon is removed from the Online column for this Workspace.
5 Using the Avid NEXIS Client Manager To unmount multiple Avid NEXIS Workspaces on your system:
1. Make sure your Avid application is not running.
2. Open the Client Manager.
The Workspaces list opens. The Online column displays a green icon for Workspaces that are already mounted. You can filter the Workspaces list by Workspace name.
3. Do one of the following:
- Select multiple non-contiguous Workspaces with Control+click.
- Select a range of contiguous Workspaces by clicking on the first Workspace row in the range,
then Shift+clicking on the last.
- Select all Workspaces by right-clicking in the Workspaces list and selecting Select All.
- Select all Workspaces by pressing Control+A.
4. Click Unmount Selected Workspace or right-click and select Unmount.
The Client Manager unmounts the Workspaces from your client, and the green icons are removed from the Online column for those Workspaces.
> **Note:** WhenyouquittheClientManageryoucanchoosewhetherornottounmountWorkspaces.
Configuring Workspace Mount Points (Windows) The Client Manager allows you to configure the drive letter used when mounting Avid NEXIS Workspaces.
This allows you to prevent Workspaces from being assigned drive letters you want reserved for other uses.
> **Note:** TheClientManagerskipsfixeddrivesanddrivelettersthatarealreadyinuse.
Do not allow multiple users to log into the same computer and run the Client Manager. See "Fast User Switching Not Supported" on page 36.
If your system requires using Universal Naming Convention (UNC) paths for all mounted Workspaces instead of drive letters, you can use Client Manager to set this as the default mapping for Workspaces.
If you manage your lettered or UNC Workspace mounts outside of the Client Manager application (for example, Map Network Drives) you can create multiple mount points to the same Workspace. Client Manager will display the multiple mounts properly.
UNC mounting and drive letter mounting do not operate the same. With UNC mounting, Windows accesses the Workspace as a network share, and authenticates to it as though it is a server using credentials provided by the Avid NEXIS client system. Depending on your company’s policy and Windows settings, these credentials might be cached by the operating system, resulting in automatic reconnection.
> **Note:** ThisisknownWindowsOS behaviorandisnotcontrolledbytheAvidNEXISClientManager.
The Client Manager is not notified, so a user might see a Workspace connected in File Explorer that is not mounted in the Client Manager.
If this raises a security concern, you can do the following:
5 Using the Avid NEXIS Client Manager Your IT administrator can disable automatic saving of network credentials on the client system and
- remove existing entries from the Windows Credentials Manager.
- Use drive-letter mounting instead of UNC paths. Drive-letter mounting does not store credentials, but
limits the number of possible mount points to 26 (the letters of the English alphabet, minus any hard- coded drive letters such as the C:\ drive).
When you quit the Client Manager, do not select the option to keep the Workspaces mounted (see
- "Closing and Exiting the Client Manager" on page 52).
To configure the drive letter for mounting Workspaces:
1. Open the Client Manager.
2. Right-click a Workspace, and select Assign Mount Point from the context menu.
The Assign Mount Point dialog box opens.
> **Note:** OnMacandLinuxclients,UNCdoesnotapplybutyoucanselectthedefaultormanually
enteredmountpoint.
3. Click Select drive letter, and select the option you want to use for mounting Workspaces:
  - Next available drive letter (letter:): Mounts the Workspace to the next available drive letter,
working backward from drive Z:
  - Select drive letter: Mounts the Workspace to the selected available drive letter.
  - UNC (\\pathUNC (\\path): (Windows) Uses a Universal Naming Convention (UNC) path for the
mounted Workspace instead of a drive letter.
4. Click the green check mark to apply the settings or the red X to close the dialog box without any
changes.
Workspace Information The Workspaces panel provides the following information:
Column Definition Heading System Name of the Avid NEXIS system hosting the Workspace Workspace Workspace name Online If mounted, shows the drive letter (Windows), UNC path, or mount point for the mounted Workspace.
Mounted Workspaces display a round icon whose color indicates the Workspace status:
- Green — Workspace is accessible (normal operation)
- Yellow — Workspace connection has been lost (temporarily, such as due to renaming,
or permanently, due to being deleted) 5 Using the Avid NEXIS Client Manager Column Definition Heading Avid NEXIS | Shows the client cache status (available, indexing, caching NN%). For more information, see Remote "Using Avid NEXIS | Remote " on the next page
> **Note:** AvailableforAvidNEXISClouddeploymentsonly.
Mode Connection status (connected, not connected, auto-mounted) Retrieved The last time the Workspace information was retrieved from the Avid NEXIS system Free Available free space in the Workspace (unit of measure depends on the General Preference Total The total Workspace capacity (Workspace size) Used The percentage of the Workspace capacity that has been used Performance The performance type of the Workspace (see the Avid NEXIS Administration guide for more information) Engine The Engine protection mode used by the Workspace (see the Avid NEXIS Administration guide Protection for more information) Protection The Media Pack protection mode used by the Workspace (see the Avid NEXIS Administration guide for more information) R/W The privileges you have for the Workspace (read, write, or read/write) Displaying Workspace Details When you connect to an Avid NEXIS system, only the names of the accessible Workspaces are displayed.
You can show additional details for mounted and unmounted Workspaces, such as their size, free space, and other attributes.
To retrieve details for one or more selected Workspaces:
1. Select one or more Workspaces as follows:
- Click a single Workspace
- Click one Workspace, then Control-Click to select multiple non-contiguous Workspaces (in
any order)
- Click one Workspace, then Shift-click to select another Workspace and all the ones in between
2. Right-click in the Workspace list, and select Retrieve Details, Selected Workspaces.
Additional details are retrieved for the selected Workspaces.
To retrieve details for all mounted Workspaces, do one of the following:
- Click Retrieve Details for Mounted Workspace(s)
- Right-click in the Workspace list, and select Retrieve Details, Mounted Workspaces.
To retrieve details for all Workspaces (mounted or not), do one of the following:
- Click Retrieve Details for All Workspaces.
- Right-click in the Workspace list, and select Retrieve Details, All Workspaces.
5 Using the Avid NEXIS Client Manager Sorting and Filtering the Workspaces Display If the Workspaces list contains a large number of Workspaces, you can sort the list by any column heading, or filter the list to see only what you are interested in.
To sort the Workspaces list:
- Click on a column heading that you want to sort.
A blue arrow appears next to the heading, indicating whether the information is sorted in ascending or descending order (alphabetically, or by time, size, or value, as relevant).
- Click the column heading again to reverse the sort order.
To filter the Workspaces list:
- Type part or all of a Workspace name in the Search Workspaces field.
The display lists only the Workspace names that match the text entered.
To display all Workspaces:
- Delete the text in the Search Workspaces field.
The display lists all available Workspaces.
Using Avid NEXIS | Remote Avid NEXIS | Remote uses caching and accelerated transfers to pre-read media in advance, helping overcome performance issues caused by network limitations, latency, or variations in cloud storage performance. This makes the editing experience similar to traditional on-premises workflows. The Avid NEXIS Client Manager supports the use of caching to improve performance when connecting a cloud-based client (VM) to an Avid NEXIS | Cloud Storage system.
> **Note:** TheAvidNEXIS|Remotefeatureiscurrentlysupportedoncloud-basedworkflowsonlyandisavailable
asanentitlementofasystemlicenseforAvidNEXIS|CloudStorage(AzureOnline,AWSNearlineS3 Standard,AWSOnlineS3ExpressOneZone).
It has two components:
Automatic caching, which runs in the background
- Pinned file caching, in which you select and pin the files, folders, or sequences to be cached
- Cache Type Definitions
Avid NEXIS | Remote functions as follows:
- Automatic Caching
The Client cache keeps the portions of data that were requested for playback. This provides a better second play experience and speeds the initial playback, for example when your creative tool reads the file and generates thumbnails or waveforms. Multiple portions of the file are read and kept in cache. Playing these file extents happens faster because they are already local (in the cache), and only the remaining portions must be read from the server. Depending on your codec and ISP speed and latency, you can experience either smooth playback (as with an on-premises workflow) or reduced delay time for reads.
Automatic caching begins once the Avid NEXIS | Remote is enabled in the Client Manager. See g 5 Using the Avid NEXIS Client Manager Windows File Explorer or macOS Finder Pinning
- If your ISP is not fast or you want a seamless experience with high resolution files, you can pre-cache
files and folders by pinning them in the Windows File Explorer or macOS Finder. Pinning a file caches its entire essence locally and mimics the experience of an on-premises workflow while enabling remote collaboration (shared bins and projects).
Media Composer Manual Pre-Caching
- When working with large data sets that might not fit in the local cache, you can use Media Composer
Caching integration. Within Media Composer you manually select bins, sequences, and clips to be cached in advance.
- Remote Panel in Adobe Premiere Pro
The Avid NEXIS | Remote Panel within Adobe Premiere Pro lets you pin individual bins, clips, and sequences from your Premiere Pro project.
Cache Location Requirements and Behavior The media are cached in a location of your choice (by default, in the user home folder). A new folder called Avid_Cache is created in the specified location.
Avid recommends using an SSD drive for the cache, but an internal, non-removable HDD drive is also acceptable if it passes the speed test performed by the Client Manager upon selection of a cache location.
Avid does not recommend using removable media such as a thumb drive or external hard drive.
The minimum cache size is 20GB, and the default is 200GB. If more space is available, Avid recommends making the cache as large as possible, while leaving at least 20% of the total volume capacity as free space. The Client Manager performs a speed test to ensure the cache performs at 200Mbps or better.
You can enable and disableAvid NEXIS | Remote on the client at any time. When you disable Avid NEXIS | Remote, the cache location remains but is emptied.
When the cache becomes full, the oldest and least-accessed data from automatic caching is removed from the cache. Pinned items are not removed.
Prerequisites for Avid NEXIS | Remote To use Avid NEXIS | Remote, make sure the Avid NEXIS | Cloud Storage system you plan to use has the following:
a. Appropriate license entitlement Ask your administrator or log into the Management Console to confirm.
b. Client VPN OpenVPN is currently the only client VPN solution that has been tested and supported for use with Avid NEXIS | Remote. For details, see the "Appendix — Setting up a Client VPN for Avid NEXIS | Remote" chapter in the AvidNEXISSetupandMaintenanceGuide, available in the Avid NEXIS Documentation Knowledge Base.
c. Avid NEXIS Client 2025.10.0 or higher Avid NEXIS | Remote is available on Windows and macOS clients. You can find the client installer from the Cloud installer kit or the Installers page of the Avid NEXIS Management Console.
> **Note:** ThereiscurrentlynomacOSClientinstalleravailablefromtheAvidNEXISManagement
Console.ToconnectaMactoAvidNEXIS|CloudStoragehostedinAzure,downloadtheinstaller fromtheClientkitavailableinyourMyAvidaccount(my.avid.com).
5 Using the Avid NEXIS Client Manager
> **Note:** IfyouinstalledapreviousversionoftheAvidNEXISClient,makesuretofollowthisprocedure:
uninstalltheoldversion,reboot,installthenewversion,andrebootagain.
Pinning Media for Caching You can pin media (files, bins, sequences) through the Windows File Explorer or macOS Finder. To pin media make sure the client is connected to an Avid NEXIS | Cloud Storage system with the Avid NEXIS | Remote license entitlement, enabled in the Client Manager, and the target Workspaces are mounted.
To pin files for caching:
1. Open the File Explorer or Finder.
2. Select the mounted Workspace and double-click to display its contents.
On cache-enabled systems, the File Explorer or Finder includes two options specific to Avid: Pin and Unpin.
3. Select and right-click one or more files.
4. Click Pin.
g InFileExplorerorFinder,thepurplepiniconindicatesthecachingpreparationiscomplete.Files intheprocessofbeingpinneddisplayarefreshicon.Thetimeneededdependsonthesizeofthe cacheandthenumberofitemspinned.
The cache remains enabled until you disable it. You can pin and unpin files as needed. Files remain pinned even if the Workspace is unmounted and remounted.
5 Using the Avid NEXIS Client Manager Caching New Files in Pinned Folders If new files are added to a folder that is already pinned, the Pin option becomes available again. Selecting Pin will cache only the newly added files, without reprocessing those already cached.
Unpinning Pinned Items Over time, the cache folder may fill up with pinned items, and users may need to unpin files and/or folders to free up the cache space. Customers can individually unpin files and folders pinned in the File Explorer or Finder or unpin from the Avid NEXIS | Remote Settings dialog box at once.
Unpinning Selected Files or Folders in the Explorer or Finder To unpin specific files or folders from the File Explorer or Finder, simply right-click on one or more files/folders and click Unpin.
Unpinning All Files Pinned in the Explorer or Finder This option unpins all items that are manually pinned in File Explorer or Finder. This is useful when the user can no longer track the locations of all pinned files.
To unpin All Pinned Files from Explorer or Finder:
1. In the Client Manager, click Avid NEXIS | Remote icon.
The Avid NEXIS | Remote Settings dialog box opens.
2. Click Un-pin Explorer or Finder items
Pop-up window will open.
3. Click Confirm.
Displaying Caching Status The Workspaces panel indicates which Workspaces are able to use Avid NEXIS | Remote.
The Avid NEXIS | Remote column shows one of the following statuses:
available: indicates that the Workspace (mounted or not) is using the cache
- indexing...: indicates that the cache is checking the files in the Workspace to display their status in
- the File Explorer or Finder (pinned or not)
5 Using the Avid NEXIS Client Manager caching NN%: indicates that the pinned files in the Workspace are being added to the cache, and
- displays the percent completion. The progress bar only shows progress for File Explorer or Finder
pinning, not for in-app or automatic caching.
> **Note:** IfaWorkspacedoesnotsupportcaching—forexample,theWorkspaceisnotonanAvidNEXIS|Cloud
Storagesystem,orthesystemdoesnothavetheAvidNEXIS|Remotelicenseentitlementenabled—the Clientcachefieldisempty(blank).
Disabling Avid NEXIS | Remote If Avid NEXIS | Remote is enabled, you do not need to disable it unless you want to select a different cache location or change its size.
> **Note:** WhenyoudisableAvidNEXIS|Remote,anyfilesinMediaComposerthatareusingthecacheare
evicted.See"UsingAvidNEXIS|RemoteinAvidMediaComposer"belowand"Understandingthe DifferenceBetweenPinningandCaching"onpage 50.
To disable Avid NEXIS | Remote:
1. In the Client Manager, click Avid NEXIS | Remote icon.
The Client Cache for Cloud Systems - Settings dialog box opens.
2. Click the Enable Avid NEXIS | Remote box to disable it.
3. Click the Apply button.
4. A warning dialog box asks if you want to delete all the local cache content. Click Yes to continue.
5. Close the dialog box.
6. You can now re-enable Avid NEXIS | Remote in a different location, or using a different cache size, or
both.
Using Avid NEXIS | Remote in Avid Media Composer You can apply caching on folders, bins, and objects inside bins in Media Composer.
5 Using the Avid NEXIS Client Manager To use Avid NEXIS | Remote in Media Composer, make sure the Avid NEXIS system has the correct license entitlement and enable it in the Client Manager. If Media Composer was already running before you do those steps, restart it afterward.
To use Avid NEXIS | Remote in Media Composer:
- In the Bin view, right-click an object and select Cache Media.
When you start Playback on a clip or sequence, the system initially uses bandwidth while fetching the media, but on the next playback it uses data from the cache. This is called cache-on-the-fly.
Alternatively you can select a specific clip or sequence and right-click to select Cache Media. A column in the Bin Explorer called Avid NEXIS | Remote displays the status Partial until the full clip or sequence has been retrieved, and then the status changes to Cached. (If you select a clip to cache, all the sequences in that clip display the Partial or Cached status.)
> **Note:** Whenatimelinecontainseightormoreaudiotrackswithmultipleclips,playbackmaybedelayedbya
fewseconds,evenifthemediaiscached.Thisiscurrentlyaknownlimitation,andperformance improvementsareplannedforafuturerelease.
5 Using the Avid NEXIS Client Manager Using Avid NEXIS | Remote in Adobe Premiere Pro Starting with Avid NEXIS 2025.10.0, the Avid NEXIS | Remote functionality is also integrated in Adobe Premiere Pro thru the Avid NEXIS | Remote Panel. This allows users to pin (pre-cache) bins, clips and/or sequences in Premiere Pro projects. For more information, refer to the AvidNEXIS|RemotePanelforAdobe® PremierePro®available in the Avid NEXIS Documentation Knowledge Base.
Understanding the Difference Between Pinning and Caching Pinning files in the File Explorer or Finder is separate from using caching on items in Media Composer.
Pinned files in File Explorer or Finder cannot be evicted from the cache unless you select the file and unpin it.
In contrast, cached files in Media Composer can be evicted from the cache over time as the cache fills up.
In both cases, the Avid NEXIS system license must have the Avid NEXIS | Remote entitlement enabled, and you must enable it inside the Client Manager. (Also, pinned files and cached objects use the same cache space.) After that, you can pin files, or apply caching in Media Composer, but doing both to the same file is not necessary.
The data is not cached multiple times, and a file that is pinned in File Explorer or Finder does not display as cached in Media Composer. Similarly, using caching in Media Composer does not apply the Pin icon in File Explorer or Finder. (However, if you do both operations to the same media, pinning or caching happens almost immediately since the other application has already cached the data.)
> **Note:** CachinginMediaComposerispersistentacrossloginsessions.
Up to 80% of the cache can be filled with pinned items. Media Composer can use only the remaining 20% of the available cache. When the cache gets full, Media Composer might evict some cached files prematurely, leading to a degraded editing experience. To avoid this, unpin files (in File Explorer or Finder) or increase the cache size as needed.
Managing Logs and Messages The Client Manager keeps a log of information, warnings, and error messages. You can view the current log in the Messages section of the Client Manager window. You can save a copy of the log and clear the log maintained for the current work session.
> **Note:** TheClientManagerclearsalllogswhenyouexittheapplication.
To view Client Manager event logs:
- Open the Client Manager.
The Messages area is the bottom section of the Client Manager window. You can sort the Messages list by clicking the Level, Time, or Message column heading and clicking on the blue arrow to sort in ascending or descending order.
To save a copy of the event log:
1. Right-click in the list, and select Export.
The Export dialog box opens.
2. Navigate to the folder where you want to save your log.
3. Type a name for the log in the File Name text box.
4. Click Save.
The Client Manager saves the event messages as a log file (filename.log).
5 Using the Avid NEXIS Client Manager To clear all event logs:
- Right-click in the list and select Clear.
Clearing Cached Settings The Client Manager maintains information on site settings in cache files, and appends data each time you open the Client Manager. You can clear the cached information, for example to remove settings for users no longer working on a specific system.
To clear cached data:
1. Open the Client Manager.
2. Click Advanced Settings.
3. In the Advanced section, do one of the following:
- Click Clear for each cache file you want to clear.
- Click Clear All to clear all cached data.
4. Click the red X to close the dialog box.
Changing Your Password You can change the password you use to connect to an Avid NEXIS system in the Client Manager, which is also the password for you to log into Avid NEXIS system through the Management Console (if supported).
Avid NEXIS Team user accounts can change the password to connect to the shared-storage system in the Client Manager, but cannot use that password to log into the Management Console. Team users cannot access the Avid NEXIS directly. For more information on Team users, see the Avid NEXIS Administration Guide.
> **Note:** IfyourusernameandpasswordaredifferentforyourclientsystemandyourAvidNEXISaccount,your
systemcannotautomaticallyreconnecttothemedianetworkwhenyourestartyoursystem.
To change your Avid NEXIS account password:
1. Open the Client Manager.
2. Connect to the Avid NEXIS system for which you want to change your password.
3. Select the Change the Password option.
- Click the Change Password button in the Systems panel.
- Right-click on the Avid NEXIS system and select Change Password.
The Change Password dialog opens.
4. Type your existing password in the Old Password text box.
5 Using the Avid NEXIS Client Manager
5. Type your new password in the New Password text box.
> **Note:** TheClientManagersupportsonlyASCIIcharactersinuserpasswords.
6. For confirmation, type the password again in the Confirm New Password text box.
7. Click the green check mark to apply the changes or click the red X to close the dialog box without
any changes.
Disconnecting from an Avid NEXIS System When you disconnect from an Avid NEXIS system, Workspaces are unmounted.
> **Note:** IfyouclosetheClientManagerwithoutdisconnectingfromtheAvidNEXISsystems,allAvidNEXIS
connectionsremainconnected,andmountedWorkspacesstaymounted.
To disconnect from an Avid NEXIS system, do either of the following:
- In the Systems list, select the Avid NEXIS system you want to disconnect from, then click Disconnect.
- Right-click an Avid NEXIS System name and click Disconnect.
> **Note:** TheAvidNEXISsystemnamestaysintheSystemslistsoyoucanconnecttoitagainlater.
Closing and Exiting the Client Manager Closing and exiting (quitting) the Client Manager are two separate operations. Closing the Client Manager window closes the window only; the Client Manager continues running in the background, and any connections to Avid NEXIS systems remain connected, and Workspaces remain mounted.
Exiting (quitting) the Client Manager gives you the option to unmount Workspaces and closes the Client Manager interface. The client system remains connected to the Avid NEXIS systems.
To close the Client Manager:
- Click the red X in the Client Manager window.
To exit (quit) the Client Manager:
1. In the taskbar or notification area, right-click the Client Manager icon, then click Quit.
2. Choose whether or not to unmount Workspaces (click Yes or No).
Workspaces are unmounted (or not), and the Client Manager process stops and the window closes.
6 Performing Operations without the Client Manager 6 Performing Operations without the Client Manager In some cases, your client systems might not be able to run the Client Manager GUI, or you might have workflows that require you to use native operating system commands.
This section covers performing some of the functions of the Client Manager using commands in Windows, macOS, and Linux (Ubuntu and Rocky Linux).
Mounting and Unmounting Workspaces Using Windows Commands To mount and unmount Workspaces:
1. Open a Windows command prompt.
2. To mount a Workspace, type the following command:
net use drive_letter: \\Avid_NEXIS_system_name\workspace <password> /USER:<user_name> For example, the following command mounts a Workspace named ingeston an Avid NEXIS system named KLA-Rentalson the G:\ drive, using the administrator name and password:
net use G: \\KLA-Rentals\ingest mYpAsSwOrD /USER:administrator
3. To unmount a Workspace, type the following command:
net use drive_letter: \DELETE For example, the following command unmounts the Workspace mounted on the G:\ drive but does not delete it or its contents:
net use G: \DELETE g YoucanalsousetheWindowsMapNetworkDrivefunctiontomountaWorkspace.
Mounting and Unmounting Workspaces Using macOS Commands To mount a Workspace, type:
mount_avid -U <username>:<password> <AvidNEXISname>:Workspace_name> /Volumes/<mount_point> For example:
mount_avid -U administrator:avid AvidNEXIS:ingest /Volumes/ingest To unmount a Workspace, type:
umount <AvidNEXISname>:<Workspace_name> For example:
umount AvidNEXIS:ingest 6 Performing Operations without the Client Manager To mount a CIFS-reshared Workspace using commands:
1. Create a mount point:
mkdir /Volumes/mount_point For example:
mkdir /Volumes/copy
2. Mount a CIFS share:
mount_smbfs //cifs_username>:<password>@cifs_servername>/share /Volumes/mount_point For example:
mount_smbfs //CIFS_user:avid@B5-05/copy /Volumes/copy To mount a CIFS share using the Finder menu:
1. Click Go > Connect to Server.
2. Type either of the following:
- smb://<server_name>/<share>
- cifs://<server_name>/<share>
To unmount a CIFS-reshared Workspace:
- Use the standard unmount command.
Mounting and Unmounting Workspaces Using Linux Commands To mount all the Workspaces on an Avid NEXIS system:
1. Create a mountpoint:
mkdir /mnt/<mountpoint_name> mkdir /mnt/NEXIS_Workspaces For example:
2. Run the following command, specifying the shared-storage system name (not the System Director
name):
mount -t avidfos administrator:<password>@<Storage_System_Name> /mnt/<mountpoint_name> For example: mount -t avidfos administrator:password@KLANews /mnt/NEXIS_ Workspaces
> **Note:** Unlikemanyexternalfilesystemtypes,whichcandesignateserversbyIPaddress,theAvid
NEXIS(avidfos)mountcommandrequirestheStorageSystemName.AnIPaddresswillnot work.
To mount a single Workspace:
1. Create a mountpoint:
mkdir /mnt/<mountpoint_name>
2. Run the following command, specifying the shared-storage system name (not the System Director
name):
mount -t avidfos administrator:<password>@<Storage_System_Name>/ <Workspace_name> /mnt/<mountpoint_name> 6 Performing Operations without the Client Manager For example: mount -t avidfos administrator:password@KLANews/Workspace1 /mnt/NEXIS_Workspaces
> **Note:** Unlikemanyexternalfilesystemtypes,whichcandesignateserversbyIPaddress,theAvid
NEXIS(avidfos)mountcommandrequirestheStorageSystemName.AnIPaddresswillnot work.
g foralistofpossiblesolutions.
To unmount all Workspaces:
1. Run the command:
umount /mnt/<mountpoint_name> For example: umount /mnt/NEXIS_Workspaces To unmount a single Workspace:
1. Run the command:
umount /mnt/<SharedStorage_System_name>/<Workspace_name> For example: umount /mnt/KLANews/Workspace1 Capturing Client Logging Information If you encounter a problem with the client, you can set a trace flag, redo the operation that caused the client failure, then save the log (take a snapshot) to send to Avid Customer Care.
The following steps apply to both Ubuntu and Rocky Linux.
To capture a client log on Linux:
1. Set the appropriate trace flag (logging mask):
/usr/bin/avidfos_ctrl -s 0xdddddddd
2. Re-run the operation that generated the failure.
3. Save the log (take a snapshot):
/usr/bin/avidfos_ctrl -da Dumping Client Logs If requested by Avid Customer Care, you can capture logs from your Linux client. You can assign any name to the dumpfile.
To dump Ubuntu and Rocky Linux client logs:
- /usr/bin/avidfos_ctrl -d file=/tmp/dumpfile_name,t
7 Troubleshooting 7 Troubleshooting If you experience problems while working — such as losing your connection to an Avid NEXIS system, being unable to connect to a system or mount a Workspace that you could previously, or noticing workflow performance changes — consult the following sections for possible reasons and solutions.
> **Note:** OnWindowsclients,theClientManagericonintheTaskbarchangescolorifaproblemoccurs.
Also check the color of the Workspace icons (see "Workspace Information" on page 42) and open the Logs panel to see any messages about lost connections, lost Workspace access, and other issues.
Connection Issues Connection issues include being unable to connect to an Avid NEXIS, being unable to mount Workspaces, or experiencing dropped connections.
Possible reasons:
The Avid NEXIS administrator changed (or deleted) your account (user name, password, individual
- Workspace access, or your group membership or group’s Workspace access).
If your account is deleted (or your access changes) while you are connected, the Workspace icons change color. You remain connected to the Avid NEXIS system and the Workspaces remain mounted until you unmount them or disconnect, but you cannot reconnect or remount them.
- The Avid NEXIS system has reached the limit on the number of supported active connections, or has
reached the maximum system bandwidth.
The administrator deleted or renamed the Workspace.
- The Avid NEXIS system was shut down, or is restarting after a software update or other system
- change that requires a reboot. If connection to the Avid NEXIS system is lost, a message appears in
the Log pane of the Client Manager window. On Windows clients, the Client Manager icon in the Taskbar changes color.
- The license on the Avid NEXIS system expired.
Only two (read-only) clients are allowed to reconnect and remount Workspaces, on a first-come, first-served basis, until the license has been renewed.
The administrator changed the name or IP address of the Avid NEXIS system (this is not common).
- The operating system is not providing the NEXIS Client with the network interface speed that you
- want to use.
Suggested solutions:
- Contact your Avid NEXIS administrator.
- If applicable, update the name or IP address in the Remote Hosts menu. See "Adding and Removing
Remote Hosts (System Directors)" on page 32.
- If a mounted Workspace was deleted, its icon becomes yellow. The Logs panel shows a message that
the Client Manager cannot validate the connection. After you unmount the Workspace, its Workspace name is removed from the list after a few minutes.
If a mounted Workspace was renamed, its icon becomes yellow and the new name is shown in the
- Workspace-A(Now Workspace-B).
Workspace column. For example: The Workspace remains mounted. If you unmount and remount it, the Workspace column changes to the new name and the icon is green.
7 Troubleshooting If you are unable to mount the NEXIS workspace on a Linux client and receive this error
- mount.avidfos: Failed to mount: FAIL(EHOSTUNREACH):No route to host,
edit the AvidRegistry file to call out the network interface name and speed.
Do the following steps:
1. Use your preferred text editor (nano, vi, for example), and run this via ‘sudo’ elevated
privileges.
sudo vi /etc/AvidRegistry
2. Type i to start editing and scroll down to the last line.
3. Uncomment the line to override the speed of the specified ifname used in the
AvidFos\Parameters\UseIfnames AvidFos\Parameters\NicSpeedOverrides <interface_name>:<interface_ speed_in_Mbps> Example:
4. Press ESC to exit out of insert mode.
5. Enter :wq to save the changes and exit.
6. Run the following command to re-read the AvidRegistry file
avidfos_ctrl -r
7. Try mounting the Avid NEXIS workspaces.
Performance Issues Performance issues include dropped frames, underruns, playback issues, and greater than expected bandwidth consumption.
Possible reasons include, but are not limited to, the following:
Reason Solution The administrator is removing a Media Pack Contact your Avid NEXIS administrator and update the system from the system, or the system is performing name or IP address in the Remote Hosts menu. See "Adding and a redistribution. Removing Remote Hosts (System Directors)" on page 32.
Wrong Client Type is set See and "Setting or Changing the General Preferences" on Wrong network interface, or more interfaces See "Configuring the Network Interface" on page 34.
selected than necessary Bandwidth limit was set in error, or the Avid Check and adjust the bandwidth settings as needed; see NEXIS administrator changed (or deleted) "Creating or Releasing Bandwidth Reservations" on page 38.
your bandwidth limit.
If that does not resolve the problem, contact the Avid NEXIS administrator.
Flow Control Rx is not enabled on the switch See the documentation for your switch or contact your Avid port for the connection to the Avid NEXIS NEXIS administrator.
system (important for workstations with 10Gbps and higher adapters).
7 Troubleshooting Reason Solution A firewall or anti-virus program is reducing Disable Crowdstrike on clients with 10Gbps or higher network performance (for example, CrowdStrike with interface cards.
10Gbps and higher on macOS and Windows, which is not supported) UDP or TCP ports needed for Avid NEXIS See the Avid Networking Port Usage Guide, on the Avid NEXIS communication is being disallowed (possible Documentation KB page, or contact your Avid NEXIS or IT misconfiguration) administrator.
Disk is failing or has failed To check the disk or Media Pack status, contact your Avid NEXIS administrator or log into the Avid NEXIS Management Console (if you have login credentials) and see the Avid NEXIS Administration Guide for more information.
Running Connection Tests (for Avid NEXIS | EDGE) In an Avid NEXIS | EDGE workflow, you can test the connection between a Windows or macOS client and a remote Avid NEXIS system running version 2022.12 or higher to establish the maximum bandwidth and latency between them. This is primarily intended for troubleshooting problems in the network.
> **Note:** Whilerunningaconnectiontest,refrainfromallothernetworkactivity,suchasediting,downloading
files,browsingtheInternet,andsoon.
To run a connection test:
1. In the Client Manager, open the Systems panel.
2. If the target Avid NEXIS system is listed and connected, right-click the system name and select
Connection Test from the pop-up menu.
3. If the target Avid NEXIS system is not listed or not connected, do the following:
4. Click Connection Test.
5. In the Connection Test dialog box, enter the IP address for an Avid NEXIS system, then press Enter or
click the green check mark.
6. To run a test on another Avid NEXIS system, enter its IP address, or click the red X to close the dialog
box.
A command window opens and runs the test. The window closes when the test completes.
In the Logs panel, a message is displayed when the test starts and completes.
As requested by your Avid support contact, you can navigate to the location of the log files and open them with any text editor. Avid support can help you interpret the results.
The test results are saved in the following directory:
C:\Program Files\Avid\Avid NEXISClient\Utilities\
- Windows:
NetworkUtilities\logs
- macOS: /Library/Logs/AvidNetworkUtilities/
8 Avid PathDiag Tool 8 Avid PathDiag Tool The Avid PathDiag tool is a diagnostic utility that allows you to validate your Avid NEXIS storage group by quantifying the throughput of Windows or Mac editing applications accessing Avid NEXIS Workspaces. The Avid PathDiag tool can also test the throughput from local storage elements and any other shared storage to which a client has access.
> **Note:** AsofAvidNEXISVersion2020.3,thePathDiagtoolisnolongeravailableformacOSclients.To
continueusingPathDiagTool,youmusthaveaWindowssysteminyournetworkthatcanrun PathDiagandconnecttotheAvidNEXISsystem.
g ThePathDiagToolprovidesbasicdiagnostics.Formorerobusttestsandresults,usetheAvid BenchmarkUtility.SeetheAvidBenchmarkUtilityGuideformoreinformation.
To start the Avid PathDiag tool:
- (Windows) Select Start, All Programs, Avid, NEXIS Client, PathDiag.
The Avid PathDiag tool opens.
PathDiag Tool Interface
- File Access Protocol used in the test:
  - Automatically Select: Selects a protocol automatically; generally, the tool selects the Win32
File API protocol
  - Win32 File API: The protocol for local disks, mounted Workspaces, and network file shares
  - Self-Test: Runs a test without performing read or write operations. Used to bechnmark the tool
without any I/O affecting the results.
The I/O operation indicator (Reads or Writes)
- I/Os box: The number of I/Os completed
8 Avid PathDiag Tool Current Rate (MB/s) box: The current calculated throughput or bandwidth for recently completed I/O
- operations
- Average Rate (MB/s) box: The average calculated throughput or bandwidth for recently completed
I/O operations
- Errors box: The total number of errors encountered during the test, for both reads and writes, and can
include errors related to:
  - Opening or closing data files
  - Validity of the specified file system path
  - User access privileges
  - Read or write operations
The bottom part of the results area displays a graph. While a test is running, you can use the Zoom slider to show details for a larger or smaller span of time. The default time scale on the X axis is 0.00 to 120.00 seconds (the default 2-minute test run).
The Test Results graph plots results measured over time, which is particularly useful when you want to observe trends or patterns in performance.
For example, if another process is running that creates a periodic high demand on the storage subsystem being tested, you might see a periodic drop in observed throughput in the Test Results graph.
The Test Results graph shows the following:
Item Description Average The average throughput or bandwidth (in megabytes per second), plotted over time.
Read or Average Write Recent Read The calculated throughput or bandwidth (in megabytes per second) for recent I/O operations, or Recent plotted over time.
Write Peak Read The peak latency for individual I/O operations (either reads or writes) that have been completed or Peak over a short period of time. A high measurement indicates a longer period of time was needed for Write the operation to complete.
MS/100 Because only the highest (peak) measurement over a short period of time is displayed, a single high peak could be accompanied by many low-latency operations that do not appear in the graph.
> **Note:** WhenyouruntheNetworkConnectivitytest,theTestResultsgraphdisplayisreplacedwithatableof
resultsgeneratedbythetest.Formoreinformation,see"SettingUpaNetworkConnectivityTest"on page 64.
Configuring PathDiag Tests You can run one of the predefined standard tests, or create a custom test.
g Beforerunningthetest,mountatleastoneWorkspaceintheAvid NEXISsharedstoragenetwork.
Setting Up a Standard Test PathDiag contains the following predefined tests:
8 Avid PathDiag Tool DV-25 Reads (~4MB/sec @ 1024K) 10:1m Writes (~5.5MB/sec @ 1024K) DV-25 Writes (~4MB/sec @ 1024K) 14Z:1 Writes (~3.3MB/sec @ 1024K) DV-50 Reads (~8MB/sec @ 1024K) IMX30 Reads (~5 MB/sec @ 1024K) DV-50 Writes (~8MB/sec @ 1024K) IMX30 Writes (~5 MB/sec @ 1024K) 4:1s Writes (~3.8MB/sec @ 1024K) Avid NEXIS Read/Write (unlimited @ 4096K) To set up a standard test:
1. Click Setup.
The PathDiag tool Settings dialog box opens.
2. Do the following:
a. Choose a Test Name from the drop-down list.
The predefined tests perform reads or writes at a bandwidth similar to that required for DV 25, DV 50, IMX 30, or low resolution operations.
The Avid NEXIS Read/Write test is a good standard test because it includes unlimited bandwidth used to ascertain the available performance of the end-to-end path.
b. Select a path to the Workspace to test, or enter it in the field. This can be a UNC path (for example, \\myMachine\myShareFolder\subfolder).
c. Set the test duration in minutes (2, 5, or 10), and whether or not to loop the test indefinitely.
When you select Loop, the test runs until you click Stop. The Loop operation follows true loop behavior: At the end of the specified duration, the test stops, intermediate test files are cleaned up, and the test repeats using the cleaned-up intermediate test files.
3. Optionally, specify paths and file names for test and error log files as follows:
a. Click Optional Log Files.
The Avid NEXIS PathDiag Optional Log Files dialog box opens.
b. Type a path name and a file name in the Log File text box, or click Browse to search for a file name.
8 Avid PathDiag Tool c. Type a path name and a file name in the Error File text box, or click Browse to search for a file name.
d. Click OK to close the dialog box.
Setting Up a Custom Test In addition to the standard, predefined tests, the PathDiag tool allows you to configure custom tests using the following options:
Parameter Description File Access PathDiag tool supports more than one interface or protocol for accessing data. This option Method allows you to control which interface is used. Choose one of the available settings:
Automatically select — PathDiag tool selects a protocol automatically for testing the
- selected path. Generally, the tool selects Win32 File API for the specified path.
- Win32 File API — PathDiag tool uses the Win32 File API for its data file access. .
- Network Connectivity Test — PathDiag tool runs a high-level test to verify network
connectivity. For more information on the network connectivity test, see "Setting Up a Network Connectivity Test" on page 64.
- Self-Test — PathDiag tool runs a test without actually performing any read or write
operations. This is usually done to benchmark the tool without disk input/output actions affecting the results.
Reads vs PathDiag tool supports testing that focuses on Reads or Writes, or that alternates between Writes Reads and Writes. Select a testing mode:
Writes, then Reads — The utility alternates between Write and Read tests.
- Approximately half of the test duration is allocated to reading, and the other half is
allocated to writing.
- Writes Only — The utility writes test data files and measures the throughput obtained
during Write operations.
- Reads Only — The utility reads test data files and measures the throughput obtained
during Read operations.
One or more test data files are written as sample data for testing; however, the Writes required to set up the test are not included in the throughput measurements.
Transfer Size This option controls the amount of data the test utility attempts to read or write during a single (KB) I/O. Some software (like audio applications) uses smaller I/Os. Video applications use larger I/Os. Depending on the client application, you can select a typical I/O size for your application and run a PathDiag to see the results that you can expect from your client running that application.
In some cases, you might set the Transfer Size to large I/O sizes to test switch performance.
> **Note:** For10Gbpsconnections,therecommendedTransferSizeis32768withaTransferRateof
unlimited.
Transfer Rate The utility can attempt to perform I/O at a variety of fixed transfer rates. This is useful for (KB/S) simulating the behavior of applications that have a known data rate. You can select a data rate where I/Os do not exceed a particular limit.
A special unlimited transfer rate setting is also available. When you select the unlimited transfer rate, the PathDiag tool performs I/O operations as fast as possible while being 8 Avid PathDiag Tool Parameter Description affected by all aspects of the total system being exercised.
Max File Size This option controls the maximum size of test data files created for Reads or Writes. This option (MB) might affect throughput measurements. For example, at any given data rate, a smaller file is opened and closed more often than a larger file, creating more overhead. The default file size is 100 MB.
The Max File Size setting is very useful when creating custom PathDiag tests. To test pure disk I/O throughput, run multiple instances of PathDiag using the largest supported file size of 2000 MB.
Use named This option changes the way that the Path to Test parameter is used, and the option is common file intended for advanced users only. When you select this option, the Path to Test parameter for Reads must specify a full path, including a file name. The test utility uses the named file for its Read tests.
The utility creates the file if it does not exist and deletes it at the end of testing. For this reason, the named file should not already exist unless you want it to be deleted when the test is completed. With this option selected, you can run PathDiag tool on multiple clients simultaneously and supply the same file name.
This allows PathDiag tool applications running on multiple clients to read a common file. (The file is created as needed, and the last PathDiag tool application to stop deletes the file.) To set up a custom test:
1. Click Setup in the Settings area. Custom Test in the PathDiag tool Settings dialog box.
2. In the Avid PathDiag Settings dialog, click Custom Test.
The dialog box expands to display the Custom Test Settings area.
3. Select the custom test parameters as described in the previous table.
4. Click OK.
8 Avid PathDiag Tool Setting Up a Network Connectivity Test The PathDiag tool provides a high-level verification of network connectivity when you select Network Connectivity Test as a custom test parameter. The Custom Test Settings area of the Avid NEXIS PathDiag Settings dialog box allows you to list up to 8 network hosts to test. Results display in the Test Results graph area of the PathDiag tool.
To set up the Network Connectivity Test:
1. In the Settings area, click Setup.
2. In the Avid PathDiag Settings dialog box, click Custom Test.
The dialog box expands to display the Custom Test Settings area.
3. In the File Access Method menu, select Network Connectivity Test.
The Network Hosts list displays the available systems in your network.
4. Type the host name or the IP address of up to eight (8) network systems you want to test.
5. (Optional) Set the Ping Data Buffer Size. The default buffer size is 8192 bytes, and the maximum
buffer size is 64 KB.
6. Click OK.
When you run the Network Connectivity test, results display in the Test Results graph area of the 8 Avid PathDiag Tool PathDiag tool.
The following table describes the test results.
Network Connectivity Results Category Description Source The IP address of the client system Target The host name and IP address of the target system Sent The number of packets sent Recv The number of packets received Lo RTT (ms) The minimum round-trip time (in milliseconds) Hi RTT (ms) The maximum round-trip time (in milliseconds) Avg RTT (ms) The average round-trip time (in milliseconds) Lo Hops The minimum number of forwarding routers in the path between the source and the target system Hi Hops The maximum number of forwarding routers in the path between the source and the target system Avg Hops The average number of forwarding routers in the path between the source and the target system % Lost The percentage of the packet lost in the test Starting and Stopping the Test To start the currently configured test:
- Click Start in the PathDiag tool main window.
The test runs for the specified duration and then stops automatically. The elapsed time a test has been running and the remaining time are displayed in the Control area. If you selected the Loop option in the PathDiag tool Settings dialog box, the test runs indefinitely. In this case, the word LOOP appears in the Time Remaining display in the main window.
8 Avid PathDiag Tool To stop the currently running test:
- Click Stop in the PathDiag tool main window.
Understanding PathDiag Test Results This section provides information to help you interpret test results displayed in the PathDiag tool main window.
Average Rate Calculation The average data rate is calculated over the duration of the test. This calculation includes the time the utility requires to open and to close the test files, so the test file size (which you can configure for custom tests) can affect the overall measured throughput.
Also, if the throughput is slow as the test is starting, this might be reflected in the average rate. For example, if the target bandwidth is 4.0 MB/s, the actual average rate calculated at the conclusion of the test might be 3.98 or 3.99 MB/s.
Performance Graph The graph of results over time can help experienced users obtain information about system performance.
Look for the following:
- Trends: Does the system perform at a consistent rate over time? Is there an upward or downward
trend in performance measured over time? If you notice a trend, it might be helpful to perform testing over a longer period of time to determine if the trend continues over longer durations or if a recurring pattern emerges.
It is normal for the maximum read bandwidth to be greater than the maximum write bandwidth.
Patterns: Is there a momentary drop in performance that occurs at consistent or varied intervals?
- Patterns can emerge as a result of implementation details and the configuration of a particular
system (for example, caching strategies or physical memory), or they might indicate a load on a system that is occurring periodically.
Changes in performance as load varies: What occurs when a subsystem is placed under a load by
- other users (or PathDiag tool is running on another client)? It might be easier to observe these
interactions by inspecting the plot of performance results over time.
Measurement Strategy Throughput measurements are plotted periodically (approximately every 5 seconds) and represent a snapshot of performance at the time of the plot. This limits the amount of data that is plotted, which otherwise could include a very large number of data points. As a result, the performance graph could miss a momentary drop or increase or a peak in performance that occurs between plot points. The average rate calculation reflects the impact of such a dip or spike, even if the actual size of a momentary variation does not appear in the graph.
Test Result Interpretation If your results fall below optimal performance, check to see if your bandwidth is limited. You can use the Avid NEXIS Management Console to check your user bandwidth and your device bandwidth (see the Avid NEXISAdministrationGuide). If your bandwidth requirements are greater than the reservations set in the Management Console, your Avid NEXIS administrator can adjust the limits.
These results represent guidelines for Avid-qualified systems; performance on your system might vary.
9 Avid NEXIS Log Utility 9 Avid NEXIS Log Utility The Avid NEXIS Log Utility, primarily used by Avid Customer Support, shows logging information for the Avid NEXIS client. This utility is installed with the Avid NEXIS client software and helps to diagnose client issues using a common user interface for Windows and macOS clients.
With the Log Utility, you can:
- Use predefined or custom trace filter masks to gather events of interest
- Capture, view and save continuous logs and snapshots
Starting the Log Utility To start the Log Utility:
- (Windows) Click Start, Programs, Avid, Avid NEXIS Client, Avid NEXIS Log Utility.
- (Mac) Launch AvidNEXISLogUtility from Spotlight or from the Launchpad. Alternatively, from the
Finder, click the Go menu and select Application, AvidNEXIS, Avid.
The Log Utility opens.
Choosing a Logging Profile The Logging Profiles are preset to capture specific event types for specific failures or investigations. You cannot save any changes to the predefined settings. However, you can use a predefined setting as a template from which to create a custom test. The predefined profiles are:
Logging Profile Notes Default These logs capture general Avid NEXIS client problems. Use this profile if you are unsure of which profile to use.
Client Hang Select if the editor stops while capturing, playing, consolidating, or transcoding to an Avid NEXIS Workspace, and you want to see if the unexplained client failure is associated to Avid NEXIS functions.
File or Workspace Select if the Avid NEXIS client cannot mount or access files within a Workspace, or it Access receives errors when accessing Workspace files.
9 Avid NEXIS Log Utility Logging Profile Notes I/O Timeouts Select if the Avid NEXIS editing client displays “semaphore timeout” messages or “delayed write failures,” or drops frames while working with media on a Workspace.
OAM Captures sets of logs pertinent to the OAM, if running, on the local host.
Redistribution Select if the Avid NEXIS client is experiencing errors, displaying messages, or dropping Problems frames while the Avid NEXIS system is in the process of a redistribution. Although client performance is expected to drop during redistribution, these problems are less likely to occur under light loads and low resolutions.
Choosing Logging Tools In the Tools section, you can set different flags or continuous logging options before starting the capture.
- Trace buffering—Click the check box to enable or disable flags. You will see the resulting flag mask in
the Current text box under the check boxes. You can also type values directly into the Current text box.
During continuous logging, two streams are created: one for the trace buffer, and one for the IO stats
- (Nt stats). Collecting continuous logs over a long period (for example, overnight) can result in a log
file too large to be helpful. Use the settings in the Continuous Logging section to control the number of log files, the total size of all the log files (in MB), or the number of seconds to collect logs.
g Forcontinuouslogging,makesuretoselecteitherNTortheTraceBuffer.
For best results, choose the smallest window that will capture enough of the events of interest. For example, if an event of interest happens every 10 minutes and you want to capture a 60-minute window, check the Enable check box for each of Trace Buffer and Nt Stats, check the Time box for each column and enter 3600 (seconds) in each of the time text boxes, as shown in the figure below.
g ClickApply,thenclickClose.(IfyoudonotclickApply,yourchangesarenotsavedandused.) 9 Avid NEXIS Log Utility Log Utility Capture Options You can choose between two types of capture:
- Snapshot, which captures recent events kept in a memory buffer. Typically, you use Snapshot to
capture history when some unexpected event has just happened.
- Continuous Logging, which captures events for arbitrarily long periods. Typically, you use
Continuous Logging to capture history for rare or difficult-to-detect events.
When you have determined which type of capture is needed and set the appropriate options, make the capture.
Capturing a Recent Event (Snapshot Capture)
> **Note:** Dependinghowbusytheclientisandwhichtraceflagsareset,theinternaleventbuffermightcontain
averysmalltimeslice,rangingfromlessthanasecondtomorethanaday.
To capture an event that just occurred:
1. Click Take Snapshot to capture the trace log.
2. Click Save Snapshot (which also creates a new snapshot) to save the log to a text file. (You can
immediately see the most recent snapshot by clicking Show Display in the Tools section.)
3. Collect the log files you have saved and send them to the service personnel that requested them.
Capturing Continuous Logs To capture something that may take time to recur, use continuous logging.
To capture a continuous log:
1. Click Clear Log before starting continuous logging to remove uninteresting history from the top of
the log file.
2. Click Start Continuous Log.
3. Leave the Log Utility open for as long as the Continuous Log is running. This might be for minutes,
days, or weeks. Generating the event may require that you perform a series of reproduction steps.
4. When the event has occurred, return to the Avid NEXIS Log Utility and click Stop Continuous Log.
When you stop the continuous log, the files are compressed and saved to the following location depending on your operating system:
- Windows (workstations and servers) — C:\Users\<username>\NEXISLogUtility
- Mac OSX — /Users/<username>/NEXISLogUtility
You can change this location in the Logging Directory section of the Current Settings dialog.
5. Click Show Display or Save Snapshot to view or save the results.
6. Collect the log files you have saved and send them to the service personnel that requested them.