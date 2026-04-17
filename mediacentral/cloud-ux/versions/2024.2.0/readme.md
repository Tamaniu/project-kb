---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2024.2.0"
release-date: 01/02/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

™ Avid MediaCentral | Cloud UX Version 2024.2 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
For the most up-to-date Avid MediaCentral Cloud UX documentation (all releases), see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Cloud-UX-v2024-Documentation MediaCentral Cloud UX v2024.2 has been developed as a Feature release. For more information on the differences between Long-Term Maintenance and Feature releases, visit the Avid website at:
https://www.avid.com/resource-center/avid-long-term-maintenance-releases Revision History Date Revised Changes Made May 19, 2025 As Ubuntu kernel v5.15.0-140-generic addresses PRS-3538, this issue has been moved to "Fixed in Version 2024.2.0" on page 23.
March 21, 2025 Added an important limitation regarding the latest kernel for Ubuntu v22.04. For details see PRS-3538 in "Limitations and Defects Found in Version 2023.7.0" on page 36.
Added ICI-4980 to "Limitations and Defects Found in Version 2023.7.0" on page 36.
Clarified some language regarding the "Supported Media Formats" on page 8.
October 15, 2024 Added Limitation #PRS-3024 in "Limitations and Defects Found in Version 2023.7.0" on page 36.
April 8, 2024 Added CCUX-9473 to "Limitations and Defects Found in Version 2024.2.0" on page 29.
March 19, 2024 Added RCTR-2455 to "Fixed in Version 2024.2.0" on page 23. Added APPSVCS-1551 and updated the description for NEO-2813 in "Limitations and Defects Found in Version 2024.2.0" on page 29.
February 29, 2024 Initial v2024.2 publication Contents New Features in MediaCentral Cloud UX 2024.2.0 12 Upgrading To MediaCentral Cloud UX v2024.2 16 Compatibility Notes Updating MediaCentral Search 22 Fixed in Version 2024.2.0 23 Limitations and Defects Found in Version 2024.2.0 29 Limitations and Defects Found in Earlier Versions 32 Compatibility Notes This section contains compatibility information for MediaCentral Cloud UX and related products.
For information on supported operating systems and for a list of product versions qualified for use with Avid MediaCentral Cloud UX, see the Compatibility Matrix on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Avid highly recommends that you consult this matrix prior to upgrading any application or system to ensure that you understand the scope of the upgrade. In some cases, you might be required to upgrade additional components or hardware to maintain system compatibility.
Qualified Servers and Virtualized Environments Hardware Deployments Organizations can install MediaCentral Cloud UX on a server from the vendor of their choice, as long as that server meets the minimum specifications that are defined by Ubuntu and Avid. For more information on these minimum requirements, see the Avid MediaCentral | Cloud UX Hardware Guide on the Avid Knowledge Base.
Virtualization MediaCentral Cloud UX can be deployed as a virtual machine in VMware vSphere environments. For more information regarding on-prem VMware deployments, see the Avid MediaCentral | Cloud UX Best Practices for VMware guide on the Avid Knowledge Base.
Memory Configuration Both “bare metal” (dedicated physical servers) and virtualized deployments of MediaCentral Cloud UX require a minimum of 128GB of RAM per server / VM.
Storage Requirements MediaCentral Cloud UX v2023.12 and later requires SSD storage for both the OS and Data volumes.
Organizations that are still using standard HDD’s must upgrade their hardware to maintain compatibility with this and future releases of MediaCentral Cloud UX. This requirement applies to all new installations and upgrades to v2023.12 and later.
This requirement applies to both hardware-based deployments and virtualized deployments using VMware. If you are using VMware with a shared SAN array, the SSD requirement applies to any shared storage that hosts a virtualized deployment of MediaCentral Cloud UX.
Operating System and Security Guidelines Avid allows you to install an endpoint detection and response solution on your MediaCentral Cloud UX system. This applies to both single-server and cluster environments. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://kb.avid.com/articles/en_US/troubleshooting/en239659 Compatibility Notes The avidctl platform host-setup script enables Ubuntu's built-in Uncomplicated Firewall service by default on all new installations. For information on how to verify the current status of the service, see "Ubuntu Uncomplicated Firewall" in the Avid MediaCentral | Cloud UX Installation Guide.
Security Updates MediaCentral Cloud UX is supported on Canonical Ubuntu — an open source, Linux-based operating system. Organizations must download a copy of Ubuntu Server LTS (Long Term Support) from https://ubuntu.com and install it on their MediaCentral Cloud UX server prior to installing any Avid software. Refer to the MediaCentral Compatibility Matrix on the Avid Knowledge Base for supported version information.
Unless otherwise noted, Avid supports Ubuntu patch versions by default. Using Ubuntu 22.04.1 as an example where 22 is the major version, 04 is the minor version, and 1 is the patch version, Avid would support Ubuntu Server LTS v22.04.x. For more information on Ubuntu releases, see https://ubuntu.com/about/release-cycle.
Security and Firewalls on Client Workstations While Avid encourages organizations to protect and secure the client workstations that connect to MediaCentral Cloud UX, system administrators must allow communication between the clients and the MediaCentral Cloud UX servers over network ports 443 and 5000. If you are using a local anti-virus, firewall, or other security solution on your clients, you must ensure that these ports remain open between the systems. Failure to do so could block media playback or cause other aspects of the workflow to fail.
For more information on network ports and communication, see the Avid Port Usage Guide on the Avid Knowledge Base.
Transport Layer Security (TLS) Certificates When you connect to MediaCentral Cloud UX, your web browser might display a security warning that indicates that the connection cannot be validated. These warnings can be eliminated through the use of a trusted Transport Layer Security (TLS) certificate.
You can generate a self-signed certificate directly on the MediaCentral Cloud UX server or you can obtain a certificate from an internal/private or external/public Certificate Authority (CA) group. Public certificates have the advantage in that they are trusted automatically by today’s most common web browsers. No warnings appear when a connection is made to a secure web page, nor do you need to manually add the certificate to the local workstation’s Trusted Root Certification Authorities store (since the CA’s root certificate is already there).
You must install a valid signed certificate to access the user interface for all versions of MediaCentral Cloud UX. Without a valid certificate, users are met with a security warning when accessing the MediaCentral Cloud UX sign-in page. Any attempt to bypass this security warning without a valid signed certificate is unsupported and could result in negative impacts to the user experience.
If you are enabling a multi-site environment and you are using a self-signed or private CA certificate, you must import the certificate from each site into each of your client workstations. For example, if you have a multi-site configuration with three sites, you must import three different certificates into each workstation.
For this reason Avid highly recommends using certificates provided by a public Certificate Authority if you are enabling a multi-site configuration.
All certificate types must include the FQDN for your MediaCentral Cloud UX system. If you have configured a cluster, the certificate must include the FQDN for each cluster node and the virtual cluster.
If you are using the MediaCentral Cloud UX Mobile app or the Collaborate Mobile app, you must import a valid certificate into your mobile device.
Compatibility Notes For more information, see “Creating Certificate Files” and “Importing TLS Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
Browsers for MediaCentral Cloud UX MediaCentral Cloud UX is tested using Google Chrome as the portal to the user interface. For specific version information, see the “MediaCentral Compatibility Matrix” on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Features included in some graphics drivers might affect the playback of assets in the Chrome HTML5 video player. If you experience playback issues, you might try lowering your video resolution, increasing the display refresh rate, or both.
The minimum screen resolution for MediaCentral Cloud UX is 1280 x 1024 pixels. If the size of your browser window is smaller than 1280 x 1024, some UI elements might not be displayed.
Avid does not support connecting to MediaCentral Cloud UX through either a mobile web browser (installed on a mobile device) or “portable” versions of Chrome in which the browser is not fully installed on your local workstation. To access MediaCentral Cloud UX through a mobile device, download either the MediaCentral Cloud UX Mobile app, or the MediaCentral Collaborate app.
Avid does not test MediaCentral Cloud UX with any Chrome extensions. Some extensions can introduce a performance impact, potentially affecting playback or other areas of the UI.
Upgrade Options for Multi-Site Environments Avid MediaCentral Cloud UX allows you to connect multiple MediaCentral Cloud UX systems together in a Multi-Site configuration. In a multi-site environment, your local MediaCentral Cloud UX system links to MediaCentral modules such as Production Management, Asset Management, or others that are connected to other remote MediaCentral Cloud UX systems.
Avid supports linking sites running different versions of MediaCentral Cloud UX. If you plan to run mixed versions of software, note the following:
- You can mix MediaCentral Cloud UX systems running v2022.3.x through v2024.2.x in the same
multi-site environment. Note that during the upgrade process, the affected site will be unavailable to users in the linked sites.
If your multi-site environment includes one or more MediaCentral Asset Management modules, you
- might need to coordinate the upgrades of your MediaCentral Cloud UX systems and the Asset
Management systems to maintain continued functionally.
For more information, see "MediaCentral | Cloud UX Compatibility" in the Avid MediaCentral | Asset Management ReadMe and "Multi-Site Support" of the Avid MediaCentral | Asset Management Installation Guide.
Some features might be version specific. See individual MediaCentral Cloud UX ReadMes for any
- feature-specific version requirements.
Connection Options for Multiple Systems The following information describe methods for connecting MediaCentral modules outside of a multi-site environment.
MediaCentral Production Management Avid supports connecting only a single MediaCentral Production Management module to the MediaCentral Cloud UX system.
Compatibility Notes MediaCentral Newsroom Management If you have one Newsroom Management module with multiple MediaCentral Cloud UX systems:
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
Device Support for MediaCentral Mobile Applications Users of the MediaCentral Collaborate Mobile app and / or the MediaCentral Cloud UX Mobile app can connect to the MediaCentral Platform using a variety of different devices. While not all devices can be thoroughly vetted, Avid has performed end to end workflow testing on the following phones and tablets:
iPhone 11 Pro, iPhone 14 Plus, and iPhone 15
- iPad Pro 10.5 (MediaCentral Cloud UX Mobile app only)
- To access your MediaCentral Cloud UX server from a remote location, you might be required to use a
virtual private network (VPN) app on your iOS or Android device. Avid tested the MediaCentral Cloud UX Cisco™ AnyConnect® mobile apps using VPN Client.
For more information on mobile app compatibility, see the MediaCentral Compatibility Matrix on the Avid Knowledge Base.
Compatibility Notes Avid MediaCentral Cloud UX Installation Media Before installing Avid MediaCentral Cloud UX, you must obtain the installation media:
- Avid MediaCentral Cloud UX Platform v2024.2.0
This package includes the core Avid installation components.
Example file name: mediacentral_platform_<build>.bin
- Avid MediaCentral Cloud UX Feature Packs v2024.2.0
This package includes additional software to install MediaCentral Cloud UX applications on the Platform.
Example file name: mediacentral_feature_packs_<build>.iso The software can be downloaded from the Avid Download Center. If you have not already created an Avid.com user account, you must do so now. This Master Account enables you to sync your Avid Video Download and Avid Video Community accounts, and access other Avid resources.
Enabling New Features If you are upgrading to this version of MediaCentral Cloud UX to enable new features introduced in this or prior releases, or if you have purchased a new feature for your existing installation, you might need to refer to a previous ReadMe or to the Avid MediaCentral | Cloud UX Installation Guide for additional instructions.
For example, if you are adding MediaCentral Phonetic Index, you must configure a Search Grid server, run a system configuration script, and index your integrated MediaCentral modules. If you are upgrading to enable a new feature such as the Publisher app, you might need to install a new license, configure settings, or verify user entitlements.
Avid MediaCentral Distribution Service The MediaCentral Distribution Service (MCDS) is an application required for Send to Playback (STP) operations in MediaCentral Cloud UX. More accurately described as an “orchestration engine”, MCDS analyzes the STP request and determines if additional actions are required before the media is sent to the destination (Avid FastServe, Avid Transfer Engine, or other). MCDS is not used or required when sending assets to playback through the Avid MediaCentral | Panel for 3rd Party Creative Tools.
For more information on MCDS, Send to Playback guidelines, compatibility notes, fixes, and more, see the Avid MediaCentral Distribution Service ReadMe on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation Installing MediaCentral Cloud UX Partner Applications Organizations or individual contributors that want to work with Avid to create applications for the MediaCentral Platform can visit http://developer.avid.com/ for a collection of online resources that can be used to assist you in this effort.
If you have purchased a MediaCentral Cloud UX partner application or service to connect to a non-Avid product or service, the following link provides a high-level set of instructions for installing the feature pack on your MediaCentral Cloud UX system:
http://developer.avid.com/cert/feature-pack-installation/docs-public/README.html For more detailed and software-specific instructions, see the documentation that accompanies the partner feature pack.
Compatibility Notes Avid 3rd Party License Compliance License information is not installed directly on the MediaCentral Cloud UX server. For information on licenses/*.tar.gz Avid’s compliance with external vendors, see on the Avid MediaCentral Cloud UX Platform installer (mediacentral_platform_<build>.bin).
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
23.97 fps and 24 fps frame rates are supported in 1080p formats. They are unsupported in 720p
- and standard definition (SD) formats.
Audio Media Formats (codec) AAC* MPEG-2 PCM * AAC audio is supported for Asset Management Desktop playing audio-only MP4 wrapped proxies.
Video Media Format Playback Support Send to Playback Support Apple ProRes Not Supported Not Supported AVC-Intra 50, 100 (1080i) All frame rates 50, 59.94 Compatibility Notes Video Media Format Playback Support Send to Playback Support AVC-Intra 100 (1080p) All frame rates Not Supported AVC-Intra 50, 100 (720p) 50, 59.94 50, 59.94 AVC Long GOP 12, 25, 50 (720p) 50, 59.94 50, 59.94 AVC Long GOP 12, 25, 50 (1080i) 25, 29.97 25, 29.97 AVC Long GOP 12, 25, 50 (1080p) 25, 29.97 Not Supported Avid JFIF 2:1, 3:1, 10:1, 20:1 25, 29.97 Not Supported DNxGX Not Supported Not Supported DNxHD 1080 36, 45, 80, 85, 100 All frame rates Not Supported DNxHD 1080 115, 120, 145, 175, 185, 220 All frame rates 25, 29.97 DNxHD 1080 175X, 185X, 220X All frame rates 25, 29.97 DNxHD 720p 40 Not Supported Not Supported DNxHD 720p 45, 50 25, 29.97 Not Supported DNxHD 720p 60, 75, 90, 110, 145, 220 25, 29.97 25, 29.97, 50, 59.94 DNxHD 720p 90X, 110X, 220X 25, 29.97 25, 29.97, 50, 59.94 DNxHD 720p 85, 100, 120, 185 50, 59.94 Not Supported DNxHD 720p 185X 50, 59.94 Not Supported DNxHD 1080p 75, 90, 165, 200, 240, 290 50, 59.94 Not Supported DNxHD 1080p 365, 440 50, 59.94 Not Supported DNxHD 1080p 365X, 440X 50, 59.94 Not Supported DV 25 411 25, 29.97 25, 29.97 DV 25 420 25 25 DV 50 25, 29.97 25, 29.97 DV100 HD 1080i (DVCPro HD) All frame rates 50, 59.94 DV100 HD 720p (DVCPro HD) 50, 59.94 50, 59.94 H.263 (MPEG-1 Layer 2 proxy) 25, 29.97 Not Supported H.264 (MPEG-1 Layer 2 proxy) 25, 29.97 Not Supported 800 Kbps, 2 Mbps, 3 Mbps HDV (1080i) All frame rates Not Supported HDV 720p 50, 59.94 Not Supported JPEG 2000 Not Supported Not Supported MPEG (IMX) 30, 40, 50 25, 29.97 25, 29.97 MPEG-2 Long GOP 25, 29.97 Not Supported RGB Not Supported Not Supported XAVC Intra 50 (1080i) 50, 60, 23.98 Not Supported XAVC-Intra 100 (1080i) 50, 60, 23.98 50, 60 Compatibility Notes Video Media Format Playback Support Send to Playback Support XAVC-Intra 50 (1080p) Not Supported Not Supported XAVC-Intra 100 (1080p) 50, 59.94 50, 59.94 (1080i)a XAVC Long GOP 25, 35, 50 50, 59.94 Not Supported XAVC Long GOP 50 (720p)a 50, 59.94 Not Supported XDCAM-HD 17.5, Mbps (1080i) All frame rates Not Supported XDCAM-HD 35, 50 Mbps (1080i) All frame rates 50, 59.94 XDCAM-HD 50 Mbps (1080p) All frame rates Not Supported XDCAM-HD 17.5, 35 Mbps (720p) 50, 59.94 Not Supported XDCAM-HD 50 Mbps (720p) 50, 59.94 50, 59.94 XDCAM-EX 35 Mbps (1080i) All frame rates 50, 59.94 XDCAM-EX 35 Mbps (720p) 50, 59.94 50, 59.94 a Frame rate not guaranteed. Frame rate might temporarily be reduced during playback.
For additional information on supported STP formats when using Avid FastServe, see the Avid FastServe | Playout Administrator’s Guide on the Avid Knowledge Base at: https://kb.avid.com/articles/en_ US/ReadMe/FastServe-Documentation.
Bandwidth Requirements The following table presents single-user bandwidth guidelines for MediaCentral Cloud UX playback. The table is provided for guidance, and is not an indication of performance guarantees.
Proxy Setting (16:9, 30 fps) Bandwidth Needs Width Quality Value Peak Valley Typical Good 40 5.400Mbps 2.520Mbps 3.440Mbps 348 px Better 60 6.600Mbps 2.840Mbps 4.380Mbps Best 80 9.000Mbps 3.480Mbps 5.690Mbps Good 40 6.400Mbps 2.840Mbps 4.690Mbps 400 px Better 60 8.200Mbps 3.320Mbps 5.000Mbps Best 80 11.650Mbps 4.200Mbps 6.780Mbps Good 40 8.400Mbps 3.320Mbps 4.985Mbps 480 px Better 60 11.400Mbps 3.880Mbps 6.300Mbps Best 80 15.400Mbps 5.080Mbps 9.480Mbps Good 40 11.295Mbps 4.179Mbps 6.529Mbps 560 px Better 60 14.868Mbps 5.023Mbps 8.547Mbps Best 80 21.009Mbps 6.694Mbps 12.284Mbps Good 40 14.324Mbps 5.029Mbps 8.098Mbps Compatibility Notes Proxy Setting (16:9, 30 fps) Bandwidth Needs Width Quality Value Peak Valley Typical 640 px Better 60 18.991Mbps 6.131Mbps 10.735Mbps Best 80 27.011Mbps 8.315Mbps 15.616Mbps Good 40 17.757Mbps 5.993Mbps 9.878Mbps 720 px Better 60 23.664Mbps 7.338Mbps 13.215Mbps Best 80 33.814Mbps 10.152Mbps 19.392Mbps Good 40 30.480Mbps 9.566Mbps 16.472Mbps 960 px Better 60 40.980Mbps 12.046Mbps 22.405Mbps Best 80 59.028Mbps 16.959Mbps 33.385Mbps The following table explains the contents in detail.
Item Description Width 348 pixels is the minimum player width; 960 pixels is the max. Height depends on the aspect ratio. The table assumes an aspect ratio of 16:9.
Quality Refers to the quality setting in the Player set via the UI.
Value Each quality setting has a numeric value. The value corresponds to the level of compression used to encode the JPEG.
Peak Video with high color variation (e.g. wide shot of a crowd) Valley Video with low color variation (e.g. half of frame consists of a clear blue sky) Typical A wide range of footage (e.g. interiors, exteriors, interviews). The typical shot tends closer to valley values than peak values.
Audio All bandwidth figures include audio consisting of 44.1 kHz sample rate x 16-bit/sample x 2 tracks = 1.4 Mbps New Features in MediaCentral Cloud UX 2024.2.0 New Features in MediaCentral Cloud UX 2024.2.0 This topic provides an overview of the major new features in MediaCentral Cloud UX v2024.2.0. For additional information, see the Tutorial videos and the New Features sections of the MediaCentral Cloud UX Help and Learn menu. You can access the New Features directly at the following link:
https://www.avid.com/products/mediacentral/learn-and-support#New-Features-Portal Asset Editor Feature Description Audio Waveforms You can now display waveform data for audio tracks in the Sequence Timeline.
This feature applies to sequences of type Sequence, and News sequence.
For more information, see "Displaying Audio Waveforms" in the Avid MediaCentral | Cloud UX User’s Guide.
Installation and Configuration Feature Description Post-Install / Upgrade The following installation scripts include updates:
Setup Scripts Configuring Avid NEXIS API Services
- Integrating with an OpenID Provider
  - New fields added for Client Scope and Claim Parser values
If you are upgrading from a prior version of MediaCentral Cloud UX and you are using either Okta or Keycloak as an authentication provider, you must run the avidctl platform config auth oidc script again to update the auth.yaml file with these new required OpenID provider values.
Kubernetes Certificates When you install MediaCentral Cloud UX for the first time, the Kubernetes deployment process automatically creates multiple certificate files. These files are required by the system for security and general system operation.
The “Understanding Kubernetes Certificates” section of the Avid MediaCentral | Cloud UX Installation Guide documents a process to verify the expiration date of these certificates. The topic also includes a process to renew the Client Certificates which have an automatic one-year expiration date.
USBGuard In a continuing effort to harden and secure the operating system, this release disables Ubuntu's default usb-storage module and installs USBGuard as an alternative solution. USBGuard authorizes USB devices using a set of rules — with block (reject) being the default rule.
This change results in the following updates to the Avid MediaCentral | Cloud UX Installation Guide:
New Features in MediaCentral Cloud UX 2024.2.0 Feature Description
- Added "Installing the Platform Software > Verifying Access to USB Devices".
- The process for "Installing Ubuntu Software Updates > Updating Offline
Servers" has been updated to include usbguard as a required package.
- The process for "Copying Software Using a USB Drive" has been updated
with additional steps.
Support for Microsoft This release adds Microsoft Entra ID (Azure Active Directory) to the list of qualified Entra ID authentication providers.
> **Note:** Support is specific to authentication into MediaCentral Cloud UX and does not
extend to use with either System Monitoring or Grafana. Support does not extend to MediaCentral Asset Management, MediaCentral Newsroom Management, Publisher, or the MediaCentral Panel for Media Composer.
For more information, see Integrating with an OpenID Provider in the Avid MediaCentral | Cloud UX Installation Guide.
Browse App Feature Description "Search in folder" option This release adds a "Search in folder" option for Production Management for Browse app folders Folders and
- and Browse favorites
(Production Browse favorites
- Management only)
in the Browse app that lets you restrict searches in the Search app to the selected folder.
When you select the Search in folder option, a new instance of the Search app opens and the selected folder is shown in the Location pill. Your search will be applied only to assets within the folder.
For more information, see "Using Browse Favorites" and "Using the Search in Folder Feature" in the Avid MediaCentral | Cloud UX User’s Guide.
Creating subclip via drag This release adds the ability to create subclips by a drag and drop operation from and drop to a Browse the Asset Editor's Media Viewer to a Browse app folder.
app folder (Production For more information, see "Creating Subclips" in the Avid MediaCentral | Cloud UX Management only) User’s Guide.
Open in > Browse Before this release, the Open in > Browse option was available for Newsroom adjustment for Management queues in the Browse app. Selecting the option caused an error.
Newsroom Management Now, when you select a Newsroom Management queue in the Browse app, the queues Open in menu does not provide the "Browse" option any longer, only "Rundown" is shown.
New Features in MediaCentral Cloud UX 2024.2.0 Collaborate App Feature Description Duplicating Topics and This release restores the ability to duplicate assignments, and adds the ability to Assignments duplicate topics.
When duplicating an assignment, the dialog window provides an option to also duplicate any tasks that might be included in the assignment. When duplicating a topic, you can duplicate both assignments and tasks.
Assignment Deletion You can now delete assignments from the Planner Explorer's Week view. This feature extends functionality that is already present in List view.
Extended Searching When adding team members, resources, or contacts to a topic, assignment, or task, the Search bar now looks for all possible matches — without the need to first click the Show All button.
Collaborate Mobile App Feature Description Duplicating Topics and This release restores the ability to duplicate assignments, and adds the ability to Assignments duplicate topics.
When duplicating an assignment, the dialog window provides an option to also duplicate any tasks that might be included in the assignment. When duplicating a topic, you can duplicate both assignments and tasks.
Collaborate Settings App Feature Description Form Builder Sorting You can sort the list of forms by clicking the Name column header. The list can be sorted by alphabetical (ascending), alphabetical (descending), or default sort (by order of creation).
Configuration Settings App Feature Description Production Management The User and Password values (along with the associated button to reveal the Module Settings password) have been removed in this release to enhance the security of the system.
Legal List Administrator App Feature Description UI cleanup: removed The Icon column has been removed from the Legal List Administrator app. The Icon column icons were only used within the Legal List Administrator app but they did not show up in MediaCentral Cloud UX.
New Features in MediaCentral Cloud UX 2024.2.0 Rundown App Feature Description New Printing capabilities The Rundown App now provides a new Print Options dialog letting users print a Queue View of a rundown, print all stories in a rundown, or select one or more stories from a rundown to print.
For more information, see the topic "Printing" in the Working with the Rundown App chapter of the Avid MediaCentral | Cloud UX User’s Guide New Text Zoom While viewing or editing a story, the user can adjust the size of the text by using capabilities the Story Text Size drop-down menu (located far left of the toolbar).
The zoom applies to the story body, production cue text and markers, and segment times in all open queues. Options include: 50%, 75%, 100%, 125% 150%, 175%, and 200%.
Coloring Wire Stories If a story status (the Ready field) is a WIRE, then the Rundown App will now color the story in the Queue grid and Story Form according to the following:
red for Flash wires, orange for Bulletins, and dark yellow for Urgent wires.
Routine wires receive no change in background coloring.
In the Queue grid, the font appears bold for wire stories that have not been viewed (selected). Those that have been read are displayed with less prominence.
> **Note:** The read status resets when the queue is reopened or refreshed.
Search App Feature Description Persistent Search Type You can now add search type options to the Search Type short menu and have Menu Options then be persistent across user sessions and workstations.
In prior releases this information was saved to the local workstation only and could be cleared if the browser's cache was cleared.
Inline Hits The Inline Hits window now displays the timecode values in the same way as the Search Results area.
In addition, the Inline Hits window also now respects the Date Format settings configured in the User Settings, as well as the user’s timezone when displaying time / date values.
Phonetic Indexing Prior versions of MediaCentral Cloud UX that were not licensed for MediaCentral Warning Phonetic Index would show the following warning in the Results area of the Search app: "Phonetic search is not configured".
This update removes that warning and does not display the Phonetic pill type if your system is not licensed for this feature. The warning remains if your system is licensed, but not configured correctly.
Upgrading To MediaCentral Cloud UX v2024.2 Upgrading To MediaCentral Cloud UX v2024.2 The following procedure can be used to upgrade an existing MediaCentral Cloud UX server or cluster. If you are performing a new installation, see the Avid MediaCentral | Cloud UX Installation Guide for detailed instructions.
If you are running a version of MediaCentral Cloud UX prior to v2023.7, you must upgrade your servers to the v2023.7 LTM release before upgrading to v2024.2. This requirement applies to both Platform and Feature Packs. For more information on that upgrade process, refer to the v2023.7 Avid MediaCentral | Cloud UX ReadMe for details.
Refer to the following processes to complete the upgrade:
(cluster-only) "Verifying the Primary Node" on the next page
- "Updating the Platform" on the next page
- If you have a cluster, you must complete this process on all nodes.
"Updating the Feature Packs" on page 20
- This process uses the Feature Pack ISO. If you have a cluster, you must complete this process on the
primary node only.
"Updating MediaCentral Search" on page 22
- You must review this information for all upgrades.
The steps required to install this release on single-server configurations or clustered configurations are similar. Any variations for clustered systems are noted. If you are familiar with the process to install a new MediaCentral Cloud UX server, the upgrade process should look very familiar to you. As such, you can reference the Avid MediaCentral | Cloud UX Installation Guide for additional information on many of the topics referenced below.
Prior to beginning the upgrade, you must obtain the MediaCentral Cloud UX installation media. For more information, see "Avid MediaCentral Cloud UX Installation Media" on page 6.
If you experience any issues with the MediaCentral Cloud UX user interface directly after upgrading your servers, you might try clearing the browser cache on your local workstation as an initial troubleshooting step.
Consult the MediaCentral Compatibility Matrix prior to upgrading any application or system to ensure that you understand the scope of the upgrade. In some cases, you might be required to upgrade additional components to maintain system compatibility.
Upgrading Multi-Site Environments The following upgrade process applies to both single and multi-site environments. There are no specific or custom steps required for a multi-site configuration. Prior to upgrading a multi-site environment, make sure that you have read and understood the site compatibility requirements. For more information, see "Upgrade Options for Multi-Site Environments" on page 4.
Partner Applications If you have installed any partner applications on your MediaCentral Cloud UX system, the enhancements made to this release might require you to reinstall these applications after you complete the upgrade. In some cases, you might also need to reconfigure some partner app settings. For more information, see http://developer.avid.com/cert/feature-pack-installation/docs-public/README.html.
Upgrading To MediaCentral Cloud UX v2024.2 Verifying the Primary Node The first three nodes in a MediaCentral Cloud UX cluster are considered Control Plane nodes. When you initially installed and configured the cluster, you were asked to define a “primary” Control Plane node.
When performing an upgrade, you must execute the process from the primary node.
If you are upgrading a single-server environment, you can bypass this process and proceed directly to "Updating the Platform" below.
To verify the primary node:
- (cluster only) Identify your “primary” node.
The primary node is the only node in the cluster that includes the system configuration files at:
/etc/avid/config/. Select a node in your cluster and enter the following command to determine if the system configuration files are present on this node:
ls /etc/avid/config If you are accessing your primary node, the command should list the configuration files that were used to deploy your original installation. For example, you might see:
auth.yaml cert.yaml site-key.yaml If the system reports that none of these files exist on your current server, repeat the above command on each cluster node until you identify the primary node.
Updating the Platform This process uses the mediacentral_platform_<build>.bin file to upgrade the core packages on the MediaCentral Cloud UX server or cluster.
All steps in the following process apply to single-node configurations. If you are configured in a cluster, note the following:
optional: Identifies an optional, but recommended step.
- node1: If you are running a cluster, this step must be completed on the primary node only.
- all: If you are running a cluster, this step must be completed on every control plane, and worker
- node.
If you are running a single-server, review and complete each of the following steps.
To upgrade the Platform:
1. (optional, node1) Connect to your single-server or primary node to create a backup of your
MongoDB database.
This general best practices measure is recommended for all upgrade paths. If you want to complete this step, you only need to do this once from your single-server or primary node. If you are running a clustered configuration, the remaining steps in this process must be completed on each individual node.
For more information, see “Backing up the Mongo Database” in the Avid MediaCentral | Cloud UX Installation Guide.
2. (node1) Drain the Kubernetes managed services from the system:
sudo avidctl node drain --all This process stops all active containers and temporarily prevents the system from scheduling new ones.
Upgrading To MediaCentral Cloud UX v2024.2
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
TASK [kube-registry : fail] ********************************************** skipping: [wavd-mcux01] Upgrading To MediaCentral Cloud UX v2024.2 After the upgrade process is complete, a message similar to the following is displayed (example from a three-node cluster):
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
sudo kubectl get nodes Each server in your MediaCentral Cloud UX configuration should be listed under the name column and the status of each node should report as Ready. The following example text shows a four node cluster configuration:
NAME STATUS ROLES AGE VERSION wavd-mcux01 Ready control-plane,etcd,master 10m v1.27.9+k3s1 wavd-mcux02 Ready control-plane,etcd,master 10m v1.27.9+k3s1 wavd-mcux03 Ready control-plane,etcd,master 10m v1.27.9+k3s1 wavd-mcux04 Ready 10m v1.27.9+k3s1 b. If the previous command reports that all nodes are Ready, enter the following command to verify that the Kubernetes pods are running:
sudo kubectl --namespace kube-system get pods The command should report that each pod is Ready and Running as in the following example (from a single-server configuration):
NAME READY STATUS RESTARTS AGE coredns-5c6b6c5476-zrpvw 1/1 Running 0 30m metrics-server-7b67f64457-hq5wr 1/1 Running 0 30m c. Verify that the registry pods are ready and running:
sudo kubectl get po -n registry Example below from a single-server configuration:
NAME READY STATUS RESTARTS AGE registry-wftf2 2/2 Running 0 23h Upgrading To MediaCentral Cloud UX v2024.2 d. Verify that the cert-manager pods are ready and running:
sudo kubectl get po -n cert-manager Example below from a single-server configuration:
NAME READY STATUS RESTARTS AGE cert-manager-6664c2286c-88qgv 1/1 Running 2 (46h ago) 36m cert-manager-cainjector-5fffb-zxb68 1/1 Running 2 (46h ago) 36m cert-manager-webhook-74b58c8-d6cbk 1/1 Running 0 36m trust-manager-855b67d48c-fr58sk 1/1 Running 0 35m
> **Note:** The suffixes associated with the pod names are custom to each server and therefore will
coredns look different on each system. For example, will have a different suffix on your system.
All of the above should report Ready or Running prior to "Updating the Feature Packs" below.
Updating the Feature Packs This process uses the Avid MediaCentral Cloud UX Feature Pack ISO to upgrade the feature packs on the MediaCentral Cloud UX server or cluster. If you have a cluster, this process is completed on the primary node only.
To upgrade the Feature Packs:
1. Use a terminal application to log in to your single-server or primary node.
2. (if applicable) If you are using either Okta or Keycloak as an authentication provider, you must run
avidctl platform config auth oidc the script to update the auth.yaml file with the Client Scope and Claim Parser values that were introduced in MediaCentral Cloud UX v2024.2.
For details, see "Configuring an Authentication Provider" in the Avid MediaCentral | Cloud UX Installation Guide.
3. Enter the following command to unmount anything from the /features directory:
sudo umount /features
4. Mount the Feature Packs ISO (mediacentral_feature_packs_<version>.iso) to the /features
directory on your single server or primary node.
The command to complete this task varies based on how you connected the ISO to your server. If for example you copied the ISO file directly to the server, you would use the following command to mount the ISO on the system:
sudo mount -o ro /<path>/mediacentral_feature_packs_<version>.iso /features For information on alternative methods to mount an ISO to a Linux directory, see “Mounting an ISO Image” in the Avid MediaCentral | Cloud UX Installation Guide.
5. Use the following command to deploy the updated features included in this release:
sudo avidctl platform deploy -i The script checks the /etc/avid/config/ directory on the local node to verify the existence of the system configuration files. If the script finds the configuration files, it reports the status of each file [OK]. If the script cannot find the files, it alerts you to the situation and provides you with an opportunity to abort the installation and resolve the issue.
Upgrading To MediaCentral Cloud UX v2024.2
6. The script asks if you want to import features from the Feature Pack ISO.
a. Enter Y (or y) to import the updated feature packs from the ISO.
b. At the Path to Feature Packs prompt, press Enter to accept the default path of /features/feature-packs/.
You would only enter N (no) at this prompt if you wanted to use this script to redeploy the feature packs for the same version of software that you are already running. You must answer yes when performing a software upgrade.
7. Next, you must determine which feature packs should be upgraded, installed, or removed.
The script prompts you with a series of yes or no questions. Each prompt is associated with a default value which is identified as a capital Y for yes or N for no. If the script determines that the feature pack is already installed, the default value is Y. If the feature pack is not installed, the default value is N. Do one of the following:
- Press the Enter key to accept the default value.
- Press Y (or y) to upgrade or install the feature pack.
- Press N (or n) to skip or uninstall this feature pack.
If your existing installation includes a feature pack that you no longer want to use, you can enter N at the prompt to remove the feature pack from your existing installation.
The feature pack installation process begins. Be patient as this process can take some time.
8. After the installation is complete, you can use the following command to verify that the required
feature packs have been installed:
sudo helm ls The command should report 2024.2.0-v0218-G4d80624 as App Version for all upgraded components.
9. (recommended) Verify and if necessary, update your certificates.
As part of this upgrade process, Avid recommends that you verify the expiration dates of your deployed certificates. If you are nearing the certificate’s expiration date, you might want to take the opportunity to deploy a new certificate to avoid any potential connection issues for your users.
a. Verify your TLS certificate’s expiration date.
For more information, see “Verifying the SSL Certificate” and “Creating Certificate Files” in the Avid MediaCentral | Cloud UX Installation Guide.
b. Verify your Kubernetes certificate’s expiration date.
For more information, see “Understanding Kubernetes Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
10. Continue to "Updating MediaCentral Search" on the next page.
Updating MediaCentral Search Updating MediaCentral Search After upgrading your MediaCentral Cloud UX system software, you might be required to rebuild your search index. However, the type of rebuild process might vary depending on the individual release or your upgrade path. The following list describes the different rebuild types:
- Data: The Search Index must be rebuilt, based on the data included in the MongoDB database.
When rebuilding the data, the existing index remains and any searches conducted during this time return valid results.
To complete this process, refer to “Rebuilding an Index” in the “Using the Search Index Monitor App” chapter of the Avid MediaCentral | Cloud UX Installation Guide. For a Data rebuild, you are not required to delete the existing data before rebuilding.
- Mapping: A Mapping rebuild first recreates the data definition of the index, and then populates it
with new data. Effectively, a Mapping rebuild includes a Data rebuild. Whenever you are asked to complete a Data rebuild, you could do a Mapping rebuild instead. The disadvantage of the Mapping rebuild is that the Search index is deleted and then re-created. If you execute a search during this rebuild, the Search app returns only partial results until the rebuild is complete.
To complete this process, refer to “Rebuilding an Index” in the “Using the Search Index Monitor App” chapter of the Avid MediaCentral | Cloud UX Installation Guide. For a Mapping rebuild, you must select the “Delete all existing data” option during the rebuild process.
Phonetic: This process has no bearing on the text-based metadata. If you rebuild the phonetic
- index, the text metadata index remains unaffected.
To complete this process, refer to “Resetting the Phonetic Metadata Search Index”, in the Avid MediaCentral | Cloud UX Installation Guide.
If you are working in a Multi-Site environment, the following processes apply to the local MediaCentral systems only. If you upgrade your local site to the latest release, you are not required to touch the remote sites as part of the upgrade process. Similarly, if you upgrade Site-A to the current release, and then upgrade Site-B at a later date, you are not required to revisit or Site-A unless otherwise noted below.
I am upgrading Required Rebuild Type to version 2023.12 Mapping 2024.2 No rebuild required for this release If you are adding MediaCentral Phonetic Index to your environment as part of this upgrade, Avid recommends that you complete the process for “Installing Nexidia Search Grid” in the Avid MediaCentral | Cloud UX Installation Guide before resetting the search index. Since the Phonetic Index configuration process requires you to reset your search index, you can avoid re-indexing the system twice by completing the Phonetic Index integration first.
Fixed in Version 2024.2.0 Fixed in Version 2024.2.0 The following issues have been resolved in MediaCentral Cloud UX v2024.2.0.
Asset Editor Bug Number: MX-9646. In the Avid MediaCentral | Panel for 3rd Party Creative Tools, if you open an asset from the Search app, the Storyboard tab shows an "Asset is not loaded" message.
Bug Number: MX-9680. In the Storyboard tab, when you click in a marker comment and start typing or removing characters, the current cursor position is ignored and the edits are applied to the end of the comment.
Bug Number: MX-9704. (Production Management assets) Clicking on a marker in the Storyboard's segment list not only moves the playhead position but also sets the Mark In/Mark Out points on the Media Viewer's Timeline.
Bug Number: NEO-2617. Using a Sequence as a source asset for a replace edit into another Sequence might cause sequence corruption, resulting in the inability to save the sequence.
Bug Number: NEO-2928. The Asset Editor fails to display stratum overlay information as documented under "Displaying Stratum Annotation as Overlay" in the Avid MediaCentral | Cloud UX User's Guide.
Bug Number: NEO-2970, NEO-2972. If you save a sequence using the Save As feature, the new sequence might not load properly into the Asset Editor, or might appear as offline.
Bug Number: NEO-2973. When using the Save As feature to save a sequence to the same location as the original sequence, the Save button is unavailable.
Bug Number: NEO-2985. Asset Management shotlists created with SOC (start of content) or EOC (end of content) material might not be frame accurate when downloaded to your local workstation.
Bug Number: NEO-3145. If you make multiple adjustment to a timed graphic in the Sequence Timeline (such as altering the position or length of the graphic), the sequence might eventually disappear from the Sequence Timeline. When this happens, the Media Viewer displays a “Clip Load failed 1102, connection failed to server” error.
Bug Number: PLAD-884. Users might not be able to create a subclip from an EWC Production Management asset if the asset is included in a folder for which the user has Read-Only access. This is true even if the user attempts to create the subclip in a folder for which they have Write access.
Associations App Bug Number: MA-6849. Custom Production Management attributes are no longer shown in the Associations app (neither Card View nor List View).
Fixed in Version 2024.2.0 Bug Number: MA-6876. The system properties in the Display options list are not updated when you open an asset from another module, the Display options list continues showing system properties of the initial module.
> **Note:** This bug fix will reset the Display options and Sort order lists to default settings.
Browse App Bug Number: JP-9015. When accessing MediaCentral Cloud UX through panels, such as the MediaCentral | Panel for Media Composer, or the MediaCentral | Panel for 3rd Party Creative Tools, the Browse app inappropriately displays remote modules for sites connected through a Multi-Site environment.
Bug Number: JP-9033. (Multi-Site only) If a user creates a Browse favorite for a Remote site through a web browser (Chrome), the remote site is incorrectly visible to a user that accesses MediaCentral Cloud UX through a panel — such as the MediaCentral | Panel for Media Composer, or the MediaCentral | Panel for 3rd Party Creative Tools.
Clip Mover App Bug Number: FSP-11097. Occasionally, the Clip Mover app cannot initiate a transfer after connection issues. Now, a new retry functionality allows to mitigate temporary network issues when connection is unstable.
Bug Number: FSP-11102. After opening the Clip Mover app, the Clip Mover icon in the Fast Bar moves to the right, instead of staying in the same place.
Collaborate App Bug Number: GC-2051. If you attempt to create a new task and that process fails, the New Task (plus) button is disabled until you clear the error message.
Bug Number: MTTO-4251. The Collaborate app fails to send summary emails, even if the Email Settings are correctly configured in the Configuration Settings app.
Collaborate Mobile App Bug Number: LIZ-5129. If you add more than 50 team members, external contacts, or resources to a topic or assignment, the app displays randomly empty circles for the 51st and later entries when you revisit the list.
Collaborate Settings App Bug Number: APPSVCS-1476. In the Attributes panel of the Collaborate Settings app, you cannot filter the values of attributes of type “Dropdown” using special characters such as “()(+*” Instead of a results list, you will see a “values couldn’t be loaded” error message.
Fixed in Version 2024.2.0 Installation and Configuration Bug Number: ICS-10237. After installing or upgrading your system, the potential failure of certain pods might prevent you from signing into MediaCentral Cloud UX.
Bug Number: PRS-3538, PRS-3540. After installing Ubuntu kernel v5.15.0-133-generic through v5.15.0- 139-generic, you are unable to install or upgrade the MediaCentral Cloud UX feature packs.
avidctl platform For example, after accepting the default path for the feature pack mount in the deploy command, the script hangs — which prevents the feature pack installation.
Update: This issue has been addressed by Ubuntu in kernel v5.15.0-140-generic.
Prior Workaround: Prior to the availability of v5.15.0-140-generic, Avid provided the following steps to downgrade to a previous version of the Ubuntu kernel. As long as you upgrade to kernel v5.15.0-140- generic or later, the following process is no longer required. These steps remain documented for reference purposes only.
All steps in the following process apply to single-node configurations. If you are configured in a cluster, " (all)" indicates that the step must be completed on every control plane, and worker node individually.
1. Open a terminal and connect to your single-server or primary node.
2. (node1) Drain the Kubernetes managed services from the system:
sudo avidctl node drain --all This process stops all active containers and temporarily prevents the system from scheduling new ones.
3. (all) Bring the node offline:
sudo avidctl node offline -D
4. (all) Enter the following command to display all available kernels on your local system:
sudo grub-mkconfig | grep -iE "menuentry 'Ubuntu, with Linux" | awk ' {print i++ " : "$1, $2, $3, $4, $5, $6, $7}' Or as illustrated here:
The system should respond with an output similar to the following:
Sourcing file `/etc/default/grub' Sourcing file `/etc/default/grub.d/99-hardening-apparmor.cfg' Sourcing file `/etc/default/grub.d/99-hardening-audit.cfg' Sourcing file `/etc/default/grub.d/init-select.cfg' Generating grub configuration file ...
Found linux image: /boot/vmlinuz-5.15.0-133-generic Found initrd image: /boot/initrd.img-5.15.0-133-generic Found linux image: /boot/vmlinuz-5.15.0-124-generic Found initrd image: /boot/initrd.img-5.15.0-124-generic Warning: os-prober will not be executed to detect other bootable partitions.
Systems on them will not be added to the GRUB boot configuration.
Check GRUB_DISABLE_OS_PROBER documentation entry.
Adding boot menu entry for UEFI Firmware Settings ...
done 0 : menuentry 'Ubuntu, with Linux 5.15.0-133-generic' --class ubuntu Fixed in Version 2024.2.0 1 : menuentry 'Ubuntu, with Linux 5.15.0-133-generic (recovery mode)' 2 : menuentry 'Ubuntu, with Linux 5.15.0-124-generic' --class ubuntu 3 : menuentry 'Ubuntu, with Linux 5.15.0-124-generic (recovery mode)' This example shows that both 5.15.0-133-generic and 5.15.0-124-generic kernel versions are available.
5. Take note the menuentry number for your desired kernel version.
In the example above, "5.15.0-124-generic' --class ubuntu" is associated with menuentry number 2.
6. (all, if applicable) If the previous command reports that only kernel version 5.15.0-133-generic is
available, you can explicitly load the previous kernel version (v131). Enter each of the following commands:
sudo apt install linux-image-5.15.0-131-generic sudo apt install linux-headers-5.15.0-131-generic sudo apt install linux-modules-5.15.0-131-generic sudo apt install linux-modules-extra-5.15.0-131-generic
> **Note:** You must install the same version of each of these files. In this case, that is v5.15.0-131.
If you manually installed a new kernel, repeat the grub-mkconfig to display the updated menuentry values.
7. (all) Update the grub configuration file to allow you to boot into the previous kernel.
a. Enter the following command to open the grub file in the vi editor:
sudo vi /etc/default/grub The system displays the content of the file. Note the line that starts with GRUB_DEFAULT. The default value of this line is GRUB_DEFAULT=0.
b. Update the GRUB_DEFAULT value to the following:
GRUB_DEFAULT="1><value>" Where <value> is the menuentry number for your desired kernel version. In the example above where "5.15.0-124-generic' --class ubuntu" is the desired kernel version, you would enter:
GRUB_DEFAULT="1>2" c. Save and exit the vi session. Press <ESC> and type: :wq
> **Note:** If you install Ubuntu software updates following this procedure, you might need to revisit this
process to ensure that you are booting from your desired kernel.
8. (all) Update grub:
sudo update-grub
9. (all) Reboot your server.
10. (all) Following the reboot, verify that you are running your expected kernel version:
sudo uname -r The system prints the kernel version number to the screen.
11. (node1) Uncordon the nodes:
sudo avidctl node uncordon --all Fixed in Version 2024.2.0
12. Wait a few minutes and then enter the following commands to obtain the status of the Kubernetes
nodes.
a. Enter the following command to obtain the status of the Kubernetes nodes:
sudo kubectl get nodes Each server in your MediaCentral Cloud UX configuration should be listed under the name column and the status of each node should report as Ready. The following example text shows a four node cluster configuration (example version numbers might not reflect the versions included in this release):
NAME STATUS ROLES AGE VERSION wavd-mcux01 Ready control-plane,etcd,master 10m v1.29.8+k3s1 wavd-mcux02 Ready control-plane,etcd,master 10m v1.29.8+k3s1 wavd-mcux03 Ready control-plane,etcd,master 10m v1.29.8+k3s1 wavd-mcux04 Ready <none> 10m v1.29.8+k3s1 b. If the previous command reports that all nodes are Ready, enter the following command to verify that the Kubernetes pods are running:
sudo kubectl --namespace kube-system get pods The command should report that each pod is Ready and Running as in the following example (from a single-server configuration):
NAME READY STATUS RESTARTS AGE coredns-5c6b6c5476-zrpvw 1/1 Running 0 30m metrics-server-7b67f64457-hq5wr 1/1 Running 0 30m c. Verify that the registry pods are ready and running:
sudo kubectl get po -n registry Example below from a single-server configuration:
NAME READY STATUS RESTARTS AGE registry-wftf2 2/2 Running 0 23h d. Verify that the cert-manager pods are ready and running:
sudo kubectl get po -n cert-manager Example below from a single-server configuration:
NAME READY STATUS RESTARTS AGE cert-manager-6664c2286c-88qgv 1/1 Running 2 (46h ago) 36m cert-manager-cainjector-5fffb-zxb68 1/1 Running 2 (46h ago) 36m cert-manager-webhook-74b58c8-d6cbk 1/1 Running 0 36m trust-manager-855b67d48c-fr58sk 1/1 Running 0 35m
> **Note:** The suffixes associated with the pod names are custom to each server and therefore will
coredns look different on each system. For example, will have a different suffix on your system.
MediaCentral | Hoverscrub Bug Number: PLAD-378. When adding 16x9 DV25 media to a news sequence, the proxy media is created in a 4x3 aspect ratio.
Fixed in Version 2024.2.0 MediaCentral Sync Bug Number: SAK-3109. Continuous MediaCentral Sync jobs might get stuck in a Running state if the remote import metadata step fails.
Rundown App Bug Number: MA-6782. Previously, when dropping text into the story body, the story was automatically locked, but that lock did not occur when dropping text in a production cue. Now, the Rundown App locks the story when a user drops text in either location.
Bug Number: MA-6785. If you use the right splitter to resize a column, expanding it beyond the visible area of the Queue grid, you may not be able to horizontally resize it any longer.
Bug Number: MA-6827. Previously, audio duration or audio recalculations would not align properly between the Rundown App and Newsroom Management Server.
Bug Number: MA-6833, MA-6851, MA-6853, MA-6902. If you use Ctrl + drag and drop to create a copy of a story text in the Rundown app that includes production cues, the duplicate might be created with cues that have identical anchors IDs instead of unique IDs.
Bug Number: MA-6850. Reloading a queue with stories after entering an invalid value in a RUNS production cue will no longer prevent stories from loading.
Bug Number: MA-6858. Newsroom Management queues that include a large number of stories might take longer than expected to load into the Rundown app if those stories reference a large number of offline or unavailable sequences.
Bug Number: MA-6894. Previously, users would sometimes experience a noticeable lag when moving or removing a bulk of stories, with sequences attached, from a queue with more than 200 stories in it.
Search Bug Number: JP-8948. The Search app's Dates search type might not display certain relative date options, such as Last <value> Days, or Weeks when conducting a search against any Asset Management that originated from an original installation of v2020.9 or later.
Bug Number: JP-9030. The Search app incorrectly calculates timecode values. This results in a mismatch between the correct values that are displayed in the Browse app, to the incorrect values in the Search app.
Bug Number: RCTR-2455. MediaCentral Cloud UX does not correctly sort assets in either the Browse or Search app when sorting a mix of drop-frame and non-drop-frame assets by the Duration column.
System Bug Number: MAM-19869. The Location Service returns wrong endpoint types for "Local" types.
Limitations and Defects Found in Version 2024.2.0 Bug Number: PLAD-877. As documented in the MediaCentral Cloud UX Installation Guide, the avidctl tools hoverscrub-clean script fails to clean the Hoverscrub cache due to a change in folder structure.
Bug Number: PRS-2567. MediaCentral Cloud UX 2023.12 changed the pod log rotation to reset on a daily basis. This fast rotation schedule can impact Customer Care's ability to efficiently troubleshoot the MediaCentral Cloud UX Installation.
This release changes the log rotation back to a weekly value automatically during the upgrade process.
Bug Number: PRS-2667. The platform-locations feature pack is only installed when the AWS Elemental (aws-elemental) feature pack is installed.
Now, the platform-locations feature pack is also installed when the AWS S3 Storage Connector (aws- storage), Azure Storage Connector (azure-storage) or GCP Storage Connector (gcp-storage) feature packs are installed.
System Monitoring Bug Number: PRS-2668. The System Monitoring feature pack fails to deploy properly as the monitoring- elasticsearch pod fails to start..
Bug Number: PRS-2718. Fluent Bit, the log aggregation layer of System Monitoring, does not have the correct permissions to access /var/log/containers. As a result, System Monitoring is non-functional in this MediaCentral Cloud UX v2023.12.
User Management / Licensing Bug Number: AL-2676. While licensing NEXIS | EDGE, and activating Online (meaning with “Online” selected), the Offline “Browse” options are displayed in the user interface.
Limitations and Defects Found in Version 2024.2.0 This section includes information on known limitations and defects related to MediaCentral Cloud UX.
Asset Editor Bug Number: NEO-2709. If you load a saved sequence into the Asset Editor and attempt to overwrite edit a new asset into the sequence using drag and drop from the Media Viewer, the edit might attempt to overwrite the sequence's existing media.
Workaround: You can avoid this issue by doing either of the following:
Move the blue position bar to the end of the sequence and then click either the Insert or Overwrite
- button in the Sequence Timeline to complete the edit.
- Drag the asset to the end of the sequence — beyond the final frame — to drop the asset into the
empty space on the timeline.
Bug Number: NEO-2813. After a prolonged period of editing and viewing Maestro graphic templates, you might experience slowness when viewing Maestro graphic previews in the player viewer. Issue relates to Avid Maestro ticket number: MAESTRO-7246.
Limitations and Defects Found in Version 2024.2.0 Workaround: To increase system performance, Avid recommends as best practice to create all templates with a preview frame set. This might require you to recreate any existing graphic templates that do not include a preview frame.
If you are experiencing this issue and need a fast (but temporary) solution, you can delete the playback pod to restore responsiveness. For detailed instructions, see "Working with Kubernetes" in the Avid MediaCentral | Cloud UX Installation Guide.
Bug Number: NEO-3000. When playing close to the tail of an EWC asset, the asset’s audio might drop out and playback might be silent.
Workaround: Reload the asset and resume playback. The issue might return if begin playback near the end of the EWC Asset.
Bug Number: NEO-3150. Dual-resolution (Hi-Res and Proxy) EWC (Edit While Capture) media might not be playable in the Media Viewer until the asset is completely online and the media reloaded.
Bug Number: NEO-3159. If you load an Asset Management document asset that includes a Preview into the Asset Editor, and then you load a different document asset that does not include a Preview, the original asset's preview continues to be displayed in the Media Viewer.
Bug Number: NEO-3164. If you load a group clip from a shotlist into the Media Viewer, via double-click or the 'Load Clip' item in the context menu, the correct angle might not be shown.
Collaborate App Bug Number: MA-6898. After entering the maximum amount of characters or formatting for a single Note, the Collaborate app allows you to continue typing after you dismiss the warning. This results in multiple new overlapping warning messages.
Bug Number: APPSVCS-1494. The Collaborate app returns with an "Bad Request" message if you attempt to filter topics or assignments in the New Assignment, or New Task windows using any of the following special characters: ) ( + * Bug Number: GC-2159. The Collaborate app returns with an "Internal Server Error" message if you attempt to filter Contacts or Resources using any of the following special characters: ) ( + * Bug Number: APPSVCS-1551. If you enable the Collaborate feature pack during a new installation of MediaCentral Cloud UX, the avid-ca-items pod might enter a CrashLoopBackOff state. This issue prevents the Collaborate app from initializing successfully.
Workaround: Complete the following steps to resolve this issue.
1. Connect to your on your single-server or primary node and enter the following command to confirm
the status of the pod:
sudo kubectl get po | grep -n Crash The system reports the status any item with a CrashLoopBackOff status. For example:
Limitations and Defects Found in Version 2024.2.0 avid@wavd-mcux:~$ sudo kubectl get po | grep -n Crash 216:avid-ca-items-ca-678dd-jmng7 0/1 CrashLoopBackOff 4168 (4m ago) 9m 216:avid-ca-items-ca-678dd-xldfm 0/1 CrashLoopBackOff 4168 (4m ago) 9m If the pod reports a CrashLoopBackOff status, continue to the next step.
2. Enter the following command to stop all instances of the service:
sudo kubectl scale --replicas=0 deployment/avid-ca-items-ca
3. Clean the MongoDB database:
sudo aviddbctl mongo db-drop ca-items-v2
4. Enter the following command to restart the service:
sudo kubectl scale --replicas=<N> deployment/avid-ca-items-ca Where <N> equals the number of instances of the service that were reported in step 1 above. For example, the following example starts two instances of the service:
sudo kubectl scale --replicas=2 deployment/avid-ca-items-ca MediaCentral Acquire Bug Number: CCUX-9270. Avid | Stream IO templates without a local media copy are not supported. For more information, see the "Recording with MediaCentral | Acquire" topic in theAvid | Stream IO User's Guide v2024.2.
Router Control Settings App Bug Number: CCUX-9223, CCUX-9225. The Router Control Settings app inverts the Source and Destination columns for the Evertz Quartz protocol which makes interaction with this router impossible.
Bug Number: CCUX-9473. MediaCentral Cloud UX Router Control currently does not support the serial connection type.
Workaround: Use Ethernet connection when configuring Router controllers.
Search App Bug Number: JP-9003. When downloading search results as a PDF, the content of the PDF might appear corrupted if your User Settings are configured for a language other than English.
System Bug Number: ICI-4652. If you configure and deploy Avid NEXIS API Services, the Avid NEXIS system might not appear in the Browse and Search apps in some rare cases.
Workaround: If your Avid NEXIS storage is unavailable, do the following:
1. Enter the following command on your single server or primary cluster node to determine the status
of the Kubernetes Persistent Volume Claim:
sudo kubectl get pvc media-share If the response indicates that the media-share pod has a status of Terminating, then you might be encountering this issue.
2. Contact Avid Customer Care for additional instructions on how to resolve this issue.
Limitations and Defects Found in Earlier Versions Bug Number: ASSETS-4281. The PAM CTC Redundancy changes introduced in MediaCentral Cloud UX v2023.12 resulted in unforeseen compatibility issues. As a result, this feature has been removed from v2024.2 and pam-ctc acts as a single instance service – as was standard in MediaCentral Cloud UX v2023.7 and prior.
User Settings Bug Number: JP-9085. The Notifications section of the User Settings might fail to load, instead producing the following error: "We encountered a problem and activity notifications couldn't be loaded. Please try again." Workaround: In some cases the act of signing out and back in to MediaCentral Cloud UX can temporarily resolve this issue.
Limitations and Defects Found in Earlier Versions Limitations and defects in are organized in the following sections:
Limitations and Defects Found in Version 2023.12.0 32 Limitations and Defects Found in Version 2023.7.0 36 Limitations and Defects Found in Version 2023.3.0 37 Limitations and Defects Found in Version 2022.12.0 38 Limitations and Defects Found in Version 2022.3.0 40 Limitations and Defects Found in Version 2021.11.0 40 Limitations and Defects Found in Version 2021.3.0 41 Limitations and Defects Found in Version 2020.9.0 42 Limitations and Defects Found in Version 2020.4.2 43 Limitations and Defects Found in Version 2020.4.0 43 Limitations and Defects Found in Version 2019.9.11 44 Limitations and Defects Found in Version 2019.9.5 44 Limitations and Defects Found in Version 2019.9.1 44 Limitations and Defects Found in Version 2019.9.0 45 Limitations and Defects Found in Version 2019.6.0 46 Limitations and Defects Found in Version 2019.2.0 48 Limitations and Defects Found in Version 2018.11.0 49 Limitations and Defects Found in Version 2018.6.0 49 Limitations and Defects Found in Version 2023.12.0 This section includes information on known limitations and defects related to MediaCentral Cloud UX.
Limitations and Defects Found in Earlier Versions Asset Editor Bug Number: MAESTRO-7206. If you load a graphic assets into the Asset Editor and then load a new graphic into the Asset Editor from the Rundown app, the Metadata tab does not update. It continues to display metadata for the original asset.
Bug Number: NEO-2358. Depending on your cursor position or selection, the Variable Speed Playback settings in the Workflow Settings app might not always interpret the use of a decimal point correctly.
Workaround: If you cannot enter your desired value, use the arrows to adjust the playback speed.
Bug Number: NEO-2654. The Trim Tail command is mistakenly available when parked on the last frame of the last segment in a sequence.
Bug Number: NEO-2927. If you are disconnected from your session while editing a news sequence, the Sequence Timeline might not render correctly after selecting the Recovered sequence. Track labels (VIDEO, NAT, SOT, VO) might disappear, and the Recovered and Saved buttons might stop to function normally.
Workaround: You can restore the track labels by signing out and back in to MediaCentral Cloud UX. In this case the recovered sequence might not be restored correctly. However if the sequence was saved even once before the disconnect, this issue is not reproducible.
Bug Number: NEO-2950. When adding an End at Cut video dissolve to the last segment of a sequence, the video does not fade completely to black.
Bug Number: NEO-2966. If you load an asset into the Asset Editor, change the IN and OUT marks on that asset, load a different asset into the Asset Editor, and then drag the original asset from the Browse app to the Sequence Timeline, the edit does not respect the updated IN and OUT marks.
Workaround: Drag the asset from the Asset Editor instead of from the Browse app.
Bug Number: NEO-2967. You cannot use the keyboard to enter some values in the Output Reference Level section of the Video/Audio User Settings.
Workaround: If you cannot enter your desired value, use the arrows to adjust the level.
Bug Number: NEO-3009. If you attempt a replace edit, it will not respect track mappings.
For example, if you map Source V1 to Destination V2 and attempt to replace the segment in V2, the Source does not follow the track mapping, and the Replace puts the source material onto Track V1. The same holds true for audio tracks. All replace edits use the source material’s tracks, and do not follow the track mapping.
Workaround: Mark an IN and OUT point on the source asset that matches the duration of the destination segment that you want to “replace”. But, instead of selecting Replace, select Overwrite.
Limitations and Defects Found in Earlier Versions Collaborate Settings App Bug Number: MC-1563. If you create and save an attribute with a dropdown list and associated values, delete that attribute, and later create another attribute with the same alias, the new attribute is populated with the dropdown list from the original deleted attribute.
Workaround: Manually delete the dropdown list or unwanted values from the new attribute.
Installation and Configuration Bug Number: PRS-2539. The upgrade of mediaanalytics and avid-azure-storage-connector from 2023.7.x to 2023.12 might fail.
Workaround: If the deployment fails, remove the following feature-packs and re-add them.
avidctl platform deploy -i
1. Run the script and say No at the following prompts:
  - Do you want to deploy azure-storage pack (platform-azure-storage)? [y/N]: n
  - Do you want to deploy aws-mediaanalytics pack (platform-aws-mediaanalytics)? [y/N]: n
  - Do you want to deploy mediaanalytics pack (platform-mediaanalytics)? [y/N]: n
avidctl platform deploy -i
2. Run the script and say Yes at the following prompts:
  - Do you want to deploy azure-storage pack (platform-azure-storage)? [Y/n]: y
  - Do you want to deploy aws-mediaanalytics pack (platform-aws-mediaanalytics)? [Y/n]: y
  - Do you want to deploy mediaanalytics pack (platform-mediaanalytics)? [Y/n]: y
Bug Number: PRS-2560. It is possible for the avidctl platform host-upgrade script to fail at the TASK [gluster-disk : stat] step if the service is not ready in time.
Workaround: If your upgrade fails at this point, complete the following process to add a retry check to the process.
1. Open the following file for editing:
sudo vi /opt/avid/service-host/roles/gluster-disk/tasks/gluster.yml
2. Add the following lines to the file under the line that reads "register: mount_dir":
until: mount_dir.stat.isdir is defined and mount_dir.stat.isdir retries: 20 delay: 10 You must ensure to correctly indent these new lines so that they align with"register" line.
3. Save and exit the vi session. Press <ESC> and type: :wq
4. Return to the process for "Updating the Platform" on page 17, and repeat the avidctl platform host-
upgrade step.
Bug Number: NEO-3034. If you upgrade an existing single-node installation to a cluster, the upgrade process does not replace the single-server hostname with the cluster's virtual host in avid-common- params. This can lead to playback issues after the upgrade is complete.
avidctl platform config This same issue can occur if you alter the issuer FQDN when running the site-key command.
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
MediaCentral Acquire Bug Number: CCUX-8885. When crossing DST change, and setting the Zoom bar range to 4 days or more, the ruler labels disappear.
Bug Number: CCUX-8986. Data tracks recorded by a video server to MediaCentral | Production Management destinations are not present in the created assets. For workflows that do not rely on data tracks information, you can configure your video servers to stop recording ancillary data to prevent writing unregistered files on a shared storage. For more information, see "The ANC Settings" topic in the Avid | Stream IO User's Guide.
Bug Number: CCUX-8997. When configuring ingest templates on a video server, a separate template needs to be created for each Asset Management system. When scheduling recordings in Acquire, users need to select the correct template for the used Asset Management system.
MediaCentral Sync Bug Number: SAK-1620. If MediaCentral Sync encounters an invalid User Mapping configuration in the local MediaCentral Cloud UX Configuration Settings app, the sync job might fail with a misleading “Internal service error” message.
User Management / Licensing The following do not currently support integration with OpenID providers, such as Okta:
- MediaCentral | Asset Management
- MediaCentral | Newsroom Management
- Avid MediaCentral | Panel for Media Composer
- Publisher
Bug Number: ICI-4568. Users might be redirected back to the MediaCentral Cloud UX welcome page after an attempted sign-in. This might occur in a MediaCentral Cloud UX system that is configured to authorize against an IDP provider, and the user's user group is not assigned a license in the License app.
The expected behavior is that the system displays an error message that alters the user to the missing license.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2023.7.0 Installation and Configuration Bug Number: PRS-3024. The Avid NEXIS Client v2024.5.0 updated the communication protocol from HTTP to HTTPS. This change might cause the Avid NEXIS system to appear greyed-out in the Browse app. This issue affects any workflow that leverage Avid NEXIS API Services – such as the Avid MediaCentral | Panel for 3rd Party Creative Tools.
Workaround: Complete the following process to manually reconfigure the MediaCentral Cloud UX system to use HTTPS.
1. Sign in to the Kubernetes Dashboard.
For more information, see “Working with Kubernetes” in the Avid MediaCentral | Cloud UX Installation Guide.
2. Use the Search function at the top of the Dashboard to search for the avid-nexis-admin-core pod’s
Config Map.
3. Open the Config Map for editing and update the AVID_NEXIS_ADMIN_URL value.
You need to update the URL to use https. For example:
Update "AVID_NEXIS_ADMIN_URL": <http://<system_name>:80/api, to "AVID_NEXIS_ADMIN_URL":
<https://<system_name>:443/api
4. Click the Update button to confirm your change.
5. Finally, delete the avid-nexis-admin-core pod to force Kubernetes to recreate it, using the new
value.
> **Note:** This change is temporary as Config Map changes are not retained during software upgrades or
redeploys.
MediaCentral Sync Bug Number: SAK-2586. After completing a Sync, some assets might appear online in the Target database. In some cases the media might not actually be available on the target storage for these online assets.
Workaround: After completing a Sync task, perform an Update From Media Indexer on the synchronized destination folders in Interplay Access to verify the correct status of all sync’ed assets.
Phonetic Index Bug Number: ICI-4980. The MediaCentral Production Management Search Connector is limited to indexing 1, 2, or 4 audio tracks. This excludes a three track configuration, or any configuration that includes five or more tracks. This is contrary to the 1 – 64 track options as described in the “Reviewing the Phonetic Indexing Tab” section of the Avid MediaCentral | Cloud UX Installation Guide.
Avid continues to support the configuration of multiple layouts. For example, you could configure the system to index tracks 1-6 by configuring three layouts for tracks [1, 2] and [3, 4] and [5, 6]. Or alternatively configuring two layouts: one for tracks [1, 2] and another for tracks [3, 4, 5, 6]. In contrast, the creation of a single layout that includes only tracks [1, 2, 3] would not be supported.
Publisher App The Publisher app does not currently support integration with OpenID providers, such as Okta.
Limitations and Defects Found in Earlier Versions Rundown App The show timing clocks in the Rundown App only work with the real workstation time, not when timing to duration, or if someone uses the Set Clock option at an iNEWS Workstation to manually alter the time prior to the on-air timing of a show.
Limitations and Defects Found in Version 2023.3.0 Asset Editor Bug Number: NEO-2402, JP-8648. When you open the Save To drop-down list of the Create Subclip dialog box, the default folder defined in the User Settings is not selected but the focus is set to the bottom of the list. You can scroll upwards but when you start scrolling downwards, the focus jumps back to the bottom of the drop-down list.
Bug Number: NEO-1961. If your server's host name starts with an a, b, c, d, e, or f, the Asset Editor displays the following error message when attempting to play an asset: Player Error : 1102 "<hostname>" is not valid hostname.
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
Limitations and Defects Found in Earlier Versions Bug Number: CCUX-7039. MediaCentral Cloud UX does not support EWC (Edit While Capture) of incoming MediaCentral Stream OP1a files. You must wait for the asset to be complete before you can play, STP, or edit the asset.
Bug Number: CCUX-4948. Scheduling repeating recording series that cross the autumn DST, switches the recording +1 hour ahead in DST.
User Management Bug Number: PLAD-834. If a user opens two MediaCentral Cloud UX sessions in the same browser (one in a standard tab, and another in an Incognito tab) and then the user signs out of the session in the standard tab, the session in the Incognito remains connected. If an administrator applied a Quota to the user group, the quota count is decreased by one — even though the user is still connected through the Incognito session. This unsupported workflow might allow users to exceed the Quota value.
Bug Number: PLAD-827. Disabling the Process app for a user group does not remove the app from the MediaCentral Cloud UX user interface.
Limitations and Defects Found in Version 2022.12.0 Asset Editor Bug Number: NEO-1872. If you use a sequence as a source that has custom audio level adjustments, those level changes are not retained when you edit the asset into a new sequence.
Collaborate App Bug Number: GC-1274. You cannot use keyboard shortcuts to select multiple topics in the Planner.
Workaround: Use your mouse in combination with either the Shift or Ctrl keys to select multiple topics.
MediaCentral Acquire Bug Number: CCUX-6591. Depending on dividers, some shortcuts (e.g., dash “-”, dot “.” and underscore “_”) may not work for FastServe recordings.
Bug Number: CCUX-6588. Recording will fail to resume when FastServe Ingest restarts OVS using the web settings page. You need to restart Clip Manager to be able to record again with Acquire.
Bug Number: CCUX-6519. There is no check-in in Acquire after 10 hours of work with auto-tool.
Bug Number: CCUX-6454. When you change the Name or the Comment when working on a failovered MediaCentral | Stream, the recording is not updated with the information you entered.
Bug Number: CCUX-6271. In the Acquire Admin app, when you select the Production Management WebServices, tab, you cannot see tooltip when inputting incorrect data for the IP address and port number.
Limitations and Defects Found in Earlier Versions Bug Number: CCUX-5358. In the Event Log Panel, the entry for minutes (of the Search range) is blocked if the value is incorrect (date / time component issues).
Bug Number:CCUX-5373. In the Acquire Admin app, when you select the Channels Configuration tab, the order of values displayed in the Crosspoints field is now sorted by Output number in ascending order.
Bug Number:CCUX-5372. In the Acquire Admin app, the user can make changes in the application without saving, and then come back to the Acquire Admin App and the app is “reopened” in the place and validation state the user left it. And the Save button is available giving the possibility to misconfigure the application and lead to problems using the Acquire app.
Bug Number:CCUX-5176. In the Acquire Admin app, Scheduling options, the user can define default durations longer then the Maximum duration.
Bug Number: CCUX-6592. There is an issue where sometimes the finished MediaCentral Stream Recording does not get checked in.
Bug Number: CCUX-6589. The colors of FastServe Ingest recordings are different on different zoom selections. The color of the recording should be the same for each zoom selection.
Bug Number: CCUX-6556. In the Recording Details | New window, the End date selector is blocked if the Duration is 00:00:00 and the end time is invalid (CET > CEST).
Bug Number: CCUX-6650. You are able to open the Recording Details | Edit window for a past recording by Alt + clicking on the past recording.
Bug Number: CCUX-6605. Helpers no longer work with Feature Pack 590. As provided, the following helpers should show certain criteria when used as a clip name:
$t $T $d $D $w $W $s $S MediaCentral Sync Bug Number: AL-1466. If you change the members of a Sync Group and you have one or more Sync tasks configured for that group, the tasks and the related configuration settings are lost after changing the group membership. For more information, see "Configuring Synchronization Groups" and "Configuring Synchronization Tasks" in the Avid MediaCentral | Sync Administration Guide.
Bug Number: SAK-2178. Tasks might fail to sync media assets if the job is in process during an upgrade.
Workaround: Administrators must pause all sync jobs prior to upgrading to v2022.12.
Search App Bug Number: JP-6980. Attempting to move an asset from the Search app to the Browse app results in the following error: "This item cannot be moved to the destination folder." Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2022.3.0 Asset Editor Bug Number: NEO-1540. If you switch to a different Chrome tab and then back to MediaCentral Cloud UX, some areas of the Asset Editor might disappear from the user interface.
For more information, see https://bugs.chromium.org/p/chromium/issues/detail?id=591374.
Workaround: If you encounter this issue, you can disable the Accelerated 2D Canvas option:
1. Open a new tab in your Chrome browser and navigate to: chrome://flags/
2. Disable the feature.
3. Relaunch Chrome to enable the change.
Hoverscrub Bug Number: PLAD-728. In some cases, Hoverscrub might display a Media Offline slide for online media.
Workaround: If you confirm that your media is online, you can regenerate the Hoverscrub proxy by completing the following steps:
1. Use a terminal application to log in to your single-server or primary master node as the root user.
2. Enter the following command to delete the Hoverscrub pod:
kubectl delete po -l feature=hoverscrub
3. Clean the Hoverscrub cache:
avidctl tools hoverscrub-clean -s For more information, see “Cleaning the Hoverscrub Cache” in the Avid MediaCentral | Cloud UX Installation Guide.
Legal List Administrator App Bug Number: ICI-3996. Icons configured for legal list entries are only used within the Legal List Administrator app and do not show up in the MediaCentral Cloud UX UI.
This affects all MediaCentral Cloud UX versions back to v2019.9.
System Bug Number: PLAD-803. If the avid-local-job-proxy service is unavailable at any remote site in a Multi-Site configuration, the avid-local-job-proxy service on the local site might crash. If this occurs, the Process app might not display updates for any Deliver-to-Me jobs initiated from the local site. If the remote service stays offline for an extended period of time, the service crash and restart cycle might create resource issues on the local site over time.
Limitations and Defects Found in Version 2021.11.0 Collaborate Mobile App Bug Number: LIZ-4985. (Android only) New assignments and topics are not displayed automatically in the following scenarios:
Limitations and Defects Found in Earlier Versions New assignments do not appear in the Assignments tab (Planner screen) after you create the
- assignment and then immediately add a task to it.
- New topics do not appear in the Topics tab (Planner screen) after adding an assignment to it.
- New assignments do not appear in the Assignments list in the Assignment Landing Zone.
Workaround: In all cases, you can swipe down to refresh the list and see the newly created topic or assignment.
Bug Number: LIZ-4988. (Android only) After associating an assignment with a different topic, the assignment might not appear in the Assignments list in the Planner tab.
Workaround: Swipe down to refresh the list.
Bug Number: LIZ-5156. If you use the default Assignment Landing Zone value in the New Assignment window, you might receive a “No parent topic” error when saving the assignment.
Workaround: If you want to associate a new assignment with the Assignment Landing Zone during the process of creating a new assignment, select the Assignment Landing Zone from the All Topics list.
Legal List Administrator App Bug Number: UIR-10535. When you change the icon for a legal list entry and save the change, the old icon is still shown after switching to another legal list and back.
Workaround: Clear the Chrome browser cache and sign-in again to the MediaCentral Cloud UX Administrator app. The changed icon will now be shown for the legal list entry.
Limitations and Defects Found in Version 2021.3.0 Asset Editor Bug Number: NEO-751. When switching between Source and Record monitor, the information in the Metadata tab is reloaded, but not if you have an Asset Management image asset and shotlist open. In this case, metadata is not reloaded but an “Asset is not loaded” message is shown instead.
Bug Number: NEO-608. Playback of media assets might not be detected as an “active” operation by your local workstation. If you do not interact with the user interface in any other way, your operating system might activate a screen saver, screen lock, or other.
Bug Number: ICI-3252. MediaCentral Cloud UX might not be able to play Production Management assets that are contained in either the Orphaned Clips folder or Private folders (right click on the folder in Interplay Access, select Security > Private). This issue appears if the user that is identified in the pam.yaml configuration file does not have administrator-level privileges in the Production Management database.
Workaround: If you must play assets that are located in these folders, elevate the user that is identified in the pam.yaml configuration file to an administrator in the Production Management database.
Bug Number: NEO-253. If you attempt to delete a segment from a Sequence without first enabling the associated track, the segment is not deleted.
Workaround: Enable the track in the Sequence and then delete the segment.
Limitations and Defects Found in Earlier Versions Bug Number: MX-8525. Metadata tab: When in edit mode, you cannot highlight the entire value of a property of type date, date-time, and time.
Installation and Configuration Bug Number: PRS-435. You cannot login to Grafana (part of System Monitoring) if you include a comma or potentially other special characters in any individual Bind Name value during the process of running the authentication provider script.
Bug Number: ICI-3404. After you upgrade to a new version of MediaCentral Cloud UX, users might see an “Error: Module loading failed because of a backend issue.” message after accepting the End User License Agreement (EULA).
Workaround: If this occurs, it happens only once after accepting the ELUA. You can eliminate the error and continue to MediaCentral Cloud UX by refreshing your browser page.
Search Bug Number: None. (Asset Management) Version 2021.3 adds support for showing labels for taxonomies in Search results. This is only supported for Asset Management systems v2021.3 and later. For any remote Asset Management system that is running a version of software prior to v2021.3, the Search results do not show taxonomy labels but the IDs of the taxonomy entries.
System Bug Number: MC-589. Several MediaCentral Cloud UX list and grid views use “lazy loading” to display the contents of folders, search results, containers, etc. This behavior causes issues when applying a multi- selection to a range of items where some of those items are not, yet, loaded. For example, if you select the first asset in a folder and do a fast scroll to the end to select the last one, there will be pages in between the selection which are not loaded and therefore will not get added to the multi-selection.
Drag and drop and other operations (such as attaching the selection to a process creation template) will not properly work as expected.
Workaround: Scroll slowly to make sure that all assets are visible on the UI and no asset shows the status “Loading….”.
Limitations and Defects Found in Version 2020.9.0 Asset Editor Bug Number: MPLAY-4020. If you add a marker with the maximum comment size to an asset in MediaCentral Cloud UX, work the same asset in Media Composer (deleting at least one maker in the process), and then check that asset back into Interplay Production — the asset fails to load into the Media Viewer of the Asset Editor.
Collaborate App Bug Number: None. If you remove a user from the Collaborate Active Directory user group, the user is not removed from the list of contacts in the Collaborate app. Although this user will not be able to access the Collaborate app, employees can still add this contact to new topics or assignments.
Limitations and Defects Found in Earlier Versions Installation and Configuration Bug Number: MAM-16491, FF-2079. If you are using an Enterprise Editing workflow and you upgrade to a version of MediaCentral Cloud UX that introduces the Sync Job Distributor into your environment, you must open and save the Sync Job Distributor settings prior to synchronizing your first draft sequence.
Search Bug Number: RCTR-1673. Sorting the results of a search by selecting a value in the Sort By menu displays different results than if you select the same Sort By value in the Browse app.
Limitations and Defects Found in Version 2020.4.2 Search App Bug Number: JP-7171. When reorganizing favorites or folders within the Search Favorites, the app might not prompt you with the blue position indicator when trying to drop a favorite (or folder) to the last position of a folder that contains a sub-folder.
Workaround: To move the item to the end of the folder, collapse the folder in the Favorites tree structure and drop the item on top of the collapsed folder.
Limitations and Defects Found in Version 2020.4.0 Associations App Bug Number: MA-5583. When you select several associated assets in the Associations area, then press the Ctrl key and start dragging, the asset that is used for dragging is excluded from the selection and its association is not copied.
Workaround: First start dragging the selection and then press the Ctrl key.
Browse App Bug Number: MPLAY-3933. If you save an empty sequence, an audio-only sequence, or a sequence where the media for the first segment is offline, the Browse and Search apps display a question mark in the Thumbnail column of the app.
Bug Number: JP-4216. The Search app might display referenced Production Management assets in the search results list. As the Browse app is unable to display referenced assets, the app displays the following error message if you attempt to open the asset in the Browse app:
“Asset cannot be found. The asset might have been recently deleted, might exist as a referenced asset only, or other.
Publisher Bug Number: AWM-134. Audio drops off on Media Composer sequences that contain dissolves at the beginning.
Workaround: Try mixing down the sequence prior to sending it.
Limitations and Defects Found in Earlier Versions Search Bug Number: RCTR-1546. The Search app does not support CBA rules with a “WITH” operator (two sub attribute criteria match in the same row).
Limitations and Defects Found in Version 2019.9.11 Graphics Bug Number: OS-6564. If you associate a story in the Rundown app with a shotlist, you are allowed to add graphics to the story as standard production cues. However, graphics are not associated with a shotlist in the same way as they are in a news sequence. As a result, the graphic tracks are not displayed in the Sequence Timeline and the Burn Graphics feature in the STP > Quick Send menu is unavailable.
Workaround: If you want to send the sequence to playback with burned-in graphics, you must associate the story with a news sequence (shotlists not supported).
Bug Number: OS-7222. If the frame rate of your Maestro News system does not match the frame rate of your MediaCentral Cloud UX sequence, timed graphics might appear off by a few frames in the Asset Editor Media Viewer and the Sequence Timeline.
Workaround: Update the SystemSettings.ini file on your Avid Maestro News system so that the frame rate matches your sequence. This file is generally located at the following path:
C:\Program Files\Avid\MaestroNewsServices\<version> The aspect ratio and the frame rate of sequences created in MediaCentral Production Management are determined by the first clip that you add to the sequence. Any additional clips can have a different resolutions but must match the initial frame rate. For more information, see “Creating a Sequence” in the Avid MediaCentral | Cloud UX User’s Guide.
Limitations and Defects Found in Version 2019.9.5 Asset Editor Bug Number: OS-6480. If you open the Media Viewer in Full Screen mode and then attempt to access the STP function of the Quick Send menu, the overlay window is displayed behind the full screen viewer, essentially hiding the user interface.
Workaround: If you want to access the Quick Send > STP options, you must exit Full Screen mode.
Bug Number: MX-7802. In the Storyboard tab, if you click in the Comment field that contains a large amount of text, scroll through the text, and then start typing, the text will not scroll back to the current cursor position. As a consequence, you do not see the text that you are typing.
Limitations and Defects Found in Version 2019.9.1 Mobile Bug Number: LIZ-3936, LIZ-3924, LIZ-4062. After you change the Theme in the Profile area of the v2019.9.1 mobile app for iOS, you must quit and relaunch the app for the them to be applied correctly. If you do not restart the app, some areas of the user interface might not be displayed correctly.
Limitations and Defects Found in Earlier Versions Limitations and Defects Found in Version 2019.9.0 Asset Editor Bug Number: JP-6644. When double-clicking on a marker or a search hit in the tabs area of the Asset Editor, the position indicator does not move to the associated mark in the Media Viewer timeline.
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
Bug Number: AWM-80. When working with 60p or 50p sequences in Media Composer, you must set the TC Display Format in the Media Composer General Settings to either 60 fps or 50 fps, respectfully, before checking the sequence into MediaCentral Production Management. If this setting is not configured correctly and you attempt to upload the sequence to the Publisher SAAS platform, the upload process will fail.
Search Bug Number: ASSETS-2434. The MediaCentral Cloud UX Search Connector for Production Management associates some metadata fields such as Initial Checkin Date, Last Restored Date, and others with type “String” instead of type “DateTime”. Additionally, some fields associated with timecode (such as Auxiliary Limitations and Defects Found in Earlier Versions TC1) or numbers (such as Audio Bit Depth) are associated with the String type. These incorrect assignments prevent users from searching for these metadata fields in MediaCentral Cloud UX using criteria normally associated with a date/time, timecode, or numerical value.
Workaround: You can resolve this issue by installing the MediaCentral Production Management 2019.6.1 Access or later and enabling the “Update Data Type Definitions” toggle in the Interplay Administrator. For more information, see the Avid MediaCentral Production Management 2019.6.1 ReadMe or “Configuring the MediaCentral Search Connector” in the Avid MediaCentral | Cloud UX Installation Guide v2019.9.
Limitations and Defects Found in Version 2019.6.0 Installation and Configuration Bug Number: MCDEV-11520. If you configure more than one MediaCentral Authentication Provider in the Interplay Administrator, the process of signing in to MediaCentral Cloud UX through the Media Composer fails.
Workaround: If you must configure more than one server in the MediaCentral Authentication Provider settings, you must add the Internal authentication option for the affected users in the Production Management database. This limitation does not prevent you from importing users from MediaCentral Cloud UX or Microsoft Active Directory, but once imported – Internal authentication must be enabled for all Media Composer users and a password must be assigned manually. Additionally, the passwords must match those used to access MediaCentral Cloud UX.
The ability to add more than one MediaCentral Platform Authentication provider is designed for testing and development environments only. Avid does not support adding more than one MediaCentral provider for active production systems Bug Number: ICS-8468. After upgrading, multiple Kubernetes pods might fail to start and report a “Waiting: CrashLoopBackOff” status in the Kubernetes dashboard.
Workaround: To resolve this issue, complete the following steps:
1. Complete the upgrade process as documented.
2. After the upgrade is complete, sign in to the Kubernetes Dashboard.
For more information, see “Working with Kubernetes” in the Avid MediaCentral | Cloud UX Installation Guide.
3. Use the Search function at the top of the Dashboard to search for rabbitmq-default.
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
Bug Number: JP-6496. If you use your mouse to alter the qualifier associated with certain search term types and press Enter (Windows) or Return (Mac), the search is not executed automatically. For example if you change “Created > Last 10 minutes” to “Created > Last hour”, the search is not automatically initiated.
Workaround: Click the Search button to execute the search, or use the Up/Down arrow keys to change the qualifier and press Enter or Return.
Limitations and Defects Found in Version 2019.2.0 Asset Editor Bug Number: ICI-2137. Audio might stutter during playback while simultaneously working in other Apps of the MediaCentral Cloud UX user interface.
Limitations and Defects Found in Earlier Versions Search Bug Number: JP-6316, JP-6323. When hovering over a phonetic search phrase, the pronunciation of the pill is not displayed in a tool-tip.
Limitations and Defects Found in Version 2018.11.0 Asset Editor Bug Number: MX-6604. If you click on the link for a recovered asset in the Auto Recovery window, the apps area of the MediaCentral Cloud UX user interface is replaced with the following error: “No application config found for type: dashboard”.
Workaround: When you click on the link, the asset is loaded into the appropriate app as described in the “Recovering Sequences” and “Recovering Stories In Case of Disconnect” sections of the Avid MediaCentral | Cloud UX User’s Guide. You can eliminate the error message by clicking on an app such as Browse, Rundown, or other.
Bug Number: ASSETS-1834 . If a user has permissions to write to a particular folder in the MediaCentral Production database but does not have the rights to create markers, the user is allowed to save a sequence containing new markers. However, the user also sees the following message: “User permissions do not allow this operation” Workaround: To avoid these errors, you must make sure that users who have permission to save sequences also have permissions to edit markers.
Bug Number: MX-6658. The Storyboard tab needs focus in order for keystroke shortcuts to work.
Process App Bug Number: MX-6913. The Process app always displays the “Show More Results” button, even if there are no additional results to display.
Limitations and Defects Found in Version 2018.6.0 Asset Editor Bug Number: NEO-106, OS-4997. If a user attempts to make an edit to a news sequence that is already opened by another user who has a lock on the story, the change is permitted but the following warning message is presented:
“Story Modify Error - Unable to obtain all edit locks. Story body is edit locked by <user>.” [Cancel Sequence Edit] [Keep Sequence Edit] In this release the Cancel and Keep options are not available.
Browse App Bug Number: ASSETS-1317. You cannot duplicate sequences.
Workaround: Open the sequence and use the Save As feature in the Sequence Timeline to save a copy of the sequence.
Limitations and Defects Found in Earlier Versions Installation and Configuration Bug Number: DAEM-5529. When running the Post-Install Setup Scripts, the avidctl platform host- setup script might hang when executing particular tasks. If there is no on-screen activity for an extended period of time (2-3 minutes), press CTRL+C on the keyboard to exit and run the script again.
This issue is most often associated with the “sysprep: Restart firewalld” task.
Bug Number: MTTO-1773. If you connect to the Kubernetes web dashboard after deploying the system feature packs, the Kubernetes Pods category does not show a green status.
Workaround: Continue with the installation and verify the status of the Kubernetes Pods after you have imported a MediaCentral Cloud UX license.
Bug Number: DAEM-5592, DAEM-5684. When entering the Kubernetes Admin token in the avidctl platform host-setup script, you can not use the Backspace key to correct a text entry error. The Backspace key is treated as a new character.
Workaround: You can resolve this issue in one of two ways:
Press CTRL+C on the keyboard to exit the script and then relaunch the script to start over from the
- beginning.
After using the Backspace key, press Enter to accept the password. At the verification prompt, press
- Enter to purposefully enter an incorrect matching password.
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
Limitations and Defects Found in Earlier Versions Mobile The MediaCentral Cloud UX mobile app includes the following limitations:
- You cannot open key-locked or easy locked queues or stories (iOS). Attempting to do so results in an
Access Denied message.
- Review and Approval workflow for Production Assets is unavailable (Android).
- You cannot share stories with other users (Deep Links) (iOS + Android).
- You cannot insert Script Templates (iOS + Android).
- Cue content and machine codes are listed as text only in the Production Cue list.
Search Bug Number: RCTR-989. The process to index large MediaCentral Asset Management databases for use with the MediaCentral Search app can take a significant amount of time to complete. Organizations whose database consists of more than 500,000 assets should consult with Avid prior to indexing the database for assistance in optimizing the process.
MediaCentral Cloud UX v2019.2 introduced certain improvements for large databases. As of this release, only organizations whose database consists of 1,000,000 or more assets need to consult with Avid.
Bug Number: RCTR-973. The Search index creation process might fail on databases that contain a large number of fields.
System Bug Number: DAEM-5741. When a cluster master node goes offline, users might experience a short period of time where the cluster is inaccessible.
Limitations and Defects Found in Earlier Versions