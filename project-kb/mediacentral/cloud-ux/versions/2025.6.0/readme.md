---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2025.6.0"
release-date: 01/06/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

™ Avid MediaCentral | Cloud UX Version 2025.6 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
For the most up-to-date Avid MediaCentral Cloud UX documentation (all releases), see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Cloud-UX-v2025-Documentation MediaCentral Cloud UX v2025.6 has been developed as a Feature release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at:
https://www.avid.com/resource-center/avid-long-term-maintenance-releases Revision History Date Revised Changes Made November 18, 2025 Although the avidctl platform host-setup script disables the unattended-upgrades service, Ubuntu can still install system upgrades without administrative approval.
This update adds PRS-4124 to "Limitations and Defects Found in Version 2024.10.0" on page 54 which includes a workaround for this issue.
August 29, 2025 Updates:
- As documented in "Avid MediaCentral | Cloud UX™" above, PRS-3682 has
reportedly been fixed by Crowdstrike. Contact CrowdStrike directly for additional information.
If you created an exclusion to mitigate this issue, you should consider eliminating that exclusion after upgrading your CrowdStrike system.
- A Multi-Site issue (MTTO-4678) added to "Fixed in Version 2025.6.0" on
page 44.
June 26, 2025 Initial v2025.6 publication Compatibility Notes Compatibility Notes This section contains compatibility information for MediaCentral Cloud UX and related products.
For information on supported operating systems and for a list of product versions qualified for use with Avid MediaCentral Cloud UX, see the Compatibility Matrix on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Avid highly recommends that you consult this matrix prior to upgrading any application or system to ensure that you understand the scope of the upgrade. In some cases, you might be required to upgrade additional components or hardware to maintain system compatibility.
Qualified Servers and Virtualized Environments Hardware Deployments Organizations can install MediaCentral Cloud UX on a server from the vendor of their choice, as long as that server meets the minimum specifications that are defined by Ubuntu and Avid. For more information on these minimum requirements, see the Avid MediaCentral | Cloud UX Hardware Guide on the Avid Knowledge Base.
Avid expects that you meet or exceed the minimum requirements outlined in the Avid MediaCentral | Cloud UX Hardware Guide for each release of MediaCentral Cloud UX. If you are upgrading from an older release, you must review this information to ensure that you are current and compatible with the system requirements.
Virtualized Deployments Avid allows you to deploy MediaCentral Cloud UX in an on-prem virtual environment. However, the selection and qualification of the virtualization solution is the responsibility of an individual or team within your own organization.
For a short list of requirements and best practices, see "Deploying MediaCentral Cloud UX in a Virtual Environment" in the Avid MediaCentral | Cloud UX Installation Guide.
Storage Requirements MediaCentral Cloud UX requires SSD storage for both the OS and Data volumes. Organizations that are still using standard HDD’s must upgrade their hardware to maintain compatibility with this and future releases of MediaCentral Cloud UX. This requirement applies to all new installations and upgrades.
Compatibility Notes This requirement applies to both hardware-based deployments and virtualized deployments. If you are using a virtualization system with a shared SAN array, the SSD requirement applies to any shared storage that hosts a virtualized deployment of MediaCentral Cloud UX.
Operating System and Security Guidelines Avid allows you to install an endpoint detection and response solution on your MediaCentral Cloud UX system. This applies to both single-server and cluster environments. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://kb.avid.com/articles/en_US/troubleshooting/en239659 The avidctl platform host-setup script enables Ubuntu's built-in Uncomplicated Firewall service by default on all new installations. For information on how to verify the current status of the service, see "Ubuntu Uncomplicated Firewall" in the Avid MediaCentral | Cloud UX Installation Guide.
Security Updates MediaCentral Cloud UX is supported on Canonical Ubuntu — an open source, Linux-based operating system. Organizations must download a copy of Ubuntu Server LTS (Long Term Support) from https://ubuntu.com and install it on their MediaCentral Cloud UX server prior to installing any Avid software. Refer to the MediaCentral Compatibility Matrix on the Avid Knowledge Base for supported version information.
Unless otherwise noted, Avid supports Ubuntu patch versions by default. Using Ubuntu 22.04.1 as an example where 22 is the major version, 04 is the minor version, and 1 is the patch version, Avid would support Ubuntu Server LTS v22.04.x. For more information on Ubuntu releases, see https://ubuntu.com/about/release-cycle.
Security and Firewalls on Client Workstations While Avid encourages organizations to protect and secure the client workstations that connect to MediaCentral Cloud UX, system administrators must allow communication between the clients and the MediaCentral Cloud UX servers over network ports 443 and 5000. If you are using a local anti-virus, firewall, or other security solution on your clients, you must ensure that these ports remain open between the systems. Failure to do so could block media playback or cause other aspects of the workflow to fail.
For more information on network ports and communication, see the Avid Port Usage Guide on the Avid Knowledge Base.
Transport Layer Security (TLS) Certificates When you connect to MediaCentral Cloud UX, your web browser might display a security warning that indicates that the connection cannot be validated. These warnings can be eliminated through the use of a trusted Transport Layer Security (TLS) certificate.
You can generate a self-signed certificate directly on the MediaCentral Cloud UX server or you can obtain a certificate from an internal/private or external/public Certificate Authority (CA) group. Public certificates have the advantage in that they are trusted automatically by today’s most common web browsers. No warnings appear when a connection is made to a secure web page, nor do you need to manually add the certificate to the local workstation’s Trusted Root Certification Authorities store (since the CA’s root certificate is already there).
You must install a valid signed certificate to access the user interface for all versions of MediaCentral Cloud UX. Without a valid certificate, users are met with a security warning when accessing the MediaCentral Cloud UX sign-in page. Any attempt to bypass this security warning without a valid signed certificate is unsupported and could result in negative impacts to the user experience.
Compatibility Notes If you are enabling a multi-site environment and you are using a self-signed or private CA certificate, you must import the certificate from each site into each of your client workstations. For example, if you have a multi-site configuration with three sites, you must import three different certificates into each workstation.
For this reason Avid highly recommends using certificates provided by a public Certificate Authority if you are enabling a multi-site configuration.
All certificate types must include the FQDN for your MediaCentral Cloud UX system. If you have configured a cluster, the certificate must include the FQDN for each cluster node and the virtual cluster.
> **Note:** If you are using the MediaCentral Cloud UX Mobile app, you must import a valid certificate into your
mobile device.
For more information, see “Creating Certificate Files” and “Importing TLS Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
Browsers for MediaCentral Cloud UX MediaCentral Cloud UX is tested using Google Chrome as the portal to the user interface. For specific version information, see the “MediaCentral Compatibility Matrix” on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts
> **Note:** Features included in some graphics drivers might affect the playback of assets in the Chrome HTML5
video player. If you experience playback issues, you might try lowering your video resolution, increasing the display refresh rate, or both.
The minimum screen resolution for MediaCentral Cloud UX is 1280 x 1024 pixels. If the size of your browser window is smaller than 1280 x 1024, some UI elements might not be displayed.
Avid does not support connecting to MediaCentral Cloud UX through either a mobile web browser (installed on a mobile device) or “portable” versions of Chrome in which the browser is not fully installed on your local workstation. To access MediaCentral Cloud UX through a mobile device, download the MediaCentral Cloud UX Mobile app.
Avid does not test MediaCentral Cloud UX with any Chrome extensions. Some extensions can introduce a performance impact, potentially affecting playback or other areas of the UI.
Upgrade Options for Multi-Site Environments Avid MediaCentral Cloud UX allows you to connect multiple MediaCentral Cloud UX systems together in a Multi-Site configuration. In a multi-site environment, your local MediaCentral Cloud UX system links to MediaCentral modules such as Production Management, Asset Management, or others that are connected to other remote MediaCentral Cloud UX systems.
Avid supports linking sites running different versions of MediaCentral Cloud UX. If you plan to run mixed versions of software, note the following:
You can mix MediaCentral Cloud UX systems running v2023.7.x through v2025.6.x in the same
- multi-site environment. Note that during the upgrade process, the affected site will be unavailable
to users in the linked sites.
- If your multi-site environment includes one or more MediaCentral Asset Management modules, you
might need to coordinate the upgrades of your MediaCentral Cloud UX systems and the Asset Management systems to maintain continued functionally.
First, upgrade your MediaCentral Cloud UX systems and the Mam.Core.ConnectivityToolkit package on all Asset Management systems. Then, upgrade the Asset Management systems.
Compatibility Notes For more information, see "MediaCentral | Cloud UX Compatibility" in the Avid MediaCentral | Asset Management ReadMe and "Multi-Site Support" of the Avid MediaCentral | Asset Management Installation Guide.
- Some features might be version specific. See individual MediaCentral Cloud UX ReadMes for any
feature-specific version requirements.
Connection Options for Multiple Systems The following information describe methods for connecting MediaCentral modules outside of a multi-site environment.
MediaCentral Production Management Avid supports connecting only a single MediaCentral Production Management module to the MediaCentral Cloud UX system.
MediaCentral Newsroom Management If you have one Newsroom Management module with multiple MediaCentral Cloud UX systems:
- You can configure multiple CTC connections on the Newsroom Management module, each
connecting to a different MediaCentral Cloud UX system.
This configuration enables each MediaCentral Cloud UX system to work with the Newsroom Management system in apps such as Browse and Rundown.
You can configure only one Search agent per Newsroom Management module and connect it to a
- single MediaCentral Cloud UX system.
As a result, users of only one of the MediaCentral Cloud UX systems are able to search for data on the Newsroom Management module.
If you have multiple Newsroom Management modules with one MediaCentral Cloud UX system:
- Each Newsroom Management module makes one CTC connection to the single MediaCentral Cloud
UX system.
This enables MediaCentral Cloud UX users to see all of the Newsroom Management modules in apps such as Browse and Rundown.
Each Newsroom Management module connects its Search agent to the single MediaCentral Cloud
- UX system.
This enables MediaCentral Cloud UX users to search all of the Newsroom Management modules.
For more information on configuring Newsroom Management and CTC, see the Avid MediaCentral | Newsroom Management Setup and Configuration Guide.
MediaCentral Asset Management Avid supports connecting only a single MediaCentral Asset Management module to the MediaCentral Cloud UX system.
Maestro News MediaCentral Cloud UX supports the ability to both connect multiple Maestro News systems into a single MediaCentral Cloud UX system as well as the ability to connect multiple MediaCentral Cloud UX systems to a single Maestro News module.
For more information on configuring these multi-system environments, see the Maestro News documentation.
Compatibility Notes Device Support for MediaCentral Mobile Applications Users of the MediaCentral Cloud UX Mobile app can connect to the MediaCentral Platform using a variety of different devices. While not all devices can be thoroughly vetted, Avid has performed end to end workflow testing on the following phones and tablets:
- iPad Pro 10.5
- To access your MediaCentral Cloud UX server from a remote location, you might be required to use a
virtual private network (VPN) app on your device. Avid tested the MediaCentral Cloud UX mobile apps Cisco™ AnyConnect® using VPN Client.
> **Note:** For more information on mobile app compatibility, see the MediaCentral Compatibility Matrix on the
Avid Knowledge Base.
Avid MediaCentral Cloud UX Installation Media Before installing Avid MediaCentral Cloud UX, you must obtain the installation media:
- Avid MediaCentral Cloud UX Platform
This package includes the core Avid installation components.
Example file name: mediacentral_platform_<build>.bin
- Avid MediaCentral Cloud UX Feature Packs
This package includes additional software to install MediaCentral Cloud UX applications on the Platform.
Example file name: mediacentral_feature_packs_<build>.iso The software can be downloaded from the Avid Download Center. If you have not already created an Avid.com user account, you must do so now. This Master Account enables you to sync your Avid Video Download and Avid Video Community accounts, and access other Avid resources.
Enabling New Features If you are upgrading to this version of MediaCentral Cloud UX to enable new features introduced in this or prior releases, or if you have purchased a new feature for your existing installation, you might need to refer to a previous ReadMe or to the Avid MediaCentral | Cloud UX Installation Guide for additional instructions.
For example, if you are adding Avid Ada Transcode, you might need to provision and configure additional hardware, run one or more configuration scripts, and install new feature packs that are related to the workflow. If you are upgrading to enable a new feature such as the Publisher app, you might need to install a new license, configure settings, or verify user entitlements.
Avid MediaCentral Distribution Service The MediaCentral Distribution Service (MCDS) is an application required for Send to Playback (STP) operations in MediaCentral Cloud UX. More accurately described as an “orchestration engine”, MCDS analyzes the STP request and determines if additional actions are required before the media is sent to the destination (Avid FastServe, Avid Transfer Engine, or other). MCDS is not used or required when sending assets to playback through the Avid MediaCentral | Panel for 3rd Party Creative Tools.
For more information on MCDS, Send to Playback guidelines, compatibility notes, fixes, and more, see the Avid MediaCentral Distribution Service ReadMe on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation Compatibility Notes Installing MediaCentral Cloud UX Partner Applications Organizations or individual contributors that want to work with Avid to create applications for the MediaCentral Platform can visit http://developer.avid.com/ for a collection of online resources that can be used to assist you in this effort.
If you have purchased a MediaCentral Cloud UX partner application or service to connect to a non-Avid product or service, the following link provides a high-level set of instructions for installing the feature pack on your MediaCentral Cloud UX system:
http://developer.avid.com/cert/feature-pack-installation/docs-public/README.html For more detailed and software-specific instructions, see the documentation that accompanies the partner feature pack.
Avid 3rd Party License Compliance License information is not installed directly on the MediaCentral Cloud UX server. For information on Avid’s compliance with external vendors, see the 3rdPartyComponent-Licenses.txt file in the "3rd party components" folder on the Avid MediaCentral Cloud UX Feature Pack ISO (mediacentral_feature_packs_ <build>.iso).
Avid MediaCentral Production Management Data Model Object Types The following table details the playback compatibility of certain MediaCentral Production Management data model object types with MediaCentral Cloud UX.
Object Type Status Audio tracks with unrendered AudioSuite plugins Unsupported Sequences with audio keyframing (audio rubber-banding) Unsupported Effects All rendered and checked-in effects are supported for playback.
Freeze-frame clips Supported Group clips Supported* Master clips Supported Matte clips (assets with alpha channel) Unsupported Motion effects Unsupported Multi-channel audio clips Unsupported Multigroup clips Unsupported Nested timelines Unsupported Sequences (dissolves only) Supported Sequences (no effects) Supported Sequences (precomputes present for unsupported effects) Supported Sequences (without precomputes for unsupported effects) Unsupported Stereo tracks Unsupported Stereoscopic clips Unsupported Compatibility Notes Object Type Status Subclips Supported Subclips created in Media Composer through Autosync Unsupported *Group clips composed of subclips, and subclips created from group clips are currently not supported. Group clips created from spanned master clips (such as media created on a P2 card) are also not supported.
Supported Media Formats Avid supports a variety of media and container formats across its family of products. However, MediaCentral Cloud UX does not support the ability to work with all of these formats by default. As long as your asset is wrapped in both a container format and a media format that is supported by MediaCentral Cloud UX, you should be able to play that asset through the Asset Editor.
For example, if you have DNxHD 1080 145 media that is wrapped in a MOV container, that asset can be played back through MediaCentral Cloud UX because both the media and container formats are supported.
> **Note:** AMA media is not supported in MediaCentral Cloud UX. AMA media must be transcoded to a
supported format.
Container Formats The following tables list the container format types supported by MediaCentral Cloud UX.
Audio and video container formats:
- AVI MP4 MOV
MPEG MXF MP3 MPG WAV
- Image container formats:
BMP JPEG PNG* TIFF* TGA* * Indicates support for alpha channel.
> **Note:** It is possible that additional container formats might also play back, but these formats are not
supported in MediaCentral Cloud UX.
Media Formats The following table lists the supported media formats for MediaCentral Cloud UX, as well as an incomplete list of some notable formats that are not supported. Also note the following:
For 23.98 SD (NTSC), the timecode reference will be shown on 24 frame instead of 30. This applies
- to MediaCentral Editorial Management only as this format is unsupported with MediaCentral
Production Management.
23.97 fps and 24 fps frame rates are supported in 1080p formats. They are unsupported in 720p
- and standard definition (SD) formats.
Audio Media Formats (codec) AAC* MPEG-2 PCM Compatibility Notes * AAC audio is supported for Asset Management Desktop playing audio-only MP4 wrapped proxies.
Video Media Format Playback Support Send to Playback Support Apple ProRes Not Supported Not Supported AVC-Intra 50, 100 (1080i) All frame rates 50, 59.94 AVC-Intra 100 (1080p) All frame rates Not Supported AVC-Intra 50, 100 (720p) 50, 59.94 50, 59.94 AVC Long GOP 12, 25, 50 (720p) 50, 59.94 50, 59.94 AVC Long GOP 12, 25, 50 (1080i) 25, 29.97 25, 29.97 AVC Long GOP 12, 25, 50 (1080p) 25, 29.97 Not Supported Avid JFIF 2:1, 3:1, 10:1, 20:1 25, 29.97 Not Supported DNxGX Not Supported Not Supported DNxHD 1080 36, 45, 80, 85, 100 All frame rates Not Supported DNxHD 1080 115, 120, 145, 175, 185, 220 All frame rates 25, 29.97 DNxHD 1080 175X, 185X, 220X All frame rates 25, 29.97 DNxHD 720p 40 Not Supported Not Supported DNxHD 720p 45, 50 25, 29.97 Not Supported DNxHD 720p 60, 75, 90, 110, 145, 220 25, 29.97 25, 29.97, 50, 59.94 DNxHD 720p 90X, 110X, 220X 25, 29.97 25, 29.97, 50, 59.94 DNxHD 720p 85, 100, 120, 185 50, 59.94 Not Supported DNxHD 720p 185X 50, 59.94 Not Supported DNxHD 1080p 75, 90, 165, 200, 240, 290 50, 59.94 Not Supported DNxHD 1080p 365, 440 50, 59.94 Not Supported DNxHD 1080p 365X, 440X 50, 59.94 Not Supported DV 25 411 25, 29.97 25, 29.97 DV 50 25, 29.97 25, 29.97 DV100 HD 1080i (DVCPro HD) All frame rates 50, 59.94 DV100 HD 720p (DVCPro HD) 50, 59.94 50, 59.94 H.263 (MPEG-1 Layer 2 proxy) 25, 29.97 Not Supported H.264 (MPEG-1 Layer 2 proxy) 25, 29.97 Not Supported 800 Kbps, 2 Mbps, 3 Mbps HDV (1080i) All frame rates Not Supported HDV 720p 50, 59.94 Not Supported JPEG 2000 Not Supported Not Supported MPEG (IMX) 30, 40, 50 25, 29.97 25, 29.97 MPEG-2 Long GOP 25, 29.97 Not Supported Compatibility Notes Video Media Format Playback Support Send to Playback Support RGB Not Supported Not Supported XAVC Intra 50 (1080i) 50, 60, 23.98 Not Supported XAVC-Intra 50 (1080p) Not Supported Not Supported XAVC-Intra 100 (1080p) 50, 59.94 50, 59.94 XAVC Long GOP 25, 35, 50 (1080i)a 50, 59.94 Not Supported (720p)a XAVC Long GOP 50 50, 59.94 Not Supported XDCAM-HD 17.5, Mbps (1080i) All frame rates Not Supported XDCAM-HD 35, 50 Mbps (1080i) All frame rates 50, 59.94 XDCAM-HD 50 Mbps (1080p) All frame rates Not Supported XDCAM-HD 17.5, 35 Mbps (720p) 50, 59.94 Not Supported XDCAM-HD 50 Mbps (720p) 50, 59.94 50, 59.94 XDCAM-EX 35 Mbps (1080i) All frame rates 50, 59.94 XDCAM-EX 35 Mbps (720p) 50, 59.94 50, 59.94 a Frame rate not guaranteed. Frame rate might temporarily be reduced during playback.
For additional information on supported STP formats when using Avid FastServe, see the Avid FastServe | Playout Administrator’s Guide on the Avid Knowledge Base at: https://kb.avid.com/articles/en_ US/ReadMe/FastServe-Documentation.
Bandwidth Requirements The following table presents single-user bandwidth guidelines for MediaCentral Cloud UX playback. The table is provided for guidance, and is not an indication of performance guarantees.
Proxy Setting (16:9, 30 fps) Bandwidth Needs Width Quality Value Peak Valley Typical Good 40 5.400Mbps 2.520Mbps 3.440Mbps 348 px Better 60 6.600Mbps 2.840Mbps 4.380Mbps Best 80 9.000Mbps 3.480Mbps 5.690Mbps Good 40 6.400Mbps 2.840Mbps 4.690Mbps 400 px Better 60 8.200Mbps 3.320Mbps 5.000Mbps Best 80 11.650Mbps 4.200Mbps 6.780Mbps Good 40 8.400Mbps 3.320Mbps 4.985Mbps 480 px Better 60 11.400Mbps 3.880Mbps 6.300Mbps Best 80 15.400Mbps 5.080Mbps 9.480Mbps Good 40 11.295Mbps 4.179Mbps 6.529Mbps Compatibility Notes Proxy Setting (16:9, 30 fps) Bandwidth Needs Width Quality Value Peak Valley Typical 560 px Better 60 14.868Mbps 5.023Mbps 8.547Mbps Best 80 21.009Mbps 6.694Mbps 12.284Mbps Good 40 14.324Mbps 5.029Mbps 8.098Mbps 640 px Better 60 18.991Mbps 6.131Mbps 10.735Mbps Best 80 27.011Mbps 8.315Mbps 15.616Mbps Good 40 17.757Mbps 5.993Mbps 9.878Mbps 720 px Better 60 23.664Mbps 7.338Mbps 13.215Mbps Best 80 33.814Mbps 10.152Mbps 19.392Mbps Good 40 30.480Mbps 9.566Mbps 16.472Mbps 960 px Better 60 40.980Mbps 12.046Mbps 22.405Mbps Best 80 59.028Mbps 16.959Mbps 33.385Mbps The following table explains the contents in detail.
Item Description Width 348 pixels is the minimum player width; 960 pixels is the max. Height depends on the aspect ratio. The table assumes an aspect ratio of 16:9.
Quality Refers to the quality setting in the Player set via the UI.
Value Each quality setting has a numeric value. The value corresponds to the level of compression used to encode the JPEG.
Peak Video with high color variation (e.g. wide shot of a crowd) Valley Video with low color variation (e.g. half of frame consists of a clear blue sky) Typical A wide range of footage (e.g. interiors, exteriors, interviews). The typical shot tends closer to valley values than peak values.
Audio All bandwidth figures include audio consisting of 44.1 kHz sample rate x 16-bit/sample x 2 tracks = 1.4 Mbps New Features in MediaCentral Cloud UX 2025.6.0 New Features in MediaCentral Cloud UX 2025.6.0 This topic provides an overview of the major new features in this release of MediaCentral Cloud UX. For additional information, see the Tutorial videos and the New Features sections of the MediaCentral Cloud UX Help and Learn menu. You can access the New Features directly at the following link:
https://www.avid.com/products/mediacentral/learn-and-support#New-Features-Portal Asset Editor Feature Description Custom Tab Order The Asset Editor allows you to change the order in which the tabs are displayed through a simple drag and drop operation.
The following illustration shows a user moving the Audio tab to the right of the Metadata tab. Notice that a blue bar appears between the tabs to show the drop position.
For additional details, see "Asset Editor Tabs" in the Avid MediaCentral | Cloud UX User’s Guide.
Asset Editor: Transcript Tab Feature Description Removal of Preview flag Since using the Transcript tab is now a fully supported feature, the "Preview" banner has been removed from the Transcript tab's header.
Support for Production Starting with this release, you can open subclips in the Transcript tab. If the Management subclips underlying masterclip has transcript data, the transcript part of the subclip is shown.
You can also start the transcript creation from the subclip. Note that this will transcribe the whole master clip, not only the subclip. If the masterclip already has a transcript, a re-transcribe action is triggered for the master clip.
For more information, see "Creating a Transcript" in the Avid MediaCentral | Cloud UX User’s Guide.
Overflow menu for If the width of the Asset Editor is reduced to a point at which all buttons cannot be buttons displayed at the same time, the Transcript tab responsively scales by hiding buttons from right to left. Appearing to the far right of the Transcript header the overflow button lets you access the hidden buttons in an overflow menu. By default, the Export Transcript and Create New Transcription buttons are shown in the overflow menu.
New Features in MediaCentral Cloud UX 2025.6.0 Feature Description For more information, see "Using the Transcript Tab" in the Avid MediaCentral | Cloud UX User’s Guide.
Transcript creation and Transcript creation and editing features – create transcript, recreate transcript, editing covered by group rename transcript, rename speakers, add speakers, assign segment to another entitlement speaker, edit transcript text – now are only enabled for users of a group that has the required entitlement "Avid Ada Transcribe RW Access" assigned. Without this entitlement, users can only view and download transcripts and copy transcript text.
For more information, see "Using the Transcript Tab" in the Avid MediaCentral | Cloud UX User’s Guide.
Set and change You can now provide a name for the transcript when you trigger transcript transcript name creation. You can also change the name of any transcript subsequently.
For more information, see "Renaming Transcripts" in the Avid MediaCentral | Cloud UX User’s Guide.
Edit mode changes Transcript editing features – rename speakers, add speakers, assign segment to another speaker, edit transcript text – now can only be applied after you enable Edit mode.
Enabling Edit mode now automatically disables the Sync Playhead toggle button.
Export transcript You can now export a transcript to your local workstation. Supported formats are *.txt, *.csv and *.srt.
For more information, see "Exporting the Transcript" in the Avid MediaCentral | Cloud UX User’s Guide.
Copy text to clipboard You can copy transcript text – single word, sentences, several sentences across segments, individual segment, several segments – to the clipboard.
For more information, see "Copying Transcript Text to the Clipboard" in the Avid MediaCentral | Cloud UX User’s Guide.
Filtering by speaker You can now use the Speaker filtering control to display a subset of the segments shown in the Transcript tab. Only the segments of the speaker(s) you select are shown, all segments of other speakers are hidden.
For more information, see "Filtering Speakers" in the Avid MediaCentral | Cloud UX User’s Guide.
Delete speaker You can now delete any speaker that is not used any longer in a transcript from the Change Speaker control. The Delete option is not available for speakers that are still assigned to a segment in the transcript.
For more information, see "Deleting Speakers" in the Avid MediaCentral | Cloud UX User’s Guide.
Change and create Prior releases allowed you to change and create speakers only for an individual speakers for multiple segment. Now, you can assign several segments to another speaker and create a segments new speaker for several segments.
For more information, see "Renaming Speakers" and "Creating New Speaker" in New Features in MediaCentral Cloud UX 2025.6.0 Feature Description the Avid MediaCentral | Cloud UX User’s Guide.
Segment selection by You can now select a segment by right-click. This opens at the same time the right-click context menu with the options that can be applied to the segment.
Sentence selection You can now select a a range of sentences across multiple segments by across segments highlighting the sentences with the mouse pointer. This allows you to copy the selection to the clipboard, assign the selection to another speaker, and create a new speaker for the selection at the same time.
Multi-selection of You can now select several segments at the same time (by using Shift+click to segments select a range or Ctrl+click to select individual segments). This allows you to copy several segments to the clipboard, assign several segments to another speaker, and create a new speaker for several segments at the same time.
Warning icon for partial If a transcript can only be partially displayed – transcript creation failed while transcripts portions of the transcript have already been shown on the Transcript tab – a warning icon is shown between the transcript selector and Find filter control on the Transcript tab toolbar. The tool-tip reads "Transcript error: partial transcript only".
For more information, see "Viewing a Transcript" in the Avid MediaCentral | Cloud UX User’s Guide.
Improved auto-update The auto-update behavior during transcript creation has been improved:
- For non-growing clips that are shorter than 1 hour, now the fully created
transcript is automatically shown once the transcribe job has completed.
You do not need to click the Reload button any longer.
When a transcript is created for a growing (EWC) clip or a non-growing clip
- that is longer than 1 hour, the Transcript tab display auto-refreshes, new
portions of the transcript are automatically shown in read-only mode.
When the transcript creation is finished, the Transcript tab now auto- refreshes and enables editing of the transcript. You do not need to click the Reload button any longer.
For more information, see "Options in the Transcript Tab" in the Avid MediaCentral | Cloud UX User’s Guide.
Improved messaging l If the audio track for which the transcript has been created does not contain spoken words, a "No speech found" message is now shown.
- If a transcribe job fails before completion while portions of the transcript
are already shown on the Transcript tab , a message "The transcript creation failed" is shown for a short period of time on the Fast bar.
For more information, see "Viewing a Transcript" in the Avid MediaCentral | Cloud UX User’s Guide.
Improved error handling If the transcribe job for a growing (EWC) clip or a non-growing clip that is longer than 1 hour fails before completion, already displayed portions of the transcript are not deleted any longer but are now kept and can be edited.
Improved Reload Clicking the Reload button now preserves the currently selected transcript in the behavior Transcript tab. Before, the top-most transcript in the Transcript selector (usually A1) was selected again.
New Features in MediaCentral Cloud UX 2025.6.0 Feature Description Simplified text You can now easily highlight text of a transcript segment by using the mouse highlighting cursor. Text highlighting by using Shift+click is deprecated.
Improved Find feature The Find feature has been refactored, search is now done on UI side. This includes the following improvements:
The Find field now shows a Search icon.
- The Find feature interacts with the new Speaker filter:
  - If you already applied a Speaker filter, search is run in the Transcript
