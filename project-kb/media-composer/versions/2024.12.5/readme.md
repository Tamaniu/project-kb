---
product: media-composer
product-area: editing
version: "2024.12.5"
release-date: 01/12/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Fixed in Media Composer v2024.12.5 Avid Media Composer® ReadMe for Version 2024.12.5 Fixed in Media Composer v2024.12.5 The following have been fixed for all applicable models of Media Composer in this update (First, Standard, Ultimate, and Enterprise):
Bug Number: MCCET-6066. Files did not check into PAM correctly after Distributed Processing transcoding because check-in occurred before the bin update.
Bug Number: MCCET-5832. Tracking crosshairs floated out of the record monitor into the UI and became inaccessible after applying a saved stabilize template and switching from the Color workspace in Media Composer.
Bug Number: MCCET-6017. (Windows) Media Composer 2024.12.1 crashed on launch with Enterprise roles applied, showing an access violation in Qt6Core.dll.
Bug Number: MCCET-6069. Changing kerning with Alt+Arrows in Titler+ unintentionally added keyframes, causing unwanted animation.
Bug Number: MCCET-6167. (MediaCentral | Production Management) Frequent freezing and sluggish timeline operations occurred when using XAVC-I media during workflows with large sequences.
Bug Number: MCCET-6134. When using XAVC-I media, moving clips in the timeline on large projects was significantly slower than in previous versions.
Limitations Limitations The following are known limitations:
Photoshop PSD files are not supported for AMA linking if QuickTime is not installed.
- Some fonts, by their design, are only available in Bold. On macOS systems, selecting a font does
- not always produce a visual change; try selecting “Bold.”
- If you launch a project and receive an “Enable 3rd Party Emulation” warning, even if you select
Enable in the warning dialog, you should also perform the following: Select File > Settings and click the Project tab. Click General Settings and select “Enable Bin Sharing on 3rd party storage emulating Avid NEXIS/ISIS.” Bug Number: MCCET-5929. Intel Mac systems might exhibit reduced performance compared to Apple Silicon systems due to framework modernization designed for native Apple Silicon support. Although performance enhancements were introduced in version 2024.12, Intel-based hardware does not benefit from the same level of optimization as Apple Silicon machines.
> **Note:** This performance difference is due to the optimization for Apple Silicon, rather than an issue that can
be addressed through further development. Avid remains committed to supporting Intel Mac systems in current versions of Media Composer.
Limitations