---
product: media-composer
product-area: editing
version: "2024.12"
release-date: 01/12/2024
doc-type: fixes-readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Fixed in Media Composer v2024.12.6 Avid Media Composer® Fixes for Media Composer v2024.x This document provides a cumulative list of fixes for the Media Composer v2024.x releases. To see detailed information on each release, see the individual ReadMe for each release here.
Fixed in Media Composer v2024.12.6 The following have been fixed for all applicable models of Media Composer in this update (First, Standard, Ultimate, and Enterprise):
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
Fixed in Media Composer v2024.12.5 Bug Number: MCCET-6065. With Movement During Play set to Page, the Timeline did not advance correctly during Play Loop playback.
Bug Number: MCCET-6283. Exception errors could appear in the Source Monitor when scrubbing a specific group clip.
Fixed in Media Composer v2024.12.5 The following have been fixed:
Bug Number: MCCET-6066. Files did not check into PAM correctly after Distributed Processing transcoding because check-in occurred before the bin update.
Bug Number: MCCET-5832. Tracking crosshairs floated out of the record monitor into the UI and became inaccessible after applying a saved stabilize template and switching from the Color workspace in Media Composer.
Bug Number: MCCET-6017. (Windows) Media Composer 2024.12.1 crashed on launch with Enterprise roles applied, showing an access violation in Qt6Core.dll.
Bug Number: MCCET-6069. Changing kerning with Alt+Arrows in Titler+ unintentionally added keyframes, causing unwanted animation.
Bug Number: MCCET-6167. (MediaCentral | Production Management) Frequent freezing and sluggish timeline operations occurred when using XAVC-I media during workflows with large sequences.
Bug Number: MCCET-6134. When using XAVC-I media, moving clips in the timeline on large projects was significantly slower than in previous versions.
Fixed in Media Composer v2024.12.4 The following have been fixed:
Bug Number: MCCET-6037. Segment mode failed to function properly on extended sequences in Media Composer.
Bug Number: MCCET-5697. Media Composer failed to activate licenses from the backup FLS server during failover.
Bug Number: MCCET-6107. Sequences with mixed frame rates (29p and 59i) were incorrectly flagged as mixed resolution in Media Composer, preventing proper Send-To-Playback.
Bug Number: MCCET-6131. Media Composer crashed when switching workspaces with the Project window open.
Bug Number: MCCET-5986. Enabling waveforms on long audio files triggered an 'Invalid overreadLimitOffsetInSamples' error and caused Media Composer to freeze.
Fixed in Media Composer v2024.12.3 Bug Number: MCCET-6098. Video output did not consistently update when switching video tracks with playback paused on AJA hardware.
Bug Number: MCCET-5731. Selecting "Decompose" with "Captured Clips Only" option for a sequence resulted in "Assertion failed" and "Fatal Error" messages.
Bug Number: MCCET-6081. Moving open bins into containers failed when using a Media Composer Classic user profile.
Fixed in Media Composer v2024.12.3 The following have been fixed:
Bug Number: MCCET-5838. Timecode navigation failed under specific combinations of sequence settings and Timecode Window configurations.
Bug Number: MCCET-5448. The "Scaling" text in the Record Monitor appeared blurred during 3D Warp adjustments.
Bug Number: MCCET-5820. Attempting to consolidate spanned P2 clips resulted in a 'CM_LABEL_NOT_ UNIQUE' error.
Bug Number: MCCET-5628. Media Composer crashed when importing ProRes MXF files from the ARRI Alexa 35.
Bug Number: MCCET-5982. Selection of multiple clips in the bin was lost when the Field Motion property was changed.
Bug Number: MCCET-5906. Loading Canon XF MPEG-2 35 and Sony XDCAM EX 35 media consolidated to OP-ATOM into the Source monitor resulted in assertion failures and application crashes.
Bug Number: MCCET-5810. Media Composer crashed when attempting to load a second sequence while the first sequence was already active in Play Standby mode.
Bug Number: MCCET-5696. Group clips created from subclips with in-points displayed incorrect FrameFlex aspect ratios.
Bug Number: MCCET-5968. A fatal error occurred during transcription while Red Giant Universe AVX plug-ins were active in Media Composer.
Bug Number: MCCET-5467. Interlaced frame rates were not supported when exporting SD 4:3 .mov files.
Bug Number: MCCET-6009. Multigroup clips were scaling up unexpectedly during playback in the Source Monitor in DCI 4K Scope projects.
Fixed in Media Composer v2024.12.3 Bug Number: MCCET-5369. An additional black frame was present at the end of .mov clips linked through UME.
Bug Number: MCCET-5902. Certain versions of Elasticsearch used by Media Composer resulted in uncontrolled resource consumption and application crashes.
Bug Number: MCCET-6000. In some instances, checking out or importing highly complex AAF sequence files could cause Media Composer to become unresponsive.
Bug Number: MCCET-6029. Using 10-bit codecs for rolling and crawling titles caused a 'WRONG FORMAT' error in the Classic Title Tool.
Bug Number: MCCET-5979. When 32-bit WAV files were imported or transcoded into a 50p project, the audio start timecode failed to register correctly.
Bug Number: MCCET-5293. Duplicate yellow trim indicators appeared during ripple trimming when timeline playback transitioned to a second page.
Bug Number: MCCET-5374. The Play Length Toggle button did not appear highlighted in the Command Palette.
Bug Number: MCCET-4483. Flickering or image corruption occurred during playback and after export on systems equipped with NVIDIA RTX A4000 or A4500 GPUs.
Bug Number: MCCET-4448. Using Expert Render with an NVIDIA RTX 5000 GPU resulted in certain matte keys rendering as black.
Bug Number: MCCET-5767. Parameter values appeared on the keyframe graph in the Titler Plus/Effect Editor, which obscured labels or data points.
Bug Number: MCCET-6023. Media Composer caused a memory leak due to repeated access to SMBmapped network drives in domain environments.
Bug Number: MCCET-5127. Playing an asset after rapidly switching to a 9-way multicam split caused the viewer to detach and render outside the source frame.
Bug Number: MCCET-6015. Motion Adapters were lost from muted clips in Media Composer after copy- pasting, reloading the project, or refreshing the timeline.
Bug Number: MCCET-6031. Using 'Create script from clip' on an auto-synced clip resulted in script text being generated multiple times.
Bug Number: MCCET-5598. Subcap playback dropped frames and lost real-time performance.
Fixed in Media Composer v2024.12.3 Bug Number: MCCET-5295. The 'Choose for Me' option misidentified 25i and 50i HD/HDTR formats, which led to incorrect auto project settings.
Bug Number: MCCET-5963. Selecting multiple clips in a bin using Ctrl+A caused the system to hang when executed under a specific user profile.
Bug Number: MCCET-6026. Media did not load in the Source Monitor on the initial double-click in frame view, particularly after opening a project or bin.
Bug Number: MCCET-6043. Media Composer crashed when nudging clips while the Markers window is docked in the top-left corner of the interface.
Bug Number: MCCET-5919. The 'Draft' and 'Best Performance' video quality options were missing, along with the hardware/software toggle when no I/O hardware was detected.
Bug Number: MCCET-5874. When trying to load an MXF OPAtom file recorded via EVS, the following error appears: Exception: MXF_DIDMapperSegmented::GetParsedIndexTableSegmented - Unable to parse the Index Table.
Bug Number: MCCET-6074. (MediaCentral | Production Management) AVC-Intra 100 video files created using Media Composer's Video Mixdown or Transcode initially played back correctly, but showed glitches after being checked into and out.
Bug Number: MCCET-6047. MXF files using the AVC-Intra 100 format had glitches at the end after linking and consolidating in newer Media Composer versions.
Bug Number: MCCET-5938. Bin icon showed as closed in the Favorite Bins folder even though the bin was open in the Main Bin container.
Bug Number: MCCET-6077. NRCS crashed on Qt6Core.dll after Media Composer was relaunched and the user attempted the Shift+Click Create Sequence command in the NRCS tool using a previously loaded story.
Bug Number: MCCET-6049. Media Composer crashed upon opening the Dynamic Relink Window while the user was logged into the NRCS tool.
Bug Number: MCCET-6040. Opening a newly created bin immediately after logging into NRCS caused Media Composer to become unresponsive, displaying an exception error referencing Qt6Core.DLL.
Bug Number: MCCET-6095. (MediaCentral | Production Management) In Media Composer 2024.12.X, the Production Management window hung and caused the editor to crash for certain users when signing in via MediaCentral Cloud UX.
Bug Number: MCCET-5095. Editing a field in the NRCS Tool caused the iNews-linked sequence to be de- associated.
Fixed in Media Composer v2024.12.2 Bug Number: MCCET-5661. Importing an STL file into SubCap in Media Composer triggered a 'No import file selected' error, even though the file was selected and imported successfully.
Bug Number: MCCET-5989. Some markers changed color when a sequence was opened in a newer version of Media Composer, despite the sequence not being edited.
Bug Number: MCCET-5893. (macOS) Drag-and-drop from Interplay Access to Media Composer bins was unsuccessful.
Bug Number: MCCET-6078. Playback in Media Composer froze on Mac systems equipped with M3 and M4 processors.
Bug Number: MCCET-5988. The process of dragging and dropping a story-associated-sequence from the MediaCentral Cloud UX Rundown app (browser) to a bin failed when using Media Composer v24.12.x or later.
Bug Number: MCCET-5830. An Exception: PMM_MISMATCH_MEDIA_WRONG_FORMAT was encountered when attempting to consolidate sequences containing segments of AVC Long GOP.
Bug Number: MCCET-6113. In Frame View, dragging a clip to the Source monitor left previously selected clips highlighted, causing multiple clips to appear selected.
Bug Number: MCCET-5984. When XDCAM MXF OP1A media files were batch re-imported as MXF OP- Atom, the embedded captions (Data track) were not properly imported.
Fixed in Media Composer v2024.12.2 The following have been fixed:
Bug Number: MCCET-5907. While in Frame View mode, opening a bin always indicated that it had unsaved changes.
Bug Number: MCCET-5921. (MediaCentral | Production Management) Send to Playback did not work in a UHD project if "Transcode before sending to playback" was enabled.
Bug Number: MCCET-5771. Moving a clip one frame at a time using keyboard shortcuts could unmute or solo audio tracks.
Bug Number: MCCET-5858. (macOS) Save As field in the Export dialog window would not accept text that was pasted using Cmd+V.
Bug Number: MCCET-5910. (macOS) Cmd+A did not work to select all items in the Import dialog window.
Bug Number: MCCET-5017. In some instances, the aspect ratio changed after using the "Commit Multicam Edits" command on a sequence made of Group clips.
Fixed in Media Composer v2024.12.2 Bug Number: MCCET-5924. (MediaCentral | Production Management) In some instances, PhraseFind did not start when connected to MediaCentral, resulting in an "A language must be selected before PhraseFind can be performed" error.
Bug Number: MCCET-4917. In some instances, the Mute Clip command did not work consistently on Group clips.
Bug Number: MCCET-5912. Choosing to Show Phantom Marks in the Record monitor caused Effect Editor keyframes to disappear from the Record monitor.
Bug Number: MCCET-5687. Loading complex stories in NRCS caused Media Composer performance to slowdown and eventually hang.
Bug Number: MCCET-5909. (Windows) When using the "Media Composer Classic" user profile, changing the "Create a new Bin or opening a closed Bin" option in the Bin Settings to "Floats the Bin" caused Bins to open behind other windows.
Bug Number: MCCET-5344. Smart Tool buttons mapped to the Timeline were deselected after entering Trim mode.
Bug Number: MCCET-5342. LTC timecode for Blackmagic Design I/O devices was out of sync with the timecode for sequences in a 24p project.
Bug Number: MCCET-5874. When trying to load an MXF OPAtom file recorded via EVS, the following error appears: Exception: MXF_DIDMapperSegmented::GetParsedIndexTableSegmented - Unable to parse the Index Table.
Bug Number: MCCET-5911. Match frames did not work properly when creating a group clip of 59.94p footage in a 59.94i project.
Bug Number: MCCET-5879. (MediaCentral | Production Management) Glitches were encountered after AVC-Intra 100 media created in Media Composer v2024.12 was transcoded using MediaCentral Transcode. This fix requires the use of MediaCentral Transcode v2024.10.2 or later.
Bug Number: MCCET-5936. Play button in the Record monitor was not highlighted during playback of a sequence.
Bug Number: MCCET-5650. Subclips created by AutoSync with surround sound had no audio output when played in the source monitor.
Bug Number: MCCET-5951. "Segmentation fault" error was encountered in sequences containing markers after using the "To the Left" or "To the Right" command to select all corresponding segments (in Segment mode), and using keyboard shortcuts to nudge clips.
Bug Number: MCCET-5386. Media Creation target drive pulldown menu was not wide enough to display long drive or workspace names.
Fixed in Media Composer v2024.12.2 Bug Number: MCCET-5359. Increasing or decreasing the timecode using the "Using Timecode to Find a Frame" in a DF timecode sequence did not move to the correct frame location.
Bug Number: MCCET-5937. Titles created with the Classic Title Tool or Marquee did not update in the Timeline after using Add/Edit Title to modify them.
Bug Number: MCCET-5946. (macOS) Multiple mixes window did not show the saved mix presets in the Multi-Mix Tool.
Bug Number: MCCET-5973. (Windows) "Exception: Structured Exception" error occurred when creating a new project on a Media Composer system without SRT and NDI installed.
Bug Number: MCCET-5895. Exporting markers caused Media Composer to crash.
Bug Number: MCCET-5923. FrameFlex reformat option did not retain when performing an AutoSync on a sequence.
Bug Number: MCCET-5745. (macOS) "File <file_name> not found" error occurred when opening a project containing UTF-8-Mac (NFD) encoded folder names containing certain Japanese characters.
Bug Number: MCCET-5543. Floating Composer monitor moved to the left after toggling show/hide video.
Bug Number: MCCET-5952. Marker names and comments did not appear immediately after pasting a marker into a duplicated sequence until the sequence was reloaded.
Bug Number: MCCET-5765. Applying the AAX Dyn3 Limiter/Compressor intermittently failed to respond to side-chain input A1 until the Key Input was reselected.
Bug Number: MCCET-4972. The Active Format Description (AFD) metadata entry was missing from exported media files.
Bug Number: MCCET-5544. Renaming track names in Group Clips did not trigger a redraw, resulting in partially visible text.
Bug Number: MCCET-5892. (macOS) In Titler++, the 'à' character is incorrectly rendered as an uppercase letter when entered using a French keyboard layout.
Bug Number:MCCET-5456. Dragging a track from within a nested clip to a new track automatically selected the first clip or filler item on the destination track.
Bug Number: MCCET-5918. VBI lines were incorrectly displayed when linking IMX50 media.
Bug Number: MCCET-5703. Switching from the Color workspace to Edit workspace caused the floating Composer window to lose its saved panel layout.
Fixed in Media Composer v2024.12.2 Bug Number: MCCET-5933. Clicking a clip and pressing Cmd/Ctrl+A in quick succession failed to select all items on the first attempt, causing the interface to flash.
Bug Number: MCCET-5729. Consolidating ProRes 422 HQ 4096x2160 50P MOV files from DJI Ronin caused Media Composer to crash.
Bug Number: MCCET-5964. Exported MXF files from a 1080x1920 timeline were encoded with a 1088x1920 raster when using DNxHR HQX or DNxHR 444 codecs.
Bug Number: MCCET-5360. Applying animated effects to clips with alpha channels intermittently caused Media Composer to freeze or crash.
Bug Number: MCCET-5972. Scroll-based shortcuts (Ctrl+Scroll Wheel, Ctrl+Shift+Scroll Wheel) failed to function in Color Correction when the cursor was active in a field box.
Bug Number: MCCET-5561. (masOS) When comparing sequences, the List Tool incorrectly diplayed frame counts.
Bug Number: MCCET-5127. Playing an asset after rapidly switching to a 9-way multicam split caused the viewer to detach and render outside the source frame.
Bug Number: MCCET-5974. Exporting an XML from the List Tool resulted in custom columns and their associated text entries written in the incorrect order.
Bug Number: MCCET-5950. Rolling titles created in the Legacy Title Tool repeatedly played only the first page.
Bug Number: MCCET-5935. Titler++ failed to render visible updates when text modifications were applied.
Bug Number: MCCET-5868. Enabling Secure Reliable Transport (SRT) caused fullscreen playback to stall on dual monitor setups.
Bug Number: MCCET-5908. Editing FrameFlex effects on group clips resulted in incorrect images being displayed in the Effects Editor.
Bug Number: MCCET-5698. Symphony color correction tools became unusably slow when Avid Huddle/SRT streaming was enabled.
Bug Number: MCCET-5279. Caching and redraw issues in the Timecode Burn-In Effect resulted in inaccurate timecode display.
Bug Number: MCCET-5849. Exporting caption data from layered SubCap tracks always showed the text that was on the topmost track.
Fixed in Media Composer v2024.12.1 Bug Number: MCCET-4307. Connection to the FluidMotion vector correction effect editor was lost when switching workspaces.
Bug Number: MCCET-6018. Premiere and Resolve keyboard mappings were unavailable when Media Composer was licensed as a Standard version.
Bug Number: MCCET-5999. XAVC-I 300 clips resolution display name changes to AVC-I after the bin was reopened, resulting in a mixed-resolution indicator being applied to the sequence in the bin.
Bug Number: MCDEV-20233. (Windows) QuickTime files containing an alpha channel could not be imported using the default 'Uncompressed' Alpha Encoding option in the Import Settings window. Starting with Media Composer v24.12.2, all imported alpha channels use Run-Length Encoding (RLE).
Bug Number: MCCET-5902. Certain versions of Elasticsearch used by Media Composer resulted in uncontrolled resource consumption and application crashes.
Fixed in Media Composer v2024.12.1 The following have been fixed:
Bug Number: MCCET-5773. Subcaps created in earlier versions of Media Composer could change appearance if opened in later versions.
Bug Number: MCCET-5563. After selecting multiple items in a bin, clicking on an item did not deselect remaining items.
Bug Number: MCCET-5761. In some instances, Matte Key clips were offline with Dynamic Relink enabled.
Bug Number: MCCET-5853. "Allow Mixed Frame Rate Media" checkbox in the Dynamic Relink settings was not consistently applied from Site Settings.
Bug Number: MCCET-5842. Bin icon did not update for linked clips when they were consolidated.
Bug Number: MCCET-5715. Group and MultiGroup clips in a sequence did not always refresh properly after an update.
Bug Number: MCCET-5855. "SPFPlayConsumer::Execute TIMEOUT Monitor Exception" error encountered after playback of some XDCAM HD 35 media.
Bug Number: MCCET-4813. In some instances, markers shifted in a timeline that contained Group clips and mixed frame rates.
Bug Number: MCCET-5856. Error was encountered after closing Media Composer when connected to iNEWS via the NRCS tool.
Fixed in Media Composer v2024.12.1 Bug Number: MCCET-5847. In some instances, performance issues were encountered while using MultiCamera mode.
Bug Number: MCCET-5865. When importing an AAF, users were prompted to "Please choose an import resolution", even if media matched the current project resolution.
Bug Number: MCCET-5413. "Assertion failed" error was encountered after importing an AAF and previewing the output for Columnar or TabbedLists using the List Tool.
Bug Number: MCCET-5800. Using a semicolon in the name of a new sequence template caused multiple sequence templates to be created, in addition to a possible error if selected.
Bug Number: MCCET-5508. Sequence names containing underscores did not appear correctly at the bottom of the Timeline window.
Bug Number: MCCET-5630. In some instances, errors were encountered after using Auto Contrast in the Color Correction panel.
Bug Number: MCCET-5582. Increasing or decreasing timecode values by one frame increments did not work with an edit timebase of 50 fps.
Bug Number: MCCET-5587. Find Script button did not work for Group or MultiGroup clips.
Bug Number: MCCET-5797. Audio peak meters did not refresh during playback of a long sequence if the Transcript Tool contained a long transcript and was opened.
Bug Number: MCCET-5664. Client monitors connected with an AJA I/O device did not update to reflect changes in the Effect Editor.
Bug Number: MCCET-5342. LTC timecode for Blackmagic Design I/O devices was out of sync with the timecode for sequences in a 24p project.
Bug Number: MCCET-5352. Audio channels in the Audio Mixer were out of order if the Output for Audio Project Settings was set to "Direct, surround tracks in Pro Tools".
Bug Number: MCCET-5612. Only a single character was displayed for text prediction while typing Speaker IDs into the Transcript Tool on a Japanese language system.
Bug Number: MCCET-5645. In some instances, using a Splice-in edit caused an "Assertion failed" error, which prevented bins from saving.
Bug Number: MCCET-5707. Composer window did not redraw properly and used an incorrect color space if set to Show Single Monitor while Tracking was used.
Fixed in Media Composer v2024.12.1 Bug Number: MCCET-5720. Avid Media Composer Activation window was displayed, every time the application started, if an Ultimate Floating license was set on the license server.
Bug Number: MCCET-5739. In some instances, the PDF generated by choosing to Print Markers contained incorrect headings and extra padding for images.
Bug Number: MCCET-5784. Playhead position jumped back to previous position after pausing playback and using keyboard shortcuts for trimming.
Bug Number: MCCET-5805. Moving bins in or out of the root directory caused Media Composer to lock up.
Bug Number: MCCET-5854. Titles could not be saved with the legacy Marquee or Title Tool.
Bug Number: MCCET-5859. In some instances, the PDF generated by choosing to Print Markers contained mismatched column names and data.
Bug Number: MCCET-5860. Group clips created with Waveform Analysis were out of sync.
Bug Number: MCCET-5862. Drop-frame "timecode for first frame" of a sequence was lost if exporting to an XDCAM disc using the Sony PDW-U2.
Bug Number: MCCET-5872. New markers were not automatically sorted in the correct order in the Markers window.
Bug Number: MCCET-5873. Comment text in the Markers window did not wrap properly.
Bug Number: MCCET-5894. Timeline performance was sluggish for Intel Macs.
Bug Number: MCCET-5837. Attempting a Bulk Edit with a custom profile caused Media Composer to crash if the required bin column was missing.
Bug Number: MCCET-5788. Some audio track panning information was incorrect in Pro Tools Sessions exported from Media Composer.
Bug Number: MCCET-5781. Exporting a short sequence to AAF took a long time, while the status window reported "Gathering AAF Dependencies".
Bug Number: MCCET-5556. When source clips had a different aspect ratio than the project, grouped clips did not maintain FrameFlex settings and were squeezed after mixdown to XDCAM HD 50Mbits MXF.
Bug Number: MCCET-5316. In some instances, Send to Playback skipped clips and left black space, depending on Dynamic Relink settings and the resolutions used in a sequence.
Fixed in Media Composer v2024.12 Fixed in Media Composer v2024.12 The following have been fixed:
Bug Number: MCCET-5619. (Windows) Apple ProRes RAW media could not be linked, which resulted in a black screen or error.
Bug Number: MCCET-4484. Importing graphics was slower than expected on systems with a higher number of CPU cores.
Bug Number: MCCET-5372. Chinese TrueType font (HYZhuZiChaoRanTiW) did not display properly in SubCap and Titler+.
Bug Number: MCCET-5705. Clicking on the Clip Gain fader icon in the Timeline changed the Clip Gain value each time it was clicked.
Bug Number: MCCET-5638. Labels for audio channels in the Audio Mixer did not update properly when switching between Audio Project settings.
Bug Number: MCCET-5722. The Undo command caused two operations to revert, instead of one, after performing an operation in the Timeline and changing the clip in a group clip using the context menu (it should not be possible to undo clip selection within a group clip).
Bug Number: MCCET-5690. (MediaCentral | Production Management) Bins opened more slowly in recent versions of Media Composer than in previous versions.
Bug Number: MCCET-5551. Display/Hide Master Clip Controls button was missing from the AudioSuite window.
Bug Number: MCCET-5716. Using text containing non-alphanumeric characters, such as hyphens, could cause ScriptSync errors, such as "AvNN Error:350, AvNNDatabase::Align error".
Bug Number: MCCET-4602. Master Caption List was out of order when the SubCap effect was placed on two tracks and some captions were muted.
Bug Number: MCCET-4495. In some instances, promoting titles from the Title Tool to Titler+ resulted in inconsistencies.
Bug Number: MCCET-4593. (macOS) RS-422 deck control was lost for Avid Artist | DNxIO if BlackMagic Desktop Video 12.2 or newer was installed on the system.
Bug Number: MCCET-5097. Certain MP3 files could not be imported or transcoded on systems without QuickTime installed.
Bug Number: MCCET-5315. Stylesheets for SubCaps, accessed through the Global Properties window, did not save outline settings as part of their template.
Fixed in Media Composer v2024.12 Bug Number: MCCET-5608. During installation of Media Composer, an empty "BF-76.aaxplugin" folder was created instead of the expected BF-76.aaxplugin.
Bug Number: MCCET-4452. In some instances, NTSC standard definition footage was appearing as 720x496i after encoding as ProRes during import.
Bug Number: MCCET-5662. Only the EDGE4 option was available for use in the "Master Edge" bin column.
Bug Number: MCCET-5741. Adding markers on-the-fly during playback while the Marker window was opened and its Frame column was enabled caused Media Composer to crash.
Bug Number: MCCET-5362. (Windows) Japanese text for Audio Multi-Mix setting name did not display correctly on systems set to a Japanese locale.
Bug Number: MCCET-5750. Certain MP3 files could not be re-imported using Batch Import on systems without QuickTime installed.
Bug Number: MCCET-5489. Menu options for currently inactive window panes were not grayed out as expected.
Bug Number: MCCET-5484. Clip Gain slider in the Timeline displayed incorrect values for clips, which were carried over from previously adjusted clips in the Timeline.
Bug Number: MCCET-5777. Print Bin function excluded items between page breaks.
Bug Number: MCCET-5150. (macOS) Media was offline after mounting NEXIS workspaces on macOS Ventura (v13.x).
Bug Number: MCCET-5632. Workgroup transfers with Dynamic Relink enabled did not send high-res, PCM audio.
Bug Number: MCCET-5802. (MediaCentral | Production Management) Adding markers with new colors (included with v2024.6 and later) to a master clip caused an error while updating to the asset manager and would not check into MediaCentral | Production Management.
Bug Number: MCCET-5776. Media Creation settings were not applied in Site Settings.
Bug Number: MCCET-5202. (MediaCentral | Production Management) Using the "Check in For Pro Tools" menu option for sequences did not work and resulted in a "Current setting is read-only you can't change this setting" message.
Bug Number: MCCET-5803. "Include all new bins in transcription" option, located in the Transcript Settings window for Project Settings, was not applied in Site Settings.
Fixed in Media Composer v2024.10 Bug Number: MCCET-5743. Incorrect markers were removed after sorting, selecting, and deleting markers.
Fixed in Media Composer v2024.10 The following have been fixed:
Bug Number: MCCET-5610. (MediaCentral | Production Management) Media created on a local drive was not displayed in the Media Tool.
Bug Number: MCCET-5504. Japanese text was not properly decoded in the Import progress window on systems set to a Japanese locale.
Bug Number: MCCET-5580. In some instances, Media Composer produced an "Exception: Structured Exception" error and crashed after selecting a clip in the Timeline and moving a fader in the Audio Mixer.
Bug Number: MCCET-5507. Switching back and forth between newly created bins with linked media while in Text View mode caused the spacing between rows to change for larger font sizes.
Bug Number: MCCET-5611. Resizing the NRCS Tool panel after loading a MediaCentral | Newsroom Management story caused an "Assertion failed" error.
Bug Number: MCCET-5609. Media Composer crashed after stopping playback to adjust ganged sliders in the Audio Mixer.
Bug Number: MCCET-5530. (MediaCentral | Production Management) In some instances, updating from MediaCentral | Production Management while the Marker window was open caused Media Composer to issue an exception.
Bug Number: MCCET-5553. Encoding profile may not have saved and reverted to a different codec profile in Media Creation settings after closing a project and restarting the application.
Bug Number: MCCET-5499. When importing media and the Import Resolution Conflict dialog was encountered, the default codec in the Media Creation Import settings was reset.
Bug Number: MCCET-5558. In some instances, already rendered sequences were rendered again when performing a Send to Playback.
Bug Number: MCCET-5403. (MediaCentral | Production Management) Locally linked AMA media could go offline in a MediaCentral | Production Management environment, Media Composer configuration, and would not be able to link back to make it online again.
Bug Number: MCCET-5655. Choosing Columnar, TabbedLists, or WebLists from the Output Format submenu of the List Tool window caused window information to overlap.
Fixed in Media Composer v2024.10 Bug Number: MCCET-5119. Noticeable lags were experienced while editing in the Timeline if many real- time audio effects were used.
Bug Number: MCCET-5649. (macOS) Various bin operations, such as opening or renaming bins, could cause intermittent hangs/beachballs on macOS.
Bug Number: MCCET-5443. Sequence names entered by user reverted to default sequence names when using the Multi-Mix Tool.
Bug Number: MCCET-4651. When Avid Titler+ was applied to multiple tracks of video, editing text caused font properties to change unexpectedly.
Bug Number: MCCET-5577. Audio Ducking did not function after checking the "Use marks" option in the Audio Ducking window.
Bug Number: MCCET-5583. Media Composer did not automatically relink to highest quality media when it became available until users opened the Dynamic Relink Settings and clicked Apply.
Bug Number: MCCET-5680. In some instances, using Multicam to edit group clips caused Media Composer to crash and display an error message.
Bug Number: MCDEV-5534. Performing "Export to Device" using an XDCAM disc with the Sony PDW-U2 XDCAM Disc Drive failed and produced an "Exception: Structured Exception" error.
Bug Number: MCCET-5455. Consolidated AVC-Intra 422 clips caused playback errors and a "CORE_ CONSISTENCY_CHECK_FAILURE" in the Source monitor.
Bug Number: MCCET-5203. (MediaCentral | Production Management) Using the MSP_MXF Plug-in to link MXF files in file paths with multibyte character sets, such as Japanese, caused media files to become offline.
Bug Number: MCCET-4830. (MediaCentral | Production Management) "Filter Out System Drive" option in the Media Creation settings for a Project did not always work as expected when importing from the Source Browser, which meant users could still write media to the local system drive.
Bug Number: MCCET-5562. In some instances, consolidating AVC clips caused macroblocking errors in portions of the frame.
Bug Number: MCCET-5673. In some instances, adjusting clip gain in the Audio Mixer caused Media Composer to crash.
Bug Number: MCCET-5315. Stylesheets for SubCaps, accessed through the Global Properties window, did not save outline settings as part of their template.
Bug Number: MCCET-5512. (Windows) Effect Editor parameters were appearing as "Cannot display name" on Windows systems set to a Japanese locale.
Fixed in Media Composer v2024.6 Bug Number: MCCET-4815. (MediaCentral | Production Management) Checking out a partially-rendered matte key clip caused the clip to revert to a previously rendered state, even after those clips had portions of their renders cleared.
Bug Number: MCCET-4044. In some instances, Avid Titler+ effects disappeared from clips and sequences exported with an AAF.
Bug Number: MCCET-5682. Avid Huddle did not update images in real-time while making changes in the Effect Editor.
Bug Number: MCCET-5699. Avid Huddle did not update images in real-time while working in Trim Mode.
Bug Number: MCCET-4763. (macOS) Apple ProRes RAW files linked with UME produced errors on Apple Silicon systems.
Bug Number: MCCET-5640. Changes in the Audio Mixer Tool could not be undone.
Bug Number: MCCET-4165. (Windows) In some instances, Chinese fonts did not display correctly in Avid Titler+ and could not be selected.
Bug Number: MCCET-4175. In some instances, Arabic fonts did not display properly while using Avid Titler+.
Bug Number: MCCET-4180. Stacking multiple layers of titles in Avid Titler+ caused a reduction in playback performance.
Bug Number: MCCET-4333. Performance issues were experienced during playback and scrubbing of Avid Titler+ clips containing motion keyframes and adapters, which was especially noticeable for longer sequences.
Bug Number: MCCET-4511. Changing font size in Avid Titler+ caused text boxes with vertical alignment set to Right and horizontal alignment set to Center to become misaligned.
Bug Number: MCCET-4654. In some instances, it was not possible to edit text in "all-in-one" text boxes in Avid Titler+.
Bug Number: MCCET-4688. (macOS) Thai fonts displayed with unexpected spaces while using Avid Titler+.
Bug Number: MCCET-4866. The "GE_Dinar_One_Medium" font did not display properly while using Avid Titler+ on a system set to Arabic (Qatar) region.
Fixed in Media Composer v2024.6 The following have been fixed:
Fixed in Media Composer v2024.6 Bug Number: MCCET-5404. In some instances, proxy media created with Telestream Live Capture and EWC (Edit While Capture) was missing a portion of audio at the end of corresponding video files, until the capture was complete. This has been improved.
Bug Number: MCCET-5464. In some instances, using Send to Playback with Transcode on Send to Playback enabled may have transcoded clips that were already in the target resolution.
Bug Number: MCCET-5449. On certain sequences where an audio mixdown was used, Send to Playback may have resulted in an “Unrendered video effects detected after render” message.
Bug Number: MCCET-5370. Some AudioSuite effects could not be previewed and caused Media Composer to hang if an EQ3-7 Band effect was used on linked AVCHD media.
Bug Number: MCCET-5481. Selecting the “Choose for me” option in the New Project Settings window and clicking “Create” caused an “Incorrect value for width and height” error, even though raster dimensions are determined at a later stage.
Bug Number: MCCET-5519. Using the “Send To” option in Media Composer triggered a “This is a Preview Feature” warning.
Bug Number: MCCET-5520. ALE files containing a column name with more than 32 characters produced an error message and would not import.
Bug Number: MCCET-5518. Using Edit mode in the NRCS Tool to save edits containing MOS objects (for example, those created by VizRT Mosart) could cause an assertion error.
Bug Number: MCCET-5536 and 5496. (MediaCentral | Production Management) In some instances, opening a sequence with Dynamic Relink enabled caused Media Composer to become unresponsive.
Bug Number: MCCET-5131. MOV files that contained audio and video of different lengths could go offline after enabling Dynamic Relink.
Bug Number: MCCET-5447. Text in the Media Composer Classic layout was not readable if the User Interface Settings for “Interface brightness” were set to the brightest or second brightness UI colors (two rightmost options).
Bug Number: MCCET-5453. When editing a group clip, the video and audio sometimes became offset for group clips created by consolidating a sequence that only used the video (no audio) track of a group clip.
Bug Number: MCCET-5539. In some instances, importing an ALE file containing a mismatch between duration values caused an “Exception: BIN_IMPORT_NO_MATCH” error.
Bug Number: MCCET-4593. (macOS) RS-422 deck control was lost for Avid Artist | DNxIO if BlackMagic Desktop Video 12.2 or newer was installed on the system.
Fixed in Media Composer v2024.6 Bug Number: MCCET-5538. Custom columns did not appear after importing an ALE file with the “Merge events with known master clips” option enabled in User Settings.
Bug Number: MCCET-5130. In some instances, after opening a project stored on a NEXIS workspace, the Project and Bin Container Sidebars were blank, and did not display any bins or folders.
Bug Number: MCCET-5557. Audio in the original masterclip could relink to consolidated media after clips were consolidated with Dynamic Relink enabled.
Bug Number: MCCET-5548. Video in a 50p project became out of sync with audio after a few minutes or more of playback on an external monitor using a DNxIO or DNxIQ interface.
Bug Number: MCCET-5555. Since Media Composer v2021.x, the NRSC Tool window could not be fully collapsed or resized as small as previous versions.
Bug Number: MCCET-5440. Depending on the order of selections made in Composer settings, some NDI and SRT devices encountered problems with playback of multiple streams of video at 1/4 resolution in MultiCam mode (4-way or 9-way split).
Bug Number: MCCET-4815. (MediaCentral | Production Management) Checking out a partially-rendered matte key clip caused the clip to revert to a previously rendered state, even after those clips had portions of their renders cleared.
Bug Number: MCCET-5526. Using timecode to find a frame in the Record monitor did not work properly for linked OP1a files with recordings that began before midnight and continued into the next day.
Bug Number: MCCET-769. In some instances, pressing the J key multiple times to play a sequence fast in reverse caused an “APanVolConsumer::GetAudioGain()Invalid finalDistanceToNext [0]” error.
Bug Number: MCCET-5094. Resizing the Audio Mixer Tool window caused the height of faders to change after switching the mixer’s monitoring to “Direct, surround tracks in ProTools order”.
Bug Number: MCCET-5325. Results for the Find Script command included large portions of a clip that spanned multiple script marks.
Bug Number: MCCET-5337. In some instances, Media Composer would not remain activated after relaunch when using a floating license, requiring users to check the “Use License server” box again after restarting.
Bug Number: MCDEV-18779. Linked ProRes 4444 graphics with an alpha channel flickered during playback and caused Media Composer to crash.
Bug Number: MCCET-4894. In some instances, audible skipping or glitches were encountered when using audio scrub.
Fixed in Media Composer v2024.2 Bug Number: MCCET-5590. Sequences with Titler+ effects in them could cause errors or serious hangs during playback and editing.
Fixed in Media Composer v2024.2 The following have been fixed:
Bug Number: MCCET-5254. Chinese fonts appeared as "Cannot display name" in the list of available fonts for the SubCap effect.
Bug Number: MCCET-5300. Changes to a Color LUT were not updated and displayed until the playhead was moved in the Effect Editor window.
Bug Number: MCCET-4271. Clips were slow to load if EUCON Controller was enabled.
Bug Number: MCCET-5329. After applying the 3D Warp effect to a clip, enabling Rotation, and setting its Z-axis to 90 degrees in the Effect Editor, attempting to manually resize the image using the Scale handles in the Composer window caused it to suddenly change size.
Bug Number: MCCET-5269. (macOS) Closing the Effect Editor caused the Audio Mixer to change its mix mode from Live to Clip.
Bug Number: MCCET-5270. Bins added to Favorite Bins were lost after unmounting and remounting workspaces.
Bug Number: MCCET-5364. Depending on the selected font size, text was not scaled properly and appeared outside of the bounding box for items in a bin when zoomed out in Frame View.
characters may have caused Media Composer to report an error or crash.
Bug Number: MCCET-4900. Length of clip names was different in a bin’s Text View and Frame View, which sometimes caused Media Composer to crash when using Baselight.
Bug Number: MCCET-5407. When exporting SubCap text as an Avid DS Caption File (.txt), an extra space was added to the end of each line of text, which was visible after importing the exported file.
characters.
Bug Number: MCCET-5431. Tooltips were missing for some items in the Sequences tab of the Batch Subclip Tool.
Bug Number: MCCET-5439. If the Source Browser was floating, it did not retain its size or position after Media Composer was restarted.
Fixed in Media Composer v2024.2 Bug Number: MCCET-5426. When using “Export Transcript to Text File” with a Japanese transcript, the file name of the exported text file (.txt) was not properly decoded if Japanese characters were used.
Bug Number: MCCET-5457. (Windows) Depending on the account types used to create a new account and sign-in to a Windows system (standard or administrator), launching Media Composer reported an “Exception: std::exception, what:Access is deinied” error.
Bug Number: MCCET-5472. Some interface settings were not working properly for projects stored on a NEXIS workspace.
Bug Number: MCCET-5480. New bins would not save properly after using the AutoSequence feature.
Bug Number: MCCET-5394. (Windows) In some instances, PhraseFind AI and ScriptSync AI services were not fully installed on systems with Java (32-bit) present, which caused errors to occur when using these features in Media Composer.
Fixed in Media Composer v2024.2