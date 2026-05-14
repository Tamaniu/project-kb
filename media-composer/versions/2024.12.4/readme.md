---
product: media-composer
product-area: editing
version: "2024.12.4"
release-date: 01/12/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Fixed in Media Composer v2024.12.4 Avid Media Composer® ReadMe for Version 2024.12.4 Fixed in Media Composer v2024.12.4 The following have been fixed for all applicable models of Media Composer in this update (First, Standard, Ultimate, and Enterprise):
Bug Number: MCCET-6037. Segment mode failed to function properly on extended sequences in Media Composer.
Bug Number: MCCET-5697. Media Composer failed to activate licenses from the backup FLS server during failover.
Bug Number: MCCET-6107. Sequences with mixed frame rates (29p and 59i) were incorrectly flagged as mixed resolution in Media Composer, preventing proper Send-To-Playback.
Bug Number: MCCET-6131. Media Composer crashed when switching workspaces with the Project window open.
Bug Number: MCCET-5986. Enabling waveforms on long audio files triggered an 'Invalid overreadLimitOffsetInSamples' error and caused Media Composer to freeze.
Bug Number: MCCET-6098. Video output did not consistently update when switching video tracks with playback paused on AJA hardware.
Bug Number: MCCET-5731. Selecting "Decompose" with "Captured Clips Only" option for a sequence resulted in "Assertion failed" and "Fatal Error" messages.
Bug Number: MCCET-6081. Moving open bins into containers failed when using a Media Composer Classic user profile.
Limitations Limitations The following are known limitations:
Photoshop PSD files are not supported for AMA linking if QuickTime is not installed.
- Some fonts, by their design, are only available in Bold. On macOS systems, selecting a font does
- not always produce a visual change; try selecting “Bold.”
- If you launch a project and receive an “Enable 3rd Party Emulation” warning, even if you select
Enable in the warning dialog, you should also perform the following: Select File > Settings and click the Project tab. Click General Settings and select “Enable Bin Sharing on 3rd party storage emulating Avid NEXIS/ISIS.” Bug Number: MCCET-5929. Intel Mac systems might exhibit reduced performance compared to Apple Silicon systems due to framework modernization designed for native Apple Silicon support. Although performance enhancements were introduced in version 2024.12, Intel-based hardware does not benefit from the same level of optimization as Apple Silicon machines.
> **Note:** This performance difference is due to the optimization for Apple Silicon, rather than an issue that can
be addressed through further development. Avid remains committed to supporting Intel Mac systems in current versions of Media Composer.
Limitations