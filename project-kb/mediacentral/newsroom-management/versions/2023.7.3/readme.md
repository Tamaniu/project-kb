---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2023.7.3"
release-date: 01/07/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 24/04/2026
status: current
---

Avid MediaCentral | Newsroom Management Avid MediaCentral | Newsroom Management Version 2023.7.3 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
> **Note:** The content herein applies to the aforementioned version, and contains the latest information that
might not have been available when product guides were published. However, for previous versions, users should reference older ReadMe documentation for additional information related to those earlier releases.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Newsroom Management documentation (all releases):
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-Newsroom-Management Revision History Date Revised Changes Made 14 February 2024 Added 3 fixes related to 2023.7.3; (Rev B. removed iNewsCom compatibility info.) 22 January 2024 Added 2 fixes related to 2023.7.2 19 December 2023 Updated to add information related to 2023.7.2 16 October 2023 Updated to add information related to 2023.7.1 2 August 2023 Updated to remove previously documented sections related to releases prior to 2023.7.
27 July 2023 Initial publication: Updated compatibility content, and added some new features and fixed issues for 2023.7 Avid MediaCentral | Newsroom Management Contents Fixed in Version 2023.7.3 10 Fixed in Version 2023.7.2 10 Fixed in Version 2023.7.1 11 Fixed in Version 2023.7 11 Limitations and Defects found in Version 2023.7 12 Limitations and Defects found in Version 2023.3 12 Limitations and Defects for Earlier Versions 12 Configuring Gmail SMTP Relay Server for Sendmail 15 Updating the iNEWS CTC Service 16 Doc Errata 17 Technical Support Information 18 Updated Security Guidelines Security Guidelines Avid allows you to install an endpoint detection and response on your Newsroom Management system.
This applies to both single-server and cluster environments. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page: http://kb.avid.com/articles/en_US/troubleshooting/en239659 Compatibility Notes and Issues This section contains compatibility information. Specific versions are mentioned when pertinent.
Workstation & Server Compatibility Chart The following charts show the compatibility matrix for client/server versions of Newsroom Management.
Typically, older client versions may be used to log in to servers of the same or newer versions. However, newer client versions cannot be used to log in to servers with older versions.
Each column represents Server Versions, while rows represent Client Versions.
MCNM 2022.3.x 2022.12 2023.3.x 2023.7.x A1 2022.3.x A A A 2022.12 NA1 A A A 2023.3.x NA NA A A 2023.7.x NA NA NA A 1A = Allowed | NA = Not Allowed
> **Note:** For information about compatibility of earlier versions, please refer to the ReadMe documentation for
those earlier releases. Also, for the latest, most up-to-date information on Avid systems compatibility, see the MediaCentral Compatibility Matrix available on the Avid Knowledge Base at: https://resources.avid.com/SupportFiles/Attachments/MediaCentral_Compatibility_Matrix.pdf.
Qualified Operating Systems Avid performs extensive testing on specific hardware and/or software to verify full compatibility with Newsroom Management. Those that pass these tests are considered qualified by Avid.
Newsroom Management Server Newsroom Management Server (formerly called iNEWS Server) is qualified and supported for use with Ubuntu 22.04 LTS only. Avid recommends the servers be kept up-to-date with the latest patch to avoid any vulnerability issues in the Linux kernel.
> **Note:** Avid also recommends using a NTP server to sync time between servers if your configuration consists
of more than one server to avoid story lock/saving issues.
Compatibility Notes and Issues iNEWS Workstation The client software is compatible for use on Windows 10 and Windows 11. This version of Newsroom Management is not officially supported for use on any other Windows operating system.
Servers and Operating Systems Compatibility Matrix The following matrix displays compatibility information for Newsroom Management version 2022.3 and later.
> **Note:** For previous versions, not shown here, please refer to the ReadMe documentation for those earlier
releases.
> **Note:** Not shown in matrix, Windows Server 2022 with Tomcat 10.0 is qualified for WSAPI and FileLink
server.
WSAPI WSAPI is qualified with Windows Server 2022.
WSAPI is qualified for Tomcat 10.0 with Java 17.
Other Supported Avid Systems Command The Newsroom Management Server is compatible for use with Command version 2022.3 for proper integration with the VID-DURATION feature.
Data Receiver Version 3.x of Data Receiver Server is supported for use on Windows Server 2022 and Windows Server
2019. Data Receiver Administrator Application is additionally supported for Windows 11.
This version of Data Receiver is not supported on any other Windows operating system.
External Users (LDAP) This version is tested with LDAP TLS.
Fast Text Search (FTS) Version 4.1 or later of FTS is required for this version of Newsroom Management Server on both Windows Server 2019 and 2022.
Compatibility Notes and Issues FTS is compatible in a virtualized environment when the guest OS instance meets the application's minimum system requirements.
Media | Index Newsroom Management version 2022.3 or later is only supported with Kafka for MediaCentral | Cloud UX search.
MOS Gateway MOS Gateway is qualified with Windows 2022.
The Newsroom Management system is compatible with MOS Gateway 2022.3 for subscription licensing.
Port 921 should be enabled for MOS Gateway communication. Please refer to the MOS Gateway Operations Guide for how to configure the port if needed to use a different port.
Virtualization Environments The Newsroom Management Server software is supported in a virtualized environment.
Minimum specifications are provided in the Avid iNEWS Server Enterprise Virtualization Reference Guide for the Newsroom Management Server (iNEWS), the FTS/Data Receiver Server, Command Server, and MOS Gateway Server.
Install and Upgrade Notes and Issues Install and Upgrade Notes and Issues This section contains information related to upgrading from previous versions of the software.
Upgrading to 2023.7.x Upgrading to 2023.7.x from 2023.3 is a standard upgrade without database migration required.
> **Note:** Upgrading from versions prior to 2023.3 is not supported.
./install upgrade, If internet access is available, before running the command, you need to uncomment (remove the # before) the following line for the repository in /etc/apt/sources.list:
deb http://us.archive.ubuntu.com/ubuntu jammy main restricted After the upgrade is complete, and before you reboot the server, comment out (add the # before) the line again.
If internet access is unavailable, prepare additional OS files for Offline Installation:
1. Ensure your Ubuntu environment (desktop or server installation workstation) has internet access.
2. Copy the script, download-dependencies.sh, from the Linux folder in the iNEWS ISO to your
home folder and add executable permission to it with: chmod +x download-dependencies.sh
3. Run the script as normal user: ./download-dependencies.sh
After the script ends, you will have an ISO with all needed deb packages (dependencies-repo.iso).
To use the ISO for an offline installation:
Upgrading to 2023.7.x
1. Copy dependencies-repo.iso to the Newsroom Management Server as a CD-ROM device and mount
it.
mkdir -p /mnt/media sudo mount /<path to iso> /mnt/media or sudo mount /dev/cdrom /mnt/media
2. Add repo to the system.
cd /mnt/media sudo bash ./add_this_repo.sh
3. Install the packages from the repo.
sudo apt update sudo apt upgrade You can now continue with the installation.
Find more details in MediaCentral Newsroom Management Installation Quick Guide.
Upgrading to 2023.3 Upgrading to 2023.3 from previous version(s) is not supported.
Switching your newsroom system over to 2023.3 requires:
Exportation of the database from the previous version,
- Installation of 2023.3 server software on Ubuntu 22.04 LTS, and then
- Restoration of the database.
- Exporting the database
Exporting the current database is required for going to version 2023.3.
Execute the dbdump command on the server to make a copy of the database. For instance:
$dbdump Cv -f + |gzip > /tmp/wavd.dbdump.gz Installation of 2023.3 Follow the procedures in the latest Newsroom ManagementInstall Quick Guide to set up the server on Ubuntu 22.04 LTS.
Restoring the database Restore the newsroom database by doing the following:
1. Reconnect iNEWS disks. (This command differs depending on which server configuration you are
connecting.) $ connect a net=a
2. Look for a valid output like this response:
Post output:
Connect successful for WAVD-A, starting servers...
Performing user added commands (/site/exc/connect.sh) Downgrade Notes and Issues Starting iNEWS Web Access Service.
A is OFFLINE. ID is WAVD.
System is A. Master is A.
3. Clear and initialize the database on the server by issuing the following commands:
$sudo finit - $sudo dbgen -
4. Restore the database on the server by issuing the dbrestore command to place database onto a
clean system.
$ gunzip < /tmp/wavd.dbdump.gz | dbrestore dpixv -f + -i -M Starting: Dump(1) Block(0), dumped on 2018-06-19 16:08:15 Dumped by 6.3.1.8 RH7 Ok to do user? (y/n)y Ok to do user blobs? (y/n)y Ok to do message? (y/n)y Ok to do group? (y/n)y Ok to do system-blobs? (y/n)y Ok to do community? (y/n)y Project cd67eeb7-eb0c-47e9-a3e6-9ec34f542415 test Elapsed time: 0:26
5. Startup system normally and bring the database back online.
$ startup
6. Install Newsroom Management 2023.3 client software and log into the server as usual.
Upgrading to 2022.12 or earlier Please consult the ReadMe documentation of previous releases for upgrade information pertaining to all versions 2022.12 or earlier.
Downgrade Notes and Issues This section contains information related to downgrading to previous versions of the software.
2023.7.x Downgrading to version 2023.3 is a standard downgrade.
2023.3 Downgrading to version 2022.12 or earlier is not supported. To use an older version requires the installation of the older server installed on the supported OS and old database file restored from backup.
Contact Avid Customer Support for assistance.
2022.12 and earlier Please consult previous ReadMe documentation for downgrade notes, instructions, or issues.
New Features in MediaCentral | Newsroom Management 2023.7 New Features in MediaCentral | Newsroom Management 2023.7 This topic provides an overview of the major new features in this release of Newsroom Management.
On the iNEWS Workstation Feature Description New, more extensive This version of iNEWS Workstation now has integrated spellcheck from your Windows spellcheck support environment; therefore, you can spellcheck any language that is supported by Microsoft Windows. All of the languages configured in the Windows environment that supports spellcheck will be displayed under the Set Language menu, and your last selected spellcheck setting will be selected automatically.
> **Note:** Basic typing is the Required language feature for the
iNEWS Workstation to have access to Windows spellcheck.
Clear channel on This version of iNEWS Workstation has added a new DWORD registry setting called:
ClearChannelOnMOSDrop to HKEY_LOCAL_ MOS drop MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment This new setting lets users decide whether the channel is cleared when a MOS item is dragged and dropped onto a story in the Queue panel or the Story Form panel.
Set the value to 1 to enable the clearing of the channel. The default behavior is to preserve the channel when a MOS item is dragged and dropped onto the story.
Fixed in Version 2023.7.3 Feature Description Topline messaging Users at sites employing more generic user IDs can now see real user names in topline supports User Real messaging at the iNEWS Workstation, making for a more user friendly experience.
Name feature The system must be set up to enable the User Real Name feature through the display_user_realname setting in /site/system on the server. With this feature enabled, the user's real name is displayed in received messages, and real user names may be used to directly send messages. But if there are duplicate real user names, then the user ID will be displayed instead.
> **Note:** The User Real Name is translated using the locally connected system
information. Also, you need to use user IDs when sending intersystem messages with the system name or IP address, such as: userA@systemA or userA@10.11.12.13 where 10.11.12.13 is the IP address of the Newsroom Management Server.
Handling Grace Periods Feature Description Grace period handling If the MediaCentral Licensing server becomes unavailable for a short period of with subscription for time, users and services may now continue to establish new connections by logins and license logging into the Newsroom Management Server. This grace period is extended to a consumption maximum of 72 hours to ensure operations over the weekend.
> **Note:** Users will have to re-log in when the grace period expires. Grace period user authentication is provided by direct call to LDAP, so it is
critical to enable external traits for users as well as configure Kerberos authentication on the Newsroom Management Server during the installation process.
Fixed in Version 2023.7.3 The following issues have been resolved in MediaCentral | Newsroom Management v2023.7.3.
Bug Number: IN- 180067 In previous versions, a locked block would be created if the licensing server could not be reached when an iNEWS workstation user requested a license.
Bug Number: IN- 180095. In previous versions, the response time of the Newsroom Management system, while using the Cloud UX Rundown App could sometimes be increased due to a lot of allocate session communications.
Bug Number: IN- 179898. In previous versions, users sometimes got a message of story moved or removed while editing from the Cloud UX Rundown App.
Fixed in Version 2023.7.2 The following issues have been resolved in MediaCentral | Newsroom Management v2023.7.2.
Fixed in Version 2023.7.1 Bug Number: IN- 180092. Previously, the newsroom database might disappear from the Browse App during production peak times.
Bug Number: IN- 180044. Previously for sites connected via the Community feature, users at sites that were running older versions could not manually copy a news story from the 2023.7 system.
Bug Number: IN- 180033. Previously, a story merge error in the inewsctc would cause the inewsctc process to abort.
Fixed in Version 2023.7.1 The following issues have been resolved in MediaCentral | Newsroom Management v2023.7.1 Bug Number: IN- 179804. Beginning with this version, when drag-and-dropping a MOS item from the HTML5 plugin, the content of the MOS item will be the same as drag-and-dropping a MOS item from an ActiveX plugin.
Bug Number: IN- 179810. Previously, mismatched capitalization in the HTML5 plugin configuration could result in an “Unable to invoke Editor” error message when a user later tried to edit a MOS item.
Bug Number: IN- 179825. In previous versions, data in the mos-objid field is cleared when monitor is turned ON.
Bug Number: IN- 179831. Previously, login attempts failed for NRCS tool users with a "space" in their password. "Space" characters are now allowed in the password.
Bug Number: IN- 179836. In a previous version, a package is missing from the installer, which caused the FTS service to be unable to start.
Bug Number: IN- 179803. In previous versions, users were unable to get read-rate through inewsctc API, if they were not administrator, to re-evaluate the read time of a story when the presenter changed.
Fixed in Version 2023.7 The following issues have been resolved in MediaCentral | Newsroom Management v2023.7 Bug Number: IN- 179604. In previous versions, if group permission was set for HTML5 plugin, users with names containing uppercase characters would not have access even though they belonged to the group.
Bug Number: IN- 179675. ∙In previous versions, text in a field was overwritten with black color in floated stories. This was because a default black color was applied to the text when the story was floated whenever the ColorRule had been set with a background color but no text color was defined.
Bug Number: IN- 179714. In previous version, when running dblines with the 'c' option, it exits with a segmentation fault on stories with links in system folder.
Limitations and Defects found in Version 2023.7 Bug Number: IN- 179719. In previous versions, if there is a line with only a space in the HTML5 configuration, it could cause the parser to become stuck.
> **Note:** Please consult the ReadMe documentation of previous releases for further information pertaining to
all versions prior to this one.
Limitations and Defects found in Version 2023.7 The following limitations or defects were discovered in this release of Newsroom Management.
- At Newsroom Management sites with subscription licensing, when the MediaCentral Server
transitions from online to offline, users at iNEWS Workstations may experience a short delay at log in, while in grace period mode.
Limitations and Defects found in Version 2023.3 The following limitations or defects were discovered in this release of Newsroom Management.
When stories with a predefined form is ingested through the wire server, the contents of all fields
- will not be preserved and could have incorrect timing information.
Limitations and Defects for Earlier Versions This topic provides details on limitations discovered in earlier versions of Newsroom Management (formerly iNEWS), and not addressed in this release. Any available workaround procedures are also documented, when possible.
Diskcopy reports Critical Error If diskcopy reports messages “diskcopy: 17:09:59 [CRITICAL] first block mirror error: on block 66958 (5:Input/output error)” Users should check the message at the end of the log for actual status. “Successful
  - Disk is mirrored” indicates that the process completed successfully, and the error only indicates that
there are empty blocks that could not be copied.
Edit Locks Information about edit locks may contain a session identifier if the username is not known. This is the case for locks acquired though inewsctc API.
Information about a user who has an edit lock could be incorrect when the user signs off without releasing edit locks and signs on, reusing the same session.
> **Note:** The new user does not have the edit lock, and the lock will expire in its pre-defined timeout.
Invalid User Credentials Bug Number: IN- 7154. ∙ Previously, an error stating “Invalid User Name/Password” would appear if an older version of the iNEWS Workstation is used with version 2021.11 server, and if the server cannot acquire a session license from the MediaCentral Licensing server when subscription licensing is used. Now, you will get an error message stating “Cannot obtain new user session from Cloud UX (licensing server)”.
Internationalization Issues This topic provides details related to localization to various non-English languages.
Limitations and Defects for Earlier Versions Chinese IME Mode Avid recommends do not use key strokes in Chinese IME mode.
Chinese DaYi Chinese input method DaYi cannot be used to create new queues or folders.
Divehi Support With the new richedit control, sometimes the last line of text will align to the left for a right-aligned story.
Local Database To download print styles and story forms to your local computer for use when working offline, you must have Read Access to the Newsroom Management Server directories where styles and forms are located.
This is by design.
Localhost Server It is recommended to use localhost IP address "127.0.0.1" instead of alias "localhost" in case of telnet connection to localhost server.
Macros and Keystrokes Some PCs, when upgraded from older versions of Internet Explorer (such as IE 6, 7 or 8) will experience issues with macros that perform several functions in rapid succession; the macros might not complete all assigned activity in iNEWS. Avid is working with Microsoft on this issue, which is most apparent with macros that trigger the Local Print dialog box or the User Preferences dialog box.
Workaround: Place the name of the dialog box after the K_WINDOW token value immediately following the keystroke that opens the dialog box. For instance, instead of just {ctrl p} to open the Local Print dialog, the macro should be: {ctrl p}{window Local Printing}. The text following ‘window’ must match exactly the name of the dialog box as it appears in the title bar. The ‘K_WINDOW /window’ token can be changed in /site/dict/keymacros.
Another available workaround is to add {pause <#>} statements of one or two seconds to problem macros at the point in the macro where activity ceases. In the example of the Local Printing macros, the pauses are likely needed when typing a name of a printer or changing a print style.
MAP Story Limit The limit of devices for a rundown in the MAP story is 20. Having more than 20 devices configured for a rundown in the MAP story will result in a client crash when attempting to open the Monitor dialog.
MediaCentral Cloud UX Integration If the same Newsroom Management user name is used on multiple sessions on the same computer to log into MediaCentral | Cloud UX, it will only consume a single session.
Multiple Monitors If running the iNEWS client software on a dual monitor workstation, there are some key issues you could encounter:
Limitations and Defects for Earlier Versions If the application is maximized when closed, it will be maximized on the primary monitor when it is
- reopened, regardless of which monitor it was on when closed.
- Moving a user from a dual monitor machine to a single monitor machine, such as an undocked
laptop, could result in the application opening to a screen that no longer exists.
Workaround: Right click on iNEWS in the Windows taskbar and select Move. Then press one of the arrow keys on the keyboard; this will lock the application’s window to the mouse. You can then move the mouse pointer onto the screen and the iNEWS main window will move with it.
Netstation Bug Number: IN- 3269. ∙ Fields carried over from Avid Netstation template are skipped from indexing.
Plug-ins Some plug-ins may not paint correctly in Newsroom Management.
Workaround: Complete the following procedure to resolve the painting issue.
> **Note:** AMG Journalist is used in the procedure as a plug-in example.
1. In the iNEWS executable directory, create a new text file named ActiveXRedraw.txt.
- For 64 bit workstations, the directory is located at: C:\Program Files (x86)\Avid\iNEWS\
- For 32 bit workstations, the directory is located at: C:\Program Files\Avid\iNEWS\
2. Open the registry editor, using regedit in the Run dialog box.
3. Select Edit > Find > AMG Journalist and locate the CLSID for the plug-in.
- For 64 bit workstations, the CLSID is located at: Computer\HKEY_CLASSES_
ROOT\Wow6432Node\CLSID\
- For 32 bit workstations, the CLSID is located at: Computer\HKEY_CLASSES_ROOT\CLSID\
4. Take the CLSID, which is the folder name, and put it into the ActiveXRedraw.txt file.
Configuring Gmail SMTP Relay Server for Sendmail
5. Save the file.
6. Reload iNEWS. The painting problem for the plug-ins will be resolved.
UNC Paths As a result of the server-side URL changes in iNEWS 3.4.2, UNC paths with spaces no longer work
- correctly in the iNEWS client software. In a future version of the iNEWS client software, these links
will be client-only, allowing a user to launch them from the iNEWS Workstation without saving them as URLs on the iNEWS Server.
iNEWS integration with Intelliscribe printing should be configured at 300 DPI with "Enhanced
- Features" disabled. Setting a higher DPI or enabling enhanced features can cause long delays in
printing.
- There are screen painting issues when the Vertigo Xmedia plug-in and the Aurora Assignment List
plug-in (version 7 or later) are both installed on the same client. The Xmedia splash screen can cause the Xmedia tree to be inaccessible.
Workaround: When this issue occurs, the workaround is to rename or remove skinCrafter3_ vs2008.dll from the Assignment List installation directory.
Configuring Gmail SMTP Relay Server for Sendmail Configuring the Gmail SMTP relay server for sendmail involves generating a Gmail application password, updating the sendmail configuration, and adding lines to an authinfo file. The steps for these are in following subsections of this readme:
Generate Gmail Application Password To generate a Gmail application password:
1. Log in to you Gmail account and go to the Manage you Google Account page.
2. Go to the Security page.
3. Enable 2-Step Verification if it is not enabled yet.
4. Click on the App passwords link.
5. In the Select app drop-down menu, select Mail.
6. In the Select device drop-down menu, select Other.
7. Enter the name for your application, such as iNEWS.
8. Click GENERATE.
9. Copy your password from the pop-up window.
Update sendmail configuration To update the sendmail configuration:
Updating the iNEWS CTC Service
- Add the following lines to the /etc/mail/sendmail.mc file before the MAILER(smtp)dnl line:
dnl # dnl # Defining Gmail Smarthost for sendmail define(`SMART_HOST',`[smtp.gmail.com]')dnl define(`RELAY_MAILER_ARGS', `TCP $h 587')dnl define(`ESMTP_MAILER_ARGS', `TCP $h 587')dnl define(`confAUTH_OPTIONS', `A p')dnl TRUST_AUTH_MECH(`EXTERNAL DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl FEATURE(`authinfo',`hash -o /etc/mail/authinfo')dnl Modify the AuthInfo File To modify the AuthInfo file:
1. Add the following lines to the /etc/mail/authinfo file
AuthInfo: "U:smmtp" "I:EMAIL" "P:PASSWORD" Replace the above 'EMAIL' and 'PASSWORD' with your actual Gmail email and application password.
2. Create database map from authinfo file using makemap utility as below:
$ sudo makemap hash /etc/mail/authinfo </etc/mail/authinfo
3. You may now generate the final sendmail configuration and restart the service by entering the
following commands as a root:
$sudo sendmailconfig $ systemctl restart sendmail.service Updating the iNEWS CTC Service To update inewctc:
1. Extract the new inewsctc executable from the distribution file (iNEWS_<version #>.zip) and use
WinSCP or similar to upload to the /tmp directory on all Newsroom Management Servers.
2. Find the device numbers of all the inewsctc devices on the system, then stop the devices.
MCNM-A# list c inewsctc DEV DEVICE_TYPE COMPUTER NOTIFY OPTIONS DEVNAME S601:603 inewsctc A MCNM-A# stop 601 602 603
3. Check the properties of the existing inewsctc executable. For example:
MCNM-A# ls -l /exc/inewsctc -rwxrwxr-x. 1 so newssys 4559040 July 6 2023 inewsctc MCNM-A# version /exc/inewsctc inewsctc: 2023.7.1 (build 9.1.1.2) RH7 Doc Errata If this shows anything earlier than the version prior to the current version to which you are start 601 602 603 updating, abandon the upgrade and start the devices: in this example.
4. Rename the existing inewsctc executable, then copy the new inewsctc executable from the /tmp
directory. Using version 2023.7.1 for example:
MCNM-A# mv /exc/inewsctc /exc/inewsctc.2023-7-1 MCNM-A# cp /tmp/inewsctc /exc/inewsctc
5. Check the properties of the new inewsctc executable:
MCNM-A# version /exc/inewsctc inewsctc: 2023.7.2 (build 9.1.2.1) RH7 MCNM-A# ls -l /exc/inewsctc -rw-rw-r--. 1 so 4579704 Dec 19 03:18 inewsctc
6. Change the ownership and permissions of the new inewsctc executable. For example:
MCNM-A# chown so:newssys /exc/inewsctc MCNM-A# chmod +x /exc/inewsctc
7. Check the properties of the new inewsctc executable, and start the devices. For example:
MCNM-A# ls -l /exc/inewsctc -rwxrwxr-x. 1 so newssys 4579704 Dec 19 03:18 inewsctc MCNM-A# start 601 602 603 Doc Errata MediaCentral Newsroom Management Setup and Configuration Guide In Appendix A of the 2023.3 version of the guide, in the Job List Commands section, the command bpoll has the following note:
> **Note:** This feature is only enabled if the environment variable RESTARTDURINGPOLLINGPERIOD=1 is set in
/site/action.
The wording /site/action should be /site/env/action:
> **Note:** This feature is only enabled if the environment variable RESTARTDURINGPOLLINGPERIOD=1 is set in
/site/env/action.
Technical Support Information Technical Support Information Most products feature a number of coverage options. Avid Assurance service offerings are designed to facilitate your use of Avid solutions. Service options include extended telephone coverage, automatic software maintenance, extended hardware warranty, and preferred pricing on replacement parts.
Offerings and options may vary by product and are not available for all products.
For more information regarding Avid service offerings, visit www.avid.com/support or call Avid Sales at 800-949-AVID (800-949-2843).
Program availability and details might vary depending on geographic location and are subject to change without notice. Contact your local Avid office or your local Avid Reseller for complete program information and pricing. However, if you need help locating an Avid office or Avid Reseller near you, please visit www.avid.com or call in North America 800-949-AVID (800-949-2843). International users call 978-275- 2480.
Accessing Online Support Avid Online Support is available 24 hours per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read/join online message-board discussions.
To access Avid Online Support:
- Go to www.support.avid.com.
> **Note:** Supplemental documentation for this release, if available, is provided on the Knowledge Base. For the
latest up-to-date information, browse the Knowledge Base at Avid Online Support.
Technical Support Information