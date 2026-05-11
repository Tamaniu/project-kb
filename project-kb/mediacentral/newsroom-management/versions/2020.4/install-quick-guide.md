---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2020.4"
release-date: 01/04/2020
doc-type: install-quick-guide
source: pdf
confidentiality: public
date-added: 08/05/2026
status: current
---

MediaCentral | Newsroom Management 2020.4 Installation Quick Guide Date Revised Changes Made April 2020 Added changes for 2020.4 Contents Installation............................................................................................................................................... 10 Installing the Newsroom Management Server ........................................................................................... 11 Preparing the Installer Files .................................................................................................................... 11 Preparing Addition Operating System Files ............................................................................................ 11 Install Program Options .......................................................................................................................... 12 Running the Install Program.................................................................................................................... 13 Installation Steps ..................................................................................................................................... 15 Connecting the Newsroom Management to MediaCentral | Cloud UX ..................................................... 24 Introduction Overview This guide gives you a quick-reference overview of the MediaCentral Newsroom Management installation process, including:
• Configuring a virtual machine • Installing the operating system • Installing the Newsroom Management system • Connecting the Newsroom Management module with the Cloud UX platform This guide is intended to give you a step-by-step guide. For further, detailed information, please see the MediaCentral | Newsroom Management Setup and Configuration Guide. For latest updates, please consult the Readme.
Sample System Configuration The document uses the following hardware specifications in the virtual machine setup.
• 8 GB RAM • 4 CPUs • 2 Network Interface Cards a. eth0 for internal mirroring (Not applicable for single server configuration) b. eth1 for outbound communication • Single hard drive space identified as /dev/sda with 20GB capacity Note: This is neither a recommended nor minimum specification, but used to illustrate the installation process. Target system configurations deviate based on the required performance and environment. If you are using a VM, the same specifications for the guest system apply as for hardware.
Before You Start During the installation, you will need a couple of installation parameters. We recommend collecting them prior to starting the installation. Use the following space to document your installation variables.
• Hostname: __________________________________________________________________ • Site Key: ____________________________________________________________________ • License: _____________________________________________________________________ • Network Card eth0 (Mirror):
a. IP _____________________________________________________________ b. Netmask _______________________________________________________ • Network Card eth1 (outbound):
a. IP ___________________________________________________________________ b. Netmask _____________________________________________________________ • Gateway: ___________________________________________________________________ • DNS: _______________________________________________________________________ • Domain: ____________________________________________________________________ Note: The site key and license string are obtained when purchasing Avid MediaCentral Newsroom Management products.
Installing the Operating System The instructions in this guide were originally based on installing Red Hat Enterprise Linux 7.3. The installation is similar for RHEL 7.5, CentOS 7.5 or RHEL 7.7, CentOS 7.7.
Note: RHEL 7.3 is no longer supported. RHEL 7.5 and 7.7 are qualified. RHEL 7.7 is preferred.
General Settings To install the OS:
1. Insert the installation media and boot the machine.
2. Select Install Red Hat Enterprise Linux option.
3. Select language that you would like to use as the installation language.
4. Select "Continue" to bypass the welcome screen.
5. Edit settings in the INSTALLATION SUMMARY window.
• LOCALIZATION – change settings to preferred: for DATE & TIME, LANGUAGE SUPPORT, and KEYBOARD (if Network Time ON is preferred setting then configure this option after editing Network & Host Name settings) • SECURITY – Leave it unaltered.
• SOFTWARE – Verify that “Minimal Install” is selected.
Figure 1 : Installation Summary Screen.
Network Configuration To configure the mirror and the public network interfaces:
1. In SYSTEM, open the Network and NETWORK & HOST NAME.
2. In NETWORK & HOST NAME:
a. Type host name and click Apply.
b. Click Configure button and edit first network interface settings.
Figure 2 : Network and Hostname Settings.
3. In General pane:
a. Select "Automatically connect to this network when it is available".
Figure 3 : Detail Settings for a Network Adapter.
4. In “Ethernet” tab:
a. Enter "1500" in the Ethernet MTU field on the Ethernet tab.
5. In "IPv4 Settings" tab:
a. Select "Manual" in the Method field.
b. Select "Add" next to the Addresses table.
c. Enter the Address and Netmask values for the mirror network interface.
d. Leave blank the Gateway, DNS servers, and Search domains fields.
(Please consult with your IT for values to be used for Gateway and DNS servers if your iNEWS server needs connections to LDAP or other servers for Public network interface.)
6. Select "Save".
To configuring the public network interface:
1. Repeat above steps to the edit public network interface.
2. Click Done.
Disk Configuration In the Installation Summary, select INSTALLATION DESTINATION to configure disks.
• Edit INSTALLATION DESTINATION a. Check “I will configure partitioning” in Other Storage options.
b. Click Done.
Figure 4: Installation Destination screen with the Manual configuration option checked.
• Edit MANUAL PARTITIONING Figure 5 : Manual Configuration of Pa rtitions.
The drive configuration requires a single drive. The following requirements apply regardless of hardware in use:
• /rp5 and /rp5backup are both required • /rp5backup size must be greater than or equal to /rp5 size • /rp5 and /rp5backup cannot be members of an LVM This document assumes no partitions or logical volume groups exist on the server. If any partitions or groups appear at this time they should be deleted before proceeding!
• Change partition scheme to “Standard Partition”.
To create the /boot mount point:
1. Select "+" to add a new mount point
2. Enter "/boot" in the Mount Point field.
3. Enter "500" in the Desired Capacity field.
4. Select “Add mount point”.
5. In File System, select ext4.
Create the /rp5 mount point:
1. Select "+".
2. Enter "/rp5" in the Mount Point field.
3. Enter the size of the iNEWS database (up to 132,000 MB) in the Desired Capacity field.
4. Select “Add mount point”.
5. In File System, select ext4.
To create the /rp5backup mount point:
1. Select "+".
2. Enter "/rp5backup" in the Mount Point field.
3. Enter the size of the iNEWS database (up to 132,000 MB) in the Desired Capacity field.
4. Select “Add mount point”.
5. 5. In File System, select ext4.
To create the swap mount point:
1. Select "+".
2. Select "swap" in the Mount Point field.
3. Enter a size roughly twice the size of the physical memory (RAM) in the Desired Capacity field.
4. Select “Add mount point”.
Note: The file system type is swap.
To create the root mount point:
1. Select "+".
2. Enter "/" in the Mount Point field.
3. Enter the maximum allowed size in the Desired Capacity field or leave field empty.
4. Select “Add mount point”.
5. In File System, select ext4.
To perform the final steps for disk configuration:
1. Click Done.
2. Review disk settings
3. Accept changes by hitting “Accept Changes”.
Installation Figure 6 : User Configuration during OS Installation Process.
To begin install:
1. Click “Begin Installation”.
2. During the installation process
a. Edit ROOT PASSWORD b. Create user SO (system operator).
▪ Make this user an administrator.
▪ Select that the user requires a password to use the account.
▪ Edit and Confirm the password.
3. Wait until the installation process completes.
4. Click Reboot.
This completes the OS installation.
Last update: April 2020 10 Installing the Newsroom Management Server Preparing the Installer Files Before you can run the installation program, you need to perform a couple of preparation steps to make all files required for the installation accessible to the install program.
To prepare installer files:
1. Insert the iNEWS server installation DVD.
2. Log in as root.
3. Mount the DVD as /media.
On the console, type:
mount /dev/cdrom /media
4. Create temporary folder for the installation.
On the console, type:
mkdir /tmp/INEWS
5. Copy files on the contents of the Newsroom Management server DVD ISO to temporary folder.
On the console type:
cp -a /media/. /tmp/INEWS
6. After copying the installation files to the temporary folder, you can eject the installation DVD. On
the console, type:
umount /media Preparing Addition Operating System Files Next, provide the installation files of the operating system to the installer. This is required to enable the installer to add packages as needed. The preparation depends on the operating system and the availability of internet access from the server:
• CentOS with Internet Access: Installer script automatically takes packages from free source location.
• CentOS without Internet Access: Mount the OS DVD and create an installation repository.
• RHEL without Internet Access: Mount the OS DVD and create an installation repository OR copy OS ISO from an external location by using WinSCP.
• RHEL with Internet Access: Installer script automatically takes packages from entitlement server.
Last update: April 2020 11 Option 1:
1. Insert the Red Hat installation DVD.
2. Mount the DVD as /media.
a. On the console type:
mount /dev/cdrom /media Then, create and enable a “media” repository.
1. On the console, type:
vi /etc/yum.repos.d/media.repo
2. Add the following file content to media.repo
[media] Name=media baseurl=file:///media gpgcheck=0 enabled=1
3. Write the file and quit the editor.
Note: Be sure also, that other system repos are disabled in /etc/yum.repos.d folder by adding the "enabled=0" variable.
Option 2:
Copy OS ISO file externally and paste it next to installer script, e.g. by using WinSCP. This option is most applicable.
Install Program Options The installer of the Newsroom Management server is run from the command prompt. The “--help” command line argument will print the commands and arguments.
The usage is install [command] [-h] [-c file] [-d file] [-s file] Commands • install: Installs the Newsroom Management server on clean system • silent_install: same as install but without manual configuration step. In this case, a configuration file must be specified.
Note: A silent_install is the installation of a software program that requires no user Last update: April 2020 12 interaction. Instead of taking user’s answers from a GUI tool during the install process, the installer uses options from a configuration file. See Figures 17 and 18 in this guide for more information on creating the configuration file.
• upgrade: performs an upgrade on an existing Newsroom Management from previous version.
• downgrade: downgrades an installed Newsroom Management server from recent to previous version Note: Installer always looks for ISO packages available for clean install, upgrade and downgrade processes. Therefore, copy OS ISO for system upgrade, downgrade as well if server is not connected to internet.
Optional Arguments:
• -h, --help show this help message and exit • -c file, --config-file file specifies the config file to read from • -d file, --database-file file specifies the database file to import • -s file, --sitedump-file file specifies the specifies file to use Running the Install Program To ease the installation program, Avid recommends running the program in a console that allows to paste the license string to the installer. This helps to avoid mistyping, especially when language settings on the host and the client differs.
Another option is to run the installer to create a configuration file, add the licensing information to the configuration and then perform a silent install with this configuration.
1. Enter folder with server installer script.
On the console type:
cd /tmp/INEWS/server_RedHat/linux
2. Verify that install is executable (flag x in the output of ll). run "chmod +x install" otherwise. On
the console type:
ll -rw-r--r--. 1 root root 17526301 Nov 30 09:05 inews.tar.gz -rwxr-xr-x. 1 root root 145531 Nov 30 09:05 install
3. Run installer and follow to instructions.
On the console type:
./install Last update: April 2020 13 Note: With running this command, you start the graphic utility that prompts you to answer some questions. You can choose between:
• Answering on all questions and click Install • Answer on all questions and click Save to create configuration file that can be used later for silent install mode with additional flags (refer to Install Program Options). For example, On the console type: type (in a single line) ./install –c ./configuration –d /tmp/database.db –s → /tmp/sitedump.db silent_install Where • “./configuration” is the file configuration file created by install script • “/tmp/database.db” is the database to be restored, and “/tmp/sitedump.db” is the sitedump file to be restored.
Note: If database and sitedump files is archived, then be sure to unzip it before the install. By default, installer takes files from the Starter Database folder in ISO.
4. After the install is complete:
a. Reboot the server b. Connect to the server and startup services c. Accept license agreement.
Notes:
• For RH subscribers, or in case of CentOS based install and the server is connected to the internet
  - there is no need in copying RH ISO to the server or mounting OS DVD, installer takes all
