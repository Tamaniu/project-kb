---
product: media-composer
product-area: editing
version: "2025.12"
release-date: 01/12/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid Media Composer® ReadMe for Version 2025.12 Avid® recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Refer to the Media Composer page on the Avid Knowledge Base for the most up-to-date documentation, which contains the latest information that might have become available after the initial publication.
This document describes compatibility issues with previous releases, software installation instructions, hardware and software requirements, and summary information on system and memory requirements.
This document also lists hardware and software limitations.
Avid periodically makes software updates available for download on Avid.com at the following location: https://www.avid.com/media-composer/learn-and-support. Please check this site regularly for information on available downloads for your product.
Contents Limitations 14 Before Installing the Editing Application 18 After Installing the Editing Application 18 Notes on Software Licensing 18 Minimum RAM Recommendation 19 Qualified Hardware and Operating Systems 19 Feature Performance 20 Avid Artist I/O Device Compatibility 23 Compatibility Chart 23 Media Composer Compatibility with Audio Devices 24 Setting up the NVIDIA Card 24 Shared Storage Support 25 Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Meaning or Action Convention
> **Note:** A note provides important related information, reminders, recommendations, and
strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
- This symbol indicates a single-step procedure. Multiple arrows in a list indicate that you
perform one of the actions listed.
(Windows), This text indicates that the information applies only to the specified operating system, (Windows only), either Windows or macOS.
(macOS), or (macOS only) Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables. Variables are often enclosed in angled brackets: < >.
Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse Press and hold the first key while you press the last key or perform the mouse action.
action For example, Command+Option+C or Ctrl+drag.
| (pipe character) The pipe character is used in some Avid product names, such as MediaCentral | Production Management. In this document, the pipe is used in product names when they are in headings or at their first use in text.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
2. Check this ReadMe file for the latest information that might have become available after the
documentation was published. To view the online ReadMe, visit the Knowledge Base at:
https://kb.avid.com/articles/en_US/Knowledge/Media-Composer-Documentation.
3. Visit Avid Online Support at https://www.avid.com/support. Online support is available 24 hours
per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Media Composer Notes Media Composer Notes Media Composer v2025.6 and later no longer supports macOS Monterey (v12.x) and earlier.
Starting with v2024.12, Media Composer has limited support for some codecs. Most of the existing media in standard definition formats is supported for decode only, which means that media can be linked, consolidated, and played back, but encode is disabled. Media cannot be transcoded, exported, or imported into these formats. Encode for the following codecs have been removed for both SD and HD formats. Existing media may still be linked, consolidated and played back only:
- JFIF (formats like 2:1, 3:1, 8:1..). Renamed to "Motion-JPEG" once linked.
- IMX (MPEG 30, MPEG 40, MPEG 50)
- Avid 1:1 Uncompressed( Avid 1:1, Avid 1:1 10b)
- AVCI High-res proxy (AVCIBP-BLL2.0, AVCIBP-BLL3.0)
- Avid Meridian
DNxHR and DNxHD codecs are now grouped under a uniform naming system: Avid DNx LB, SQ, HQ, HQX, and 444. Instead of selecting DNxHD SQ or DNxHR SQ based on resolution, you now select Avid DNx SQ, and Media Composer applies the correct encoding for the project.
You can control color depth when exporting DNx media in MOV and MP4 formats. In the Export dialog, use the Color Depth menu to select 8-bit, 10-bit, or 12-bit.
Existing media using DNxHR or DNxHD codecs continues to work without changes.
Starting with v2024.12, Media Composer has limited support for some codecs. Most of the existing media in standard definition formats is supported for decode only, which means that media can be linked, consolidated, and played back, but encode is disabled. Media cannot be transcoded, exported, or imported into these formats. DV/DVCPro codecs that are still supported for encode include the following resolutions only:
DV 25 411-720×480i @ 29.97fps
- DV 25 411 - 720×576i @ 25fps
- DV 25 420 - 720×576i @ 25fps
- DV 50 - 720×480i @ 29.97fps
- DV 50 - 720×576i @25fps
- DVCProHD - 1920×1080i@ 29.97fps
- DVCProHD-1920×1080i @ 25fps
- DVCProHD - 1280×720p @ 59.94fps
- DVCProHD - 1280x720p @ 50fps
Nablet's HDCAM SR plug-in is not natively supported on Apple silicon. Users who need to work with HDCAM SR footage on a Mac computer with Apple silicon should start Media Composer in Rosetta mode and transcode clips for additional processing.
Media Composer Notes It is best practice to always keep Avid Link up to date. To update to the latest version, sign into Avid Link and click Update, if the option is available, or use MyAvid to download a copy of the software (https://my.avid.com).
Transcript Tool feature is available in Media Composer | Enterprise, Media Composer | Ultimate, and standard or perpetual Media Composer licenses with an active PhraseFind AI option. The ScriptSync AI option does not include the Transcript Tool feature, although it does include the ability to manage transcripts of clips in a bin and reference the transcripts for master clips.
A new option, “Limit characters per caption,” has been added to the Transcribe dialog when creating SubCap captions. This setting allows you to specify the maximum number of characters per caption line. Enter a value in the field to control caption length for readability and compliance with broadcast standards.
PhraseFind AI indexes media in the background. Indexing is a resource intensive operation, which may impact the performance of Media Composer. If the impact on editing becomes noticeable, you can pause or stop background indexing by opening the Find window, clicking on the gear icon to access Search Settings, and selecting “Pause All Indexing” or “Stop PhraseFind AI Indexing”.
Media Composer Notes Beginning with the release of Media Composer v2023.8, the import, export and creation of HDV media is no longer supported.
Beginning with the release of Media Composer v2023.8, input (Tape Capture) and output (Digital Cut) using IEEE-1394 (Firewire) devices is no longer supported.
(macOS Only) macOS Catalina and higher does not support 32 bit applications. The legacy Title Tool, Marquee Title Tool and QuickTime legacy codecs are no longer installed when you install Media Composer. Only install legacy codecs if QuickTime is installed on your system. The installer is Media Composer Legacy Components 2021.12.1 Mac. You can get the installer from MyAvid, Link, or the download center.
Match Frame results for the subclip of a Group or MultiGroup clip created in Media Composer v2022.7 and later will load the original subclip of the Group or MultiGroup clip. If using subclips of a Group or MultiGroup clip created in an earlier version of Media Composer, the same Match Frame operation will load the Group or MultiGroup clip.
If you are using an AMD card and certain keyboard shortcuts that require modifier keys are not
- working, such as Ctrl+Shift+M or Ctrl+Shift+G for Multicam editing, then disable the AMD “Use
Hotkeys” setting to fix the issue.
- If you are using an attached hardware I/O device, such as the Avid Artist DNxIQ or Avid Artist DNxIV,
you may need to manually select it and activate it as an output device the first time Media Composer is opened. To do this, right-click on the HW/SW button in the Timeline window, select the hardware device you want to use, and click on the HW/SW button to activate it. Media Composer will preserve this selection the next time you open Media Composer.
- (MCCET-4684) Captions may overlap or merge for imported SCC files if lines of text appear in
rapid succession. To avoid this possibility, clean the caption data by removing all duplicate control codes from the SCC file.
(MCCET-2541) When working with Avid Artist DNxIO or Avid Artist DNxIQ, you should disable the
- Line In recording input (Blackmagic Audio in the Windows OS).
Qualified Operating Systems: For information on qualified operating systems, see "Qualified
- Hardware and Operating Systems" on page 19.
- Dongle Info (macOS Only): The Dongle Sentinel driver installer is no longer automatically installed
when you install the editing application. The driver is now located in the Avid_Utilities folder (/Applications/Utilities/Avid_Utilities/Sentinel_Driver). If you have a dongle, manually install the Media Composer Notes driver from this location. Dongles are NOT supported on Apple Silicon based systems or any macOS system running Monterey or later.
When installing the Sentinel Driver, check your System Preferences and select “Security and Privacy.” You may need to choose to Allow the driver to be accessed.
- Media Composer now includes a dnxmov2mxf executable in the \Program Files\Avid\Avid Media
Composer\SupportingFiles\Utilities folder. This executable allows you to manually convert MOV files with DNX essence with separately stored alpha to an MXF OP1a file with DNX essence and embedded alpha.
The tool is available for Windows, macOS and Linux. To run on Windows, Visual C++ Redistributable for Visual Studio 2015 or Visual C++ Redistributable for Visual Studio 2017 is required.
Run the command from a command prompt on Windows or from terminal on macOS.
DNXMOV2MXF usage is: dnxmov2mxf path_to_mov [path_to_mxf]
- (MCCET-5383) (Windows Only) Send to Playback and XDCAM performance has been improved by
re-implementing the option to "Re-encode for XDCAM bitstream compliance", which was removed in Media Composer v2023.8. By default, this option is selected. If the option is not selected, splicing is used and could result in a non-compliant bitstream. When using Send to Playback, the "Re- encode for XDCAM bitstream compliance" option in Transfer settings must match Media Creation Settings.
In Media Composer 2024.10 (and 2023.12.5), we re-introduced the option to deselect "Re- encode for XDCAM bitstream compliance" on Windows OS.
Since then, we've made significant performance improvements to the re-encoding process to XDCAM. As a result, we are now removing the ability to deselect this option, ensuring consistent compliance with XDCAM bitstream standards across all exports.
Note on NewBlue Titler Starting with v2025.12, NewBlue Titler is no longer included in the Media Composer installer.
The application remains fully supported and continues to work as expected, but it is not bundled
- with the installation package.
If you require NewBlue Titler, download and install it directly from NewBlueFX or use your existing
- installation.
- This change streamlines the Media Composer installer while maintaining full compatibility with
NewBlue Titler.
Notes on Working with SRT For details on working with SRT, search for “Open I/O Support for SRT” in the Help.
Decoded Output Due to the compressed streaming nature of SRT, and the variety of SRT decoding applications and
- devices available, the decoded output may not be in sync with the Media Composer desktop.
Depending on the decoder being used, the output may be up to several seconds out of sync.
Adjusting the buffering settings in the decoder as well as the SRT latency setting can help to improve the delay depending on your network's quality of service.
SRT Quality Bitrates Media Composer Notes The default quality settings for SRT are as follows:
  - Low quality (Long GOP based compression) – 3Mbps for rates 30fps and below, and 6Mbps
for rates above 30fps
  - Medium quality (Long GOP based compression) – 6Mbps for rates 30fps and below, and
12Mbps for rates above 30fps
  - High quality (Intra-frame based compression) – 40Mbps for 1080p/29.97, scales up and
down based on framerate and raster Bitrates will vary, and might exceed the average values, based on the media being sent over SRT.
- Bitrates are scaled based on the frame rate and raster size and may vary in the actual bitstream
based on how efficiently the codec can compress the frames.
- Only 8b quality is supported with SRT. Media Composer will automatically set the I/O to 8b quality
if Media Composer is set to draft or 10b.
Projects and Media Support:
2K/UHD/4K projects will be downconverted to HD formats at the same frame rate. For example, if
- you are working on a UHD 4k 23.976 projects, it will be converted to an HD 23.976p project.
Interlaced formats are not natively supported, but will be converted to progressive format at the
- equivalent frame rate.
- SRT will mix multi-channel audio to stereo audio.
- RGB is not natively supported and will be converted to YUV.
> **Note:** Beginning with v2024.6, the SRT plug-in is supported for all paid Media Composer licenses.
Security Guidelines Avid Media Composer allows you to install an endpoint detection and response solution on your system.
While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://kb.avid.com/articles/en_US/troubleshooting/en239659
> **Note:** Avid Nexis Clients 23.8.2, 23.12 and newer are required to use CrowdStrike v7.0.4 or later. If using
earlier versions of Avid Nexis Clients, they are only supported up to v7.0.3 (macOS and Windows).
Important Notification As of v2025.6, Avid is no longer testing or qualifying the deployment of Media Composer in a virtual environment using any specific vendor. While Avid allows you to deploy Media Composer in a virtual environment, the selection and qualification of the virtualization solution is the responsibility of an individual or team within your own organization.
Media Composer | First Avid Media Composer | First is the free version of Avid Media Composer with a reduced feature set. As a result, only certain features and fixes (including those covered in documentation) are applicable to Media Composer | First.
Fixed in Media Composer v2025.12 Fixed in Media Composer v2025.12 The following have been fixed:
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
Bug Number: MCCET-5456. Dragging a track from within a nested clip to a new track automatically selected the first clip or filler item on the destination track.
Bug Number: MCCET-5918. VBI lines were incorrectly displayed when linking IMX50 media.
Bug Number: MCCET-5964. Exported MXF files from a 1080x1920 timeline were encoded with a 1088x1920 raster when using DNxHR HQX or DNxHR 444 codecs.
Bug Number: MCCET-5703. Switching from the Color workspace to Edit workspace caused the floating Composer window to lose its saved panel layout.
Bug Number: MCCET-5933. Clicking a clip and pressing Cmd/Ctrl+A in quick succession failed to select all items on the first attempt, causing the interface to flash.
Fixed in Media Composer v2025.12 Bug Number: MCCET-5972. Scroll-based shortcuts (Ctrl+Scroll Wheel, Ctrl+Shift+Scroll Wheel) failed to function in Color Correction when the cursor was active in a field box.
Bug Number: MCCET-5127. Playing an asset after rapidly switching to a 9-way multicam split caused the viewer to detach and render outside the source frame.
Bug Number: MCCET-5561. (masOS) When comparing sequences, the List Tool incorrectly diplayed frame counts.
Bug Number: MCCET-5832. Tracking crosshairs floated out of the record monitor into the UI and became inaccessible after applying a saved stabilize template and switching from the Color workspace in Media Composer.
Bug Number: MCCET-5931. (Windows) Media Composer experienced Breakpad crashes related to Qt6Core.dll when performing actions like creating users, removing bin locks, or opening settings while connected to NRCS.
Bug Number: MCCET-5974. Exporting an XML from the List Tool resulted in custom columns and their associated text entries written in the incorrect order.
Bug Number: MCCET-5950. Rolling titles created in the Legacy Title Tool repeatedly played only the first page.
Bug Number: MCCET-5908. Editing FrameFlex effects on group clips resulted in incorrect images being displayed in the Effects Editor.
Bug Number: MCCET-5279. Caching and redraw issues in the Timecode Burn-In Effect resulted in inaccurate timecode display.
Bug Number: MCCET-5698. Symphony color correction tools became unusably slow when Avid Huddle/SRT streaming was enabled.
Bug Number: MCCET-4307. Connection to the FluidMotion vector correction effect editor was lost when switching workspaces.
Bug Number: MCCET-5628. Media Composer crashed when importing ProRes MXF files from the ARRI Alexa 35.
Bug Number: MCCET-6018. Premiere and Resolve keyboard mappings were unavailable when Media Composer was licensed as a Standard version.
Bug Number: MCCET-5838. Timecode navigation failed under specific combinations of sequence settings and Timecode Window configurations.
Bug Number: MCCET-5448. The "Scaling" text in the Record Monitor appeared blurred during 3D Warp adjustments.
Fixed in Media Composer v2025.12 Bug Number: MCCET-5934. (macOS) Font styles did not render correctly in the SubCap effect, causing Bold and Italic to display incorrectly.
Bug Number: MCCET-5820. Attempting to consolidate spanned P2 clips resulted in a 'CM_LABEL_NOT_ UNIQUE' error.
Bug Number: MCCET-5906. Loading Canon XF MPEG-2 35 and Sony XDCAM EX 35 media consolidated to OP-ATOM into the Source monitor resulted in assertion failures and application crashes.
Bug Number: MCCET-5696. Group clips created from subclips with in-points displayed incorrect FrameFlex aspect ratios.
Bug Number: MCCET-5810. Media Composer crashed when attempting to load a second sequence while the first sequence was already active in Play Standby mode.
Bug Number: MCCET-5467. Interlaced frame rates were not supported when exporting SD 4:3 .mov files.
Bug Number: MCCET-6009. Multigroup clips were scaling up unexpectedly during playback in the Source Monitor in DCI 4K Scope projects.
Bug Number: MCCET-5979. When 32-bit WAV files were imported or transcoded into a 50p project, the audio start timecode failed to register correctly.
Bug Number: MCCET-5369. An additional black frame was present at the end of .mov clips linked through UME.
Bug Number: MCCET-6000. In some instances, checking out or importing highly complex AAF sequence files caused Media Composer to become unresponsive.
Bug Number: MCCET-5902. Certain versions of Elasticsearch used by Media Composer resulted in uncontrolled resource consumption and application crashes.
Bug Number: MCCET-6029. Using 10-bit codecs for rolling and crawling titles caused a 'WRONG FORMAT' error in the Classic Title Tool.
Bug Number: MCCET-5374. The Play Length Toggle button did not appear highlighted in the Command Palette.
Bug Number: MCCET-5293. Duplicate yellow trim indicators appeared during ripple trimming when timeline playback transitioned to a second page.
Bug Number: MCCET-4483. Flickering or image corruption occurred during playback and after export on systems equipped with NVIDIA RTX A4000 or A4500 GPUs.
Fixed in Media Composer v2025.12 Bug Number: MCCET-6019. (macOS) Titler+ displayed the Hebrew character Nun (נ) incorrectly as an X instead of the correct glyph.
Bug Number: MCCET-5767. Parameter values appeared on the keyframe graph in the Titler Plus/Effect Editor, which obscured labels or data points.
Bug Number: MCCET-6023. Media Composer caused a memory leak due to repeated access to SMBmapped network drives in domain environments.
Bug Number: MCCET-6010. The Fast Menu disappeared after disabling the Toolbar in Timeline settings in Media Composer.
Bug Number: MCCET-5598. Subcap playback dropped frames and lost real-time performance.
Bug Number: MCCET-6015. Motion Adapters were lost from muted clips in Media Composer after copypasting, reloading the project, or refreshing the timeline.
Bug Number: MCCET-6031. Using 'Create script from clip' on an auto-synced clip resulted in script text being generated multiple times.
Bug Number: MCCET-6026. Media did not load in the Source Monitor on the initial double-click in frame view, particularly after opening a project or bin.
Bug Number: MCCET-5963. Selecting multiple clips in a bin using Ctrl+A caused the system to hang when executed under a specific user profile.
Bug Number: MCCET-5295. The 'Choose for Me' option misidentified 25i and 50i HD/HDTR formats, which led to incorrect auto project settings.
Bug Number: MCCET-6043. Media Composer crashed when nudging clips while the Markers window is docked in the top-left corner of the interface.
Bug Number: MCCET-6074. (MediaCentral | Production Management) AVC-Intra 100 video files created using Media Composer's Video Mixdown or Transcode initially played back correctly, but showed glitches after being checked into and out.
Bug Number: MCCET-6047. MXF files using the AVC-Intra 100 format had glitches at the end after linking and consolidating in newer Media Composer versions.
Bug Number: MCCET-5938. Bin icon showed as closed in the Favorite Bins folder even though the bin was open in the Main Bin container.
Bug Number: MCCET-6077. NRCS crashed on Qt6Core.dll after Media Composer was relaunched and the user attempted the Shift+Click Create Sequence command in the NRCS tool using a previously loaded story.
Fixed in Media Composer v2025.12 Bug Number: MCCET-6049. Media Composer crashed upon opening the Dynamic Relink Window while the user was logged into the NRCS tool.
Bug Number: MCCET-6040. Opening a newly created bin immediately after logging into NRCS caused Media Composer to become unresponsive, displaying an exception error referencing Qt6Core.DLL.
Bug Number: MCCET-6095. (MediaCentral | Production Management) In Media Composer 2024.12.X, the Production Management window hung and caused the editor to crash for certain users when signing in via MediaCentral Cloud UX.
Bug Number: MCCET-5095. Editing a field in the NRCS Tool caused the iNews-linked sequence to be deassociated.
Bug Number: MCCET-5989. Some markers changed color when a sequence was opened in a newer version of Media Composer, despite the sequence not being edited.
Bug Number: MCCET-5893. (macOS) Drag-and-drop from Interplay Access to Media Composer bins was unsuccessful.
Bug Number: MCCET-6075. Interlacing artifacts on DNxHD media imported with “Do not resize smaller images,” caused by fixed field order in FrameFlex for PAL projects.
Bug Number: MCCET-5984. When XDCAM MXF OP1A media files were batch re-imported as MXF OPAtom, the embedded captions (Data track) were not properly imported.
Bug Number: MCCET-5830. An Exception: PMM_MISMATCH_MEDIA_WRONG_FORMAT was encountered when attempting to consolidate sequences containing segments of AVC Long GOP.
Bug Number: MCCET-6037. Segment mode failed to function properly on extended sequences in Media Composer.
Bug Number: MCCET-5697. Media Composer failed to activate licenses from the backup FLS server during failover.
Bug Number: MCCET-6107. Sequences with mixed frame rates (29p and 59i) were incorrectly flagged as mixed resolution in Media Composer, preventing proper Send-To-Playback.
Bug Number: MCCET-6131. Media Composer crashed when switching workspaces with the Project window open.
Bug Number: MCCET-6098. Video output did not consistently update when switching video tracks with playback paused on AJA hardware.
Bug Number: MCCET-5986. Enabling waveforms on long audio files triggered an 'Invalid overreadLimitOffsetInSamples' error and caused Media Composer to freeze.
Fixed in Media Composer v2025.12 Bug Number: MCCET-6066. Files did not check into PAM correctly after Distributed Processing transcoding because check-in occurred before the bin update.
Bug Number: MCCET-6017. (Windows) Media Composer 2024.12.1 crashed on launch with Enterprise roles applied, showing an access violation in Qt6Core.dll.
Bug Number: MCCET-6069. Changing kerning with Alt+Arrows in Titler+ unintentionally added keyframes, causing unwanted animation.
Bug Number: MCCET-6033. Crash occurred during audio transcription in Media Composer 2025.6.
Bug Number: MCCET-4909. Linking UHD media into HD projects could have resulted in a one-pixel gray halo around images in the timeline and exports.
Bug Number: MCCET-6167. (MediaCentral | Production Management) Frequent freezing and sluggish timeline operations occurred when using XAVC-I media during workflows with large sequences.
Bug Number: MCCET-6134. When using XAVC-I media, moving clips in the timeline on large projects was significantly slower than in previous versions.
Limitations Limitations The following are known limitations:
Photoshop PSD files are not supported for AMA linking if QuickTime is not installed.
- Some fonts, by their design, are only available in Bold. On macOS systems, selecting a font does
- not always produce a visual change; try selecting “Bold.”
- If you launch a project and receive an “Enable 3rd Party Emulation” warning, even if you select
Enable in the warning dialog, you should also perform the following: Select File > Settings and click the Project tab. Click General Settings and select “Enable Bin Sharing on 3rd party storage emulating Avid NEXIS/ISIS.” Bug Number: MCCET-5651. In some cases, DNx HQX media created in previous releases of Media Composer may be identified as mixed resolution when used in timelines containing DNx HQX media generated in 25.12 and later. When mixed, the sequence will be flagged during Send to Playback and the operation will be blocked.
Workaround: Mixdown or Transcode the sequence to one resolution before sending to playback.
Bug Number: MCCET-5929. Intel Mac systems might exhibit reduced performance compared to Apple Silicon systems due to framework modernization designed for native Apple Silicon support. Although performance enhancements were introduced in version 2024.12, Intel-based hardware does not benefit from the same level of optimization as Apple Silicon machines.
> **Note:** This performance difference is due to the optimization for Apple Silicon, rather than an issue that can
be addressed through further development. Avid remains committed to supporting Intel Mac systems in current versions of Media Composer.
Bug Number: MCDEV-20219. (macOS) Some users may experience intermittent issues with the UI in Media Composer, which includes delays while working in the Timeline.
Workaround: On macOS, go to System Settings > Desktop & Dock and turn on "Displays have separate Spaces".
Bug Number: MCDEV-20237. Exporting MP2 audio to the AAC format with a sampling rate of 22050 Hz or 44100 Hz results in an error. This can occur when exporting tracks containing MP2 audio to the M4A, MP4, or MOV file formats.
Workaround: Select an option other than 22050 Hz or 44100 Hz from the Sampling Rate menu for the AAC format in the UME File Export window.
Bug Number: MCDEV-20191. Exporting linked MXF OP1a Apple ProRes 4444 XQ clips results in an unwanted Matte Key clip.
Workaround: Choose "Ignore" for Alpha Channel in the Link Options when linking the media.
Bug Number: MCDEV-20234. PNG files containing an alpha channel cannot be imported using the default "Uncompressed" Alpha Encoding option in the Import Settings window.
Workaround: Choose "Run Length Encoded (RLE)" for the Alpha Encoding option in the Import Settings window before importing the media.
Limitations Bug Number: MCDEV-20197. Loading an IMF file results in an "IMF Model:Component not found" error message if the file is located in a folder location that differs from previous exports.
Workaround: Remove all IMF files from the IMF window, click "Explore", and select the most recently exported IMF package.
Bug Number: MCDEV-19156. ARRIRAW media linked with the nablet ARRI plug-in may display an image with corrupted colors. This is a known issue with the nablet partner plug-in (v3.4.0.5526 and v3.4.1.5543), and only occurs with footage produced by ALEXA SXT and ALEXA 65 cameras with 12-bit picture encoding. Other models of ARRI cameras use 12-bit reverse packed (ALEXA Mini) or 13-bit encoding (ALEXA 35), which does not produce this problem.
Workaround: Contact nablet support to receive an older version of the plug-in that uses OpenCL decoding.
Bug Number: MCCET-5281. (Windows) Black frame was randomly inserted in XDCAM 50 mixdowns if "Re- encode for XDCAM bitstream compliance" was unchecked.
Workaround: When performing Video Mixdown to XDCAM, select the "Re-encode for XDCAM bistream compliance" option.
Bug Number: MCDEV-18929. PMM_MISMATCHED_MEDIA and PMM_INSUFFICIENT_MEDIA errors may be encountered when linking to a PTXM file from the Source Browser. These errors can result from the misinterpretation of certain file naming conventions for multichannel audio formats. This is only an issue with files created in versions of Pro Tools earlier than 2024.10.1.
Workaround: Deselect the "Autodetect Broadcast Wave Monophonic Groups" checkbox in the Link Options tab of the Link Settings window. This workaround is only necessary if using AMA Link via the Source Browser, since Import works as expected without errors.
Bug Number: MCDEV-18752. Avid Huddle does not connect properly to Microsoft Teams if a password was entered into the Connection Settings of the Avid I/O Manager SRT window before initiating a session.
Workaround: Clear any existing SRT passwords that were entered prior to initiating a session with Avid Huddle.
Bug Number: MCDEV-18451. Fast Import of QuickTime files does not work on systems without QuickTime installed.
Bug Number: MCDEV-18368. QuickTime movies with alpha channels are always imported as RLE on systems without QuickTime installed.
Bug Number: MCDEV-18307. Clip Text for Timeline Clip Resolutions do not match the original video settings for Matte Keys imported into a 4K, 8K, or 16K project on systems without QuickTime installed.
Bug Number: MCDEV-18384. OMF media cannot be created from QuickTime MOV files imported on a system without QuickTime installed.
Limitations Bug Number: MCDEV-18374. QuickTime movies containing both audio tracks and alpha channel information are always imported as a Matte Key, unless Alpha Channel is set to "Ignore" in the Import Settings window, on systems without QuickTime installed.
Bug Number: MCDEV-18367. "Crop/Pad for DV scan line difference" option in the Import Settings window is not respected when importing media on systems without QuickTime installed.
Bug Number: MCDEV-18411. If clips containing an alpha channel were imported on a system without QuickTime installed, alpha layers in the Matte Key clips will not resize properly.
Workaround: If "Do not resize smaller images" was selected in the Import Settings window before clips were imported, right-click on them in the bin and choose "Source Settings". In the FrameFlex tab, choose "Center Keep Size" from the Reformat dropdown menu and modify the image size before clicking "Apply".
This will add a spatial adapter to the Matte Key and its related sequences, which will require rendering.
Bug Number: MCDEV-18107. (Windows) In some instances, the Media Composer installation processes fails and produces a 1309 error. This can happen if the file path to the installer is very long and contains too many characters. For example, long path names can occur if the installer is within subfolders or executed from the Windows Desktop.
Workaround: Place the Media Composer installer on the root level of your drive and run it from there.
Bug Number: MCCET-4971. Beginning with Media Composer 2022.12, it is not possible to map “Create > New > Sequence” as a keyboard shortcut using “Menu to Button Reassignment” in the Command Palette.
Attempting to map that function results in a “That menu item cannot be assigned” dialog box. This limitation is due to the expanded functionality offered by the new submenu, which is generated dynamically, and does not allow for mapping of functions that are not persistent and might change.
Workaround: Use Cmd+Shift+N (macOS) or Ctrl+Shift+N (Windows) to create a new sequence using the currently active Sequence Template.
Bug Number: MCDEV-17243. Proxy playback fails when Disk Cache is off or set to “0”.
Workaround: Avid NEXIS | EDGE users must set their Disk Cache to 1GB or greater.
Bug Number: MCDEV-16685. When SRT is disabled, hardware format does not revert to project settings, resulting in a mismatch between UHD and HD formats, and causing errors in the Capture tool.
Workaround: Manually change video output to match project settings when Capture tool is opened and SRT is disabled.
Bug Number: MCDEV-15629. Icons for managed Matte Key clips do not change color when their proxies are created and resolved.
Workaround: Check the Proxy Offline column for online/offline status.
Bug Number: MCDEV-17081. In some instances, there is no warning that high resolution media is offline and proxy media will be used for output.
Limitations Bug Number: MCDEV-15413. In some instances, clips that will link and play cannot be made into a proxy if it includes a broken data track.
Bug Number: MCDEV-16119. (Avid Artist DNxIQ) When trying to capture audio, you might receive an “Audio/video is unexpectedly no longer coming into the system” exception error. Note that this only happens the first time, subsequent audio captures are successful.
Workaround: Perform a capture with video first and then turn video off for the subsequent captures.
Bug Number: MCDEV-15843. (Windows 11) In some instances, you cannot drag and drop from the File Explorer to a bin.
Workaround: Use the Media Composer Source Browser to import or link your media.
Bug Number: MCDEV-14845. Avid Media Composer | Enterprise Admin Tool does not restrict NDI when Media Composer is in software only mode.
Bug Number: MCCET-3702. Image Quality issues when adding UHD progressive clips to an HD interlace sequence:
The process Media Composer uses to mix and match video formats in a sequence is to transform the source clip's frame rate and frame layout to meet the project specifications; the motion adapters are added first, then spatial adapters are applied in order to provide expected playback dimensions.
For example, if you have a UHD 50p clip that you want to add to a 1080i Timeline, the UHD clip first gets split into 2 separate fields (UHD format), then each field gets independently resized to 1920x540 in HD.
The export process puts those resized fields back together into a progressive HD frame but does not maintain the clarity of the original progressive frame.
Workaround: If you first transcode the UHD progressive clip to HD progressive and then add the HD clip to the interlace sequence, it forces the resize operation from UHD to HD to be done before the split gets into interlace mode.
Bug Number: MCCET-3788. You might receive a “clip name is a clip in a multi-essence file that cannot be exported using the specified Embedded in AAF setting” when exporting embedded AAFs with OP1a audio clips.
Workaround: Consolidate the OP1a clips to Avid OP-Atom prior to performing the export.
Bug Number: MCDEV-8641. (AMD Graphics) Systems with AMD graphics cards might display tearing when performing Full Screen playback.
Bug Number: SYN-2697. Distributed Processing Transcode and Mixdown jobs into Avid DNx resolution fail if you are using Distributed Processing v2024.10.1 or earlier.
Workaround: Upgrade to Distributed Processing v2025.12.
Before Installing the Editing Application Before Installing the Editing Application Media Composer | Enterprise and Avid Distributed Processing If you are working with Media Composer | Enterprise or Avid Distributed Processing, please refer to the “Installation Prerequisites” section in the Media Composer | Enterprise Administration Guide or Avid Distributed Processing Administration Guide to make sure you have compatible Avid MediaCentral Cloud UX Platform and Avid MediaCentral Cloud UX Feature Pack ISO versions.
Before Installing the Editing Application in a MediaCentral | Production Management Environment Carefully read through the “Avid Editor Compatibility Matrix” guide (found using the following link) before upgrading. It might be necessary to also upgrade the MediaCentral Production Management components on the editing client. https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Buffer Error Message The editing application requires a minimum of 8GB RAM. If you try to install the editing application on a system with less than 8GB RAM, you will receive a buffer error and installation will not proceed.
Download Note To avoid “File Path too long” or a “File cannot be copied” warning while unzipping the downloaded installer, try placing the installer.zip on the root level of your C:\ drive and unzip it from that location.
User Right to Raise Thread Priority (Windows) Note for Domain Administrators: If your editing systems are part of a domain, you must give the user the right to “Increase Scheduling Priority.” This must be done within the Domain Group Policy on the domain controller by giving the right explicitly to the user or giving the right to a group and adding the user to that group. You will not be able to launch as a regular user if this is not set properly.
If you are part of a domain, a Domain Administrator should install and perform the first launch of the editing application.
Install as Administrator You need to first install and launch the editing application as an Administrator. If you are in a Shared Storage environment, mount your workspaces as an Administrator. You may then log off and log back in as a Standard user, if necessary.
After Installing the Editing Application AMA Plug-Ins You cannot install the AMA Plug-ins while the editing application background services are running. Make sure you Stop the services before installing the AMA Plug-Ins. The stop/start background services icon is on the menu bar (macOS) or taskbar (Windows). Once you install the new AMA plug-in, restart the services. See “Starting and Stopping Avid Background Services” in the Help.
Notes on Software Licensing If You Upgrade Your Operating System If you need to upgrade your operating system after you install your Avid editing application, first deactivate your software. After you upgrade your operating system and, if required, reinstall your application, you can reactivate your software. For information on activating and deactivating your software license, see the Installation Guide for Avid Editing Applications.
Minimum RAM Recommendation Minimum RAM Recommendation For this release Avid recommends 16 GB minimum, 32 GB recommended. Some features might require more RAM and specific hardware. See "Feature Performance" on the next page for more info.
Qualified Hardware and Operating Systems Some features are processor-intensive and require specific hardware. See "Feature Performance" on the next page for more info.
For 3rd-Party Open IO hardware qualification refer to the manufacturer’s documentation. See the Open IO Frequently Asked Questions document on the Knowledge Base: http://kb.avid.com/articles/en_ US/faq/en422991 The following lists the qualified Operating Systems. Depending upon your hardware the qualified Operating Systems are:
Windows 11 64-bit 22H2 or later (Professional and Enterprise)
- macOS 13.x to 13.7.x, 14.x to 14.8.x, and 15.x to 15.7.x, 26.x
> **Note:** With the release of macOS 10.13.x and higher, Apple requires manual approval of loading Kernel
Extensions (KEXTs). (For example BlackMagic, and AJA IO devices install Kernel Extensions.) At installation time, you should get a dialog saying that the KEXT was not loaded. You must go the “Security & Privacy” system preference and manually approve the KEXT. Keep the Security & Privacy pane open after you install the I/O device drivers, so that you will see the notice that the driver has been blocked, and press the “allow” button within 30 minutes of installing or the driver will be permanently blocked.
Qualified Workstations and Laptops For a list of qualified Windows and macOS systems, go to the following page: Avid qualified systems.
Select either the Windows or macOS CPU Specifications pdf.
Feature Performance Feature Performance A number of features in this editing application are processor-intensive. As a result, you might experience problems if you are working on an older system. The following chart shows the hardware that Avid has successfully qualified when using these features. For a list of the qualified systems, see "Qualified Workstations and Laptops" on the previous page.
Feature Description Recommended System PhraseFind AI 24GB RAM minimum Avid qualified systems and ScriptSync AI 8K projects 128GB RAM minimum 64+ core Intel Xeon or AMD Threadripper CPU systems with Nvidia or AMD graphics Editing High 64 GB RAM minimum, 96 GB HP Z8 G5, Z6 G5 Resolution, High recommended Lenovo P7, PX Frame Rate Dell 7960 XAVC-I Media
- Single or dual CPU with 56+ virtual
(UHD/4k in cores (with HT) 59.94p) 4 streams of l Nvidia RTX A5000, A5500, A6000, media and color 6000Ada adapters AMD W6800
- HP Z8, Z6
Lenovo P920, P720, P620 Dell 7920, 7820
- Dual gold 6154 or 6254 3.0 GHz 18-
core (72 with HT) AMD WX-7100, WX9100, Pro VII,
- W6800
- Nvidia RTX 5000, 6000, A5000,
A5500, A6000 HP Z6A Lenovo P620, P8 Dell 7865, 7875 or Boxx ApexxT4
- AMD Threadripper CPU with 32 or 64
Cores
- Nvidia RTX A5000, A5500, A6000,
5000Ada, 6000Ada
- AMD W6800, W7900
Storage: 10-40 Gb Ethernet Avid NEXIS 1080p/50 XAVC 32 GB RAM minimum Qualified PC Dual 6 Core or higher Long Baseband Qualified Mac Pro 6 core or higher, 12 core Capture with Hyperthreading Editing High 32GB Min, 64 GB recommended HP Z8 G5, Z6 G5 Feature Performance Feature Description Recommended System Resolution, High Lenovo P7, PX Frame Rate Dell 7960 DNxHR Media
- Single or dual CPU with 56+ virtual
(UHD/4k in cores (with HT) 59.94p)
- Nvidia RTX A5000, A5500, A6000,
6000Ada
- AMD W6800, W7900
HP Z8, Z6 Lenovo P920, P720, P620 Dell 7920, Dell 7820
- Dual gold 6154 or 6254 3.0 GHz 18-
core (72 with HT)
- AMD WX-7100, WX9100, Pro VII,
W6800 Nvidia RTX 5000, 6000, A5000,
- A5500, A6000
HP Z8, Z6 Lenovo P920, P720, P620 Dell 7920, Dell 7820 AMD Threadripper CPU with 32 or 64
- Cores
- Nvidia RTX A5000, A5500, A6000,
5000Ada, 6000Ada
- AMD W6800, W7900
Storage: 10-40 Gb Ethernet Avid NEXIS Editing High 32 GB RAM minimum Qualified PC Dual 6 Core or higher Resolution Media Qualified Mac Pro 6 core or higher, 12 core (Higher than with Hyperthreading 2K+) DMF and 32 GB RAM recommended Qualified PC Dual 6 Core or higher Background Qualified Mac Pro 6 core or higher, 12 core Transcode, with Hyperthreading Background Render Media Composer 32 GB RAM minimum or higher i7 Quad core or higher with Hyperthreading | Cloud recommended depending upon system model.
J2K Capture 16 GB RAM minimum Qualified PC Dual 6 Core or higher Qualified Mac Pro 6 core or higher, 12 core with Hyperthreading HD Long GOP 9- 32 GB RAM recommended Qualified PC Dual 6 Core or higher way MultiCam Feature Performance Feature Description Recommended System with high stream Qualified Mac Pro 6 core or higher, 12 core count sequences with Hyperthreading Storage: 2 x 1 Gb Ethernet or higher Stereoscopic 3D For optimal performance with Qualified PC Dual 6 Core or higher Stereoscopic 3D, use these higher Qualified Mac Pro 6 core or higher, 12 core performance systems. Avid recommends a with Hyperthreading minimum of 32 GB RAM when using full- frame Stereoscopic 3D.
XDCAM HD50 Baseband capture through Open I/O Avid qualified systems Capture HD RGB 4444 HD RGB capture requires a high-end Qualified PC Dual 6 Core or higher Apple ProRes workstation with Open I/O and fast Qualified Mac Pro 6 core or higher, 12 core 4444 storage.
with Hyperthreading DNxHD 4444 Storage: 10Gb Ethernet Avid NEXIS AMA (QuickTime) AMA is a processor intensive operation. Recommendation of qualified systems Lower end platforms may not offer depends on your planned use of this optimum performance. Highly feature. Heavy usage of highly compressed exhibit minimal real-time performance. Core or Dual 8 Core systems) AMA (RED) AMA is a processor intensive operation. Qualified Xeon Workstations Older platforms may not offer optimum performance. You will get better NOTE: RED plug-in uses the Graphics performance with higher-end Processor. Better performance with high workstations. performance graphics cards.
AVCI-Intra AVC-Intra capture with software codecs is 24 core and higher Windows systems only.
Capture supported.
AVCI-Intra AVC-Intra (AVC-I) is a high quality, low 4-Way MultiCam Playback bit-rate HD codec and is very CPU intensive.
Core Systems Four Stream Playback:
Core Systems Avid Artist I/O Device Compatibility Avid Artist I/O Device Compatibility The following table shows the minimum version Media Composer supported with the Avid Artist I/O devices.
You must download the appropriate Avid Artist software from your Avid Master Account.
Device Minimum supported version Media Composer Avid Artist | DNxIO Media Composer v8.4.1 and higher Avid Artist | DNxIQ Media Composerv8.8.3 and higher Avid Artist | DNxIV Media Composer v8.10 and higher Avid Artist | DNxIP Media Composer v2018.8 Avid Artist | DNxID Media Composer v2018.9 Compatibility Chart The following table lists the NVIDIA® and AMD drivers, QuickTime®, Windows Media™, shared storage, Sony® XDCAM™, Panasonic® P2, and Avid Artist Series versions that were qualified with the Avid editing applications. You can also refer to Documentation and version matrix.
For information on third party support (for example, Sorenson, Boris, etc) see the third party’s web site.
Item Versions Comments QuickTime v7.7.9 (Windows) Note: QuickTime v10X does not include QuickTime Pro options.
Support v10.x, (v7.x Note: QuickTime is not supported with Windows 10.
legacy) (macOS) https://kb.avid.com/articles/en_US/How_To/QuickTime-Support- and-Security-on-Windows Avid Interplay See Knowledge IMPORTANT: The Avid Interplay components that get installed on the Support Base article on editing application must be updated to the Avid Interplay version that compatibility. is released with the editing application. These include the Media Indexer, Interplay Access, Interplay Framework, Interplay Transfer Client and ProEncode Client. The Avid Interplay Server components can remain on the previous releases listed as supported. For details, see the “Avid Editing Application Compatibility with Interplay Releases” doc on the Knowledge Base.
NVIDIA Driver v573.73 (All Nvidia See "Setting up the NVIDIA Card" on the next page.
Support GPUs newer than For setting up the driver for stereoscopic, see the NVIDIA setup info in Kepler) the Stereoscopic 3D Workflow Guide.
v474.82 (Kepler This version supports NVIDIA vGPU Software Version 17 for Virtual series GPU) Machines. For more information visit Nvidia.com.
AMD Driver 24.Q4 Note: DO NOT update to 22.Q3 - it does not work with Media Support Composer. Also, 23.Q1.1 and 22.Q2 are known to cause intermittent errors.
Media Composer Compatibility with Audio Devices Item Versions Comments Note: Do not install Adrenaline Edition driver on Radeon Pro GPUs.
For more information visit Amd.com Shared Avid NEXIS See "Shared Storage Support" on the next page.
Storage Support Sony XDCAM v2.13 (XDCAM The VFAM firmware version for PDW-U1 is 2.600.
driver Transfer for The PDW-U2 is 2.810.
macOS) The driver can be downloaded from Sony's website Windows FAM http://esupport.sony.com/.
v2.3.2 and VFAM v5.0.2 Panasonic P2 (macOS) v3.1.7 There is currently no P2 writeback support for macOS clients.
drive (Windows) v2.24 Avid Artist EuControl See the User’s Guide for information on Artist Series Color setup Series software v3.4 information.
(Euphonix) Media Composer Compatibility with Audio Devices For details on compatible audio hardware and software:
Audio Hardware and Software Refer To Control Surfaces Supported Control Surfaces Avid Artist I/O Avid ArtistSeries FAQ Media Composer and ProTools Co-install Co-install information for Media Composer and ProTools Setting up the NVIDIA Card To set up the NVIDIA card, you must make sure you have the correct display driver version (install the display driver if necessary, and set the correct display settings. See the "Compatibility Chart" on the previous page for information on the supported driver(s).
Prior to setting up the NVIDIA card, check to make sure you have the correct display driver version. If you do not have the correct NVIDIA driver, you can install it from the Nvidia website - Nvidia.com.
To check the NVIDIA display driver version:
1. Right-click the Desktop and select NVIDIA Control Panel. You can also open the Windows Control
Panel and double-click the NVIDIA Control Panel icon.
2. Click System Information at the bottom left corner of the NVIDIA Control Panel.
The version number is listed in the Graphics card information section on the ForceWare version line.
Shared Storage Support To install the NVIDIA display driver:
1. Download the applicable Nvidia driver from the Nvidia website - Nvidia.com.
2. Double-click the file for the applicable driver.
3. Follow the on-screen instructions, and then restart your system.
To setup multiple displays:
1. Right-click the Desktop, and select Nvidia Control Panel.
2. In the settings window in the left of the window, click Set up multiple displays.
3. Select or deselect the desired monitors listed.
To set the Driver for Avid Editing Environments:
1. Right-click the Desktop, and select Nvidia Control Panel.
2. Select the Desktop menu selection in the Control Panel menu bar.
3. Enable Desktop > Video Editing Mode.
4. Click Manage 3D Settings.
5. Click the Global Setting tab.
6. Under Global presets, select Base Profile.
7. Scroll to locate the Power Management Mode. Select Prefer maximum performance.
8. Click Apply.
Reboot after installing the Nvidia software even if you are not prompted to do so. Never use the Windows “roll back driver” feature on the Nvidia driver. The driver version must match the rest of the components the Nvidia installer installs.
Shared Storage Support For information on Shared Storage support, see the Avid NEXIS tables in the following document:
http://resources.avid.com/SupportFiles/Attachments/MediaCentral_Compatibility_Matrix.pdf Shared Storage Support