column of the filtered segments.
  - If you already used the Find field to search for words in the
Transcript, the search term, word count and word highlighting are cleared when you apply a Speaker filter.
- Clearing the search term in the Find filter by clicking the X button now also
clears the word count and word highlighting; you do not need to press Enter any longer.
For more information, see "Searching in the Transcript" in the Avid MediaCentral | Cloud UX User’s Guide.
Associations App Feature Description Default thumbnail icon (List view) If an asset does not have a thumbnail, now the default thumbnail icon is shown in the Thumbnail column. Before, only an empty cell was shown.
Usage of cached To reduce the number of requests to the backend, the Associations app now uses thumbnails cached thumbnails from the Thumbnail Aggregator service.
Improved sorting when When loading an asset, the Associations app now uses the "sort" query parameter loading to fetch the asset relations sorted by the specified attribute (or Name by default).
Improved performance The performance of the Associations app when loading associated assets in the when loading associated List view has been improved.
assets Sorting in List view Clicking a column header now sorts the contents in the List view.
Avid Ada Transcribe Feature Description Preview Status Introduced in MediaCentral Cloud UX v2024.10 as a Tech Preview, v2024.10.3 and later include additional functionality that allow Avid Ada Transcribe to exit the public Preview.
For additional information on these features, see "Asset Editor: Transcript Tab" on page 12.
Updated model This release includes a alternate data analysis model that is both more accurate and faster than the original model for MediaCentral Cloud UX nodes that include a GPU. When processing a transcribe task, the worker verifies if your server is equipped with a GPU. If detected, the "turbo" model is enabled automatically. If the installer does not detect a GPU, then the previous model is left in place.
New Features in MediaCentral Cloud UX 2025.6.0 Feature Description The new model can transcribe assets roughly 3x faster than the original model for GPU equipped nodes. Due to the significant accuracy and performance increases available in this new model, Avid highly recommends that you provision an NVIDIA® GPU for any node that runs the Avid Ada Worker services.
For more information, see "Avid Ada Transcribe" in the Avid MediaCentral | Cloud UX Installation Guide.
PostgreSQL Avid uses a PostgreSQL database to store data related to Avid Ada processes. The Database v2024.10 installation process configured a single instance of the database on one node.
If your MediaCentral Cloud UX system is configured in a cluster, this update automatically deploys a second PostgreSQL pod for redundancy. If you are running your MediaCentral Cloud UX system on a single server and you have deployed the Avid Ada feature pack, the system does not deploy a second PostgreSQL pod.
Browse App Feature Description Renaming of assets and The Browse app's context menu now provides a Rename option that lets you folders via context rename a selected asset, sequence, or folder in a Rename dialog box.
menu and dialog box For more information, see "Renaming a Folder" and "Renaming Assets" in the Avid MediaCentral Cloud UX User's Guide.
Create Transcript To enable transcript creation outside of the Transcript tab, a Create Transcript option option (App Menu and context menu) is now shown in the Browse app for master clips of local Production Management modules.
For more information, see "Creating a Transcript from the Browse and Search App" in the Avid MediaCentral Cloud UX User's Guide.
Improved drag and (List and Card views) During drag and drop operations to the Results area of a drop in Results area folder you do not need to drop to an empty area any longer: as soon as you drag your selection over the Results area, the entire Results area is marked as a drop zone (highlighted with a blue frame). If you drag the selection over a folder within the Results area, the folder is highlighted and can be used as drop target (as before).
For more information, see "Moving or Copying Assets" and "Moving or Copying Asset References" in the Avid MediaCentral | Cloud UX User’s Guide.
Creating Subclips This release includes a setting that alters the method by which users can create subclips using drag and drop.
See "Subclip Creation Setting" in "Configuration Settings App" on the next page.
Audio-Only Master Clip The Browse (and Search) app displays Production Management Icon audio-only master clips with the Audio icon, instead of the more generic Master Clip icon as used in prior releases.
Chat App Microsoft discontinued the services used to support the integration with Microsoft Teams. Due to this change, the Chat app (Beta) has been removed from this release.
New Features in MediaCentral Cloud UX 2025.6.0 Cloud Integrations Feature Description GCP Storage Connector: The Platform GCP Storage Connector now uses the native low-level API to improved improve upload and download operations for a single file. The following methods upload/download of a are used:
single file
- XML API multi-part upload
- Sliced object download
Before, only sequential upload was supported.
Storage Connectors: The Platform Storage Connectors (AWS S3 Storage Connector, Azure Storage expose jobs to Job Connector, Platform GCP Storage Connector) now expose transfer jobs to the Monitor (Process app Job Monitor so that they can be shown in the Process app. See also "Process App" backend) on page 28.
Configuration Settings App Feature Description New section: Publisher MediaCentral Cloud UX Platform Automation provides a feature that lets you Automation publish clips without using the Publisher app: you can create rules and scheduled jobs which contain an action "Publish" in the Rules Editor and Schedule Editor apps. Before you can use the Publish action, you must configure a Publisher Automation setting.
For more information, see "Configuring the Publisher Automation Setting" in the Avid MediaCentral | Cloud UX Installation Guide.
Subclip Creation Setting The General section of the app includes a Subclip Creation option that allows administrators to determine how users can create subclips with drag and drop.
- If the setting is disabled (default), users must hold down the Alt (or Option)
key on the keyboard to create a subclip.
- If the setting is enabled, then the modifier key is not required.
For additional information see "Using the Configuration Settings App" in the Avid MediaCentral | Cloud UX Installation Guide, and "Creating Subclips" in the Avid MediaCentral | Cloud UX User's Guide.
Assigning a Service MediaCentral uses a number of Sync Service Agents to provide data to Account to the Sync MediaCentral Search. This release requires you to either manually assign a Agents MediaCentral Cloud UX administrator to the sync services, or ensure that your Default Service Account is included in the Administrator's User Group.
For additional details, see "Assigning a Service Account to the Sync Agents" in the Avid MediaCentral | Cloud UX Installation Guide.
New Features in MediaCentral Cloud UX 2025.6.0 Dynamic Range Support HDR (high dynamic range) refers to video media formats that support a wider range of brightness and color values than traditional SDR (standard dynamic range) media. This release adds the following features that allow users to more easily determine if they are working with HDR media, or not.
Feature Description Asset Editor: When you load a High Dynamic Range asset (master clips and sequences only) into HDR Identifier the Media Viewer, an icon appears to the left of the Mark In timecode to call attention to the asset's status.
If you load a sequence that has a mix of HDR and non-HDR assets, the icon appears only when viewing an HDR segment of the sequence.
For additional information, see "Loading HDR Assets" in the Avid MediaCentral | Cloud UX User’s Guide.
Asset If your asset includes Dynamic Range metadata, that value (HDR, SDR, etc.) appears Editor: Metadata Tab in the Metadata tab.
Search App The Search app includes not only a searchable pill type called Dynamic Range, but also a Dynamic Range value that appears in the Display Options menu.
Dynamic Range values include:
- HDR (High Dynamic Range)
- SDR (Standard Dynamic Range)
- Mixed — Refers to an asset with multiple dynamically linked resolutions, where
at least one is an SDR resolution
- Unknown — Dynamic Range status is not available.
- Not Applicable — Asset does not support color space information
Avid supports displaying the Dynamic Range status for video master clips, and limited support for rendered video effects.
Note the following regarding this feature and the requirements for the associated modules:
New Features in MediaCentral Cloud UX 2025.6.0 Working with Asset Management
- If your workflow includes MediaCentral Asset Management, then you must install the Asset
Management v2024.10.0.2 hotfix, as well as the Asset Management CTC hotfix v2024.10.0.1.
For additional information, see the v2024.10.0.2 Avid MediaCentral | Asset Management ReadMe.
- Working with Production Management
If your workflow includes MediaCentral Production Management, you must be running Production Management v2024.10 and Interplay Access v2024.10.1 or later to enable these features.
For additional information, see the v2024.10.1 Avid MediaCentral | Production Management ReadMe.
Working with MediaCentral Ingest
- You can ingest assets through MediaCentral Ingest or the Ingest app without any modification to
the HDR data by selecting a transparent passthrough option, such as Direct OP1a or any of the other workflows using the Generic MXF plugin.
Installation and Configuration Feature Description Install / Upgrade Process In prior releases, the installation processes described in both the MediaCentral Cloud UX Installation Guide and ReadMe required you to mount the feature pack ISO to the /features directory. The upgrade / install script then asked you to confirm that this task was complete.
Both the Install Guide and ReadMe have been updated in this release to document a more streamlined approach. You are no longer required to mount the feature pack ISO as a separate step. The new avidctl platform import command allows you to install features from up to two releases simultaneously.
For example, you can install both a feature release, and a subsequently released patch (if available) at the same time.
> **Note:** While the v2025.6 documentation has been updated with this new
installation approach, you can continue to mount the feature pack ISO manually and use the avidctl platform deploy -i command as documented in prior releases (if desired).
Post-Install / Upgrade The following installation scripts are new or include updates:
Setup Scripts
- Running the Feature Pack Deployment Script
- Configuring an Authentication Provider > Integrating with an
OpenID Provider The Collaborate prompt found in prior releases has been replaced with a Default Service User prompt. If you are connecting to an OpenID provider, you must run this script as part of your upgrade to configure the account.
Connecting to Avid NEXIS Shared Storage
- The section includes a new process for "Configuring the Avid NEXIS Search
Connector" that is required for any site that uses OpenID authentication and Avid NEXIS API services.
- (new) Configuring Production Resources
Avid recommends that you complete this process when you upgrade a New Features in MediaCentral Cloud UX 2025.6.0 Feature Description MediaCentral Cloud UX cluster with four or more nodes to v2025.6.
- (new) Connecting to Wolftech News
Required for any organization that wants to connect MediaCentral Cloud UX to Wolftech News.
- (new) Configuring Publisher Automation
Required only if you want to use the Rules Editor or Schedule Editor apps to publish assets through automated tasks.
(new) Integration with Adobe Premiere Pro
- Required if you are using the new Adobe Premiere Pro project deletion
workflow in the MediaCentral | Panel for 3rd Party Creative Tools.
Feature Packs The following is a list of feature packs introduced in this release:
- MediaCentral Archive Production
Formally included as part of the Production Management feature pack, this release splits Production Management and Archive Production into separate feature packs.
If you are upgrading to v2025.6 and you use Archive Production in your current workflow, you must select this feature pack during the upgrade process to maintain the connection to that system.
- Wolftech
Required if integrating with Wolftech News.
Audit Logging: Avid Ada In addition to logging information about incrementing quota usage, the log notes Transcribe the end of the license cycle and the number of remaining unused hours (if any).
Audit Logging: Media This release adds information about Media Analytics Engine jobs (including, but Analytics Engine not limited to Transcribe) to the audit logs. These logs include information about quota usage (if applicable), the user that started the job, the asset name or ID, and more.
For more information about this feature, see "Configuring Audit Logging" in the Avid MediaCentral | Cloud UX Installation Guide.
Avid Ada During the transcription process, the asset metadata is updated with a status Transcribe: Service User value such as Completed, Failed, or other. Due to this change, the avid-stt- Requirement service in the Service Accounts section of the Configuration Settings app must be configured with a user that has write access to any location in the Production Management database that includes media that might be transcribed.
For additional information on this and other Production Management database requirements, see the description of the Default Service Username under the "Configuring an Authentication Provider" section of the Avid MediaCentral | Cloud UX Installation Guide.
Sync Service This release requires you to assign MediaCentral Cloud UX Administrator rights to Requirements the account (or accounts) that are assigned to the sync services that provide information to MediaCentral Search.
For additional details, see "Assigning a Service Account to the Sync Agents" in the New Features in MediaCentral Cloud UX 2025.6.0 Feature Description Avid MediaCentral | Cloud UX Installation Guide.
Configuring Elasticsearch The process to "Increasing the Elasticsearch Resources" that was found in prior resources versions of the Avid MediaCentral | Cloud UX Installation Guide has been updated.
The example configuration file has been replaced with an avidctl script that administrators can run to extend or limit the system resources available to Elasticsearch.
Import Custom Logging Documentation Update: The process to import logs from the MediaCentral UX Customizable Logger has been removed from the Avid MediaCentral | Cloud UX Installation Guide. This capability is no longer tested or supported.
Virtualization Avid is no longer testing or qualifying the deployment MediaCentral Cloud UX in a virtual environment using any specific vendor. While Avid allows you to deploy MediaCentral Cloud UX in a virtual environment, the selection and qualification of the virtualization solution is the responsibility of an individual or team within your organization.
For a short list of requirements and best practices, see "Deploying MediaCentral Cloud UX in a Virtual Environment" in the Avid MediaCentral | Cloud UX Installation Guide.
Layouts Feature Description Search app If you have a favorite search selected, it is reapplied to the Search Header when activated.
For more information, see "Working with Layouts" in the Avid MediaCentral | Cloud UX User’s Guide.
Wolftech app If the Wolftech app is open, the layout saves the current active tab within the app.
MediaCentral Acquire Feature Description Enhanced UI User interface performance has been further optimized to ensure smooth Performance operation when working with a large number of recordings and channels. Previous responsiveness issues under heavy load have been resolved, providing a more stable and efficient user experience.
Change Source During You can now switch the source of an ongoing recording directly from the Channels Recording View or via the Recording Edit dialog. This provides greater flexibility during live operations without interrupting the recording session.
For details, see "Working with the Acquire App" in the Avid MediaCentral | Cloud UX User’s Guide.
New Features in MediaCentral Cloud UX 2025.6.0 MediaCentral Collaborate This release marks the discontinuation of the MediaCentral Collaborate app. As a result, all references to the app have been removed from the MediaCentral Cloud UX documentation.
If you have already deployed MediaCentral Collaborate, the upgrade to MediaCentral Cloud UX v2025.6 automatically removes the app from your system. However, information about existing Collaborate topics, assignments, and other related data remain in the MongoDB database. After completing the upgrade to v2025.6, you can use the following process to manually remove this now orphaned data.
To delete Collaborate data from MongoDB:
1. Use a terminal application to log in to your single-server or primary node.
2. (optional) Enter the following command to list the MongoDB instances:
sudo ls /var/data/local/pv/ns/default/mongodb/ mdb-mongo-ca If you installed and used Collaborate, you should see one or more instances as shown in the following example output.
avid@wavd-mcux:~$ sudo ls /var/data/local/pv/ns/default/mongodb/ mdb-mongo-core-0 mdb-mongo-search-0 mdb-mongo-ca-0
3. Delete the data directories for the mongo-ca instance:
sudo rm -rf /var/data/local/pv/ns/default/mongodb/mdb-mongo-ca-*
4. If you are operating in a clustered configuration, repeat the above steps on each control-plane
node.
MediaCentral Hoverscrub Feature Description Alternate Storage If your workflow creates a large number of proxies, you can now reconfigure Hoverscrub to store those files in alternate location that has more storage space /mnt/gluster-cache/hoverscrub than the default share on your Data volume.
For more information, see "Altering the Hoverscrub Configuration" in the Avid MediaCentral Cloud UX Installation Guide.
MediaCentral Router Control Feature Description Support for Serial Router Control now supports Serial-over-IP communication through a dedicated Connection Serial Port Proxy Service. This enables remote Serial connectivity alongside existing Ethernet support. The enhancement removes the need for a direct physical connection between MediaCentral Cloud UX and the router, simplifying deployment in distributed environments.
For more information, see "Using Avid MediaCentral Cloud UX Router Control" in the Avid MediaCentral Cloud UX Installation Guide.
New Features in MediaCentral Cloud UX 2025.6.0 Notifications App Feature Description Platform Notifications for Platform Notification: When a scheduled job – created in the scheduled jobs Schedule Editor app – with configured Notification action is executed, a Platform notification is sent to the users configured in the action.
Platform Notifications: Clicking on a platform notification can now open the default app for the open default app referenced asset if the notification action was triggered with an attached asset.
For more information, see "The Notifications App" in the Avid MediaCentral | Cloud UX User’s Guide.
Platform Automation: Engines and Services Feature Description Schedule Engine (new) This release adds the new platform automation service Schedule Engine (avid- platform-scheduleengine):
- This service maintains scheduled jobs and executes their Actions optionally
using Search to find applicable entities.
Deployment: feature pack scheduleengine
- Action Monitor (new) This release adds the new platform automation service Action Monitor (avid-
platform-action-monitor):
- The Rules Engine and Schedule Engine expose rule and job execution to the
Action Monitor. The Action Monitor reads action commands and statuses and reports the action status to the Job Monitor (Process app backend) so that the execution of actions and scheduled jobs can be monitored in the Process app.
- Deployment: feature ae-core
Wolftech Event This release adds the Kafka plug-in Wolftech Event Connector (Kubernetes pod Connector (new) name: kafka-connect-camel-connect):
- The Wolftech Event Connector collects Wolftech News change messages
from Amazon SQS and publishes them to the Kafka topic “wt.events” (where they can be read by the Wolftech News Search Sync Agent and by the Wolftech News Change Event Agent, see below).
- Deployment: feature pack wolftech
Wolftech News Change This release adds the Platform Automation Event Notification service Wolftech Event Agent (new) News Change Event Agent (avid-change-event-agent-wolftech):
- The Wolftech News Change Event Agent reads Kafka messages from the
Kafka topic “wt.events”, filters the messages for entities that are supported in the automation (stories, pitches, publishing outputs), converts "wt change" events into automation change events and writes Kafka messages to the Kafka topic “avid.changes”.
Events and included information will be used to trigger the Rules Engine.
- Deployment: feature pack wolftech
New Features in MediaCentral Cloud UX 2025.6.0 Feature Description Action Engine Search This release adds the new platform automation service Action Engine Search (new) (avid-platform-actionengine-search):
The Action Engine Search is used in context of the Schedule Engine to query
- MediaCentral Search.
- Deployment: feature pack ae-search
Action Engine Wolftech This release adds the new platform automation service Action Engine Wolftech News (new) News (avid-platform-actionengine-wolftech-news):
- The Action Engine Wolftech News enables action creation with Wolftech
News entity data; evaluates the event data required to trigger a rule.
- Deployment: feature pack wolftech
Action Engine Publisher This release adds the new platform automation service Action Engine Publisher (new) (avid-platform-actionengine-publisher):
The Action Engine Publisher is used to trigger publishing of Production
- Management and Asset Management clips without using the MediaCentral
Publisher app.
- Deployment: feature pack publisher
Action Engines: adapted New fields “entities”, "minEntities" and "maxEntities" have been added to to new entities reference ActionSpecs and ActionConfig. These fields are used to pass entities in a common schema way to an action and to specify how many entities can be processed min/max by a single ActionCommand.
Schedule Editor:
When a Job is configured to use a search, it needs to know how many entities each embedded action can process. The Schedule Editor uses the above mentioned "minEntities" and "maxEntities".
Action may be used on “top level” in Schedule Editor not requiring an entity (from Search) The Schedule Engine creates a single ActionCommand per search result.
Allows efficient processing in the downstream system. May indicate that found entities have a semantic relationship and should be processed together.
Rules Editor:
- Shows a new “Entity” field in the Action Details of each action when the
corresponding Action Specification has a value “maxEntities” > 0. The field is used to define the default behavior how the entity attached to the rule is retrieved. By default, the entity ID from the Source Event is used.
Action Engine This release introduces the following features to the Action Engine Notification:
Notification: context New Features in MediaCentral Cloud UX 2025.6.0 Feature Description information and entities l The Action Engine Notification now sends context information for ‘platform-automation’ notifications when an entity is attached to the change event.
As part of the context information, the "id" property will be set with the global ID of the attached entity. According to this information, MediaCentral Cloud UX will be able to open the default application for the referenced entity when a user clicks the notification message.
- Before, the Action Engine Notification expected change events to have an
entity attached, and according to the entities' system type, the notification category was determined (such as interplay-mam, interplay-pam).
Now, change events without any entity are supported and categorized into a new notification category “system-independent”. The notification definition for the “avid-platform-automation” type has been enhanced by the new notification category “system-independent“.
Rules Engine: publish rule The Rules Engine now publishes rule execution to the Action Monitor, which execution to Action forwards the information to the Job Monitor, so that rule execution information Monitor can be shown in the Process app.
Change Event Agent The Change Event Agent has been improved for Production Management and improvements for update Asset Management change events:
events
- The Change Event Agent can now keep track of selected properties
included in a watched properties list. See "Attributes That Support Update Events ("Watched Properties")" in the Avid MediaCentral Cloud UX Installation Guide.
- Update events now include the old value for watched properties (if the
value has changed).
- Update events are skipped if none of the watched properties have
changed.
- The Change Event Agent default mode has been changed from "phonetic"
to "send all".
Therefore, the Updated trigger can now be used in Rules Editor with meaningful conditions on watched properties.
Platform Automation: Rules Editor App Feature Description Rules Simulator tool In the Rules Editor app, you can now use the Rules Simulator utility to test or debug rule initiation and expressions. You can do the following:
Define the change event against which expressions and rules are to be
- evaluated.
- Test expressions used in the rule against the defined change event.
- Test if a certain rule or any rule in the Rule DB trigger on the defined
change event.
You open the Rules Simulator from the Rules Editor header or from within the Edit New Features in MediaCentral Cloud UX 2025.6.0 Feature Description Expression dialog box of fields of type "Expression" in actions. In an Edit Expression dialog box, you can also insert an expression evaluated in the Rules Simulator.
For more information, see "Using the Rules Simulator for Consistency Checks" in the Avid MediaCentral Cloud UX Installation Guide.
Support for Wolftech In the Rules Editor app, you can now configure rules for Wolftech News. Wolftech News News rules provide specific items:
- Entities: Story, Publishing Output, Pitch
- Actions: Create Publishing Output, Create Sequence
Available as Preview: Create News Sequence, Publish Publishing Output Additionally, you can use the following standard actions in Wolftech rules:
Add to Folder, AM Orchestration, Create Entity, Create Folder,
- Notifications, Update Metadata
Available as Preview: Send to Playback For more information, see "Configuring Wolftech News Rules" in the Avid MediaCentral Cloud UX Installation Guide.
Actions: new field "Entity" The Rules Editor shows a new “Entity” field in the Action Details if the corresponding Action Specification has a value “maxEntities” > 0. Therefore, the Entity field is shown for all actions (except Create Entity and Create Folder).
The Entity field is used to define the default behavior how the entity attached to the rule is retrieved. It provides a context-menu that lets the user switch between the following:
- Literal: Manually entered entity ID
- Property: Property selection to resolve the entity ID(s) from
- Expression: Manually entered expression to resolve the entity ID(s) on run-
time From Source Event: The entity ID from the Source Event is used (default)
- Not Set: No entity is to be attached to the action (by default only shown
- for Notification actions; might also be shown for AM Orchestration
actions).
Using the default value From Source Event significantly simplifies the entity definition in an action.
For more information, see the topics in the chapter "Defining Actions" in the Avid MediaCentral Cloud UX Installation Guide.
New action "Publish" Using the new "Publish" action you can define a rule that triggers publishing of Production Management and Asset Management assets through Publisher without using the MediaCentral Publisher app.
For more information, see "Defining a Publish Action" in the Avid MediaCentral Cloud UX Installation Guide.
New Features in MediaCentral Cloud UX 2025.6.0 Feature Description New actions "Add to When the wolftech feature pack is installed, the following new actions are shown Publishing Output" and for Asset Management and Production Management rules:
"Add to Story" Add to Publishing Output
- Add to Story
- For more information, see "Defining an Add to Publishing Output Action" and
"Defining an Add to Story Action" in the Avid MediaCentral Cloud UX Installation Guide.
Action "Add to Folder": When you define an Add to Folder action, you can now use an interactive folder folder browsing control for browsing control to specify the Folder property. Before, the ID of the folder had Folder property to be provided as a string or expression.
For more information, see "Defining an Add to Folder Action" in the Avid MediaCentral Cloud UX Installation Guide.
Action "Send to The Send to Playback action can now also be used for master clips and subclips Playback": enabled for in Production Management rules. Before, Send to Playback was limited to use master clips and subclips with Sequence entities only.
For more information, see "Defining a Send to Playback Action" in the Avid MediaCentral Cloud UX Installation Guide.
Action "Media Analytics": When you configure a Media Analytics action, you can now define a name for specify transcript name the transcript by using the Result Name field. This name will be shown as transcript name in the Transcript tab. If you do not provide a result name, the transcript will be named according to the audio track(s) for which it is created.
For more information, see "Defining a Media Analytics Action" in the Avid MediaCentral Cloud UX Installation Guide.
Namespace The namespaces in Rules Editor for Production Management and Asset modification/Prefixes for Management have been adapted to common, custom and selected status CTMS properties attributes, and for usage of a few new hard-coded properties.
In this context, prefixes for properties have been introduced:
- common|<property name>
- custom|<property name>
- status|<property name>
> **Note:** As a side effect, properties in existing rules might have become invalid and
need to be adapted. Also, expressions in the form"this.properties.myprop?.value" cannot be used any longer.
Discontinuation of This release marks the discontinuation of MediaCentral Collaborate. As a result, Collaborate Collaborate has been removed from the Rules Editor app. Rules for Collaborate that have been created before, are not automatically deleted but are now shown under the rule type "Other". You can delete them manually from the Other category.
New Features in MediaCentral Cloud UX 2025.6.0 Platform Automation: Schedule Editor App Feature Description New app to create The Schedule Editor app allows system administrators to define jobs that trigger scheduled jobs schedule-based actions in MediaCentral Cloud UX. A scheduled job defines a situation in which an action gets triggered. It combines a trigger (schedule), an optional search (entity) and one or more actions. You can configure two different types of scheduled jobs:
- Scheduled jobs that trigger action(s) for a configured time and interval (no
assets attached)
- Scheduled jobs that trigger action(s) on assets found by a saved search for
a configured time and interval Using the Schedule Editor app, an administrator can create, edit, enable/disable, duplicate, export, import and delete scheduled jobs.
For more information, see "Using the Schedule Editor App" in the Avid MediaCentral | Cloud UX Installation Guide.
Process App Feature Description Platform automation The Rules and Schedule Engines expose action and schedule execution to the Action actions shown in Monitor so that they can be shown in the Process app.
Process app
- You can filter the platform automation rule, actions and jobs by applying the
sidebar filter System > Automation.
- You can filter actions (triggered by rules or scheduled jobs or both) by
applying the sidebar filter Groups > Action: <action type>, such as "Action:
am-orchestration" or "Action: ctms-addtofolder".
You can filter executed rules by applying the sidebar filter Groups > "Rule:
- <rule name>"
- You can filter executed scheduled jobs by applying the sidebar filter Groups >
Schedule: <scheduled job name>.
Note that only administrators or users of a group with Master of Jobs entitlement can monitor the execution of actions triggered by rules and scheduled jobs in the Process app.
For more information, see "Monitoring Platform Automation Actions in the Process App" in the Avid MediaCentral | Cloud UX Installation Guide.
Manual and scheduled For failed platform automation actions, the Process app shows two options:
retry for failed platform automation
- Manual retry
actions Is shown for a failed platform automation action if long-term retries have not been configured; is also shown after all scheduled retries haven been executed.
- Scheduled retry
New Features in MediaCentral Cloud UX 2025.6.0 Feature Description If long-term retries have been defined in the Action Monitor configuration, for failed platform actions a scheduled retry can be monitored in the Process app. For more information, see "Configuring Long-Term Retry for Platform Automation Actions" in the Avid MediaCentral | Cloud UX Installation Guide.
For actions with a scheduled retry, an auto-retry button is shown and a tool- tip provides information on the scheduled retry date ("Retry: <date and time of the retry)>".
For more information, see "Retrying Failed Platform Automation Actions in the Process App" in the Avid MediaCentral | Cloud UX Installation Guide.
Storage Connector The Platform Storage Connectors now expose transfer jobs to the Job Monitor so jobs shown in Process that they can be shown in the Process app.
app
- You can filter the platform storage connector jobs by applying the sidebar
filter System > Storage.
- You can filter individual connector job groups by applying the sidebar filter
Groups > aws-default, azure-default or gcp-default.
- Platform Storage Connectors transfer jobs support Cancel and Retry
actions.
The individual transfer job types are identified by a prefix: [Storage: Upload],
- [Storage: Copy] or [Storage: Download].
Improved Now, all processes – independent of lifecycle status – are archived from the “Active housekeeping of jobs Collection” to the “Archive Collection” after a configurable amount of time (default:
(archiving, deletion) 48 hours). Before, only processes in final state (Completed, Failed, Canceled) have been are archived. If an archived process gets updated, it is re-inserted into the Active Collection.
Archived jobs – independent of lifecycle status – will be purged from the “Archive collection” after a configurable amount of time (default: 30 days).
For more information, see "Viewing Archived Processes" and "Deleting Processes" in the Avid MediaCentral | Cloud UX User's Guide.
Pause/Resume actions Before, the Process app supported Cancel and Retry actions on processes. Now, on processes additional actions are available:
- Pause: Pauses an active process (status: Created, Pending, Running)
- Resume: Resumes processing of a paused process
Whether a process allows applying the new options or not is defined by the process provider (for example, Asset Management or Production Management) and process configuration.
For more information, see "Canceling, Retrying, Pausing and Resuming Processes" in the Avid MediaCentral | Cloud UX User's Guide.
Visual indicator for When you click an action button of a process (Cancel, Retry, Pause, Resume) the "successfully" applied button is disabled and turns blue for 5 seconds to indicate that the action is actions on processes successfully applied.
For more information, see "Canceling, Retrying, Pausing and Resuming Processes" New Features in MediaCentral Cloud UX 2025.6.0 Feature Description in the Avid MediaCentral | Cloud UX User's Guide.
Number of matching The filters in the sidebar (except Created and System) and the Status filter in the processes in filters toolbar now show the number of matching processes (both in Active and Archive mode).
For more information, see "Applying Filters from the Toolbar" and "Applying Filters from the Process Sidebar" in the Avid MediaCentral | Cloud UX User's Guide.
Status filter in Archived Before, only the Status filters Completed, Failed and Cancelled have been shown in mode aligned to Active Archive mode. Now, the Archive mode displays the same Status filters that are mode available in Active mode.
For more information, see "Viewing Archived Processes" in the Avid MediaCentral | Cloud UX User's Guide.
New status and filter: In the Process app, a new final status for jobs has been added:
Partially failed PARTIAL, which identifies partially failed processes. The tool bar and the sidebar provide an additional filter for Partially failed processes.
For more information, see "Applying Filters from the Toolbar" and "Applying Filters from the Process Sidebar" in the Avid MediaCentral | Cloud UX User's Guide.
Publisher App The Publisher section of the Configuration Settings app includes the following updates:
- Settings
  - The "Go to publisher backoffice" link opens a new browser tab and connects you to the
Wildmoka customer portal.
  - "Referer set in Wildmoka" check box allows you to configure this setting in MediaCentral
Cloud UX if the associated tenant in the Wildmoka customer portal is similarly configured.
- Proxy
  - After clicking the button to Start Local Tunnel, the system responds with a new confirmation
message: “Tunnel up and running: All sockets created”
  - When the tunnel is stopped, the system replies with the following: Tunnel Service Stop
requested. Tunnel stopped.
System Updates
  - The system limits the number of sockets opened by the tunnel service to prevent exhaustion.
  - The tunnel service now automatically restarts in the event of a pod crash or restart.
New Features in MediaCentral Cloud UX 2025.6.0 Rundown App The Rundown app supports the new Light mode and traditional Dark mode of the Cloud UX user interface, as configured via user settings. For more information, see "Appearance Customization" in the User Settings section later in this ReadMe.
Feature Description New Panel A new option appears in the App menu that allows either:
arrangement option in
- Arrange Panels Vertically - when enabled, the Queue panel is displayed
App menu above the Story panel.
- Arrange Panels Horizontally - when enabled, the Queue panel is displayed to
the left of the Story panel.
New display toggle A new option appears in the App menu that allows either:
option in App menu Show Queue Name on Tab - when enabled, the names of queues are
- displayed on corresponding tabs.
- Show Story Title on Tab - when enabled, the title of the currently selected
story is displayed on the corresponding tab.
The option is applied to all queues and is stored with a Cloud UX layout.
> **Note:** The tooltip, which appears when hovering the mouse cursor over the tab,
always displays the full queue path and story name.
New Show/Hide Timing A new option appears in the App menu that allows either:
Bar option in App menu Show Timing Bar - when enabled, the Timing Bar is displayed.
- Hide Timing Bar - when enabled, the Timing Bar is hidden.
- Retain display setting The Rundown app now maintains whether a user has opted to show or hide the
across user sessions story form across user sessions. The keyboard shortcut for the Show/Hide Story Form option (in the App menu) is Shift+Ctrl+F.
The Rundown app also maintains the settings for displaying the timing bar and displaying the name of the queue or story title on tabs across user sessions.
Paste formatted text The Rundown app now evaluates the "prominent" text color of content copied from other applications, such as Microsoft Word, and pasted into the Story panel, so that colors are retained according to:
- Red for presenter instructions
- Green for closed captioning
- Blue for machine control instructions (in the production-cue panel)
- Black for normal text (default if a color is not recognized)
Color detection works by weighing the computed CSS RGB values.
Detection of bold, underlined, and italicized text has also been improved by evaluating more style information.
Segment ordering Moving a story segment up or down is now achieved using a new dedicated "grabber", shown below in a red rectangle. The grabber is visible on mouse hover and for the focused segment.
New Features in MediaCentral Cloud UX 2025.6.0 During reordering, the "dragged" segment is visible, as shown by "Step 5" in the above example, and the new position is indicated with a blue line.
Colored event status The Rundown app now display the event-status field with colors that are based on the field’s urgency attribute: yellow for Cued, green for Play, purple for Offline, and red for Error. The content of the event-status field and the value of the urgency attribute depend on the Newsroom Management configuration. The colors appearing in the Rundown app and their usage for the different urgencies are fixed, not configurable.
Search App Feature Description Create Transcript option To enable transcript creation outside of the Transcript tab, a Create Transcript option (App Menu and context menu) is now shown in the Search app for master clips and subclips of local Production Management modules.
For more information, see "Creating a Transcript from the Browse and Search App" in the Avid MediaCentral | Cloud UX User's Guide.
Ada Transcript Status A Metadata > Ada Transcript Status pill type has been added that allows you to (Search pill) search for assets that have been processed through Avid Ada Transcribe.
Options include:
- Canceled — The transcribe job was started and actively canceled by a
user.
- Completed — The job completed successfully.
- Failed — The transcribe job failed to complete successfully.
- Paused — A user paused the job while it was processing.
- Pending — The transcribe job is in queue, waiting to be processed.
- Running — The asset is actively being transcribed.
If the asset has not been transcribed (or attempted to be transcribed), then the metadata value is not set.
New Features in MediaCentral Cloud UX 2025.6.0 Feature Description Ada Transcript Status You can also display the Ada Transcript Status in the Results area by adding it (Display Options) through the Display Options menu. When displayed as a column, the status values are displayed as colored icons:
- Canceled
- Completed
- Failed
- Paused
- Pending
- Running
This feature is specific to the Search app, and is not available in the Browse app.
For more information, see "Using the Search App's Transcript Status Information" in the Avid MediaCentral | Cloud UX User's Guide.
Markers & Segments The Search app now includes simple and advanced versions of the Markers & Segments search type. The advanced menu provides access to alternative versions of some search types that allow you to target more specific values than the simple category of terms.
For complete details, see "Understanding Search Types" in the Avid MediaCentral | Cloud UX User's Guide.
Wolftech Integration If your system is integrated with a Wolftech News system, you can now search for Wolftech assets. The Asset Type list in the Search app sidebar includes the following new asset types:
- Publishing Output
- Event
- Story
- Pitch
You can also use the System filter in the sidebar to limit your search to show Wolftech News assets only.
User Management App Feature Description New entitlement for Avid The User Management app provides a new entitlement Avid Ada Transcribe RW Ada Transcribe Access (technical name: ent_mcs_perm_ena_stt) to enable transcript creation and editing features on a group basis.
New Features in MediaCentral Cloud UX 2025.6.0 Feature Description
- Users of a group that has the entitlement assigned can create, recreate,
and edit transcripts in the Transcript tab.
- Users of a group that does not have the entitlement assigned can only view
and download transcripts and copy transcript text.
For more information, see "Group Details and Entitlements" in the Avid MediaCentral Cloud UX Installation Guide and "Using the Transcript Tab" in the Avid MediaCentral | Cloud UX User’s Guide.
New entitlement for The User Management app provides a new entitlement MediaCentral | Adobe Adobe Premiere Pro Project Delete Permission (technical name: ent_mcs_perm_del_nexis) to enable project deletion project deletion if you are using the new Adobe Premiere Pro project deletion workflow in the MediaCentral | Panel for 3rd Party Creative Tools.
User Settings Feature Description Notifications: New The "Platform Automation" section provides two new settings.
settings for Platform
- The new feature "System independent job applies" lets you enable or
Automation disable sending platform notifications that do not include a deep link to an asset. This applies to Notification actions configured in Rules Editor rules and Schedule Editor scheduled jobs.
The new feature "Wolftech News rule applies" applies only to Notification
- actions configured in Rules Editor; it lets you enable or disable sending
platform notifications for Wolftech News rules.
For more information, see "Configuring Notifications" in the Avid MediaCentral | Cloud UX User's Guide.
Appearance Traditionally displayed in "Dark Mode", you can now display the MediaCentral Customization Cloud UX user interface in Light or Dark mode.
Found under the General area of the User Settings, you can select from the following three options:
- Light: Applies a light theme to the user interface
- Dark: Applies the traditional dark theme
- System Default: The user interface adopts the color theme that is set for
your operating system.
New Features in MediaCentral Cloud UX 2025.6.0 Feature Description Appearance settings apply to the MediaCentral Cloud UX user apps, and do not apply to the administrator apps.
Wolftech App The Wolftech app is your portal to the Wolftech News story-centric workflow management system. From conception to publication, Wolftech News enables you to create, manage, and track pitches, stories, assets, people, and more — through an easy to use and centralized user interface.
You can also take Wolftech with you on the road with the Wolftech News mobile app — Wolftech Go, available for both iOS and Android. This app empowers users to contribute to news-gathering and story planning workflows, working seamlessly and efficiently with users at your organization's base of operations.
For additional information on using Wolftech News assets with MediaCentral Cloud UX, see "Working with the Wolftech App" in the Avid MediaCentral | Cloud UX User's Guide. For additional information on using the Wolftech app itself, see the Wolftech News documentation.
Wolftech Integration App As an administrator, you can now access the Wolftech Integration app to configure settings related to the Wolftech News back-end system. You can also use the Search Sync section to resynchronize Wolftech News entities or configuration changes with MediaCentral Search.
For additional information, see "Using the Wolftech Integration App" in the Avid MediaCentral | Cloud UX Installation Guide.
Upgrading to MediaCentral Cloud UX v2025.6 Upgrading to MediaCentral Cloud UX v2025.6 The following procedure can be used to upgrade an existing MediaCentral Cloud UX server or cluster. If you are performing a new installation, see the Avid MediaCentral | Cloud UX Installation Guide for detailed instructions.
If you are running a version of MediaCentral Cloud UX prior to v2024.10, you must upgrade your servers to the v2024.10 LTM release before upgrading to v2025.6. This requirement applies to both Platform and Feature Packs. For more information on that upgrade process, refer to the v2024.10 Avid MediaCentral | Cloud UX ReadMe for details.
Refer to the following processes to complete the upgrade:
(cluster-only) "Verifying the Primary Node" on the next page
- "Updating the Platform" on the next page
- If you have a cluster, you must complete this process on all nodes.
- This process uses the Feature Pack ISO. If you have a cluster, you must complete this process on the
primary node only.
- You must review this information for all upgrades.
The steps required to install this release on single-server configurations or clustered configurations are similar. Any variations for clustered systems are noted. If you are familiar with the process to install a new MediaCentral Cloud UX server, the upgrade process should look very familiar to you. As such, you can reference the Avid MediaCentral | Cloud UX Installation Guide for additional information on many of the topics referenced below.
Prior to beginning the upgrade, you must obtain the MediaCentral Cloud UX installation media. For more information, see "Avid MediaCentral Cloud UX Installation Media" on page 6.
Consult the MediaCentral Compatibility Matrix prior to upgrading any application or system to ensure that you understand the scope of the upgrade. In some cases, you might be required to upgrade additional components to maintain system compatibility.
Upgrading Multi-Site Environments The following upgrade process applies to both single and multi-site environments. There are no specific or custom steps required for a multi-site configuration. Prior to upgrading a multi-site environment, make sure that you have read and understood the site compatibility requirements. For more information, see "Upgrade Options for Multi-Site Environments" on page 4.
Partner Applications If you have installed any partner applications on your MediaCentral Cloud UX system, the enhancements made to this release might require you to reinstall these applications after you complete the upgrade. In some cases, you might also need to reconfigure some partner app settings. For more information, see http://developer.avid.com/cert/feature-pack-installation/docs-public/README.html.
Troubleshooting If you experience any issues with the MediaCentral Cloud UX user interface directly after upgrading your servers, you might try clearing the browser cache on your local workstation as an initial troubleshooting step.
Upgrading to MediaCentral Cloud UX v2025.6 Verifying the Primary Node The first three nodes in a MediaCentral Cloud UX cluster are considered Control Plane nodes. When you initially installed and configured the cluster, you were asked to define a “primary” Control Plane node.
When performing an upgrade, you must execute the process from the primary node.
If you are upgrading a single-server environment, you can bypass this process and proceed directly to "Updating the Platform" below.
To verify the primary node:
- (cluster only) Identify your “primary” node.
The primary node is the only node in the cluster that includes a service-host-inventory.json file at /etc. Select a node in your cluster and enter the following command to determine if the system configuration files are present on this node:
sudo ls /etc/ If you see the file listed, you've found the primary node. If you do not see the file, issue the command on each of your cluster nodes until you find the primary.
Updating the Platform This process uses the mediacentral_platform_<build>.bin file to upgrade the core packages on the MediaCentral Cloud UX server or cluster.
All steps in the following process apply to single-node configurations. If you are configured in a cluster, note the following:
- optional: Identifies an optional, but recommended step.
- node1: If you are running a cluster, this step must be completed on the primary node only.
- all: If you are running a cluster, this step must be completed on every control plane, and worker
node.
If you are running a single-server, review and complete each of the following steps.
The host-upgrade process requires outbound/inbound access to the internet to download and update various system packages. If your MediaCentral Cloud UX system does not have direct internet access, see the process for “Updating Servers - Proxy Method” in the Avid MediaCentral | Cloud UX Installation Guide to enable a path for these downloads.
To upgrade the Platform:
1. (optional, node1) Connect to your single-server or primary node to create a backup of your
MongoDB database.
This general best practices measure is recommended for all upgrade paths. If you want to complete this step, you only need to do this once from your single-server or primary node.
For more information, see “Backing up the Mongo Database” in the Avid MediaCentral | Cloud UX Installation Guide.
2. (node1) Drain the Kubernetes managed services from the system:
sudo avidctl node drain --all This process stops all active containers and temporarily prevents the system from scheduling new ones.
Upgrading to MediaCentral Cloud UX v2025.6
3. (all) Bring the node offline:
sudo avidctl node offline -D
4. (optional, all) Install Ubuntu Software Updates.
If you have not updated your Ubuntu server with the latest security patches and updates, you might want to take this opportunity to do so. For more information, see "Installing Ubuntu Software Updates" in the Avid MediaCentral | Cloud UX Installation Guide.
> **Note:** If you complete this step and if the Ubuntu software update process requires a reboot, you
must complete that reboot now. Following the reboot, do not bring the nodes back online.
5. (all) Copy the mediacentral_platform_<build>.bin file to your MediaCentral Cloud UX server.
For options, see "Copying Software to the MCUX Server" in the Avid MediaCentral | Cloud UX Installation Guide.
mediacentral_
6. (all) Before you can install the software, you must update the permissions on the
platform_<version>.bin file:
sudo chmod +x mediacentral_platform_<version>.bin
7. (all) Install the MediaCentral Cloud UX Platform software:
sudo ./mediacentral_platform_<version>.bin The system verifies the integrity of the archive and installs the updated packages.
8. (node1) Perform the host upgrade.
a. Enter one of the following commands to upgrade the Platform software on the server:
- If you have enabled password-less access on all nodes by completing the process for
"Logging in to Ubuntu for the First Time" in the Avid MediaCentral Cloud UX Install Guide, enter the following command:
sudo avidctl platform host-upgrade --ssh-user <user> Where <user> is the name of your Ubuntu user account.
- If you did not enable password-less access on all nodes, enter the following:
sudo avidctl platform host-upgrade --ask-become-pass --ssh-user <user> <user> Where is the name of your Ubuntu user account.
y (Y) n (N) b. At the upgrade verification prompt, enter to continue, or to exit the script.
c. The script prompts you for your SSH password.
Type your user password and press Enter (or Return on a Mac keyboard) to continue.
As shown in the following example, the script might attempt to restart some tasks during the upgrade process. These retries appear as failures in the script output, but this is normal and expected behavior.
TASK [kube-registry : Wait for Chart Repository] ************************* FAILED - RETRYING: Wait for Chart Repository (30 retries left).
FAILED - RETRYING: Wait for Chart Repository (29 retries left).
...
TASK [kube-registry : fail] ********************************************** skipping: [wavd-mcux01] Upgrading to MediaCentral Cloud UX v2025.6 After the upgrade process is complete, a message similar to the following is displayed (example from a three-node cluster):
PLAY RECAP ************************************************************ wavd-mcux01 : ok=277 changed=52 unreachable=0 failed=0 skipped=72 rescued=0 wavd-mcux02 : ok=225 changed=34 unreachable=0 failed=0 wavd-mcux03 : ok=225 changed=34 unreachable=0 failed=0 ------------------------- Log file: /var/log/service-host-upgrade-1537275725.log Review the results and verify that there are no failed tasks. If you see a failure, you must troubleshoot the issue before continuing with the MediaCentral Cloud UX installation process.
9. (all) If necessary, upgrade the Avid NEXIS Client on your MediaCentral Cloud UX servers.
For more information on that process, see "Installing the Avid NEXIS Client" in the Avid MediaCentral | Cloud UX Installation Guide.
10. (all) Reboot each node, in any order:
sudo reboot
11. (node1) Sign back in to Linux and uncordon the nodes:
sudo avidctl node uncordon --all
12. Wait a few minutes and then enter the following commands to obtain the status of the Kubernetes
nodes.
a. Enter the following command to obtain the status of the Kubernetes nodes:
sudo kubectl get nodes Each server in your MediaCentral Cloud UX configuration should be listed under the name column and the status of each node should report as Ready. The following example text shows a four node cluster configuration (example version numbers might not reflect the versions included in this release):
NAME STATUS ROLES AGE VERSION wavd-mcux01 Ready control-plane,etcd,master 10m v1.32.4+k3s1 wavd-mcux02 Ready control-plane,etcd,master 10m v1.32.4+k3s1 wavd-mcux03 Ready control-plane,etcd,master 10m v1.32.4+k3s1 wavd-mcux04 Ready <none> 10m v1.32.4+k3s1 b. If the previous command reports that all nodes are Ready, enter the following command to verify that the Kubernetes pods are running:
sudo kubectl --namespace kube-system get pods The command should report that each pod is Ready and Running as in the following example (from a single-server configuration):
NAME READY STATUS RESTARTS AGE coredns-5c6b6c5476-zrpvw 1/1 Running 0 30m metrics-server-7b67f64457-hq5wr 1/1 Running 0 30m Upgrading to MediaCentral Cloud UX v2025.6 c. Verify that the registry pods are ready and running:
sudo kubectl get po -n registry Example below from a single-server configuration:
NAME READY STATUS RESTARTS AGE registry-wftf2 2/2 Running 0 23h d. Verify that the cert-manager pods are ready and running:
sudo kubectl get po -n cert-manager Example below from a single-server configuration:
NAME READY STATUS RESTARTS AGE cert-manager-6664c2286c-88qgv 1/1 Running 2 (46h ago) 36m cert-manager-cainjector-5fffb-zxb68 1/1 Running 2 (46h ago) 36m cert-manager-webhook-74b58c8-d6cbk 1/1 Running 0 36m trust-manager-855b67d48c-fr58sk 1/1 Running 0 35m
> **Note:** The suffixes associated with the pod names are custom to each server and therefore will look
different on each system. For example, coredns will have a different suffix on your system.
All of the above should report Ready or Running prior to "Updating the Feature Packs" below.
13. (node1) Run new or updated configuration scripts as required.
If you are deploying a new feature as part of this upgrade, you might be required to run one or more configuration scripts to enable that feature. It is also possible that existing configuration scripts are updated with new required values for this release.
Consult the New Features section of this and all prior ReadMes that might have been released since installing your last version of MediaCentral Cloud UX to ensure that you are aware of all new features and installation requirements.
Updating the Feature Packs This process uses the Avid MediaCentral Cloud UX Feature Pack ISO to upgrade the feature packs on the MediaCentral Cloud UX server or cluster. If you have a cluster, this process is completed on the primary node only.
To upgrade the Feature Packs:
1. Use a terminal application to log in to your single-server or primary node.
2. Verify that your single-server or primary node has access to the feature pack ISO(s).
You might decide to copy the file(s) directly to the server, connect a portable USB drive to a physical server, or use another connection method. The installer must have access to the Feature release ISO at minimum.
3. Do one of the following to install the feature packs:
  - Deploy the updates included in this Feature release only:
sudo avidctl platform import /<path>/mediacentral_feature_packs_ <version>.iso
  - If you are following this process after downloading a patch for this feature pack, you can
deploy both ISOs with a single command:
Upgrading to MediaCentral Cloud UX v2025.6 sudo avidctl platform import /<path>/mediacentral_feature_packs_ <version>.iso /<path>/mediacentral_feature_packs_<version>.iso For example:
sudo avidctl platform import /media/mediacentral_feature_packs_ 2025.6.0.iso /media/mediacentral_feature_packs_2025.6.2.iso Patch releases are cumulative. If multiple patch releases are available at the point of installation, do not include each file name in the command. For example, the following would be an invalid command:
sudo avidctl platform import /media/mediacentral_feature_packs_ 2025.6.0.iso /media/mediacentral_feature_packs_2025.6.1.iso /media/mediacentral_feature_packs_2025.6.2.iso The import process automatically mounts and dismounts the ISO to your system.
Avid supports a maximum of two ISO imports at any one time. You cannot upgrade to an LTM release and a Feature release simultaneously.
4. Use the following command to deploy the features included in this release:
sudo avidctl platform deploy --skip-feature-pack-import -i The script checks the Kubernetes Config Store to verify the existence of the system configuration files. If the script finds the configuration files, it reports the status of each file [OK]. If the script cannot find the files, it alerts you to the situation and provides you with an opportunity to abort the installation and resolve the issue.
When you use the --skip-feature-pack-import switch, the script suppresses the "import features" prompt. You are not required to import the feature packs because that process was completed as part of step 3.
5. Next, you must determine which feature packs should be upgraded, installed, or removed.
The script prompts you with a series of yes or no questions. Each prompt is associated with a default value which is identified as a capital Y for yes or N for no. If the script determines that the feature pack is already installed, the default value is Y. If the feature pack is not installed, the default value is N. Do one of the following:
- Press the Enter key to accept the default value.
- Press Y (or y) to upgrade or install the feature pack.
- Press N (or n) to skip or uninstall this feature pack.
If your existing installation includes a feature pack that you no longer want to use, you can enter N at the prompt to remove the feature pack from your existing installation.
The feature pack installation process begins. Be patient as this process can take some time.
6. After the installation is complete, you can use the following command to verify that the required
feature packs have been installed:
sudo helm ls The command should report 2025.6.0-v0323-Gd3d4b50 as the App Version for all upgraded components.
Updating MediaCentral Search
7. (cluster-only, recommended) In some rare cases, Kafka might fail to create some topic replicas
after a system upgrade. Since this issue could affect any number of MediaCentral Cloud UX sub- systems, Avid recommends that you manually verify the replica status before you release the system back to a production-ready state. Enter the following command to check the replicas:
sudo aviddbctl kafka check-replicas
- If the script reports that all replicas are consistent, no additional action is required.
- If the script reports a warning that the "replica sets are not complete", do the following:
a. Wait appropriately 10 minutes to give the system an opportunity to correct the situation on its own.
b. Repeat the check-replicas command.
c. If the replicas are still inconsistent, enter the following to manually correct the situation:
sudo avidctl platform devtools search-reset d. Wait another 10 minutes, and repeat the check-replicas command to verify the status.
If you are still seeing inconsistent replicas, contact Avid Customer Care for assistance.
8. (recommended) Verify and if necessary, update your certificates.
As part of this upgrade process, Avid recommends that you verify the expiration dates of your deployed certificates. If you are nearing the certificate’s expiration date, you might want to take the opportunity to deploy a new certificate to avoid any potential connection issues for your users.
a. Verify your TLS certificate’s expiration date.
For more information, see “Verifying the SSL Certificate” and “Creating Certificate Files” in the Avid MediaCentral | Cloud UX Installation Guide.
b. Verify your Kubernetes certificate’s expiration date.
For more information, see “Understanding Kubernetes Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
9. Although already noted in the New Features section of this document, this step serves as an
additional reminder to assign service account to the Sync Agents in the Configuration Settings app, or that your Active Directory or OpenID Default Service User is configured with the correct permissions.
10. Continue to "Updating MediaCentral Search" below.
Updating MediaCentral Search After upgrading your MediaCentral Cloud UX system software, you might be required to rebuild your search index. However, the type of rebuild process might vary depending on the individual release or your upgrade path. The following list describes the different rebuild types:
- Data: The Search Index must be rebuilt, based on the data included in the MongoDB database.
When rebuilding the data, the existing index remains and any searches conducted during this time return valid results.
To complete this process, refer to “Rebuilding an Index” in the “Using the Search Index Monitor App” chapter of the Avid MediaCentral | Cloud UX Installation Guide. For a Data rebuild, you are not required to delete the existing data before rebuilding.
Updating MediaCentral Search Mapping: A Mapping rebuild first recreates the data definition of the index, and then populates it
- with new data. Effectively, a Mapping rebuild includes a Data rebuild. Whenever you are asked to
complete a Data rebuild, you could do a Mapping rebuild instead. The disadvantage of the Mapping rebuild is that the Search index is deleted and then re-created. If you execute a search during this rebuild, the Search app returns only partial results until the rebuild is complete.
To complete this process, refer to “Rebuilding an Index” in the “Using the Search Index Monitor App” chapter of the Avid MediaCentral | Cloud UX Installation Guide. For a Mapping rebuild, you must select the “Delete all existing data” option during the rebuild process.
- Phonetic: This process has no bearing on the text-based metadata. If you rebuild the phonetic
index, the text metadata index remains unaffected.
To complete this process, refer to “Resetting the Phonetic Metadata Search Index”, in the Avid MediaCentral | Cloud UX Installation Guide.
If you are working in a Multi-Site environment, the following processes apply to the local MediaCentral systems only. If you upgrade your local site to the latest release, you are not required to touch the remote sites as part of the upgrade process. Similarly, if you upgrade Site-A to the current release, and then upgrade Site-B at a later date, you are not required to revisit or Site-A unless otherwise noted below.
I am upgrading Required Rebuild Type to version 2023.12 Mapping 2024.2 No rebuild required for this release 2024.10 Mapping 2025.6 Mapping If you are adding MediaCentral Phonetic Index to your environment as part of this upgrade, Avid recommends that you complete the process for “Installing Nexidia Search Grid” in the Avid MediaCentral | Cloud UX Installation Guide before resetting the search index. Since the Phonetic Index configuration process requires you to reset your search index, you can avoid re-indexing the system twice by completing the Phonetic Index integration first.
Fixed in Version 2025.6.0 Fixed in Version 2025.6.0 The following issues have been resolved in MediaCentral Cloud UX v2025.6.0.
Asset Editor Bug Number: ASSETS-4693. The "Set as Thumbnail" feature fails to update the asset thumbnail.
Bug Number: ICI-5006, NEO-3786, NEO-3751. After upgrading to v2024.10, some assets appear offline in MediaCentral Cloud UX that are otherwise online in Media Composer and MediaCentral Production Management.
Bug Number: MX-9995. In the Transcript tab, when you apply a Search and switch to another transcript the Search results are not cleared.
Bug Number: MX-10046. The process creation dialog box cannot be opened from the Folder Actions plug- in.
Bug Number: MX-10076. When you open a master clip in the Asset Editor's Source Monitor and then a sequence in the Record Monitor, the "Asset is not supported" is shown for the master clip in the Transcript tab after switching back to the Source Monitor.
Bug Number: MX-10081. When you open a master clip with a partially failed transcript in the Transcript tab, the Transcript tab grid is blinking.
Bug Number: MX-10156. The Metadata tab does not update values in floating-point fields correctly if the Chrome browser (Windows) or your operating system (macOS) is configured to use a language other than English. For example, the period character ( . ) might be incorrectly converted to a comma ( , ) after exiting from edit mode.
Bug Number: NEO-2402, JP-8648. When you open the Save To drop-down list of the Create Subclip dialog box, the default folder defined in the User Settings is not selected but the focus is set to the bottom of the list. You can scroll upwards but when you start scrolling downwards, the focus jumps back to the bottom of the drop-down list.
Bug Number: NEO-2966. If you load an asset into the Asset Editor, change the IN and OUT marks on that asset, load a different asset into the Asset Editor, and then drag the original asset from the Browse app to the Sequence Timeline, the edit does not respect the updated IN and OUT marks.
Bug Number: NEO-3350. The Asset Editor Monitor does not correctly display AVC-Intra 50 960 x 720p 59.94 (thin raster) assets correctly. Assets appear vertically stretched which then crops the top and bottom of the image.
Bug Number: NEO-3433. After overriding the default audio track patching on a News Sequence, editing segments effected by those patch changes into a new sequence might result in low in inaudible audio.
Fixed in Version 2025.6.0 Bug Number: NEO-3682. You cannot use the JKL keys to control playback with Caps Lock enabled on your keyboard.
Bug Number: NEO-3766. When the playback pods start, the system performs a permissions check on /cache and its sub-directories. This check can result in extended initialization time for the playback pods, and a delay in returning the system to a production-ready state.
This fix optimizes that process and builds on changes made for Hoverscrub in v2024.10.3.
Bug Number: PLAD-914. Due to a payload size limitation in avid-upstream, you might encounter a “Save Failed” error when attempting to save sequences that include a large amount of data. This issue is exacerbated by sequences that include group clips.
This release updates the payload size from 1.5MB to 64MB to reduce the likelihood of encountering this issue. However, limitations still apply. See “Sequence Size and Complexity” in the Avid MediaCentral | Cloud UX User’s Guide for additional details.
Bug Number: PLAD-941. If you enable the "Allow folder selection" option in the Configuration Settings app (Modules > Newsroom Management), the Asset Editor Metadata tab might display an "Asset is not loaded" message after opening a sequence.
Bug Number: PLAD-942. If the connection to MediaCentral Production Index becomes stale, the avid-qmfi- worker might become unresponsive to new playback requests as it processes the backlog of playback requests that built up during the offline period. As the worker processes this backlog of stale requests, new requests are not prioritized which can lead to a spinning Loading Asset message in the Media Viewer.
Equipment© Bug Number: PLAD-944. Assets that are created by EVS Broadcast might include information in the data structure that makes the clips appear offline in MediaCentral Cloud UX when Dynamic Relink is enabled.
Bug Number: PLAD-945. Playback can be delayed for several seconds after signing in to MediaCentral Cloud UX and loading an initial asset for playback.
Avid Ada Transcribe Bug Number: SYN-1273. Transcribe jobs might fail with a “504 Gateway timeout” error when there is increased demand on the service.
Bug Number: SYN-1479. Segmented master clips (master clips that are associated with multiple individual files on storage) might fail the transcribe process.
AWS S3 Storage Connector Bug Number: MAM-20860. Buckets in different regions are not handled properly.
Bookmark App Bug Number: AL-3039. The Bookmark app does not auto-correct or block the addition of a bookmark that includes ../ in the URL.
Fixed in Version 2025.6.0 After installing this update, the Bookmark app will read escape and Unicode sequences (%2e, %252e, %c0%ae, %uff0e) and that represent a period and convert them into a simple period character.
Additionally, the app will filter out any two sequential periods when saving the bookmark.
Browse App Bug Number: JP-9270. After renaming a reserved Production Management asset, you cannot select (click) or navigate back to this asset.
Bug Number: JP-9370. You can only create a subclip via drag and drop to a folder's Results area if you drop to an empty area in the folder.
Bug Number: JP-9407. If you attempt to rename a top-level folder (such as Projects, or Catalogs) in the Production Management database, the Browse app becomes unresponsive because it is unable to handle this illegal request.
Hoverscrub Bug Number: PLAD-952. Hoverscrub and the MediaCentral player were configured to have different levels of permissions to the storage cache, resulting in access problems when both services attempt to access the storage at the same time.
In this release, Hoverscrub updates the file permissions on start-up. Depending on the number of files in the storage, this initial permissions update could affect Hoverscrub's ability to process new proxies. After the permissions have been reset, Hoverscrub functionality should return to normal.
Installation and Configuration Bug Number: PRS-435. You cannot login to Grafana (part of System Monitoring) if you include a comma or potentially other special characters in any individual Bind Name value during the process of running the authentication provider script.
Bug Number: ASSETS-4692, PRS-3518. If you attempt to deploy both the Production Management and Archive Production feature packs, the Production Management deployment process fails as it cannot create the required Kafka topics. When this happens, you might see messages similar to the following in the log:
[ERROR] [ERROR] cannot install chart 'platform-pam-2024.10.0': 3 errors occurred:
* kafkatopics.kafka.strimzi.io "avid-pam-ctc-commands-<value>" already exists Bug Number: PRS-3538, PRS-3540. After installing Ubuntu kernel v5.15.0-133-generic through v5.15.0- 139-generic, you are unable to install or upgrade the MediaCentral Cloud UX feature packs.
For example, after accepting the default path for the feature pack mount in the avidctl platform deploy command, the script hangs — which prevents the feature pack installation.
Update: This issue has been addressed by Ubuntu in kernel v5.15.0-140-generic.
Bug Number: PRS-3561. The avidctl platform config auth oidc script omits an important value which results in the incorrect configuration of OpenID-based authentication providers.
Fixed in Version 2025.6.0 Media Composer Distributed Processing Status App Bug Number: IPI-3780. The avid-mediaengine-coordinator-dp service might hang and cause Avid Ada Transcribe jobs to hang or fail.
MediaCentral Acquire Bug Number: CCUX-10437. When a recording is scheduled, an automatic pre-roll time is added. As a result, you cannot select the time slot immediately before a future recording in the Channels View to schedule a new recording.
Bug Number: CCUX-10664. The router control sources in the New Recording schedule list were previously displayed in a random order, making them inconsistent with the alphabetical order in the grid.
Bug Number: CCUX-10710. The source selector in the recording editor is now enabled for ongoing recordings, allowing users to change the source during the recording process.
Bug Number: CCUX-10843. Acquire occasionally fails to check in growing clips from Avid Stream IO during recording, though check-in completes after the recording is completed.
Bug Number: CCUX-10878. The source of an ongoing recording now updates correctly in the Recording Details view. Previously, changes made during an active recording were not saved.
Bug Number: CCUX-10900. Changing the source in the Recording Editor during an ongoing recording in Acquire has no effect. The original source remains active, and the updated selection is not applied.
Bug Number: CCUX-10907. The Blackmagic 288 router using API version 2.7 is not compatible with the Router Control module due to differences in end-of-line character handling in commands.
Bug Number: CCUX-10951. The Acquire Settings Form Builder now prevents users from enabling both the Mandatory and Read-only options at the same time. Enabling Read-only automatically disables the Mandatory option.
Bug Number: ASSETS-4673. Acquire ingest might fail with a 'User Not Found 404' error if the user name contains special characters.
MediaCentral Panel for 3rd Party Creative Tools Bug Number: PLAD-981, AL-3705. After upgrading to MediaCentral Cloud UX 2024.10.5 through 2024.10.7, the process of importing an asset through the Panel might fail with a Media Offline message. If you attempt to manually relink this asset, you might notice that the File Path includes "Unavailable" in the path.
MediaCentral Sync Bug Number: AL-3470. If you re-sort the Sync Tasks - Overview tab by the Last Synchronized column, the contents of the tab become hidden from view.
Fixed in Version 2025.6.0 Bug Number: ICI-4932, IPI-3733. After a successful MediaCentral Sync job, the File Path (File Locations tab) in Interplay Access might show the source file path and not the correct path for the destination system.
Bug Number: IPI-3728. During normal operation, the number of files that are "not found" during the Remote Media Sync step can increase over times. This increasing counter can cause the related Sync tasks to take more time than should be necessary.
Multi-Site Bug Number: PLAD-932. If you configure the User Mapping options in the Multi-Site Settings app to "Any > Map by Name", then each connected user consumes a license on both the local and remote site. This issue breaks the original design in which a license is consumed on the local site only.
Bug Number: MTTO-4678. If you are working in a Multi-Site environment and the issuer value in your Site Key on Site-A includes a trailing slash (https://bos-mcux.wavd.com/), but the same issuer value in Site-B does not (https://bos-mcux.wavd.com), the site might not connect correctly.
This bug resolves this issue by automatically truncating the trailing slash to ensure compatibility. If you are connecting to a remote site that is running an earlier version of MediaCentral Cloud UX and you have mismatching issuer names, you must resolve the issue manually on the remote site to ensure that the issuer values match. For more information on this topic, see "Creating a Site Key" in the Avid MediaCentral | Cloud UX Installation Guide.
Platform GCP Storage Connector Bug Number: MAM-20967. Multi-part upload to GCP was not used by the Platform GCP Connector.
Bug Number: MAM-20947. The Platform GCP Connector transfer to GCP fails for files greater than 15 MB in case of multi-part upload.
Bug Number: MAM-20767. The setting that defines the number of parallel jobs does not work properly.
Bug Number: MAM-20788. When transferring larger files to the GCP bucket, the service in the Platform GCP Storage Connector pod shows issues and the transfer job fails.
Process App Bug Number: RCTR-3019. Downloading the list of displayed processes fails if the Priority or Ranking column or both are shown in the Process app.
Process Modeler App Bug Number: MAM-20797. The content of sub-processes is erased when trying to modify an existing XPDL.
Publisher App Bug Number: BSI-35499, ICI-4984. The final output of assets that are published with preroll or postroll effects do not include the preroll or postroll data.
Fixed in Version 2025.6.0 Initially documented as a limitation in v2024.10.2, this issue was actually the result of a configuration error in which the job had Decorators disabled. This prevented the preroll or postroll effects from appearing in the final output.
Rules Editor App Bug Number: MAM-20932. Conditions: When you change an attribute in a previously saved and correctly specified condition, a warning about a missing value for the attribute appears.
Bug Number: MAM-20688. Action details: The Details area does not show a scroll bar when the number of Action properties exceeds the visible space; therefore, not all properties might be shown.
Bug Number: MAM-20707. Rules for Asset Management assets without a specific object class selected are not marked as invalid.
Rundown App Bug Number: MA-6681, Previously, attempts to reorder segments containing Maestro GFX machine instructions caused the order of the graphics to be altered in the sequence, sometimes moving them to non-corresponding segments, and resulting in a gap appearing within segments in the sequence.
Bug Number: MA-7055, MA-7161. Previously, when a user clicked to create a sequence in an existing story and immediately moves to another story, the sequence was sometimes created without association to any story or was incorrectly associated to the wrong story.
Bug Number: MA-7182. Previously, pasting text into a segment with closed-captioning (CC) text, and then making that pasted text also CC would not properly update the segment duration.
Bug Number: MA-7185. Previously, the Float style for aired/on-air stories was not displayed while printing the queue view.
Bug Number: MA-7259. Previously, attempts to reorder Traco production cues within a news story, via drag-and-drop, sometimes resulted in the erroneous removal (or deletion) of all production cues in the story.
Bug Number: MA-7260. Previously, the Sequence icon would intermittently disappear after a user began creating sequences in a story.
Bug Number: MA-7268. Previously, editing text in a news story with Traco production cues could cause a communication issue between Cloud UX and MOS Pilot that resulted in Chrome crashing.
Bug Number: MA-7273. Previously, when copying and pasting from "Pages" on a MAC or from "Google Docs" to a news story, the system would fail to correctly save spaces and carriage returns (Enter).
Bug Number: MA-7326. Previously, removing content from an auto-calculated timing field and exiting that field, via Esc or Shift+Tab, would not clear the field's UEC trait as expected. It only worked when pressing the Enter key.
Fixed in Version 2025.6.0 Bug Number: MA-7338. After upgrading to a previous version, some users experienced a drop in playback performance when using the Rundown app, specifically with regards to a decrease in frames per second (FPS) while playing clips. This version improves calculation efficiency for better playback performance, but may not fully resolve FPS drops.
Bug Number: MA-7339. Previously, users received a "Cannot load queue form for <queue name>" error when loading a rundown. This was caused when the queue form had a production cue in SYSTEM.FORMS.
Bug Number: NEO-2403, NEO-3726. When creating a News Sequence attached to an iNEWS story in the Rundown App, the system displays an erroneous Story/Sequence Mismatch warning after you click the Create Sequence button.
Search App Bug Number: IPI-3825. The MediaCentral Search Connector is unable to connect to the Production Management Archive Engine. The system responds with a "Failed to open the database (The database is not active)" error as it attempts to connect to the Production Management Archive database.
Bug Number: JP-9511. Favorite and Recent searches that include a Production Management taxonomy value display a Loading Failed message in the search pill when the favorite / recent search is selected.
Bug Number: PLUS-1867. The Production Management Search Connector might fail to connect if your MediaCentral Cloud UX system is configured for an OpenID authentication provider, such as Okta.
> **Note:** To enable this fix, you must also install and use the Production Client v2024.10.2 or later.
Bug Number: PLUS-1868. The Production Management Search Connector does not automatically reconnect to Production Management if the Production Management Engine is offline for an extended period of time. For example, any period longer than a restart of the Engine.
Bug Number: RCTR-2899. If you create a search using the question mark ( ? ) wildcard character, the Inline Hits window fails to highlight the exact match hits.
Bug Number: RCTR-2972. If you enable the Hits column in the Search app’s Display Options menu, the Inline-Hits window fails to display any information in Timeline View.
Bug Number: RCTR-2977. If you complete a search for assets that have been transcribed through Avid Ada Transcribe and then you drag a segment of that asset from the Inline-Hits window to the sequence timeline, the process adds the entire asset to the sequence and not the segment-only as expected.
System Bug Number: ASSETS-4532, ASSETS-4580. It is possible that the pam-ctc service can stop communicating with the Production Management Engine. When this happens, the Production Management database might disappear from apps such as Browse or Search.
Limitations and Defects Found in Version 2025.6.0 Bug Number: ASSETS-4661. The avid-thumbnail-cache service pod appears red in the Kubernetes Dashboard if your system is not configured with either a Production Management or Asset Management system.
Bug Number: JP-9442. The area allocated to the Fast Bar (or above the Fast Bar) might appear 2-3x larger in height than normal.
Bug Number: MAM-20666. If the Media Analytics Gateway cannot contact a provider service such as Avid seconds). This disruption in connectivity can cause jobs to either fail or succeed with unusable (corrupted) results.
Bug Number: PLAD-933. A permissions issue might block the ability to add custom icons to the server, as described in the process for "Adding Custom Icons" in the Avid MediaCentral | Cloud UX Install Guide.
Bug Number: PRS-1662, MTTO-4625. 3rd party applications that use Avid Platform Connector API for .Net v3.12.2 are blocked from connecting to the Platform. MediaCentral Cloud UX 2024.10 introduced a change to the MediaCentral Gateway certificate to prevent it from expiring. This change is the source of the downstream API connection issue.
While the messages are accurate, they can be ignored if they apply to the no-replica node. The automated scaling rules are not designed to accommodate no-replica nodes in this release and therefore the messages are expected.
Bug Number: PRS-3229. The avidctl platform host-setup script might fail to execute properly when configuring a cluster if it encounters one or more cluster nodes that are not in alpha-numeric order.
For example, you could create a cluster with nodes wavd-mcux02, wavd-mcux03, and wavd-mcux04.
However if you tried to expand the cluster by adding a wavd-mcux01 worker node, the script fails.
Bug Number: PRS-3270. If you add a no-replica node to your MediaCentral Cloud UX cluster, you might see avid-upstream pods (one per no-replica node) in Kubernetes that report an "untolerated taint" or non- matching anti-affinity rules.
Bug Number: PRS-3346. Following an upgrade to v2024.10, the user interface might not display the most recent updates to certain apps.
Bug Number: PRS-3639, PRS-3646. Addresses a potential vulnerability, as described in CVE-2025-1974.
User Management Bug Number: ICS-10372. The process of importing groups into the User Management app might result in a "Groups selection is not available with the configured identity provider" error for organizations with very large Active Directory structures.
Limitations and Defects Found in Version 2025.6.0 This section includes information on known limitations and defects related to MediaCentral Cloud UX.
Limitations and Defects Found in Version 2025.6.0 Action Monitor Bug Number: MAM-21127. The Action Monitor reads outstanding Kafka messages into memory before processing, which is currently unbounded. This may cause the service to crash with OutOfMemory errors.
Asset Editor Bug Number: MAESTRO-7333. The Graphics tab continues to display some aspects of the user interface in Dark mode after switching the appearance in the User Settings to Light mode.
Bug Number: NEO-3807. If you play an asset and then drag the clip from the Media Viewer to another area of the user interface, a large “ghosted” version of the frame is shown during the drag operation.
Workaround: If you click anywhere the Viewer Timeline before dragging the asset, the smaller thumbnail image is displayed as designed.
Bug Number: NEO-3909. If you create a new News sequence and your connection to the server is lost (network disconnect, browser crash, or other), then the sequence cannot be recovered when the connection is reestablished.
This issue applies to new News sequences only. If you are disconnected when editing an existing saved sequence, you are prompted to recover the sequence as expected.
Bug Number: NEO-3915. If you reload a Sequence or a News sequence after recording a new voiceover, the asset appears red in the Sequence Timeline if you enable the Show Media Status feature.
Workaround: Reload the page in your browser, or sign out and sign back into MediaCentral Cloud UX to display the correct media status.
Bug Number: NEO-3919. If you are viewing the Thumbnails layer of the Storyboard tab for an EWC (Edit While Capture) asset, the tab does not display all of the expected thumbnails when the capture is complete.
Workaround: Reload the asset from the Media Viewer to update the thumbnail images in the Storyboard tab.
Bug Number: NEO-3920. If you drag and drop two or more markers from the Storyboard tab to the Sequence Timeline, only one of the selected makers is added to the sequence.
Bug Number: JP-9672. The introduction of Light and Dark mode options altered the color associated with proxy-only media. After enabling the Media Status feature in the Sequence Timeline, proxy-only media appears as a shade of orange which can be confused with the shade of orange used for Archive media.
MediaCentral Acquire Bug Number: CCUX-11006. Starting an instant recording immediately after switching to an invalid source, then quickly switching to a valid source, may cause the recording to fail. The channel remains locked in an "ongoing recording" state and may require manual release via the ingest device console. This issue occurs when the invalid source is active at the moment the recording begins.
Limitations and Defects Found in Version 2025.6.0 Bug Number: CCUX-7417. In some cases, when a recording check-in fails, the check-in icon may still display a successful status while the overall recording status shows an error.
Bug Number: CCUX-11038. When the timeline zoom is set to 5 or 30 minutes, drag-and-drop resizing of recordings does not function as expected.
Workaround: To adjust the duration, either edit the recording directly or change the zoom level.
Rules Editor / Rules Engine Bug Number: MAM-21104. Change events for Asset Management EDLs are not processed.
Search App Bug Number: RCTR-2870. The Search app’s Search Type menu includes an Ada Summary Status value.
This feature is not currently available and is included only as a placeholder for potential future feature development.
System Bug Number: PRS-3541. Avid Ada Transcribe jobs might fail due to an oversubscription of system resources - most specifically SeaweedFS. When this issue occurs, you might see a “pq: cannot execute INSERT in a read-only transaction“ message written to the seaweedfs-filer pod log.
Workaround: Restart the seaweedfs-filer pod(s) through Kubernetes and wait for the pod(s) to be recreated before attempting to transcribe new assets.
If the issue persists, contact Avid Customer Care for further assistance.
Bug Number: PRS-3682. The endpoint security system, CrowdStrike Falcon, has a known compatibility issue with the version of Kubernetes that is bundled with MediaCentral Cloud UX v2025.6. When Kubernetes attempts to delete a pod as part of its normal operation, the action can crash the Kubernetes infrastructure — leaving the system in an unusable state. This issue does not apply to prior versions of MediaCentral Cloud UX.
Workaround: If your organization uses CrowdStrike, you can create a temporary exclusion in your CrowdStrike system to prevent the agent from taking any action in the /var/lib/rancher/k3s/ directory.
Avid provides the following instructions to mitigate this issue. If the following does not apply to your instance of CrowdStrike, contact CrowdStrike directly for additional assistance.
To create an exclusion:
1. Go to the CrowdStrike Console and navigate to: Endpoint Security > Exclusions.
2. Select the Sensor Visibility Exclusions tab, and click Create Exclusion.
3. Select the group where you want to apply this exclusion.
4. In the Exclusion Pattern field, enter: /var/lib/rancher/k3s/**
5. Select the " Apply to all descendant processes" check box.
6. Click Save to apply the exclusion.
This process should be considered as a temporary mitigation that must be reverted following a permanent fix to the CrowdStrike Falcon sensor.
Limitations and Defects Found in Earlier Versions Wolftech App Bug Number: JP-9661. Changing the color scheme (Light or Dark) in the User Settings does not effect the Wolftech app if it is closed.
Workaround: First open the Wolftech app first, and then change the User Settings to update the app’s color scheme.
Limitations and Defects Found in Earlier Versions Limitations and defects in are organized in the following sections:
Limitations and Defects Found in Version 2024.10.0 This section includes information on known limitations and defects related to MediaCentral Cloud UX.
Limitations and Defects Found in Earlier Versions Asset Editor Bug Number: ICI-4899. If you create a sequence in Media Composer that has assets edited into 3 or more audio tracks and the tracks do not include any overlapping audio, you might not hear playback of tracks 3 or later when played in MediaCentral Cloud UX.
or 2, and then check the sequence back into Production Management.
Bug Number: NEO-3127. When using the controls in a Dip to Color Controls effect to define a new color, you cannot change the color with the slider bar.
Workaround: Click anywhere inside the palette area above the slider, and then adjust the color value with the slider bar.
Bug Number: NEO-3447. If you enable the Show Audio Waveforms option in the Sequence Timeline and then start playback of the sequence before the waveform has finished drawing, it might not continue drawing when you stop playback.
Workaround: Reload the sequence to allow the Asset Editor to complete the waveform generation process.
Bug Number: SYN-1267. If you create a Sequence with two video tracks and V2 starts with Filler and then a transition effect to the first video segment, that Sequence will fail the STP process.
Workaround: Create a V3 track and either add a new segment to it, or move any segment from V2 to V3.
Browse App Bug Number: JP-9305. If the system detects that a new asset has been added to the folder that you are currently viewing, the Results area of the Browse app might jump back to the first page of assets after scrolling down to a second page (Card View only).
Workaround: If the app returns to the first page of results, scroll back down to your desired asset.
Installation and Configuration Bug Number: PRS-4124. Although the avidctl platform host-setup script disables the unattended-upgrades service, Ubuntu can still install system upgrades without administrative approval.
Workaround: To fully disable Ubuntu's auto-update capability, complete the following steps.
1. Stop and diable apt-daily.timer:
sudo systemctl stop apt-daily.timer sudo systemctl disable apt-daily.timer
2. Stop and disable apt-daily-upgrade.timer:
sudo systemctl stop apt-daily-upgrade.timer sudo systemctl disable apt-daily-upgrade.timer Limitations and Defects Found in Earlier Versions value is replaced with a zero in the following lines:
APT::Periodic::Update-Package-Lists "0"; APT::Periodic::Unattended-Upgrade "0"; MediaCentral Acquire Bug Number: CCUX-10376. When failover to spare channel is configured, and the first device stops working during a recording (e.g., due to connection or power issues), the recording will fail over to the second device, but the original recording on device 1 does not finalize.
Workaround: To complete the recording process, request the transfer for the first device again.
MediaCentral Sync For additional limitations, see the Avid MediaCentral | Production Management ReadMe.
Bug Number: SYN-985. If you configure the User Mapping in the Multi-Site Settings app to use a standard user account (non-admin), MediaCentral Sync might not allow you to configure the Target DB Path or the Target Workspace when creating or editing Sync Tasks.
Limitations and Defects Found in Version 2024.2.0 This section includes information on known limitations and defects related to MediaCentral Cloud UX.
Asset Editor Bug Number: NEO-2813. After a prolonged period of editing and viewing Maestro graphic templates, you might experience slowness when viewing Maestro graphic previews in the player viewer. Issue relates to Avid Maestro ticket number: MAESTRO-7246.
Workaround: To increase system performance, Avid recommends as best practice to create all templates with a preview frame set. This might require you to recreate any existing graphic templates that do not include a preview frame.
If you are experiencing this issue and need a fast (but temporary) solution, you can delete the playback pod to restore responsiveness. For detailed instructions, see "Working with Kubernetes" in the Avid MediaCentral | Cloud UX Installation Guide.
Bug Number: NEO-3159. If you load an Asset Management document asset that includes a Preview into the Asset Editor, and then you load a different document asset that does not include a Preview, the original asset's preview continues to be displayed in the Media Viewer.
Bug Number: NEO-3164. If you load a group clip from a shotlist into the Media Viewer, via double-click or the 'Load Clip' item in the context menu, the correct angle might not be shown.
Search App Bug Number: JP-9003. When downloading search results as a PDF, the content of the PDF might appear corrupted if your User Settings are configured for a language other than English.
Limitations and Defects Found in Earlier Versions System Bug Number: ICI-4652. If you configure and deploy Avid NEXIS API Services, the Avid NEXIS system might not appear in the Browse and Search apps in some rare cases.
Workaround: If your Avid NEXIS storage is unavailable, do the following:
1. Enter the following command on your single server or primary cluster node to determine the status
of the Kubernetes Persistent Volume Claim:
sudo kubectl get pvc media-share If the response indicates that the media-share pod has a status of Terminating, then you might be encountering this issue.
2. Contact Avid Customer Care for additional instructions on how to resolve this issue.
Limitations and Defects Found in Version 2023.12.0 This section includes information on known limitations and defects related to MediaCentral Cloud UX.
Asset Editor Bug Number: MAESTRO-7206. If you load a graphic assets into the Asset Editor and then load a new graphic into the Asset Editor from the Rundown app, the Metadata tab does not update. It continues to display metadata for the original asset.
Bug Number: NEO-2358. Depending on your cursor position or selection, the Variable Speed Playback settings in the Workflow Settings app might not always interpret the use of a decimal point correctly.
Workaround: If you cannot enter your desired value, use the arrows to adjust the playback speed.
Bug Number: NEO-2654. The Trim Tail command is mistakenly available when parked on the last frame of the last segment in a sequence.
Bug Number: NEO-2927. If you are disconnected from your session while editing a news sequence, the Sequence Timeline might not render correctly after selecting the Recovered sequence. Track labels (VIDEO, NAT, SOT, VO) might disappear, and the Recovered and Saved buttons might stop to function normally.
Workaround: You can restore the track labels by signing out and back in to MediaCentral Cloud UX. In this case the recovered sequence might not be restored correctly. However if the sequence was saved even once before the disconnect, this issue is not reproducible.
Bug Number: NEO-2950. When adding an End at Cut video dissolve to the last segment of a sequence, the video does not fade completely to black.
Bug Number: NEO-2967. You cannot use the keyboard to enter some values in the Output Reference Level section of the Video/Audio User Settings.
Workaround: If you cannot enter your desired value, use the arrows to adjust the level.
Bug Number: NEO-3009. If you attempt a replace edit, it will not respect track mappings.
Limitations and Defects Found in Earlier Versions For example, if you map Source V1 to Destination V2 and attempt to replace the segment in V2, the Source does not follow the track mapping, and the Replace puts the source material onto Track V1. The same holds true for audio tracks. All replace edits use the source material’s tracks, and do not follow the track mapping.
Workaround: Mark an IN and OUT point on the source asset that matches the duration of the destination segment that you want to “replace”. But, instead of selecting Replace, select Overwrite.
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
<ESC> :wq
3. Save and exit the vi session. Press and type:
4. Return to the process for "Updating the Platform" on page 37, and repeat the avidctl platform host-
upgrade step.
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
User Management / Licensing The following do not currently support integration with OpenID providers, such as Okta:
- Avid MediaCentral | Panel for Media Composer
- Publisher
Bug Number: ICI-4568. Users might be redirected back to the MediaCentral Cloud UX welcome page after an attempted sign-in. This might occur in a MediaCentral Cloud UX system that is configured to authorize against an IDP provider, and the user's user group is not assigned a license in the License app.
The expected behavior is that the system displays an error message that alters the user to the missing license.
Limitations and Defects Found in Version 2023.7.0 MediaCentral Sync Bug Number: SAK-2586. After completing a Sync, some assets might appear online in the Target database. In some cases the media might not actually be available on the target storage for these online assets.
Workaround: After completing a Sync task, perform an Update From Media Indexer on the synchronized destination folders in Interplay Access to verify the correct status of all sync’ed assets.
Phonetic Index Bug Number: ICI-4980. The MediaCentral Production Management Search Connector is limited to indexing 1, 2, or 4 audio tracks. This excludes a three track configuration, or any configuration that includes five or more tracks. This is contrary to the 1 – 64 track options as described in the “Reviewing the Phonetic Indexing Tab” section of the Avid MediaCentral | Cloud UX Installation Guide.
Limitations and Defects Found in Earlier Versions Avid continues to support the configuration of multiple layouts. For example, you could configure the system to index tracks 1-6 by configuring three layouts for tracks [1, 2] and [3, 4] and [5, 6]. Or alternatively configuring two layouts: one for tracks [1, 2] and another for tracks [3, 4, 5, 6]. In contrast, the creation of a single layout that includes only tracks [1, 2, 3] would not be supported.
Publisher App The Publisher app does not currently support integration with OpenID providers, such as Okta.
Rundown App The show timing clocks in the Rundown App only work with the real workstation time, not when timing to duration, or if someone uses the Set Clock option at an iNEWS Workstation to manually alter the time prior to the on-air timing of a show.
Limitations and Defects Found in Version 2023.3.0 Asset Editor Bug Number: NEO-1961. If your server's host name starts with an a, b, c, d, e, or f, the Asset Editor displays the following error message when attempting to play an asset: Player Error : 1102 "<hostname>" is not valid hostname.
Workaround: You can resolve this issue by editing two configuration files:
1. From your single-server or primary cluster node, open the following configuration file:
sudo vi /mnt/gluster-cache/playback-etc/playback/etc/sysconfig/avid- common-params
2. Locate the following line and change the FQDN value to the IP address of your single server or
virtual cluster host name:
# Injecting AVID_ to AVID_ export AVID_CLUSTER_HOSTNAME= <ESC> :wq
3. Save and exit the vi session. Press and type:
4. Repeat the above process for the avid-common-params located at /mnt/gluster-cache/playback-
etc/render/etc/sysconfig/ Bug Number: NEO-2465. When you load a complex sequence that includes Burn-In timecode, you might notice that the Media Viewer’s Clip timecode does not match the burn-in timecode. This issue is expected as the player does not load all clip metadata when opening the sequence to expedite load times. Clip timecode for an included subclip is not computed until it is directly loaded into the player.
Workaround: Complete a Mach Frame on the sequence to load the original asset. When you switch the Media Viewer back to the Record monitor, the Clip TC matches the burn-in TC.
MediaCentral Acquire Bug Number: CCUX-7207. Acquire recordings fail to create a proxy when using Telestream Vantage as the default Asset Management transcoder.
Limitations and Defects Found in Earlier Versions Bug Number: CCUX-7098. In the Acquire app, when you try to schedule a record, or start a hot record, you will see the record flash onto the timeline, but then disappear and nothing happens (no recording), and no errors will be seen. This seems to happen when workspaces are full.
Bug Number: CCUX-7039. MediaCentral Cloud UX does not support EWC (Edit While Capture) of incoming MediaCentral Stream OP1a files. You must wait for the asset to be complete before you can play, STP, or edit the asset.
Bug Number: CCUX-4948. Scheduling repeating recording series that cross the autumn DST, switches the recording +1 hour ahead in DST.
User Management Bug Number: PLAD-834. If a user opens two MediaCentral Cloud UX sessions in the same browser (one in a standard tab, and another in an Incognito tab) and then the user signs out of the session in the standard tab, the session in the Incognito remains connected. If an administrator applied a Quota to the user group, the quota count is decreased by one — even though the user is still connected through the Incognito session. This unsupported workflow might allow users to exceed the Quota value.
Bug Number: PLAD-827. Disabling the Process app for a user group does not remove the app from the MediaCentral Cloud UX user interface.
Limitations and Defects Found in Version 2022.12.0 Asset Editor Bug Number: NEO-1872. If you use a sequence as a source that has custom audio level adjustments, those level changes are not retained when you edit the asset into a new sequence.
MediaCentral Acquire Bug Number: CCUX-6591. Depending on dividers, some shortcuts (e.g., dash “-”, dot “.” and underscore “_”) may not work for FastServe recordings.
Bug Number: CCUX-6588. Recording will fail to resume when FastServe Ingest restarts OVS using the web settings page. You need to restart Clip Manager to be able to record again with Acquire.
Bug Number: CCUX-6519. There is no check-in in Acquire after 10 hours of work with auto-tool.
Bug Number: CCUX-6454. When you change the Name or the Comment when working on a failovered MediaCentral | Stream, the recording is not updated with the information you entered.
Bug Number: CCUX-6271. In the Acquire Admin app, when you select the Production Management WebServices, tab, you cannot see tooltip when inputting incorrect data for the IP address and port number.
Bug Number: CCUX-5358. In the Event Log Panel, the entry for minutes (of the Search range) is blocked if the value is incorrect (date / time component issues).
Limitations and Defects Found in Earlier Versions Bug Number: CCUX-5373. In the Acquire Admin app, when you select the Channels Configuration tab, the order of values displayed in the Crosspoints field is now sorted by Output number in ascending order.
Bug Number: CCUX-5372. In the Acquire Admin app, the user can make changes in the application without saving, and then come back to the Acquire Admin App and the app is “reopened” in the place and validation state the user left it. And the Save button is available giving the possibility to misconfigure the application and lead to problems using the Acquire app.
Bug Number: CCUX-5176. In the Acquire Admin app, Scheduling options, the user can define default durations longer then the Maximum duration.
Bug Number: CCUX-6592. There is an issue where sometimes the finished MediaCentral Stream Recording does not get checked in.
Bug Number: CCUX-6589. The colors of FastServe Ingest recordings are different on different zoom selections. The color of the recording should be the same for each zoom selection.
Bug Number: CCUX-6556. In the Recording Details | New window, the End date selector is blocked if the Duration is 00:00:00 and the end time is invalid (CET > CEST).
Bug Number: CCUX-6650. You are able to open the Recording Details | Edit window for a past recording by Alt + clicking on the past recording.
Bug Number: CCUX-6605. Helpers no longer work with Feature Pack 590. As provided, the following helpers should show certain criteria when used as a clip name:
$t $T $d $D $w $W $s $S MediaCentral Sync Bug Number: AL-1466. If you change the members of a Sync Group and you have one or more Sync tasks configured for that group, the tasks and the related configuration settings are lost after changing the group membership. For more information, see "Configuring Synchronization Groups" and "Configuring Synchronization Tasks" in the Avid MediaCentral | Sync Administration Guide.
Bug Number: SAK-2178. Tasks might fail to sync media assets if the job is in process during an upgrade.
Workaround: Administrators must pause all sync jobs prior to upgrading to v2022.12.
Search App Bug Number: JP-6980. Attempting to move an asset from the Search app to the Browse app results in the following error: "This item cannot be moved to the destination folder." Limitations and Defects Found in Version 2022.3.0 Asset Editor Bug Number: NEO-1540. If you switch to a different Chrome tab and then back to MediaCentral Cloud UX, some areas of the Asset Editor might disappear from the user interface.
For more information, see https://bugs.chromium.org/p/chromium/issues/detail?id=591374.
Limitations and Defects Found in Earlier Versions Workaround: If you encounter this issue, you can disable the Accelerated 2D Canvas option:
1. Open a new tab in your Chrome browser and navigate to: chrome://flags/
2. Disable the feature.
3. Relaunch Chrome to enable the change.
Legal List Administrator App Bug Number: ICI-3996. Icons configured for legal list entries are only used within the Legal List Administrator app and do not show up in the MediaCentral Cloud UX UI.
This affects all MediaCentral Cloud UX versions back to v2019.9.
System Bug Number: PLAD-803. If the avid-local-job-proxy service is unavailable at any remote site in a Multi-Site configuration, the avid-local-job-proxy service on the local site might crash. If this occurs, the Process app might not display updates for any Deliver-to-Me jobs initiated from the local site. If the remote service stays offline for an extended period of time, the service crash and restart cycle might create resource issues on the local site over time.
Limitations and Defects Found in Version 2021.11.0 Legal List Administrator App Bug Number: UIR-10535. When you change the icon for a legal list entry and save the change, the old icon is still shown after switching to another legal list and back.
Workaround: Clear the Chrome browser cache and sign-in again to the MediaCentral Cloud UX Administrator app. The changed icon will now be shown for the legal list entry.
Limitations and Defects Found in Version 2021.3.0 Asset Editor Bug Number: NEO-751. When switching between Source and Record monitor, the information in the Metadata tab is reloaded, but not if you have an Asset Management image asset and shotlist open. In this case, metadata is not reloaded but an “Asset is not loaded” message is shown instead.
Bug Number: NEO-608. Playback of media assets might not be detected as an “active” operation by your local workstation. If you do not interact with the user interface in any other way, your operating system might activate a screen saver, screen lock, or other.
Bug Number: ICI-3252. MediaCentral Cloud UX might not be able to play Production Management assets that are contained in either the Orphaned Clips folder or Private folders (right click on the folder in Interplay Access, select Security > Private). This issue appears if the user that is identified in the pam.yaml configuration file does not have administrator-level privileges in the Production Management database.
Workaround: If you must play assets that are located in these folders, elevate the user that is identified in the pam.yaml configuration file to an administrator in the Production Management database.
Limitations and Defects Found in Earlier Versions Bug Number: NEO-253. If you attempt to delete a segment from a Sequence without first enabling the associated track, the segment is not deleted.
Workaround: Enable the track in the Sequence and then delete the segment.
Bug Number: MX-8525. Metadata tab: When in edit mode, you cannot highlight the entire value of a property of type date, date-time, and time.
Installation and Configuration Bug Number: ICI-3404. After you upgrade to a new version of MediaCentral Cloud UX, users might see an “Error: Module loading failed because of a backend issue.” message after accepting the End User License Agreement (EULA).
Workaround: If this occurs, it happens only once after accepting the ELUA. You can eliminate the error and continue to MediaCentral Cloud UX by refreshing your browser page.
Search Bug Number: None. (Asset Management) Version 2021.3 adds support for showing labels for taxonomies in Search results. This is only supported for Asset Management systems v2021.3 and later. For any remote Asset Management system that is running a version of software prior to v2021.3, the Search results do not show taxonomy labels but the IDs of the taxonomy entries.
System Bug Number: MC-589. Several MediaCentral Cloud UX list and grid views use “lazy loading” to display the contents of folders, search results, containers, etc. This behavior causes issues when applying a multi- selection to a range of items where some of those items are not, yet, loaded. For example, if you select the first asset in a folder and do a fast scroll to the end to select the last one, there will be pages in between the selection which are not loaded and therefore will not get added to the multi-selection.
Drag and drop and other operations (such as attaching the selection to a process creation template) will not properly work as expected.
Workaround: Scroll slowly to make sure that all assets are visible on the UI and no asset shows the status “Loading….”.
Limitations and Defects Found in Version 2020.9.0 Asset Editor Bug Number: MPLAY-4020. If you add a marker with the maximum comment size to an asset in MediaCentral Cloud UX, work the same asset in Media Composer (deleting at least one maker in the process), and then check that asset back into Interplay Production — the asset fails to load into the Media Viewer of the Asset Editor.
Installation and Configuration Bug Number: MAM-16491, FF-2079. If you are using an Enterprise Editing workflow and you upgrade to a version of MediaCentral Cloud UX that introduces the Sync Job Distributor into your environment, you must open and save the Sync Job Distributor settings prior to synchronizing your first draft sequence.
Limitations and Defects Found in Earlier Versions Search Bug Number: RCTR-1673. Sorting the results of a search by selecting a value in the Sort By menu displays different results than if you select the same Sort By value in the Browse app.
Limitations and Defects Found in Version 2020.4.2 Search App Bug Number: JP-7171. When reorganizing favorites or folders within the Search Favorites, the app might not prompt you with the blue position indicator when trying to drop a favorite (or folder) to the last position of a folder that contains a sub-folder.
Workaround: To move the item to the end of the folder, collapse the folder in the Favorites tree structure and drop the item on top of the collapsed folder.
Limitations and Defects Found in Version 2020.4.0 Associations App Bug Number: MA-5583. When you select several associated assets in the Associations area, then press the Ctrl key and start dragging, the asset that is used for dragging is excluded from the selection and its association is not copied.
Workaround: First start dragging the selection and then press the Ctrl key.
Browse App Bug Number: MPLAY-3933. If you save an empty sequence, an audio-only sequence, or a sequence where the media for the first segment is offline, the Browse and Search apps display a question mark in the Thumbnail column of the app.
Bug Number: JP-4216. The Search app might display referenced Production Management assets in the search results list. As the Browse app is unable to display referenced assets, the app displays the following error message if you attempt to open the asset in the Browse app:
“Asset cannot be found. The asset might have been recently deleted, might exist as a referenced asset only, or other.
Publisher Bug Number: AWM-134. Audio drops off on Media Composer sequences that contain dissolves at the beginning.
Workaround: Try mixing down the sequence prior to sending it.
Search Bug Number: RCTR-1546. The Search app does not support CBA rules with a “WITH” operator (two sub attribute criteria match in the same row).
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2019.9.11 Graphics Bug Number: OS-6564. If you associate a story in the Rundown app with a shotlist, you are allowed to add graphics to the story as standard production cues. However, graphics are not associated with a shotlist in the same way as they are in a news sequence. As a result, the graphic tracks are not displayed in the Sequence Timeline and the Burn Graphics feature in the STP > Quick Send menu is unavailable.
Workaround: If you want to send the sequence to playback with burned-in graphics, you must associate the story with a news sequence (shotlists not supported).
Bug Number: OS-7222. If the frame rate of your Maestro News system does not match the frame rate of your MediaCentral Cloud UX sequence, timed graphics might appear off by a few frames in the Asset Editor Media Viewer and the Sequence Timeline.
Workaround: Update the SystemSettings.ini file on your Avid Maestro News system so that the frame rate matches your sequence. This file is generally located at the following path:
C:\Program Files\Avid\MaestroNewsServices\<version>
> **Note:** The aspect ratio and the frame rate of sequences created in MediaCentral Production Management
are determined by the first clip that you add to the sequence. Any additional clips can have a different resolutions but must match the initial frame rate. For more information, see “Creating a Sequence” in the Avid MediaCentral | Cloud UX User’s Guide.
Limitations and Defects Found in Version 2019.9.5 Asset Editor Bug Number: OS-6480. If you open the Media Viewer in Full Screen mode and then attempt to access the STP function of the Quick Send menu, the overlay window is displayed behind the full screen viewer, essentially hiding the user interface.
Workaround: If you want to access the Quick Send > STP options, you must exit Full Screen mode.
Bug Number: MX-7802. In the Storyboard tab, if you click in the Comment field that contains a large amount of text, scroll through the text, and then start typing, the text will not scroll back to the current cursor position. As a consequence, you do not see the text that you are typing.
Limitations and Defects Found in Version 2019.9.1 Mobile Bug Number: LIZ-3936, LIZ-3924, LIZ-4062. After you change the Theme in the Profile area of the v2019.9.1 mobile app for iOS, you must quit and relaunch the app for the them to be applied correctly. If you do not restart the app, some areas of the user interface might not be displayed correctly.
Limitations and Defects Found in Version 2019.9.0 Asset Editor Bug Number: JP-6644. When double-clicking on a marker or a search hit in the tabs area of the Asset Editor, the position indicator does not move to the associated mark in the Media Viewer timeline.
Limitations and Defects Found in Earlier Versions Bug Number: MX-7196. If you load an Asset Management asset that has a multi-value compound attribute with a large number of records, the Chrome browser might hang for a period of time, followed by a number of messages from MediaCentral Cloud UX indicating that “Obtaining the metadata timed out”.
Log App Under a rare condition, the Log app might crash and show an exception error message. The behavior can be detected under the following condition: If you attach an asset that has a creation date in the far past (for example 2017) to a session, log the session, remove the asset from the logged session, continue logging the session against the wall clock, and finally again attach an asset that has a creation date in the far past to the session.
Multi-Site Bug Number: MA-5347. Queues marked with the Refresh property on remote Newsroom Management systems do not automatically refresh in either the Rundown app or the MediaCentral Cloud UX Mobile app.
Publisher App Bug Number: AWM-83. You cannot publish the following sequence types:
Shotlists created in MediaCentral Cloud UX that do not contain audio media.
- Sequences created in Media Composer that include a video track only.
- Workaround:
- If you have access to an Avid Media Composer, you can create a sequence in the editor that has a
video track, an audio tracks, and video media only. You can then check that sequence into Production Management, and publish this sequence.
If you are editing a shotlist created in MediaCentral Cloud UX, add 0db audio media to the audio
- track.
Bug Number: AWM-80. When working with 60p or 50p sequences in Media Composer, you must set the TC Display Format in the Media Composer General Settings to either 60 fps or 50 fps, respectfully, before checking the sequence into MediaCentral Production Management. If this setting is not configured correctly and you attempt to upload the sequence to the Publisher SAAS platform, the upload process will fail.
Search Bug Number: ASSETS-2434. The MediaCentral Cloud UX Search Connector for Production Management associates some metadata fields such as Initial Checkin Date, Last Restored Date, and others with type “String” instead of type “DateTime”. Additionally, some fields associated with timecode (such as Auxiliary TC1) or numbers (such as Audio Bit Depth) are associated with the String type. These incorrect assignments prevent users from searching for these metadata fields in MediaCentral Cloud UX using criteria normally associated with a date/time, timecode, or numerical value.
Workaround: You can resolve this issue by installing the MediaCentral Production Management 2019.6.1 Access or later and enabling the “Update Data Type Definitions” toggle in the Interplay Administrator. For more information, see the Avid MediaCentral Production Management 2019.6.1 ReadMe or “Configuring the MediaCentral Search Connector” in the Avid MediaCentral | Cloud UX Installation Guide v2019.9.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2019.6.0 Installation and Configuration Bug Number: MCDEV-11520. If you configure more than one MediaCentral Authentication Provider in the Interplay Administrator, the process of signing in to MediaCentral Cloud UX through the Media Composer fails.
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
As shown in the following example Kubernetes Dashboard illustration, clustered configurations will have multiple of each type.
Limitations and Defects Found in Earlier Versions
5. Use the context menu to delete all rabbitmq pods
6. Sign in to your single server or cluster master node and use the following command to delete the
contents of the following folder: /var/lib/avid/rabbitmq/rmq-rabbitmq-default-0/ rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-0/ If you have multiple nodes, you must repeat this command on each node, substituting the “default- #” number with the corresponding number on the node. For example, in a three node cluster, your commands might look like the following:
[root@wavd-mcux01 ~]# rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-0/ [root@wavd-mcux02 ~]# rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-1/ [root@wavd-mcux03 ~]# rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-2/
7. Use the Kubernetes Dashboard to verify that all pods start successfully.
Mobile Bug Number: LIZ-3929. The caching required for media at certain frame rates (such as 24, 25, or 50fps) might cause playback to pause on mobile devices.
Workaround: If playback pauses, drag the playhead to an earlier point in the asset and begin playback again.
Multi-Site If you plan to include your MediaCentral Cloud UX system in a multi-site configuration, be aware of the following limitations:
- Avid supports a maximum of six sites in a single multi-site environment.
- You cannot create or edit remote sequences, nor can you include remote media assets in a local
sequence.
Limitations and Defects Found in Earlier Versions You cannot create new sequences on remote MediaCentral modules. However, the context menu for
- MediaCentral Asset Management modules retains the Create Asset option for both local and
remote systems.
- You cannot create a subclip from a remote asset.
- You cannot play back remote edit while capture (EWC) assets.
- No support for remote user tasks (including file upload/download) in the Tasks app.
- If you create a voice-over, the asset can be saved to the local MediaCentral Production
Management database only.
You cannot Publish remote assets.
- The Log app cannot be used with remote assets.
- Deliver In-to-Out workflows are not available in MediaCentral Cloud UX.
- The Avid MediaCentral | Panel for 3rd Party Creative Tools does not support Multi-Site workflows.
- Bug Number: RCTR-1275. When you configure the Map to User option in the Multi-Site Settings app, the
Search app applies the visibility rules based on local user name and not the mapped user for the remote Asset Management system.
Workaround: If you plan to link to an Asset Management module in a remote site, you must configure the User Mapping to Map By Name.
Search Bug Number: JP-6184.When upgrading to MediaCentral Cloud UX 2019.6 from an earlier release, any favorites created by the users in the Search app are not maintained.
Bug Number: None. If you select the check box for a parent in a taxonomy search, the user interface indicates that the children selected as well. However, search does not return assets for matches against the child selections.
Workaround: Open the taxonomy menu and select the individual checkboxes for the child items instead of selecting the check box for the upper-level parent item.
Limitations and Defects Found in Version 2019.2.0 Asset Editor Bug Number: ICI-2137. Audio might stutter during playback while simultaneously working in other Apps of the MediaCentral Cloud UX user interface.
Search Bug Number: JP-6316, JP-6323. When hovering over a phonetic search phrase, the pronunciation of the pill is not displayed in a tool-tip.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2018.11.0 Asset Editor Bug Number: MX-6604. If you click on the link for a recovered asset in the Auto Recovery window, the apps area of the MediaCentral Cloud UX user interface is replaced with the following error: “No application config found for type: dashboard”.
Workaround: When you click on the link, the asset is loaded into the appropriate app as described in the “Recovering Sequences” and “Recovering Stories In Case of Disconnect” sections of the Avid MediaCentral | Cloud UX User’s Guide. You can eliminate the error message by clicking on an app such as Browse, Rundown, or other.
Bug Number: ASSETS-1834 . If a user has permissions to write to a particular folder in the MediaCentral Production database but does not have the rights to create markers, the user is allowed to save a sequence containing new markers. However, the user also sees the following message: “User permissions do not allow this operation” Workaround: To avoid these errors, you must make sure that users who have permission to save sequences also have permissions to edit markers.
Bug Number: MX-6658. The Storyboard tab needs focus in order for keystroke shortcuts to work.
Process App Bug Number: MX-6913. The Process app always displays the “Show More Results” button, even if there are no additional results to display.
Limitations and Defects Found in Version 2018.6.0 Asset Editor Bug Number: NEO-106, OS-4997. If a user attempts to make an edit to a news sequence that is already opened by another user who has a lock on the story, the change is permitted but the following warning message is presented:
“Story Modify Error - Unable to obtain all edit locks. Story body is edit locked by <user>.” [Cancel Sequence Edit] [Keep Sequence Edit] In this release the Cancel and Keep options are not available.
Browse App Bug Number: ASSETS-1317. You cannot duplicate sequences.
Workaround: Open the sequence and use the Save As feature in the Sequence Timeline to save a copy of the sequence.
Installation and Configuration Bug Number: DAEM-5529. When running the Post-Install Setup Scripts, the avidctl platform host- setup script might hang when executing particular tasks. If there is no on-screen activity for an extended period of time (2-3 minutes), press CTRL+C on the keyboard to exit and run the script again.
Limitations and Defects Found in Earlier Versions This issue is most often associated with the “sysprep: Restart firewalld” task.
Bug Number: MTTO-1773. If you connect to the Kubernetes web dashboard after deploying the system feature packs, the Kubernetes Pods category does not show a green status.
Workaround: Continue with the installation and verify the status of the Kubernetes Pods after you have imported a MediaCentral Cloud UX license.
Bug Number: DAEM-5592, DAEM-5684. When entering the Kubernetes Admin token in the avidctl platform host-setup script, you can not use the Backspace key to correct a text entry error. The Backspace key is treated as a new character.
Workaround: You can resolve this issue in one of two ways:
- Press CTRL+C on the keyboard to exit the script and then relaunch the script to start over from the
beginning.
- After using the Backspace key, press Enter to accept the password. At the verification prompt, press
Enter to purposefully enter an incorrect matching password.
This returns you to the first prompt to enter your original password.
MediaCentral Asset Management MediaCentral Cloud UX includes the following limitations for the MediaCentral Asset Management module:
- Browse app:
  - ASSETS-1386. If you use the Browse app to rename an Asset Management folder, only the
name of the folder is changed and not the language label associated with the asset folder.
MAM Desktop may show a different, localized label instead.
Search app:
  - The search does not consider changes and deletes in the Asset Management data model: If
you delete a searchable attribute or mark it as “non searchable” in the data model, it remains visible in the Search app. If you rename a searchable attribute, both the old and the new attribute name are visible in the Search app.
  - The Search app has a limit of 5,000 fields in an index. MediaCentral Search can create more
than one field per Asset Management attribute (for example, 3 for text attributes). If the data model contains too many attributes, then MediaCentral Search cannot create the index and search will not return any Asset Management assets.
- Markers tab:
  - You can show strata, segments, and annotation but you cannot edit them in the Markers tab.
- Metadata tab:
  - ASSETS-1632. When a user edits an Asset Management asset in the Metadata tab, the asset
is not locked which allows unintended changes by another user.
Mobile The MediaCentral Cloud UX mobile app includes the following limitations:
You cannot open key-locked or easy locked queues or stories (iOS). Attempting to do so results in an
- Access Denied message.
Review and Approval workflow for Production Assets is unavailable (Android).
Limitations and Defects Found in Earlier Versions You cannot share stories with other users (Deep Links) (iOS + Android).
- You cannot insert Script Templates (iOS + Android).
- Cue content and machine codes are listed as text only in the Production Cue list.
- Search
Bug Number: RCTR-989. The process to index large MediaCentral Asset Management databases for use with the MediaCentral Search app can take a significant amount of time to complete. Organizations whose database consists of more than 500,000 assets should consult with Avid prior to indexing the database for assistance in optimizing the process.
MediaCentral Cloud UX v2019.2 introduced certain improvements for large databases. As of this release, only organizations whose database consists of 1,000,000 or more assets need to consult with Avid.
Bug Number: RCTR-973. The Search index creation process might fail on databases that contain a large number of fields.
System Bug Number: DAEM-5741. When a cluster master node goes offline, users might experience a short period of time where the cluster is inaccessible.
Limitations and Defects Found in Earlier Versions