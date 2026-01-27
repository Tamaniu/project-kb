# MediaCentral | Media Files Plugin 2024.10 — ReadMe

> Version: 2024.10.0  
> Product: MediaCentral | Media Files Plugin  
> Scope: ReadMe content only (installation, licensing, behaviour, fixes, limitations)

---

## Overview

- Enables Adobe Premiere Pro to access and edit native Avid OP-Atom media in place.
- Targets news editing workflows.
- Supports growing media (Edit While Capture, EWC).
- Uses the same core media decoding components as other Avid products.

---

## Supported Formats

- DNx, AVC-Intra
- MPEG-2
- MPEG-4 Long GOP (XDCAM, AVC-L, XAVC-Long)
- Standard frame rates: 23.98, 25, 29.97, 50, 59.94
- OP-Atom only (no OMF or WAV handling)

### Not Supported
- Classic Avid JFIF formats (e.g. 1:1 uncompressed, AVR)
- Classic low-res AirSpeed / FastServe formats (H.264 800k, 1.5/2M)

---

## Installation

### Platforms
- Windows: `AvidMediaCentralMediaFilesPluginInstaller_2023.12_Win.exe`
- macOS: `AvidMediaFilesPlugin_2023.12_Mac.dmg`

### Notes
- Plugin is blocklisted for Adobe After Effects.
- macOS installer prompts for Cloud UX host after installation.
- Test Connection option available (Windows).

---

## Licensing

- Uses the same license as **MediaCentral | Panel for 3rd Party Creative Tools**.
- If the Panel works in Premiere Pro, the Media Files Plugin should also work.
- License configuration is written locally after successful connection.

---

## Behaviour in Adobe Premiere Pro

- Unsupported Avid OP-Atom media can be imported and edited natively.
- Panel defaults to native import instead of OP1a conversion.
- OP1a conversion remains available via context menu.

---

## Performance Model

### Real-time Mode
- Used for all operations.
- Supports scrubbing, playback, and EWC.
- Decoding starts immediately from the playhead position.

### Conform Mode
- Disabled in this release.
- Audio waveform data generated on the fly.
- Recommended: disable automatic waveform generation in Premiere Pro preferences.

---

## Logging & Troubleshooting

### Log Locations
- Windows: `%APPDATA%\Avid\AvidMediaFilesPlugin`
- macOS: `~/Library/Logs/Avid/AvidMediaFilesPlugin`

### Debug Logging
- Windows: registry key  
  `HKLM\SOFTWARE\Avid Technology\AvidMediaFilesPlugin → loglevel=dump`
- macOS: create empty file `dump.lvl` in log directory

### Plugin Cache
- Clear Premiere Pro plugin cache by launching while holding **Shift**

---

## Fixed in Version 2024.10.0

- Incorrect timecodes after Premiere Pro relaunch (AL-3387)
- Imported assets showing start timecode 00:00:00:00 (AL-3448)

---

## Limitations

- Drop-frame assets may report incorrect durations (AL-610)
- macOS: EWC sequences cannot be checked in until capture completes (AL-662)
- macOS 14.6.1 installer may fail (upgrade to 14.7.1)
- Intel Mac + DNxHD SQ EWC playback may crash Premiere Pro
- Initial playback may be choppy until media is cached (TI-11663)
