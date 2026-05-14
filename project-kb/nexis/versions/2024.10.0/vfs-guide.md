---
product: nexis
product-area: shared-storage
version: "2024.10.0"
release-date: 01/10/2024
doc-type: vfs-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Using This Guide Using This Guide NEXIS® The Avid software-defined storage system provides a high-performance distributed file system that uses high-capacity shared media storage for workgroups of connected devices. This guide describes how to manage your storage system.
Unless noted otherwise, the material in this document applies to the Windows®, macOS®, and Linux operating systems. The majority of screen shots in this document were captured on a Windows system, but the information applies to all operating systems. Where differences exist, information on the differences is provided.
The documentation describes the features and hardware of all models. Your system might not contain certain features and hardware that are covered in this guide.
Who Should Use This Guide This guide is intended for users who will manage the Avid NEXIS media network. You should have a basic understanding of how to use and manage the Windows operating system or the macOS systems, and you should be familiar with basic workgroup and network concepts.
Revision History
> **Note:** The VFS Gateway application version is always the same as the Avid NEXIS version because they are bundled into
the same installation kit, even if no changes were made in the Gateway application itself. Changes specific to this application are noted.
Date and Version Description of Changes October 2024 Updated the installer names to include the word 'for' before the trademarked names of the operating systems.
July 2024 Added the samba libraries required to install the Avid NEXIS | VFS Gateway.
March 2024 Clarified that VFS Gateway can be used on a VM or a physical server December 2023 (Version 2023.7.0 and Added client count information higher) July 2023 (Version 2023.7.0) Modified Client and VFS Gateway upgrade instructions September 2022 (Version 2022.9.0) Renamed from Avid NEXIS | Linux File Gateway; support for CentOS 7.9 August 2021 (Version 2021.8.0) Added troubleshooting steps for Configuration Test Wizard to this guide (no software changes) May 2021 (Version 2021.5.0) Added Configuration Test Wizard to File Gateway March 2021 (Version 2021.3.0) Support for CentOS 7.8 on VM; share names now editable; share names no longer include Avid NEXIS name by default Jan/Feb 2021 (Version 2020.7.5) Added info for selecting correct interface for embedded clients; other corrections March 2020 (Version 2020.3.0) Added SMBv3 information, offline activation support December 2019 (Version 2019.12.0) Initial release Using This Guide Symbols and Conventions Avid documentation uses the following symbols and conventions:
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
Italic font Italic font is used to emphasize certain words and to indicate variables.
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
1 Avid NEXIS | VFS Gateway Overview and Installation 1 Avid NEXIS | VFS Gateway Overview and Installation This chapter describes the Avid NEXIS | VFS Gateway operation, and includes the steps to install a new configuration or update a current one. The resources and network requirements specified in this document are applicable for deploying the Avid NEXIS | VFS Gateway on both virtual machines and physical servers.
> **Note:** In versions 2019.12 through 2022.7, the product name was Avid NEXIS | Linux File Gateway. As of
version 2022.9, the name changed to Avid NEXIS | VFS Gateway. This document refers to the old name where applicable, but both names apply to the same utility.
> **Note:** Starting with Avid NEXIS 2024.10.0, the installer names have been updated to include the word 'for'
before the trademarked names of the operating systems.
Overview and Operation Avid NEXIS | VFS Gateway (formerly Avid NEXIS | Linux File Gateway) is a Linux-based application that you can deploy on a physical server or in a CentOS Virtual Machine (VM) environment. It enables network users to access Avid NEXIS Workspaces in a non-realtime scenario.
> **Note:** Not supported for connecting to Avid ISIS Workspaces.
The VFS Gateway acts as an intermediary between Avid NEXIS Workspaces and computers that cannot use the Avid NEXIS Client; for example, on unsupported devices, or those running unsupported operating systems, or those that rarely attach and do not warrant the overhead of installing and configuring the Client.
The VFS Gateway is not designed or intended as a replacement or alternative to the Avid NEXIS Client Manager.
As the administrator of the VFS Gateway system, you connect an Avid NEXIS system and share the Workspaces the users need to access. Users then connect to the Workspaces by mapping a network drive to the shared Workspace name through a CIFS share.
Depending on the users’ access permission, they can read, write, and delete files on Workspaces without using the Avid NEXIS client software.
Any client operating system that supports Server Message Block Version 3 (SMBv3) can connect to an Avid NEXIS | VFS Gateway shared Workspace.
An Avid NEXIS | VFS Gateway can connect to only one Avid NEXIS system. However, you can configure multiple VMs running the VFS Gateway software that all connect to the same Avid NEXIS to improve performance and support large numbers of users connecting to shared Workspaces.
Note the following:
- One VFS Gateway connection is counted as one client connection to the Avid NEXIS system.
- Each VFS Gateway connection counts against the maximum number of client connections supported
by your system; see the Avid NEXIS ReadMe for more information.
SMB connections (from clients to the VFS Gateway) do not count against the client connection limit.
- The number of SMB connections depends on the resources available on the VFS Gateway server.
- Each SMB connection uses CPU, RAM, and networking resources.
1 Avid NEXIS | VFS Gateway Overview and Installation One VFS Gateway (with multiple Clients) to Avid NEXIS Multiple VFS Gateways (with multiple Clients) to Avid NEXIS Deploying a VFS Gateway System Deploying a new Avid NEXIS | VFS Gateway system involves the following steps:
1. Reviewing the "Prerequisites for New Deployment" on the next page and "Preparing the Environment"
If you have an existing VFS Gateway system, you can upgrade the Avid NEXIS Client software and the VFS Gateway software; see "Upgrading a VFS Gateway System" on page 20.
1 Avid NEXIS | VFS Gateway Overview and Installation Prerequisites for New Deployment Install Avid NEXIS | VFS Gateway on any server hardware. Servers with single and dual 1Gbe and 10GbE NICs are supported.
You will need the following applications, software and tools to successfully deploy an instance of Avid NEXIS | VFS Gateway on a server or in a virtual machine:
Application, Software or Tool Description VM environment (VM deployments VMware ESXi, VMware Workstation Player, VMware Workstation Pro, only) Oracle VM VirtualBox CPU cores 2 minimum, 4 recommended Memory 8GB minimum, 16GB recommended Disk space 100GB Network interface 1Gbps minimum, 10Gbps recommended format1 CentOS in DVD ISO Operating system to be installed on the server or in the VFS Gateway VM Samba Libraries Samba libraries to be installed before running the Avid NEXIS | VFS Gateway CentOS 7.9 client installer:
samba-common-libs = 4.10.16-18.el7_9.x86_64
- samba-libs = 4.10.16-18.el7_9.x86_64
- samba-client-libs = 4.10.16-18.el7_9.x86_64
- These libraries are available through the CentOS package repositories or
online.
Avid NEXIS Client software kit for The Avid NEXIS Client software enables connections from VFS Gateway CentOS2 clients to the shared Workspaces.
File name: AvidNEXISClient_for_el7.centos_n.0.0-nnnnn.bin Avid NEXIS | VFS Gateway software3 Software that enables sharing Avid NEXIS Workspaces to clients File name for version 2022.9 and newer:
File name for older versions:
Avid NEXIS | VFS Gateway license Download from your Avid Master Account activation code WinSCP for Windows, or SCP for File upload utility to copy the binary files to the Avid NEXIS | VFS macOS or Linux Gateway VM PuTTY for Windows, or SSH terminal Optional utility for accessing the VM for Avid NEXIS | VFS Gateway for macOS or Linux installation a See the Avid NEXIS ReadMe for the currently supported version of CentOS with Avid NEXIS | VFS Gateway.
b Always use the current Avid NEXIS Client version; see the Avid NEXIS ReadMe for more information.
c Always use the latest Avid NEXIS | VFS Gateway version; see the Avid NEXIS ReadMe for more information.
1 Avid NEXIS | VFS Gateway Overview and Installation Preparing the Environment Install the tools and software necessary to deploy a server or virtual machine in your environment. This system will host the Avid NEXIS | VFS Gateway. Refer to the table in "Prerequisites for New Deployment" on the previous page for the download locations.
To prepare for the virtual machine creation and software installation:
1. For VM deployment, download a virtual machine application and install it on a physical server.
2. For all installations (this step through the end of the procedure), in a browser, go to
https://www.centos.org/download/ and click x86_64 in the Architecture list to find the nearest mirror site to you.
3. Download the file named CentOS-7-x86_64-DVD-2009.iso and save it (but do not install yet) on the
server.
4. Download the Avid NEXIS CentOS Client software and Avid NEXIS | VFS Gateway software from your
Avid Master Account or from a local Avid NEXIS. See "Prerequisites for New Deployment" on the previous page for file names and supported versions.
5. Download and install WinSCP from https://winscp.net/eng/download.php.
6. Download and install the 64-bit PuTTY application from https://www.putty.org/.
7. Make sure the Avid NEXIS system and the VFS Gateway system are synchronized with a common
time-of-day. For information on setting the Network Time Protocol (NTP), see your Avid Administrator.
Creating and Configuring a Virtual Machine Avid NEXIS | VFS Gateway software runs inside a CentOS-based virtual machine that you configure in your environment.
To create and configure a virtual machine:
1. Use the VM tool of your choice to create a new virtual machine.
2. IMPORTANT: Do not install the CentOS kit during the VM creation. Choose the option to install the OS
later, after the VM is created.
3. Specify a minimum disk size of 100GB.
4. Customize the VM with these settings:
  - Memory: 8GB minimum, 16GB recommended
  - CPU cores: 2 minimum, 4 recommended
  - Network adapter: bridged (connected to physical NIC)