packages from internet.
• In case of AB configuration, server does not startup automatically as A(B). Installer installs iNEWS services for you, restores the database and/or sitedump, and exits the process, so you could connect as AB system manually.
• Installer creates log file in /tmp directory with the details about performed steps.
• Web access is not installed by default with new installer. Call customer support for the help.
Last update: April 2020 14 Installation Steps The installer will guide you to the installation process, collecting necessary information. Navigate using <TAB> and <ENTER> or the high-lighted keyboard shortcuts.
Figure 7: Welcome Screen of the Installation program.
After the welcome screen, select the database partitions for the primary database and the backup database. For the primary database, use the /rp5 mountpoint created during the OS installation.
Last update: April 2020 15 Figure 8: Select the database partition.
Figure 9: Select the mountpoint for the database.
After you selected the correct partition, confirm the selection.
Last update: April 2020 16 Figure 10: Confirming the selection for the database.
Continue selecting the database partitions for the backup database, using the /rp5backup mountpoint created during the OS installation. After you selected the correct partition, again confirm the selection.
Figure 11: Select the partition for the backup database.
The next step is the configuration of Newsroom System Settings. System Name should match the server name in a single server environment. It should be upper-case and a maximum of 8 characters. System Last update: April 2020 17 configuration is (A) for a single server, (AB) or (ABC) for a cluster configuration. System ID is what server you are setting up in a cluster environment (A, B, or C). Wordlength is the number of characters for an average word and used for read-rate calculations.
Figure 12: Newsroom Management system settings.
Select the network interfaces for the public and mirror network as configured in the OS installation.
Last update: April 2020 18 Figure 13: Selection of a network (single server, public network only).
Enter the password for the so (System Operator) user or leave default in user already exists to keep previous settings.
Figure 14: Selection of a network (single server, public network only).
When prompted, enter the realm for KerberOS. This information is required for authenticating external users or for importing users e.g. from an LDAP or Active Directory server.
Last update: April 2020 19 Figure 15: KerberOS realm to be used for authentication of external users and importing users.
Note: The KerberOS realm may deviate from the domain name suffix. Please consult the system administrator / IT department for information.
If an organization uses multiple zones, specify the one that contains the users of the Newsroom Management system. The below example is to illustrate this situation, with different zones emphasized:
• The organization’s LDAP/DNS is thedns.global.acme.com with the zones a. servers.local for servers, and b. users.local as the user domain.
• Your iNEWS server FQDN is inews.servers.local • As your users are in the domain users.local, also your KerberOS realm is users.local The next step is to provide the license information: site key and license string are obtained when purchasing Avid MediaCentral Newsroom Management products. As stated initially, the information should be inserted using copy and paste with SHIFT+INSERT to avoid misspellings.
If this is not an option, it is safest to skip the licensing and save the configuration to a file. Then insert the license information to this file and perform a silent install using this configuration file.
Last update: April 2020 20 Figure 16: License information consisting of Site Key and License string.
If you successfully verified the configuration in the summary and want to continue, you can choose to • Install: this will start the installation of the Newsroom Management server • Save: this will allow you to save the configuration to a file for use in a silent install.
Note: After a configuration file is created and saved, it may be edited manually and used to install any other server anytime.
Last update: April 2020 21 Figure 17: Configuration summary.
After selecting the option to save the configuration, the installer will ask you for a file name. The file will be saved alongside the installer, and the installer will exit.
Figure 18: Saving the configuration to a file.
Last update: April 2020 22 When installing the Newsroom Management server, the installer screen will display the progress.
Figure 19: Progress and current step during installation process.
After completing the installation of the Newsroom Management server, the installer screen will display below success message.
Figure 20: Successful completion of the installation process.
Last update: April 2020 23 If you had chosen to skip applying the license, you will see a similar screen with warnings, reminding you that you need to apply a valid license before any users can connect.
Press finish and reboot the server.
Note: There is no need to run "configure" by default as it is assumed that a proper /site/config file is restored from sitedump.db. The configure utility is used to propagate changes that are made to the /site/config file for a running system without reboot—for example, if changes are required to adjust session count provided by a license with /site/config pre-defined options.
Connecting the Newsroom Management to MediaCentral | Cloud UX The section provides a comprehensive list of the main steps for connecting the Newsroom Management module to the platform services and make it available in MediaCentral | Cloud UX. The description is meant to guide you to the section of the MediaCentral® | Newsroom Management Setup and Configuration Guide (MSNM-SCG.pdf), contained on the installation medium.
Note: The Newsroom Management as well as the Cloud UX system has to be licensed and running in order to establish and test the connection.
1. Start up the System
Follow the SCG chapter “Getting Started”, either:
a. Section “Starting a System in Single-Server Mode” for a single server system, or b. Section “Starting the System” for a multi-server system
2. Configure and start up the iNEWS CTC.
The inewsctc service provides the interface for Cloud UX to communicate with the iNEWS system. For more information, see the chapter “CTMS Integration” in the MediaCentral | Newsroom Management Setup and Configuration Guide.
a. Verify the Newsroom Management system has session licenses (as of version 2018.6, licenses are not dedicated to CTC instances).
b. Modify /site/config to include inewsctc configuration. You need an entry for each Cloud UX instance.
c. Reconfigure the system by running the commands: offline, configure, and online d. Create in /site/env a configuration file named inewsctc.<device id> for each device, with the <device id> used in the /site/config.
e. Edit each of the files to contain the ACS_GATEWAY_HOST (hostname (DNS name) or IP address of the Cloud UX server to connect to), the ACS_GATEWAY_PORT (default 9900), SERVICE-REALM (the name of the iNEWS system), and USE_AUTHENTICATION_BY_IP (0/1 - use to configure authentication with MCCUX server v2017.2 and newer).
Last update: April 2020 24 Note: The iNEWS system name is the database name, which is always upper case, such as NRCS-A. The Service Realm must match the system name, but not contain the server suffixes like -A or -B. If the Service Realm and system name mismatch, users later can see and navigate the system in Cloud UX, but will not be able to open any rundowns or stories.
f. Start the ctc device using the start <device id>, with the <device id> used in the /site/config, for each device.
3. Configure Sync Agent for Media Central Search
The mediaindex service will propagate changes to stories to the search engine of MediaCentral or CloudUX. There are three ways to configure how to send the data with /site/dict/words setting W_SEARCHTYPE /kafka or W_SEARCHTYPE /mediacentral or W_SEARCHTYPE /mediaindex The steps below provide instructions for how to configure the integration using Kafka queues.
For other integration types please consult the information in the Setup and Configuration Guide (SCG) chapter “Media | Index” please.
a. Check or add the settings in /site/config to enable mediaindex service:
host a a ; SEEK & FTS SERVERS ; server 110 seek 110 - server 111 ftsseek 111 - server 112 ftsindex 112 - server 113 mediaindex 113 - b. Reconfigure the system if changes were made, i.e. run the commands offline, configure, and online c. Check or add the settings in /site/dict/words to contain settings:
W_SEARCHTYPE /kafka W_MCS_BASE_URL /https://<CloudUX name>:<port (optional)> d. Specify the queues to use as working queues for the index in /site/dict/queues as Last update: April 2020 25 Q_MEDIA_INDEX /system.media-index Q_SCHEMAS_KAFKA /system.schemas.kafka e. Assign a mailbox to the SYSTEM.MEDIA-INDEX queue according to the section “Assigning a Mailbox to a Queue” in the SCG.
f. Start the mediaindex device using the start <device id>, with the <device id> used above.
Note: Kafka Search became available beginning with v2019.9. For more information, see “Connecting the Newsroom Management to MediaCentral | Cloud UX using Kafka” in Chapter 20 of the MediaCentral Newsroom Management Setup and Configuration Guide.
4. Import Users
MediaCentral Cloud UX uses an LDAP or AD server for authentication. The users in Newsroom Management have to match. Follow the section “Importing Users from an LDAP Server” in the SCG chapter “Users”.
a. You need to know the LDAP server name/IP as well as the domain/zone for the users.
See notes on the KerberOS realm in the section “Installation Steps”.
b. You need to know the Windows domain password (or someone that can provide it during the setup.
c. Perform the LDAP server search to obtain server and port (default 389).
d. Obtain Kerberos ticket-granting ticket using kinit.
In case kinit reports missing support for encryption type while getting initial credentials, check if the default_tgs_enctypes and default_tkt_enctypes are in /etc/krb5.conf.
[libdefaults] default_realm = SUBDOMAIN.DOMAIN.LOCAL default_tgs_enctypes=arcfour-hmac-md5 des-cbc-crc descbc-md5 default_tkt_enctypes=arcfour-hmac-md5 des-cbc-crc descbc-md5 e. Create the LDAP query and execute it. Note that you may need to adapt the query to only import specific groups or users.
f. Import the users as external users.
g. Delete the Kerberos ticket-granting ticket using kdestroy.
Last update: April 2020 26