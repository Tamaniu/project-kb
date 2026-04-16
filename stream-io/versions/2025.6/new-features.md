---
product: stream-io
product-area: ingest-playout
version: "2025.6"
release-date: 01/06/2025
doc-type: new-features
source: avid-official
confidentiality: public
date-added: 16/04/2026
status: current
---

# Stream IO What’s New in Version 2025.6

- Upgraded Recording Capabilities
- Recording workflows just got more powerful. The system now supports clip durations of up to 24 hours for the OP1a format - an increase from the previous 6-hour limit. This enhancement enables uninterrupted long-form recording for extended events and continuous content capture.
- In addition, the new Segmented Recording feature allows users to define fixed-length segments for improved manageability and post-processing. For dynamic, continuous ingest scenarios, the newly introduced Loop Recording mode enables infinite recording by automatically splitting content into sequential segments and managing storage through automatic deletion of the oldest segments. These enhancements are available for both OP1a and OPAtom formats, offering greater flexibility and control over high-volume recording operations.
- Automatic Pass-Through for Confidence Monitoring
- A new Automatic Pass-Through feature now enables real-time preview of incoming feeds on OUT channels when they are idle. This enhancement provides operators with immediate visual confirmation of input signals, improving confidence and situational awareness during live workflows.
- Automatic Pass-Through is fully supported in both SDI and SMPTE 2110 environments, offering seamless integration into existing infrastructure without additional configuration.
- Legacy PAM-Compatible Low-Resolution Proxy Support
- We have added support for a new proxy flavor: Legacy PAM-compatible low-res proxy. This 0.8 Mbps proxy format, familiar from earlier-generation Avid servers, is now available as auxiliary media for all high-resolution codecs.
- This proxy type is supported exclusively in the OPAtom format. To ensure proper integration, refer to the relevant Avid Stream IO User's Guide sections detailing controller-specific (MediaCentral Capture or Acquire) requirements.
- Support for More UHD Formats
- Ultra High Definition (UHD) recording is now supported at 29.97 and 25 fps across multiple high-efficiency codecs. The following formats are available:
- XAVC-I 300
- DNxHR HQX
- DNxHR HQ
- DNxHR SQ
- 
- SMPTE 2110 with Redundancy 2022-7
- SMPTE 2110 with 2022-7 redundancy is now fully certified for high-availability IP-based ingest workflows, supporting up to 8 channels of 1080i25/29 with ANC data, dirty loop handling, proxy generation, and Media Copy to Avid NEXIS. This implementation ensures seamless failover and reliable media delivery in demanding broadcast environments.
- SMPTE 2022-7 is also available as a technical preview in usage scenarios with progressive formats (720p,1080p, UHD), with support for ANC data, dirty loops, proxy workflows, and Media Copy.
- Improvements
- PM+ Early Access Compatibility
- Avid Stream IO is now compatible with PM+ Early Access, allowing beta customers to operate within the new PM+ environment.
- Per-User I/O Mute Permissions
- Administrators can now assign mute permissions per user for I/O channels, enabling more granular control over audio monitoring.
- Extended Timecode Support
- Support for ATC and Base Timecode has been expanded. Additionally, new configuration options are available for Internal Timecode, including features such as Daily Jam Time.
- Enhanced Moxa GPIO Configuration
- Moxa GPIO device integration has been improved to support longer password lengths, increasing security and flexibility.
- Compatibility Information
- For information on supported operating systems and for a list of product versions qualified for use with Avid Stream IO, see the Compatibility Matrix on the Avid Knowledge Base at:
- https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts
- Avid | Stream IO v2025.6 has been tested against the following versions of software products:

- Avid Software Product	Tested Against

- Avid | Stream IO PreInstaller	Preinstaller-2025.6.0.1
- Avid | Stream IO Plugin for Command	2024.10.3
- Avid Media Composer	2023.12 and up
- Avid MediaCentral | Capture	2022.3 (4.0.15)
- Avid MediaCentral | Cloud UX	2023.12, 2024.2, 2024.10
- Avid MediaCentral | Production Management	2023.7, 2024.10
- Avid MediaCentral | Command	2022.3 LTM, 2023.7.x