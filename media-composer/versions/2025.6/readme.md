---
product: media-composer
product-area: editing
version: "2025.6"
release-date: 01/6/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid Media Composer® ReadMe for Version 2025.6 Avid® recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Refer to the Media Composer page on the Avid Knowledge Base for the most up-to-date documentation, which contains the latest information that might have become available after the initial publication.
This document describes compatibility issues with previous releases, software installation instructions, hardware and software requirements, and summary information on system and memory requirements.
This document also lists hardware and software limitations.
Avid periodically makes software updates available for download on Avid.com at the following location: https://www.avid.com/media-composer/learn-and-support. Please check this site regularly for information on available downloads for your product.
Contents Limitations 12 Before Installing the Editing Application 16 After Installing the Editing Application 16 Notes on Software Licensing 16 Minimum RAM Recommendation 17 Qualified Hardware and Operating Systems 17 Feature Performance 18 Avid Artist I/O Device Compatibility 21 Compatibility Chart 21 Media Composer Compatibility with Audio Devices 22 Setting up the NVIDIA Card 22 Shared Storage Support 23 Symbols and Conventions Avid documentation uses the following symbols and conventions:
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
Media Composer Notes Media Composer Notes Media Composer v2025.6 does not support macOS Monterey (v12.x) and earlier.
Starting with v2024.12, Media Composer has limited support for some codecs. Most of the existing media in standard definition formats is supported for decode only, which means that media can be linked, consolidated, and played back, but encode is disabled. Media cannot be transcoded, exported, or imported into these formats. Encode for the following codecs have been removed for both SD and HD formats. Existing media may still be linked, consolidated and played back only:
- JFIF (formats like 2:1, 3:1, 8:1..). Renamed to "Motion-JPEG" once linked.
- IMX (MPEG 30, MPEG 40, MPEG 50)
- Avid 1:1 Uncompressed( Avid 1:1, Avid 1:1 10b)
- AVCI High-res proxy (AVCIBP-BLL2.0, AVCIBP-BLL3.0)
- Avid Meridian
Starting with v2024.12, Media Composer has limited support for some codecs. Most of the existing media in standard definition formats is supported for decode only, which means that media can be linked, consolidated, and played back, but encode is disabled. Media cannot be transcoded, exported, or imported into these formats. DV/DVCPro codecs that are still supported for encode include the following resolutions only:
- DV 25 411-720×480i @ 29.97fps
- DV 25 411 - 720×576i @ 25fps
- DV 25 420 - 720×576i @ 25fps
- DV 50 - 720×480i @ 29.97fps
- DV 50 - 720×576i @25fps
- DVCProHD - 1920×1080i@ 29.97fps
- DVCProHD-1920×1080i @ 25fps
- DVCProHD - 1280×720p @ 59.94fps
- DVCProHD - 1280x720p @ 50fps
Nablet's HDCAM SR plug-in is not natively supported on Apple silicon. Users who need to work with HDCAM SR footage on a Mac computer with Apple silicon should start Media Composer in Rosetta mode and transcode clips for additional processing.
It is best practice to always keep Avid Link up to date. To update to the latest version, sign into Avid Link and click Update, if the option is available, or use MyAvid to download a copy of the software (https://my.avid.com).
Transcript Tool feature is available in Media Composer | Enterprise, Media Composer | Ultimate, and standard or perpetual Media Composer licenses with an active PhraseFind AI option. The ScriptSync AI option does not include the Transcript Tool feature, although it does include the ability to manage transcripts of clips in a bin and reference the transcripts for master clips.
Media Composer Notes PhraseFind AI indexes media in the background. Indexing is a resource intensive operation, which may impact the performance of Media Composer. If the impact on editing becomes noticeable, you can pause or stop background indexing by opening the Find window, clicking on the gear icon to access Search Settings, and selecting “Pause All Indexing” or “Stop PhraseFind AI Indexing”.
Beginning with the release of Media Composer v2023.8, the import, export and creation of HDV media is no longer supported.
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
Media Composer Notes Qualified Operating Systems: For information on qualified operating systems, see "Qualified
- Hardware and Operating Systems" on page 17.
- Dongle Info (macOS Only): The Dongle Sentinel driver installer is no longer automatically installed
when you install the editing application. The driver is now located in the Avid_Utilities folder (/Applications/Utilities/Avid_Utilities/Sentinel_Driver). If you have a dongle, manually install the driver from this location. Dongles are NOT supported on Apple Silicon based systems or any macOS system running Monterey or later.
When installing the Sentinel Driver, check your System Preferences and select “Security and Privacy.” You may need to choose to Allow the driver to be accessed.
- Media Composer now includes a dnxmov2mxf executable in the \Program Files\Avid\Avid Media
Composer\SupportingFiles\Utilities folder. This executable allows you to manually convert MOV files with DNX essence with separately stored alpha to an MXF OP1a file with DNX essence and embedded alpha.
The tool is available for Windows, macOS and Linux. To run on Windows, Visual C++ Redistributable for Visual Studio 2015 or Visual C++ Redistributable for Visual Studio 2017 is required.
Run the command from a command prompt on Windows or from terminal on macOS.
DNXMOV2MXF usage is: dnxmov2mxf path_to_mov [path_to_mxf]
- (MCCET-5383) (Windows Only) Send to Playback and XDCAM performance has been improved by
re-implementing the option to "Re-encode for XDCAM bitstream compliance", which was removed in Media Composer v2023.8. By default, this option is selected. If the option is not selected, splicing is used and could result in a non-compliant bitstream. When using Send to Playback, the "Re- encode for XDCAM bitstream compliance" option in Transfer settings must match Media Creation Settings.
Notes on Working with SRT For details on working with SRT, search for “Open I/O Support for SRT” in the Help.
Decoded Output
- Due to the compressed streaming nature of SRT, and the variety of SRT decoding applications and
devices available, the decoded output may not be in sync with the Media Composer desktop.
Depending on the decoder being used, the output may be up to several seconds out of sync.
Adjusting the buffering settings in the decoder as well as the SRT latency setting can help to improve the delay depending on your network's quality of service.
SRT Quality Bitrates
- The default quality settings for SRT are as follows:
  - Low quality (Long GOP based compression) – 3Mbps for rates 30fps and below, and 6Mbps
for rates above 30fps
  - Medium quality (Long GOP based compression) – 6Mbps for rates 30fps and below, and
12Mbps for rates above 30fps
  - High quality (Intra-frame based compression) – 40Mbps for 1080p/29.97, scales up and
down based on framerate and raster
- Bitrates will vary, and might exceed the average values, based on the media being sent over SRT.
Bitrates are scaled based on the frame rate and raster size and may vary in the actual bitstream based on how efficiently the codec can compress the frames.
Only 8b quality is supported with SRT. Media Composer will automatically set the I/O to 8b quality
- if Media Composer is set to draft or 10b.
Projects and Media Support:
Media Composer Notes 2K/UHD/4K projects will be downconverted to HD formats at the same frame rate. For example, if
- you are working on a UHD 4k 23.976 projects, it will be converted to an HD 23.976p project.
- Interlaced formats are not natively supported, but will be converted to progressive format at the
equivalent frame rate.
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
Limitations Limitations The following are known limitations:
Photoshop PSD files are not supported for AMA linking if QuickTime is not installed.
- Some fonts, by their design, are only available in Bold. On macOS systems, selecting a font does
- not always produce a visual change; try selecting “Bold.”
- If you launch a project and receive an “Enable 3rd Party Emulation” warning, even if you select
Enable in the warning dialog, you should also perform the following: Select File > Settings and click the Project tab. Click General Settings and select “Enable Bin Sharing on 3rd party storage emulating Avid NEXIS/ISIS.” Bug Number: MCCET-5929. Intel Mac systems might exhibit reduced performance compared to Apple Silicon systems due to framework modernization designed for native Apple Silicon support. Although performance enhancements were introduced in version 2024.12, Intel-based hardware does not benefit from the same level of optimization as Apple Silicon machines.
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
Bug Number: MCDEV-20197. Loading an IMF file results in an "IMF Model:Component not found" error message if the file is located in a folder location that differs from previous exports.
Workaround: Remove all IMF files from the IMF window, click "Explore", and select the most recently exported IMF package.
Limitations Bug Number: MCDEV-19156. ARRIRAW media linked with the nablet ARRI plug-in may display an image with corrupted colors. This is a known issue with the nablet partner plug-in (v3.4.0.5526 and v3.4.1.5543), and only occurs with footage produced by ALEXA SXT and ALEXA 65 cameras with 12-bit picture encoding. Other models of ARRI cameras use 12-bit reverse packed (ALEXA Mini) or 13-bit encoding (ALEXA 35), which does not produce this problem.
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
Bug Number: MCDEV-18374. QuickTime movies containing both audio tracks and alpha channel information are always imported as a Matte Key, unless Alpha Channel is set to "Ignore" in the Import Settings window, on systems without QuickTime installed.
Bug Number: MCDEV-18367. "Crop/Pad for DV scan line difference" option in the Import Settings window is not respected when importing media on systems without QuickTime installed.
Limitations Bug Number: MCDEV-18411. If clips containing an alpha channel were imported on a system without QuickTime installed, alpha layers in the Matte Key clips will not resize properly.
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
Bug Number: MCDEV-15413. In some instances, clips that will link and play cannot be made into a proxy if it includes a broken data track.
Bug Number: MCDEV-16119. (Avid Artist DNxIQ) When trying to capture audio, you might receive an “Audio/video is unexpectedly no longer coming into the system” exception error. Note that this only happens the first time, subsequent audio captures are successful.
Workaround: Perform a capture with video first and then turn video off for the subsequent captures.
Limitations Bug Number: MCDEV-15843. (Windows 11) In some instances, you cannot drag and drop from the File Explorer to a bin.
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
Windows 10 64-bit 22H2 or later (Professional and Enterprise)
- Windows 11 64-bit 22H2 or later (Professional and Enterprise)
- macOS 13.x to 13.7.x, 14.x to 14.7.x, and 15.x to 15.5
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
NVIDIA Driver v553.24 (All See "Setting up the NVIDIA Card" on the next page.
Support Nvidia GPUs For setting up the driver for stereoscopic, see the NVIDIA setup info in newer than the Stereoscopic 3D Workflow Guide.
Kepler) This version supports NVIDIA vGPU Software Version 17 for Virtual v474.82 (Kepler Machines. For more information visit Nvidia.com.
series GPU) AMD Driver 24.Q4 Note: DO NOT update to 22.Q3 - it does not work with Media Support Composer. Also, 23.Q1.1 and 22.Q2 are known to cause intermittent errors.
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