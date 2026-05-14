---
product: media-composer
product-area: editing
version: "2022.12"
release-date: 01/12/2022
doc-type: fixes-readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Fixed in Media Composer v2022.12.10 Avid Editing Application ® Composer® ReadMe Fixes for Media v2022.x IMPORTANT: This document provides a cumulative list of fixes for the Media Composer v2022.x releases. To see detailed information on each release, see the individual ReadMe for each release here.
Fixed in Media Composer v2022.12.10 The following have been fixed:
➤ Bug Number: MCCET-4815. (MediaCentral | Production Management) Checking out a partially-rendered matte key clip caused the clip to revert to a previously rendered state, even after those clips had portions of their renders cleared.
➤ Bug Number: MCCET-769. In some instances, pressing the J key multiple times to play a sequence fast in reverse caused an “APanVolConsumer::GetAudioGain()Invalid finalDistanceToNext [0]” error.
➤ Bug Number: MCCET-5094. Resizing the Audio Mixer Tool window caused the height of faders to change after switching the mixer’s monitoring to “Direct, surround tracks in ProTools order”.
➤ Bug Number: MCCET-5502. (macOS) Japanese text was not properly decoded for Columnar, TabbedLists, and XML output formats in the List Tool on macOS systems set to a Japanese locale.
➤ Bug Number: MCCET-5590. Sequences with Titler+ effects in them could cause errors or serious hangs during playback and editing.
➤ Bug Number: MCCET-5559. Switching between multiple Workspaces caused the Digital Cut Tool window to expand vertically.
➤ Bug Number: MCCET-5588. Unable to link or import certain ProRes MOV files on systems without QuickTime installed.
➤ Bug Number: MCCET-4894. In some instances, audible skipping or glitches were encountered when using audio scrub.
Fixed in Media Composer v2022.12.9 ➤ Bug Number: MCCET-5583. Media Composer did not automatically relink to highest quality media when it became available until users opened the Dynamic Relink Settings and clicked Apply.
➤ Bug Number: MCCET-3897. (MediaCentral | Production Management) Using Consolidate/Transcode to convert clips before setting the Video Relink Method to "Highest Quality" in the Dynamic Relink Settings window caused the Data Track to link to the original AMA clip of the Avid OP-Atom media files.
➤ Bug Number: MCCET-5607. (Windows) Media Composer installer created an unexpected “Documents” folder at the root level of the C:\ drive, which contained Pro Tools subfolders.
➤ Bug Number: MCCET-5610. (MediaCentral | Production Management) Media created on a local drive was not displayed in the Media Tool.
➤ Bug Number: MCCET-5580. In some instances, Media Composer produced an "Exception:
Structured Exception" error and crashed after selecting a clip in the Timeline and moving a fader in the Audio Mixer.
➤ Bug Number: MCCET-5609. Media Composer crashed after stopping playback to adjust ganged sliders in the Audio Mixer.
➤ Bug Number: MCCET-5611. Resizing the NRCS Tool panel after loading a MediaCentral | Newsroom Management story caused an "Assertion failed" error.
➤ Bug Number: MCCET-5440. Depending on the order of selections made in Composer settings, some NDI and SRT devices encountered problems with playback of multiple streams of video at 1/4 resolution in MultiCam mode (4-way or 9-way split).
➤ Bug Number: MCCET-5530. (MediaCentral | Production Management) In some instances, updating from MediaCentral | Production Management while the Marker window was open caused Media Composer to issue an exception.
➤ Bug Number: MCCET-5553. Encoding profile may not have saved and reverted to a different codec profile in Media Creation settings after closing a project and restarting the application.
Fixed in Media Composer v2022.12.9 The following have been fixed:
Fixed in Media Composer v2022.12.9 ➤ Bug Number: MCCET-5481. Selecting the “Choose for me” option in the New Project Settings window and clicking “Create” caused an “Incorrect value for width and height” error, even though raster dimensions are determined at a later stage.
➤ Bug Number: MCCET-5130. In some instances, after opening a project stored on a NEXIS workspace, the Project and Bin Container Sidebars were blank, and did not display any bins or folders.
➤ characters produced an error message and would not import.
➤ Bug Number: MCCET-5337. In some instances, Media Composer would not remain activated after relaunch when using a floating license, requiring users to check the “Use License server” box again after restarting.
➤ Bug Number: MCCET-5518. Using Edit mode in the NRCS Tool to save edits containing MOS objects (for example, those created by VizRT Mosart) could cause an assertion error.
➤ Bug Number: MCCET-5131. MOV files that contained audio and video of different lengths could go offline after enabling Dynamic Relink.
➤ Bug Number: MCCET-5538. Custom columns did not appear after importing an ALE file with the “Merge events with known master clips” option enabled in User Settings.
➤ Bug Number: MCCET-5539. In some instances, importing an ALE file containing a mismatch between duration values caused an “Exception: BIN_IMPORT_NO_MATCH” error.
➤ Bug Number: MCCET-5557. Audio in the original masterclip could relink to consolidated media after clips were consolidated with Dynamic Relink enabled.
➤ Bug Number: MCCET-5536 and MCCET-5496. (MediaCentral | Production Management) In some instances, opening a sequence with Dynamic Relink enabled caused Media Composer to become unresponsive.
➤ Bug Number: MCCET-5548. Video in a 50p project became out of sync with audio after a few minutes or more of playback on an external monitor using a DNxIO or DNxIQ interface.
➤ Bug Number: MCCET-5325. Results for the Find Script command included large portions of a clip that spanned multiple script marks.
➤ Bug Number: MCCET-5521. Audio playback was garbled after using digital audio scrub and playing back media using a VM.
Fixed in Media Composer v2022.12.8 ➤ Bug Number: MCCET-4836. In some instances, audio pops occurred while editing remotely with Media Composer using Teradici on a system with NDI and SRT plug-ins installed.
Fixed in Media Composer v2022.12.8 The following have been fixed:
➤ Bug Number: MCCET-4900. Length of clip names was different in a bin's Text View and Frame View, which sometimes caused Media Composer to crash when using Baselight.
➤ Bug Number: MCCET-5197. Text entered for the Custom Column name in a bin was limited to 15 characters.
➤ Bug Number: MCCET-5356. Performing Send to Playback with the “Transcode before sending to playback” option enabled in the Transfer Settings window could result in a message that media was offline. After clicking OK to acknowledge the message, media became online.
➤ Bug Number: MCCET-5364. Depending on the selected font size, text was not scaled properly and appeared outside of the bounding box for items in a bin when zoomed out in Frame View.
➤ Bug Number: MCCET-5370. Some AudioSuite effects could not be previewed and caused Media Composer to hang if an EQ3-7 Band effect was used on linked AVCHD media.
➤ Bug Number: MCCET-5394. (Windows) In some instances, PhraseFind AI and ScriptSync AI services were not fully installed on systems with Java (32-bit) present, which caused errors to occur when using these features in Media Composer.
➤ Bug Number: MCCET-5404. In some instances, proxy media created with Telestream Live Capture and EWC (Edit While Capture) was missing a portion of audio at the end of corresponding video files, until the capture was complete. This has been improved.
➤ Bug Number: MCCET-5407. When exporting SubCap text as an Avid DS Caption File (.txt), an extra space was added to the end of each line of text, which was visible after importing the exported file.
➤ Bug Number: MCCET-5433. Importing an ALE file with a Custom Column containing more than 255 characters may have caused Media Composer to report an error or crash.
➤ Bug Number: MCCET-5449. On certain sequences where an audio mixdown was used, Send to Playback may have resulted in an “Unrendered video effects detected after render” message.
Fixed in Media Composer v2022.12.7 ➤ Bug Number: MCCET-5459. Enabling Digital Audio Scrub and exiting Trim Mode on a system with AJA I/O hardware installed caused error messages that prevented playback and required users to restart Media Composer.
➤ Bug Number: MCCET-5463. Using Digital Audio Scrub on a system with Blackmagic Design I/O hardware installed caused playback issues.
➤ Bug Number: MCCET-5472. Some interface settings were not working properly for projects stored on a NEXIS workspace.
➤ Bug Number: MCCET-5480. New bins would not save properly after using the AutoSequence feature.
Fixed in Media Composer v2022.12.7 The following have been fixed:
➤ Bug Number: MCCET-4215. Opening a clip or sequence containing partially restored MPEG 50 media files caused an "Exception: MXF_DIDMapperSegmented::ReadRange - End Sample Index exceeds on-disk Index Entry Count" error.
➤ Bug Number: MCCET-3897. (MediaCentral | Production Management) Using Consolidate/Transcode to convert clips before setting the Video Relink Method to "Highest Quality" in the Dynamic Relink Settings window caused the Data Track to link to the original AMA clip of the Avid OP-Atom media files.
➤ Bug Number: MCCET-4806. (MediaCentral | Production Management) Media Composer did not save MultiRez bin columns added with the Bin Column Selection menu.
➤ Bug Number: MCCET-5148. (macOS) Enabling or disabling SRT caused a pop-up window asking for the keychain password to recur.
➤ Bug Number: MCCET-5334. “<Error encoding string>" was displayed in the Bus Tab Name column for a Pro Tools Session exported from Media Composer and opened on a system set to a Japanese locale.
➤ Bug Number: MCCET-5363. (macOS) Media Composer failed to launch after an "Assertion failed" error appeared during the "Initializing Quality Manager" stage of the start-up process on systems running macOS Big Sur with MediaCentral | Production Management 22.3 components.
➤ Bug Number: MCCET-5031. Japanese text was not properly decoded in the "AMA Export via Distributed Processing" window on systems set to a Japanese locale.
Fixed in Media Composer v2022.12.6 ➤ Bug Number: MCCET-5071. In some instances, Match Frame did not work properly if the timeline contained clips that differed from the project frame rate.
➤ Bug Number: MCCET-5254. Chinese fonts appeared as "Cannot display name" in the list of available fonts for the SubCap effect.
➤ Bug Number: MCCET-4271. Clips were slow to load if EUCON Controller was enabled.
➤ Bug Number: MCCET-4281. Source Browser could not link to TARGA (.tga) files and displayed a "Can't be Linked" message in the Plug-in column.
➤ Bug Number: MCCET-5329. After applying the 3D Warp effect to a clip, enabling Rotation, and setting its Z-axis to 90 degrees in the Effect Editor, attempting to manually resize the image using the Scale handles in the Composer window caused it to suddenly change size.
➤ Bug Number: MCCET-4952. (macOS) In some instances, audio drop outs, distortion and sync errors occurred without effecting video playback on Apple Silicon systems.
➤ Bug Number: MCCET-5269. (macOS) Closing the Effect Editor caused the Audio Mixer to change its mix mode from Live to Clip.
Fixed in Media Composer v2022.12.6 The following have been fixed:
➤ Bug Number: MCCET-4179. Match Frame did not work properly after applying a dissolve between two clips and a Motion Effect or “Fit to Fill” was used.
➤ Bug Number: MCCET-4835. Depending on source media, Gang button was unexpectedly enabled when using Match Frame in MultiCamera mode.
➤ Bug Number: MCCET-5135. MultiCamera edits containing a muted group clip with a Temporal (motion) Adapter created a blank clip after selecting “Commit Multicam Edits”.
➤ Bug Number: MCCET-4692. Modifying values in a bin’s Auxiliary TC1 column caused an “Assertion failed: FALSE File” error if the clips were at non-standard frame rates, such as 15 fps.
➤ Bug Number: MCCET-5214. Audio was out of phase when using “Proxy Preferred” instead of “High-Resolution Only” playback.
➤ Bug Number: MCCET-4639. Muting clips with an alpha layer on the timeline produced an “Assertion failed: parent File” or “Exception: FATAL_ERROR” error.
Fixed in Media Composer v2022.12.6 ➤ Bug Number: MCCET-4209. Media Composer crashed when using Segment Mode to drag nested clips between tracks in a Matte Key.
➤ Bug Number: MCCET-3491. Using Waveform Analysis or Source Timecode to create an autosynced subclip did not work properly, resulting in clips that would not sync or were out of sync by a frame or more.
➤ Bug Number: MCCET-5219. Using ScriptSync with Modern Standard Arabic (MSA) resulted in an “Error syncing… The file could not be opened” message. The corresponding AvidLanguagePacks installer was “Arabic (Modern Standard)”.
➤ Bug Number: MCCET-5308. (Windows) “Multi-Input mode” text was scaled incorrectly in the Audio Suite Effect Dialog user interface.
➤ Bug Number: MCCET-5318. Using Lift or Extract with Digital Audio Scrub enabled caused Media Composer to crash.
➤ Bug Number: MCCET-5292. AMA Mapping error occurred if essence data was unavailable for some tracks.
➤ Bug Number: MCCET-5066. Source Browser did not consistently ingest media from P2 cards.
➤ Bug Number: MCCET-5061. Audio waveforms would not redraw properly if both “Show Marked Waveforms” and “Show Marker Regions” were enabled in the Timeline settings.
➤ Bug Number: MCCET-5333. (MediaCentral | Production Management) Matte Keys with a duration longer than two minutes would not appear as rendered.
➤ Bug Number: MCDEV-17422. Connecting to iNews using the NRCS tool triggered an installation of Avid Media Composer.
➤ Bug Number: MCCET-5339. Enabling the Play Length Toggle caused Media Composer to crash in v2022.12.5 only.
➤ Bug Number: MCCET-3909. Media Composer appeared to hang on launch when using a checked-out license with no VPN connection to the license server.
➤ Bug Number: MCCET-5356. Performing Send to Playback with the “Transcode before sending to playback” option enabled in the Transfer Settings window could result in a message that media was offline. After clicking OK to acknowledge the message, media became online.
➤ Bug Number: MCCET-5358. In some instances, XDCAM media became offline when using Dynamic Relink in v2022.12.5 only.
Fixed in Media Composer v2022.12.5 Fixed in Media Composer v2022.12.5 The following have been fixed:
➤ Bug Number: MCCET-5166. Depending on network security setup, MediaCentral | Panel for Adobe Premiere Pro would not connect to MediaCentral | Cloud UX.
➤ Bug Number: MCCET-5092. Keyboard shortcuts to step forward or backward while in a bin’s Frame View or Script View did not work with French OS keyboard layouts.
➤ Bug Number: MCCET-5009. (macOS) In some instances, media containing alpha channels were incorrectly aligned with the Matte Key effect on Apple Silicon processors (M1 and M2).
➤ Bug Number: MCCET-5127. Switching quickly to playback of a MultiCam group clip in Nine Split Source view caused the Source viewer to move outside of the Composer window.
➤ Bug Number: MCCET-4671. In some instances, loading Avid Media Files with an alpha channel caused an "Alpha RLE compression not recognized" error.
➤ Bug Number: MCCET-5223. Consolidating non-compliant XAVC MP4 media files, which lacked certain metadata and contained variable bitrate video, resulted in an "Assertion failed:
false File" error followed by an "Exception: FATAL_ERROR".
➤ Bug Number: MCCET-5223. Consolidating non-compliant XAVC MP4 media files, which lacked certain metadata and contained variable bitrate video, resulted in an "Assertion failed:
false File" error followed by an "Exception: FATAL_ERROR".
➤ Bug Number: MCCET-5224. The Select Project window displayed incorrect information for Creation Date and Modification Date.
➤ Bug Number: MCCET-5252. In some instances, when Sending to Playback with transfer settings set to stereo, the resulting clip would play back as mono.
➤ Bug Number: MCCET-5176. Applying an AudioSuite Gain effect to a 29.97 fps clip in a 59.94 fps project resulted in a render error.
➤ Bug Number: MCCET-5245 and MCCET-5247. In some instances, when using Dynamic Relink, partially restored clip’s tracks did not relink properly to their High Rez and Low Rez media.
➤ Bug Number: MCCET-4962. Incorrect clips were selected, regardless of playhead location, when stepping in and out of them while in the Color Workspace.
Fixed in Media Composer v2022.12.5 ➤ Bug Number: MCCET-5186. In some instances, when bins and panels were set to float, new bins were opened underneath other windows.
➤ Bug Number: MCCET-4720. Keyboard shortcuts for parameter values in the Effect Editor did not work as expected after using sliders.
➤ Bug Number: MCCET-5020. Media Composer crashed while playing media from the Script window if the clip had a LUT applied and markers were added prior to playback.
➤ Bug Number: MCCET-5182. Custom "Start TC" values for sequence templates would not appear until multiple attempts were made to create a new sequence using the templates.
➤ Bug Number: MCCET-5184. Gamma slider in the Color Correction effect did not allow for smaller changes in its parameter values while holding down the Shift key and dragging or scrolling.
➤ Bug Number: MCCET-5277. When using Dynamic Relink, partially restored clips with a Start timecode that began before midnight did not relink properly if their timecode rolled over after midnight.
➤ Bug Number: MCCET-5210. Floating bin windows did not retain their size or position after opening and closing them multiple times.
➤ Bug Number: MCCET-5054. While in Effect Mode with the Effect Editor window open, the Effect Editor window remained open after moving the position indicator on the timeline using the TC track.
➤ Bug Number: MCCET-4579. Prunus AAF files imported into a 1080i/59.94 project in Media Composer could not be exported as AAF and returned an "Exception:
AFileMediaDesc::SetAAFProperties() - Unable to set a container type for media descriptor" error.
➤ Bug Number: MCCET-5129. Nugen LM-Correct AudioSuite plugin was shifting audio and not rendering correctly in Media Composer.
➤ Bug Number: MCCET-5264. Dual-roller trim operation did not work as expected for very long master clips with a Stabilize effect applied.
➤ Bug Number: MCCET-4119. When exporting XDCAM MXF OP1a files, macro blocking occurred if "Re-encode for XDCAM bitstream compliance" was selected.
➤ Bug Number: MCCET-5014. More render files were lost when moving clips on tracks below an ExpertRender clip than in previous versions of Media Composer.
Fixed in Media Composer v2022.12.4 ➤ Bug Number: MCCET-5243. Changes to clips in a sequence were reverted after modifying the project format.
➤ Bug Number: MCCET-5168. Changes to a duplicated sequence were undone if the record monitor was cleared and the sequence was reloaded within a short timeframe.
➤ Bug Number: MCCET-5105. Muted audio clips containing an AudioSuite effect could not be deleted and a copy of the clip would appear at the beginning of the sequence after attempting to delete.
➤ Bug Number: MCCET-5002. When using external video I/O devices with Media Composer, LTC would freeze and not match embedded TC until playback was stopped.
➤ Bug Number: MCCET-5023. Some bin column data was not displayed properly when used with the Timecode Burn-in effect on Group clips.
➤ Bug Number: MCCET-5159. Comments did not appear in the bin Text View for a variety of items.
➤ Bug Number: MCCET-4707. (macOS) In some instances, Media Composer experienced intermittent hangs/beachballs on Apple Silicon.
➤ Bug Number: MCCET-3627. Timecode shifted when using the Match Frame feature with 23.976 frame rate media in a 24 frame rate project.
➤ Bug Number: MCCET-5134. Selecting the Undo command after using the Copy to Clipboard feature resulted in an error.
➤ Bug Number: MCCET-5115. (MediaCentral | Production Management) Media Composer did not send all selected clips from one Workgroup to another when attempting to send multiple clips using the Transfer Engine and the Transfer Client.
➤ Bug Number: MCCET-4996. In some instances, exporting a sequence with mixed frame rate media as an MP4 or MOV file resulted in an "Exception: PMM_SYNC_FAILURE" error.
➤ Bug Number: MCCET-4837. AMA Management database folders accrued unnecessary entries and became large enough to cause slow performance in Media Composer.
Fixed in Media Composer v2022.12.4 The following have been fixed:
Fixed in Media Composer v2022.12.4 ➤ Bug Number: MCCET-4880. In some instances, artifacts appeared in the Y Waveform monitor, depending on the Timeline Video Quality Menu settings.
➤ Bug Number: MCCET-5084. List of available Target Bins was not refreshed properly in the Audio Punch-In Tool.
➤ Bug Number: MCCET-5057. Exporting and reimporting a “File_129” EDL caused clip names with over 32 characters to be truncated to 32 characters.
➤ Bug Number: MCCET-5116. In some instances, H.264 800Kbps Proxy (HD 1080i) media appeared corrupted in the Source monitor if the Video Quality Menu in the Timeline was set to Full Quality (green) or a Timewarp effect was applied when working with mixed frame rates.
➤ Bug Number: MCCET-4533. Importing SCC files created with Subtitle Edit (third-party application) caused some characters to be displayed twice in Media Composer.
➤ Bug Number: MCCET-5019. Depending on the type of symbols and the amount of space between them, closed captions generated by Telestream (CaptionMaker) appeared with duplicate symbols if imported as part of an AAF file.
➤ Bug Number: MCCET-4727. In some instances, H.264 800Kbps Proxy (HD 1080i) media appeared corrupted in the Source monitor if the Video Quality Menu in the Timeline was set to Full Quality (green) or a Timewarp effect was applied when working with mixed frame rates.
➤ Bug Number: MCCET-5117. Navigating between markers on a subclip using the “Go to Previous Marker”, “Go to Next Marker”, “Go to Previous Event”, and “Go to Next Event” buttons on the Source monitor caused Media Composer to freeze.
➤ Bug Number: MCCET-4158. When prompted to “Update Sequence” for sequences containing Group clips with Timewarp and color correction effects applied, the duplicated sequence created gaps between clips and changed the overall duration.
➤ Bug Number: MCCET-5136. (MediaCentral | Production Management) Sequences took a long time to load if they had associated media on unmounted workspaces.
➤ Bug Number: MCCET-5023. Some bin column data was not displayed properly when used with the Timecode Burn-in effect on Group clips.
➤ Bug Number: MCCET-5005. Shift+clicking on markers in the Marker window and performing an operation, such as delete, affected the incorrect markers, if they were filtered using the search field.
Fixed in Media Composer v2022.12.3 ➤ Bug Number: MCCET-4707. (macOS) In some instances, Media Composer experienced intermittent hangs/beachballs on Apple Silicon.
Fixed in Media Composer v2022.12.3 The following have been fixed:
➤ Bug Number: MCCET-5012. Markers did not import correctly if using a text file (.txt) with marker names that consisted entirely of numbers or began with a number.
➤ Bug Number: MCCET-3909. Media Composer appeared to hang on launch when using a checked-out license with no VPN connection to the license server.
➤ Bug Number: MCCET-4573. (Windows) Media Composer was slow to launch when using the Floating License backup server.
➤ Bug Number: MCCET-5027. The Timecode Window, accessed via the Tools menu, would not redraw properly after changing the size of its font, which affected the amount of black space in the window.
➤ Bug Number: MCCET-5022. Copying and pasting keyframes in the Effects editor did not work for all properties.
➤ Bug Number: MCCET-5038. (MediaCentral | Production Management) Master clips relinked to smaller, consolidated media files and not the full-length clips, which was exhibited by segmented master clips appearing on the Timeline (Source Mode).
➤ Bug Number: MCCET-5050 and MCCET-4859. (MediaCentral | Production Management) Consolidated media files were showing up in multiple locations and linking to the original, non-consolidated media files for master clips and subclips.
➤ Bug Number: MCCET-4544. (MediaCentral | Production Management) In some instances, XDCAM clips that were imported and consolidated using Media Composer 2018.12.15 could not be played in more recent versions of Media Composer.
➤ Bug Number: MCCET-5011. (MediaCentral | Production Management) Files that triggered a "Fast Import" operation linked back to an AMA link of the original imported file when loaded for the first time.
➤ Bug Number: MCCET-4984. Depending on the Interface brightness settings selected, Caption Text for the SubCap effect was not visible in the Effect Editor or the Edit Master Caption List dialog box.
Fixed in Media Composer v2022.12.3 ➤ Bug Number: MCCET-4871. Arabic text did not display correctly in the Caption Text box for the SubCap effect.
➤ Bug Number: MCCET-4862. (macOS) In some instances, AAF files failed to import on M1 Macs ➤ Bug Number: MCCET-4809. In some instances, audio for proxy media experienced playback errors, including distorted sound and playback that stopped unexpectedly.
➤ Bug Number: MCCET-4603. (MediaCentral | Production Management) When using Dynamic Relink with media that had both PCM and MP2 audio, the Highest Quality option did not always link to the PCM audio.
➤ Bug Number: MCCET-5053. (Windows) Some system fonts were missing from the list of available fonts in the SubCap effect.
➤ Bug Number: MCCET-4491. (MediaCentral | Production Management) Depending on check-in procedure, End Timecode information for clips created with an Edit While Capture (EWC) workflow could be lost without a warning message.
➤ Bug Number: MCCET-5032. ALE file import caused all bin column names that start with "Vendor" to display incorrectly.
➤ Bug Number: MCCET-5051. Bin saves failed and triggered an error message if the bin being saved was located on a read-only NEXIS workspace.
➤ Bug Number: MCCET-5068. Transfer menu “Send To Playback” option was not available if the Timeline window was selected for users of Media Composer | Ultimate and Media Composer | Enterprise.
➤ Bug Number: MCCET-5075. Audio waveforms were very slow to draw and would take additional time to redraw if Zoom In or Zoom Out were used.
➤ Bug Number: MCCET-5093. (MediaCentral | Production Management) In some instances, checking out and loading sequences caused Media Composer to crash if Dynamic Relink was enabled.
➤ Bug Number: MCCET-4593. (macOS) RS-422 deck control was lost for Avid Artist | DNxIO if BlackMagic Desktop Video 12.2 or newer was installed on the system.
Fixed in Media Composer v2022.12.2 Fixed in Media Composer v2022.12.2 The following have been fixed:
➤ Bug Number: MCCET-4987. In some instances, audio tracks became offline if Dynamic Relink was enabled and set to Highest Quality.
➤ Bug Number: MCCET-4873. Source and Record monitors did not update properly while trimming if clips or tracks were muted.
➤ Bug Number: MCCET-4976. The "Override all Bin font sizes" option in User Interface Settings did not work when applied.
➤ Bug Number: MCCET-4587. (MediaCentral | Cloud UX) In some instances, the MediaCentral | Cloud UX panel would not load after logging out and logging back in with a different user.
➤ Bug Number: MCCET-4895. (MediaCentral | Cloud UX) In some instances, the MediaCentral | Cloud UX panel would not load after logging out and logging back in with the same user and a different project.
➤ Bug Number: MCCET-4503. Audio clip gain values were lost and returned to unity gain if the clip was re-rendered, after making an adjustment to any plug-ins that were already applied and rendered.
➤ Bug Number: MCCET-4970. (MediaCentral | Production Management) Ingesting P2 files and creating sequences of clips using third-party MintUpload software caused an "Assertion failed:
*expectedBytesRead" error.
➤ Bug Number: MCCET-4706. Enabling Dynamic Relink caused linked .mov QuickTime files with a Matte Key (DNxHD with alpha) to go offline.
➤ Bug Number: MCCET-4602. Master Caption List was out of order when the SubCap effect was placed on two tracks and some captions were muted.
➤ Bug Number: MCCET-5001. Japanese characters were misinterpreted when exporting a Pro Tools Session file.
➤ Bug Number: MCCET-4803. Linking or Importing Apple ProRes 4444 Mov files created with an Arri Alexa Mini caused Media Composer to quit unexpectedly if QuickTime was installed.
➤ Bug Number: MCCET-4716. Consolidating some ProRes media from a DJI Ronin resulted in an "Assertion failed: sampleDataPtr != NULL" error.
Fixed in Media Composer v2022.12.1 ➤ Bug Number: MCCET-4407. Selecting multiple lines of dialog in the Script window and pressing the spacebar (or right-clicking and selecting "play" from the context menu) caused the incorrect line of dialog to play back.
➤ Bug Number: MCCET-4814. (macOS) When loading a subclip in the Script window, an in point was automatically marked at the end of the clip.
➤ Bug Number: MCCET-4953. (MediaCentral | Production Management) Audio waveforms for linked clips were very slow to draw, which significantly impacted performance and the ability to work within the interface.
➤ Bug Number: MCCET-5029. When using “Transcode on Send to Playback" with a sequence that has Group clips, the Send to Playback would fail.
➤ Bug Number: MCCET-4886. Audio was distorted while scrubbing through the Source/Record monitors and Timeline window on systems using the Teradici PCoIP protocol with Digital Audio Scrub and Fast Scrub enabled.
Fixed in Media Composer v2022.12.1 The following have been fixed:
➤ Bug Number: MCCET-4950. SubCap effect did not support Monotype Mosaic font platforms.
➤ Bug Number: MCCET-4948. In some instances, Media Composer would not relink all partially restored audio files when using Dynamic Relink.
➤ Bug Number: MCCET-4760. (MediaCentral | Production Management) In some instances, logging out of Production Management with media status indicators for Resolution enabled (black "dots" in columns within the Production Management Window) caused the application to hang.
➤ Bug Number: MCCET-4521. (MediaCentral | Production Management) The media status indicator in the Production Management Window, represented by a black dot in the corresponding format column, did not display properly when media was online and available.
➤ Bug Number: MCCET-4960. (macOS) Some user interface elements would disappear from the bottom row of the Markers window when the window or its columns were resized.
➤ Bug Number: MCCET-4409. Users were prevented from creating more than 999 bins at the root level of the project folder.
Fixed in Media Composer v2022.12 ➤ Bug Number: MCCET-4891. Group clips were cropped and stretched in the Source monitor if a gap existed before the clip in a sequence and playback was set to Full Quality (green) or higher.
➤ Bug Number: MCCET-4882. MultiGroup clips with audio waveforms enabled caused Media Composer to crash.
➤ Bug Number: MCCET-4915. When performing a Dynamic Relink operation, audio was offline for clips with audio tracks not starting at A1.
➤ Bug Number: MCCET-4957. Adding a Baselight or Magic Bullet Looks effect to a sequence caused "an unrecoverable error has occurred” or "a serious error has occurred” message to appear when relaunching a project with that same sequence already opened.
➤ Bug Number: MCCET-4958. In some instances, clips that started at 00:00:00:00 would go offline after Media Composer was restarted and Dynamic Relink was enabled.
➤ Bug Number: MCCET-4569. Color Correction panel disappeared when scrubbing in the Timeline with the Color Correction workspace activated and "Clicking the TC Track or Ruler Disables Smart Tools" option enabled in the Edit tab of the Timeline Settings window.
➤ Bug Number: MCCET-4870. Labels were inverted in the surround sound pan controls of the Audio Mixer for tracks panned between the front and rear (f/r) speaker positions. Although the labels were incorrect, pan controls for the Y-axis position of the panner were not affected.
➤ Bug Number: MCCET-4816. Group clips were incorrectly scaled in the Record monitor if a gap existed before the clips in a sequence and the resolution of clips did not match the project settings.
Fixed in Media Composer v2022.12 The following have been fixed:
> **Note:** Dynamic Relink has been improved with this release and includes various fixes to address issues
with Matte Keys and alpha channels. Bug Numbers associated with these fixes include MCCET-4737, MCCET-4699, MCCET-4568, MCCET-4561, MCCET-4616, MCCET-4560, MCCET-4784, MCCET-4829, MCCET-4666, MCCET-4778, MCCET-4467, and MCCET-4605.
➤ Bug Number: MCCET-4433. Audio playback was faster than normal for clips created with Interplay Capture and AirSpeed Multi Stream.
➤ Bug Number: MCCET-4786. Metadata for imported .wav files was interpreted incorrectly, causing a change in track order and appearance of track names.
Fixed in Media Composer v2022.12 ➤ Bug Number: MCCET-4613. In some instances, switching from Live Mix to Clip mode in the Audio mixer caused an "Assertion failed: IsValidPanCoefficientValue (newCoefficient)" error.
➤ Bug Number: MCCET-4635. Adding an effect to a clip with Three Tone, HSL Color Correction applied caused the Color Correction controls to stop working.
➤ Bug Number: MCCET-4809. In some instances, audio for proxy media experienced playback errors, including distorted sound and playback that stopped unexpectedly.
➤ Bug Number: MCCET-4504. Frame thumbnails in the Markers window, for markers on the lower tracks of the Timeline, displayed an image from the topmost track.
➤ Bug Number: MCCET-4826. (macOS) Switching between user profiles with specific strings of Japanese characters in their name was not possible due to an issue with UTF-8 encoding.
➤ Bug Number: MCCET-4641. In some instances, user interface and playback would slow down and stop responding if sequences contained certain effects, such as the Safe Color Limiter.
➤ Bug Number: MCCET-4856. Hybrid Log Gamma" in the Color Space column of the Select Project window was not properly decoded when using Japanese characters.
➤ Bug Number: MCCET-4636. (Windows) Keyboard shortcuts (Ctrl+0) to switch focus between windows in the user interface did not function when an active track in the Audio Mixer tool was selected.
➤ Bug Number: MCCET-4672. Timeline would center around the blue bar (current position indicator) while zooming in and out during playback and did not retain the position selected by user when “Timeline Movement During Play” was set to “Scroll”. Media Composer now retains the position selected by user and the blue bar is centered when playback is stopped.
➤ Bug Number: MCCET-4430. aNested clips that contained offline media appeared colored, as though they were online, even if missing media was located in a nested layer.
➤ Bug Number: MCCET-4858. Switching Audio Punch-in tool from Live mode to Auto mode caused an "Assertion failed: IsValidPanCoefficientValue (newCoefficient)" error.
➤ Bug Number: MCCET-4673. aChecking out sequences was slower for remote Production Management clients with latencies higher than on-premises systems.
➤ Bug Number: MCCET-4828. FrameFlex source adapter effect was automatically added to AVC-Intra 100 and AVC-Intra 50 media created with Airspeed.
Fixed in Media Composer v2022.12 ➤ Bug Number: MCCET-4833. Multiple lines of text in the Comments column did not always display properly in a bin.
➤ Bug Number: MCCET-4892. Highlighted text in a Marker's Comment field turned white and was unreadable after applying a custom highlight color of blue, purple, or yellow.
➤ Bug Number: MCCET-4734. New bin names did not update properly while the Source Browser was open.
➤ Bug Number: MCCET-4774. NDI and SRT options were deselected after restarting Media Composer with Multiplex I/O active.
➤ Bug Number: MCCET-4843. Floating bins changed position and size each time a project was closed and reopened.
➤ Bug Number: MCCET-4770. Mask Margins were visible over the color correction monitors (such as the vectorscope and waveform monitors) in the Composer window.
➤ Bug Number: MCCET-4708. (macOS) When windows were floating in Media Composer and another application was running in the background, switching focus and bringing that application to the front required two mouse clicks.
➤ Bug Number: MCCET-4796. (macOS) Assets in a bin could not be selected after Option + Right-clicking on the Color column and making a selection with the color wheel.
➤ Bug Number: MCCET-4175. In some instances, Arabic fonts did not display properly while using Titler+.
➤ Bug Number: MCCET-4510. (macOS) In some instances, the Titler+ window disappeared when switching between applications.
➤ Bug Number: MCCET-4832. In some instances, bins were very slow to respond when opening and closing, or when displaying, sorting and selecting certain media.
➤ Bug Number: MCCET-4506. After consolidating or transcoding footage with an alpha channel, the clip names for Matte Key effects were not properly decoded when using Japanese characters.
➤ Bug Number: MCCET-4512. "Assertion failed" TimeWarp error caused Production Management check-ins to fail when the Neat Video plug-in was installed.
➤ Bug Number: MCCET-4468. Data Display in the Composer window reported incorrect duration for 1080i/59.94 clips with motion effects.
Fixed in Media Composer v2022.12 ➤ Bug Number: MCCET-4861. In some instances, “MultiframeCombiner.cpp” error occurred when using Trim mode with “Dual Image Play” enabled in Trim Settings.
➤ Bug Number: MCCET-4812. Lower quality, MP2 audio files were used even when Dynamic Relink was set to "Highest Quality" and partial, higher resolution PCM audio files were available.
➤ Bug Number: MCCET-4681. User interface and cursor did not update properly when moving bins, resulting in long wait times and bins that were not moved.
➤ Bug Number: MCCET-4475. In some instances, Media Composer would not relink properly to audio files after partial restore when using Dynamic Relink.
➤ Bug Number: MCCET-4852. Media Composer performed slowly and would sometimes crash when "Show Mismatches" and "Show Target Availability" were enabled for Dynamic Relink.
➤ Bug Number: MCCET-4837. (MediaCentral | Production Management) "Managed AMA Media Folders.xml" and "AMA Metadata folders" increased in size, which impacted performance and caused sequences to load more slowly.
➤ Bug Number: MCCET-4545. Show Target Availability coloring displayed incorrect availability for partially restored media when using Dynamic Relink.
➤ Bug Number: MCCET-4920. (Windows) Unable to resize Batch Import dialog box.
➤ Bug Number: MCDEV-16469. In some instances, the Source Browser window jumps to center of screen when it is clicked on (focused) after launching Media Composer.
➤ Bug Number: MCDEV-17091. Media Composer crashed when “Linked to Name Settings” and “Last Saved State” were both selected in Workspace settings.
➤ Bug Number: MCDEV-17093. Moving clips in the Timeline using keyboard shortcuts caused the Timeline view to horizontally scroll to match position indicator (blue bar) location.
➤ Bug Number: MCDEV-12463. (macOS) Progress bar was moved behind other Media Composer windows if user switched to another application and back again.
➤ Bug Number: MCDEV-16479. Vertical scrolling in a bin was slow while in Frame View.
➤ Bug Number: MCDEV-17154. in a bin with thousands of clips, using “Select All” caused a significant delay before control was returned to user.
Fixed in Media Composer v2022.10 ➤ Bug Number: MCDEV-16342. In most instances, Bin Left Lock was reset to default position after saving, closing, and reopening a bin.
➤ Bug Number: MCDEV-16537. Bins renamed while the Source Browser was open did not appear until Source Browser was closed and reopened.
➤ Bug Number: MCDEV-16346. Edit Master Caption List was difficult to read when using a dark interface.
➤ Bug Number: MCDEV-15886. In some instances, selecting “Set Column for Selected Clips” identifies the wrong column name while the Bin Left Lock was placed over another column.
Fixed in Media Composer v2022.10 The following have been fixed:
➤ Bug Number: MCDEV-15479. Timeline would center around the blue bar (current position indicator) while zooming in and out during playback and did not retain the position selected by user when “Timeline Movement During Play” was set to “Scroll”. Media Composer now retains the position selected by user and the blue bar is centered when playback is stopped.
➤ Bug Number: MCCET-4799. Naming a Custom Preset with Japanese characters resulted in text that was not properly decoded.
➤ Bug Number: MCCET-4233. Titler+ was very slow to render titles in a 1080i/50 sequence, especially when compared to a 1080p/25 sequence.
➤ Bug Number: MCCET-4779. Using Preview in the AudioSuite tool played a portion of the original media beyond the end of the clip as edited into the timeline.
➤ Bug Number: MCCET-4580. When adding markers to an audio track using the Source monitor in a 1080p/24 project, the marker position jumped to a random location in the Timeline. When using different project settings, the current position indicator jumped to a random location after clicking on a marker in the Marker window.
➤ Bug Number: MCDEV-15844. Creating and starting a new project opened the default bin as a floating Bin Container window.
➤ Bug Number: MCDEV-14054. Making changes in the List Tool did not affect the appearance of corresponding settings name.
Fixed in Media Composer v2022.10 ➤ Bug Number: MCDEV-13183. Dragging tabbed bins from the Bin Container window created a floating bin with the Bin Container sidebar.
➤ Bug Number: MCDEV-16494. Media Composer host panel did not retain its maximized state after a project was closed and reopened.
➤ Bug Number: MCCET-4634. When the comments column in the Markers window was too large, entering comments caused text entry to scroll off the screen.
➤ Bug Number: MCCET-4772. Bins without changes were saved to the Attic when closed, causing the Attic to grow larger than necessary.
➤ Bug Number: MCCET-4726. In some instances, the Media Composer splash screen would not show option and license date information.
➤ Bug Number: MCCET-4661. Sequences loaded into the Source Monitor from the Production Management window had their names appended with ".copy.01", if the sequence already existed in an open bin. Media Composer now appends their name with ".AutoCopy.01" (with consecutive numbering) to indicate that this happened automatically.
➤ Bug Number: MCCET-4768. Option to "Skip Existing Transition Effects" was unavailable when using keyboard shortcuts to navigate the Quick Transition dialog box, even though "Apply To All Transitions" was selected.
➤ Bug Number: MCCET-4592. Switching from the Edit workspace to the Effects workspace put Media Composer into Segment mode.
➤ Bug Number: MCCET-4736. File129 output for an EDL did not allocate the correct number of characters and could not parse correctly.
➤ Bug Number: MCCET-4567. Top menu bar was cropped on dual monitors after toggling workspaces.
➤ Bug Number: MCCET-4236. Switching quickly between workspaces linked to custom bin layouts caused Media Composer to crash.
➤ Bug Number: MCCET-4728. Intermittent clicks were heard when playing back audio through a Dante interface and video was played through NDI.
➤ Bug Number: MCCET-4637. Workspace layouts did not restore properly and made docked bins become undocked.
Fixed in Media Composer v2022.10 ➤ Bug Number: MCCET-4687. Selecting "Send to Export" in the Output menu reset some Motion Effect parameters and unrendered the effects.
➤ Bug Number: MCCET-4629. Adding an Audio Track Effect to a track with Group clips on it resulted in the audio in the Group clip not switching or displaying properly.
➤ Bug Number: MCCET-4537. Send to Playback did not work for "AVC Long GOP 50 1080p 50" media.
➤ Bug Number: MCCET-4644. Exporting subclips from a bin or the Source monitor to an MXF OP1a file caused an “invalid trim” error.
➤ Bug Number: MCCET-4771. (Windows) In some instances, bins were very slow to open.
➤ Bug Number: MCCET-4782. Enabling waveforms caused general sluggishness and slower performance when working in bins and sequences.
➤ Bug Number: MCCET-4211. Titler+ created unwanted keyframes when text was deleted from a text box with existing keyframes.
➤ Bug Number: MCCET-3408. (macOS) Title Tool caused Media Composer to crash when saving a title with Full Screen Playback enabled.
➤ Bug Number: MCCET-4540. In some instances, after moving a bin or closing a folder, items above it were automatically selected.
➤ Bug Number: MCCET-4705. (macOS) Right-clicking in Script window caused Bin Fast Menu options to appear.
➤ Bug Number: MCCET-4585. Audio Punch-in did not work properly after Film option was selected during project creation.
➤ Bug Number: MCCET-4516. When live capturing with the Capture Tool, the Extra Field Selection did not populate the corresponding custom column in the bin, but worked when logging only.
➤ Bug Number: MCCET-4184. There is a delay from the time a letter is typed to it being displayed on screen when using Chinese characters in Titler+.
➤ Bug Number: MCCET-4620. D-Verb settings reverted to default values when they were nested with a clip that had Audio EQ applied.
Fixed in Media Composer v2022.7 ➤ Bug Number: MCCET-4674. Media Composer created a floating bin by default for new projects, even when this option was not selected.
➤ Bug Number: MCCET-4658. Export Settings were not retained when using custom presets to export media.
➤ Bug Number: MCCET-4462. Linking AVC-I Class100 1080p50 media was unsuccessful and returned "The media is unsupported" or "ExceptionUNKNOWN horizontal subsampling error" message, depending on the version of Media Composer.
➤ Bug Number: MCCET-4702. (macOS) The Enter key did not always work when entering values in the Audio Mixer tool.
Fixed in Media Composer v2022.7 The following have been fixed:
➤ Bug Number: MCCET-4612. Media Composer Options were not enabled when using a dongle for activation.
➤ Bug Number: MCDEV-16141. (Titler+) Text entry lagged behind keyboard input and sometimes caused a "Not Responding" state.
➤ Bug Number: MCDEV-16503. (Titler+) Avid Titler+ Dashboard disappeared when using a dual monitor setup with a floating Composer window.
➤ Bug Number: MCDEV-16089. (Titler+) Position (X and Y axis) did not align with global coordinate system and was affected by Rotation.
➤ Bug Number: MCDEV-16591. (Titler+) Changes to font size were not retained when switching between Move Mode and Text Mode.
➤ Bug Number: MCDEV-14303. (Titler+) Each Backspace (Delete) entry on an empty text layer was registered as an event, preventing the Undo command from functioning as expected, and sometimes causing text to vanish.
➤ Bug Number: MCDEV-16414. (Titler+) Quitting Media Composer while Avid Titler+ Dashboard and Effect Editor were open caused a Segmentation fault.
➤ Bug Number: MCDEV-15669. (Titler+) Performance was significantly affected when multiple lines of text extended beyond boundaries of the viewer.
Fixed in Media Composer v2022.7 ➤ Bug Number: MCDEV-15220. (Titler+) Clicking in viewer after rendering created an unintended keyframe.
➤ Bug Number: MCDEV-14340. (Titler+) Hebrew text justification was erratic.
➤ Bug Number: MCDEV-16415. (Titler+) Background layers were not displayed properly after restarting Media Composer.
➤ Bug Number: MCDEV-16622. (Titler+) Properties for a new layer (such as opacity) were not set correctly after selecting multiple, existing layers and deleting an instance of Titler+.
➤ Bug Number: MCDEV-13776. (Titler+) Viewer displayed previously rendered results and did not update after changes were made to the effect.
➤ Bug Number: MCCET-4626. “EssentialResourceNotAvailableError" message appeared when starting Media Composer and prevented the application from opening.
➤ Bug Number: MCCET-4648. (macOS) “Project is Locked for Write” message appeared when opening an Avid project located on shared storage that was emulating Avid NEXIS.
➤ Bug Number: MCCET-4600. Users of Media Composer | Enterprise were interrupted with a message about supported versions of the administration server used to create current definitions.
➤ Bug Number: MCCET-4601. Media Composer | Enterprise would not launch properly when logging in with case-sensitive usernames and upper-case letters.
➤ Bug Number: MCCET-4478. Avid NEXIS users experienced significant performance issues when bin indexing and noticed bandwidth irregularities in the Avid NEXIS Management Console.
➤ Bug Number: MCCET-4633. DNxIQ experienced sync issues when starting up.
Note: Format information is not stored persistently in some hardware devices and requires software to apply the necessary settings. As a result, it is important to know what devices may be affected when shutting down or restarting a computer.
➤ Bug Number: MCCET-4640. Removing markers on a clip while the Inspector Tool was open caused Exception errors.
➤ Bug Number: MCCET-4657. In some instances, the "Exception: SETTING CLASS NOT REGISTERED" error message appeared after using the Command Palette to move the Segment Mode (Lift/Overwrite) button.
Fixed in Media Composer v2022.7 ➤ Bug Number: MCCET-4576. Timecode window experienced a display glitch when switching between user profiles.
➤ Bug Number: MCCET-4501. Scrolling behavior was dependent on size of Timeline window and did not work when scrollbar was hidden.
➤ Bug Number: MCCET-4382. In some instances, Dynamic Relink settings reverted to "Most Recent".
➤ Bug Number: MCCET-4490. Creation Date for Clips and Sequences in the Find window were sorted incorrectly when the regional format for the operating system was set to "English (United Kingdom)".
➤ Bug Number: MCCET-3592. Changes made to Color Space for external projects located on Avid NEXIS were not reflected in the "Select Project" window.
➤ Bug Number: MCCET-4557. The ability to set a "Search Data Directory" location for Bin index and PhraseFind index was missing in the Search Settings window.
➤ Bug Number: MCCET-4508. In some instances, switching user profiles in Media Composer brought other apps to the foreground.
➤ Bug Number: MCCET-4371. Vector-based objects were not resizing properly when shift+clicking the direction handle and dragging away from the control point.
➤ Bug Number: MCCET-4056. When applying the Matte Key effect to an Apple ProRes 4444 clip in the Timeline, the fill layer was not preserved.
➤ Bug Number: MCCET-4535. Using Cmd+O to open multiple, selected bins would open previously tabbed bins as floating windows.
➤ Bug Number: MCCET-4548. Moving files to the Trash with either the context menu or the Delete key shortcut caused Media Composer to refresh the project and redraw the bin window. In some instances, this caused the application to not respond, particularly with large projects.
➤ Bug Number: MCCET-4430. Nested clips that contained offline media appeared colored, as though they were online, even if missing media was located in a nested layer.
➤ Bug Number: MCCET-4558. In some instances, Media Composer | Enterprise would not launch due to Avid NEXIS configuration errors, and users were not presented with any warning or informational message.
Fixed in Media Composer v2022.4 ➤ Bug Number: MCCET-4449. When working with MultiCamera sequences, Media Composer performance slowed down and eventually did not respond.
Note: Use the Play Length Toggle feature on MultiCamera sequences to improve performance.
➤ Bug Number: MCCET-4332. In some instances, transcoding of linked clips caused a change in start timecode and duration.
➤ Bug Number: MCCET-4498. Lassoing clips in a bin's Frame View while using a combination of Shift, Control (Windows) and Command (macOS) keys to select or deselect clips did not work properly.
➤ Bug Number: MCCET-4494. Checking in sequences to MediaCentral | Production Management produced thumbnails with "No Head Frame".
➤ Bug Number: MCCET-4577. Saving a new Bin View caused the bin columns to become wider.
➤ Bug Number: MCCET-4551. Default Starting Timecode in the General Settings for a Project were not retained after pressing the Enter or Return key on the keyboard.
➤ Bug Number: MCCET-4457. Transition Manipulation was broken while the Composer window was set to "Show Single Monitor".
Note: Transition Manipulation is no longer allowed when the Composer window is set to "Show Single Monitor".
➤ Bug Number: MCCET-4499. Values typed into the "Adjust Pan / Volume" window were not applied after pressing the Enter or Return key on the keyboard.
➤ Bug Number: MCCET-4437. Set AudioSuite Plugin - In/Out" did not work after using the Undo command in Media Composer.
➤ Bug Number: MCCET-4621. The "Undo-Redo List" in Media Composer did not display entire list of recent actions.
➤ Bug Number: MCCET-4622. Incorrect text was displayed for the title and a checkbox in the "Avid I/O Manager" section of the Media Composer installers for languages other than English.
Fixed in Media Composer v2022.4 The following have been fixed:
Fixed in Media Composer v2022.4 ➤ Bug Number: MCCET-4303. In some instances, when launching Media Composer, the "Avid Media Composer Activation" window appeared, even though Avid Link showed that Media Composer was successfully activated.
➤ Bug Number: MCCET-4160. Media Composer perpetual floating licenses were deactivated after any MC Option was activated.
➤ Bug Number: MCCET-4570. (MediaCentral | Production Management) Playback would fail when sending MXF (OP1A) files to a local disc using the Transfer Engine.
➤ Bug Number: MCCET-4575. Media Composer Definitions created for a group using the Media Composer | Enterprise Admin Tool were not saved or written properly for users.
➤ Bug Number: MCCET-4303. In some instances, when launching Media Composer, the "Avid Media Composer Activation" window appeared, even though Avid Link showed that Media Composer was successfully activated.
➤ Bug Number: MCCET-4160. Media Composer perpetual floating licenses were deactivated after any Media Composer option was activated.
➤ Bug Number: MCCET-4519. In some circumstances you might have received an error when using Color Correction with dupe detection enabled.
➤ Bug Number: MCCET-4465. In some cases Media Composer options would not be seen in Media Composer when Media Composer used Cloud Licensing.
➤ Bug Number: MCCET-4242. When working with some AudioSuite plug-ins, rendering stereo audio was slow in a Production Management/Avid NEXIS environment.
➤ Bug Number: MCCET-4378. (NDI) In some instances, the Media Composer monitor was either behind or ahead of the NDI stream.
➤ Bug Number: MCCET-4442. JKL playback did not work properly when switching workspaces with Calculator tool open.
➤ Bug Number: MCCET-4265. A sequence containing grouped XDCAM 50 clips with FrameFlex did not retain FrameFlex after performing a mixdown.
➤ Bug Number: MCCET-4527. Exporting BXF files caused a crash.
➤ Bug Number: MCCET-4562. In some instances, LTC signals did not parse correctly in Read Audio Timecode.
Fixed in Media Composer v2022.4 ➤ Bug Number: MCCET-4402. With Gang enabled, selecting all Timeline Clip Notes resulted in a hang.
➤ Bug Number: MCCET-4596. When in Bin Frame View, moving clips by lassoing them did not work properly.
➤ Bug Number: MCCET-4485. Insert Export was not working properly.
➤ Bug Number: MCCET-4489. Using keyboard shortcuts to move clips up and down did not activate video tracks.
➤ Bug Number: MCCET-4513. (Production Management) In some instances, you might have experienced a significant slowdown when performing an Edit While Capture.
➤ Bug Number: MCCET-4436. If Dynamic Relink was enabled, an imported audio file might have appeared offline.
➤ Bug Number: MCCET-4481. (Production Management) Clips with the Restrictions did not appear with the red triangle in the Media Composer bin.
➤ Bug Number: MCCET-4479. When moving bins in a project, it can take too long for the bin to respond and in some instances the beachball appears when moving the bin.
➤ Bug Number: MCCET-4395. (ScriptSync) If you added color to a range of script indicators, when you closed and then reopened the script, the indicators were filled even if they were not previously filled.
➤ Bug Number: MCCET-4347. You might have received an Assertion failed error when exporting AAF on a macOS Big Sur system.
➤ Bug Number: MCCET-4367. Audio levels were inconsistent after performing a render and opening and closing a Bin.
➤ Bug Number: MCCET-4364. A single asset in a bin could not be renamed after pressing the main Enter key.
➤ Bug Number: MCCET-4267. Wrong media was displayed if you disabled tracks, performed a render and then enabled tracks.
➤ Bug Number: . MCCET-4497 (macOS) Performing a Select Media Relatives on a sequence crashed the application.
Fixed in Media Composer v2022.4 ➤ Bug Number: MCCET-4335. You could not link P2 folders related to Prunus AAF in Media Composer v2020.12 and later.
➤ Bug Number: MCCET-4399. If you performed an Export as Graphic and NDI was active, you might have received an “AMEResourceManager ReconfigHW_LegendBoB_Capture” error.
➤ Bug Number: MCCET-3854. During export some AAF Sound settings did not save.
➤ Bug Number: MCCET-4360. In some instances, exporting to a P2 device resulted in pixelated and inverted images.
➤ Bug Number: MCCET-4204. You could not configure FastServe/AirSpeed Studio with the Media Composer | Enterprise Admin Tool.
Fixed in Media Composer v2022.4 Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Portions © Copyright 2003-2007 of MOG Solutions.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid Nexis, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:
http://www.avid.com/US/about-avid/legal-notices/trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer Fixes 2021.x (cid:129) Created 7/31/24