---
product: media-composer
product-area: editing
version: "2023.12"
release-date: 01/12/2023
doc-type: fixes-readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Fixed in Media Composer v2023.12.6 Avid Media Composer® Fixes for Media Composer v2023.x This document provides a cumulative list of fixes for the Media Composer v2023.x releases. To see detailed information on each release, see the individual ReadMe for each release here.
Fixed in Media Composer v2023.12.6 The following have been fixed for all applicable models of Media Composer in this update (First, Standard, Ultimate, and Enterprise):
Bug Number: MCCET-5855. "SPFPlayConsumer::Execute TIMEOUT Monitor Exception" error encountered after playback of some XDCAM HD 35 media.
Bug Number: MCCET-5731. Selecting "Decompose" with "Captured Clips Only" option for a sequence resulted in "Assertion failed" and "Fatal Error" messages.
Bug Number: MCCET-5582. Increasing or decreasing timecode values by one frame increments did not work with an edit timebase of 50 fps.
Bug Number: MCCET-4813. In some instances, markers shifted in a timeline that contained Group clips and mixed frame rates.
Bug Number: MCCET-5847. In some instances, performance issues were encountered while using MultiCamera mode.
Bug Number: MCCET-5865. When importing an AAF, users were prompted to "Please choose an import resolution", even if media matched the current project resolution.
Bug Number: MCCET-5800. Using a semicolon in the name of a new sequence template caused multiple sequence templates to be created, in addition to a possible error if selected.
Bug Number: MCCET-5413. "Assertion failed" error was encountered after importing an AAF and previewing the output for Columnar or TabbedLists using the List Tool.
Bug Number: MCCET-5508. Sequence names containing underscores did not appear correctly at the bottom of the Timeline window.
Bug Number: MCCET-5630. In some instances, errors were encountered after using Auto Contrast in the Color Correction panel.
Fixed in Media Composer v2023.12.6 Bug Number: MCCET-5587. Find Script button did not work for Group or MultiGroup clips.
Bug Number: MCCET-5342. LTC timecode for Blackmagic Design I/O devices was out of sync with the timecode for sequences in a 24p project.
Bug Number: MCCET-5645. In some instances, using a Splice-in edit caused an "Assertion failed" error, which prevented bins from saving.
Bug Number: MCCET-5781. Exporting a short sequence to AAF took a long time, while the status window reported "Gathering AAF Dependencies".
Bug Number: MCCET-5316. In some instances, Send to Playback skipped clips and left black space, depending on Dynamic Relink settings and the resolutions used in a sequence.
Bug Number: MCCET-5921. (MediaCentral | Production Management) Send to Playback did not work in a UHD project if "Transcode before sending to playback" was enabled.
Bug Number: MCCET-5771. Moving a clip one frame at a time using keyboard shortcuts could unmute or solo audio tracks.
Bug Number: MCCET-5017. In some instances, the aspect ratio changed after using the "Commit Multicam Edits" command on a sequence made of Group clips.
Bug Number: MCCET-4917. In some instances, the Mute Clip command did not work consistently on Group clips.
Bug Number: MCCET-5687. Loading complex stories in NRCS caused Media Composer performance to slowdown and eventually hang.
Bug Number: MCCET-5344. Smart Tool buttons mapped to the Timeline were deselected after entering Trim mode.
Bug Number: MCCET-5911. Match frames did not work properly when creating a group clip of 59.94p footage in a 59.94i project.
Bug Number: MCCET-5879. (MediaCentral | Production Management) Glitches were encountered after AVC-Intra 100 media created in Media Composer v2024.12 was transcoded using MediaCentral Transcode. This fix requires the use of MediaCentral Transcode v2024.10.2 or later.
Bug Number: MCCET-5809. Playback and scrubbing of AVC-Intra 50/100 1080i50 mixdowns revealed significant encoding artifacts and visual glitches.
Bug Number: MCCET-5650. Subclips created by AutoSync with surround sound had no audio output when played in the source monitor.
Fixed in Media Composer v2023.12.6 Bug Number: MCCET-5386. Media Creation target drive pulldown menu was not wide enough to display long drive or workspace names.
Bug Number: MCCET-5359. Increasing or decreasing the timecode using the "Using Timecode to Find a Frame" in a DF timecode sequence did not move to the correct frame location.
Bug Number: MCCET-5973. (Windows) "Exception: Structured Exception" error occurred when creating a new project on a Media Composer system without SRT and NDI installed.
Bug Number: MCCET-5959. Using "Find Bin" opened a floating window, despite tabbed bins being selected in the settings.
Bug Number: MCCET-5745. (macOS) "File <file_name> not found" error occurred when opening a project containing UTF-8-Mac (NFD) encoded folder names containing certain Japanese characters.
Bug Number: MCCET-5543. Floating Composer monitor moved to the left after toggling show/hide video.
Bug Number: MCCET-5765. Applying the AAX Dyn3 Limiter/Compressor intermittently failed to respond to side-chain input A1 until the Key Input was reselected.
Bug Number: MCCET-4972. The Active Format Description (AFD) metadata entry was missing from exported media files.
Bug Number: MCCET-5456. Dragging a track from within a nested clip to a new track automatically selected the first clip or filler item on the destination track.
Bug Number: MCCET-5703. Switching from the Color workspace to Edit workspace caused the floating Composer window to lose its saved panel layout.
Bug Number: MCCET-5964. Exported MXF files from a 1080x1920 timeline were encoded with a 1088x1920 raster when using DNxHR HQX or DNxHR 444 codecs.
Bug Number: MCCET-5561. (masOS) When comparing sequences, the List Tool incorrectly diplayed frame counts.
Bug Number: MCCET-5698. Symphony color correction tools became unusably slow when Avid Huddle/SRT streaming was enabled.
Bug Number: MCCET-4307. Connection to the FluidMotion vector correction effect editor was lost when switching workspaces.
Bug Number: MCCET-6018. Premiere and Resolve keyboard mappings were unavailable when Media Composer was licensed as a Standard version.
Fixed in Media Composer v2023.12.5 Bug Number: MCCET-5448. The "Scaling" text in the Record Monitor appeared blurred during 3D Warp adjustments.
Bug Number: MCCET-5906. Loading Canon XF MPEG-2 35 and Sony XDCAM EX 35 media consolidated to OP-ATOM into the Source monitor resulted in assertion failures and application crashes.
Bug Number: MCCET-5810. Media Composer crashed when attempting to load a second sequence while the first sequence was already active in Play Standby mode.
Bug Number: MCCET-5696. Group clips created from subclips with in-points displayed incorrect FrameFlex aspect ratios.
Bug Number: MCCET-5467. Interlaced frame rates were not supported when exporting SD 4:3 .mov files.
Bug Number: MCCET-6009. Multigroup clips were scaling up unexpectedly during playback in the Source Monitor in DCI 4K Scope projects.
Bug Number: MCCET-5369. An additional black frame was present at the end of .mov clips linked through UME.
Bug Number: MCCET-5902. Certain versions of Elasticsearch used by Media Composer resulted in uncontrolled resource consumption and application crashes.
Bug Number: MCCET-6000. In some instances, checking out or importing highly complex AAF sequence files could cause Media Composer to become unresponsive.
Bug Number: MCCET-5293. Duplicate yellow trim indicators appeared during ripple trimming when timeline playback transitioned to a second page.
Bug Number: MCCET-5374. The Play Length Toggle button did not appear highlighted in the Command Palette.
Bug Number: MCCET-4448. Using Expert Render with an NVIDIA RTX 5000 GPU resulted in certain matte keys rendering as black.
Bug Number: MCCET-6023. Media Composer caused a memory leak due to repeated access to SMB- mapped network drives in domain environments.
Bug Number:MCCET-5598. Subcap playback dropped frames and lost real-time performance.
Fixed in Media Composer v2023.12.5 The following have been fixed:
Bug Number: MCCET-5551. Display/Hide Master Clip Controls button was missing from the AudioSuite window.
Fixed in Media Composer v2023.12.4 Bug Number: MCCET-4981. Toggle Client Monitor button was not working after using the HW/SW button.
Bug Number: MCCET-5632. Workgroup transfers with Dynamic Relink enabled did not send high-res, PCM audio.
Bug Number: MCCET-5489. Menu options for currently inactive window panes were not grayed out as expected.
Bug Number: MCCET-5484. Clip Gain slider in the Timeline displayed incorrect values for clips, which were carried over from previously adjusted clips in the Timeline.
Bug Number: MCCET-4452. In some instances, NTSC standard definition footage was appearing as 720x496i after encoding as ProRes during import.
Bug Number: MCCET-5777. Print Bin function excluded items between page breaks.
Bug Number: MCCET-5563. After selecting multiple items in a bin, clicking on an item did not deselect remaining items.
Bug Number: MCCET-5776. Media Creation settings were not applied in Site Settings.
Bug Number: MCCET-5556. When source clips had a different aspect ratio than the project, grouped clips did not maintain FrameFlex settings and were squeezed after mixdown to XDCAM HD 50Mbits MXF.
Bug Number: MCCET-5668. (MediaCentral | Production Management) Restored MPEG50 clips became offline after changing Dynamic Relink Settings to Highest Quality.
Bug Number: MCCET-5815. In some instances, Media Composer crashed after a user changed their monitor resolution during Send to Playback.
Bug Number: MCCET-5690. (MediaCentral | Production Management) Bins opened more slowly in recent versions of Media Composer than in previous versions.
Bug Number: MCCET-5711. Keyboard shortcut to show or hide Bin Container Sidebar did not work consistently.
Fixed in Media Composer v2023.12.4 The following have been fixed:
Bug Number: MDEV-18596. "Allow Mixed Frame Rate Media" checkbox selection in Dynamic Relink settings did not persist, which caused problems for some projects in the edit, mix, or online process.
Bug Number: MCCET-5499. When importing media and the Import Resolution Conflict dialog was encountered, the default codec in the Media Creation Import settings was reset.
Fixed in Media Composer v2023.12.4 Bug Number: MCCET-5558. In some instances, already rendered sequences were rendered again when performing a Send to Playback.
Bug Number: MCCET-5403. (MediaCentral | Production Management) Locally linked AMA media could go offline in a MediaCentral | Production Management environment, Media Composer configuration, and would not be able to link back to make it online again.
Bug Number: MCCET-5119. Noticeable lags were experienced while editing in the Timeline if many real- time audio effects were used.
Bug Number: MCCET-5443. Sequence names entered by user reverted to default sequence names when using the Multi-Mix Tool.
Bug Number: MCCET-5680. In some instances, using Multicam to edit group clips caused Media Composer to crash and display an error message.
Bug Number: MCCET-5534. Performing "Export to Device" using an XDCAM disc with the Sony PDW-U2 XDCAM Disc Drive failed and produced an "Exception: Structured Exception" error.
Bug Number: MCCET-5455. Consolidated AVC-Intra 422 clips caused playback errors and a "CORE_ CONSISTENCY_CHECK_FAILURE" in the Source monitor.
Bug Number: MCCET-5203. (MediaCentral | Production Management) Using the MSP_MXF Plug-in to link MXF files in file paths with multibyte character sets, such as Japanese, caused media files to become offline.
Bug Number: MCCET-4830. (MediaCentral | Production Management) "Filter Out System Drive" option in the Media Creation settings for a Project did not always work as expected when importing from the Source Browser, which meant users could still write media to the local system drive.
Bug Number: MCCET-5562. In some instances, consolidating AVC clips caused macroblocking errors in portions of the frame.
Bug Number: MCCET-5673. In some instances, adjusting clip gain in the Audio Mixer caused Media Composer to crash.
Bug Number: MCCET-5349. The position indicator and position bar in the Record monitor did not update properly after adding a Stabilize effect to a clip in the Timeline.
Bug Number: MCCET-5315. Stylesheets for SubCaps, accessed through the Global Properties window, did not save outline settings as part of their template.
Bug Number: MCCET-5649. (macOS) Various bin operations, such as opening or renaming bins, could cause intermittent hangs/beachballs on macOS.
Fixed in Media Composer v2023.12.4 Bug Number: MCCET-5682. Avid Huddle did not update images in real-time while making changes in the Effect Editor.
Bug Number: MCCET-5699. Avid Huddle did not update images in real-time while working in Trim Mode.
Bug Number: MCCET-5479. (macOS) Media Composer would crash if BorisCC and BaseLight plugins were installed on the user's system (this issue has been addressed with Boris FX 2024.5 v17.5.3.) Bug Number: MCCET-5478. In some instances, the parameters for an Audio Track Effect reverted to previous values after playing back a sequence.
Bug Number: MCCET-5603. Changing monitor resolution during Send to Playback to a TMF enabled device could result in loss of audio in the TMF file.
Bug Number: MCCET-5638. Labels for audio channels in the Audio Mixer did not update properly when switching between Audio Project settings.
Bug Number: MCCET-5722. The Undo command caused two operations to revert, instead of one, after performing an operation in the Timeline and changing the clip in a group clip using the context menu (it should not be possible to undo clip selection within a group clip).
Bug Number: MCCET-5551. Display/Hide Master Clip Controls button was missing from the AudioSuite window.
Bug Number: MCCET-5716. Using text containing non-alphanumeric characters, such as hyphens, could cause ScriptSync errors, such as "AvNN Error:350, AvNNDatabase::Align error".
Bug Number: MCCET-5087. (MediaCentral | Production Management) Importing PNG, TGA, or PSD files containing Chinese or Japanese filenames could have caused errors.
Bug Number: MCCET-5174. (MediaCentral | Production Management) Importing image files with Japanese filenames caused the media to become offline.
Bug Number: MCCET-5640. Changes in the Audio Mixer Tool could not be undone.
Bug Number: MCCET-5608. During installation of Media Composer, an empty "BF-76.aaxplugin" folder was created instead of the expected BF-76.aaxplugin.
Bug Number: MCCET-4602. Master Caption List was out of order when the SubCap effect was placed on two tracks and some captions were muted.
Bug Number: MCCET-5662. Only the EDGE4 option was available for use in the "Master Edge" bin column.
Fixed in Media Composer v2023.12.3 Bug Number: MCCET-5097. Certain MP3 files could not be imported or transcoded on systems without QuickTime installed.
Bug Number: MCCET-4763. (macOS) Apple ProRes RAW files linked with UME produced errors on Apple Silicon systems.
Bug Number: MCCET-5619. (Windows) Apple ProRes RAW media could not be linked, which resulted in a black screen or error.
Bug Number: MCCET-5497. Clear/Add (-/+) icons in the Find window were hard to read if the UI interface brightness was set to the darkest option.
Bug Number: MCCET-5416. (macOS) Media Composer crashed during start if the MPEG-H Audio plug-in was installed on the user's system.
Bug Number: MCCET-5750. Certain MP3 files could not be re-imported using Batch Import on systems without QuickTime installed.
Bug Number: MCCET-5681 and MCCET-5699. SRT stream in Avid Huddle did not update when moving frame-by-frame in Trim mode.
Fixed in Media Composer v2023.12.3 The following have been fixed:
Bug Number: MCCET-5555. Since Media Composer v2021.x, the NRSC Tool window could not be fully collapsed or resized as small as previous versions.
Bug Number: MCCET-5440. Depending on the order of selections made in Composer settings, some NDI and SRT devices encountered problems with playback of multiple streams of video at 1/4 resolution in MultiCam mode (4-way or 9-way split).
Bug Number: MCCET-4815. (MediaCentral | Production Management) Checking out a partially-rendered matte key clip caused the clip to revert to a previously rendered state, even after those clips had portions of their renders cleared.
Bug Number: MCCET-769. In some instances, pressing the J key multiple times to play a sequence fast in reverse caused an “APanVolConsumer::GetAudioGain()Invalid finalDistanceToNext [0]” error.
Bug Number: MCCET-5094. Resizing the Audio Mixer Tool window caused the height of faders to change after switching the mixer’s monitoring to “Direct, surround tracks in ProTools order”.
Bug Number: MCCET-5590. Sequences with Titler+ effects in them could cause errors or serious hangs during playback and editing.
Fixed in Media Composer v2023.12.3 Bug Number: MCCET-5502. (macOS) Japanese text was not properly decoded for Columnar, TabbedLists, and XML output formats in the List Tool on macOS systems set to a Japanese locale.
Bug Number: MCCET-5588. Unable to link or import certain ProRes MOV files on systems without QuickTime installed.
Bug Number: MCCET-4894. In some instances, audible skipping or glitches were encountered when using audio scrub.
Bug Number: MCCET-5583. Media Composer did not automatically relink to highest quality media when it became available until users opened the Dynamic Relink Settings and clicked Apply.
Bug Number: MCCET-3897. (MediaCentral | Production Management) Using Consolidate/Transcode to convert clips before setting the Video Relink Method to "Highest Quality" in the Dynamic Relink Settings window caused the Data Track to link to the original AMA clip of the Avid OP-Atom media files.
Bug Number: MCCET-5492. In some instances, using "Create Script from Clip" resulted in an "AvNN error 544" error for specific clips.
Bug Number: MCCET-5610. (MediaCentral | Production Management) Media created on a local drive was not displayed in the Media Tool.
Bug Number: MCCET-5580. In some instances, Media Composer produced an "Exception: Structured Exception" error and crashed after selecting a clip in the Timeline and moving a fader in the Audio Mixer.
Bug Number: MCCET-5609. Media Composer crashed after stopping playback to adjust ganged sliders in the Audio Mixer.
Bug Number: MCCET-5577. Audio Ducking did not work after “use marks” was selected.
Bug Number: MCCET-5553. Encoding profile may not have saved and reverted to a different codec profile in Media Creation settings after closing a project and restarting the application.
Bug Number: MCCET-5611. Resizing the NRCS Tool panel after loading a MediaCentral | Newsroom Management story caused an "Assertion failed" error.
Bug Number: MCCET-5504. Japanese text was not properly decoded in the Import progress window on systems set to a Japanese locale.
Bug Number: MCCET-5507. Switching back and forth between newly created bins with linked media while in Text View mode caused the spacing between rows to change for larger font sizes.
Bug Number: MCCET-5530. (MediaCentral | Production Management) In some instances, updating from MediaCentral | Production Management while the Marker window was open caused Media Composer to issue an exception.
Fixed in Media Composer v2023.12.2 Fixed in Media Composer v2023.12.2 The following have been fixed:
Bug Number: MCCET-5481. Selecting the “Choose for me” option in the New Project Settings window and clicking “Create” caused an “Incorrect value for width and height” error, even though raster dimensions are determined at a later stage.
Bug Number: MCCET-5130. In some instances, after opening a project stored on a NEXIS workspace, the Project and Bin Container Sidebars were blank, and did not display any bins or folders.
Bug Number: MCCET-5520. ALE files containing a column name with more than 32 characters produced an error message and would not import.
Bug Number: MCCET-5337. In some instances, Media Composer would not remain activated after relaunch when using a floating license, requiring users to check the “Use License server” box again after restarting.
Bug Number: MCCET-5518. Using Edit mode in the NRCS Tool to save edits containing MOS objects (for example, those created by VizRT Mosart) could cause an assertion error.
Bug Number: MCCET-5131. MOV files that contained audio and video of different lengths could go offline after enabling Dynamic Relink.
Bug Number: MCCET-5447. Text in the Media Composer Classic layout was not readable if the User Interface Settings for “Interface brightness” were set to the brightest or second brightness UI colors (two rightmost options).
Bug Number: MCCET-5453. When editing a group clip, the video and audio sometimes became offset for group clips created by consolidating a sequence that only used the video (no audio) track of a group clip.
Bug Number: MCCET-5538. Custom columns did not appear after importing an ALE file with the “Merge events with known master clips” option enabled in User Settings.
Bug Number: MCCET-5539. In some instances, importing an ALE file containing a mismatch between duration values caused an “Exception: BIN_IMPORT_NO_MATCH” error.
Bug Number: MCCET-5557. Audio in the original masterclip could relink to consolidated media after clips were consolidated with Dynamic Relink enabled.
Bug Number: MCCET-5548. Video in a 50p project became out of sync with audio after a few minutes or more of playback on an external monitor using a DNxIO or DNxIQ interface.
Bug Number: MCCET-5536 and MCCET-5496. (MediaCentral | Production Management) In some instances, opening a sequence with Dynamic Relink enabled caused Media Composer to become unresponsive.
Fixed in Media Composer v2023.12.1 Bug Number: MCCET-5521. Audio playback was garbled after using digital audio scrub and playing back media using a VM.
Bug Number: MCCET-4836. In some instances, audio pops occurred while editing remotely with Media Composer using Teradici on a system with NDI and SRT plug-ins installed.
Bug Number: MCCET-5325. Results for the Find Script command included large portions of a clip that spanned multiple script marks.
Bug Number: MCCET-5565. Using Digital Audio Scrub on a remote workstation or VM with HP Anyware (Teradici) caused audio to distort.
Fixed in Media Composer v2023.12.1 The following have been fixed:
Bug Number: MCCET-4271. User interface performance was sluggish if EUCON drivers for Artist Mix or Artist Control were enabled.
characters.
Bug Number: MCCET-5269. Closing the Effect Editor caused the Audio Mixer Mode to switch from Live to Clip.
Bug Number: MCCET-5370. Some AudioSuite effects could not be previewed and caused Media Composer to hang if an EQ3-7 Band effect was used on linked AVCHD media.
Bug Number: MCCET-5394. (Windows) In some instances, PhraseFind AI and ScriptSync AI services were not fully installed on systems with Java (32-bit) present, which caused errors to occur when using these features in Media Composer.
Bug Number: MCCET-5404. In some instances, proxy media created with Telestream Live Capture and EWC (Edit While Capture) was missing a portion of audio at the end of corresponding video files, until the capture was complete. This has been improved.
Bug Number: MCCET-5431. Tooltips were missing for some items in the Sequences tab of the Batch Subclip Tool.
characters may have caused Media Composer to report an error or crash.
Bug Number: MCCET-5449. On certain sequences where an audio mixdown was used, Send to Playback may have resulted in an “Unrendered video effects detected after render” message.
Fixed in Media Composer v2023.12 Bug Number: MCCET-5457. (Windows) Depending on the account types used to create a new account and sign-in to a Windows system (standard or administrator), launching Media Composer reported an “Exception: std::exception, what:Access is deinied” error.
Bug Number: MCCET-5459. Enabling Digital Audio Scrub and exiting Trim Mode on a system with AJA I/O hardware installed caused error messages that prevented playback and required users to restart Media Composer.
Bug Number: MCCET-5463. Using Digital Audio Scrub on a system with Blackmagic Design I/O hardware installed caused playback issues.
Bug Number: MCCET-5466. Vari-fi audio plugin did not calculate durations correctly.
Bug Number: MCCET-5472. Some interface settings were not working properly for projects stored on a NEXIS workspace.
Bug Number: MCCET-5480. New bins would not save properly after using the AutoSequence feature.
Fixed in Media Composer v2023.12 The following have been fixed:
Bug Number: MCCET-4579. Prunus AAF files imported into a 1080i/59.94 project in Media Composer could not be exported as AAF and returned an "Exception: AFileMediaDesc::SetAAFProperties() - Unable to set a container type for media descriptor" error.
Bug Number: MCCET-5186. In some instances, when bins and panels were set to float, new bins were opened underneath other windows.
Bug Number: MCCET-5020. Media Composer crashed while playing media from the Script window if the clip had a LUT applied and markers were added prior to playback.
Bug Number: MCCET-5182. Custom "Start TC" values for sequence templates would not appear until multiple attempts were made to create a new sequence using the templates.
Bug Number: MCCET-5245 and MCCET-5247. In some instances, when using Dynamic Relink, partially restored clip’s tracks did not relink properly to their High Rez and Low Rez media.
Bug Number: MCCET-5277. When using Dynamic Relink, partially restored clips with a Start timecode that began before midnight did not relink properly if their timecode rolled over after midnight.
Bug Number: MCCET-5071. In some instances, Match Frame did not work properly if the timeline contained clips that differed from the project frame rate.
Bug Number: MCCET-5210. Floating bin windows did not retain their size or position after opening and closing them multiple times.
Fixed in Media Composer v2023.12 Bug Number: MCCET-5289. (Windows) When upgrading from a previous version of Media Composer, ScriptSync AI and PhraseFind AI functionality was not available (AvNN Error 275, Connection Refused), requiring users to uninstall and reinstall Media Composer.
Bug Number: MCCET-5129. Nugen LM-Correct AudioSuite plugin was shifting audio and not rendering correctly in Media Composer.
Bug Number: MCCET-5264. Dual-roller trim operation did not work as expected for very long master clips with a Stabilize effect applied.
Bug Number: MCCET-5115. (MediaCentral | Production Management) Media Composer did not send all selected clips from one Workgroup to another when attempting to send multiple clips using the Transfer Engine and the Transfer Client.
Bug Number: MCCET-5148. (macOS) Enabling or disabling SRT caused a pop-up window asking for the keychain password to recur.
Bug Number: MCCET-5054. While in Effect Mode with the Effect Editor window open, the Effect Editor window remained open after moving the position indicator on the timeline using the TC track.MCCET-
5054. While in Effect Mode with the Effect Editor window open, the Effect Editor window remained open
after moving the position indicator on the timeline using the TC track.
Bug Number: MCCET-4837. AMA Management database folders accrued unnecessary entries and became large enough to cause slow performance in Media Composer.
Bug Number: MCCET-4996. In some instances, exporting a sequence with mixed frame rate media as an MP4 or MOV file resulted in an "Exception: PMM_SYNC_FAILURE" error.
Bug Number: MCCET-5066. Source Browser did not consistently ingest media from P2 cards.
Bug Number: MCCET-5219. Using ScriptSync with Modern Standard Arabic (MSA) resulted in an “Error syncing… The file could not be opened” message. The corresponding AvidLanguagePacks installer was “Arabic (Modern Standard)”.
Bug Number: MCCET-5214. Audio was out of phase when using “Proxy Preferred” instead of “High- Resolution Only” playback.
Bug Number: MCCET-4179. Match Frame did not work properly after applying a dissolve between two clips and a Motion Effect or “Fit to Fill” was used.
Bug Number: MCCET-4835. Depending on source media, Gang button was unexpectedly enabled when using Match Frame in MultiCamera mode.
Bug Number: MCCET-5135. MultiCamera edits containing a muted group clip with a Temporal (motion) Adapter created a blank clip after selecting “Commit Multicam Edits”.
Fixed in Media Composer v2023.12 Bug Number: MCCET-4692. Modifying values in a bin’s Auxiliary TC1 column caused an “Assertion failed:
FALSE File” error if the clips were at non-standard frame rates, such as 15 fps.
Bug Number: MCCET-4639. Muting clips with an alpha layer on the timeline produced an “Assertion failed: parent File” or “Exception: FATAL_ERROR” error.
Bug Number: MCCET-4209. Media Composer crashed when using Segment Mode to drag nested clips between tracks in a Matte Key.
Bug Number: MCCET-4671. In some instances, loading Avid Media Files with an alpha channel caused an "Alpha RLE compression not recognized" error.
Bug Number: MCCET-5023. Some bin column data was not displayed properly when used with the Timecode Burn-in effect on Group clips.
Bug Number: MCCET-5223. Consolidating non-compliant XAVC MP4 media files, which lacked certain metadata and contained variable bitrate video, resulted in an "Assertion failed: false File" error followed by an "Exception: FATAL_ERROR".
Bug Number: MCCET-5176. Applying an AudioSuite Gain effect to a 29.97 fps clip in a 59.94 fps project resulted in a render error.
Bug Number: MCCET-5184. Gamma slider in the Color Correction effect did not allow for smaller changes in its parameter values while holding down the Shift key and dragging or scrolling.
Bug Number: MCCET-5170. Inconsistencies occurred with docking and floating windows after using the New Bin keyboard command Ctrl+N (Windows) and Cmd+N (macOS).
Bug Number: MCCET-5252. In some instances, when Sending to Playback with transfer settings set to stereo, the resulting clip would play back as mono.
Bug Number: MCCET-5105. Muted audio clips containing an AudioSuite effect could not be deleted and a copy of the clip would appear at the beginning of the sequence after attempting to delete.
Bug Number: MCCET-5168. Changes to a duplicated sequence were undone if the record monitor was cleared and the sequence was reloaded within a short timeframe.
Bug Number: MCCET-4962. Incorrect clips were selected, regardless of playhead location, when stepping in and out of them while in the Color Workspace.
Bug Number: MCCET-5014. More render files were lost when moving clips on tracks below an ExpertRender clip than in previous versions of Media Composer.
Bug Number: MCCET-3627. Timecode shifted when using the Match Frame feature with 23.976 frame rate media in a 24 frame rate project.
Fixed in Media Composer v2023.12 Bug Number: MCCET-5291. The Find Script command did not work for clips that contained a temporal adapter to match the project frame rate.
Bug Number: MCCET-3491. Using Waveform Analysis or Source Timecode to create an autosynced subclip did not work properly, resulting in clips that would not sync or were out of sync by a frame or more.
Bug Number: MCCET-5308. (Windows) “Multi-Input mode” text was scaled incorrectly in the Audio Suite Effect Dialog user interface.
Bug Number: MCCET-5318. Using Lift or Extract with Digital Audio Scrub enabled caused Media Composer to crash.
Bug Number: MCCET-5292. AMA Mapping error occurred if essence data was unavailable for some tracks.
Bug Number: MCCET-5061. Audio waveforms would not redraw properly if both “Show Marked Waveforms” and “Show Marker Regions” were enabled in the Timeline settings.
Bug Number: MCCET-5333. (MediaCentral | Production Management) Matte Keys with a duration longer than two minutes would not appear as rendered.
Bug Number: MCCET-4215. Opening a clip or sequence containing partially restored MPEG 50 media files caused an "Exception: MXF_DIDMapperSegmented::ReadRange - End Sample Index exceeds on-disk Index Entry Count" error.
Bug Number: MCCET-3909. Media Composer appeared to hang on launch when using a checked-out license with no VPN connection to the license server.
Bug Number: MCCET-3897. (MediaCentral | Production Management) Using Consolidate/Transcode to convert clips before setting the Video Relink Method to "Highest Quality" in the Dynamic Relink Settings window caused the Data Track to link to the original AMA clip of the Avid OP-Atom media files.
Bug Number: MCCET-4806. (MediaCentral | Production Management) Media Composer did not save MultiRez bin columns added with the Bin Column Selection menu.
Bug Number: MCCET-5338. (MediaCentral | Production Management) After using Distributed Processing to perform a Video Mixdown, files were not saved to "Unchecked-in Avid Assets" and could not be immediately deleted without check-in.
Bug Number: MCCET-5351. (macOS) Headphone audio output was inconsistent and sometimes caused an "Exception: CORE_AUDIO_STREAM_ID_ERROR1" error.
Bug Number: MCCET-5272. When using "AMA Export via Distributed Processing", new folders added to "Export Destination" did not appear alphabetically among other folders or with the correct icon until the window was closed and reopened.
Fixed in Media Composer v2023.8.2 Bug Number: MCCET-5031. Japanese text was not properly decoded in the "AMA Export via Distributed Processing" window on systems set to a Japanese locale.
Bug Number: MCCET-5334. “<Error encoding string>" was displayed in the Bus Tab Name column for a Pro Tools Session exported from Media Composer and opened on a system set to a Japanese locale.
Bug Number: MCCET-5368. In some instances, loading and playing Avid OP-Atom media created with Media Composer v2018.x caused an "Assertion failed" error.
Bug Number: MCCET-5390. (MediaCentral | Production Management) After dragging clips from the Access UI to a Media Composer bin, various errors could occur, which caused Media Composer to crash.
Bug Number: MCCET-4952. (macOS) In some instances, audio drop outs, distortion and sync errors occurred without effecting video playback on Apple Silicon systems.
Fixed in Media Composer v2023.8.2 The following have been fixed:
Bug Number: MCCET-5318. Using Lift or Extract with Digital Audio Scrub enabled caused Media Composer to crash.
Fixed in Media Composer v2023.8.1 The following have been fixed:
Bug Number: MCCET-5289. (Windows) When upgrading from a previous version of Media Composer, ScriptSync AI and PhraseFind AI functionality is not available (AvNN Error 275, Connection Refused), requiring users to uninstall and reinstall Media Composer.
Fixed in Media Composer v2023.8 The following have been fixed:
Bug Number: MCCET-5022. Copying and pasting keyframes in the Effects editor did not work for all properties.
Bug Number: MCCET-5038. (MediaCentral | Production Management) Master clips relinked to smaller, consolidated media files and not the full-length clips, which was exhibited by segmented master clips appearing on the Timeline (Source Mode).
Bug Number: MCCET-5050 and MCCET-4859. (MediaCentral | Production Management) Consolidated media files were showing up in multiple locations and linking to the original, non-consolidated media files for master clips and subclips.
Bug Number: MCCET-4984. Depending on the Interface brightness settings selected, Caption Text for the SubCap effect was not visible in the Effect Editor or the Edit Master Caption List dialog box.
Fixed in Media Composer v2023.8 Bug Number: MCCET-4871. Arabic text did not display correctly in the Caption Text box for the SubCap effect.
Bug Number: MCCET-4544. (MediaCentral | Production Management) In some instances, XDCAM clips that were imported and consolidated using Media Composer 2018.12.15 could not be played in more recent versions of Media Composer.
Bug Number: MCCET-5011. (MediaCentral | Production Management) Files that triggered a "Fast Import" operation linked back to an AMA link of the original imported file when loaded for the first time.
Bug Number: MCCET-5053. (Windows) Some system fonts were missing from the list of available fonts in the SubCap effect.
Bug Number: MCCET-4862. (macOS) In some instances, AAF files failed to import on M1 Macs.
Bug Number: MCCET-4809. In some instances, audio for proxy media experienced playback errors, including distorted sound and playback that stopped unexpectedly.
Bug Number: MCCET-5077. Exporting a sequence with H.264 proxy media as an MOV produced corrupted frames.
Bug Number: MCCET-5032. ALE file import caused all bin column names that start with "Vendor" to display incorrectly.
Bug Number: MCCET-4491. (MediaCentral | Production Management) Depending on check-in procedure, End Timecode information for clips created with an Edit While Capture (EWC) workflow could be lost without a warning message.
Bug Number: MCCET-4593. (macOS) RS-422 deck control was lost for Avid Artist | DNxIO if BlackMagic Desktop Video 12.2 or newer was installed on the system.
Bug Number: MCCET-5068. Transfer menu “Send To Playback” option was not available if the Timeline window was selected for users of Media Composer | Ultimate and Media Composer | Enterprise.
Bug Number: MCCET-4825. When working with high frame rate projects, captions created with the SubCap effect and exported from Media Composer included incorrect timecode data.
Bug Number: MCCET-5093. (MediaCentral | Production Management) In some instances, checking out and loading sequences caused Media Composer to crash if Dynamic Relink was enabled.
Bug Number: MCCET-4880. In some instances, artifacts appeared in the Y Waveform monitor, depending on the Timeline Video Quality Menu settings.
Bug Number: MCCET-5084. List of available Target Bins was not refreshed properly in the Audio Punch-In Tool.
Fixed in Media Composer v2023.8 Bug Number: MCCET-4707. (macOS) In some instances, Media Composer experienced intermittent hangs/beachballs on Apple Silicon.
characters to be truncated to 32 characters.
Bug Number: MCCET-4533. Importing SCC files created with Subtitle Edit (third-party application) caused some characters to be displayed twice in Media Composer.
Bug Number: MCCET-5019. Depending on the type of symbols and the amount of space between them, closed captions generated by Telestream (CaptionMaker) appeared with duplicate symbols if imported as part of an AAF file.
Bug Number: MCCET-5116. In some instances, H.264 800Kbps Proxy (HD 1080i) media appeared corrupted in the Source monitor if the Video Quality Menu in the Timeline was set to Full Quality (green) or a Timewarp effect was applied when working with mixed frame rates.
Bug Number: MCCET-4727. In some instances, H.264 800Kbps Proxy (HD 1080i) media appeared corrupted in the Source monitor if the Video Quality Menu in the Timeline was set to Full Quality (green) or a Timewarp effect was applied when working with mixed frame rates.
Bug Number: MCCET-5117. Navigating between markers on a subclip using the “Go to Previous Marker”, “Go to Next Marker”, “Go to Previous Event”, and “Go to Next Event” buttons on the Source monitor caused Media Composer to freeze.
Bug Number: MCCET-5076. In some instances, AAF files included incorrect data if Audio EQ was applied.
Bug Number: MCCET-4158. When prompted to “Update Sequence” for sequences containing Group clips with Timewarp and color correction effects applied, the duplicated sequence created gaps between clips and changed the overall duration.
Bug Number: MCCET-5136. (MediaCentral | Production Management) Sequences took a long time to load if they had associated media on unmounted workspaces.
Bug Number: MCCET-5005. Shift+clicking on markers in the Marker window and performing an operation, such as delete, affected the incorrect markers, if they were filtered using the search field.
Bug Number: MCCET-5009. (macOS) In some instances, media containing alpha channels were incorrectly aligned with the Matte Key effect on Apple Silicon processors (M1 and M2).
Bug Number: MCCET-5119. Noticeable lags were experienced while editing in the timeline if many real- time audio effects were used.
Bug Number: MCCET-4256. When importing files, Media Composer did not recognize some QuickTime media formats, including DNxHD HQ files exported from Adobe Premiere Pro, and presented an "Import Resolution Conflict" message.
Fixed in Media Composer v2023.3.1 Bug Number: MCCET-5051. Bin saves failed and triggered an error message if the bin being saved was located on a read-only NEXIS workspace.
Bug Number: MCCET-5075. Audio waveforms were very slow to draw and would take additional time to redraw if Zoom In or Zoom Out were used.
Bug Number: MCCET-5063. If individual hostnames began with a number, an error message appeared when configuring STP targets in the MC Enterprise Admin Tool on Cloud UX, which indicated that "The server or workgroup name entered is invalid or may not be available on the network".
Bug Number: MCCET-5104. Panning did not work properly for ganged audio channels in the Audio Mixer.
Bug Number: MCCET-5159. Comments did not appear in the bin Text View for a variety of items.
Bug Number: MCCET-5224. The Select Project window displayed incorrect information for Creation Date and Modification Date.
Bug Number: MCCET-4119. When exporting XDCAM MXF OP1a files, macro blocking occurred if "Re- encode for XDCAM bitstream compliance" was selected.
> **Note:** Beginning with v2023.8, the option to “Re-encode for XDCAM bitstream compliance” in the AMA File
Export window is no longer necessary and has been removed.
Fixed in Media Composer v2023.3.1 The following have been fixed:
Bug Number: MCCET-4862. (macOS) In some instances, AAF files failed to import on Apple Silicon.
Bug Number: MCCET-4593. (macOS) RS-422 deck control was lost for Avid Artist | DNxIO if BlackMagic Desktop Video 12.2 or newer was installed on the system.
Bug Number: MCCET-5093. (MediaCentral | Production Management) In some instances, checking out and loading sequences caused Media Composer to crash if Dynamic Relink was enabled.
Bug Number: MCCET-4707. (macOS) In some instances, Media Composer experienced intermittent hangs/beachballs on Apple Silicon.
Fixed in Media Composer v2023.3 The following have been fixed:
Bug Number: MCCET-4850. Opening another sequence while in the Color Correction workspace caused the Edit workspace to load and altered the layout of the original Color Correction workspace.
Bug Number: MCCET-4507. When switching between working and target settings for Dynamic Relink in the Timeline, the Source Browser window turned black and did not refresh properly until clicked.
Fixed in Media Composer v2023.3 Bug Number: MCCET-4843. Floating bins changed position and size each time a project was closed and reopened.
Bug Number: MCCET-4569. Color Correction panel disappeared when scrubbing in the Timeline with the Color Correction workspace activated and “Clicking the TC Track or Ruler Disables Smart Tools” option enabled in the Edit tab of the Timeline Settings window.
Bug Number: MCCET-4512. "Assertion failed" TimeWarp error caused Production Management check-ins to fail when the Neat Video plug-in was installed.
Bug Number: MCCET-4720. Keyboard shortcuts for parameter values in the Effect Editor did not work as expected after using sliders.
Bug Number: MCCET-4948. In some instances, Media Composer would not relink all partially restored audio files when using Dynamic Relink.
Bug Number: MCCET-4760. (MediaCentral | Production Management) In some instances, logging out of Production Management with media status indicators for Resolution enabled (black "dots" in columns within the Production Management Window) caused the application to hang.
Bug Number: MCCET-4521. (MediaCentral | Production Management) The media status indicator in the Production Management Window, represented by a black dot in the corresponding format column, did not display properly when media was online and available.
Bug Number: MCCET-4960. (macOS) Some user interface elements would disappear from the bottom row of the Markers window when the window or its columns were resized.
Bug Number: MCCET-4738. Media Composer crashed while scanning and rebuilding the database for UME folders containing a large number of MXF OP1a files.
Bug Number: MCCET-4913. (MediaCentral | Production Management) Some audio tracks were offline after using portions of master clip in a sequence and delivering with Production Management Delivery Service.
Bug Number: MCCET-4628. AAF files exported from Media Composer and opened in Pro Tools caused some values to change for fades, clip gain, and other audio parameters.
Bug Number: MCCET-4784. Spanned media did not link properly and would revert to media offline when Dynamic Relink was enabled.
Bug Number: MCCET-4870. Labels were inverted in the surround sound pan controls of the Audio Mixer for tracks panned between the front and rear (f/r) speaker positions. Although the labels were incorrect, pan controls for the Y-axis position of the panner were not affected.
Bug Number: MCCET-4961. (macOS) Media Composer 2021.12.6 would not allow the creation of projects and bins on shared NEXIS storage.
Fixed in Media Composer v2023.3 Bug Number: MCCET-4409. Users were prevented from creating more than 999 bins at the root level of the project folder.
Bug Number: MCCET-4816. Group clips were incorrectly scaled in the Record monitor if a gap existed before the clips in a sequence and the resolution of clips did not match the project settings.
Bug Number: MCCET-4882. MultiGroup clips with audio waveforms enabled caused Media Composer to crash.
Bug Number: MCCET-4915. When performing a Dynamic Relink operation, audio was offline for clips with audio tracks not starting at A1.
Bug Number: MCCET-4957. Adding a Baselight or Magic Bullet Looks effect to a sequence caused "an unrecoverable error has occurred" or "a serious error has occurred" message to appear when relaunching a project with that same sequence already opened.
Bug Number: MCCET-4977. Enabling "Show Target Availability" or “Show Mismatches” for Dynamic Relink caused a decrease in performance while working in the Timeline.
Bug Number: MCCET-4976. The "Override all Bin font sizes" option in User Interface Settings did not work when applied.
Bug Number: MCCET-4587. (MediaCentral | Cloud UX) In some instances, the MediaCentral | Cloud UX panel would not load after logging out and logging back in with a different user.
Bug Number: MCCET-4895. (MediaCentral | Cloud UX) In some instances, the MediaCentral | Cloud UX panel would not load after logging out and logging back in with the same user and a different project.
Bug Number: MCCET-4503. Audio clip gain values were lost and returned to unity gain if the clip was re- rendered, after making an adjustment to any plug-ins that were already applied and rendered.
Bug Number: MCCET-4970. (MediaCentral | Production Management) Ingesting P2 files and creating sequences of clips using third-party MintUpload software caused an "Assertion failed:
*expectedBytesRead" error.
Bug Number: MCCET-4706. Enabling Dynamic Relink caused linked .mov QuickTime files with a Matte Key (DNxHD with alpha) to go offline.
Bug Number: MCCET-4602. Master Caption List was out of order when the SubCap effect was placed on two tracks and some captions were muted.
Bug Number: MCCET-4803. Linking or Importing Apple ProRes 4444 Mov files created with an Arri Alexa Mini caused Media Composer to quit unexpectedly if QuickTime was installed.
Fixed in Media Composer v2023.3 Bug Number: MCCET-4407. Selecting multiple lines of dialog in the Script window and pressing the spacebar (or right-clicking and selecting "play" from the context menu) caused the incorrect line of dialog to play back.
Bug Number: MCCET-4814. (macOS) When loading a subclip in the Script window, an in point was automatically marked at the end of the clip.
Bug Number: MCCET-5029. When using “Transcode on Send to Playback" with a sequence that has Group clips, the Send to Playback would fail.
Bug Number: MCCET-4953. (MediaCentral | Production Management) Audio waveforms for linked clips were very slow to draw, which significantly impacted performance and the ability to work within the interface.
Bug Number: MCCET-4573. Media Composer was slow to launch when using the Floating License backup server.
Bug Number: MCCET-3909. Media Composer appeared to hang on launch when using a checked-out license with no VPN connection to the license server.
Bug Number: MCCET-5027. The Timecode Window, accessed via the Tools menu, would not redraw properly after changing the size of its font, which affected the amount of black space in the window.
Bug Number: MCDEV-17005. Splitter in Effect Palette changed position after a restart.
Bug Number: MCDEV-15381. Highlighted text in the Comment field of the Marker tool was white on white and difficult to read when using dark interface skins.
Bug Number: MCDEV-15832. Track names containing dots caused a triangle to appear on the Track Selector panel.
Bug Number: MCDEV-16738. "Sync Lock All Tracks" button command did not work if Timecode (TC) track was hidden.
Bug Number: MCDEV-17162. The Lock/Unlock Sequence commands, activated by Option+Right-Clicking (macOS) or Alt+Right-Clicking in the Track Control panel, did not lock all tracks and displayed inconsistent messaging.
Bug Number: MCDEV-16680. Fast Menu and Quick Find Field were not always visible in the Markers tool or Timeline Clip Notes windows, until windows were resized to show scrollbar.
Bug Number: MCDEV-15189. Source Browser would not attach as expected to other tools and windows via its tab in the vertical title bar.
Bug Number: MCDEV-17579. Double-clicking on a search result multiple times in the Find window caused the bin containing the clip to eventually float and close.
Fixed in Media Composer v2023.3