> **Note:** Avid recommends using a static IP address for the CentOS VM. Using DHCP can cause
connection issues with the remote LDAP server.
5. Select the option to create a new DVD/CD (IDE) and browse to the location where you downloaded
the CentOS DVD ISO file.
Installing CentOS When the server or VM is created and configured, install the CentOS DVD ISO binary file you downloaded previously. Install only this CentOS version.
> **Note:** This procedure applies to both server and VM installation. Follow the relevant steps as appropriate for
your environment.
1 Avid NEXIS | VFS Gateway Overview and Installation To install CentOS on a server or in a VM:
1. If applicable, power on (play) the VM.
2. Press Enter to install CentOS.
3. At the “Welcome to CentOS 7” screen, select English, then click Continue.
4. Click “Software Selection” and select “Infrastructure server,” then click Done.
5. Click “Installation Destination,” then under Local Standard Disks select “VMware Virtual Disk
(100GiB),” then click Done.
1 Avid NEXIS | VFS Gateway Overview and Installation
6. Click Network and Hostname, then do the following:
a. Set the Ethernet status to ON.
b. Enter a server or VM host name that is unique within your environment.
c. Click Apply, then click Done.
7. Click Begin Installation.
The installation process begins, as shown:
1 Avid NEXIS | VFS Gateway Overview and Installation
8. When the installation is complete, click Root Password.
9. Enter a new root password, then click Done.
g Keep track of this root password. You will use it to upload files and install the VFS Gateway.
10. Click Finish Configuration, and wait for the installation to complete.
11. Reboot the server or, for a VM, click VM, then click Shut Down Guest.
1 Avid NEXIS | VFS Gateway Overview and Installation
12. Check and make sure you have the following samba libraries installed:
  - samba-common-libs = 4.10.16-18.el7_9.x86_64
  - samba-libs = 4.10.16-18.el7_9.x86_64
  - samba-client-libs = 4.10.16-18.el7_9.x86_64
