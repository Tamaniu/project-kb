# Avid | Stream IO 2025.6 — What’s New

> Version: 2025.6  
> Product: Avid | Stream IO  
> Scope: Explicitly stated new features and compatibility information only

---

## Upgraded Recording Capabilities
- OP1a clip duration increased to **24 hours** (up from 6 hours).
- Enables uninterrupted long-form and continuous recording.
- **Segmented Recording** allows fixed-length segments for easier management.
- **Loop Recording** enables infinite recording by automatically segmenting content and deleting the oldest segments.
- Available for both **OP1a** and **OPAtom** formats.

---

## Automatic Pass-Through for Confidence Monitoring
- Real-time preview of incoming feeds on idle OUT channels.
- Improves operational visibility and confidence during live workflows.
- Fully supported for **SDI** and **SMPTE 2110** environments.
- No additional configuration required.

---

## Legacy PAM-Compatible Low-Resolution Proxy Support
- New **0.8 Mbps** legacy PAM-compatible low-resolution proxy.
- Available as auxiliary media for all high-resolution codecs.
- Supported **exclusively in OPAtom** format.
- Controller-specific requirements apply (MediaCentral Capture or Acquire).

---

## Support for More UHD Formats
UHD recording now supported at **29.97** and **25 fps** for:
- XAVC-I 300
- DNxHR HQX
- DNxHR HQ
- DNxHR SQ

---

## SMPTE 2110 with 2022-7 Redundancy
- Fully certified support for SMPTE 2110 with 2022-7 redundancy.
- Supports up to **8 channels of 1080i25/29** with:
  - ANC data
  - Dirty loop handling
  - Proxy generation
  - Media Copy to Avid NEXIS
- Technical preview available for **progressive formats** (720p, 1080p, UHD) with proxy and ANC support.

---

## Improvements

### PM+ Early Access Compatibility
- Compatible with **PM+ Early Access** environments.

### Per-User I/O Mute Permissions
- Administrators can assign I/O mute permissions per user.

### Extended Timecode Support
- Expanded support for **ATC** and **Base Timecode**.
- New Internal Timecode options including **Daily Jam Time**.

### Enhanced Moxa GPIO Configuration
- Supports longer passwords for improved security.

---

## Compatibility Information

For supported operating systems and qualified product versions, refer to the Avid Compatibility Matrix.

### Tested With

| Avid Software Product | Version Tested |
|----------------------|----------------|
| Avid \| Stream IO PreInstaller | 2025.6.0.1 |
| Avid \| Stream IO Plugin for Command | 2024.10.3 |
| Avid Media Composer | 2023.12 and later |
| Avid MediaCentral \| Capture | 2022.3 (4.0.15) |
| Avid MediaCentral \| Cloud UX | 2023.12, 2024.2, 2024.10 |
| Avid MediaCentral \| Production Management | 2023.7, 2024.10 |
| Avid MediaCentral \| Command | 2022.3 LTM, 2023.7.x |
| Avid NEXIS Client & Server | 2024.10, 2025.2 |
| Blackmagic DeckLink Driver | 14.4a6 |
| NVIDIA Mellanox Driver | 25.01.OFED.25.01.0.6.0.1-1 |
