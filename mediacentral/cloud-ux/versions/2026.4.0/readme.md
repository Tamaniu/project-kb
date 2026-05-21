---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2026.4.0"
release-date: 01/04/2026
doc-type: readme
source: pdf
confidentiality: public
date-added: 21/05/2026
status: current
---

™ Avid MediaCentral | Cloud UX Version 2026.4 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
For the most up-to-date Avid MediaCentral Cloud UX documentation (all releases), see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Cloud-UX-v2026-Documentation MediaCentral Cloud UX v2026.4 has been developed as a Long-Term Maintenance (LTM) release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at: https://kb.avid.com/pkb/articles/en_US/faq/Avid-Supported-Software-Releases Revision History Date Revised Changes Made May 20, 2026 Initial v2026.4 publication Compatibility Notes Compatibility Notes This section contains compatibility information for MediaCentral Cloud UX and related products.
For information on supported operating systems and for a list of product versions qualified for use with Avid MediaCentral Cloud UX, see the Compatibility Matrix on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Avid highly recommends that you consult this matrix prior to upgrading any application or system to ensure that you understand the scope of the upgrade. In some cases, you might be required to upgrade additional components or hardware to maintain system compatibility.
Qualified Servers and Virtualized Environments Hardware Deployments Organizations can install MediaCentral Cloud UX on a server from the vendor of their choice, as long as that server meets the minimum specifications that are defined by Ubuntu and Avid. For more information on these minimum requirements, see the Avid MediaCentral | Cloud UX Hardware Guide on the Avid Knowledge Base.
Avid expects that you meet or exceed the minimum requirements outlined in the Avid MediaCentral | Cloud UX Hardware Guide for each release of MediaCentral Cloud UX. If you are upgrading from an older release, you must review this information to ensure that you are current and compatible with the system requirements.
Virtualized Deployments Avid allows you to deploy MediaCentral Cloud UX in an on-prem virtual environment. However, the selection and qualification of the virtualization solution is the responsibility of an individual or team within your own organization.
For a short list of requirements and best practices, see "Deploying MediaCentral Cloud UX in a Virtual Environment" in the Avid MediaCentral | Cloud UX Installation Guide.
Storage Requirements MediaCentral Cloud UX requires SSD storage for both the OS and Data volumes. Organizations that are still using standard HDD’s must upgrade their hardware to maintain compatibility with this and future releases of MediaCentral Cloud UX. This requirement applies to all new installations and upgrades.
This requirement applies to both hardware-based deployments and virtualized deployments. If you are using a virtualization system with a shared SAN array, the SSD requirement applies to any shared storage that hosts a virtualized deployment of MediaCentral Cloud UX.
Operating System and Security Guidelines Avid allows you to install an endpoint detection and response solution on your MediaCentral Cloud UX system. This applies to both single-server and cluster environments. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://kb.avid.com/articles/en_US/troubleshooting/en239659 The avidctl platform host-setup script enables Ubuntu's built-in Uncomplicated Firewall service by default on all new installations. For information on how to verify the current status of the service, see "Ubuntu Uncomplicated Firewall" in the Avid MediaCentral | Cloud UX Installation Guide.
Compatibility Notes Security Updates MediaCentral Cloud UX is supported on Canonical Ubuntu — an open source, Linux-based operating system. Organizations must download a copy of Ubuntu Server LTS (Long Term Support) from https://ubuntu.com and install it on their MediaCentral Cloud UX server prior to installing any Avid software. Refer to the MediaCentral Compatibility Matrix on the Avid Knowledge Base for supported version information.
Unless otherwise noted, Avid supports Ubuntu patch versions by default. Using Ubuntu 24.04.3 as an example where 24 is the major version, 04 is the minor version, and 3 is the patch version, Avid would support Ubuntu Server LTS v24.04.x. For more information on Ubuntu releases, see https://ubuntu.com/about/release-cycle.
Security and Firewalls on Client Workstations While Avid encourages organizations to protect and secure the client workstations that connect to MediaCentral Cloud UX, system administrators must allow communication between the clients and the MediaCentral Cloud UX servers over network ports 443 and 5000. If you are using a local anti-virus, firewall, or other security solution on your clients, you must ensure that these ports remain open between the systems. Failure to do so could block media playback or cause other aspects of the workflow to fail.
For more information on network ports and communication, see the Avid Port Usage Guide on the Avid Knowledge Base.
Transport Layer Security (TLS) Certificates When you connect to MediaCentral Cloud UX, your web browser might display a security warning that indicates that the connection cannot be validated. These warnings can be eliminated through the use of a trusted Transport Layer Security (TLS) certificate.
You can generate a self-signed certificate directly on the MediaCentral Cloud UX server or you can obtain a certificate from an internal/private or external/public Certificate Authority (CA) group. Public certificates have the advantage in that they are trusted automatically by today’s most common web browsers. No warnings appear when a connection is made to a secure web page, nor do you need to manually add the certificate to the local workstation’s Trusted Root Certification Authorities store (since the CA’s root certificate is already there).
You must install a valid signed certificate to access the user interface for all versions of MediaCentral Cloud UX. Without a valid certificate, users are met with a security warning when accessing the MediaCentral Cloud UX sign-in page. Any attempt to bypass this security warning without a valid signed certificate is unsupported and could result in negative impacts to the user experience.
If you are enabling a multi-site environment and you are using a self-signed or private CA certificate, you must import the certificate from each site into each of your client workstations. For example, if you have a multi-site configuration with three sites, you must import three different certificates into each workstation.
For this reason Avid highly recommends using certificates provided by a public Certificate Authority if you are enabling a multi-site configuration.
All certificate types must include the FQDN for your MediaCentral Cloud UX system. If you have configured a cluster, the certificate must include the FQDN for each cluster node and the virtual cluster.
For more information, see “Creating Certificate Files” and “Importing TLS Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
Compatibility Notes Browsers for MediaCentral Cloud UX MediaCentral Cloud UX is tested using Google Chrome as the portal to the user interface. For specific version information, see the “MediaCentral Compatibility Matrix” on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts
> **Note:** Features included in some graphics drivers might affect the playback of assets in the Chrome HTML5
video player. If you experience playback issues, you might try lowering your video resolution, increasing the display refresh rate, or both.
The minimum screen resolution for MediaCentral Cloud UX is 1280 x 1024 pixels. If the size of your browser window is smaller than 1280 x 1024, some UI elements might not be displayed.
Avid does not support connecting to MediaCentral Cloud UX through either a mobile web browser (installed on a mobile device) or “portable” versions of Chrome in which the browser is not fully installed on your local workstation.
Avid does not test MediaCentral Cloud UX with any Chrome extensions. Some extensions can introduce a performance impact, potentially affecting playback or other areas of the UI.
Upgrade Options for Multi-Site Environments Avid MediaCentral Cloud UX allows you to connect multiple MediaCentral Cloud UX systems together in a Multi-Site configuration. In a multi-site environment, your local MediaCentral Cloud UX system links to MediaCentral modules such as Production Management, Asset Management, or others that are connected to other remote MediaCentral Cloud UX systems.
Avid supports linking sites running different versions of MediaCentral Cloud UX. If you plan to run mixed versions of software, note the following:
You can mix MediaCentral Cloud UX systems running v2024.10.x through v2026.4.x in the same
- multi-site environment. Note that during the upgrade process, the affected site will be unavailable
to users in the linked sites.
- If your multi-site environment includes one or more MediaCentral Asset Management modules, you
might need to coordinate the upgrades of your MediaCentral Cloud UX systems and the Asset Management systems to maintain continued functionally.
First, upgrade your MediaCentral Cloud UX systems and the Mam.Core.ConnectivityToolkit package on all Asset Management systems. Then, upgrade the Asset Management systems.
For more information, see "MediaCentral | Cloud UX Compatibility" in the Avid MediaCentral | Asset Management ReadMe and "Multi-Site Support" of the Avid MediaCentral | Asset Management Installation Guide.
- Some features might be version specific. See individual MediaCentral Cloud UX ReadMes for any
feature-specific version requirements.
Compatibility Notes Connection Options for Multiple Systems The following information describe methods for connecting MediaCentral modules outside of a multi-site environment.
Production Management Avid supports connecting only a single MediaCentral Production Management module to the MediaCentral Cloud UX system.
You cannot connect both Avid Production Management and MediaCentral Production Management to the same MediaCentral Cloud UX system in this release.
MediaCentral Newsroom Management If you have one Newsroom Management module with multiple MediaCentral Cloud UX systems:
You can configure multiple CTC connections on the Newsroom Management module, each
- connecting to a different MediaCentral Cloud UX system.
This configuration enables each MediaCentral Cloud UX system to work with the Newsroom Management system in apps such as Browse and Rundown.
- You can configure only one Search agent per Newsroom Management module and connect it to a
single MediaCentral Cloud UX system.
As a result, users of only one of the MediaCentral Cloud UX systems are able to search for data on the Newsroom Management module.
If you have multiple Newsroom Management modules with one MediaCentral Cloud UX system:
Each Newsroom Management module makes one CTC connection to the single MediaCentral Cloud
- UX system.
This enables MediaCentral Cloud UX users to see all of the Newsroom Management modules in apps such as Browse and Rundown.
- Each Newsroom Management module connects its Search agent to the single MediaCentral Cloud
UX system.
This enables MediaCentral Cloud UX users to search all of the Newsroom Management modules.
For more information on configuring Newsroom Management and CTC, see the Avid MediaCentral | Newsroom Management Setup and Configuration Guide.
MediaCentral Asset Management Avid supports connecting only a single MediaCentral Asset Management module to the MediaCentral Cloud UX system.
Maestro News MediaCentral Cloud UX supports the ability to both connect multiple Maestro News systems into a single MediaCentral Cloud UX system as well as the ability to connect multiple MediaCentral Cloud UX systems to a single Maestro News module.
For more information on configuring these multi-system environments, see the Maestro News documentation.
Compatibility Notes Avid MediaCentral Cloud UX Installation Media Before upgrading your Avid MediaCentral Cloud UX system, you must obtain the installation media:
- (required) Avid MediaCentral Cloud UX Platform
This package includes the core Avid installation components.
Example file name: mediacentral_platform_<build>.bin
- (required) Avid MediaCentral Cloud UX Feature Packs
This package includes additional software to install MediaCentral Cloud UX applications on the Platform.
Example file name: mediacentral_feature_packs_<build>.iso
- (if applicable) Avid Production Management Feature Packs
You need this package if you have installed Avid Production Management on your MCUX system.
Example file name: apm_feature_packs_<build>.iso The software can be downloaded from the Avid Download Center. If you have not already created an Avid.com user account, you must do so now. This Master Account enables you to sync your Avid Video Download and Avid Video Community accounts, and access other Avid resources.
Enabling New Features If you are upgrading to this version of MediaCentral Cloud UX to enable new features introduced in this or prior releases, or if you have purchased a new feature for your existing installation, you might need to refer to a previous ReadMe or to the Avid MediaCentral | Cloud UX Installation Guide for additional instructions.
For example, if you are adding Avid Transcribe, you might need to provision and configure additional hardware, run one or more configuration scripts, and install new feature packs that are related to the workflow. If you are upgrading to enable a new feature such as the Publisher app, you might need to install a new license, configure settings, or verify user entitlements.
Avid MediaCentral Distribution Service The MediaCentral Distribution Service (MCDS) is an application required for Send to Playback (STP) operations in MediaCentral Cloud UX. More accurately described as an “orchestration engine”, MCDS analyzes the STP request and determines if additional actions are required before the media is sent to the destination (Avid FastServe, Avid Transfer Engine, or other). MCDS is not used or required when sending assets to playback through the Avid MediaCentral | Panel for 3rd Party Creative Tools.
For more information on MCDS, Send to Playback guidelines, compatibility notes, fixes, and more, see the Avid MediaCentral Distribution Service ReadMe on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation Installing MediaCentral Cloud UX Partner Applications Organizations or individual contributors that want to work with Avid to create applications for the MediaCentral Platform can visit http://developer.avid.com/ for a collection of online resources that can be used to assist you in this effort.
If you have purchased a MediaCentral Cloud UX partner application or service to connect to a non-Avid product or service, the following link provides a high-level set of instructions for installing the feature pack on your MediaCentral Cloud UX system:
http://developer.avid.com/cert/feature-pack-installation/docs-public/README.html Compatibility Notes For more detailed and software-specific instructions, see the documentation that accompanies the partner feature pack.
Avid 3rd Party License Compliance License information is not installed directly on the MediaCentral Cloud UX server. For information on Avid’s compliance with external vendors, see the 3rdPartyComponent-Licenses.txt file in the "3rd party components" folder on the Avid MediaCentral Cloud UX Feature Pack ISO (mediacentral_feature_packs_ <build>.iso).
Avid MediaCentral Production Management Data Model Object Types The following table details the playback compatibility of certain MediaCentral Production Management data model object types with MediaCentral Cloud UX.
Object Type Status Audio tracks with unrendered AudioSuite plugins Unsupported Sequences with audio keyframing (audio rubber-banding) Unsupported Effects All rendered and checked-in effects are supported for playback.
Freeze-frame clips Supported Group clips Supported* Master clips Supported Matte clips (assets with alpha channel) Unsupported Motion effects Unsupported Multi-channel audio clips Unsupported Multigroup clips Unsupported Nested timelines Unsupported Sequences (dissolves only) Supported Sequences (no effects) Supported Sequences (precomputes present for unsupported effects) Supported Sequences (without precomputes for unsupported effects) Unsupported Stereo tracks Unsupported Stereoscopic clips Unsupported Subclips Supported Subclips created in Media Composer through Autosync Unsupported *Group clips composed of subclips, and subclips created from group clips are currently not supported. Group clips created from spanned master clips (such as media created on a P2 card) are also not supported.
Compatibility Notes Supported Media Formats Avid supports a variety of media and container formats across its family of products. However, MediaCentral Cloud UX does not support the ability to work with all of these formats by default. As long as your asset is wrapped in both a container format and a media format that is supported by MediaCentral Cloud UX, you should be able to play that asset through the Asset Editor.
For example, if you have DNxHD 1080 145 media that is wrapped in a MOV container, that asset can be played back through MediaCentral Cloud UX because both the media and container formats are supported.
> **Note:** AMA media is not supported in MediaCentral Cloud UX. AMA media must be transcoded to a
supported format.
Container Formats The following tables list the container format types supported by MediaCentral Cloud UX.
Audio and video container formats:
- AVI MP4 MOV
MPEG MXF MP3 MPG WAV Image container formats:
- BMP JPEG PNG* TIFF* TGA*
* Indicates support for alpha channel.
> **Note:** It is possible that additional container formats might also play back, but these formats are not
supported in MediaCentral Cloud UX.
Media Formats The following table lists the supported media formats for MediaCentral Cloud UX, as well as an incomplete list of some notable formats that are not supported. Also note the following:
For 23.98 SD (NTSC), the timecode reference will be shown on 24 frame instead of 30. This applies
- to MediaCentral Editorial Management only as this format is unsupported with MediaCentral
Production Management.
- 23.97 fps and 24 fps frame rates are supported in 1080p formats. They are unsupported in 720p
and standard definition (SD) formats.
Audio Media Formats (codec) AAC* MPEG-2 PCM * AAC audio is supported for Asset Management Desktop playing audio-only MP4 wrapped proxies.
Video Media Format Playback Support Send to Playback Support Apple ProRes Not Supported Not Supported AVC-Intra 50, 100 (1080i) All frame rates 50, 59.94 Compatibility Notes Video Media Format Playback Support Send to Playback Support AVC-Intra 100 (1080p) All frame rates Not Supported AVC-Intra 50, 100 (720p) 50, 59.94 50, 59.94 AVC Long GOP 12, 25, 50 (720p) 50, 59.94 50, 59.94 AVC Long GOP 12, 25, 50 (1080i) 25, 29.97 25, 29.97 AVC Long GOP 12, 25, 50 (1080p) 25, 29.97 Not Supported Avid JFIF 2:1, 3:1, 10:1, 20:1 25, 29.97 Not Supported DNxGX Not Supported Not Supported DNxHD 1080 36, 45, 80, 85, 100 All frame rates Not Supported DNxHD 1080 115, 120, 145, 175, 185, 220 All frame rates 25, 29.97 DNxHD 1080 175X, 185X, 220X All frame rates 25, 29.97 DNxHD 720p 40 Not Supported Not Supported DNxHD 720p 45, 50 25, 29.97 Not Supported DNxHD 720p 60, 75, 90, 110, 145, 220 25, 29.97 25, 29.97, 50, 59.94 DNxHD 720p 90X, 110X, 220X 25, 29.97 25, 29.97, 50, 59.94 DNxHD 720p 85, 100, 120, 185 50, 59.94 Not Supported DNxHD 720p 185X 50, 59.94 Not Supported DNxHD 1080p 75, 90, 165, 200, 240, 290 50, 59.94 Not Supported DNxHD 1080p 365, 440 50, 59.94 Not Supported DNxHD 1080p 365X, 440X 50, 59.94 Not Supported DV 25 411 25, 29.97 25, 29.97 DV 50 25, 29.97 25, 29.97 DV100 HD 1080i (DVCPro HD) All frame rates 50, 59.94 DV100 HD 720p (DVCPro HD) 50, 59.94 50, 59.94 H.263 (MPEG-1 Layer 2 proxy) 25, 29.97 Not Supported H.264 (MPEG-1 Layer 2 proxy) 25, 29.97 Not Supported 800 Kbps, 2 Mbps, 3 Mbps HDV (1080i) All frame rates Not Supported HDV 720p 50, 59.94 Not Supported JPEG 2000 Not Supported Not Supported MPEG (IMX) 30, 40, 50 25, 29.97 25, 29.97 MPEG-2 Long GOP 25, 29.97 Not Supported RGB Not Supported Not Supported XAVC Intra 50 (1080i) 50, 60, 23.98 Not Supported Compatibility Notes Video Media Format Playback Support Send to Playback Support XAVC-Intra 50 (1080p) Not Supported Not Supported XAVC-Intra 100 (1080p) 50, 59.94 50, 59.94 (1080i)a XAVC Long GOP 25, 35, 50 50, 59.94 Not Supported XAVC Long GOP 50 (720p)a 50, 59.94 Not Supported XDCAM-HD 17.5, Mbps (1080i) All frame rates Not Supported XDCAM-HD 35, 50 Mbps (1080i) All frame rates 50, 59.94 XDCAM-HD 50 Mbps (1080p) All frame rates Not Supported XDCAM-HD 17.5, 35 Mbps (720p) 50, 59.94 Not Supported XDCAM-HD 50 Mbps (720p) 50, 59.94 50, 59.94 XDCAM-EX 35 Mbps (1080i) All frame rates 50, 59.94 XDCAM-EX 35 Mbps (720p) 50, 59.94 50, 59.94 a Frame rate not guaranteed. Frame rate might temporarily be reduced during playback.
For additional information on supported STP formats when using Avid FastServe, see the Avid FastServe | Playout Administrator’s Guide on the Avid Knowledge Base at: https://kb.avid.com/articles/en_ US/ReadMe/FastServe-Documentation.
Bandwidth Requirements The following table presents single-user bandwidth guidelines for MediaCentral Cloud UX playback. The table is provided for guidance, and is not an indication of performance guarantees.
Proxy Setting (16:9, 30 fps) Bandwidth Needs Width Quality Value Peak Valley Typical Good 40 5.400Mbps 2.520Mbps 3.440Mbps 348 px Better 60 6.600Mbps 2.840Mbps 4.380Mbps Best 80 9.000Mbps 3.480Mbps 5.690Mbps Good 40 6.400Mbps 2.840Mbps 4.690Mbps 400 px Better 60 8.200Mbps 3.320Mbps 5.000Mbps Best 80 11.650Mbps 4.200Mbps 6.780Mbps Good 40 8.400Mbps 3.320Mbps 4.985Mbps 480 px Better 60 11.400Mbps 3.880Mbps 6.300Mbps Best 80 15.400Mbps 5.080Mbps 9.480Mbps Good 40 11.295Mbps 4.179Mbps 6.529Mbps 560 px Better 60 14.868Mbps 5.023Mbps 8.547Mbps Best 80 21.009Mbps 6.694Mbps 12.284Mbps Good 40 14.324Mbps 5.029Mbps 8.098Mbps Compatibility Notes Proxy Setting (16:9, 30 fps) Bandwidth Needs Width Quality Value Peak Valley Typical 640 px Better 60 18.991Mbps 6.131Mbps 10.735Mbps Best 80 27.011Mbps 8.315Mbps 15.616Mbps Good 40 17.757Mbps 5.993Mbps 9.878Mbps 720 px Better 60 23.664Mbps 7.338Mbps 13.215Mbps Best 80 33.814Mbps 10.152Mbps 19.392Mbps Good 40 30.480Mbps 9.566Mbps 16.472Mbps 960 px Better 60 40.980Mbps 12.046Mbps 22.405Mbps Best 80 59.028Mbps 16.959Mbps 33.385Mbps The following table explains the contents in detail.
Item Description Width 348 pixels is the minimum player width; 960 pixels is the max. Height depends on the aspect ratio. The table assumes an aspect ratio of 16:9.
Quality Refers to the quality setting in the Player set via the UI.
Value Each quality setting has a numeric value. The value corresponds to the level of compression used to encode the JPEG.
Peak Video with high color variation (e.g. wide shot of a crowd) Valley Video with low color variation (e.g. half of frame consists of a clear blue sky) Typical A wide range of footage (e.g. interiors, exteriors, interviews). The typical shot tends closer to valley values than peak values.
Audio All bandwidth figures include audio consisting of 44.1 kHz sample rate x 16-bit/sample x 2 tracks = 1.4 Mbps New Features in MediaCentral Cloud UX 2026.4.0 New Features in MediaCentral Cloud UX 2026.4.0 This topic provides an overview of the major new features in this release of MediaCentral Cloud UX.
Asset Editor: Transcript Tab Feature Description Summary Mode Toggle In the Transcript tab header you can now use the additional Summary toggle button to switch to Summary mode.
By default, the Transcript mode is selected.
Creating Summaries Powered by Avid AI, the Transcript tab now lets you create summaries for transcripts. Users of a group that has the required entitlement "Avid AI Summary RW Access" assigned, can do the following in the Transcript tab:
- Initiate the summary creation for transcripts
- Display and inspect summaries
- Copy summary text
- Export summaries
For more information, see "Using Summaries" in the Avid MediaCentral | Cloud UX User's Guide.
Type identifier in When you export a transcript, translation, or summary, now a type suffix (_ downloaded file names transcript, _translation or _summary) is added to the downloaded file name.
Avid AI Feature Description Avid AI Admin App This release adds the following enhancements to the Avid AI app:
- New section"Summaries": Lets you define the default length of each
summary created from the Transcript tab.
- Transcriptions: The sections has been enhanced and provides more fine
granular options to resynchronize status and search information for transcripts, translations and summaries.
For more information, see "Using the Avid AI App" in the Avid MediaCentral | Cloud UX Installation Guide.
Avid Content Core Avid Content Core (or ACC for short) is a SaaS-based asset discovery and management system that combines Avid's extensive experience in the media industry with emerging AI technology, and the nearly infinite scalability of the cloud to create a solution that empowers individuals within your organization with the ability to create and deliver stories with greater speed, clarity, and impact.
New Features in MediaCentral Cloud UX 2026.4.0 This release of MediaCentral Cloud UX includes the scripts and apps required to establish an Avid Content Core integrated workflow. For more information, see "Integrating with Avid Content Core" in the Avid MediaCentral | Cloud UX Installation Guide.
For additional information on Avid Content Core, see https://docs.avid.com/acc/Content/ACC_ Help/Welcome.htm.
Avid Production Management Feature Description Updating PostgreSQL If needed, this release enables administrators to change the password for the Passwords system's PostgreSQL user accounts.
For information on these accounts, see "Running the APM Core Configuration Script", and "Changing the PostgreSQL Password" in the Avid MediaCentral | Cloud UX Installation Guide.
Restoring a Database The process for restoring an Avid Production Management database backup has been enhanced to address issues related to the combination of incremental backups.
For more information, see "Restoring a Database Backup" in the Avid MediaCentral | Cloud UX Installation Guide. For additional information, see PRS- 4152 under the "Limitations and Defects Found in Version 2026.4.0" on page 40.
Avid Production The commands used to enable, disable, or obtain the status of the notifications Management service have been updated and simplified.
Notifications Service For more information, see "Enabling Integration with the Rules Engine" in the Avid MediaCentral | Cloud UX Installation Guide.
New Features in MediaCentral Cloud UX 2026.4.0 Fast Bar Customization Feature Description Persistent Configuration You can now reconfigure the Fast Bar to reorder and to show or hide apps. These changes are saved to the server so that each user's preferences are consistent across user sessions.
For more information, see "Managing the Fast Bar" in the Avid MediaCentral | Cloud UX User's Guide.
Reset to Default When in edit mode, the system displays a Reset to Default button that allows you to revert the app order and display state back to factory default.
Help and Learn The What's New section of the Help and Learn menu has been removed in this release. You can still use this menu to access online documentation and product tutorials.
For details, see "Using the Help & Learn System" in the Avid MediaCentral | Cloud UX User's Guide.
Installation and Configuration Feature Description Install / Upgrade MediaCentral Cloud UX v2025.6 introduced a new way to deploy the feature Process packs, but maintained the ability to deploy the feature packs using the method described in prior releases.
avidctl platform This release requires you to use the new method only. The deploy command has been updated so that it no longer prompts you to mount the feature packs to the /features directory. The script also depreciates the -- skip-feature-pack-import switch because this option is now forced. You avidctl platform import must import the feature packs using the command prior to using the deploy command.
Post-Install / Upgrade The following installation scripts are new or include updates:
Setup Scripts
- Configuring Settings for Creative Tools
New options to list and remove Avid NEXIS workspaces.
- Configuring Avid Content Core
Describes the scripts needed to define values for the connection to ACC.
Feature Packs The following feature packs are introduced in this release:
- Avid Content Core Connector (ACC)
Deploys features that enable the integration with Avid Content Core Kubernetes Certificates The process for "Upgrading the Kubernetes Client Certificate" in the Avid MediaCentral | Cloud UX Installation Guide has been simplified for 4+ node clusters.
New Features in MediaCentral Cloud UX 2026.4.0 MediaCentral Acquire Feature Description Automatic Channel The Recording Details | New window now includes an Automatic toggle. If you Assignment enable this feature, Acquire selects a channel for you automatically during the planned recording time window.
For more information, see "Scheduling New Recordings" in the Avid MediaCentral | Cloud UX User's Guide.
MediaCentral Cloud UX Mobile App Feature Description iOS Support Avid conducted a series of tests to verify Mobile App support for iOS 18.
> **Note:** Mobile App operational testing was limited to a Newsroom Management
workflow only.
For more information on iOS support, see the MediaCentral Compatibility Matrix on the Avid Knowledge Base.
Documentation Update While the Mobile App is supported in this release, the v2025.10 MediaCentral Cloud UX documentation was updated to remove references to the MediaCentral Cloud UX Mobile App. These changes persist in the v2026.4 and later documentation.
If you need more information about the app, see the Avid MediaCentral | Cloud UX App for iOS User’s Guide or the MediaCentral Cloud UX v2024.10 documentation.
Media Services Profile Builder The Media Services Profile Builder app allows you to build presets and profiles that enable Next Gen Media Services workflows. If you are familiar with MediaCentral Production Management's family of Production Services, you can consider NGMS to be the evolution of that functionality. NGMS is enabled through a set of services that run on your MediaCentral Cloud UX system and have no dependency on traditional Production Management services that ran on Microsoft Windows.
In this release, the primary function of the app is to provide integration with Avid Content Core. However, this release also offers a preview of the services that allow Exports to SMB (CIFS), AWS and GCP cloud storage destinations, as well as a Send to Playback workflow to Avid Stream IO.
For more information, see "Using the Media Services Profile Builder App" in the Avid MediaCentral | Cloud UX Installation Guide.
Platform Automation: Engines and Services Feature Description Action Engine Content This release adds the platform automation service Action Engine Content Core Core (new) (avid-platform-ae-contentcore-acc):
New Features in MediaCentral Cloud UX 2026.4.0 Feature Description
- The Action Engine Content Core triggers Create Job and Update Job
actions in the Avid Content Core Proxy Job Lifecycle Service.
- Deployment: feature pack Avid Content Core Connector (acc)
ACC Event Connector This release adds the Kafka plugin ACC Event Connector (acc-event-connector):
(new)
- The ACC Event Connector collects ACC event messages from an Amazon
SQS queue and publishes them to the Kafka topic “avid.changes”.
Deployment: feature pack Avid Content Core Connector (acc)
- Action Engine Xform This release adds the GA version of the platform automation service Action Engine
(new) Xform (avid-platform-actionengine-xform):
- The Action Engine Xform integrates the Next Gen Media Services into the
Platform Automation and executes Next Gen Media Services actions (Create Proxy, Media Export).
- Deployment: feature pack mediaservices
Avid UI Platform The Avid UI Platform Automation plug-in has been changed:
Automation plug-in: new
- The plug-in provides a new Command option in the MediaCentral Cloud UX
command (Media Browse and Search apps: Media Export. The Media Export command can be Export) and removed used with Production Management master clips, subclips and sequences.
command (Media Analytics) The action is only available for users of a group that has the corresponding entitlement assigned: Action Publisher (ent_mcs_wm_publish).
For more information, see "Starting a Media Export Command" in the Avid MediaCentral | Cloud UX User's Guide.
- Creating summaries can now be triggered in the Transcript tab (see "Asset
Editor: Transcript Tab" on page 12). Usage of the Media Analytics command > Avid AI Summary (Preview), which was available as a Tech Preview in version 2025.10, therefore has been discarded. The topic "Starting a Media Analytics Command (Preview)" has been removed from the Avid MediaCentral | Cloud UX User's Guide.
Platform Automation: Rules Editor App Feature Description Support for Avid Content In the Rules Editor app, Avid Content Core is now supported as new rule type.
Core rules For the integration of MCCUX with ACC, a set of default rules is available. These default rules enable Create Proxy workflows when
- proxy media is missing in ACC for playback or analysis
- a proxy needs to be created and uploaded to ACC when a new master clip
is ingested to Production Management.
For more information, see "Avid Content Core Default Rules" in the Avid MediaCentral | Cloud UX Installation Guide.
Action Retry In the Rules Editor and Schedule Editors apps, you can now use the Action Retry Configuration utility Configuration utility to define long-term retries for failed platform automation New Features in MediaCentral Cloud UX 2026.4.0 Feature Description actions. You can define which actions will have a long-term retry and set options for the long-term retry, such as delay and maximum number of retry attempts.
For more information, see "Using the Action Retry Configurator" in the Avid MediaCentral | Cloud UX Installation Guide Using the Action Retry Configurator makes long-term retry configuration by manually editing the configMap "avid-platform-action-monitor-ae-core" obsolete. Therefore, the topic "Configuring Long-Term Retry for Platform Automation Actions" has been removed from the Installation Guide.
Comparison Operator For attributes of type taxonomy you can now use a new Comparison Operator "Transitions from... to..." when defining Conditions for an Entity: Transitions from ... to... The operator lets for Conditions you define a condition that triggers the rule execution based on the change of an attribute from a defined Previous Value to a defined Current Value.
For more information, see "Using the Transition Operator for Taxonomies" in the Avid MediaCentral | Cloud UX Installation Guide.
Reset of values in actions Before, after selecting a value from a drop-down list you had no option to remove the value and reset the list to initial state. Now, you can remove the selected value.
Support for multi-value Before, a control for adding multi-text values was only available for some text in actions predefined properties. Now, the control is available for any multi-text property, as shown in the following example.
Support for Date Properties of type Date are no longer hidden in action specifications and can now properties in actions be used when defining an action. When you select or add a property of type date, the input type is set to Expression by default, the type Property is also supported.
To specify a date value, formulate it as an expression.
While in most actions a date includes a time value, for CTMS actions date and date-time are handled separately and therefor require different expressions. For more information, see "Using Expressions" in the Avid MediaCentral | Cloud UX Installation Guide.
Production Management In both, Avid Production Management and MediaCentral Production Management rules: support for Create rules, you can use the actions Create Proxy and Media Export.
Proxy and Media Export For more information, see "Defining a Create Proxy Action" and "Defining a Media actions Export Action" in the Avid MediaCentral | Cloud UX Installation Guide.
Production Management For both, Avid Production Management and MediaCentral Production rules: support for AMA Management rules, the following hard-coded properties have been added for use Status and Media Status in conditions: AMA Status and Media Status.
properties in conditions
- For AMA Status, the following values can be selected from a list: No AMA
media, Only AMA media, Avid & AMA media.
- For Media Status, the following values can be selected from a list: Online,
Offline, Nearonline, Partial.
New Features in MediaCentral Cloud UX 2026.4.0 Feature Description For more information, see "Conditions: Attributes and Operators" in the Avid MediaCentral | Cloud UX Installation Guide.
Avid Production In Avid Production Management rules, you can use the actions Add to Publishing Management rules: Output and Add to Story.
support for Add to For more information, see "Defining an Add to Publishing Output Action" and Publishing Output and "Defining an Add to Story" in the Avid MediaCentral | Cloud UX Installation Guide.
Add to Story actions Enhancements of Publish Two controls have been added to the actions Publish and Publish Publishing and Publish Publishing Output:
Output actions
- Publisher User Profile list
- Publisher Tags
Usage of these controls is optional; they can be used in customized workflows where this information is needed for publish jobs.
For more information, see "Defining a Publish Action" and "Defining a Publish Publishing Output Action" in the Avid MediaCentral | Cloud UX Installation Guide.
Collapsible sidebar You can now collapse the Rules Editor sidebar to increase the screen space for the other panels. To always provide the context, the name of the rule type selected in the sidebar is now shown as part of the Rules Editor header.
For more information, see "The Sidebar" in the Avid MediaCentral | Cloud UX Installation Guide.
Platform Automation: Schedule Editor App Feature Description Toggle to switch between In the Schedule Editor app, you can now show scheduled jobs that are auto- user-defined and auto- generated by the system as part of long-term retries for failed platform generated jobs automation actions. A System toggle button lets you switch between user-defined and auto-generated jobs. Note that showing user-defined and auto-generated jobs at the same time is not supported.
For more information, see "Using Auto-Generated Jobs" in the Avid MediaCentral | Cloud UX Installation Guide.
Action Retry See "Action Retry Configuration utility" on page 16.
Configuration utility Enhancement of Publish Two controls have been added to the action Publish:
action Publisher User Profile list
- Publisher Tags
- Usage of these controls is optional; they can be used in customized workflows
where this information is needed for publish jobs.
For more information, see "Defining a Publish Action" in the Avid MediaCentral | Cloud UX Installation Guide.
Support for actions You can now use the actions Create Proxy and Media Export for Avid Production New Features in MediaCentral Cloud UX 2026.4.0 Feature Description Create Proxy and Media Management and MediaCentral Production Management assets.
Export For more information, see "Defining a Create Proxy Action" and "Defining a Media Export Action" in the Avid MediaCentral | Cloud UX Installation Guide.
Process App / Job Monitor Feature Description New sidebar filter and In the Process app, you can now use "Job Kind" as a sidebar filter and show it as a job list column: Job Kind column in the Processes list.
For more information, see "Showing and Hiding Columns" and "Applying Filters from the Process Sidebar" in the Avid MediaCentral | Cloud UX User's Guide.
Search App Feature Description MediaCentral Phonetic This release depreciates MediaCentral Phonetic Index in favor of Avid Transcribe.
Index If you are actively using Phonetic Index, the related software is removed during the upgrade to v2026.4. After the upgrade, you can power-down or repurpose the Nexidia Search Grid™ server as it is no longer required.
References to Phonetic Indexing have been removed from the product and the documentation.
Hits Tab Removal This release eliminates the Hits tab from the Asset Editor. You can use the Inline- Hits window as a replacement for this functionality.
Change to Boolean To avoid a potential incompatibility that could lead to failed searches, the "Is Set" Search Options and "Is Not Set" options have been removed from pill types that are associated with these menu options (such as the Has Audio pill).
Is Set and Is Not Set remain available for metadata attribute pill types such as System ID.
For more information, see "Boolean and Numerical Search Terms" in the Avid MediaCentral | Cloud UX User's Guide.
Search Index Monitor App Feature Description Support for Avid The app includes a new Content Core Agent section that allows you to synchronize Content Core the local index of Avid Production Management and MediaCentral Production Management systems with Avid Content Core.
For more information, see "Configuring the Content Core Agent" in the Avid MediaCentral | Cloud UX Installation Guide.
New Features in MediaCentral Cloud UX 2026.4.0 System Feature Description VPN Requirement Change This release allows users that are outside of their protected network to connect to MediaCentral Cloud UX without the use of a VPN service.
For more information, see "Remote Client Connections" in the Avid MediaCentral | Cloud UX Installation Guide.
Configuring a Proxy The process for "Updating Servers - Proxy Method" has been updated with a new step to configure a configuration file for the curl command. Without this update the "hardening-os : Update rkhunter databases" step in the installation or upgrade process will fail.
If you have configured your server to use a proxy connection, see "Installing Ubuntu Software Updates" in the Avid MediaCentral | Cloud UX Installation Guide for details.
Elasticsearch This release updates Elasticsearch to version 9.
MongoDB This release updates MongoDB to v8.2.3.
NGINX Replacement NGINX Ingress, one of the underlying technologies in MediaCentral Cloud UX, announced its end of life. Avid replaced this functionality with an alternative solution.
Due to this change, the process for "Increasing the Header Buffer" in the "Configuring an Authentication Provider" section of the Avid MediaCentral | Cloud UX Installation Guide has been removed.
Wolftech News This release includes Wolftech Workflow Engine v16.
Upgrading to MediaCentral Cloud UX v2026.4 Upgrading to MediaCentral Cloud UX v2026.4 The following procedure can be used to upgrade an existing MediaCentral Cloud UX server or cluster. If you are performing a new installation, see the Avid MediaCentral | Cloud UX Installation Guide for detailed instructions.
If you are running a version of MediaCentral Cloud UX prior to v2024.10, you must upgrade your servers to the v2024.10 LTM release (at minimum) before upgrading to v2026.4. This requirement applies to both Platform and Feature Packs. For more information on that upgrade process, refer to the v2024.10 Avid MediaCentral | Cloud UX ReadMe for details.
If you are running MediaCentral Cloud UX v2025.6, you must first upgrade to v2025.10 before upgrading to v2026.4.
Refer to the following processes to complete the upgrade:
- (cluster-only) "Verifying the Primary Node" on the next page
- "Upgrading Ubuntu" on the next page
This process describes how to upgrade Ubuntu to the version of software required for this MediaCentral Cloud UX release.
Required for all servers. If you have a cluster, you must complete this process on all nodes.
This process uses the Feature Pack ISO. If you have a cluster, you must complete this process on the primary node only.
- You must review this information for all upgrades.
The steps required to install this release on single-server configurations or clustered configurations are similar. Any variations for clustered systems are noted. If you are familiar with the process to install a new MediaCentral Cloud UX server, the upgrade process should look very familiar to you. As such, you can reference the Avid MediaCentral | Cloud UX Installation Guide for additional information on many of the topics referenced below.
Prior to beginning the upgrade, you must obtain the MediaCentral Cloud UX installation media. For more information, see "Avid MediaCentral Cloud UX Installation Media" on page 6.
Consult the MediaCentral Compatibility Matrix prior to upgrading any application or system to ensure that you understand the scope of the upgrade. In some cases, you might be required to upgrade additional components to maintain system compatibility.
Upgrading Multi-Site Environments The following upgrade process applies to both single and multi-site environments. There are no specific or custom steps required for a multi-site configuration. Prior to upgrading a multi-site environment, make sure that you have read and understood the site compatibility requirements. For more information, see "Upgrade Options for Multi-Site Environments" on page 4.
Partner Applications If you have installed any partner applications on your MediaCentral Cloud UX system, the enhancements made to this release might require you to reinstall these applications after you complete the upgrade. In some cases, you might also need to reconfigure some partner app settings. For more information, see Upgrading to MediaCentral Cloud UX v2026.4 http://developer.avid.com/cert/feature-pack-installation/docs-public/README.html.
Troubleshooting If you experience any issues with the MediaCentral Cloud UX user interface directly after upgrading your servers, you might try clearing the browser cache on your local workstation as an initial troubleshooting step.
Verifying the Primary Node The first three nodes in a MediaCentral Cloud UX cluster are considered Control Plane nodes. When you initially installed and configured the cluster, you were asked to define a “primary” Control Plane node.
When performing an upgrade, you must execute the process from the primary node.
If you are upgrading a single-server environment, you can bypass this process and proceed directly to "Upgrading Ubuntu" below.
To verify the primary node:
- (cluster only) Identify your “primary” node.
The primary node is the only node in the cluster that includes a service-host-inventory.json file at /etc. Select a node in your cluster and enter the following command to determine if the system configuration files are present on this node:
sudo ls /etc/ If you see the file listed, you've found the primary node. If you do not see the file, issue the command on each of your cluster nodes until you find the primary.
Upgrading Ubuntu This topic includes a process for upgrading a MediaCentral Cloud UX single-server or cluster from Canonical Ubuntu v22.04 LTS (Jammy Jellyfish) to v24.04 LTS (Noble Numbat). While this process is provided for convenience, you should consult Ubuntu's official documentation in the event that you have any issues or additional questions.
For more information and resources, see "Ubuntu Technical Support" in the Avid MediaCentral | Cloud UX Installation Guide. You can also review the Ubuntu 24.04 release notes at: https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-notes/39890.
> **Note:** Ubuntu does not support a rollback from v24.04 to v22.04. If you need to revert back to Ubuntu
v22.04, Avid suggests performing a clean install of the operating system.
All steps in the following process apply to single-node configurations. If you are configured in a cluster, note the following:
optional: Identifies an optional, but recommended step.
- node1: If you are running a cluster, this step must be completed on the primary node only.
- all: If you are running a cluster, this step must be completed on every control plane, and worker
- node.
Following the successful upgrade to Ubuntu v24.04, you will continue to upgrade your MediaCentral Cloud UX to the version of software referenced in this document.
Upgrading to MediaCentral Cloud UX v2026.4 Upgrading Ubuntu to v24.04 The following process applies to MediaCentral Cloud UX systems running v2024.10 only. If you are running a version of MediaCentral Cloud UX that is prior to v2024.10, you must upgrade to that version before completing this process.
> **Note:** If you are running v2025.6, you must first upgrade to v2025.10 - which includes the Ubuntu upgrade
process.
To upgrade to Ubuntu v24.04:
1. Review the following prerequisites:
a. Verify that your MediaCentral Cloud UX system is running v2024.10.
b. Prior to bringing MediaCentral Cloud UX offline, make sure you know what feature packs are deployed so that you can redeploy the same feature packs after the upgrade.
c. If you have installed any 3rd party packages, contact the original vendor to verify compatibility with Ubuntu v24.04.
d. (if necessary) Uninstall any 3rd party software, and reinstall the software following the upgrade.
e. If you are working in a virtual environment, you might consider creating a "snapshot" of your existing 22.04 system before proceeding with the upgrade.
2. (optional, node1) Create a backup of the following:
  - Configuration files. For details, see "Backup or Restore your Config Store" in the Avid
MediaCentral | Cloud UX Installation Guide.
  - MongoDB. For details, see "Backing up the Mongo Database" in the Avid MediaCentral |
Cloud UX Installation Guide.
Avid recommends creating a backup of these files in the unlikely event that the Ubuntu upgrade does not go as expected and you are unable to access your system. After you create the backups, save these files to an external drive or network share (separate from your MediaCentral Cloud UX server(s)).
3. (node1) Enter the following command to list your MediaCentral Cloud UX nodes and verify that
each is running the Ubuntu 22.04.<x> LTS OS Image:
sudo kubectl get node -o wide
4. (node1) From your single server or primary cluster node, enter the following command to drain the
services from your node(s):
sudo avidctl node drain --all
5. (node1) Uninstall MediaCentral Cloud UX:
sudo avidctl platform teardown
6. (all) Take the node(s) offline and instruct Kuburnetes to keep them offline with the --permanent
switch:
sudo avidctl node offline --permanent --skip-drain Upgrading to MediaCentral Cloud UX v2026.4
7. (all) Update the Ubuntu software packages to ensure that you have the latest versions available.
a. sudo apt update b. sudo apt upgrade -y c. sudo apt dist-upgrade -y d. sudo apt autoremove -y For more information on these commands, see "Installing Ubuntu Software Updates" in the Avid MediaCentral | Cloud UX Installation Guide.
8. (all) Install the Update Manager software:
sudo apt install update-manager-core Prompt
9. (all) Following the installation, enter the following command to ensure that the value has a
value of lts.
sudo cat /etc/update-manager/release-upgrades For example:
admin@wavd-mcux:~$ sudo cat /etc/update-manager/release-upgrades # Default behavior for the release upgrader.
[DEFAULT] # Default prompting and upgrade behavior, valid options:
# # never - Never check for, or allow upgrading to, a new release.
# normal - Check to see if a new release is available. If more than one new # release is found, the release upgrader will attempt to upgrade to # the supported release that immediately succeeds the # currently-running release.
# lts - Check to see if a new LTS release is available. The upgrader # will attempt to upgrade to the first LTS release available after # the currently-running one. Note that if this option is used and # the currently-running release is not itself an LTS release the # upgrader will assume prompt was meant to be normal.
Prompt=lts This value determines how the do-release-upgrade command handles the Ubuntu upgrade.
With a value of lts, the upgrade tool knows to install the LTS release only.
10. (all) Reboot the MediaCentral Cloud UX node(s):
sudo reboot Following the reboot, sign back into the operating system.
11. (all) Stop and disable auditd:
systemctl stop auditd systemctl disable auditd This service is re-enabled automatically on the next reboot of the server.
12. (all) Check for the latest Ubuntu LTS release:
sudo do-release-upgrade -c The system should reply with information similar to the following:
Upgrading to MediaCentral Cloud UX v2026.4 admin@wavd-mcux:~$ sudo do-release-upgrade -c Checking for a new Ubuntu release New release '24.04.2 LTS' available.
Run 'do-release-upgrade' to upgrade to it.
13. (all) Upgrade your server to Ubuntu 24.04 LTS:
sudo DEBIAN_FRONTEND=noninteractive UCF_FORCE_CONFFOLD=YES do-release- upgrade -f DistUpgradeViewNonInteractive
14. (all, if applicable) If you completed the process in the Avid MediaCentral | Cloud UX Installation
Guide to "Configure the NTP Source" the upgrade process prompts you with the following choice:
Configuration file '/etc/systemd/timesyncd.conf' ==> Modified (by you or by a script) since installation.
==> Package distributor has shipped an updated version.
What would you like to do about it ? Your options are:
Y or I : install the package maintainer's version N or O : keep your currently-installed version D : show the differences between the versions Z : start a shell to examine the situation The default action is to keep your current version.
*** timesyncd.conf (Y/I/N/O/D/Z) [default=N] ?
You can do either of the following to continue:
- Type N (for no) and press Enter to continue.
- Do nothing. The upgrade script selects the No option automatically after a few minutes.
> **Note:** If the system prompts you with any other choices during the upgrade, follow the on-screen
prompts to continue. If you are unsure about a choice, select the default option.
If the upgrade is successful, the system should return you to the console prompt with no errors. The upgrade process does not display any "upgrade complete" or "upgrade successful" messages.
Alternatively, you can review the /var/log/dist-upgrade/ logs for errors.
15. (all) Reboot the MediaCentral Cloud UX node(s):
sudo reboot
16. (all) Following the reboot, sign back into Ubuntu and verify that your system is running 24.04:
lsb_release -a Your output should look similar to the following:
No LSB modules are available.
Distributor ID: Ubuntu Description: Ubuntu 24.04.2 LTS Release: 24.04 Codename: noble
17. (all) Reinstall Ubuntu Uncomplicated Firewall (UFW):
sudo apt install ufw -y Upgrading to MediaCentral Cloud UX v2026.4 Updating the Platform After you upgrade the operating system, you must upgrade the MediaCentral Cloud UX software, and restore any files that you might have saved as part of a backup process.
The host-upgrade process requires outbound/inbound access to the internet to download and update various system packages. If your MediaCentral Cloud UX system does not have direct internet access, see the process for “Updating Servers - Proxy Method” in the Avid MediaCentral | Cloud UX Installation Guide to enable a path for these downloads.
To upgrade MediaCentral Cloud UX:
1. (all) Copy the mediacentral_platform_<build>.bin file to your MediaCentral Cloud UX server.
For options, see "Copying Software to the MCUX Server" in the Avid MediaCentral | Cloud UX Installation Guide.
2. (all) Before you can install the software, you must update the permissions on the mediacentral_
platform_<version>.bin file:
sudo chmod +x mediacentral_platform_<version>.bin
3. (all) Install the MediaCentral Cloud UX Platform software:
sudo ./mediacentral_platform_<version>.bin The system verifies the integrity of the archive and installs the updated packages.
4. (node1) Perform the host upgrade.
a. Enter one of the following commands to upgrade the Platform software on the server:
- If you have enabled password-less access on all nodes by completing the process for
"Logging in to Ubuntu for the First Time" in the Avid MediaCentral Cloud UX Install Guide, enter the following command:
sudo avidctl platform host-upgrade --ssh-user <user> Where <user> is the name of your Ubuntu user account.
- If you did not enable password-less access on all nodes, enter the following:
sudo avidctl platform host-upgrade --ask-become-pass --ssh-user <user> Where <user> is the name of your Ubuntu user account.
b. At the upgrade verification prompt, enter y (Y) to continue, or n (N) to exit the script.
c. The script prompts you for your SSH password.
Type your user password and press Enter (or Return on a Mac keyboard) to continue.
As shown in the following example, the script might attempt to restart some tasks during the upgrade process. These retries appear as failures in the script output, but this is normal and expected behavior.
TASK [kube-registry : Wait for Chart Repository] ************************* FAILED - RETRYING: Wait for Chart Repository (30 retries left).
FAILED - RETRYING: Wait for Chart Repository (29 retries left).
...
TASK [kube-registry : fail] ********************************************** skipping: [wavd-mcux01] Upgrading to MediaCentral Cloud UX v2026.4 After the upgrade process is complete, a message similar to the following is displayed (example from a three-node cluster):
PLAY RECAP ************************************************************ wavd-mcux01 : ok=277 changed=52 unreachable=0 failed=0 skipped=72 rescued=0 wavd-mcux02 : ok=225 changed=34 unreachable=0 failed=0 wavd-mcux03 : ok=225 changed=34 unreachable=0 failed=0 ------------------------- Log file: /var/log/service-host-upgrade-1537275725.log Review the results and verify that there are no failed tasks. If you see a failure, you must troubleshoot the issue before continuing with the installation process.
5. (all) If necessary, upgrade the Avid NEXIS Client on your MediaCentral Cloud UX servers.
For more information on that process, see "Installing the Avid NEXIS Client" in the Avid MediaCentral | Cloud UX Installation Guide.
6. (all) Reboot each node, in any order:
sudo reboot
7. (node1) Sign back in to Linux and uncordon the nodes:
sudo avidctl node uncordon --all
8. Wait a few minutes and then enter the following commands to obtain the status of the Kubernetes
nodes.
a. Enter the following command to obtain the status of the Kubernetes nodes:
sudo kubectl get nodes Each server in your MediaCentral Cloud UX configuration should be listed under the name column and the status of each node should report as Ready. The following example text shows a four node cluster configuration (example version numbers might not reflect the versions included in this release):
NAME STATUS ROLES AGE VERSION wavd-mcux01 Ready control-plane,etcd,master 10m v1.33.9+k3s1 wavd-mcux02 Ready control-plane,etcd,master 10m v1.33.9+k3s1 wavd-mcux03 Ready control-plane,etcd,master 10m v1.33.9+k3s1 wavd-mcux04 Ready <none> 10m v1.33.9+k3s1 b. If the previous command reports that all nodes are Ready, enter the following command to verify that the Kubernetes pods are running:
sudo kubectl --namespace kube-system get pods The command should report that each pod is Ready and Running as in the following example (from a single-server configuration):
NAME READY STATUS RESTARTS AGE coredns-5c6b6c5476-zrpvw 1/1 Running 0 30m metrics-server-7b67f64457-hq5wr 1/1 Running 0 30m c. Verify that the registry pods are ready and running:
sudo kubectl get po -n registry Example below from a single-server configuration:
NAME READY STATUS RESTARTS AGE registry-wftf2 2/2 Running 0 23h Upgrading to MediaCentral Cloud UX v2026.4 d. Verify that the cert-manager pods are ready and running:
sudo kubectl get po -n cert-manager Example below from a single-server configuration:
NAME READY STATUS RESTARTS AGE cert-manager-6664c2286c-88qgv 1/1 Running 2 (46h ago) 36m cert-manager-cainjector-5fffb-zxb68 1/1 Running 2 (46h ago) 36m cert-manager-webhook-74b58c8-d6cbk 1/1 Running 0 36m trust-manager-855b67d48c-fr58sk 1/1 Running 0 35m
> **Note:** The suffixes associated with the pod names are custom to each server and therefore will look
coredns different on each system. For example, will have a different suffix on your system.
All of the above should report Ready or Running prior to Updating the Feature Packs.
9. (all) Update the GlusterFS operational version.
The upgrade to Ubuntu 24.04 installs an updated version of GlusterFS. After you verify that your system is working normally, you need to complete the following steps to update the op-version.
a. From your single-server or cluster primary node, enter the following command to list the operating version:
sudo gluster volume get all cluster.op-version b. Use the value reported in the previous command to set the value for all volumes:
sudo gluster volume set all cluster.op-version <version> For example:
sudo gluster volume set all cluster.op-version 110000
10. (node1) Run new or updated configuration scripts as required.
If you are deploying a new feature as part of this upgrade, you might be required to run one or more configuration scripts to enable that feature. It is also possible that existing configuration scripts are updated with new required values for this release.
Consult the New Features section of this and all prior ReadMes that might have been released since installing your last version of MediaCentral Cloud UX to ensure that you are aware of all new features and installation requirements.
11. Continue to "Updating the Feature Packs" below.
Updating the Feature Packs Following the MediaCentral Platform upgrade, you must upgrade the feature packs. This process is divided into the following sections:
"Upgrading the MediaCentral Feature Packs" below
- Upgrading the MediaCentral Feature Packs
This process uses the Avid MediaCentral Cloud UX Feature Pack ISO to upgrade the feature packs on the MediaCentral Cloud UX server or cluster. If you have a cluster, this process is completed on the primary node only.
Upgrading to MediaCentral Cloud UX v2026.4 To upgrade the Feature Packs:
1. Use a terminal application to log in to your single-server or primary node.
2. Verify that your single-server or primary node has access to the feature pack ISO(s).
You might decide to copy the file(s) directly to the server, connect a portable USB drive to a physical server, or use another connection method. The installer must have access to the Feature release ISO at minimum.
3. Do one of the following to install the feature packs:
  - Deploy the updates included in this Feature release only:
sudo avidctl platform import /<path>/mediacentral_feature_packs_ <version>.iso
  - If you are following this process after downloading a patch for this feature pack, you can
deploy both ISOs with a single command:
sudo avidctl platform import /<path>/mediacentral_feature_packs_ <version>.iso /<path>/mediacentral_feature_packs_<version>.iso For example:
sudo avidctl platform import /media/mediacentral_feature_packs_ 2026.4.0.iso /media/mediacentral_feature_packs_2026.4.2.iso Patch releases are cumulative. If multiple patch releases are available at the point of installation, do not include each file name in the command. For example, the following would be an invalid command:
sudo avidctl platform import /media/mediacentral_feature_packs_ 2026.4.0.iso /media/mediacentral_feature_packs_2026.4.1.iso /media/mediacentral_feature_packs_2026.4.2.iso Avid supports a maximum of two ISO imports at any one time. You cannot upgrade to an LTM release and a Feature release simultaneously.
The import process mounts the ISO to a temporary folder. It then imports the images and helm charts into the local container registry. When the import is complete, the process dismounts the ISO (s) from your system automatically. The "decompress file" stage that happens early in the process does not provide feedback. This is normal behavior. Please be patient as this process can take some time to complete.
When complete, the process should finish with a "Feature Pack import was successful" message. At this point, you can delete the ISO(s) from your local storage if desired.
4. Use the following command to deploy the features included in this release:
sudo avidctl platform deploy -i The script checks the Kubernetes Config Store to verify the existence of the system configuration files. If the script finds the configuration files, it reports the status of each file [OK]. If the script cannot find the files, it alerts you to the situation and provides you with an opportunity to abort the installation and resolve the issue.
5. Next, you must determine which feature packs should be upgraded, installed, or removed.
The script prompts you with a series of yes or no questions. Each prompt is associated with a default value which is identified as a capital Y for yes or N for no. If the script determines that the feature pack is already installed, the default value is Y. If the feature pack is not installed, the default value is N.
Upgrading to MediaCentral Cloud UX v2026.4
> **Note:** If you plan to deploy Avid Production Management on your MediaCentral Cloud UX system,
answer No to the Avid Production Management prompt. Following the MediaCentral Cloud UX deployment, refer to the "Configuring Avid Production Management" section of the Avid MediaCentral | Cloud UX Installation Guide to install and configure this software.
Do one of the following:
- Press the Enter key to accept the default value.
- Press Y (or y) to upgrade or install the feature pack.
- Press N (or n) to skip or uninstall this feature pack.
If your existing installation includes a feature pack that you no longer want to use, you can N enter at the prompt to remove the feature pack from your existing installation.
The feature pack installation process begins. Be patient as this process can take some time.
6. After the installation is complete, you can use the following command to verify that the required
feature packs have been installed:
sudo helm ls The command should report 2026.4.0-v0424-G482bb90 as the App Version for all upgraded components.
> **Note:** If you deploy additional features such as Avid Production Management, the command might
report additional app version numbers that do not match the above version number.
Upgrading the Avid Production Management Feature Packs Do one of the following:
- If you have configured Avid Production Management on your MediaCentral Cloud UX system,
complete the steps below to upgrade the APM feature pack.
- If your existing installation does not already include Avid Production Management, bypass this
process and continue to "Additional Upgrade Instructions" on the next page.
(if applicable) After completing the upgrade process, you can refer to "Configuring Avid Production Management" in the Avid MediaCentral | Cloud UX Installation Guide for installation instructions.
To upgrade Avid Production Management:
1. Use a terminal application to log in to your single-server or primary node.
2. Verify that your single-server or primary node has access to the apm_feature_packs_<version>.iso
feature pack ISO.
You might decide to copy the file directly to the server, connect a portable USB drive to a physical server, or use another connection method. The installer must have access to the Feature release ISO at minimum.
3. Enter the following command on your primary MediaCentral Cloud UX cluster node to import the
feature pack:
sudo avidctl platform import /<path>/apm_feature_packs_<version>.iso The import process automatically mounts and dismounts the ISO to your system. The "decompress file" stage that happens early in the process does not provide feedback. This is normal behavior.
Please be patient as this process can take some time to complete.
When complete, the process should finish with a "Feature Pack import was successful" message.
Upgrading to MediaCentral Cloud UX v2026.4
4. Enter the following command on your primary MediaCentral Cloud UX cluster node to deploy the
APM feature pack:
sudo avidctl apm deploy
5. Enter the following command on your primary MediaCentral Cloud UX cluster node to deploy the
Media Indexer feature pack:
sudo avidctl mi deploy Additional Upgrade Instructions After you have upgraded the feature packs, complete the following additional steps.
1. (cluster-only, recommended) In some rare cases, Kafka might fail to create some topic replicas
after a system upgrade. Since this issue could affect any number of MediaCentral Cloud UX sub- systems, Avid recommends that you manually verify the replica status before you release the system back to a production-ready state. Enter the following command to check the replicas:
sudo aviddbctl kafka check-replicas
- If the script reports that all replicas are consistent, no additional action is required.
- If the script reports a warning that the "replica sets are not complete", do the following:
a. Wait appropriately 10 minutes to give the system an opportunity to correct the situation on its own.
b. Repeat the check-replicas command.
c. If the replicas are still inconsistent, enter the following to manually correct the situation:
sudo avidctl platform devtools search-reset d. Wait another 10 minutes, and repeat the check-replicas command to verify the status.
If you are still seeing inconsistent replicas, contact Avid Customer Care for assistance.
2. (recommended) Verify and if necessary, update your certificates.
As part of this upgrade process, Avid recommends that you verify the expiration dates of your deployed certificates. If you are nearing the certificate’s expiration date, you might want to take the opportunity to deploy a new certificate to avoid any potential connection issues for your users.
a. Verify your TLS certificate’s expiration date.
For more information, see “Verifying the SSL Certificate” and “Creating Certificate Files” in the Avid MediaCentral | Cloud UX Installation Guide.
b. Verify your Kubernetes certificate’s expiration date.
For more information, see “Understanding Kubernetes Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
3. As noted in the v2025.6 and v2025.10 ReadMes, this step serves as a reminder to assign service
account to the Sync Agents in the Configuration Settings app, or that your Active Directory or OpenID Default Service User is configured with the correct permissions.
For additional information, see "Assigning a Service Account to the Sync Agents" in the Avid MediaCentral | Cloud UX Installation Guide.
4. Continue to "Updating MediaCentral Search" on the next page.
Updating MediaCentral Search Updating MediaCentral Search After upgrading your MediaCentral Cloud UX system software, you might be required to rebuild your search index. However, the type of rebuild process might vary depending on the individual release or your upgrade path. The following list describes the different rebuild types:
- Data: The Search Index must be rebuilt, based on the data included in the MongoDB database.
When rebuilding the data, the existing index remains and any searches conducted during this time return valid results.
To complete this process, refer to “Rebuilding an Index” in the “Using the Search Index Monitor App” chapter of the Avid MediaCentral | Cloud UX Installation Guide. For a Data rebuild, you are not required to delete the existing data before rebuilding.
- Mapping: A Mapping rebuild first recreates the data definition of the index, and then populates it
with new data. Effectively, a Mapping rebuild includes a Data rebuild. Whenever you are asked to complete a Data rebuild, you could do a Mapping rebuild instead. The disadvantage of the Mapping rebuild is that the Search index is deleted and then re-created. If you execute a search during this rebuild, the Search app returns only partial results until the rebuild is complete.
To complete this process, refer to “Rebuilding an Index” in the “Using the Search Index Monitor App” chapter of the Avid MediaCentral | Cloud UX Installation Guide. For a Mapping rebuild, you must select the “Delete all existing data” option during the rebuild process.
If you are working in a Multi-Site environment, the following processes apply to the local MediaCentral systems only. If you upgrade your local site to the latest release, you are not required to touch the remote sites as part of the upgrade process. Similarly, if you upgrade Site-A to the current release, and then upgrade Site-B at a later date, you are not required to revisit or Site-A unless otherwise noted below.
I am upgrading Required Rebuild Type to version 2023.12 Mapping 2024.2 No rebuild required for this release 2024.10 Mapping 2025.6 Mapping 2025.10 Mapping 2026.4 This release introduces a new version of Elasticsearch whose database structure is incompatible with those included previous versions of MediaCentral Cloud UX. For this release, the Rebuild options found in the Search Index Monitor app are insufficient.
After upgrading MediaCentral Cloud UX, refer to the process for "Resetting the Text Metadata Search Index (no Kafka)" in the Avid MediaCentral | Cloud UX Installation Guide to reset and rebuild the search index.
Fixed in Version 2026.4.0 Fixed in Version 2026.4.0 The following issues have been resolved in MediaCentral Cloud UX v2026.4.0.
Action Engines Bug Number: MAM-21373. Action Engine CTMS: In the Rules Editor, the action Update Metadata provides the attributes Top Story and Main Organization although these cannot be updated for a Story or Pitch.
Bug Number: MAM-21713. Action Engine Wolftech News: The action "Send to Playback" is not ready for an Avid Production Management setup.
Asset Editor Bug Number: JP-9989. If you customize the Asset Editor tab display (show/hide) and your organization has developed one or more custom tabs for the Asset Editor, the customized list of tabs might not be consistent across user sessions.
Bug Number: MX-10447. When you double-click an Adobe Premiere Pro project in the Search app's search results, the Metadata tab does not show metadata but an “Asset is not loaded” message. This issue occurs irrespective of whether the project is locked or unlocked.
Bug Number: NEO-3350. The Asset Editor Monitor does not correctly display AVC-Intra 50 960 x 720p 59.94 (thin raster) assets correctly. Assets appear vertically stretched which then crops the top and bottom of the image.
Bug Number: NEO-3433. After overriding the default audio track patching on a News Sequence, editing segments effected by those patch changes into a new sequence might result in low in inaudible audio.
Bug Number: NEO-4011. Changing NAT/SOT audio mapping in a News sequence could result in incorrect audio playback after reloading the sequence, despite the mapping appearing correct.
Bug Number: NEO-4066. If the avidqmfi-worker service fails for any reason, Kubernetes automatically recreates the service pod. This is normal behavior. However if requests are sent to the service during this short outage, those requests are lost. This could result in the Asset Editor displaying a Loading message for longer periods than normal when loading the requested media asset.
Bug Number: NEO-4077. If MediaCentral Cloud UX encounters an issue extracting metadata from an asset, the Asset Editor can enter a perpetual "Loading" state.
Bug Number: NEO-4105. If you load a sequence via the Rundown app and then perform a match frame on any segment in that sequence, the Asset Editor does not allow you to mark a new In point on that source asset. Instead the system replies with the following error: "Unable to obtain all edit locks. Permission denied."
> **Note:** The fix for this issue results in a small workflow change. After performing the steps above to load the
source asset, the addition of the Mark In point does not generate an add to the Undo stack. If you want to remove the Mark In point, use the keyboard shortcut (Shift+I or Shift+E).
Fixed in Version 2026.4.0 Bug Number: NEO-4140. Loading long, often multi-hour assets into the player can delay the appearance of the headframe and the ability to play the asset.
Bug Number: NEO-4141. After scrubbing to the end of the sequence in the Sequence Timeline, a subsequent edit at the end of the timeline results in an unintended single flash frame edit of the previous asset.
Bug Number: NEO-4143. MediaCentral Asset Management EDLs might fail to playback if the sequence includes short (1 frame) edits.
Bug Number: NEO-4179. MediaCentral Cloud UX creates audio voiceover assets that include invalid data in the footer partition. This causes the file to have compatibility issues with certain 3rd party integrations, such as Glookast.
Bug Number: NEO-4183. If you use Production services to Deliver (Send Partial option) a voice-over recording, the destination MediaCentral Cloud UX system plays the asset, but no audio can be heard.
Bug Number: NEO-3807, NEO-4200. When dragging an asset from the Asset Editor to the Sequence Timeline, the user interface might display a larger transparent frame of media instead of the expected thumbnail image during the drag and drop operation.
Bug Number: NEO-4203. Recent patch releases of MediaCentral Cloud UX changed the default audio scrub duration to a value of 33ms. While this change was intentional and made for more accurate scrubbing per frame, the customer feedback was that this resulted in a poorer audio scrubbing experience. This fix resets the duration back to the 100ms value that was present in all prior LTM releases.
Avid Production Management Bug Number: ASSETS-5196. Attempting to delete an asset and its associated media files (through Dynamic Relink) in MediaCentral Cloud UX deletes only the asset, even if the option “Delete only media created with the selected clips. Media associated with Dynamic Relink will be ignored” is deselected.
Bug Number: ASSETS-5238. The Avid Production Management CTC service may fail to authenticate an Avid Production Management entitlement for a few minutes after the service starts, causing delayed licensing in MediaCentral Cloud UX.
Bug Number: PLUS-2294. The process of creating an incremental backup can fail after a database backup has been restored.
Bug Number: PLUS-2403. If you redeploy a MediaCentral Cloud UX system that is configured for Avid Production Management, the "apm-postgres" storage class is deleted from Kubernetes. This can lead to file permission issues and general operational problems for Avid Production Management.
Bug Number: PLUS-2481. There is a delay in role assignment validation in MediaCentral Cloud UX when a user’s rights on a folder is changed to Read-only. During this delay, the user may still be able to rename assets on that folder in MediaCentral Cloud UX, until the new permission takes effect after a few minutes.
Fixed in Version 2026.4.0 Bug Number: PBX-83. Deleting assets located in the Kept Media folder (under the Orphan Clips folder) via MediaCentral Cloud UX fails.
Bug Number: PRS-4395, PRS-4460. If an administrator created con jobs using either the avidctl apm db backup schedule create or avidctl mi db cleanup create commands on a MediaCentral Cloud UX v2025.10.x installation, the upgrade to v2026.4 might not update these scripts with the correct avidctl apm deploy avidctl mi deploy image version if either the or commands run unsuccessfully.
If the upgrade commands were unsuccessful and you find that the cron jobs are failing after an upgrade, you can manually update the cron jobs by entering the following commands:
1. sudo avidctl apm db backup schedule update
2. sudo avidctl mi db cleanup update
Browse App Bug Number: JP-9849. If you configured Avid NEXIS API Services to enable you to browse your Avid NEXIS storage, the Browse app side-panel does not display the chevrons to the left of the storage in the tree structure.
Bug Number: JP-10044. You can unintentionally copy or move folders in the Browse app.
To address this issue, now a “Confirm folder action” prompt asks for confirmation when you copy or move one or more folders in thew Browse app.
Configuration Settings Bug Number: MAM-21402. Sync Job Distributor: If you remove an Asset Management system tag from the Orchestration field, the system is also removed from the Orchestration list.
Distributed Processing Bug Number: SYN-2621, SYN-2624. You cannot cancel, pause or change the priority of a Distribute Processing job through the MediaCentral Cloud UX Process app. If you attempt to do so, MediaCentral Cloud UX displays a "Can not perform operation on job" error after a short delay.
Log App Bug Number: CCM-1540/CCM-1541. You cannot attach an asset to a session.
Bug Number: MX-10349. When you re-open your session, you cannot see the spans you created.
Media Analytics Gateway Bug Number: MAM-21406. The maximum delay of the provider job query is not respected and thus the delay is growing indefinitely. Completing Media Analytics jobs might take an extremely long time.
Fixed in Version 2026.4.0 MediaCentral Acquire Bug Number: CCUX-11395. After double-clicking an area of the Timeline to access the Recording Details | New window, the window does not reopen if you close the window and double-click the same area of the timeline.
Bug Number: CCUX-11410. Avid Stream IO SRT Playout and Ingest templates both appear in the Acquire Channel View Select Source drop-down list, causing incorrect channel options to be displayed. A playout routing template filter has been added, and the list now shows only the relevant channels.
Bug Number: CCUX-11420. Deleting a recording leaves the associated channel in a reserved state and prevents new recordings from starting. The system displays a “No free channels to allocate” message even though the channel is available on the Avid Stream IO server.
Bug Number: CCUX-11421. Recordings longer than six hours fail in Acquire even when segmentation is enabled. Acquire attempts to cue the full recording duration instead of the segment duration, causing the cue request to exceed the supported limit.
Bug Number: CCUX-11422. Workspaces appear in a non-alphabetical order in the Acquire client when creating a recording.
Bug Number: CCUX-11440. If you change the PM Asset folder from the default setting in a scheduled recording, the recording is updated but the user interface incorrectly reflects the original folder path when viewing the recording settings.
Bug Number: CCUX-11441. The Acquire app does not respect changes to the Date Format setting in User Settings > General.
Bug Number: CCUX-11444. Sources appear in a non-alphabetical order in the Acquire Source View.
Bug Number: CCUX-11445. In segmented recording scenarios that include mixed short and long durations, check-in operations fail and segment durations are reported incorrectly.
Bug Number: CCUX-11446. Acquire does not control the video router via RS/ProxyServer and cannot save the configuration, even though COM ports are detected.
Bug Number: CCUX-11450. Scheduled recordings on Stream IO channels start twice, creating overlapping recording events on the same channel. This behavior results in recording errors, including short, incomplete recordings and timeout messages in the Acquire UI.
Bug Number: CCUX-11456. Some segmented recordings scheduled in Acquire do not start and remain stuck in the Starting state.
Bug Number: CCUX-11461. The Re-transfer option returns an error immediately when used on a completed recording.
Fixed in Version 2026.4.0 Bug Number: CCUX-11467. Sources configured with a Static Routing Type do not appear in the Acquire Source View, and some recordings are not displayed.
Bug Number: CCUX-11468. Recordings started in List View cannot be stopped from that view and display the error “Error deleting recording(s). Some of the recordings did not stop!” Bug Number: CCUX-11471. Custom recording names are not reflected properly in the Stream IO Clips panel.
Bug Number: CCUX-11479. Minor timing mismatches can cause recordings to end earlier than expected (measured in milliseconds). Although the majority of the media is recorded and available, the recording appears as failed in the Acquire Timeline view.
MediaCentral Panel for 3rd Party Creative Tools Bug Number: AL-4140. When sequences created in MediaCentral Cloud UX are imported into Adobe Premiere Pro, the first audio track is incorrectly mapped to all audio track channels, resulting in duplicates across multiple audio tracks.
Bug Number: IPI-4043. If you import a MediaCentral Cloud UX sequence with multiple audio tracks into Adobe Premiere Pro, the audio tracks in the resulting sequence are all duplicates of track 1.
Bug Number: JP-9667. Reducing the size of the MediaCentral Panel in Adobe Premiere Pro below a certain height can result in errors displaying Search app in Form mode.
MediaCentral Panel for Media Composer Bug Number: MTTO-4829. You cannot play assets in the Asset Editor’s Media Viewer if your MediaCentral Cloud UX system is configured for an OpenID provider, such as Okta.
To enable this fix, you must also be running Media Composer v2025.12 or later.
MediaCentral Sync Bug Number: SYN-1351. Due to a service-related timeout condition, the MediaCentral Sync app might be available in the Administrator Fast Bar, but attempts to access any of the tabs (Sync Groups, Sync Tasks, etc) leads to an error.
Process App Bug Number: RCTR-3155. You cannot create new favorites in the Process app. The Create a New Favorite action fails without any message.
Process Creation Bug Number: MX-10350. After starting an action, you cannot copy or paste asset information in the process creation dialog box.
Fixed in Version 2026.4.0 Rules Editor/Rules Engine Bug Number: MAM-21663. Rules Editor: The "Is not Updated" condition does not work like expected: it evaluates when a property was updated instead of not updated.
> **Note:** If you already used the "Is not Updated" operator in rule conditions, fix the correspoding rules by
opening them in the Rules Editor and saving them again.
Bug Number: MAM-21512. Rules Engine: AM Orchestration actions fail with an “Could not find principal with id” error after an update to MediaCentral Cloud UX 2025.10.x.
Rundown App Bug Number: MA-7451. Previously, performing an UNDO action in the story body removes all segments in the story body. The issue only occurred when the sequence was edited and saved before returning to the story body.
Schedule Editor/Schedule Engine Bug Number: MAM-21482. Schedule Editor: When you edit a scheduled job that has a trigger with an End Time in the past, saving is not possible and, thus, you cannot update the job.
Bug Number: MAM-21379. If you configure a Basic Trigger which should run every month, you cannot change the week identifier to “fifth”. The list always keeps the previously selected value.
Bug Number: MAM-21361. In case the Schedule Engine runs in multiple instances, jobs are triggered even if the Schedule Engine is paused.
Search App Bug Number: JP-9912, JP-10067. If you manually type a value into a Date-based search pill, the value might be altered after you advance to the next field. For example, typing 01 for January results in a value of 11 in the pill.
Bug Number: JP-10049. The Enter key on the keyboard's numeric keypad does not allow you to confirm values when using a Date pill type in the Search header.
Bug Number: JP-10051. After performing a favorite search that includes custom columns in the Results area of the app, the columns are reverted back to their default if you open an asset in another app using the Open In feature.
Bug Number: RCTR-3148. After adding markers to an Avid Production Management asset, you cannot see these markers in the Timeline view of the In-Line Hits window.
> **Note:** Although the markers do not appear in In-Line Hits, you can view the markers in the Storyboard tab,
and you can continue to use the Search app to find the marker text.
Fixed in Version 2026.4.0 Bug Number: RCTR-3162. After disabling the All Attributes toggle in the Search app’s In-Line Hits window, the app does not display the Show/Hide Stratum Name toggle context menu.
System Bug Number: ASSETS-4661. The avid-thumbnail-cache service pod appears red in the Kubernetes Dashboard if your system is not configured with either a Production Management or Asset Management system.
Bug Number: ASSETS-5074. A high number of MediaCentral Production Management requests to the pam- ctc-pam service can cause it to crash with a 137 error code.
> **Note:** This ticket addresses a partial fix that relates to a lock contention issue. The issue described here
could still be encountered, and Avid is continuing to investigate.
Bug Number: ASSETS-5138. The lock contention of the pam-ctc-pam service has been improved for cases with a high number of MediaCentral Production Management requests to the this service.
Bug Number: MTTO-4937. If a MediaCentral cluster node goes down, RabbitMQ queues on that node might become "stuck". These queues cannot be picked up by another node which can cause failures on the remaining nodes.
Bug Number: PRS-4262. This release updates MongoDB to v8.2.3 to address security concerns raised in CVE-2025-14847. For more information on that issue, see https://nvd.nist.gov/vuln/detail/CVE-2025- 14847.
Bug Number: SYN-3103. If you change the Media Indexer settings in the MediaCentral Production Administrator, the MediaCentral Cloud UX services do not pick up on this change. This fix forces the affected services to check the name Media Indexer settings on start or restart.
For more information, see “Changing the Media Indexer Configuration” in the Avid MediaCentral | Cloud UX Installation Guide.
User Management Bug Number: PLUS-2341. After signing in to Production Management through the Production Administrator Client, the MediaCentral Cloud UX user session remains connected.
Although the User Sessions panel in the MediaCentral Cloud UX Production Management Administrator app shows that the session is disconnected, the User Management app shows that the session is still active.
Wolftech News Bug Number: JP-10280. When using the Wolftech app's Open In News feature, the Wolftech app is pushed to the Docked area of the MediaCentral Cloud UX user interface and becomes stuck there.
Limitations and Defects Found in Version 2026.4.0 Workflow Settings Bug Number: MAM-21603. Transcoding: When you delete an AWS Elemental transcoding profile the profile remains in the profiles list after the delete operation.
Limitations and Defects Found in Version 2026.4.0 This section includes information on known limitations and defects related to MediaCentral Cloud UX.
Action Engines Bug Number: MAM-21712. Action Engine Wolftech News: In case of Avid Production Management, the action Create News Sequence does not read the default save location for news sequences.
Avid Production Management Bug Number: ICI-5361. If you enable the Mark IN and/or Mark OUT properties in the Production Administrator Property Layout, the MediaCentral Search might fail to index assets that have Mark In or Out points set. These assets fail with a "document_parsing_exception:
Elastic.Clients.Elasticsearch.ErrorCause" error. While Mark IN and Mark OUT are known to result in this issue, other timecode-based properties could be affected.
Workaround: If configured, complete the following steps to disable these properties:
1. Sign in to the MediaCentral Cloud UX Administrator page.
2. Select the Production Management Administrator app.
3. Select the Property Layout panel and disable the Mark IN and Mark OUT properties.
4. Select the Search Connector panel and Reset the Search Connector.
5. Switch to the Search Index Monitor app and Rebuild the index for the Avid Production Management
system.
Bug Number: PRS-4152. The process of combining incremental Avid Production Management database backups as either a dedicated task or as part of a database restore procedure, can result in the following error: pg_combinebackup: error: could not stat file <path>: File descriptor in bad state.
This issue is related to a known limitation in GlusterFS that effects single-server (lab) configurations only.
The error can occur when you save your backup files to the default path of /var/lib/backup/apm/apm-db, and subsequently use that path create the combined backup file. You should note that this is a read error and not a write error. Any database backups that you might have already created at this path should have been created successfully.
Workaround 1: When creating backup files, use the --backup-path <path> switch to define a custom path.
Workaround 2: If you have already created backups using the default path and you encounter this issue, you can complete the following steps to resolve the issue:
1. Connect to your primary MediaCentral Cloud UX cluster node.
2. Open a privileged shell:
sudo su Limitations and Defects Found in Version 2026.4.0
3. Create a local directory on this node that you will use to create backups going forward.
mkdir <path> For example: mkdir /tmp/backup/apm-db
4. Navigate to the default directory of /var/lib/backup/apm/apm-db:
cd /var/lib/backup/apm/apm-db
5. Copy all of your backup files from /var/lib/backup/apm/apm-db to the new directory:
Example: cp -r inc05 inc04 inc03 inc02 inc01 full01 /tmp/backup/apm-db/ In this example, full01 is a full backup and inc0x are a set of incremental backups.
6. Navigate to your new backup path and use the vi editor to modify the manifest.yaml file in all of the
incremental backups by updating the path of dependencies section as shown below:
  - Original:
dependencies:
- /var/lib/backup/apm/apm-db/inc01
  - New value:
dependencies:
- /tmp/backup/apm-db/inc01 You can now create new combined backups (manually, automatically, or through a restore) using this new path.
7. (if applicable) If you completed the process for "Creating Scheduled Backup Jobs" as documented
in the Avid MediaCentral | Cloud UX Installation Guide , you should repeat that process and use the --backup-path <value> to ensure that new automatic backups are saved to your custom path.
8. (if desired) When creating new backup files, you can copy those files back to
/var/lib/backup/apm/apm-db as a secure, replicated backup repository.
MediaCentral Panel for 3rd Party Creative Tools Bug Number: AL-3996. The process of importing multi-res Production Management assets fails if the high- res version of the asset is offline.
Next Gen Media Services Bug Number: SYN-3072. Presets that include the Overwrite and Auto-Rename options allow you to create an invalid configuration by allowing the selection of both options.
Workaround: Select either Overwrite or Auto-Rename only.
Bug Number: SYN-3133. You can use NGMS to send XAVC media to an MXF Export or STP (Send to Playback) destination only if the source asset complies with the Sony XAVC requirements:
- Suitably encoded video
- Audio track structure compliant with Sony XAVC specifications, which include:
  - Audio bit dept of 24 bit
  - Audio sampling rate of 48 kHz
  - Even number of up to 16 monaural audio tracks
If your media deviates from these requirements, the process rejects the asset as "not XAVC compatible".
Limitations and Defects Found in Earlier Versions Bug Number: None. NGMS cannot create proxy media for assets found in the Unchecked-in Avid Assets folder of the Avid Production Management database. If the Rules Engine attempts to automatically process these assets, the Process app displays an AAF Checkout Failed: 404 error for these proxy creation jobs.
Publisher App Bug Number: ICI-5309. The Import Files tab is missing thumbnails for video assets after upgrading to Chrome v141 or later.
Bug Number: ICI-5348. When you access the Publisher app, the app responds with a "Login failed Please contact your administrator" error.
Workaround: If your organization requires access to the Publisher app, Avid recommends that you postpone the upgrade to MediaCentral Cloud UX v2026.4 until this issue is resolved.
Rules Editor Bug Number: MAM-21735. When you clear the Publishing Destination field, after saving and reopening the rule the Publishing Destination field shows an empty value. The related Template and Asset fields show a "Failed to load message". This issue occurs in the Wolftech News actions Publish Publishing Output and Send to Playback.
Search Bug Number: IPI-3873, IPI-3953. Complex Media Composer sequences that should be found through the Search app might not be included in the Results list.
Limitations and Defects Found in Earlier Versions Limitations and defects in are organized in the following sections:
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2025.10.0 Avid Production Management Bug Number: ASSETS-4823. If you attempt to delete a folder that contains a large number of assets (~15,000 for example), the deletion request fails. In this case no assets from the specified folder are deleted. This issue applies to the deletion workflow in both MediaCentral Cloud UX, and the Production Access client.
Workaround: You can do either of the following as a temporary workaround for this issue:
- Open the folder and delete assets in smaller batches. After several smaller deletions, you can
attempt to delete all assets at the folder level.
- Use MediaCentral Cloud UX or Production Access to move a portion of assets into another folder,
and then delete the two folders individually.
Bug Number: PLUS-2293. After creating an initial backup of the Production Management database, the process of creating additional backups using the avidctl apm db backup command results in multiple “cannot tar bucket” warning/error messages. These messages indicate that certain "bucket files" already exist and were therefore not re-created. These messages can be ignored as the resulting backup file is successfully created.
MediaCentral Panel for 3rd Party Creative Tools Bug Number: AL-3883. After using Production Management Delivery to initiate a partial delivery of remote assets to your local site, the assets appear offline when imported / viewed in Adobe Premiere. The offline error is due to a processing problem in which the mxf files are mapped to the wrong tracks.
Workaround: After completing the delivery, consolidate or create a mixdown of the assets that you want to use with Adobe Premiere. Once processed locally, the assets can be used with Adobe Premiere.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2025.6.0 Asset Editor Bug Number: MAESTRO-7333. The Graphics tab continues to display some aspects of the user interface in Dark mode after switching the appearance in the User Settings to Light mode.
Bug Number: NEO-3909. If you create a new News sequence and your connection to the server is lost (network disconnect, browser crash, or other), then the sequence cannot be recovered when the connection is reestablished.
This issue applies to new News sequences only. If you are disconnected when editing an existing saved sequence, you are prompted to recover the sequence as expected.
Bug Number: NEO-3915. If you reload a Sequence or a News sequence after recording a new voiceover, the asset appears red in the Sequence Timeline if you enable the Show Media Status feature.
Workaround: Reload the page in your browser, or sign out and sign back into MediaCentral Cloud UX to display the correct media status.
MediaCentral Acquire Bug Number: CCUX-7417. In some cases, when a recording check-in fails, the check-in icon may still display a successful status while the overall recording status shows an error.
System Bug Number: PRS-3541. Avid Transcribe jobs might fail due to an oversubscription of system resources - most specifically SeaweedFS. When this issue occurs, you might see a “pq: cannot execute INSERT in a read-only transaction“ message written to the seaweedfs-filer pod log.
Workaround: Restart the seaweedfs-filer pod(s) through Kubernetes and wait for the pod(s) to be recreated before attempting to transcribe new assets.
If the issue persists, contact Avid Customer Care for further assistance.
Limitations and Defects Found in Version 2024.10.0 Asset Editor Bug Number: ICI-4899, NEO-3614. If you create a sequence in Media Composer that has assets edited into 3 or more audio tracks and the tracks do not include any overlapping audio, you might not hear playback of tracks 3 or later when played in MediaCentral Cloud UX.
or 2, and then check the sequence back into Production Management.
Bug Number: NEO-3127. When using the controls in a Dip to Color Controls effect to define a new color, you cannot change the color with the slider bar.
Workaround: Click anywhere inside the palette area above the slider, and then adjust the color value with the slider bar.
Limitations and Defects Found in Earlier Versions Bug Number: NEO-3447. If you enable the Show Audio Waveforms option in the Sequence Timeline and then start playback of the sequence before the waveform has finished drawing, it might not continue drawing when you stop playback.
Workaround: Reload the sequence to allow the Asset Editor to complete the waveform generation process.
Bug Number: SYN-1267, CCM-601. If you create a Sequence with two video tracks and V2 starts with Filler and then a transition effect to the first video segment, that Sequence will fail the STP process.
Workaround: Create a V3 track and either add a new segment to it, or move any segment from V2 to V3.
Browse App Bug Number: JP-9305. If the system detects that a new asset has been added to the folder that you are currently viewing, the Results area of the Browse app might jump back to the first page of assets after scrolling down to a second page (Card View only).
Workaround: If the app returns to the first page of results, scroll back down to your desired asset.
MediaCentral Acquire Bug Number: CCUX-10376. When failover to spare channel is configured, and the first device stops working during a recording (e.g., due to connection or power issues), the recording will fail over to the second device, but the original recording on device 1 does not finalize.
Workaround: To complete the recording process, request the transfer for the first device again.
MediaCentral Sync For additional limitations, see the Avid MediaCentral | Production Management ReadMe.
Bug Number: SYN-985. If you configure the User Mapping in the Multi-Site Settings app to use a standard user account (non-admin), MediaCentral Sync might not allow you to configure the Target DB Path or the Target Workspace when creating or editing Sync Tasks.
Limitations and Defects Found in Version 2024.2.0 Asset Editor Bug Number: NEO-2813. After a prolonged period of editing and viewing Maestro graphic templates, you might experience slowness when viewing Maestro graphic previews in the player viewer. Issue relates to Avid Maestro ticket number: MAESTRO-7246.
Workaround: To increase system performance, Avid recommends as best practice to create all templates with a preview frame set. This might require you to recreate any existing graphic templates that do not include a preview frame.
If you are experiencing this issue and need a fast (but temporary) solution, you can delete the playback pod to restore responsiveness. For detailed instructions, see "Working with Kubernetes" in the Avid MediaCentral | Cloud UX Installation Guide.
Bug Number: NEO-3159. If you load an Asset Management document asset that includes a Preview into the Asset Editor, and then you load a different document asset that does not include a Preview, the original asset's preview continues to be displayed in the Media Viewer.
Limitations and Defects Found in Earlier Versions Bug Number: NEO-3164. If you load a group clip from a shotlist into the Media Viewer, via double-click or the 'Load Clip' item in the context menu, the correct angle might not be shown.
Search App Bug Number: JP-9003. When downloading search results as a PDF, the content of the PDF might appear corrupted if your User Settings are configured for a language other than English.
System Bug Number: ICI-4652. If you configure and deploy Avid NEXIS API Services, the Avid NEXIS system might not appear in the Browse and Search apps in some rare cases.
Workaround: If your Avid NEXIS storage is unavailable, do the following:
1. Enter the following command on your single server or primary cluster node to determine the status
of the Kubernetes Persistent Volume Claim:
sudo kubectl get pvc media-share If the response indicates that the media-share pod has a status of Terminating, then you might be encountering this issue.
2. Contact Avid Customer Care for additional instructions on how to resolve this issue.
Limitations and Defects Found in Version 2023.12.0 Asset Editor Bug Number: MAESTRO-7206. If you load a graphic assets into the Asset Editor and then load a new graphic into the Asset Editor from the Rundown app, the Metadata tab does not update. It continues to display metadata for the original asset.
Bug Number: NEO-2358. Depending on your cursor position or selection, the Variable Speed Playback settings in the Workflow Settings app might not always interpret the use of a decimal point correctly.
Workaround: If you cannot enter your desired value, use the arrows to adjust the playback speed.
Bug Number: NEO-2654. The Trim Tail command is mistakenly available when parked on the last frame of the last segment in a sequence.
Bug Number: NEO-2927. If you are disconnected from your session while editing a news sequence, the Sequence Timeline might not render correctly after selecting the Recovered sequence. Track labels (VIDEO, NAT, SOT, VO) might disappear, and the Recovered and Saved buttons might stop to function normally.
Workaround: You can restore the track labels by signing out and back in to MediaCentral Cloud UX. In this case the recovered sequence might not be restored correctly. However if the sequence was saved even once before the disconnect, this issue is not reproducible.
Bug Number: NEO-2950. When adding an End at Cut video dissolve to the last segment of a sequence, the video does not fade completely to black.
Limitations and Defects Found in Earlier Versions Bug Number: NEO-2967. You cannot use the keyboard to enter some values in the Output Reference Level section of the Video/Audio User Settings.
Workaround: If you cannot enter your desired value, use the arrows to adjust the level.
Installation and Configuration Bug Number: PRS-2539. The upgrade of mediaanalytics and avid-azure-storage-connector from 2023.7.x to 2023.12 might fail.
Workaround: If the deployment fails, remove the following feature-packs and re-add them.
1. Run the avidctl platform deploy -i script and say No at the following prompts:
  - Do you want to deploy azure-storage pack (platform-azure-storage)? [y/N]: n
  - Do you want to deploy aws-mediaanalytics pack (platform-aws-mediaanalytics)? [y/N]: n
  - Do you want to deploy mediaanalytics pack (platform-mediaanalytics)? [y/N]: n
2. Run the avidctl platform deploy -i script and say Yes at the following prompts:
  - Do you want to deploy azure-storage pack (platform-azure-storage)? [Y/n]: y
  - Do you want to deploy aws-mediaanalytics pack (platform-aws-mediaanalytics)? [Y/n]: y
  - Do you want to deploy mediaanalytics pack (platform-mediaanalytics)? [Y/n]: y
Bug Number: PRS-2560. It is possible for the avidctl platform host-upgrade script to fail at the TASK [gluster-disk : stat] step if the service is not ready in time.
Workaround: If your upgrade fails at this point, complete the following process to add a retry check to the process.
1. Open the following file for editing:
sudo vi /opt/avid/service-host/roles/gluster-disk/tasks/gluster.yml
2. Add the following lines to the file under the line that reads "register: mount_dir":
until: mount_dir.stat.isdir is defined and mount_dir.stat.isdir You must ensure to correctly indent these new lines so that they align with"register" line.
3. Save and exit the vi session. Press <ESC> and type: :wq
4. Return to the process for Updating the Platform, and repeat the avidctl platform host-upgrade step.
Bug Number: NEO-3034. If you upgrade an existing single-node installation to a cluster, the upgrade process does not replace the single-server hostname with the cluster's virtual host in avid-common- params. This can lead to playback issues after the upgrade is complete.
This same issue can occur if you alter the issuer FQDN when running the avidctl platform config site-key command.
Workaround: Complete the following process to update the avid-common-params file.
Limitations and Defects Found in Earlier Versions
1. Open the following file for editing:
sudo vi /mnt/gluster-cache/playback-etc/playback/etc/sysconfig/avid- common-params "export AVID_CLUSTER_HOSTNAME=<FQDN of virtual hostname>"
2. Find the line that reads
and replace the <value> with your cluster's virtual FQDN.
3. Save and exit the vi session. Press <ESC> and type: :wq
4. Repeat this process for /mnt/gluster-cache/playback-
etc/render/etc/sysconfig/avid-common-params.
5. Use the Kubernetes Dashboard to delete the playback and render pods.
MediaCentral Sync Bug Number: SAK-1620. If MediaCentral Sync encounters an invalid User Mapping configuration in the local MediaCentral Cloud UX Configuration Settings app, the sync job might fail with a misleading “Internal service error” message.
User Management / Licensing Bug Number: JP-9024, ICI-4568. Users might be redirected back to the MediaCentral Cloud UX welcome page after an attempted sign-in. This might occur in a MediaCentral Cloud UX system that is configured to authorize against an IDP provider, and the user's user group is not assigned a license in the License app.
The expected behavior is that the system displays an error message that alters the user to the missing license.
Limitations and Defects Found in Version 2023.7.0 MediaCentral Sync Bug Number: SAK-2586. After completing a Sync, some assets might appear online in the Target database. In some cases the media might not actually be available on the target storage for these online assets.
Workaround: After completing a Sync task, perform an Update From Media Indexer on the synchronized destination folders in Interplay Access to verify the correct status of all sync’ed assets.
Publisher App The Publisher app does not currently support integration with OpenID providers, such as Okta.
Rundown App The show timing clocks in the Rundown App only work with the real workstation time, not when timing to duration, or if someone uses the Set Clock option at an iNEWS Workstation to manually alter the time prior to the on-air timing of a show.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2023.3.0 Asset Editor Bug Number: NEO-1961. If your server's host name starts with an a, b, c, d, e, or f, the Asset Editor displays the following error message when attempting to play an asset: Player Error : 1102 "<hostname>" is not valid hostname.
Workaround: You can resolve this issue by editing two configuration files:
1. From your single-server or primary cluster node, open the following configuration file:
sudo vi /mnt/gluster-cache/playback-etc/playback/etc/sysconfig/avid- common-params
2. Locate the following line and change the FQDN value to the IP address of your single server or
virtual cluster host name:
# Injecting AVID_ to AVID_ export AVID_CLUSTER_HOSTNAME=
3. Save and exit the vi session. Press <ESC> and type: :wq
4. Repeat the above process for the avid-common-params located at /mnt/gluster-cache/playback-
etc/render/etc/sysconfig/ Bug Number: NEO-2465. When you load a complex sequence that includes Burn-In timecode, you might notice that the Media Viewer’s Clip timecode does not match the burn-in timecode. This issue is expected as the player does not load all clip metadata when opening the sequence to expedite load times. Clip timecode for an included subclip is not computed until it is directly loaded into the player.
Workaround: Complete a Mach Frame on the sequence to load the original asset. When you switch the Media Viewer back to the Record monitor, the Clip TC matches the burn-in TC.
MediaCentral Acquire Bug Number: CCUX-7207. Acquire recordings fail to create a proxy when using Telestream Vantage as the default Asset Management transcoder.
Bug Number: CCUX-7098. In the Acquire app, when you try to schedule a record, or start a hot record, you will see the record flash onto the timeline, but then disappear and nothing happens (no recording), and no errors will be seen. This seems to happen when workspaces are full.
User Management Bug Number: PLAD-834. If a user opens two MediaCentral Cloud UX sessions in the same browser (one in a standard tab, and another in an Incognito tab) and then the user signs out of the session in the standard tab, the session in the Incognito remains connected. If an administrator applied a Quota to the user group, the quota count is decreased by one — even though the user is still connected through the Incognito session. This unsupported workflow might allow users to exceed the Quota value.
Bug Number: PLAD-827. Disabling the Process app for a user group does not remove the app from the MediaCentral Cloud UX user interface.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2022.12.0 Asset Editor Bug Number: NEO-1872. If you use a sequence as a source that has custom audio level adjustments, those level changes are not retained when you edit the asset into a new sequence.
MediaCentral Acquire Bug Number: CCUX-6588, FSI-12638. Recording will fail to resume when FastServe Ingest restarts OVS using the web settings page. You need to restart Clip Manager to be able to record again with Acquire.
MediaCentral Sync Bug Number: AL-1466. If you change the members of a Sync Group and you have one or more Sync tasks configured for that group, the tasks and the related configuration settings are lost after changing the group membership. For more information, see "Configuring Synchronization Groups" and "Configuring Synchronization Tasks" in the Avid MediaCentral | Sync Administration Guide.
Bug Number: SAK-2178. Tasks might fail to sync media assets if the job is in process during an upgrade.
Workaround: Administrators must pause all sync jobs prior to upgrading to v2022.12.
Search App Bug Number: JP-6980. Attempting to move an asset from the Search app to the Browse app results in the following error: "This item cannot be moved to the destination folder." Limitations and Defects Found in Version 2022.3.0 Asset Editor Bug Number: NEO-1540. If you switch to a different Chrome tab and then back to MediaCentral Cloud UX, some areas of the Asset Editor might disappear from the user interface.
For more information, see https://bugs.chromium.org/p/chromium/issues/detail?id=591374.
Workaround: If you encounter this issue, you can disable the Accelerated 2D Canvas option:
1. Open a new tab in your Chrome browser and navigate to: chrome://flags/
2. Disable the feature.
3. Relaunch Chrome to enable the change.
Legal List Administrator App Bug Number: ICI-3996. Icons configured for legal list entries are only used within the Legal List Administrator app and do not show up in the MediaCentral Cloud UX UI.
This affects all MediaCentral Cloud UX versions back to v2019.9.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2021.11.0 Legal List Administrator App Bug Number: UIR-10535. When you change the icon for a legal list entry and save the change, the old icon is still shown after switching to another legal list and back.
Workaround: Clear the Chrome browser cache and sign-in again to the MediaCentral Cloud UX Administrator app. The changed icon will now be shown for the legal list entry.
Limitations and Defects Found in Version 2021.3.0 Asset Editor Bug Number: NEO-751. When switching between Source and Record monitor, the information in the Metadata tab is reloaded, but not if you have an Asset Management image asset and shotlist open. In this case, metadata is not reloaded but an “Asset is not loaded” message is shown instead.
Bug Number: NEO-608. Playback of media assets might not be detected as an “active” operation by your local workstation. If you do not interact with the user interface in any other way, your operating system might activate a screen saver, screen lock, or other.
Bug Number: ICI-3252. MediaCentral Cloud UX might not be able to play Production Management assets that are contained in either the Orphaned Clips folder or Private folders (right click on the folder in Interplay Access, select Security > Private). This issue appears if the user that is identified in the pam.yaml configuration file does not have administrator-level privileges in the Production Management database.
Workaround: If you must play assets that are located in these folders, elevate the user that is identified in the pam.yaml configuration file to an administrator in the Production Management database.
Bug Number: NEO-253. If you attempt to delete a segment from a Sequence without first enabling the associated track, the segment is not deleted.
Workaround: Enable the track in the Sequence and then delete the segment.
Bug Number: MX-8525. Metadata tab: When in edit mode, you cannot highlight the entire value of a property of type date, date-time, and time.
Installation and Configuration Bug Number: ICI-3404. After you upgrade to a new version of MediaCentral Cloud UX, users might see an “Error: Module loading failed because of a backend issue.” message after accepting the End User License Agreement (EULA).
Workaround: If this occurs, it happens only once after accepting the ELUA. You can eliminate the error and continue to MediaCentral Cloud UX by refreshing your browser page.
Search Bug Number: None. (Asset Management) Version 2021.3 adds support for showing labels for taxonomies in Search results. This is only supported for Asset Management systems v2021.3 and later. For any remote Asset Management system that is running a version of software prior to v2021.3, the Search results do not Limitations and Defects Found in Earlier Versions show taxonomy labels but the IDs of the taxonomy entries.
System Bug Number: MC-589. Several MediaCentral Cloud UX list and grid views use “lazy loading” to display the contents of folders, search results, containers, etc. This behavior causes issues when applying a multi- selection to a range of items where some of those items are not, yet, loaded. For example, if you select the first asset in a folder and do a fast scroll to the end to select the last one, there will be pages in between the selection which are not loaded and therefore will not get added to the multi-selection.
Drag and drop and other operations (such as attaching the selection to a process creation template) will not properly work as expected.
Workaround: Scroll slowly to make sure that all assets are visible on the UI and no asset shows the status “Loading….”.
Limitations and Defects Found in Version 2020.9.0 Asset Editor Bug Number: MPLAY-4020. If you add a marker with the maximum comment size to an asset in MediaCentral Cloud UX, work the same asset in Media Composer (deleting at least one maker in the process), and then check that asset back into Interplay Production — the asset fails to load into the Media Viewer of the Asset Editor.
Installation and Configuration Bug Number: MAM-16491, FF-2079. If you are using an Enterprise Editing workflow and you upgrade to a version of MediaCentral Cloud UX that introduces the Sync Job Distributor into your environment, you must open and save the Sync Job Distributor settings prior to synchronizing your first draft sequence.
Search Bug Number: RCTR-1673. Sorting the results of a search by selecting a value in the Sort By menu displays different results than if you select the same Sort By value in the Browse app.
Limitations and Defects Found in Version 2020.4.2 Search App Bug Number: JP-7171. When reorganizing favorites or folders within the Search Favorites, the app might not prompt you with the blue position indicator when trying to drop a favorite (or folder) to the last position of a folder that contains a sub-folder.
Workaround: To move the item to the end of the folder, collapse the folder in the Favorites tree structure and drop the item on top of the collapsed folder.
Limitations and Defects Found in Version 2020.4.0 Associations App Bug Number: MA-5583. When you select several associated assets in the Associations area, then press the Ctrl key and start dragging, the asset that is used for dragging is excluded from the selection and its association is not copied.
Limitations and Defects Found in Earlier Versions Workaround: First start dragging the selection and then press the Ctrl key.
Browse App Bug Number: MPLAY-3933. If you save an empty sequence, an audio-only sequence, or a sequence where the media for the first segment is offline, the Browse and Search apps display a question mark in the Thumbnail column of the app.
Bug Number: JP-4216. The Search app might display referenced Production Management assets in the search results list. As the Browse app is unable to display referenced assets, the app displays the following error message if you attempt to open the asset in the Browse app:
“Asset cannot be found. The asset might have been recently deleted, might exist as a referenced asset only, or other.
Publisher Bug Number: AWM-134. Audio drops off on Media Composer sequences that contain dissolves at the beginning.
Workaround: Try mixing down the sequence prior to sending it.
Search Bug Number: RCTR-1546. The Search app does not support CBA rules with a “WITH” operator (two sub attribute criteria match in the same row).
Limitations and Defects Found in Version 2019.9.11 Graphics Bug Number: OS-6564. If you associate a story in the Rundown app with a shotlist, you are allowed to add graphics to the story as standard production cues. However, graphics are not associated with a shotlist in the same way as they are in a news sequence. As a result, the graphic tracks are not displayed in the Sequence Timeline and the Burn Graphics feature in the STP > Quick Send menu is unavailable.
Workaround: If you want to send the sequence to playback with burned-in graphics, you must associate the story with a news sequence (shotlists not supported).
Bug Number: OS-7222. If the frame rate of your Maestro News system does not match the frame rate of your MediaCentral Cloud UX sequence, timed graphics might appear off by a few frames in the Asset Editor Media Viewer and the Sequence Timeline.
Workaround: Update the SystemSettings.ini file on your Avid Maestro News system so that the frame rate matches your sequence. This file is generally located at the following path:
C:\Program Files\Avid\MaestroNewsServices\<version>
> **Note:** The aspect ratio and the frame rate of sequences created in MediaCentral Production Management
are determined by the first clip that you add to the sequence. Any additional clips can have a different resolutions but must match the initial frame rate. For more information, see “Creating a Sequence” in the Avid MediaCentral | Cloud UX User’s Guide.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2019.9.5 Asset Editor Bug Number: OS-6480. If you open the Media Viewer in Full Screen mode and then attempt to access the STP function of the Quick Send menu, the overlay window is displayed behind the full screen viewer, essentially hiding the user interface.
Workaround: If you want to access the Quick Send > STP options, you must exit Full Screen mode.
Bug Number: MX-7802. In the Storyboard tab, if you click in the Comment field that contains a large amount of text, scroll through the text, and then start typing, the text will not scroll back to the current cursor position. As a consequence, you do not see the text that you are typing.
Limitations and Defects Found in Version 2019.9.0 Asset Editor Bug Number: JP-6644. When double-clicking on a marker or a search hit in the tabs area of the Asset Editor, the position indicator does not move to the associated mark in the Media Viewer timeline.
Bug Number: MX-7196. If you load an Asset Management asset that has a multi-value compound attribute with a large number of records, the Chrome browser might hang for a period of time, followed by a number of messages from MediaCentral Cloud UX indicating that “Obtaining the metadata timed out”.
Log App Under a rare condition, the Log app might crash and show an exception error message. The behavior can be detected under the following condition: If you attach an asset that has a creation date in the far past (for example 2017) to a session, log the session, remove the asset from the logged session, continue logging the session against the wall clock, and finally again attach an asset that has a creation date in the far past to the session.
Multi-Site Bug Number: MA-5347. Queues marked with the Refresh property on remote Newsroom Management systems do not automatically refresh in either the Rundown app or the MediaCentral Cloud UX Mobile app.
Publisher App Bug Number: AWM-83. You cannot publish the following sequence types:
- Shotlists created in MediaCentral Cloud UX that do not contain audio media.
- Sequences created in Media Composer that include a video track only.
Workaround:
- If you have access to an Avid Media Composer, you can create a sequence in the editor that has a
video track, an audio tracks, and video media only. You can then check that sequence into Production Management, and publish this sequence.
If you are editing a shotlist created in MediaCentral Cloud UX, add 0db audio media to the audio
- track.
Limitations and Defects Found in Earlier Versions Bug Number: AWM-80. When working with 60p or 50p sequences in Media Composer, you must set the TC Display Format in the Media Composer General Settings to either 60 fps or 50 fps, respectfully, before checking the sequence into MediaCentral Production Management. If this setting is not configured correctly and you attempt to upload the sequence to the Publisher SAAS platform, the upload process will fail.
Search Bug Number: ASSETS-2434. The MediaCentral Cloud UX Search Connector for Production Management associates some metadata fields such as Initial Checkin Date, Last Restored Date, and others with type “String” instead of type “DateTime”. Additionally, some fields associated with timecode (such as Auxiliary TC1) or numbers (such as Audio Bit Depth) are associated with the String type. These incorrect assignments prevent users from searching for these metadata fields in MediaCentral Cloud UX using criteria normally associated with a date/time, timecode, or numerical value.
Workaround: You can resolve this issue by installing the MediaCentral Production Management 2019.6.1 Access or later and enabling the “Update Data Type Definitions” toggle in the Interplay Administrator. For more information, see the Avid MediaCentral Production Management 2019.6.1 ReadMe or “Configuring the MediaCentral Search Connector” in the Avid MediaCentral | Cloud UX Installation Guide v2019.9.
Limitations and Defects Found in Version 2019.6.0 Installation and Configuration Bug Number: MCDEV-11520. If you configure more than one MediaCentral Authentication Provider in the Interplay Administrator, the process of signing in to MediaCentral Cloud UX through the Media Composer fails.
Workaround: If you must configure more than one server in the MediaCentral Authentication Provider settings, you must add the Internal authentication option for the affected users in the Production Management database. This limitation does not prevent you from importing users from MediaCentral Cloud UX or Microsoft Active Directory, but once imported – Internal authentication must be enabled for all Media Composer users and a password must be assigned manually. Additionally, the passwords must match those used to access MediaCentral Cloud UX.
The ability to add more than one MediaCentral Platform Authentication provider is designed for testing and development environments only. Avid does not support adding more than one MediaCentral provider for active production systems Bug Number: ICS-8468. After upgrading, multiple Kubernetes pods might fail to start and report a “Waiting: CrashLoopBackOff” status in the Kubernetes dashboard.
Workaround: To resolve this issue, complete the following steps:
1. Complete the upgrade process as documented.
2. After the upgrade is complete, sign in to the Kubernetes Dashboard.
For more information, see “Working with Kubernetes” in the Avid MediaCentral | Cloud UX Installation Guide.
rabbitmq-default.
3. Use the Search function at the top of the Dashboard to search for
4. Use the context menu in the user interface to delete all RMQ Persistent Volumes and Persistent
Volume Claims.
Limitations and Defects Found in Earlier Versions As shown in the following example Kubernetes Dashboard illustration, clustered configurations will have multiple of each type.
5. Use the context menu to delete all rabbitmq pods
6. Sign in to your single server or cluster master node and use the following command to delete the
contents of the following folder: /var/lib/avid/rabbitmq/rmq-rabbitmq-default-0/ rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-0/ If you have multiple nodes, you must repeat this command on each node, substituting the “default- #” number with the corresponding number on the node. For example, in a three node cluster, your commands might look like the following:
[root@wavd-mcux01 ~]# rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-0/ [root@wavd-mcux02 ~]# rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-1/ [root@wavd-mcux03 ~]# rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-2/
7. Use the Kubernetes Dashboard to verify that all pods start successfully.
Multi-Site If you plan to include your MediaCentral Cloud UX system in a multi-site configuration, be aware of the following limitations:
Avid supports a maximum of six sites in a single multi-site environment.
- You cannot create or edit remote sequences, nor can you include remote media assets in a local
- sequence.
- You cannot create new sequences on remote MediaCentral modules. However, the context menu for
MediaCentral Asset Management modules retains the Create Asset option for both local and remote systems.
You cannot create a subclip from a remote asset.
- You cannot play back remote edit while capture (EWC) assets.
- No support for remote user tasks (including file upload/download) in the Tasks app.
Limitations and Defects Found in Earlier Versions If you create a voice-over, the asset can be saved to the local MediaCentral Production
- Management database only.
- You cannot Publish remote assets.
- The Log app cannot be used with remote assets.
- Deliver In-to-Out workflows are not available in MediaCentral Cloud UX.
- The Avid MediaCentral | Panel for 3rd Party Creative Tools does not support Multi-Site workflows.
- The Avid MediaCentral | Panel for Media Composer does not support Multi-Site workflows.
Bug Number: RCTR-1275. When you configure the Map to User option in the Multi-Site Settings app, the Search app applies the visibility rules based on local user name and not the mapped user for the remote Asset Management system.
Workaround: If you plan to link to an Asset Management module in a remote site, you must configure the User Mapping to Map By Name.
Search Bug Number: JP-6184.When upgrading to MediaCentral Cloud UX 2019.6 from an earlier release, any favorites created by the users in the Search app are not maintained.
Bug Number: None. If you select the check box for a parent in a taxonomy search, the user interface indicates that the children selected as well. However, search does not return assets for matches against the child selections.
Workaround: Open the taxonomy menu and select the individual checkboxes for the child items instead of selecting the check box for the upper-level parent item.
Limitations and Defects Found in Version 2019.2.0 Asset Editor Bug Number: ICI-2137. Audio might stutter during playback while simultaneously working in other Apps of the MediaCentral Cloud UX user interface.
Limitations and Defects Found in Version 2018.11.0 Asset Editor Bug Number: MX-6604. If you click on the link for a recovered asset in the Auto Recovery window, the apps area of the MediaCentral Cloud UX user interface is replaced with the following error: “No application config found for type: dashboard”.
Workaround: When you click on the link, the asset is loaded into the appropriate app as described in the “Recovering Sequences” and “Recovering Stories In Case of Disconnect” sections of the Avid MediaCentral | Cloud UX User’s Guide. You can eliminate the error message by clicking on an app such as Browse, Rundown, or other.
Limitations and Defects Found in Earlier Versions Bug Number: ASSETS-1834 . If a user has permissions to write to a particular folder in the MediaCentral Production database but does not have the rights to create markers, the user is allowed to save a sequence containing new markers. However, the user also sees the following message: “User permissions do not allow this operation” Workaround: To avoid these errors, you must make sure that users who have permission to save sequences also have permissions to edit markers.
Bug Number: MX-6658. The Storyboard tab needs focus in order for keystroke shortcuts to work.
Process App Bug Number: MX-6913. The Process app always displays the “Show More Results” button, even if there are no additional results to display.
Limitations and Defects Found in Version 2018.6.0 Asset Editor Bug Number: NEO-106, OS-4997. If a user attempts to make an edit to a news sequence that is already opened by another user who has a lock on the story, the change is permitted but the following warning message is presented:
“Story Modify Error - Unable to obtain all edit locks. Story body is edit locked by <user>.” [Cancel Sequence Edit] [Keep Sequence Edit] In this release the Cancel and Keep options are not available.
Browse App Bug Number: ASSETS-1317. You cannot duplicate sequences.
Workaround: Open the sequence and use the Save As feature in the Sequence Timeline to save a copy of the sequence.
Installation and Configuration Bug Number: DAEM-5529. When running the Post-Install Setup Scripts, the avidctl platform host- setup script might hang when executing particular tasks. If there is no on-screen activity for an extended period of time (2-3 minutes), press Ctrl+C on the keyboard to exit and run the script again.
This issue is most often associated with the “sysprep: Restart firewalld” task.
Bug Number: MTTO-1773. If you connect to the Kubernetes web dashboard after deploying the system feature packs, the Kubernetes Pods category does not show a green status.
Workaround: Continue with the installation and verify the status of the Kubernetes Pods after you have imported a MediaCentral Cloud UX license.
Bug Number: DAEM-5592, DAEM-5684. When entering the Kubernetes Admin token in the avidctl platform host-setup script, you can not use the Backspace key to correct a text entry error. The Backspace key is treated as a new character.
Workaround: You can resolve this issue in one of two ways:
Limitations and Defects Found in Earlier Versions Press Ctrl+C on the keyboard to exit the script and then relaunch the script to start over from the
- beginning.
- After using the Backspace key, press Enter to accept the password. At the verification prompt, press
Enter to purposefully enter an incorrect matching password.
This returns you to the first prompt to enter your original password.
MediaCentral Asset Management MediaCentral Cloud UX includes the following limitations for the MediaCentral Asset Management module:
Browse app:
  - ASSETS-1386. If you use the Browse app to rename an Asset Management folder, only the
name of the folder is changed and not the language label associated with the asset folder.
MAM Desktop may show a different, localized label instead.
- Search app:
  - The search does not consider changes and deletes in the Asset Management data model: If
you delete a searchable attribute or mark it as “non searchable” in the data model, it remains visible in the Search app. If you rename a searchable attribute, both the old and the new attribute name are visible in the Search app.
  - The Search app has a limit of 5,000 fields in an index. MediaCentral Search can create more
than one field per Asset Management attribute (for example, 3 for text attributes). If the data model contains too many attributes, then MediaCentral Search cannot create the index and search will not return any Asset Management assets.
Markers tab:
  - You can show strata, segments, and annotation but you cannot edit them in the Markers tab.
Metadata tab:
  - ASSETS-1632. When a user edits an Asset Management asset in the Metadata tab, the asset
is not locked which allows unintended changes by another user.
Search Bug Number: RCTR-989. The process to index large MediaCentral Asset Management databases for use with the MediaCentral Search app can take a significant amount of time to complete. Organizations whose database consists of more than 500,000 assets should consult with Avid prior to indexing the database for assistance in optimizing the process.
MediaCentral Cloud UX v2019.2 introduced certain improvements for large databases. As of this release, only organizations whose database consists of 1,000,000 or more assets need to consult with Avid.
Bug Number: RCTR-973. The Search index creation process might fail on databases that contain a large number of fields.
System Bug Number: DAEM-5741. When a cluster master node goes offline, users might experience a short period of time where the cluster is inaccessible.
Limitations and Defects Found in Earlier Versions