The Avid NEXIS | VFS Gateway installation will fail if you do not have these required libraries. If you have newer versions of these libraries in the system, uninstall them first and install the samba libraries Installing the Avid Software on the Server or CentOS VM The Avid Client Manager software and Avid NEXIS | VFS Gateway software are included in the Avid NEXIS software kit, which you can download from your Avid Master account or from an Avid NEXIS system that includes it. See "Prerequisites for New Deployment" on page 10. This procedure assumes you have already downloaded the kits.
Install the Client software first, then install the VFS Gateway software. The VFS Gateway installation depends on the presence of the Avid NEXIS Client.
1 Avid NEXIS | VFS Gateway Overview and Installation To install the client and VFS Gateway software on the VFS Gateway server or VM:
1. Start a file transfer program such as SCP or WinSCP and connect to the CentOS VM IP address,
logging in as root with the password you configured previously.
2. Copy the Avid NEXIS Client bin file and the Avid NEXIS | VFS Gateway bin file to the tmp directory:
3. Open an SSH terminal session (such as PuTTY on a Windows client) and log into the VFS Gateway
system or VM with the same root user name and password as in previous steps.
/tmp
4. Change directory to and make the Avid NEXIS Client binary file executable:
chmod +x AvidNEXISClient_for_el7.centos.n.0.0-nnnnn.bin
5. Make the Avid NEXIS | VFS Gateway binary file executable:
1 Avid NEXIS | VFS Gateway Overview and Installation chmod +x AvidNEXISVFSGateway_for_el7.centos.n.0.0-nnnnn.bin
6. Run (execute) the Avid NEXIS Client installer:
./AvidNEXISClient_for_el7.centos.n.0.0-nnnnn.bin
7. Configure the appropriate network interface as follows:
a. Show the available network interfaces:
ip a b. Identify the interface for communicating with the Avid NEXIS system and add it to the /etc/AvidRegistry file:
AvidFos\Parameters\UseIfname <interface_name> c. Save and close the Registry file.
8. Run (execute) the Avid NEXIS | VFS Gateway installer:
./AvidNEXISVFSGateway_for_el7.centos.n.0.0-nnnnn.bin
9. Reboot the server or VM.
Adding the CentOS Host Name to DNS and Active Directory You can add the CentOS host name to your DNS server to let users to connect to the shared Workspaces using the VFS Gateway host name instead of the IP address. If you plan to import LDAP users from an Active Directory service in your environment, also add the VFS Gateway IP address to your Active Directory server.
To add the CentOS Host Name to DNS and Active Directory (if applicable):
1. Turn on the server or power on (play) the VM.
2. Log in to the system as root, with the password you configured during the CentOS installation.
3. Run the command ifconfig to identify the IP address for the Avid NEXIS | VFS Gateway.
4. Run the command hostname -f to make sure this host name is not already being used.
5. Add the CentOS host name and IP address to the /etc/hosts file as follows:
echo “<IPaddress> <FullHostname> <hostname>” >> /etc/hosts 1 Avid NEXIS | VFS Gateway Overview and Installation For example:
echo “192.168.1.123 myvmhostname.global.avidww.com myvmhostname” >> /etc/hosts
6. Add the CentOS host name and IP address to the /etc/resolv.conf file as follows:
echo “<IPaddress> <FullHostname> <hostname>” >> /etc/resolv.conf For example:
echo “192.168.1.123 myvmhostname.global.avidww.com myvmhostname” >> /etc/resolv.conf
7. Ask your IT administrator to connect to the Avid NEXIS | VFS Gateway IP address and join the VFS
Gateway to Active Directory, then verify it, with the following commands:
realm join --user=ITadminuser@mydomain.localmydomain.local realm list [root@FGWVM]# realm list global.acmecorp.com type: kerberos realm-name: GLOBAL.ACMECORP.COM domain-name: global.acmecorp.com configured: kerberos-member server-software: active-directory client-software: sssd required-package: oddjob required-package: oddjob-mkhomedir required-package: sssd required-package: adcli required-package: samba-common-tools login-formats: %U@global.acmecorp.com login-policy: allow-realm-logins
8. Reboot the server or VM.
Activating the VFS Gateway License When you log into a new (unactivated) Avid NEXIS | VFS Gateway, the License tab is displayed. You must activate the license before the other tabs become active. This procedure assumes you have received your Activation ID and System ID from Avid.
You can activate the license online through an Internet connection (direct activation), or offline (indirect activation).
To use direct activation:
1. Open a browser and enter the IP address of the VFS Gateway server or VM.
2. Log in to the Avid NEXIS | VFS Gateway as the administrator (default user name: fgw-admin; default
password: Admin#19).
1 Avid NEXIS | VFS Gateway Overview and Installation
3. On the License page, select the Online activation method from the drop-down list.
4. Enter the Activation ID and System ID, and click Activate.
If successful, the license information is shown in the Status fields, and you see a success message.
To use indirect activation:
fgw-admin; 11.. Log in to the Avid NEXIS | VFS Gateway as the administrator (default user name: default password: Admin#19).
The License tab is displayed, and is the only tab available until the license is activated.
2. Copy the Device ID.
3. On a computer with Internet access, go to https://my.avid.com/products/indirectactivation.
4. Enter your Activation ID. If valid, the screen displays the Device ID and System ID fields.
5. Enter your Device ID (copied in step 2), System ID, and email address and click Submit.
g Entering your email address is recommended so you receive the license file, in case your Internet connection is interrupted before you can download it.
6. Wait a few minutes for the license file to become available.
7. Click Download to retrieve the file. Download it to a location accessible to the Avid NEXIS | VFS
Gateway (either by saving to a USB drive or copying to a shared network folder).
8. On the License page, select the Offline activation method from the drop-down list.
9. Enter the Activation ID and System ID.
10. Browse to the location of the downloaded activation file, and click Submit.
11. You must log out and then back in for the license to be activated. When you log in again, if the
activation was successful, the license information is shown in the Status fields, and you see a success message. The other tabs in the VFS Gateway application are now available.
Changing the VFS Gateway Administrator Credentials Immediately after you activate the license, Avid strongly recommends you change the factory-default VFS Gateway administrator name and password.
1 Avid NEXIS | VFS Gateway Overview and Installation To change the VFS Gateway administrator password:
1. Click the Credentials tab.
2. Enter a new administrator name and password, then click Save.
3. A tool tip describes the password criteria, including length and types of characters the password
must contain.
4. Continue with "Configuring Avid NEXIS | VFS Gateway" on page 23.
Deactivating a License If you activated the license online, you can deactivate it and reuse it if you need to delete and re-create your VM (for example to increase its resources: see "Prerequisites for New Deployment" on page 10). To reuse a deactivated license, the new or modified server or VM must have the same Device ID as before.
If you activated the license offline, and later deactivate it, you will need a new license to reactivate the Avid NEXIS | VFS Gateway.
> **Note:** The Avid NEXIS | VFS Gateway must be connected to the Internet to deactivate a license, regardless of
how it was activated initially.
To deactivate a License:
1. Click the License tab.
2. Click Deactivate.
3. At the warning message, click OK to continue.
The license is deactivated and you must log out.
You must activate the same or a new license to resume using the VFS Gateway. If reusing the same license, all the shared workspaces, users, and Identity Manager settings remain intact from the previous activation.
Upgrading a VFS Gateway System You can upgrade the Avid NEXIS Client software and the Avid NEXIS | VFS Gateway software as long as the CentOS version is compatible with the Avid NEXIS version.
> **Note:** Avid does not support upgrading the CentOS version on the server or VM. To use the latest supported
CentOS version, install the newer CentOS version on the server or create a new VM, as described earlier in this chapter. See the Avid NEXIS ReadMe for the currently supported CentOS versions, and the compatibility between the CentOS version and the Client and Gateway versions.
g Versions of VFS Gateway newer than 2019.12 let you edit Shared Workspace names.
Upgrading the Client and Gateway software involves rebooting the system several times. Schedule this task during a normal maintenance window to avoid disrupting users.
1 Avid NEXIS | VFS Gateway Overview and Installation To upgrade the client and VFS Gateway software on an existing VFS Gateway system:
1. Open an SSH terminal session (such as PuTTY on a Windows client) and log into the VFS Gateway
with the root user name and password.
2. Stop the VFS Gateway service and uninstall the current version:
rpm -qa fgwservice > fgwservice-version-build.x86_64 rpm -e fgwservice-version-build.x86_64
3. Uninstall the current client version:
[sudo] /usr/sbin/avid-nexis-uninstaller
4. Reboot the server or VM.
5. Start a file transfer program such as SCP or WinSCP and connect to the VFS Gateway IP address,
logging in as root with the root password.
1 Avid NEXIS | VFS Gateway Overview and Installation
6. Copy the Avid NEXIS Client bin file and the Avid NEXIS | VFS Gateway bin file to the tmp directory on
the server or VM as shown in the following figure.
> **Note:** Depending on version of the Avid NEXIS system from which you download the VFS Gateway
installer, the file name might be different. The file name makes no difference to this procedure.
7. Change directory to /tmp and make the Avid NEXIS Client binary file executable:
chmod +x AvidNEXISClient_for_el7.centos_n.0.0-nnnnn.bin
8. Make the Avid NEXIS | VFS Gateway binary file executable:
chmod +x AvidNEXISVFSGateway_for_el7.centos_n.0.0-nnnnn.bin
> **Note:** Depending on the version you are using, the file name can begin with either
9. Run (execute) the Avid NEXIS Client installer:
./AvidNEXISClient_for_el7.centos_n.0.0-nnnnn.bin
10. Wait for the Client installation to complete, then reboot the server or VM.
11. Run (execute) the Avid NEXIS | VFS Gateway installer:
./AvidNEXISVFSGateway_for_el7.centos_n.0.0-nnnnn.bin The updated VFS Gateway uses the same license as the previous installation. All the other settings (Identity Manager, users and Workspace access) remain the same. All previously shared Workspaces continue to use their original shared names and clients can still connect to them. Optionally, you can edit the names (see "Changing the Shared Workspace Name" on page 28).
2 Configuring Avid NEXIS | VFS Gateway 2 Configuring Avid NEXIS | VFS Gateway This chapter describes how to configure Avid NEXIS | VFS Gateway, which includes the following operations:
- Determining whether the users will be local or remote. You can choose only one option:
  - Local (default) — You create users manually, and they are authenticated through the Avid
NEXIS | VFS Gateway system.
  - Remote — Users are created, managed and authenticated through a remote service, such as
an LDAP server. You import users from the list configured as part of the LDAP service. The VFS Gateway must have network access to the LDAP server, such as through a LAN inside your facility firewall.
- Connecting to an Avid NEXIS system and sharing Workspaces
- Applying the appropriate permissions for users to access the shared Workspaces
Creating Local Users By default, Avid NEXIS | VFS Gateway uses its own local (integrated) Identity Manager. This procedure assumes you are using the default local Identity Manager. To add remote users managed by an LDAP service, see "Adding Remote Users" on page 26.
> **Note:** The VFS Gateway’s user namespace is independent from the Avid NEXIS user namespace. Users can
access both the VFS Gateway and the storage system, but their user names and passwords can be different on each system. Adding or removing a local VFS Gateway user has no effect on Avid NEXIS users.
Each local user requires the following attributes, which you can change at any time:
- Display Name—This can be the user’s full first and last names, to distinguish them from other users:
for example, Mary Smith. Display names do not need to be unique on the VFS Gateway, in case multiple users have the same name, but you can enter different names to help identify them.
Username—This is the user’s login name: for example, for two different Mary Smiths, you can create
- accounts MaryS and MSmith. Each user name must be unique on the VFS Gateway and must follow
the rules for user names. See the tool tip for details.
- Password—This is the password used to connect to the shared Workspaces when mapping a
connection (see "Using Avid NEXIS | VFS Gateway" on page 31). It does not have to be the same as the user’s regular network password, or their password (if any) to connect to Avid NEXIS. This password is used only for making connections to the shared Workspaces. You must securely inform all Avid NEXIS | VFS Gateway users of their password for this connection.
After you have created local users, you cannot switch to the Remote Identity Manager without losing any existing users and their configured Workspace access. Switching requires re-adding users and reconfiguring their access.
To add local users:
1. Click the Users tab.
2. Click Add.
3. In the User Details section, enter the required information, then click Save.
When you start typing in the Password field, a tool tip opens to show the password requirements.
Enter a password that meets the listed requirements.
2 Configuring Avid NEXIS | VFS Gateway VFS Gateway Display names and LDAP user names do not have to match the user’s network login credentials. However, you must inform each user of the VFS Gateway credentials they need to use to access shared Workspaces.
To remove local users:
1. Click the Users tab.
2. In the VFS Gateway users list, select one or more users, then click Remove user.
Testing the Configuration (Local Users) Before users start connecting to the VFS Gateway system, you can make sure the configuration is correct.
The test checks the most common problems that occur and describes what to fix.
This procedure assumes that you have created at least one local user.
To test the configuration:
1. In the VFS Gateway interface, click Identity Manager.
2. Click Configuration Test.
The VFS Gateway system tests the configuration settings for the VM.
  - If errors are displayed, correct the information and retry the connection test (see
"Troubleshooting Configuration Errors" on the next page). You also might have to repeat one or more steps from "Adding the CentOS Host Name to DNS and Active Directory" on page 17.
  - If all the tests pass, enter any local user’s credentials, then click Sign In. If successful, the
message “Successfully accessed share” is shown.
3. Click Close to exit the Configuration Test.
Creating Remote Users If you do not want to create VFS Gateway users manually, you can configure the Remote Identity Manager in VFS Gateway, then import users from an Active Directory server in your network.
After you have created remote users, you cannot switch to the default local identity manager without losing any existing users and their configured Workspace access. Switching requires re-adding users and reconfiguring their access.
Configuring a Remote Identity Manager To use a remote identity manager:
1. Click the Identity Manager tab.
2. Select Remote Identity Provider.
3. A warning message states that switching between local and remote identity managers will cause you
to lose any currently configured local users and their Workspace access. Click OK to continue.
4. From the drop-down menu, choose a protocol: ldap or ldaps. Enter the appropriate information for
your LDAP server in the other fields. In the User DN field, enter your LDAP user information.
5. Click Save.
6. Continue with "Testing the Configuration (Remote Users)" on the next page.
> **Note:** If the domain name in your organization changes, make sure to change it in the VFS Gateway as
well. Otherwise users will not be able to connect to shared Workspaces.
2 Configuring Avid NEXIS | VFS Gateway Testing the Configuration (Remote Users) Before users start connecting to the VFS Gateway system, you can make sure the configuration is correct.
The test checks the most common problems that occur and describes what to fix.
To test the configuration:
1. In the VFS Gateway interface, click Identity Manager.
2. Click Configuration Test.
The VFS Gateway system tests the configuration settings for the VM.
  - If errors are displayed, correct the information and retry the connection test. You also might
have to repeat one or more steps from "Adding the CentOS Host Name to DNS and Active Directory" on page 17.
  - If all the tests pass, enter your domain credentials, then click Sign In. If successful, the
message “Successfully accessed share” is shown.
3. Click Close to exit the Configuration Test.
4. Continue with "Adding Remote Users" on the next page.
Troubleshooting Configuration Errors If the Configuration Test reports errors, refer to the following table for the likely cause and how to fix the problem. Some of the possible errors relate only to the Remote Identity Manager.
Test Name Description Reasons for How to Resolve Failure Unique Hostname The VFS Gateway host name VFS Gateway has Configure a unique host must be unique within the no host name name for the VFS Gateway network and the name must be and add its IP address is to VFS Gateway IP configured into the DNS server by the network DNS server.
address is not its IP address.
configured in the DNS server VFS Gateway host name is not unique within the network (another host name found with a different IP address) Unique IP Address The VFS Gateway IP address must Another system with Make sure the VFS be unique on the network. the same IP address Gateway IP address is not was discovered on being used already.
the network Hostname The VFS Gateway host name and The /etc/hosts file See "Adding the CentOS Configuration Files IP address must be added to the and Host Name to DNS and /etc/hosts file. /etc/resolv.conf file, Active Directory" on configured or were configured incorrectly.
NetBIOS Domain The NetBIOS configuration is LDAP server host Verify the LDAP server host Name (applies only required for remote LDAP name cannot be name was spelled 2 Configuring Avid NEXIS | VFS Gateway Test Name Description Reasons for How to Resolve Failure to remote user authentication. found correctly configurations) LDAP server host Verify that you can reach name was found but the LDAP server using the the supplied ping command NetBIOS name was not found Register Remote The VFS Gateway host name LDAP server host Verify the LDAP server host Active Directory must be added to the remote name misspelled name was spelled (applies only to LDAP server for authentication of correctly LDAP server is not remote user remote users reachable Verify that you can reach configurations) the LDAP server using the VFS Gateway host ping command name is not registered with the Register the VFS Gateway LDAP server host name on the LDAP server (see "Adding the CentOS Host Name to DNS and Active Directory" on page 17) Remote LDAP This test makes sure that the The user domain Verify the user domain Authentication remote user has been correctly name or password information is correct (see (applies only to configured in the list of users in was not correctly "Adding Remote Users" remote user VFS Gateway. When you enter a configured. below), and retry the configurations) valid user name and password, operation.
the VFS Gateway system attempts to authenticate those credentials against the LDAP server.
Remote LDAP This tests that the remote LDAP If any part of the Verify the user credentials Access (applies user can authenticate and access Configuration Test entered in the only to remote user the VFS Gateway as a Samba failed, this test can configuration test are configurations) client. fail. correct. (Retry the access test.) Local LDAP Access This tests that the local LDAP user If any part of the Verify the user credentials (applies only to can authenticate and access the Configuration Test entered in the local user VFS Gateway as a Samba client. failed, this test can configuration test are configurations) fail. correct. Compare the information on the Users tab (see "Creating Local Users" on page 23) to that entered in the test fields, and retry the access test.
Adding Remote Users This procedure adds users configured as part of your environment’s LDAP service to the list of users who can have access to Avid NEXIS Workspaces.
2 Configuring Avid NEXIS | VFS Gateway The VFS Gateway tool cannot process Active Directory Groups or Users with wildcard characters in the Organizational Unit string (for example, OU=*Groups). Groups with special characters or wildcards can return unexpected results or no results at all.
To adding remote users:
1. Click the Users tab.
2. Confirm that the VFS Gateway is connected to the Remote LDAP server, as shown in the following
figure. If not, click Connect and enter your credentials.
3. The users and groups known to the LDAP server are shown in the list, possibly on multiple pages.
Click the forward or back arrows or the page numbers to see additional pages of groups and users.
4. Use the Filter to search for the group to which the user belongs.
5. Select a group. The members of that group are shown to the right of the group list.
6. Select one or more users (to select all members of the group, click Select), then click Add User.
To remove remote users:
1. Click the Users tab.
2. In the VFS Gateway users list, select one or more users, then click Remove User. The VFS Gateway
does not need to be connected to the Remote LDAP server. This procedure deletes the user from the VFS Gateway users list, not from the LDAP server.
Connecting to Avid NEXIS and Sharing Workspaces Avid NEXIS | VFS Gateway supports connecting to, and sharing Workspaces for, only one Avid NEXIS. If you need to support VFS Gateway access to more than one Avid NEXIS, configure an additional VFS Gateway for each.
The VFS Gateway must be connected to Avid NEXIS only when you are adding shared Workspaces, or to display changes to the Workspaces on Avid NEXIS (Workspaces that have been renamed, added, or deleted). Any currently-shared Workspaces remain shared even if the VFS Gateway is not connected to Avid NEXIS.
There is no limitation on the number of Workspaces you can share with VFS Gateway. However, Windows clients using drive letters to access the Workspaces are limited to 26 connections, minus any existing system partitions.
To share Avid NEXIS Workspaces:
1. Click the System tab.
2. Click Connect.
3. In the dialog box, enter the IP address of the Avid NEXIS system you want to connect to, and the Avid
NEXIS administrator name and password, then click Connect.
2 Configuring Avid NEXIS | VFS Gateway g Make sure to enter the Administrator account and password for the Avid NEXIS system, not the VFS Gateway administrator.
The status bar shows that VFS Gateway is connected to Avid NEXIS.
  - If the VFS Gateway is not currently connected to Avid NEXIS, you cannot see the Workspaces
list in the left panel, but you can still see and remove shared Workspaces in the Shared Workspaces list. You can also add or change user access to those Workspaces (on the Access tab).
  - You do not need to expressly disconnect from Avid NEXIS; but to do so, refresh the browser
window in which VFS Gateway is running, then log back in. The connection to Avid NEXIS is dropped.
4. Because the Workspaces on Avid NEXIS are subject to change at any time, click Refresh to see the
current list.
5. Select one or more Workspaces from the list on the left, then click Share.
If there is more than one page of Workspaces, click the forward or back arrows or the page numbers to see more entries.
g You can select Workspaces from several pages at one time.
Changing the Shared Workspace Name By default, when you share a Workspace, the shared Workspace name is the same as the Avid NEXIS Workspace name. (If you upgraded from Avid NEXIS | VFS Gateway version 2019.12, the existing shared names start with the Avid NEXIS system name, a dash, then the Workspace name; for example, KARentals- Workspace01.) You can change the name after the Workspace is shared, to make them more meaningful or descriptive for the users accessing them. The shared names must be unique. Changing the shared name does not change the name of the Workspace on Avid NEXIS.
You can sort the shared Workspaces by Workspace name or by shared name. If the list spans multiple pages, make sure you check for existing names before changing a shared name to avoid assigning a name that already exists.
If users already have shared names mounted, after you change the name they can no longer connect to that Workspace. Tell users to unmount any shares that you are renaming, and mount them again with the new name.
2 Configuring Avid NEXIS | VFS Gateway To change a shared Workspace name:
1. In the Shared Workspace list, select one or more Workspaces and click Edit Shared Name.
2. You can edit another Workspace name as you are changing others; select the additional Workspaces
and click Edit Shared Name again. All the Workspaces remain editable until you click Save.
3. In the Shared Name text field that becomes active, enter a new name, then click Save.
Removing Shared Workspaces To stop further access to a shared Workspace, you can remove it from the shared list. Users can no longer access that Workspace unless you share it again.
To remove a shared Workspace:
1. Click the System tab.
2. In the Shared Workspaces list, select one or more Workspaces.
3. Click Unshare Workspace.
The Workspaces continue to exist on Avid NEXIS, but VFS Gateway users can no longer connect to them.
Configuring User Access to Workspaces For users to be able to access the Workspaces, you must set user access permissions for the shared Workspaces.
The Toggle View button lets you display users on the left or Workspaces on the left, depending on your goal:
- VFS Gateway Users View—Show users on the left to configure access for a user to multiple
Workspaces at a time
- Shared Workspaces View—Show Workspaces on the left to configure access to a Workspace by
multiple users at a time To configure user access to multiple Workspaces:
1. Click the Access tab.
2. Select a user.
3. In the Workspaces panel, select one or more Workspaces that this user can access, select an access
type, then click Save.
> **Note:** The selected access type applies to all selected Workspaces. To set different access types to different
Workspaces, do them in batches: for example, select multiple Workspaces, select Read/Write, and click Save. Then select other Workspaces, select Read Access, and click Save. Continue until the user has the appropriate access to the Workspaces.
To configure Workspace access by multiple users:
1. Click Toggle View to display Workspaces on the left.
2. Select a workspace.
3. In the Users panel, select one or more users that can access this workspace, select their access type,
then click Save.
2 Configuring Avid NEXIS | VFS Gateway
> **Note:** The selected access type applies to all selected users. To set different access types to different users,
do them in batches: for example, select multiple users, select Read/Write, and click Save. Then select other users, select Read Access, and click Save. Continue until the workspace has the appropriate access by all the necessary users.
Accessing VFS Gateway Logs The VFS Gateway logs are stored in the VFS Gateway in the following directories:
Log Path Description or Use /avid/logs Installation and application logs /var/log/samba Troubleshooting client connection issues for shared Workspaces To see the VFS Gateway version, click Help in the VFS Gateway UI or run the following command:
cat /avid/logs/version.log 3 Using Avid NEXIS | VFS Gateway 3 Using Avid NEXIS | VFS Gateway This chapter is intended for the end user of the VFS Gateway.
g The purpose of the VFS Gateway is to retrieve media files from a client system that cannot run the Avid NEXIS Client software. You upload the media files to one or more Avid NEXIS Workspaces.
As a user, you connect to the shared Workspace using one of the following methods:
- Windows File Explorer—see "Connecting to a Shared Workspace (Windows Clients)" below
- CIFS or Kerberos utilities on Linux—see "Connecting to a Shared Workspace (Linux Clients)" on
The way you connect to the share, and the format to use, depends on whether you are a local user or a remote LDAP user (the VFS Gateway Administrator will tell you).
VFS Gateway Gateway Uses User Type Path Format Version DNS?
2019.12 Yes Local and \\<Gateway Hostname>\<Avid NEXIS name>- remote <Workspace name> For example: \\ACME-Gateway\KLANews- IngestWorkspace No Local only \\<Gateway IP address>\<Avid NEXIS name>- <Workspace name> For example: \\198.51.100.19\KLANews- IngestWorkspace All newer versions Yes Local and \\<Gateway Hostname>\<Workspace name> remote For example:
\\ACME-Gateway\IngestWorkspace No Local only \\<Gateway IP address>\<Workspace name> For example: \\198.51.100.19\IngestWorkspace Connecting to a Shared Workspace (Windows Clients) Your Avid NEXIS | VFS Gateway administrator will tell you whether you are a local or remote user, and the credentials to use to connect.
This procedure assumes you are logged in to a client system that has media files you want to move to an Avid NEXIS system.
To connect to a shared Workspace on Windows:
1. Open Windows Explorer and enter one of the following into the location field:
- For local users: Enter the full shared Workspace name or the VFS Gateway IP address
- For remote LDAP users: Enter the full shared Workspace name or the VFS Gateway host name
2. If prompted, enter your user name and password.
3 Using Avid NEXIS | VFS Gateway
  - For local users: Enter your local VFS Gateway user name and password.
  - For remote LDAP users: Enter your network user name and password. You will be authenticated
by your environment’s Active Directory server.
3. If you connected to the VFS Gateway top-level directory, you can see any shared Workspaces to
which you have read or read-write access. Double-click a Workspace to open it, to paste or drag media into it. If you connected directly to a shared Workspace, you see its contents.
4. Some Windows clients might be unable to access the Samba shared server, especially if they do not
recognize the Samba shared LDAP password. If you are continually asked for credentials and not logged in, change the LAN Manager authentication level, as follows:
a. Run the Local Group Policy Editor: gpedit.msc b. In the Local Computer Policy panel, click: Computer Configuration > Windows Settings > Security Settings > Local Policies > Security Options.
c. Scroll down to find the entry “Network security: LAN Manager authentication level,” and double-click to open it.
3 Using Avid NEXIS | VFS Gateway d. In the drop-down list, select “Send NTLMv2 response only,” then click OK.
e. Click Yes to confirm the setting change.
f. Retry accessing the shared Workspace.
Once you can access the shared Workspace, you can copy files into or out of it, edit files, and do any other operations.
Since the purpose of the VFS Gateway is to put files into an Avid NEXIS Workspace, Avid recommends not keeping the files on the isolated client system.
Connecting to a Shared Workspace (macOS Clients) This procedure assumes you are logged in to a client system that has media files you want to move to an Avid NEXIS system.
On macOS, use the Finder as follows:
3 Using Avid NEXIS | VFS Gateway To map a shared workspace:
1. At the Mac Finder level, under the Go menu, enable Connect to Server (Command-K).
2. In the Connect to Server window, enter the path to the VFS Gateway by either its IP address or host
name. For example:
smb://198.51.100.19/ An authentication window opens.
3. Enter your name and password, then click Connect.
The VFS Gateway Workspace is mounted as a volume on the Mac desktop.
Once you can access the shared Workspace, you can copy files into or out of it, edit files, and do any other operations.
Since the purpose of the VFS Gateway is to put files into an Avid NEXIS Workspace, Avid recommends not keeping the files on the isolated client system.
Connecting to a Shared Workspace (Linux Clients) This procedure assumes you are logged in to a client system that has media files you want to move to an Avid NEXIS system.
On Linux, mount a shared Workspace as follows:
To map a shared workspace (local LDAP):
1. Install the CIFS utilities or make sure they are already installed.
2. Make and mount a directory for the shared Workspace.
To map a shared workspace (remote LDAP):
1. Install the Kerberos utility or make sure it is already installed.
2. Add your logging and LDAP domain information to the Kerberos configuration file.
3. Obtain a new Kerberos ticket with your remote LDAP user account, and verify the ticket was granted.
4. Make and mount a directory for the shared Workspace with CIFS.
Once you can access the shared Workspace, you can copy files into or out of it, edit files, and do any other operations.
Since the purpose of the VFS Gateway is to put files into an Avid NEXIS Workspace, Avid recommends not keeping the files on the isolated client system.