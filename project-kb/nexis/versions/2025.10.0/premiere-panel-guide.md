---
product: nexis
product-area: shared-storage
version: "2025.10.0"
release-date: 01/10/2025
doc-type: panel-guide
source: pdf
confidentiality: public
date-added: 15/05/2026
status: current
---

Avid NEXIS | Remote Panel for Adobe® Premiere Pro® Installation and User's Guide Version 2025.10.0 Using This Guide Using This Guide This document provides an overview of the Avid NEXIS | Remote functionality integrated within Adobe Premiere Pro. It details the product features, installation, and basic procedures for using the Avid NEXIS | Remote Panel.
Unless noted otherwise, the material in this document applies to Windows® and macOS®. The majority of screen shots in this document were captured on a Windows system, but the information applies to macOS as well. Where differences exist, information on the differences is provided.
This guide is intended for editors who need to pre-cache media stored in the Avid NEXIS | Cloud Storage to optimize playback performance and ensure seamless editing experience in Adobe Premiere Pro.
Revision History Date Description of Changes October 21, 2025 Initial release of Avid NEXIS | Remote Panel for Adobe Premiere Pro.
Using This Guide Symbols and Conventions Avid documentation uses the following symbols and conventions:
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
1 Overview 1 Overview Avid NEXIS | Remote uses the power of caching and accelerated transfers to pre-read media in advance to overcome performance issues due to network limitations, latency, or cloud storage performance variations.
It allows real-time work on high resolution media by pre-caching the clip or sequence and storing it on the cache device to ensure smooth playback. Caching enables users to perform a wide range of collaborative editing workflows using cost-effective cloud storage solutions.
> **Note:** The Avid NEXIS | Remote feature is currently supported in Avid NEXIS | Cloud Storage (Azure Online,
AWSNearlineS3Standard,andAWSOnlineS3ExpressOneZone)workflows.
About the Avid NEXIS | Remote Panel for Adobe Premiere Pro Avid NEXIS | Remote's integration with Adobe Premiere Pro enables users to optimize playback performance by pre-caching media through the Avid NEXIS | Remote Panel.
The Avid NEXIS | Remote Panel allows users to pin bins, clips and sequences in Adobe Premiere Pro, accelerating remote workflows with high resolution media securely stored on Avid NEXIS | Cloud Storage.
With Avid NEXIS | Remote enabled in the Avid NEXIS Client Manager, Premiere Pro users can experience a seamless editing performance while maintaining the full collaborative capabilities of Avid NEXIS.
> **Note:** TheAvidNEXIS|RemotepluginisavailablestartingwithAdobePremierePro2025.x.
Components Overview The Avid NEXIS | Remote integration with Adobe Premiere Pro requires the following components to fully utilize this feature:
Component Description Avid NEXIS | Cloud Storage The Avid NEXIS | Remote feature is currently available in Avid NEXIS | Cloud Storage (Azure Online, AWS Nearline S3 Standard, and AWS Online S3 Express One Zone).
Enough space is required on each of the editing VM’s local SSD storage to contain the cache files.
> **Note:** Avidrecommendsatleast200GBCachesize.
Avid NEXIS Server with Avid NEXIS | Remote Avid NEXIS | VFS v2025.10.0 or later.
License Entitlement A license entitlement is required to use this feature. Contact your Avid NEXIS system administrator to verify if your system and user settings are entitled to use Avid NEXIS | Remote.
Avid NEXIS Client Manager The Avid NEXIS | Remote with Adobe Premiere Pro integration is available on Windows and macOS clients starting with Avid NEXIS Client v2025.10.0.
Client VPN OpenVPN is currently the only client VPN solution that has been tested and supported for use with Avid NEXIS | Remote.
Adobe Premiere Pro The Avid NEXIS | Remote Panel plugin is available starting with Adobe Premiere Pro 2025.x.
Third-party Adobe Extension installer Third-party plugin installer to manage the installation of Adobe Creative Cloud extensions in .zxp format.
2 Getting Started with Avid NEXIS | Remote 2 Getting Started with Avid NEXIS | Remote in This chapter outlines the steps required to fully configure the Avid NEXIS | Remote feature Avid NEXIS | Cloud Storage (Azure Online, AWS Nearline, and AWS Online S3 Express One Zone) systems, including the installation of the Avid NEXIS Client Manager and the Avid NEXIS | Remote plugin in Adobe Premiere Pro.
> **Note:** Avid NEXIS | Remote is available as an entitlement of a system license for Avid NEXIS | Cloud Storage
(AzureOnline,AWSNearline,andAWSOnlineS3ExpressOneZone).Checkwithyoursystem administratororlogintotheManagementConsoletoconfirmifyouhavethisfeature.
Installing the Avid NEXIS Client Manager with Avid NEXIS | Remote The Avid NEXIS | Remote with Adobe Premiere Pro integration is available on Windows and macOS clients starting with Avid NEXIS Client v2025.10.0. You can find the client installer from the Cloud installer kit.
Detailed instructions for installing the client software are provided in the "Installing the Client Software" chapter of the AvidNEXISClientManagerInstallationandUser’sGuide, available in the Avid NEXIS Documentation Knowledge Base.
> **Note:** IfyouinstalledapreviousversionoftheAvidNEXISClient,makesuretofollowthisprocedure:uninstall
theoldversion,reboot,installthenewversion,andrebootagain.
After the reboot, the Avid NEXIS | Remote icon appears in the Avid NEXIS Client Manager.
Start the Client Manager and add the IP address of the Avid NEXIS | Cloud Storage system to the Remote Hosts list.
Enabling Avid NEXIS | Remote To enable Avid NEXIS | Remote and to learn more about setting up the cache, refer to the "Using Avid NEXIS | Remote" chapter in the AvidNEXIS®ClientManagerInstallationandUser’sGuide.
The Avid NEXIS | Remote icon turns green and the title bar indicates when it is enabled.
Installing the Avid NEXIS | Remote Plugin for Adobe Premiere Pro The Avid NEXIS | Remote plug-in for Adobe Premiere Pro is currently provided in ZXP format. You can find it in the following directory after installing the Avid NEXIS Client Manager:
- Windows: C:\Program Files\Avid\Avid NEXIS Client\Plugins
- macOS: /Applications/AvidNEXIS/Plugins
2 Getting Started with Avid NEXIS | Remote To install the Avid NEXIS | Remote plugin, use a plugin manager, such as ZXPInstalleror Anastasiy’s ExtensionManager.
Please note that while these tools are commonly used, they are not Avid products. Avid is not responsible for any issues arising from the use of third-party software. Third-party license terms apply.
> **Note:** TheAvidNEXIS|RemoteplugininstallerwillbemadeavailableintheAdobeMarketplaceatalater
date.
3 Working with the Avid NEXIS | Remote Panel 3 Working with the Avid NEXIS | Remote Panel This chapter provides information on how to use and navigate through the Avid NEXIS | Remote Panel in Adobe Premiere Pro.
PremierePro.
Opening the Avid NEXIS | Remote Panel Open the Avid NEXIS | Remote Panel in Adobe Premiere Pro by selecting “Avid NEXIS | Remote” in the Window > Extensions menu.
Understanding the Avid NEXIS | Remote Panel Interface The Avid NEXIS | Remote Panel interface has the following sections:
Section Description 1 Menu bar Displays the Pinning, Configuration, and Help menu.
Pinning menu Displays the list of bins, clips, and sequences for pinning/unpinning Configuration menu Shows the options to un-pin all items pinned in any Adobe Premiere Pro project and to collect Adobe Panel logs.
Help menu Contains the quick guide, other resources, and a link to the Avid NEXIS 3 Working with the Avid NEXIS | Remote Panel Section Description Documentation Knowledge Base.
2 Main Page Displays detailed information for the selected menu tab.
3 Capacity Indicator Displays the total amount of used and available cache space for the system.
Capacity Indicator The capacity indicator allows users to monitor the total used space, the remaining available space, and the caching progress once pinning is initiated.
If the caching attempt fails, the indicator provides a clickable option to view the details of the problem.
Pinning Menu Allows users to pre-cache bins, clips, and sequences. This is ideal for workflows where high-resolution footage may not play smoothly directly from Avid NEXIS and you need seamless performance on the first play.
The pinning page shows a flat list view of all the items in the project, no folder structures, and in alphabetical order. Each row in the panel displays the item size and pinned size for individual items, as well as the pin status.
3 Working with the Avid NEXIS | Remote Panel To pin or unpin items:
1. Click the toggle button.
2. If multiple items are selected, click the 'Text Action' buttons at the top of the list.
Pinning Selections Pinning a bin Pins all items in the selected bin. This caches all clips in the bin, as well as any clips used in sequences within the bin. The contents of any nested bins are not cached.
When you add new items to a pinned bin, the status changes to “partially pinned”, and the 'Add to selection' button appears to pin the newly added items.
Pinning “Clips in this bin” Pins only the clips in the selected bin; sequences are ignored.
> **Note:** Clipsarenotdisplayedindividuallybutareshowncollectivelyas"Clipsinthisbin".
When you add new clips to a pinned bin, the status changes to “partially pinned”, and the 'Add to selection' button appears appears to pin the newly added clips.
Pinning a sequence Pins all clips in the selected sequence.
When you add new clips to a pinned sequence, the status changes to “partially pinned” and the 'Add to selection' button appears to pin the newly added clips.
> **Note:** Aclippinnedaspartofmultiplebinsorsequencesiscachedonlyonce.
Configuration Menu Displays the options to un-pin all items pinned in any Adobe Premiere Pro project and to collect Adobe Panel logs.
3 Working with the Avid NEXIS | Remote Panel Un-pin everything Removes cache for all items pinned in any Adobe Premiere Pro project. This allows users to free up cache space in the system.
Debugging Log Collects Adobe Panel logs for debugging purposes.
To save logs:
1. Click on Save logs.
2. Select the destination folder.
3. Confirm the logs were saved by clicking 'Go to folder'.
Help Menu Contains the quick guide, other resources, and a link to the Avid NEXIS Documentation Knowledge Base.