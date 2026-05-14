---
product: media-composer
product-area: editing
version: "2024.12.6"
release-date: 01/12/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Fixed in Media Composer v2024.12.6 Avid Media Composer® ReadMe for Version 2024.12.6 Fixed in Media Composer v2024.12.6 The following have been fixed for all applicable models of Media Composer in this update (First, Standard, Ultimate, and Enterprise):
Bug Number: MCCET-6149. The timeline failed to scroll to the next page during Real-Time Gain Automation recording in Auto mode.
Bug Number: MCCET-6186. Email notifications were sent multiple times during batch clip import and transcode operations instead of triggering only once per job.
Bug Number: MCCET-5850. (macOS) Effect Editor parameters displayed as “N/A” when the system language was set to Japanese.
Bug Number: MCCET-5913. AS-11 exports failed on EVS XTAccess with “Failed to Decode Frame” errors.
Bug Number: MCCET-5948. Timeline did not redraw at page edges during trim playback, causing the playhead to move off-screen.
Bug Number: MCCET-6108. Importing SubCap files in 1080p/50 HLG projects failed due to invalid frame validation in 50 fps formats.
Bug Number: MCCET-6035. Real-time screening and marking caused the playhead to stall and waveforms to stop updating during recording.
Bug Number: MCCET-6135, MCCET-6232. Send to Playback with segmented master clips or loading video clips from MediaCentral | Production Management with Dynamic Relink enabled might have caused video clips to shift.
Bug Number: MCCET-6075. Importing progressive DNxHD media using “Do not resize smaller images” into interlaced projects resulted in visible interlacing artifacts.
Bug Number: MCCET-5736. Rendering or mixdown of sequences containing Blackmagic RAW linked media with multiple effects caused Media Composer to hang or fail.
Fixed in Media Composer v2024.12.6 Bug Number: MCCET-6138. Pan and Zoom produced unintended curved movement when zoom and position were adjusted simultaneously.
Bug Number: MCCET-5554. Reading audio timecode from 50P and 25P media produced partial blank timecodes and incorrect durations.
Bug Number: MCCET-6185. Certain multigroup clips would not play in multicam mode when loaded in the Source Monitor in interlaced projects.
Bug Number: MCCET-6184. Media Composer included Apache Tika components that contained a security-vulnerable file set.
Bug Number: MCCET-5925. Adjusting line or outline weight in certain fonts in Subcap caused rendering artifacts on some capital letters.
Bug Number: MCCET-6170. NDI streaming stopped working after repeatedly toggling the HW/SW output on and off.
Bug Number: MCCET-6090. Non-16:9 MOV files imported with incorrect aspect ratios when certain link and import reformatting options were used.
Bug Number: MCCET-6071. K+L/K+J trim moves were not frame-accurate when NDI/SRT output and Desktop Audio were enabled, causing them to advance an extra frame.
Bug Number: MCCET-6209. The Set Reference Level dialog displayed an incorrect default value after restarting the application.
Bug Number: MCCET-5956. Disabling the Host Panel caused Media Composer to crash when using a multi-monitor setup with one display set to portrait mode.
Bug Number: MCCET-6006. Markers added from the Source monitor in Film projects displayed incorrect timecodes.
Bug Number: MCCET-6178. Importing some AAF files resulted in an “Invalid trim” message and created empty sequences with no tracks or duration.
Bug Number: MCCET-6097. Adjusting the end keyframe in a Titler+ animation did not extend the animation, causing playback to stop at the original keyframe position.
Bug Number: MCCET-5882. Deleting keyframes in certain Titler+ titles did not remove all selected keyframes, causing some to reappear unexpectedly.
Bug Number: MCCET-6201. Rendering an AudioSuite effect on clips with different playback rates caused the audio to shift out of sync.
Fixed in Media Composer v2024.12.6 Bug Number: MCCET-6261. ScriptSync did not always select the correct script line when using Find Script, causing the wrong take to be highlighted.
Bug Number: MCCET-6202. Exporting an EDL after exporting graphics multiple times displayed a Breakpad error window and could result in Media Composer crashing.
Bug Number: MCCET-6229. Avid Huddle and other extensions did not appear in the Tools menu.
Bug Number: MCCET-6192. Send to Playback with non-PCM media sometimes resulted in garbled or missing audio.
Bug Number: MCCET-6193. Send to Playback performed an unnecessary audio mixdown in some instances.
Bug Number: MCCET-5920. Visual artifacts appeared in the timeline’s track area after reopening a sequence that had been zoomed in and scrolled vertically through its tracks.
Bug Number: MCCET-6159. Using Export to Device > XDCAM generated MXF files with an incorrect VideoLineMap metadata value.
Bug Number: MCCET-6244. Batch reimporting certain MP3 clips failed with an IMPORT_TOO_SHORT error.
Bug Number: MCCET-6120. Dynamic Relink failed to bring certain transcoded clips online in a Production Management environment.
Bug Number: MCCET-6224. Selecting clips in Frame View caused a noticeable delay before the application responded.
Bug Number: MCCET-6240. Exporting OP1a AMA media to a network drive caused Media Composer to hang while finishing the export.
Bug Number: MCCET-6269. Importing marker files did not complete when used on sequences with more than 32 video tracks.
Bug Number: MCCET-6169. FrameFlex renders did not match the DNx codec/quality set in the Render and Motion Effects settings.
Bug Number: MCCET-6277. Editing with the Effect Palette open caused Media Composer to pause for several seconds before responding.
Bug Number: MCCET-6118. Certain versions of Elasticsearch used by Media Composer resulted in excessive resource consumption.
Fixed in Media Composer v2024.12.6 Bug Number: MCCET-6065. With Movement During Play set to Page, the Timeline did not advance correctly during Play Loop playback.
Bug Number: MCCET-6283. Exception errors could appear in the Source Monitor when scrubbing a specific group clip.
Limitations Limitations The following are known limitations:
Photoshop PSD files are not supported for AMA linking if QuickTime is not installed.
- Some fonts, by their design, are only available in Bold. On macOS systems, selecting a font does
- not always produce a visual change; try selecting “Bold.”
- If you launch a project and receive an “Enable 3rd Party Emulation” warning, even if you select
Enable in the warning dialog, you should also perform the following: Select File > Settings and click the Project tab. Click General Settings and select “Enable Bin Sharing on 3rd party storage emulating Avid NEXIS/ISIS.” Bug Number: MCCET-5929. Intel Mac systems might exhibit reduced performance compared to Apple Silicon systems due to framework modernization designed for native Apple Silicon support. Although performance enhancements were introduced in version 2024.12, Intel-based hardware does not benefit from the same level of optimization as Apple Silicon machines.
> **Note:** This performance difference is due to the optimization for Apple Silicon, rather than an issue that can
be addressed through further development. Avid remains committed to supporting Intel Mac systems in current versions of Media Composer.
Limitations