---
product: media-composer
product-area: editing
version: "2025"
release-date: 01/01/2025
doc-type: release-notes
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Fixed in Media Composer v2025.12.1 Avid Media Composer® Fixes for Media Composer v2025.x This document provides a cumulative list of fixes for the Media Composer v2025.x releases. To see detailed information on each release, see the individual ReadMe for each release here.
Fixed in Media Composer v2025.12.1 The following have been fixed for all applicable models of Media Composer in this update (First, Standard, Ultimate, and Enterprise):
Bug Number: MCCET-6186. Email notifications were sent multiple times during batch clip import and transcode operations instead of triggering only once per job.
Bug Number: MCCET-5948. Timeline did not redraw at page edges during trim playback, causing the playhead to move off-screen.
Bug Number: MCCET-6035. Real-time screening and marking caused the playhead to stall and waveforms to stop updating during recording.
Bug Number: MCCET-6135, MCCET-6232. Send to Playback with segmented master clips or loading video clips from MediaCentral | Production Management with Dynamic Relink enabled might have caused video clips to shift.
Bug Number: MCCET-6108. Importing SubCap files in 1080p/50 HLG projects failed due to invalid frame validation in 50 fps formats.
Bug Number: MCCET-6138. Pan and Zoom produced unintended curved movement when zoom and position were adjusted simultaneously.
Bug Number: MCCET-5554. Reading audio timecode from 50P and 25P media produced partial blank timecodes and incorrect durations.
Bug Number: MCCET-6185. Certain multigroup clips would not play in multicam mode when loaded in the Source Monitor in interlaced projects.
Bug Number: MCCET-6184. Media Composer included Apache Tika components that contained a security-vulnerable file set.
Fixed in Media Composer v2025.12.1 Bug Number: MCCET-5925. Adjusting line or outline weight in certain fonts in Subcap caused rendering artifacts on some capital letters.
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
Bug Number: MCCET-6261. ScriptSync did not always select the correct script line when using Find Script, causing the wrong take to be highlighted.
Bug Number: MCCET-6202. Exporting an EDL after exporting graphics multiple times displayed a Breakpad error window and could result in Media Composer crashing.
Bug Number: MCCET-6229. Avid Huddle and other extensions did not appear in the Tools menu.
Bug Number: MCCET-5993. Imported AVT transcripts failed to populate speaker names in the Manage Speaker Names dialog when brought into another project.
Fixed in Media Composer v2025.12.1 Bug Number: MCCET-6192. Send to Playback with non-PCM media sometimes resulted in garbled or missing audio.
Bug Number: MCCET-6193. Send to Playback performed an unnecessary audio mixdown in some instances.
Bug Number: MCCET-5920. Visual artifacts appeared in the timeline’s track area after reopening a sequence that had been zoomed in and scrolled vertically through its tracks.
Bug Number: MCCET-6244. Batch reimporting certain MP3 clips failed with an IMPORT_TOO_SHORT error.
Bug Number: MCCET-6159. Using Export to Device > XDCAM generated MXF files with an incorrect VideoLineMap metadata value.
Bug Number: MCCET-6120. Dynamic Relink failed to bring certain transcoded clips online in a Production Management environment.
Bug Number: MCCET-6224. Selecting clips in Frame View caused a noticeable delay before the application responded.
Bug Number: MCCET-6249. Create SubCap skipped certain lines of dialogue when generating captions.
Bug Number: MCCET-6240. Exporting OP1a AMA media to a network drive caused Media Composer to hang while finishing the export.
Bug Number: MCCET-6269. Importing marker files did not complete when used on sequences with more than 32 video tracks.
Bug Number: MCCET-6169. FrameFlex renders did not match the DNx codec/quality set in the Render and Motion Effects settings.
Bug Number: MCCET-6193. Send to Playback performed an unnecessary audio mixdown in some instances.
Bug Number: MCCET-6277. Editing with the Effect Palette open caused Media Composer to pause for several seconds before responding.
Bug Number: MCCET-6206. Motion Adapters applied in progressive projects produced ghosting and interlacing when using the default Blended Interpolated render setting.
Bug Number: MCCET-6133. AVC-I MXF media linked with MSP MXF was incorrectly identified, causing glitches after consolidation.
Fixed in Media Composer v2025.12 Bug Number: MCCET-6273. Data tracks could not be moved in the timeline using the Trim Left or Trim Right keys.
Bug Number: MCCET-6245. WAV audio files with numbered suffixes failed to batch reimport and remained offline.
Bug Number: MCCET-6263. (Windows) Drag-and-drop export failed to initiate.
Bug Number: MCCET-5675. Playing certain ANC data media triggered an exception error when BMD I/O was enabled.
Bug Number: MCCET-6243. Rendering stacked matte key layers with DNx codecs resulted in visible image degradation.
Fixed in Media Composer v2025.12 The following have been fixed:
Bug Number: MCCET-5895. Exporting markers caused Media Composer to crash.
Bug Number: MCCET-5745. (macOS) "File <file_name> not found" error occurred when opening a project containing UTF-8-Mac (NFD) encoded folder names containing certain Japanese characters.
Bug Number: MCCET-5696. Group clips created from subclips with in-points displayed incorrect FrameFlex aspect ratios.
Bug Number: MCCET-5543. Floating Composer monitor moved to the left after toggling show/hide video.
Bug Number: MCCET-5952. Marker names and comments did not appear immediately after pasting a marker into a duplicated sequence until the sequence was reloaded.
Bug Number: MCCET-5765. Applying the AAX Dyn3 Limiter/Compressor intermittently failed to respond to side-chain input A1 until the Key Input was reselected.
Bug Number: MCCET-5544. Renaming track names in Group Clips did not trigger a redraw, resulting in partially visible text.
Bug Number: MCCET-4972. The Active Format Description (AFD) metadata entry was missing from exported media files.
Bug Number: MCCET-5360. Applying animated effects to clips with alpha channels intermittently caused Media Composer to freeze or crash.
Bug Number: MCCET-5892. (macOS) In Titler++, the 'à' character is incorrectly rendered as an uppercase letter when entered using a French keyboard layout.
Fixed in Media Composer v2025.12 Bug Number: MCCET-5456. Dragging a track from within a nested clip to a new track automatically selected the first clip or filler item on the destination track.
Bug Number: MCCET-5918. VBI lines were incorrectly displayed when linking IMX50 media.
Bug Number: MCCET-5964. Exported MXF files from a 1080x1920 timeline were encoded with a 1088x1920 raster when using DNxHR HQX or DNxHR 444 codecs.
Bug Number: MCCET-5703. Switching from the Color workspace to Edit workspace caused the floating Composer window to lose its saved panel layout.
Bug Number: MCCET-5933. Clicking a clip and pressing Cmd/Ctrl+A in quick succession failed to select all items on the first attempt, causing the interface to flash.
Bug Number: MCCET-5972. Scroll-based shortcuts (Ctrl+Scroll Wheel, Ctrl+Shift+Scroll Wheel) failed to function in Color Correction when the cursor was active in a field box.
Bug Number: MCCET-5127. Playing an asset after rapidly switching to a 9-way multicam split caused the viewer to detach and render outside the source frame.
Bug Number: MCCET-5561. (masOS) When comparing sequences, the List Tool incorrectly diplayed frame counts.
Bug Number: MCCET-5832. Tracking crosshairs floated out of the record monitor into the UI and became inaccessible after applying a saved stabilize template and switching from the Color workspace in Media Composer.
Bug Number: MCCET-5931. (Windows) Media Composer experienced Breakpad crashes related to Qt6Core.dll when performing actions like creating users, removing bin locks, or opening settings while connected to NRCS.
Bug Number: MCCET-5974. Exporting an XML from the List Tool resulted in custom columns and their associated text entries written in the incorrect order.
Bug Number: MCCET-5950. Rolling titles created in the Legacy Title Tool repeatedly played only the first page.
Bug Number: MCCET-5908. Editing FrameFlex effects on group clips resulted in incorrect images being displayed in the Effects Editor.
Bug Number: MCCET-5279. Caching and redraw issues in the Timecode Burn-In Effect resulted in inaccurate timecode display.
Bug Number: MCCET-5698. Symphony color correction tools became unusably slow when Avid Huddle/SRT streaming was enabled.
Fixed in Media Composer v2025.12 Bug Number: MCCET-4307. Connection to the FluidMotion vector correction effect editor was lost when switching workspaces.
Bug Number: MCCET-5628. Media Composer crashed when importing ProRes MXF files from the ARRI Alexa 35.
Bug Number: MCCET-6018. Premiere and Resolve keyboard mappings were unavailable when Media Composer was licensed as a Standard version.
Bug Number: MCCET-5838. Timecode navigation failed under specific combinations of sequence settings and Timecode Window configurations.
Bug Number: MCCET-5448. The "Scaling" text in the Record Monitor appeared blurred during 3D Warp adjustments.
Bug Number: MCCET-5934. (macOS) Font styles did not render correctly in the SubCap effect, causing Bold and Italic to display incorrectly.
Bug Number: MCCET-5820. Attempting to consolidate spanned P2 clips resulted in a 'CM_LABEL_NOT_ UNIQUE' error.
Bug Number: MCCET-5906. Loading Canon XF MPEG-2 35 and Sony XDCAM EX 35 media consolidated to OP-ATOM into the Source monitor resulted in assertion failures and application crashes.
Bug Number: MCCET-5696. Group clips created from subclips with in-points displayed incorrect FrameFlex aspect ratios.
Bug Number: MCCET-5810. Media Composer crashed when attempting to load a second sequence while the first sequence was already active in Play Standby mode.
Bug Number: MCCET-5467. Interlaced frame rates were not supported when exporting SD 4:3 .mov files.
Bug Number: MCCET-6009. Multigroup clips were scaling up unexpectedly during playback in the Source Monitor in DCI 4K Scope projects.
Bug Number: MCCET-5979. When 32-bit WAV files were imported or transcoded into a 50p project, the audio start timecode failed to register correctly.
Bug Number: MCCET-5369. An additional black frame was present at the end of .mov clips linked through UME.
Bug Number: MCCET-6000. In some instances, checking out or importing highly complex AAF sequence files caused Media Composer to become unresponsive.
Fixed in Media Composer v2025.12 Bug Number: MCCET-5902. Certain versions of Elasticsearch used by Media Composer resulted in uncontrolled resource consumption and application crashes.
Bug Number: MCCET-6029. Using 10-bit codecs for rolling and crawling titles caused a 'WRONG FORMAT' error in the Classic Title Tool.
Bug Number: MCCET-5374. The Play Length Toggle button did not appear highlighted in the Command Palette.
Bug Number: MCCET-5293. Duplicate yellow trim indicators appeared during ripple trimming when timeline playback transitioned to a second page.
Bug Number: MCCET-4483. Flickering or image corruption occurred during playback and after export on systems equipped with NVIDIA RTX A4000 or A4500 GPUs.
Bug Number: MCCET-4448. Using Expert Render with an NVIDIA RTX 5000 GPU resulted in certain matte keys rendering as black.
Bug Number: MCCET-6019. (macOS) Titler+ displayed the Hebrew character Nun (נ) incorrectly as an X instead of the correct glyph.
Bug Number: MCCET-5767. Parameter values appeared on the keyframe graph in the Titler Plus/Effect Editor, which obscured labels or data points.
Bug Number: MCCET-6023. Media Composer caused a memory leak due to repeated access to SMBmapped network drives in domain environments.
Bug Number: MCCET-6010. The Fast Menu disappeared after disabling the Toolbar in Timeline settings in Media Composer.
Bug Number: MCCET-5598. Subcap playback dropped frames and lost real-time performance.
Bug Number: MCCET-6015. Motion Adapters were lost from muted clips in Media Composer after copypasting, reloading the project, or refreshing the timeline.
Bug Number: MCCET-6031. Using 'Create script from clip' on an auto-synced clip resulted in script text being generated multiple times.
Bug Number: MCCET-6026. Media did not load in the Source Monitor on the initial double-click in frame view, particularly after opening a project or bin.
Bug Number: MCCET-5963. Selecting multiple clips in a bin using Ctrl+A caused the system to hang when executed under a specific user profile.
Fixed in Media Composer v2025.12 Bug Number: MCCET-5295. The 'Choose for Me' option misidentified 25i and 50i HD/HDTR formats, which led to incorrect auto project settings.
Bug Number: MCCET-6043. Media Composer crashed when nudging clips while the Markers window is docked in the top-left corner of the interface.
Bug Number: MCCET-6074. (MediaCentral | Production Management) AVC-Intra 100 video files created using Media Composer's Video Mixdown or Transcode initially played back correctly, but showed glitches after being checked into and out.
Bug Number: MCCET-6047. MXF files using the AVC-Intra 100 format had glitches at the end after linking and consolidating in newer Media Composer versions.
Bug Number: MCCET-5938. Bin icon showed as closed in the Favorite Bins folder even though the bin was open in the Main Bin container.
Bug Number: MCCET-6077. NRCS crashed on Qt6Core.dll after Media Composer was relaunched and the user attempted the Shift+Click Create Sequence command in the NRCS tool using a previously loaded story.
Bug Number: MCCET-6049. Media Composer crashed upon opening the Dynamic Relink Window while the user was logged into the NRCS tool.
Bug Number: MCCET-6040. Opening a newly created bin immediately after logging into NRCS caused Media Composer to become unresponsive, displaying an exception error referencing Qt6Core.DLL.
Bug Number: MCCET-6095. (MediaCentral | Production Management) In Media Composer 2024.12.X, the Production Management window hung and caused the editor to crash for certain users when signing in via MediaCentral Cloud UX.
Bug Number: MCCET-5095. Editing a field in the NRCS Tool caused the iNews-linked sequence to be deassociated.
Bug Number: MCCET-5989. Some markers changed color when a sequence was opened in a newer version of Media Composer, despite the sequence not being edited.
Bug Number: MCCET-5893. (macOS) Drag-and-drop from Interplay Access to Media Composer bins was unsuccessful.
Bug Number: MCCET-6075. Interlacing artifacts on DNxHD media imported with “Do not resize smaller images,” caused by fixed field order in FrameFlex for PAL projects.
Bug Number: MCCET-5984. When XDCAM MXF OP1A media files were batch re-imported as MXF OPAtom, the embedded captions (Data track) were not properly imported.
Fixed in Media Composer v2025.12 Bug Number: MCCET-5830. An Exception: PMM_MISMATCH_MEDIA_WRONG_FORMAT was encountered when attempting to consolidate sequences containing segments of AVC Long GOP.
Bug Number: MCCET-6037. Segment mode failed to function properly on extended sequences in Media Composer.
Bug Number: MCCET-5697. Media Composer failed to activate licenses from the backup FLS server during failover.
Bug Number: MCCET-6107. Sequences with mixed frame rates (29p and 59i) were incorrectly flagged as mixed resolution in Media Composer, preventing proper Send-To-Playback.
Bug Number: MCCET-6131. Media Composer crashed when switching workspaces with the Project window open.
Bug Number: MCCET-6098. Video output did not consistently update when switching video tracks with playback paused on AJA hardware.
Bug Number: MCCET-5986. Enabling waveforms on long audio files triggered an 'Invalid overreadLimitOffsetInSamples' error and caused Media Composer to freeze.
Bug Number: MCCET-6066. Files did not check into PAM correctly after Distributed Processing transcoding because check-in occurred before the bin update.
Bug Number: MCCET-6017. (Windows) Media Composer 2024.12.1 crashed on launch with Enterprise roles applied, showing an access violation in Qt6Core.dll.
Bug Number: MCCET-6069. Changing kerning with Alt+Arrows in Titler+ unintentionally added keyframes, causing unwanted animation.
Bug Number: MCCET-6033. Crash occurred during audio transcription in Media Composer 2025.6.
Bug Number: MCCET-4909. Linking UHD media into HD projects could have resulted in a one-pixel gray halo around images in the timeline and exports.
Bug Number: MCCET-6167. (MediaCentral | Production Management) Frequent freezing and sluggish timeline operations occurred when using XAVC-I media during workflows with large sequences.
Bug Number: MCCET-6134. When using XAVC-I media, moving clips in the timeline on large projects was significantly slower than in previous versions.
Fixed in Media Composer v2025.6 Fixed in Media Composer v2025.6 The following have been fixed:
Bug Number: MCCET-5731. Selecting "Decompose" with "Captured Clips Only" option for a sequence resulted in "Assertion failed" and "Fatal Error" messages.
Bug Number: MCCET-5711. Keyboard shortcut to show or hide Bin Container Sidebar did not work consistently.
Bug Number: MCCET-5751. Using the Cmd+V keyboard shortcut while dragging audio clips to different tracks resulted in an error and crash.
Bug Number: MCCET-5352. Audio channels in the Audio Mixer were out of order if the Output for Audio Project Settings was set to "Direct, surround tracks in Pro Tools".
Bug Number: MCCET-5582. Increasing or decreasing timecode values by one frame increments did not work with an edit timebase of 50 fps.
Bug Number: MCCET-5605. In some instances, opening a sequence and entering MultiCamera mode resulted in sluggish behavior.
Bug Number: MCCET-5853. "Allow Mixed Frame Rate Media" checkbox in the Dynamic Relink settings was not consistently applied from Site Settings.
Bug Number: MCCET-5761. In some instances, Matte Key clips were offline with Dynamic Relink enabled.
Bug Number: MCCET-5727. Tooltips for the Transcript Tool were garbled on a Japanese language system.
Bug Number: MCCET-5798. "Prepare effects for Digital Cut" were not displayed in the ExpertRender window.
Bug Number: MCCET-5612. Only a single character was displayed for text prediction while typing Speaker IDs into the Transcript Tool on a Japanese language system.
Bug Number: MCCET-5842. Bin icon did not update for linked clips when they were consolidated.
Bug Number: MCCET-5715. Group and MultiGroup clips in a sequence did not always refresh properly after an update.
Bug Number: MCCET-5855. "SPFPlayConsumer::Execute TIMEOUT Monitor Exception" error encountered after playback of some XDCAM HD 35 media.
Bug Number: MCCET-4813. In some instances, markers shifted in a timeline that contained Group clips and mixed frame rates.
Fixed in Media Composer v2025.6 Bug Number: MCCET-5800. Using a semicolon in the name of a new sequence template caused multiple sequence templates to be created, in addition to a possible error if selected.
Bug Number: MCCET-5784. MC 2024.12 gave a "MXF_ DIDMapperSegmented::GetParsedIndexTableSegmented" exception on specific AAF/MXF files during playback.
Bug Number: MCCET-5856. Error was encountered after closing Media Composer when connected to iNEWS via the NRCS tool.
Bug Number: MCCET-5847. In some instances, performance issues were encountered while using MultiCamera mode.
Bug Number: MCCET-5413. "Assertion failed" error was encountered after importing an AAF and previewing the output for Columnar or TabbedLists using the List Tool.
Bug Number: MCCET-5865. When importing an AAF, users were prompted to "Please choose an import resolution", even if media matched the current project resolution.
Bug Number: MCCET-5508. Sequence names containing underscores did not appear correctly at the bottom of the Timeline window.
Bug Number: MCCET-5630. In some instances, errors were encountered after using Auto Contrast in the Color Correction panel.
Bug Number: MCCET-5859. In some instances, the PDF generated by choosing to Print Markers contained mismatched column names and data.
Bug Number: MCCET-5587. Find Script button did not work for Group or MultiGroup clips.
Bug Number: MCCET-5808. AudioSuite plug-ins only worked in mono mode.
Bug Number: MCCET-5797. Audio peak meters did not refresh during playback of a long sequence if the Transcript Tool contained a long transcript and was opened.
Bug Number: MCCET-5872. New markers were not automatically sorted in the correct order in the Markers window.
Bug Number: MCCET-5873. Comment text in the Markers window did not wrap properly.
Bug Number: MCCET-5805. Moving bins in or out of the root directory caused Media Composer to lock up.
Bug Number: MCCET-5645. In some instances, using a Splice-in edit caused an "Assertion failed" error, which prevented bins from saving.
Fixed in Media Composer v2025.6 Bug Number: MCCET-5685. Audio Suite Effect dialog reported incorrect "Integrated(LUFS)" measurement for the Source side when using the Nugen LM Correct plug-in.
Bug Number: MCCET-5894. Timeline performance was sluggish for Intel Macs.
Bug Number: MCCET-5837. Attempting a Bulk Edit with a custom profile caused Media Composer to crash if the required bin column was missing.
Bug Number: MCCET-5781. Exporting a short sequence to AAF took a long time, while the status window reported "Gathering AAF Dependencies".
Bug Number: MCCET-5788. Some audio track panning information was incorrect in Pro Tools Sessions exported from Media Composer.
Bug Number: MCCET-5880. Fade Effect was not working in Avid Titler+.
Bug Number: MCCET-5921. (MediaCentral | Production Management) Send to Playback did not work in a UHD project if "Transcode before sending to playback" was enabled.
Bug Number: MCCET-5907. While in Frame View mode, opening a bin always indicated that it had unsaved changes.
Bug Number: MCCET-5844. (macOS) When using Ripple Trim, Composer monitors did now display images for sequences longer than 2h19m.
Bug Number: MCCET-5771. Moving a clip one frame at a time using keyboard shortcuts could unmute or solo audio tracks.
Bug Number: MCCET-5858. (macOS) Save As field in the Export dialog window would not accept text that was pasted using Cmd+V.
Bug Number: MCCET-5910. (macOS) Cmd+A did not work to select all items in the Import dialog window.
Bug Number: MCCET-5017. In some instances, the aspect ratio changed after using the "Commit Multicam Edits" command on a sequence made of Group clips.
Bug Number: MCCET-5924. (MediaCentral | Production Management) In some instances, PhraseFind did not start when connected to MediaCentral, resulting in an "A language must be selected before PhraseFind can be performed" error.
Bug Number: MCCET-4917. In some instances, the Mute Clip command did not work consistently on Group clips.
Bug Number: MCCET-5912. Choosing to Show Phantom Marks in the Record monitor caused Effect Editor keyframes to disappear from the Record monitor.
Fixed in Media Composer v2025.6 Bug Number: MCCET-5687. Loading complex stories in NRCS caused Media Composer performance to slowdown and eventually hang.
Bug Number: MCCET-5344. Smart Tool buttons mapped to the Timeline were deselected after entering Trim mode.
Bug Number: MCCET-5686. Audio passthrough stoped with non Avid USB Audio interfaces and Video IO.
Bug Number: MCCET-5909. (Windows) When using the "Media Composer Classic" user profile, changing the "Create a new Bin or opening a closed Bin" option in the Bin Settings to "Floats the Bin" caused Bins to open behind other windows.
Bug Number: MCCET-5342. LTC timecode for Blackmagic Design I/O devices was out of sync with the timecode for sequences in a 24p project.
Bug Number: MCCET-5874. When trying to load an MXF OPAtom file recorded via EVS, the following error appears: Exception: MXF_DIDMapperSegmented::GetParsedIndexTableSegmented - Unable to parse the Index Table.
Bug Number: MCCET-5911. Match frames did not work properly when creating a group clip of 59.94p footage in a 59.94i project.
Bug Number: MCCET-5879. (MediaCentral | Production Management) Glitches were encountered after AVC-Intra 100 media created in Media Composer v2024.12 was transcoded using MediaCentral Transcode. This fix requires the use of MediaCentral Transcode v2024.10.2 or later.
Bug Number: MCCET-5936. Play button in the Record monitor was not highlighted during playback of a sequence.
Bug Number: MCCET-5650. Subclips created by AutoSync with surround sound had no audio output when played in the source monitor.
Bug Number: MCCET-5951. "Segmentation fault" error was encountered in sequences containing markers after using the "To the Left" or "To the Right" command to select all corresponding segments (in Segment mode), and using keyboard shortcuts to nudge clips.
Bug Number: MCCET-5386. Media Creation target drive pulldown menu was not wide enough to display long drive or workspace names.
Bug Number: MCCET-5937. Titles created with the Classic Title Tool or Marquee did not update in the Timeline after using Add/Edit Title to modify them.
Bug Number: MCCET-5946. (macOS) Multiple mixes window did not show the saved mix presets in the Multi-Mix Tool.
Fixed in Media Composer v2025.6 Bug Number: MCCET-5973. (Windows) "Exception: Structured Exception" error occurred when creating a new project on a Media Composer system without SRT and NDI installed.
Bug Number: MCCET-5359. Increasing or decreasing the timecode using the "Using Timecode to Find a Frame" in a DF timecode sequence did not move to the correct frame location.
Bug Number: MCCET-5895. Exporting markers caused Media Composer to crash.
Bug Number: MCCET-5923. FrameFlex reformat option did not retain when performing an AutoSync on a sequence.
Bug Number: MCDEV-20233.(Windows) QuickTime files containing an alpha channel could not be imported using the default 'Uncompressed' Alpha Encoding option in the Import Settings window. Starting with Media Composer v24.12.2, all imported alpha channels use Run-Length Encoding (RLE).
Bug Number: MCCET-5902. Certain versions of Elasticsearch used by Media Composer resulted in uncontrolled resource consumption and application crashes.
Fixed in Media Composer v2025.6