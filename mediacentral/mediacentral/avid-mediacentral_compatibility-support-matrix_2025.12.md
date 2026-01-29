# Avid MediaCentral — Compatibility Support Matrix

> Document: Compatibility Support Matrix  
> Scope: MediaCentral platform, Production Management, Stream IO, NEXIS, Panels, OS, Browsers  
> Status: Reference matrix (time-variant; superseded by newer revisions)

---

## Key Notes

- Some products support multiple versions simultaneously.
- Running unsupported OS or component versions may require upgrades during support.
- Products listed may be end-of-sale or end-of-support; always cross-check lifecycle status.

---

## MediaCentral | Cloud UX

### Supported Versions (recent)
- 2025.10
- 2025.6
- 2024.10 (LTM)
- 2024.2
- 2023.12

### Operating System
- Ubuntu Server LTS 22.04.x  
- Safari: **Not supported**  
- Chrome (64-bit): supported (version varies by MCUX release)

---

## MediaCentral Panels

### Panel for 3rd Party Creative Tools
- Supported Adobe apps vary by panel version:
  - Premiere Pro (v23.x → v25.x)
  - After Effects (v23.x → v25.x)
  - Photoshop (v24.x → v26.x)
- Supported OS:
  - Windows 10, Windows 11
  - macOS 11.x → 15.x (version-dependent)

### Panel for AP ENPS
- ENPS v9.x or later
- Maestro News MOS Gateway 3.2.8
- Maestro News MOS Service v2022.3

### Panel for Octopus / OpenMedia
- Support varies by MCUX version
- Requires Maestro News MOS Service v2022.3

---

## MediaCentral | Production Management

### Recent Versions
- 2025.10 (future)
- 2024.10 (LTM)
- 2023.7 (LTM)
- 2022.3 (LTM)

### Operating Systems
- Windows Server 2019 / 2022 (version-dependent)
- Production clients:
  - Windows 10 / 11
  - macOS 11.x → 15.x

---

## MediaCentral | Ingest

- Windows Server 2019 / 2022
- Windows Defender **not supported**
- AMA plugins bundled (MXF, QuickTime)
- Vendor-specific AMA plugins versioned separately

---

## Avid | Stream IO

### Recent Versions
- 2025.10
- 2025.6
- 2025.2
- 2024.10

### Operating System
- Ubuntu 22.04.x

### Key Dependencies
- Media Composer (version-dependent)
- Avid NEXIS (specific versions only)
- NVIDIA / Blackmagic drivers for SDI / SMPTE 2110

---

## Shared Storage — Avid NEXIS

### Supported Families
- E-Series
- F-Series
- PRO / PRO+

### Notes
- Use latest supported NEXIS Client for OS
- Avid ISIS: **Not supported**
- Some NEXIS releases withdrawn and not recommended

---

## Browsers

- Chrome (64-bit): supported (tested versions listed per MCUX release)
- Safari: **Not supported**

---

## Lifecycle & References

- End of Sale / End of Support dates must be checked separately.
- Older compatibility details may be moved to legacy matrices.

---

## Revision History (excerpt)

- December 2025 — MediaCentral v2025.10, NEXIS 2025.5.x updates
- June 2025 — MediaCentral v2025.6
- November 2024 — MediaCentral v2024.10 (LTM)

---

_Source: Avid MediaCentral Compatibility Support Matrix_ :contentReference[oaicite:0]{index=0}
