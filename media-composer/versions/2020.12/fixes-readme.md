---
product: media-composer
product-area: editing
version: "2020.12"
release-date: 01/12/2020
doc-type: fixes-readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Fixed in Media Composer v2020.12.8 Avid Editing Application ® Composer® ReadMe Fixes for Media v2020.x IMPORTANT: This document provides a cumulative list of fixes for the Media Composer v2020.x releases. To see detailed information on each release, see the individual ReadMe for each release here.
Fixed in Media Composer v2020.12.8 The following have been fixed:
➤ Bug Number: MCCET-4908. Third-party plug-ins were initialized upon launch. In some instances, this caused Media Composer to hang or crash, or triggered unintentional license usage for third-party plug-ins.
Fixed in Media Composer v2020.12.7 The following have been fixed:
> **Note:** Dynamic Relink has been improved with this release and includes various fixes to address issues
with Matte Keys and alpha channels. Bug Numbers associated with these fixes include MCCET-4737, MCCET-4699, MCCET-4568, MCCET-4561, MCCET-4616, MCCET-4560, MCCET-4784, MCCET-4829, MCCET-4666, MCCET-4778, MCCET-4467, and MCCET-4605.
➤ Bug Number: MCCET-4592. Switching from the Edit workspace to the Effects workspace put Media Composer into Segment mode.
➤ Bug Number: MCCET-4782. Enabling waveforms caused general sluggishness and slower performance when working in bins and sequences.
➤ Bug Number: MCCET-4613. In some instances, switching from Live Mix to Clip mode in the Audio mixer caused an "Assertion failed: IsValidPanCoefficientValue (newCoefficient)" error.
➤ Bug Number: MCCET-4641. In some instances, user interface and playback would slow down and stop responding if sequences contained certain effects, such as the Safe Color Limiter.
Fixed in Media Composer v2020.12.7 ➤ Bug Number: MCCET-4512. "Assertion failed" TimeWarp error caused Production Management check-ins to fail when the Neat Video plug-in was installed.
➤ Bug Number: MCCET-4506. After consolidating or transcoding footage with an alpha channel, the clip names for Matte Key effects were not properly decoded when using Japanese characters.
➤ Bug Number: MCCET-4673. Checking out sequences was slower for remote Production Management clients with latencies higher than on-premises systems.
➤ Bug Number: MCCET-4809. In some instances, audio for proxy media experienced playback errors, including distorted sound and playback that stopped unexpectedly.
➤ Bug Number: MCCET-4433. Audio playback was faster than normal for clips created with Interplay Capture and AirSpeed Multi Stream.
➤ Bug Number: MCCET-4832. In some instances, bins were very slow to respond when opening and closing, or when displaying, sorting and selecting certain media.
➤ Bug Number: MCCET-4580. When adding markers to an audio track using the Source monitor in a 1080p/24 project, the marker position jumped to a random location in the Timeline. When using different project settings, the current position indicator jumped to a random location after clicking on a marker in the Marker window.
➤ Bug Number: MCCET-4184. There is a delay from the time a letter is typed to it being displayed on screen when using Chinese characters in Titler+.
➤ Bug Number: MCCET-4555. File paths were not retained when opening projects using the Browse option in the Select Project window.
➤ Bug Number: MCCET-4771. (Windows) In some instances, bins were very slow to open.
➤ Bug Number: MCCET-4570. (MediaCentral | Production Management) Playback would fail when sending MXF (OP1A) files to a local disc using the Transfer Engine.
➤ Bug Number: MCCET-3408. (macOS) Title Tool caused Media Composer to crash when saving a title with Full Screen Playback enabled.
➤ Bug Number: MCCET-4710. (Windows)(MediaCentral | Production Management) “Exception:
Structured Exception” error appears when starting Media Composer and "Connecting to MediaIndexer" status is displayed on splash screen.
➤ Bug Number: MCCET-4211. Titler+ created unwanted keyframes when text was deleted from a text box with existing keyframes.
Fixed in Media Composer v2020.12.7 ➤ Bug Number: MCCET-4779. Using Preview in the AudioSuite tool played a portion of the original media beyond the end of the clip as edited into the Timeline.
➤ Bug Number: MCCET-4330. Background transcoding of ProRes RAW files to another format failed to complete.
➤ Bug Number: MCCET-4368. In some instances, "Assertion Failed" error message appeared when using Dynamic Relink, audio media did not load properly, and "highest quality" option was ignored.
➤ Bug Number: MCCET-4629. Adding an Audio Track Effect to a track with Group clips on it resulted in the audio in the Group clip not switching or displaying properly.
➤ Bug Number: MCCET-4399. If you performed an Export as Graphic and NDI was active, you might have received an “AMEResourceManager ReconfigHW_LegendBoB_Capture” error.
➤ Bug Number: MCCET-4600. Users of Media Composer | Enterprise were interrupted with a message about supported versions of the administration server used to create current definitions.
➤ Bug Number: MCCET-4478. Avid NEXIS users experienced significant performance issues when bin indexing and noticed bandwidth irregularities in the Avid NEXIS Management Console.
➤ Bug Number: MCCET-4581. (macOS) Video quality was significantly degraded when monitoring with an AJA DNxIV in Draft mode on an M1 Mac.
➤ Bug Number: MCCET-4462. Linking AVC-I Class100 1080p50 media was unsuccessful and returned "The media is unsupported" or "ExceptionUNKNOWN horizontal subsapling error" message, depending on the version of Media Composer.
➤ Bug Number: MCCET-4242. When working with some AudioSuite plug-ins, rendering stereo audio was slow in a Production Management/Avid NEXIS environment.
➤ Bug Number: MCCET-4658. Export Settings were not retained when using custom presets to export media.
➤ Bug Number: MCCET-4265. A sequence containing grouped XDCAM 50 clips with FrameFlex did not retain FrameFlex after performing a mixdown.
➤ Bug Number: MCCET-4490. Sorting by Date in the Find window did not sort correctly when Regional Format was set to English (United Kingdom).
Fixed in Media Composer v2020.12.7 ➤ Bug Number: MCCET-4563. When logging in to Production Management or MediaCentral | Cloud UX from the Media Composer project window, the password remained in the password text box after you logged out.
➤ Bug Number: MCCET-4551. Default Starting Timecode in the General Settings for a Project were not retained after pressing the Enter or Return key on the keyboard.
➤ Bug Number: MCCET-4596. When in Bin Frame View, moving clips by lassoing them did not work properly.
➤ Bug Number: MCCET-4576. Timecode window experienced a display glitch when switching between user profiles.
➤ Bug Number: MCCET-4457. Transition Manipulation was broken while the Composer window was set to "Show Single Monitor".
➤ Bug Number: MCCET-4585. Audio Punch-in did not work properly after Film option was selected during project creation.
➤ Bug Number: MCCET-4516. When live capturing with the Capture Tool, the Extra Field Selection did not populate the corresponding custom column in the bin, but worked when logging only.
➤ Bug Number: MCCET-4621. The "Undo-Redo List" in Media Composer did not display entire list of recent actions.
➤ Bug Number: MCCET-3592. Changes made to Color Space for external projects located on Avid NEXIS were not reflected in the "Select Project" window.
➤ Bug Number: MCCET-4657. In some instances, the "Exception: SETTING CLASS NOT REGISTERED" error message appeared after using the Command Palette to move the Segment Mode (Lift/Overwrite) button.
➤ Bug Number: MCCET-4663. When switching workspace from Color to Effects, the viewer doesn't switch correctly.
➤ Bug Number: MCCET-4620. D-Verb settings reverted to default values when they were nested with a clip that had Audio EQ applied.
➤ Bug Number: MCCET-4717. Multiple vaporizations during editing.
➤ Bug Number: MCCET-4306. Toggling Override Working Settings With Target Settings will result into Audio/Video no longer sync Fixed in Media Composer v2020.12.6 ➤ Bug Number: MCCET-4687. Selecting "Send to Export" in the Output menu reset some Motion Effect parameters and unrendered the effects.
➤ Bug Number: MCCET-4549. Some users in a MediaCentral | Production Management environment experienced long delays and, in certain instances, crashes when logging in, opening projects and checking out media in projects.
Fixed in Media Composer v2020.12.6 The following have been fixed:
➤ Bug Number: MCCET-4364. A single asset in a bin could not be renamed after pressing the main Enter key.
➤ Bug Number: MCCET-4360. In some instances, exporting to a P2 device resulted in pixelated and inverted images.
➤ Bug Number: MCCET-4347. You might have received an Assertion failed error when exporting AAF on a macOS Big Sur system.
➤ Bug Number: . MCCET-4497 (macOS) Performing a Select Media Relatives on a sequence crashed the application.
➤ Bug Number: MCCET-4007. When switching between a macOS and Windows system, you might have seen font and formatting issues when opening scripts.
➤ Bug Number: MCCET-4310. When in MultiCamera mode, you might have received a “MultiframeCombiner.cpp” error if you turned off video monitoring on the source track.
➤ Bug Number: MCCET-3854. During export some AAF Sound settings did not save.
➤ Bug Number: MCCET-4481. (Production Management) Clips with the Restrictions did not appear with the red triangle in the Media Composer bin.
➤ Bug Number: MCCET-4509. In some instances, the image appeared garbled after loading a sequence in a Color Correction workspace.
➤ Bug Number: MCCET-4513. (Production Management) In some instances, you might have experience a significant slowdown when performing an Edit While Capture.
➤ Bug Number: MCCET-4498. Lassoing in Bin Frame View using Shift or Ctrl did not work properly.
Fixed in Media Composer v2020.12.5 ➤ Bug Number: MCCET-4332. Transcoding linked 50fps h264 clips to 50i resulted in the wrong duration.
➤ Bug Number: MCCET-4449. In some instances, when working with MultiCam sequences, Media Composer was sluggish.
➤ Bug Number: MCCET-4517. You could not see what you were typing if you created or renamed a column to the left of the Bin Left Lock.
➤ Bug Number: MCCET-4056. Applying a Matte key effect to a ProRes 4444 file did not preserve the fill layer.
➤ Bug Number: MCCET-4442. If the Calculator tool was open and you changed workspaces, variable-speed play (JKL) did not work.
➤ Bug Number: MCCET4451. Performing asymmetric trimming with sync locks with the trim setting “Sync Rollers At Position in Filler” enabled might have caused a PMM_INSUFFICIENT_MEDIA error.
➤ Bug Number: MCCET-4437. Selecting “Set Audio Suite Plugin In/Out” from the AudioSuite Plugin fast menu does not work on rendered effect after performing an Undo.
➤ Bug Number: MCCET-4402. With Gang enabled, selecting all Timeline Clip Notes resulted in a hang.
➤ Bug Number: MCCET-4519. In some circumstances you might have received an error when using Color Correction with dupe detection enabled.
➤ Bug Number: MCCET-4382. In some instances, Dynamic Relink settings unexpectedly reverted to Most Recent.
➤ Bug Number: MCCET-4499. (macOS) Using the Enter key to Adjust Pan / Volumes IN to OUT did not work.
➤ Bug Number: MCCET-4562. In some instances, LTC signals did not parse correctly in Read Audio Timecode.
Fixed in Media Composer v2020.12.5 The following have been fixed:
Fixed in Media Composer v2020.12.5 ➤ Bug Number: MCCET-4403. You might have experienced inconsistent behavior when switching the “If no match found” Dynamic Relink setting between Highest Resolution and Offline.
➤ Bug Number: MCCET-4267. Wrong media was displayed if you disabled tracks, performed a render and then enabled tracks.
➤ Bug Number: MCCET-3840. Scrubbing a sequence containing a SubCap effect might have crashed to a Breakpad window.
➤ Bug Number: MCCET-4359. You might have received a “MultiframeCombiner” error while trimming nested clips.
➤ Bug Number: MCCET-4321. Checking out an ProRes 4444 with alpha from Interplay displayed as unsupported and would crash when you tried to play the clip.
➤ Bug Number: MCCET-4219. Timecode Burn-in did not display correctly if the macOS font was set to default.
➤ Bug Number: MCCET-4397. When performing an import, Matte Keys were offline if Dynamic Relink was enabled.
➤ Bug Number: MCCET-4384. You might have received a “CORE_CONSISTENCY_CHECK_FAILURE” error when linking some Tiff images using the UME plug-in.
➤ Bug Number: MCCET-4369. Audio from imported camera masters went offline after being brought in from Interplay.
➤ Bug Number: MCCET-4002, MCCET-4408. With Dynamic Relink enabled, performing a batch import of .wav files (AAF from Prunus) did not import properly.
➤ Bug Number: MCCET-3500. In some instances, portions of imported TIFF files might not display properly.
➤ Bug Number: MCCET-4380. A sequence containing XDCAM HD 50 clips displayed yellow if Multirez was activated with Dynamic Relink Target setting set to XDCAM HD 50.
➤ Bug Number: MCCET-4404. In the Dynamic Relink Settings, switching the “If no match is found” option between “Use Highest Rez” and “'Offline” toggled the media offline and back to online.
Fixed in Media Composer v2020.12.5 ➤ Bug Number: MCCET-4318. Subclips generated from ALE broke the masterclip metadata links if you type in the Comments column.
➤ Bug Number: MCCET-4193. Trimming subclips from MediaCentral | Cloud UX might have resulted in redraw issues in the Media Composer Timeline.
➤ Bug Number: MCCET-4362. A restored sequence might have displayed as offline in an Interplay environment.
➤ Bug Number: MCCET-4335. In some instances, you could not link P2 folders containing Prunus AAF.
➤ Bug Number: MCCET-4331. Media Composer crashed to a white screen if you enabled MultiRez with Dynamic Relink setting set to “Linked Media”.
➤ Bug Number: MCCET-3375. Transcoding linked 50fps h264 MOV clips to 50i might have resulted in the wrong Start Timecode.
➤ Bug Number: MCCET-4208. You might have received a “DISK_FILE_NOT_FOUND” error (not Media Offline) in Media Composer when media was deleted from Access.
➤ Bug Number: MCCET-4105. Bin tabs did not clearly show which bin was currently open.
➤ Bug Number: MCCET-4329. In some instances, a caption file (.scc) had a different duration in HD vs UHD.
➤ Bug Number: MCCET-4275. Opening large sequences containing SubCap effects crashed Media Composer.
➤ Bug Number: MCCET-4169. You may not have received a warning message when exporting XDCAM HD 50 (RDD9) exceeding 8 audio tracks.
➤ Bug Number: MCCET-4011. You were unable to link to ProRes 422HQ QT movie with UME plug-in, but could link with QuickTime plug-in.
➤ Bug Number: MCCET-3861. You could not successfully link or import ProRes HQ files recorded with Odyssey™ by Convergent Design.
➤ Bug Number: MCCET-4203. Apple ProRes 422 clips with 16bit PCM audio could not be linked using the UME plug-in.
➤ Bug Number: MCCET-3997. Window position was not saved in Workspaces.
Fixed in Media Composer v2020.12.5 ➤ Bug Number: MCCET-4138. Right-clicking on the Name column to sort alphabetically did not work on the first sort. You had to right-click twice.
➤ Bug Number: MCCET-4195. Capitalized names were sorted first regardless of alphabetical order in the Project window.
➤ Bug Number: MCCET-4240. In some instances, Telestream Live Capture was offline for V1, A1.
➤ Bug Number: MCCET-4224. In some instances, the Source Browser was not maximized enough to display the Link and Import buttons.
➤ Bug Number: MCCET-4005. If waveforms were enabled, six hour captures of “In progress” (EWC) clips were extremely slow.
➤ Bug Number: MCCET-4277. You might have seen a “bad public movie atom” error when trying to open an exported MOV or EDIUS file in QuickTime Player.
➤ Bug Number: MCCET-4218. In some instances, QuickTime with alpha MOV files appear offline after import.
➤ Bug Number: MCCET-4226. After performing a transcode and checkout, png files might have been offline.
➤ Bug Number: MCCET-3119. Some Avid Titler+ font names may have displayed as “Invalidate label encoding” in the Effect Editor window.
➤ Bug Number: MCCET-4187. Segment buttons from (Command Palette - Edit) did not work the same as the Segment buttons from (Command Palette - Smart Tools).
➤ Bug Number: MCCET-4202. You may have received a “writing properties to asset manager” error when checking in a Matte key clip.
➤ Bug Number: MCCET-3948. You could not link QuickTime DNxHD 120.mov on macOS v10.15.x (Catalina) and v11.x (Big Sur).
➤ Bug Number: MCCET-4238. Media Composer crashed with an “Exception: Structured Exception” error when trying to transcode or consolidate certain clips.
➤ Bug Number: MCCET-4068. If the brightness in the Interface Settings was set to one of the two brighter settings, values in the Quick Transition window were cut off.
Fixed in Media Composer v2020.12.5 ➤ Bug Number: MCCET-3993. Setting Dynamic Relink to “Show Mismatches” was not working with mixed proxy media.
➤ Bug Number: MCCET-4183. In some instances, the User Interface would appear to freeze or hang if you were working with a large project with many bins.
➤ Bug Number: MCCET-4145. After adjusting Color Correction and adding a Paint effect, Media Composer added multiple Color Correction effects in the Effects Editor.
➤ Bug Number: MCCET-4285. When a Delete Window was positioned over a bin, if you canceled a deletion, the spinning wait cursor did not stop spinning unless you moved the mouse to another position.
➤ Bug Number: MCCET-4177. In some instances, media was offline in the Timeline on some of the clips and adjusting Dynamic Relink would not bring it online.
➤ Bug Number: MCCET-4188. (Production Management) XDCAM HD media was offline after checkout and you could not get the media online.
➤ Bug Number: MCCET-3903. You might have received a “PMM_MISMATCH_UNKNOWN_ATTR” error when trying to capture from SD DV through 1394 (firewire).
➤ Bug Number: MCCET-4264. You might have seen a Waveform Engine crash when opening a bin, closing a bin, loading a sequence, or clearing a sequence.
➤ Bug Number: MCCET-4305. Using Quick Find in the Timeline might have crashed Media Composer.
➤ Bug Number: MCCET-4225. If Dynamic Relink was enabled, imported .wav files were offline.
➤ Bug Number: MCCET-4182. In some instances, 3D CLF LUTs did not always get applied in Media Composer.
➤ Bug Number: MCCET-4152. Dragging multiple bins into a folder took longer then normal.
➤ Bug Number: MCCET-4292. You might have seen redraw issues in the Source monitor when viewing 4 and 9 way MultiCam with NDI enabled.
➤ Bug Number: MCCET-3972. Performing a Long-GOP Send to Playback to FastServe failed if a local Transfer Engine was running.
Fixed in Media Composer v2020.12.4 ➤ Bug Number: MCCET-4266. In some instances, after performing a Send To Playback, the Data track was stripped from the .transfer sequence.
➤ Bug Number: MCCET-4314. You might have seen video glitches if “prefer largest raster, then prefer highest bandwidth” was enabled in Dynamic Relink.
➤ Bug Number: MCCET-4164. (macOS) Avid Titler+ English alphabet characters were left behind once you selected Chinese Pinyin characters.
➤ Bug Number: MCCET-4228. When changing Dynamic Relink settings, a portion of the original master clip might be offline in the area of consolidated media.
➤ Bug Number: MCCET-4231. In some instances, XDCAM media that includes an alpha channel appeared as Media Offline.
➤ Bug Number: MCCET-4154. The Digital Cut Tool size expanded after switching between workspaces multiple times.
➤ Bug Number: MCCET-4290. Bin thumbnails do not always reflect the monitored track in a sequence.
➤ Bug Number: MCCET-4269. Some effects would not render if a clip with “Adaptive Deinterlace Source” enabled had been applied.
➤ Bug Number: MCCET-3876. MOV media with lossless audio (ALAC) did not link with the UME plug-in.
➤ Bug Number: MCCET-3838. You could not save AudioSuite and Track Effects Plug-in Settings in macOS Catalina (v10.15.x) and Big Sur (v11.x).
➤ Bug Number: MCCET-4234. If Dynamic Relink was set to Highest Quality or Minimal Bandwidth, you could not always successfully switch between AVC-Intra 100 and Proxy media.
Fixed in Media Composer v2020.12.4 The following have been fixed:
➤ Bug Number: MCCET-4167. (Japanese OS) Dragging an effect from the Effects Palette moved the highlighted effect category up unexpectedly.
➤ Bug Number: MCCET-4013. If the RED AMA plug-in was installed on an Edit on Demand system, Scriptsync did not display script marks.
Fixed in Media Composer v2020.12.3 ➤ Bug Number: MCCET-4137. A .transfer sequence did not play in MediaCentral | UX if stereo was enabled in the Transfer Settings.
➤ Bug Number: MCCET-4159. In some instances, with Dynamic Relink enabled, a sequence showed different clips offline depending on the version of Media Compose ➤ Bug Number: MCCET-4198. You might have had problems importing/linking DNxHR HQX media.
➤ Bug Number: MCCET-4130. (Production Management) The same media that appeared online in a Media Composer v2018.12.x, appeared offline in a Media Composer v2020.12.x system.
➤ Bug Number: MCCET-4063. In some instances, mixing DNxHD SQ media created by EVS, Media Director or Fastserve displayed in the bin as mixed resolution.
Fixed in Media Composer v2020.12.3 The following have been fixed:
➤ Bug Number: MCCET-3618. (Artist Mix) You could not keep the two channels at the same level when ganging audio tracks.
➤ Bug Number: MCCET-3958. The user listed in the Interplay Transfer Status was the user entered in Media Composer settings, instead of the user logged in to perform the transfer.
➤ Bug Number: MCCET-4032. (Production Management) If you deleted a clip in Access, the media would not display as offline, instead you would receive a “Disk File Not Found” error.
➤ Bug Number: MCCET-4100. Media Creation Settings defaulted to H.264 800kbps proxy in 1080p/24 projects.
➤ Bug Number: MCCET-4067. You received an “unsupported resolution” error when trying to link DNxHD 175X media that was encoded in Media Composer v2018.12.x.
➤ Bug Number: MCCET-3629. You might have received “Exception:
'AComposition::ConvertFromAAF - unable to convert media descriptor” errors when trying to work with Blackmagic Hyperdeck recorded files copied to the Avid MediaFiles folder.
➤ Bug Number: MCCET-4071. Target Mask not working properly in Avid Titler.
➤ Bug Number: MCCET-3847, MCCET-4155. Default Media Creation settings for new projects and when switching to a different project format might have been incorrect.
Fixed in Media Composer v2020.12.3 ➤ Bug Number: MCCET-4079. Site settings for Media Creation were not working for some codecs.
➤ Bug Number: MCCET-3510. Even after changing the Media Creation setting, video resolution reverted to default in 1080p50 projects.
➤ Bug Number: MCCET-3705. (Production Management) Video track name changes might not have saved properly during check in/check out.
➤ Bug Number: MCCET-4070. H.264 proxy media may have been scrambled.
➤ Bug Number: MCCET-4065. In some instances, the clip color changed on transcoded clips with alpha.
➤ Bug Number: MCCET-4114. Dragging a saved Audio Track Effect from a bin to the Audio Mixer [+] did not apply the effect.
➤ Bug Number: MCCET-4061. Importing some sequences resulted in “vcAvgFrameSize encountered a codec manager” errors.
➤ Bug Number: MCCET-3850. You might have received a “Video compression not recognized” error when opening a bin containing DNxHD 220x created in Media Composer v2020.x.
➤ Bug Number: MCCET-4053. When working with the List Tool, you might have received an “Assertion” error when previewing sequences with mixed frame rate or group clips.
➤ Bug Number: MCCET-4124. The application would crash to a Breakpad window when trying to import a PSD file.
➤ Bug Number: MCCET-4055. The Paint effect window did not display properly.
➤ Bug Number: MCCET-4073. The small space at the left of the bin where you could right-click to select bin options was missing.
➤ Bug Number: MCCET-4075. You could not lasso multiple bins in a project.
➤ Bug Number: MCCET-4101. Media Composer might have crashed when transcoding a GoPro clip.
➤ Bug Number: MCCET-3952. The audio and video for some MP4 media was not in sync.
Fixed in Media Composer v2020.12.2 ➤ Bug Number: MCCET-3832. You might have received “assertion failed” or “fatal exception” errors when rendering or scrubbing media that was edited in Audio EQ tool.
➤ Bug Number: MCCET-4146. (Production Management) After performing an initial checkout of some clips, some audio was offline. This fix requires Media Indexer v2020.4.3 or higher client and server.
➤ Bug Number: MCCET-4131. Media Composer crashed when playing a corrupted file from FastServe Ingest.
➤ Bug Number: MCCET-4136. Timeline Frame View did not show the correct frame with stacked clips.
➤ Bug Number: MCCET-4148. Double-clicking the Take did not load a subclip into the Source Monitor from the slate.
➤ Bug Number: MCCET-4080. The Tool Palette window did not retain its size.
➤ Bug Number: MCCET-3842. Desktop Play Delay resulted in an “ADM_PLAY_NOT_ARMED” error when hitting play with NDI enabled.
➤ Bug Number: MCCET-4059. You might have received a “compression not recognized” error when importing some media into Media Composer.
➤ Bug Number: MCCET-4151. (Production Management) Checking out a sequence that contained a clip that was referenced in many sequences might have been slow.
Fixed in Media Composer v2020.12.2 The following have been fixed:
➤ Bug Number: MCCET-3996. You might have received an “Assertion failed” error when performing a match frame with a sequence with group clips.
➤ Bug Number: MCCET-4001. Sorting was inconsistent in bins when in Script View.
➤ Bug Number: MCCET-3999. Changing the “Start” Timecode of a sequence from within the bin column, unexpectedly caused the drop timecode (DF) to become a non-drop timecode (NDF).
➤ Bug Number: MCCET-3925. Clips with alpha may have had unexpected level changes when rendered.
Fixed in Media Composer v2020.12.2 ➤ Bug Number: MCCET-4060. Color adapter should not have been added to alpha channel when doing a refresh sequence.
➤ Bug Number: MCCET-3624. In some instances, QuickTime h.264 could not be linked or imported.
➤ Bug Number: MCCET-3824. FrameFlex quality was not good on render, mixdown, and preview.
➤ Bug Number: MCCET-4022. You might have received an “Assertion failed AMAFIExportUtils.cpp” error when exporting a progressive H264 .mov from an interlaced project.
➤ Bug Number: MCCET-3895. You might have received an “Out of Memory” error when exporting a 2 hour sequence to ProRes HQ 10bit.
➤ Bug Number: MCCET-3957. In some instances, Titler+ text did not look correct in the Record monitor. but did look correct in the Effect Editor.
➤ Bug Number: MCCET-4064. In some instances, when working with Media Composer | Cloud Remote, you had to force quit the application after clicking the MultiRez button.
➤ Bug Number: MCCET-3941. Imported markers did not display accents correctly if the text was from a 3rd party application.
➤ Bug Number: MCCET-3973. Media Composer crashed when loading Color Correction presets.
➤ Bug Number: MCCET-4072. Creating a new bin in the Project Window did not allow you to immediately rename the bin.
➤ Bug Number: MCCET-4024. You might have received an “Unable to create SearchData directory” error when mounting the project workspace to a different letter.
➤ Bug Number: MCCET-4018. (Media Composer | Cloud Remote) Loading clips in the Source monitor from the Production Management window was slow. And you might have seen a “Not Responding” message before the clip loaded.
➤ Bug Number: MCCET-3958. The user listed in the Interplay Transfer Status was the user entered in Media Composer settings, instead of the user logged in to perform the transfer.
➤ Bug Number: MCCET-4049. Importing a wave file with Dynamic Relink enabled resulted in one audio track offline.
Fixed in Media Composer v2020.12.1 ➤ Bug Number: MCCET-4083. A SubCap caption file (.txt) did not import.
➤ Bug Number: MCCET-4082. Performing a video mixdown of a sequence named with a trailing space produced mixdowns that resulted in issues such as Reveal File not working properly.
➤ Bug Number: MCCET-4052. Some H265 (HEVC) files could not be linked or imported successfully.
➤ Bug Number: MCCET-4051. (Windows) Double clicking a bin file (.avb) did not open the bin.
➤ Bug Number: MCCET-4084. MOV and MP4 exports with H.264 and HEVC exported incorrect audio if the output frame rate was different than the project frame rate.
➤ Bug Number: MCCET-4066. (Media Composer | Cloud Remote) You could not use the computer when downloading media.
➤ Bug Number: MCCET-4093. Turning on waveforms when using Media Composer | Cloud Remote media, crashed the software. Waveforms have been disabled for Media Composer | Cloud Remote.
➤ Bug Number: MCCET-4038. In some instances, glitches appeared in the video when XDCAM media was consolidated. This fix requires Media Indexer v2020.4.3 or higher client and server.
Fixed in Media Composer v2020.12.1 The following have been fixed:
➤ Bug Number: MCCET-3563. With Dynamic Relink enabled, media appeared offline after batch re-importing (PNG/TIFF) and AAF from Prunus files.
➤ Bug Number: MCCET-3587. You might not have been able to open a sequence or you might have received “Crumb Exists” errors when opening a sequence containing markers on TC1.
➤ Bug Number: MCCET-3350. When sending a sequence with mixed formats in it with Transcode on Send to playback enabled, you might have received a “Can't send to playback:
Project format is different than target resolution format” error.
➤ Bug Number: MCCET-3978. Ctrl+W did not save and close a bin if one or more clips was selected.
➤ Bug Number: MCCET-3921. The text in the NRCS tool was almost unreadable in dark mode.
Fixed in Media Composer v2020.12.1 ➤ Bug Number: MCCET-3423. (Interplay environment) Media Composer launched slowly if there were many MXF media folders in the workspace.
➤ Bug Number: MCCET-3877. You could not save a workspace if Source/Record monitors were minimized.
➤ Bug Number: MCCET-3928. When in Text View mode, using up and down arrow keys in a bin did not auto scroll.
➤ Bug Number: MCCET-3946. You could not type comments without clicking and you could not use the enter key to close when adding or editing markers.
➤ Bug Number: MCCET-3947. Pressing the Tab key in a bin to rename a clip did not work properly.
➤ Bug Number: MCCET-3908. (Media Composer | Cloud Remote). The Download/Upload queue did not display progress properly.
➤ Bug Number: MCCET-3956. The Bin window sometimes went behind other bins when you imported using drag & drop.
➤ Bug Number: MCCET-3884. In some instances performing a UME MOV h.264 export might have resulted in an “AAMPIAudioProc::CycleBuffersThroughAMPI: destination FIFO overrun” error.
➤ Bug Number: MCCET-3777. You might have experienced audio sync shift on local audio playback as soon as NDI was enabled.
➤ Bug Number: MCCET-3962. The Media Central | Cloud UX panel and Production Management window could not be tabbed or docked with other tools.
➤ Bug Number: MCCET-3820. Loading or importing a file into a Pan&Zoom effect might have caused Media Composer to crash.
➤ Bug Number: MCCET-3922. In some instances, when trimming a sequence, the wrong clip was shown in the Source Monitor.
➤ Bug Number: MCCET-3970. Audio Mixer Ganging did not display correctly after switching from Record to Source and back.
➤ Bug Number: MCCET-3967. Media Composer might have been improperly importing audio track metadata.
Fixed in Media Composer v2020.12.1 ➤ years, for example 2019 appeared as 1919.
➤ Bug Number: MCCET-3729. You could not fast import if “Use the current import resolution” was selected in the Import Settings OMF/AAF dialog.
➤ Bug Number: MCCET-3933. In some instances, the number of viewable workspaces was limited in a Media Composer | Cloud Remote environment.
➤ Bug Number: MCCET-3954. You might have received a “PMM mismatch error” when performing an Add and Render of a dissolve effect with AVC Long GOP linked with the UME plug-in.
➤ Bug Number: MCCET-3904. Selecting and playing all Script marks near the end of a take only played one clip.
➤ Bug Number: MCCET-3975. If the Regional Decimal symbol (Windows) or Language Decimal (macOS) was set to comma rather than period, you could not adjust the clip pan/vol with mark in/out in the Audio Mixer.
➤ Bug Number: MCCET-3936. Playback was delayed after switching between Color and Edit workspaces.
➤ Bug Number: MCCET-3949. In the Audio Mixer, you could not enter a value in the volume level field at the bottom of the slider.
➤ Bug Number: MCCET-3907. In some instances, the wrong image was displayed when modifying an object in the Effect Editor where there was an In and Out point.
➤ Bug Number: MCCET-3735. In some instances, you could not successfully relink between Interplay transcoded XDCAM50 and MPEG50.
➤ Bug Number: MCDEV-14070. (macOS) You might have received an “EXC_Bad_Access” error after performing a after drag and drop with matte key and then clicking in the Effect Palette tabs.
➤ Bug Number: MCDEV-14087. You might have seen garbled marker text when re-editing in the Edit Marker dialog (Russian Locale and Hebrew text).
➤ Bug Number: MCDEV-14075. If you have “Sync Rollers at Position in Filler” enabled in the Trim settings, you might have received an “PMM_INSUFFICIENT_MEDIA” error when performing asymmetric trimming.
Fixed in Media Composer v2020.12.1 ➤ Bug Number: MCDEV-14250. In some instances, you could not adjust gain to audio clips that were being sample rate converted in real time.
➤ Bug Number: MCDEV-14114. The SearchData Directory might have been incorrect for shared projects that were moved between macOS and Windows platforms.
➤ Bug Number: MCDEV-14119. Numbers were not displayed in the fader and pan numerical entry fields when typing in values in the Audio Mixer.
➤ Bug Number: MCDEV-14060. Audio Mixer Fast Menu functions and Mix Mode selection options were not available as mappable EuControl Softkeys.
➤ Bug Number: MCDEV-13871. Mapped Audio mixer Fast menu items caused a system beep when mapped to fn keys on the keyboard.
➤ Bug Number: MCDEV-13378. You could lose focus of the main Media Composer window after editing in a restored minimized floating window.
➤ Bug Number: MCDEV-14021. In some instances, you may have experienced drag&drop issues after dragging media files from the Finder to a Bin window.
➤ Bug Number: MCDEV-14056. Hovering over pulldown menus or combo boxes with mouse scroll wheel unexpectedly adjusted values.
➤ Bug Number: MCCET-3576. A gray border may have appeared when resizing matte keys.
➤ Bug Number: MCCET-3843. When working with Titler+, some Arabic text did not display properly.
➤ Bug Number: MCCET-2929. You might have received an “Exception” error when performing a Digital Cut immediately after capturing to tape.
➤ Bug Number: MCCET-3945. Setting information in the bin column might have resulted in freeze (macOS) or Breakpad window (Windows).
➤ Bug Number: MCCET-3378. Frames may have shifted after promoting a mixed frame rate sequence and modifying the speed in Motion Effect Editor.
➤ Bug Number: MCCET-3578. In some instances, adding or removing a Timewarp effect with “Adaptive Deinterlace Source” enabled, moved the image one frame and broke sync between video track and audio tracks.
Fixed in Media Composer v2020.12.1 ➤ Bug Number: MCDEV-14258. (macOS) On multiple monitor systems, floating windows placed on the display to the left or above the main display.might not have reopened in the correct position.
➤ Bug Number: MCCET-3986. A sifted bin did not show the correct assets after switching from Text View to Frame View.
➤ Bug Number: MCCET-3987. You might have seen a “Loading media file information” message, a Rescan message, a Relink dialog or in some instances a crash when performing an insert or overwrite to the Timeline.
➤ Bug Number: MCCET-4003. In some instances, Shared bins did not open if a bin color background was applied in the bin.
➤ Bug Number: MCCET-3977. In some instances, the User Settings pane appeared blank after creating a new Timeline profile.
➤ Bug Number: MCCET-3976. The NRCS Tool did not always close properly.
➤ Bug Number: MCCET-3853. In some instances, when inserted into a sequence, Apple ProRes 422 clips were duplicated in the active bin.
➤ Bug Number: MCCET-3882. Marquee titles disappeared after being promoted to Avid Titler+.
➤ Bug Number: MCCET-3649. When linked with the UME plug-in, AVC Long GOP interlaced QT mov file displayed as 12.5fps in the FPS column instead of 25fps.
➤ Bug Number: MCCET-3722. (macOs) The Panasonic P2 plugin was not working with Media Composer v2020.x This has been fixed with P2 plug-in v4.9.0.5.
➤ Bug Number: MCCET-3971. The Remote Client checkbox did not remain selected in the Login window after performing a restart.
➤ Bug Number: MCCET-3858. In some instances, performing a Consolidate changed the tape base Timecode.
➤ Bug Number: MCCET-3464. (Avid Artist DNxIQ, Avid Artist DNxIO) Intermittently, when rewinding or fast-forwarding on audio only, playback stopped.
➤ Bug Number: MCCET-3740. With AJA I/O hardware enabled playback on audio tracks became erratic. This is fixed with AJA Desktop software v16.
Fixed in Media Composer v2020.12 ➤ Bug Number: MCCET-3984. Alt+clicking the dB value field did not reset it to zero in the Audio Mixer tool.
➤ Bug Number: MCCET-3959. If you performed an Audio Punch-in and then stopped the playback with the spacebar, the recorded segments might have been deleted.
➤ Bug Number: MCCET-4014. You could not login to MediaCentral CloudUX if the password contained a special character.
➤ Bug Number: MCCET-3940. Subtitles that included a dollar sign ($) exported from Media Composer did not display properly in some 3rd party applications.
➤ Bug Number: MCCET-4025. You might have received a “This program is not supported on VM instances” message when launching a Media Composer VM with a Floating License.
➤ Bug Number: MCDEV-14257. You might have received an “Exception” error when adjusting Gain in the Audio Mixer on a Selected segment that did not have a set gain value.
➤ Bug Number: MCCET-4012. Exporting an Edit While Capture “in progress” clip as h.264 did not work with the UME plug-in.
➤ Bug Number: MCCET-3406. (macOS) Saving a rolling title did not save or resulted in a Breakpad window when working with the Title Tool application.
➤ Bug Number: MCDEV-14183. Typing in a “,” instead of a “.” for gain values in numerical fields in the Audio Mixert tool might have resulted in an access violation.
Fixed in Media Composer v2020.12 The following have been fixed:
➤ Bug Number: MCCET-3834. After upgrading to Media Composer v2019.12.2, you might have received a “Fatal error” message when opening a sequence containing image (without alpha) clips.
➤ Bug Number: MCCET-3860. In some instances, when in a Production Management environment, the application unexpectedly deleted the original files of linked clips.
➤ Bug Number: MCCET-3869. You could not link or import DNxHD MXF OP-1A from an AJA Ki-Pro Ultra.
Fixed in Media Composer v2020.12 ➤ Bug Number: MCCET-3892. Media Composer Floating License consumed 2 seats during activation.
➤ Bug Number: MCCET-3870. Line trail marks might have appeared in AniMatte effects when Windows Display Setting Scaling was set to 200%.
➤ Bug Number: MCCET-3906. Clip gain was being ignored when rendering Audiosuite effects.
➤ Bug Number: MCCET-3561. (Windows 10) Microsoft YaHei and JjengHei fonts did not appear in Subcap.
➤ Bug Number: MCCET-3863. You might have received an “Assertion failed” error when opening a project or bin.
➤ Bug Number: MCCET-3829 . The Production Management Folder Setting did not follow the Site Settings.
➤ Bug Number: MCCET-3724. Site settings for General, and Media Creation were not always working for New projects.
➤ Bug Number: MCCET-2885. Imported TIFF with alpha had softer edges compared to .mov with alpha.
➤ Bug Number: MCCET-3748. The title bar did not change in contrast when you switched to a light interface setting.
➤ Bug Number: MCCET-3818. In some instances, a User folder was being placed in a project when accessing a bin from a different project.
➤ Bug Number: MCCET-3888. You might have received an “Unable to proceed” error when exporting as MP4 or MOV.
➤ Bug Number: MCCET-3184. Media from the Arri Alexa Mini were displayed upside down and flipped in Media Composer.
➤ Bug Number: MCCET-3665. You could save the bin even when it had a yellow bin lock.
➤ Bug Number: MCCET-3716. A keyboard shortcut for audio punch-in and record did not always start recording.
➤ Bug Number: MCCET-3822. In some instances, even when Dynamic Relink was set to Highest Quality, video clips were relinked to the proxy resolution.
Fixed in Media Composer v2020.12 ➤ Bug Number: MCCET-3605. (macOS) Event logs might have mislabeled a “DSM path not found” error as a critical error.
➤ Bug Number: MCCET-3825. Deleting a custom-saved Title Style from the settings resulted in a crash to a Breakpad window.
➤ Bug Number: MCCET-3742. Markers did not display in an EDL if placed on a group clip.
➤ Bug Number: MCCET-3551. Performing an XDCAM proxy import or batch reimport might have resulted in a crash to a Breakpad window.
➤ Bug Number: MCCET-3762. You continued to receive the warning, even after selecting the “Don’t warn again” message, when loading IMX50 SD clips with restrictions.
➤ Bug Number: MCCET-3792. If the primary Transfer Engine was down, the Send to Playback list would not appear.
➤ and MPEG 50 SD (IMX50) at the same time. The Dynamic Relink options would not allow you to relink XDCAM HD 50 and MPEG SD 50 at the same time, with the proxy offline.To fix this, an additional option has been added to the Dynamic Relink dialog.
See the following examples:
(cid:129) Greater or equal to SD - all media smaller than SD raster become offline (cid:129) Equal to SD Proxy - all media appears offline except SD proxy (cid:129) Greater or equal to SD Proxy - all media greater than SD proxy appears online Fixed in Media Composer v2020.12 ➤ Bug Number: MCCET-3871. You could not successfully send a mixed resolution sequence to Send to Playback if Dynamic Relink was set to a specific resolution.
➤ Bug Number: MCCET-3831. The MultiRez button in the Timeline did not display colors properly as in previous releases, making it difficult to distinguish the status.
➤ Bug Number: MCCET-3750. (Japanese locale) In some instances, you could not open your Project by double-clicking the .avp file ➤ Bug Number: MCCET-3868. In some instances, you might have received an “Exception” error when accessing the Dynamic Relink settings dialog. This happened if the Dynamic Relink Override Target Video menu did not populate correctly.
➤ Bug Number: MCCET-3830. Using the MultiRez Button in the Timeline did not change the Timeline segment colors for working/target mismatches.
➤ Bug Number: MCDEV-8972. (HiRes Dual Monitor) Bins did not reopen in the same location after closing and reopening.
Fixed in Media Composer v2020.12 ➤ Bug Number: MCDEV-13875. (macOS 10.15.x) File extension in the Export dialog did not change when selecting different Export Presets.
➤ Bug Number: MCDEV-10977. It was difficult to read the project name in the main title bar because the font color was too close to the title bar color.
➤ Bug Number: MCDEV-13361. Menu to Button assignment did not work on the Bin Fast Menu.
➤ Bug Number: MCDEV-11840. Center Current was not available for floating Bins and Bin Containers.
➤ Bug Number: MCDEV-13696. In certain workspaces, the Close Bin Command incorrectly closed the Effects Palette before it closed the active bin.
➤ Bug Number: MCDEV-13870 . When in a Russian locale, the text in the Set Bin Container Name window was garbled.
➤ Bug Number: MCDEV-13834. When in a Japanese locale, the text in the Select Project, New Project window was garbled.
➤ Bug Number: MCDEV-13765. Some widgets were hidden when the Bulk Edit window was opened to minimal horizontal window width.
➤ Bug Number: MCDEV-11505. When in the Markers window, Copy, Cut, Paste from the Edit menu did not work correctly when in Text edit mode.
➤ Bug Number: MCDEV-13823. Using the OS Color Picker from color menus for several color wells in Interface Settings defaulted to black instead of the current color.
➤ Bug Number: MCDEV-13851. In some instances, when in Bin Frame View right clicking on a group of selected clips caused the group to be deselected.
➤ Bug Number: MCDEV-13774. In some instances, when in Bin Script View, Media Composer remained in Text edit view and thumbnails would not play.
➤ Bug Number: MCDEV-13715. Some mapped keys also mapped with the Alt key did not work properly.
➤ Bug Number: MCDEV-13647. When the Delete window opened, keyboard shortcuts might not have worked.
➤ Bug Number: MCDEV-12396. (Dual Monitor) A floating Audio Mixer moved incrementally each time an associated workspace was opened, or when the Audio Mixer was opened.
Fixed in Media Composer v2020.10 Fixed in Media Composer v2020.10 The following have been fixed:
➤ Bug Number: MCCET-2665. With an Avid Artist DNxIO or DNxIQ attached, you could not playback a sequence in the Timeline if calibration tone was playing.
➤ Bug Number: MCCET-3704. Audio track effects did not show Bypass status.
➤ Bug Number: MCCET-3775. PhraseFind was not indexing linked media.
➤ Bug Number: MCCET-3655. Linking Vantage created MXF media crashed Media Composer with XDCAM HD 50Mbits (1080i/60) project.
➤ Bug Number: MCCET-3812. With Dynamic Relink enabled, you might have received a “Structure Exception” error when loading a sequence.
➤ Bug Number: MCCET-3207. The text “%20” replaced spaces in UNC and NAS paths in the Source Browser.
➤ Bug Number: MCCET-3533. You could not successfully update your sequence after editing group clips.
➤ Bug Number: MCCET-3805. When in Frame View, thumbnails did not always match the clip and might have changed once selected.
➤ Bug Number: MCCET-3407. If you switched the project to Stereoscopic or changed the One row or Two row Button Display at Bottom options in the Composer Settings, the Source/Record buttons reverted to default.
➤ Bug Number: MCCET-3737. Even after performing a save, floating tabbed Bin Containers become un-docked when switching to a different workspace.
➤ Bug Number: MCCET-3357. You could not successfully playback Capture in progress files coming from MOG..
➤ Bug Number: MCCET-3823. The SearchData folder location defaulted to “Other” and did not revert back to “Default”.
➤ Bug Number: MCCET-3836. Checking out EVS ingested media from MediaCentral UX resulted in a mix of DNxHD 120 and DNxHD SQ.
Fixed in Media Composer v2020.9 ➤ Bug Number: MCCET-3797. You might have received a “Some of the embedded media failed to import” error when trying to import an AAF with embedded media.
➤ Bug Number: MCCET-3819. The highest quality Dynamic Relink setting linked to AVC Long GOP 50 instead of AVC-I 100.
Fixed in Media Composer v2020.9 The following have been fixed:
➤ Bug Number: MCCET-3812. With Dynamic Relink enabled, you might have received a “Structure Exception” error when loading a sequence.
➤ Bug Number: MCCET-3766. In some instances with Dynamic Relink enabled, you could not perform a Send to Playback on a sequence containing a freeze frame and rendered effects.
➤ Bug Number: MCCET-3701. Partially restored media from Archive did not relink to high resolution if Dynamic Relink was set to Highest Quality.
➤ Bug Number: MCCET-3661. You could not apply negative vertical offset in Grid Settings.
➤ Bug Number: MCCET-3730. When pressing Enter a second time after logging into MediaCentral you were logged out instead of opening the selected project.
➤ Bug Number: MCCET-3719. In some instances, the area for resizing a window was smaller than in previous releases making it more difficult to select the window for resizing.
➤ Bug Number: MCCET-3680. Timecode Burn-in effect did not always show Clip Notes.
➤ Bug Number: MCCET-3658. When working in a Japanese locale, Audio Format characters were corrupted in the OP1a-MXF Mixdown dialog, ➤ Bug Number: MCCET-3739. Media Composer used “Take” name for a filename even if the option was disabled when linking wave groups.
➤ Bug Number: MCCET-3713. In some instances, exporting XDCAM MXF HD using the Nablet plug-in, using Marks and filler mid sequence, resulted in bad MXF files.
➤ Bug Number: MCCET-3715. It was difficult to see what was highlighted or selected when trying to rename a clip in a bin.
Fixed in Media Composer v2020.8 ➤ Bug Number: MCCET-3717. Transparency did not display properly in MOV ProRes 4444 media.
➤ Bug Number: MCCET-3782. (macOS) Dragging the tab of floating bin vertically up caused cursor to jump and dragged the title bar instead.
➤ Bug Number: MCCET-3741. You might have received a “Target sample is entirely past EOF” error when scrubbing or trimming partially restored media.
➤ Bug Number: MCCET-3462. You received Exception errors when closing a bin on a Read-only drive.
➤ Bug Number: MCCET-3799. With Direct Audio Channel selected, performing a Send to Playback with Dynamic Relink enabled created an audio mixdown.
➤ Bug Number: MCCET-3789. Performing a batch export of h.264 XDCAM source media intermittently exported as audio only .mov clips.
➤ Bug Number: MCCET-3758. Media Composer crashed after enabling “Live Link” option and overwriting Alpha TIFF files multiple times.
Fixed in Media Composer v2020.8 The following have been fixed:
➤ Bug Number: MCCET-3597. You might have lost renders when working between two systems and using the Sapphire Plugin.
➤ Bug Number: MCCET-3150 . In some instances, restoring a floating window and maximizing windows did not work properly.
➤ Bug Number: MCCET-3591. (Interplay - Distributed Processing) When rerunning the same transcode job one more time a new PCM audio clip was unnecessarily created and checked in..
➤ Bug Number: MCCET-3631. Exporting Wav files from 59.94p sequences, the Start and End Timecode incremented to later even number frames.
➤ Bug Number: MCCET-3394. Pitch correction during shuttle did not work.
➤ Bug Number: MCCET-3277. (macOS) Bins that were minimized in the Dock did not display properly.
Fixed in Media Composer v2020.8 ➤ Bug Number: MCCET-3650. You might have received a “File compression is not supported for media creation” error when consolidating Panasonic AVC Intra 100 media.
➤ Bug Number: MCCET-3667. Color Correction Segment Preview was not working when sequence was more than 20 minutes long.
➤ Bug Number: MCCET-3409. Manually locked Scripts became unlocked when opened and closed again.
➤ Bug Number: MCCET-3674. The MediaCentral login light did not flash yellow in project launch window.
➤ Bug Number: MCCET-3708. When bin content is selected, Shift+Q and Shift+W don't work with “'Menu to Button' Reassignment” key assignments.
➤ Bug Number: MCCET-3639. You can now name the NDI stream to a custom name, no matter who logs in. Use the following the console command. You should be able to use spaces in the service name if you use quotes.
ndiservicename <new name> For example:
ndiservicename “Jeff In The Home Office” Stop and restart NDI in Media Composer. You might need to restart your NDI viewer to see the service name has changed.
➤ Bug Number: MCCET-3720. (macOS) Keyboard shortcuts were missing beside some of the commands inside Timeline Fast Menu.
➤ Bug Number: MCCET-3725. You might have incorrect audio levels after rendering a stereo clip with an Audio Suite effect.
➤ Bug Number: MCCET-3747. You might have received a “fatal exception” error when trying to render a QT matte key effect with UME linked media in a 1080p 29.97 project.
➤ Bug Number: MCCET-3751. (Interplay) Media create by EVS with international characters in bin column names could not be checked out.
➤ Bug Number: MCCET-3479. When working with Edit While Capture subclips, the cursor and position indicator did not follow smoothly when scrubbing with the mouse.
Fixed in Media Composer v2020.8 ➤ Bug Number: MCCET-3625. In some instances, timecode metadata might not have been written to ProRes files.
➤ Bug Number: MCCET-3634. MP4 files from Sony A7 II would not link.
➤ Bug Number: MCCET-3630. When Dynamic Relink was enabled, XAVC-I class 300 clips displayed as media offline.
➤ Bug Number: MCCET-3620. Media Composer might have used all available RAM when linking some MP3 files.
➤ Bug Number: MCCET-3509. In some workflows, exported AAFs had duplicate IDs in Pro Tools and did not link.
➤ Bug Number: MCCET-3727. Stereo audio did not playback when linking MP4 with UME plugin as dual mono panned left and right.
➤ Bug Number: MCDEV-12942. Bin Container should not have ability to be renamed into “Project” name.
➤ Bug Number: MCDEV-10986. Minimize floating tools does not work - cannot click easily on button to restore.
➤ Bug Number: MCDEV-13283. Bin view names for preconfigured Bin views should not be in Italic text in dropdown menu.
➤ Bug Number: MCDEV-13258. Pasting text with carriage return from Excel to a new bin name vaporised Media Composer.
➤ Bug Number: MCDEV-12749. After using Shift+H to focus the Timeline, the Timeline scale bar no longer moves during zoom in/out.
➤ Bug Number: MCDEV-13309. New Custom Project should not be created without typing Raster by user.
➤ Bug Number: MCDEV-11583. Clicking on small arrow in Workspace Bar sometimes changed workspaces instead of opening the menu.
➤ Bug Number: MCDEV-13281. Inspector Tool should show color palette after clicking on Color chip.
➤ Bug Number: MCDEV-12609. TC1 Track is not available in Edit Marker dialog when adding new Marker on Timeline Sequence.
Fixed in Media Composer v2020.8 ➤ Bug Number: MCDEV-11577. Some render options are not fully visible on Expert Render window when hardware is present.
➤ Bug Number: MCDEV-13324. Effects Editor (and perhaps other windows) gets positioned/displayed so that it's title bar gets cropped out of bounds.
➤ Bug Number: MCDEV-13336-. Garbled Text is shown for 3D bin columns in some locales, such as Japanese and Russian.
➤ Bug Number: MCDEV-13379 . Garbled Text is shown for reformat, image aspect ratio, and field motion bin columns in some locales, such as Japanese and Russian.
➤ Bug Number: COGS-7609. All separate Smart Tool Buttons should be highlighted after enabling.
➤ Bug Number: MCCET-3 650. You received a “The file compression is not supported for media creation” error when consolidating Panasonic AVC Intra 100 media.
➤ Bug Number: MCDEV-10453. (Titler+) (macOS) The cursor did not change to a resize icon when hovering over frame handles.
➤ Bug Number: MCDEV-13408. (Titler +) In some instances, changing the size of thumbnail view in the bin changed the position of titles.
➤ Bug Number: MCDEV-13366. (Titler+) You might have received a “Structured exception” error when drawing with the Titler.
➤ Bug Number: MCDEV-13349. (Titler+) Justification settings were not reset to off after moving a layer around with the mouse.
➤ Bug Number: MCDEV-13315. (Titler+) Legacy titles promoted to T+ came in with darker colors.
➤ Bug Number: MCDEV-13298. (Titler+) You might have received a “Segmentation fault in thread Main thread” error when during drawing or typing a title.
➤ Bug Number: MCCET-3731. Titler+ did not work with some foreign locales.
➤ Bug Number: MCCET-3668. In some instances, Marquee titles had an extra fade-in added.
➤ Bug Number: MCCET-3662. Title Tool automatically created foreground fade in with two key frames.
Fixed in Media Composer v2020.6 ➤ Bug Number: MCDEV-13395. (Titler+) In some instances, selecting a color chip displayed gradient mode for a selected layer with solid color.
➤ Bug Number: MCDEV-13409. (Titler+) Promoting an old Titler+ title with transparency displayed incorrectly.
➤ Bug Number: MCDEV-13345. (Titler+) After changing fonts, Titler+ interpreted the space bar as a Play command.
➤ Bug Number: MCDEV-13316. (Titler+) After changing fonts, the cursor might have stopped working.
➤ Bug Number: MCDEV-13304. (Titler+) Presets older than v2020.6 might have loaded back misaligned.
➤ Bug Number: MCDEV-13306. (Titler+) The justification buttons did not always appear correctly after changing justification.
➤ Bug Number: MCCET-3651. Renders might have been lost after consolidating a sequence with XDCAM HD media in the Timeline.
Fixed in Media Composer v2020.6 The following have been fixed:
➤ Bug Number: MCCET-3290 . You might have received “FatalAbort VDM Scheduling failed” and “MultiFrameCombiner” errors when trimming.
➤ Bug Number: MCCET-3474. Marking an IN and OUT and then dragging an effect to the Timeline sometimes caused multiple additional add edits.
➤ Bug Number: MCCET-3237. (Windows) FrameFlex scaling might have appeared blurry on some images.
➤ Bug Number: MCCET-3589. (Media Composer Video Satellite) If the Timeline crossed midnight (00:00:00;00) playback would not start if the playhead was beyond halfway between 00:00:00;00 and the end of the sequence.
➤ Bug Number: MCCET-3479. When working with Edit While Capture subclips, the cursor and position indicator did not follow smoothly when scrubbing with the mouse.
Fixed in Media Composer v2020.5 ➤ Bug Number: MCCET-3331. In some instances, linked MOV files failed when performing a background transcode.
➤ Bug Number: MCCET-3596. Adding Key Code to a Subclip did not work properly.
➤ Bug Number: MCCET-3635. AAF exports were much slower than in previous releases.
➤ Bug Number: MCCET-3597. You might have lost renders when working between two systems and using the Sapphire Plugin.
➤ Bug Number: MCCET-3577. In some instances, changes in the Timeline and audio were not correct after performing a batch re-import or relink of the audio.
➤ Bug Number: MCCET-3542. You might have received a “No such track” error after performing a mixdown for a sequence with a Timecode Burn-in effect.
➤ Bug Number: MCCET-3614. (macOS) (List Tool) When choosing to save an EDL “To several files” the save destination was not remembered.
➤ Bug Number: MCCET-3443 . When working with Paint Effect, video on a lower track appears when you first drag the paint object.
➤ Bug Number: MCCET-3481. If you zoomed in on a Paint Effect object in a sequence and then scrubbed the Timeline and moved the object, the image displayed was incorrect.
➤ Bug Number: MCCET-3472. You might have received a “Fails Playout QC Process due to repeating idr_pic_ids” error when exporting 4K / UHD XAVC Class 300 media.
Fixed in Media Composer v2020.5 The following have been fixed:
➤ Bug Number: MCDEV-12996. Performing an “Export to device > XDCAM” placed a RecStart essence mark in all frames instead of just the first frame.
➤ Bug Number: MCCET-3621. (macOS v10.15.x) You could not import or link to some mp3 files.
➤ Bug Number: MCCET-3555. You did not have full range of XY position parameters for FrameFlex when dragging the wire frame in the Effects Editor.
Fixed in Media Composer v2020.5 ➤ Bug Number: MCDEV-13077. Right-clicking the color column in bin did not work with clips or sequences that were already selected (highlighted).
➤ Bug Number: MCDEV-12236. The Bin Sidebar did not scroll properly after creating a bin.
➤ Bug Number: MCDEV-13048. Media Composer crashed on exit if Titler+ was active.
➤ Bug Number: MCDEV-12953. When the sequence Map was displayed, transition manipulation worked correctly on the first try and then it stopped working.
➤ Bug Number: MCDEV-13008. When you navigated to a shared project subfolder, then pressed OK, the Select Project window incorrectly showed the result as an Avid project.
➤ Bug Number: MCDEV-13067. (Media Composer v2020.4) After initially working fine after installation, you might have received an “Assertion” error on startup.
➤ Bug Number: MCDEV-13068. Production Management credentials were not being saved in the new Project Window when you closed Media Composer.
➤ Bug Number: MCDEV-13110. After closing a project, you could not create a new project in a different project location in the new Select Project window because the Create button was grayed out.
➤ Bug Number: MCDEV-13045. In some instances, a BreakPad window appeared when applying a 3D DVE effect.
➤ Bug Number: MCDEV-12984. Pre-LUT/Post-LUT color picker values were identical even though the viewer had a different color space.
➤ Bug Number: MCDEV-12907. You might have received an Assertion error when trying to create a 24p PAL project.
➤ Bug Number: MCDEV-113047. Shift + Render In-to-Out behaved differently when used twice.
➤ Bug Number: MCDEV-12955. (Titler+) CTRL-click to multi select did not work.
➤ Bug Number: MCDEV-12050. (Titler+) Promoted titles might have been in the wrong position.
➤ Bug Number: MCDEV-13011. Right clicking on a group of selected clips in a bin caused clips to be deselected.
Fixed in Media Composer v2020.4 ➤ Bug Number: MCDEV-13026. Zoom in and Zoom out buttons were inadvertently mappable.
➤ Bug Number: MCDEV-13009. The Effect Palette needed translation in some effect categories.
Some languages displayed garbled text.
➤ Bug Number: MCDEV-12766. (macOS) In some instances, performing Capture produced files 1000x larger than the media in the file.
➤ Bug Number: MCDEV-13029. You might have received a Fatal Assertion error when saving Media Creation Setting (as a Site Setting).
➤ Bug Number: MCCET-3227. Media Creation Settings were not retained when added to Site Settings.
➤ Bug Number: MCCET-3427. In some instances, even if the minimum threshold was set in Transfer Settings, when sending to playback, the warning did not appear if the Timeline contained a proxy resolution.
➤ Bug Number: MCCET-3578. In some instances, adding or removing a Timewarp effect with Adaptive Deinterlace Source enabled, moved the image one frame and broke sync between video track and audio tracks.
➤ Bug Number: MCCET-3466. (macOS) You might have experienced random sluggishness & beach balls when opening projects or bins.
➤ Bug Number: MCCET-3419. If Dupe Detection was enabled, you might have received an “Exception: CORE_SEGMENT_NOT_FOUND” error when moving the audio clip to another audio track using the Segment tool.
➤ Bug Number: MCCET-3577. You might have seen Timeline changes and the audio might not have been correct after performing a batch re-import or relink of the audio.
➤ Bug Number: MCCET-3589. (Media Composer Video Satellite) If the Timeline crossed midnight (00:00:00;00) playback would not start if the playhead was beyond halfway between 00:00:00;00 and the end of the sequence.
➤ Bug Number: MCCET-3615. The tracking was ignored after performing a render on a sequence containing tracking on a Titler+ effect.
Fixed in Media Composer v2020.4 The following have been fixed:
Fixed in Media Composer v2020.4 ➤ Bug Number: MCCET-3455. Dynamic Relink will now properly relink to either XAVC 100 or XAVC HD Intra CBG Class 100.
➤ Bug Number: MCCET-3439. If Run Length Endcoded (RLE) was enabled in the Import Setting, you might have received errors or a system hang when importing MOV files.
➤ Bug Number: MCCET-3265. In some instances, you could not link and consolidate/transcode QuickTime XDCAM HD 422.
➤ Bug Number: MCCET-3383. The Project interface flashed when clicking in the project, and opening or saving bins.
➤ Bug Number: MCCET-3461. Audio frames might have been missing after performing a mixed down or an export.
➤ Bug Number: MCCET-3552. If you had multiple floating bins, the application responsiveness was slow.
➤ Bug Number: MCCET-3482. When working with Dynamic Relink, if relink was set to Highest Quality and you do not have access to the drive containing the highest quality media, you received a “cannot find file requested” error message rather than remain linked to the lower resolution media.
➤ Bug Number: MCCET-3316. When working with the SubCap effect, the Outline Weight behaved differently in Media Composer v2018.x and above (the space between the letters became larger) compared to Media Composer v8.x. In order to fix this, the Outline Weight includes two options to choose from: Basic Outline and Basic Outline (extra spacing.) Fixed in Media Composer v2020.4 ➤ Bug Number: MCCET-3553. The editing application would sometimes crash when switching between bin layouts.
➤ Bug Number: MCCET-3233. If there is a filler between segments, jumping to specific timecode did not work properly.
➤ Bug Number: MCCET-3329. With certain keystroke combinations you might have experienced behavior such as slow motion frames or K not stopping playback.
➤ Bug Number: MCCET-3530. Segments were deselected if you switched between red and yellow Segment mode.
➤ Bug Number: MCCET-3421. In some instances, the bin would hang or crash when trying to open the bin.
➤ Bug Number: MCCET-3307. When working in the Color Workspace, user interface responsiveness was slower in the Effects Editor window than in the Color Correction window.
Fixed in Media Composer v2020.4 ➤ Bug Number: MCCET-3537. Saving a new workspace with single monitor selected, switches back to dual monitor unless you re-save the workspace.
➤ Bug Number: MCCET-3436. Remapped keyboard shortcuts did not work when Bin Container Sidebar was the active window.
➤ Bug Number: MCCET-3275. Using an anchor when synchronizing a SubCap effect did not work.
➤ Bug Number: MCCET-3069. (NRCS Tool) You might have experienced issues on your first attempt at scrolling down and clicking at the bottom of the Story Panel.
➤ Bug Number: MCCET-3545. Duplicate shortcut (Ctrl+D) was not working in Script View.
➤ Bug Number: MCCET-3487. Assigned local clip colors changed to default when the volume was adjusted.
➤ Bug Number: MCCET-3564. When XAVC files were linked when Dynamic Relink was enabled, that Data track displays as Media Offline.
➤ Bug Number: MCCET-3562. Media Composer crashed to BreakPad during Send To Playback if background check in was enabled.
➤ Bug Number: MCCET-3473. In some instances, you received a “You cannot import this file into a bin” message when trying to import a file you previously exported.
➤ Bug Number: MCCET-3429. The Segment mode and Trim type were reverted to default (Red/Yellow) after using the Smart Tool toggle to re-enabled the Smart Tool.
➤ Bug Number: MCCET-3115. In some instances, Import and Export Options windows were unresponsive.
➤ Bug Number: MCCET-3403. If you had many bins and at least one folder, the Sidebar and Project window bin list scrolled to the top when you closed a bin.
➤ Bug Number: MCCET-3325. Title Tool text was thicker over a still image imported with Long GOP, for example, XDCAM HD 50.
➤ Bug Number: MCCET-3434. There was no audio when linking and importing .mts and .m2ts files on Media Composer v2019.12.
Fixed in Media Composer v2020.4 ➤ Bug Number: MCCET-3274. On a dual monitor system, Media Composer would not maximize after you minimized the application. Note: Now, when you hover over the Windows taskbar, clicking the monitor icon will maximize the user interface across both monitors.
➤ Bug Number: MCCET-3332. AAF exports from Media Composer v2018.12.8 and v2019.9 did not import into Pro Tools.
➤ Bug Number: MCCET-3164. You could not export to a P2 volume. This has been fixed. You must have Panasonic-P2 4.9.0.4 plug-in installed.
➤ Bug Number: MCCET-3448. You might have received “Assertion failed” errors and audio channels offline when opening a sequence restored from archive.
➤ Bug Number: MCCET-3451. The AudioSuite Vari-Fi effect was not working correctly.
➤ Bug Number: Film-1841. (Titler+) When stepping in side the Titler effect, the track labels are now clearer: V1 appears as Bkgd and V2 appears as Video Fill. You will also notice that in the Effect Editor, Blend appears as Video Fill Opacity.
➤ Bug Number: MCDEV-12408. (Titler+) In some instances, selecting multiple items resulted in applying the same color to both items.
➤ Bug Number: MCDEV-12364. (Titler+) Some fonts are applied as Arial instead of the actual font.
➤ Bug Number: MCDEV-12378. (Titler+) Just clicking on a text box moved the text alignment.
➤ Bug Number: MCDEV-12118. (Titler+) You could not immediately perform a delete after selecting all layers from the effect editor.
➤ Bug Number: MCDEV-12163. (Titler+) Typing values with a comma instead of a period reset the parameters to defaults.
➤ Bug Number: MCDEV-12081. (Titler+) When selecting the eyedropper in the Effect Editor color picker, you would lose the eyedropper icon as soon as you moved the eyedropper away from the color chip.
➤ Bug Number: MCDEV-11588. (Titler+) Shapes traded places after using “send to back” from the Effect Editor.
➤ Bug Number: MCDEV-12077. (Titler+) The Left, Center, Right alignment did not work for R-L fonts such as Arabic.
Fixed in Media Composer v2020.4 ➤ Bug Number: MCDEV-10516. (Titler+) Gradient quadrants did not remain locked, relative to the characters when you rotated them.
➤ Bug Number: MCDEV-10096. (Titler+) The mouse cursor did not change to resizing arrows when you hovered over a vertical edge of the Composer window.
➤ Bug Number: MCDEV-10079. (Titler+) The font reverted to Arial after deleting the last character using backspace.
➤ Bug Number: Film-1838. (Titler+) A keyframe was automatically created if you typed text and then moved the text bounding box.
➤ Bug Number: Film-1790. (Titler+) Performing a Recreate Title Media will now open Avid Titler + and promote the title.
➤ Bug Number: MCDEV-12317. When using some old projects, the Settings Window may have a lot of missing settings.
➤ Bug Number: MCDEV-11342. If you closed the Color Correction Window in the default Color workspace, the Edit workspace did not open with the correctly sized Composer window.
➤ Bug Number: MCDEV-11709. The Name column did not appear first in the Media Tool.
➤ Bug Number: MCDEV-11947. New bins could be created in the Trash folder.
➤ Bug Number: MCDEV-12195. Launching a new project with a new user Profile opened a default bin as a floating window.
➤ Bug Number: MCDEV-12374. In some instances, changing clip color for items in a sifted bin, changed color for unsifted items too.
➤ Bug Number: MCCET-3459. In some instances, group clips do not redraw correctly in the Timeline when you zoom in and out.
➤ Bug Number: MCCET-3414. In some instances, you might have seen banding issues after rendering or performing video mixdowns.
➤ Bug Number: MCCET-3356. (List Tool) Comparing XML Change lists containing Varicam media resulted in an “Error encountered in list” error.
➤ Bug Number: MCDEV-12409. You might have received an “Assertion Failed exception” or the system might have crashed after deleting media from Media Tool.
Fixed in Media Composer v2020.4 ➤ Bug Number: MCDEV-12187. The Other Bins folder did not appear in the Bin Container when you opened a bin from another project.
➤ Bug Number: MCCET3235. The Media Composer installer did not display the text “Open I/O NDI” correctly on some foreign locales.
➤ Bug Number: MCCET-3323. Offline beginning of Capture clip, when put into multigroup, presents Offline beginning of clip at every edit point of clip in sequence.
➤ Bug Number: MCCET-3334. You could not transcode if the space required for transcoding exceeded 2097152 MB (21-bit) on 8K projects.
➤ Bug Number: MCCET-3416. You could not create a video mixdown for media containing a nested effect.
➤ Bug Number: MCCET-3324. When Audio Mixer parameters like volume or pan were modified in a master clip, the changes were lost when reopening the master clip.
➤ Bug Number: MCCET-3442. The AudioSuite Reverse effect is not working correctly.
Workaround: Use the AudioSuite master-clip tool on a subclip instead of using the effect directly in the Timeline.
Fixed in Media Composer v2020.4 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Portions © Copyright 2003-2007 of MOG Solutions.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid Nexis, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:
http://www.avid.com/US/about-avid/legal-notices/trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer Fixes 2020.x (cid:129) Created 12/13/22