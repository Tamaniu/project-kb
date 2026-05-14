---
product: media-composer
product-area: editing
version: "2024.6"
release-date: 01/06/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application ® Composer® ReadMe for Media v2024.6 IMPORTANT: Avid periodically makes software updates available for download on Avid.com at the following location:www.avid.com/us/support/downloads. Please check the above site regularly for information on available downloads for your product.
Avid® recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Important: Search the Avid Knowledge Base for the most up-to-date ReadMe file, which contains the latest information that might have become available after the documentation was published.
This document describes compatibility issues with previous releases, software installation instructions, hardware and software requirements, and summary information on system and memory requirements. This document also lists hardware and software limitations.
Symbols and Conventions Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action
> **Note:** A note provides important related information, reminders, recommendations, and
strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
w A warning describes an action that could cause you physical harm. Follow the guidelines in this document or on the unit itself when handling electrical equipment.
> **Note:** A user tip provides a helpful hint that can aid users in getting the most from their
system.
> **Note:** A shortcut shows the user keyboard or mouse shortcuts for a procedure or
command.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
This symbol indicates a single-step procedure. Multiple arrows in a list indicate that you perform one of the actions listed.
(Windows), (Windows This text indicates that the information applies only to the specified operating only), (macOS), or (macOS system, either Windows or macOS.
only) Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables.
Courier Bold font identifies text that you type.
Courier Bold font Ctrl+key or mouse action Press and hold the first key while you press the last key or perform the mouse action. For example, Command+Option+C or Ctrl+drag.
| (pipe character) The pipe character is used in some Avid product names, such as MediaCentral | Production Management. In this document, the pipe is used in product names when they are in headings or at their first use in text.
If You Need Help If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is
especially important to check each step of your workflow.
2. Check this ReadMe file for the latest information that might have become available after the
documentation was published. Also check online for the most up-to-date ReadMe because the online version is updated whenever new information becomes available. To view the online ReadMe, select ReadMe from the Help menu, or visit the Knowledge Base at http://www.avid.com/readme.
3. Check the documentation that came with your Avid application or your hardware for
maintenance or hardware-related issues. In addition to the printed documentation supplied with your editing application, the documentation is supplied in PDF format when you install the application. Topics that you print from the Help have limited page layout and formatting features. If you want to print a higher quality version of Help information, Avid recommends that you print all or part of the PDF version of the appropriate Avid manual included in the Online Library for your editing application. To access the Online Library, select Help > Online Library from within your Avid editing application.
hours per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Media Composer Notes It is best practice to always keep Avid Link up to date. To update to the latest version, sign into Avid Link and click Update, if the option is available, or use MyAvid to download a copy of the software (https://my.avid.com).
Transcript Tool feature is available in Media Composer | Enterprise, Media Composer | Ultimate, and standard or perpetual Media Composer licenses with an active PhraseFind AI option. The ScriptSync AI option does not include the Transcript Tool feature, although it does include the ability to manage transcripts of clips in a bin and reference the transcripts for master clips.
PhraseFind AI indexes media in the background. Indexing is a resource intensive operation, which may impact the performance of Media Composer. If the impact on editing becomes noticeable, you can pause or stop background indexing by opening the Find window, clicking on the gear icon to access Search Settings, and selecting “Pause All Indexing” or “Stop PhraseFind AI Indexing”.
If You Need Help Beginning with the release of Media Composer v2023.8, the import, export and creation of HDV media is no longer supported.
Beginning with the release of Media Composer v2023.8, input (Tape Capture) and output (Digital Cut) using IEEE-1394 (Firewire) devices is no longer supported.
(macOS Only) macOS Catalina and higher does not support 32 bit applications. The legacy Title Tool, Marquee Title Tool and QuickTime legacy codecs are no longer installed when you install Media Composer. Only install legacy codecs if QuickTime is installed on your system. The installer is Media Composer Legacy Components 2021.12.1 Mac. You can get the installer from MyAvid, Link, or the download center.
(macOS Only) macOS Catalina and higher does not support DMF (Dynamic Media Folders).
Match Frame results for the subclip of a Group or MultiGroup clip created in Media Composer v2022.7 and later will load the original subclip of the Group or MultiGroup clip.
If using subclips of a Group or MultiGroup clip created in an earlier version of Media Composer, the same Match Frame operation will load the Group or MultiGroup clip.
(cid:129) If you are using an AMD card and certain keyboard shortcuts that require modifier keys are not working, such as Ctrl+Shift+M or Ctrl+Shift+G for Multicam editing, then disable the AMD “Use Hotkeys” setting to fix the issue.
(cid:129) If you are using an attached hardware I/O device, such as the Avid Artist DNxIQ or Avid Artist DNxIV, you may need to manually select it and activate it as an output device the first time Media Composer is opened. To do this, right-click on the HW/SW button in the Timeline window, select the hardware device you want to use, and click on the HW/SW button to activate it. Media Composer will preserve this selection the next time you open Media Composer.
If You Need Help (cid:129) (MCCET-4684) Captions may overlap or merge for imported SCC files if lines of text appear in rapid succession. To avoid this possibility, clean the caption data by removing all duplicate control codes from the SCC file.
(cid:129) (MCCET-2541) When working with Avid Artist DNxIO or Avid Artist DNxIQ, you should disable the Line In recording input (Blackmagic Audio in the Windows OS).
(cid:129) Avid Artist DNxIO, Avid Artist DNxIQ and Avid Arist DNxID: If you are using Avid Artist DNxIO, Avid Artist DNxIQ, Avid Artist DNxID, or a Blackmagic Design video device, you MUST update to Desktop Video software version v12.8.1 or v12.9. If you are using Avid Artist DNxIV and Avid Artist DNxIP please update to AJA software v17.0.1 or later.
(cid:129) Qualified Operating Systems: For information on qualified operating systems, see Qualified Hardware and Operating Systems.
(cid:129) Dongle Info (macOS Only): The Dongle Sentinel driver installer is no longer automatically installed when you install the editing application. The driver is now located in the Avid_Utilities folder (/Applications/Utilities/Avid_Utilities/Sentinel_Driver). If you have a dongle, manually install the driver from this location. Dongles are NOT supported on macOS M1 systems or any macOS system running Monterey or later.
When installing the Sentinel Driver, check your System Preferences and select “Security and Privacy.” You may need to choose to Allow the driver to be accessed.
(cid:129) Media Composer now includes a dnxmov2mxf executable in the \Program Files\Avid\Avid Media Composer\SupportingFiles\Utilities folder. This executable allows you to manually convert MOV files with DNX essence with separately stored alpha to an MXF OP1a file with DNX essence and embedded alpha.
The tool is available for Windows, macOS and Linux. To run on Windows, Visual C++ Redistributable for Visual Studio 2015 or Visual C++ Redistributable for Visual Studio 2017 is required.
Run the command from a command prompt on Windows or from terminal on macOS.
DNXMOV2MXF usage is:
dnxmov2mxf path_to_mov [path_to_mxf] Notes on Working with SRT For details on working with SRT, search for “Open I/O Support for SRT” in the Help.
If You Need Help Decoded Output (cid:129) Due to the compressed streaming nature of SRT, and the variety of SRT decoding applications and devices available, the decoded output may not be in sync with the Media Composer desktop. Depending on the decoder being used, the output may be up to several seconds out of sync. Adjusting the buffering settings in the decoder as well as the SRT latency setting can help to improve the delay depending on your network's quality of service.
SRT Quality Bitrates (cid:129) The default quality settings for SRT are as follows:
Low quality (Long GOP based compression) – 3Mbps for rates 30fps and below, and 6Mbps for rates above 30fps Medium quality (Long GOP based compression) – 6Mbps for rates 30fps and below, and 12Mbps for rates above 30fps High quality (Intra-frame based compression) – 40Mbps for 1080p/29.97, scales up and down based on framerate and raster (cid:129) Bitrates will vary, and might exceed the average values, based on the media being sent over SRT. Bitrates are scaled based on the frame rate and raster size and may vary in the actual bitstream based on how efficiently the codec can compress the frames.
(cid:129) Only 8b quality is supported with SRT. Media Composer will automatically set the I/O to 8b quality if Media Composer is set to draft or 10b.
Projects and Media Support:
(cid:129) 2K/UHD/4K projects will be downconverted to HD formats at the same frame rate. For example, if you are working on a UHD 4k 23.976 projects, it will be converted to an HD 23.976p project.
(cid:129) Interlaced formats are not natively supported, but will be converted to progressive format at the equivalent frame rate.
(cid:129) SRT will mix multi-channel audio to stereo audio.
(cid:129) RGB is not natively supported and will be converted to YUV.
> **Note:** Beginning with v2024.6, the SRT plug-in is supported for all paid Media Composer licenses.
Security Guidelines Avid Media Composer allows you to install an endpoint detection and response solution on your system.While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://kb.avid.com/articles/en_US/troubleshooting/en239659 Fixed in Media Composer v2024.6
> **Note:** Nexis Clients 23.8.2 and 23.12 are required to use CrowdStrike v7.0.4 or later. If using earlier
versions of Nexis Clients, they are only supported up to v7.0.3 (macOS and Windows).
Fixed in Media Composer v2024.6 The following have been fixed:
➤ Bug Number: MCCET-5404. In some instances, proxy media created with Telestream Live Capture and EWC (Edit While Capture) was missing a portion of audio at the end of corresponding video files, until the capture was complete. This has been improved.
➤ Bug Number: MCCET-5464. In some instances, using Send to Playback with Transcode on Send to Playback enabled may have transcoded clips that were already in the target resolution.
➤ Bug Number: MCCET-5449. On certain sequences where an audio mixdown was used, Send to Playback may have resulted in an “Unrendered video effects detected after render” message.
➤ Bug Number: MCCET-5370. Some AudioSuite effects could not be previewed and caused Media Composer to hang if an EQ3-7 Band effect was used on linked AVCHD media.
➤ Bug Number: MCCET-5481. Selecting the “Choose for me” option in the New Project Settings window and clicking “Create” caused an “Incorrect value for width and height” error, even though raster dimensions are determined at a later stage.
➤ Bug Number: MCCET-5519. Using the “Send To” option in Media Composer triggered a “This is a Preview Feature” warning.
➤ characters produced an error message and would not import.
➤ Bug Number: MCCET-5518. Using Edit mode in the NRCS Tool to save edits containing MOS objects (for example, those created by VizRT Mosart) could cause an assertion error.
➤ Bug Number: MCCET-5536 and 5496. (MediaCentral | Production Management) In some instances, opening a sequence with Dynamic Relink enabled caused Media Composer to become unresponsive.
➤ Bug Number: MCCET-5131. MOV files that contained audio and video of different lengths could go offline after enabling Dynamic Relink.
Fixed in Media Composer v2024.6 ➤ Bug Number: MCCET-5447. Text in the Media Composer Classic layout was not readable if the User Interface Settings for “Interface brightness” were set to the brightest or second brightness UI colors (two rightmost options).
➤ Bug Number: MCCET-5453. When editing a group clip, the video and audio sometimes became offset for group clips created by consolidating a sequence that only used the video (no audio) track of a group clip.
➤ Bug Number: MCCET-5539. In some instances, importing an ALE file containing a mismatch between duration values caused an “Exception: BIN_IMPORT_NO_MATCH” error.
➤ Bug Number: MCCET-5538. Custom columns did not appear after importing an ALE file with the “Merge events with known master clips” option enabled in User Settings.
➤ Bug Number: MCCET-5130. In some instances, after opening a project stored on a NEXIS workspace, the Project and Bin Container Sidebars were blank, and did not display any bins or folders.
➤ Bug Number: MCCET-5557. Audio in the original masterclip could relink to consolidated media after clips were consolidated with Dynamic Relink enabled.
➤ Bug Number: MCCET-5548. Video in a 50p project became out of sync with audio after a few minutes or more of playback on an external monitor using a DNxIO or DNxIQ interface.
➤ Bug Number: MCCET-5555. Since Media Composer v2021.x, the NRSC Tool window could not be fully collapsed or resized as small as previous versions.
➤ Bug Number: MCCET-5440. Depending on the order of selections made in Composer settings, some NDI and SRT devices encountered problems with playback of multiple streams of video at 1/4 resolution in MultiCam mode (4-way or 9-way split).
➤ Bug Number: MCCET-4815. (MediaCentral | Production Management) Checking out a partially-rendered matte key clip caused the clip to revert to a previously rendered state, even after those clips had portions of their renders cleared.
➤ Bug Number: MCCET-5526. Using timecode to find a frame in the Record monitor did not work properly for linked OP1a files with recordings that began before midnight and continued into the next day.
➤ Bug Number: MCCET-769. In some instances, pressing the J key multiple times to play a sequence fast in reverse caused an “APanVolConsumer::GetAudioGain()Invalid finalDistanceToNext [0]” error.
Limitations ➤ Bug Number: MCCET-5094. Resizing the Audio Mixer Tool window caused the height of faders to change after switching the mixer’s monitoring to “Direct, surround tracks in ProTools order”.
➤ Bug Number: MCCET-5325. Results for the Find Script command included large portions of a clip that spanned multiple script marks.
➤ Bug Number: MCCET-5337. In some instances, Media Composer would not remain activated after relaunch when using a floating license, requiring users to check the “Use License server” box again after restarting.
➤ Bug Number: MCDEV-18779. Linked ProRes 4444 graphics with an alpha channel flickered during playback and caused Media Composer to crash.
➤ Bug Number: MCCET-4894. In some instances, audible skipping or glitches were encountered when using audio scrub.
➤ Bug Number: MCCET-5590. Sequences with Titler+ effects in them could cause errors or serious hangs during playback and editing.
Limitations The following are known limitations (cid:129) Photoshop PSD files are not supported for AMA linking if QuickTime is not installed.
(cid:129) Some fonts, by their design, are available only in Bold. On the macOS system it can happen that selecting a font does not produce any visual changes. Try selecting “Bold.” (cid:129) If you launch a project and receive an “Enable 3rd Party Emulation” warning, even if you select Enable in the warning dialog, you should also perform the following: Select File > Settings and click the Project tab. Click General Settings and select “Enable Bin Sharing on 3rd party storage emulating Avid NEXIS/ISIS.” ➤ Bug Number: MCDEV-18929. PMM_MISMATCHED_MEDIA and PMM_INSUFFICIENT_MEDIA errors may be encountered when linking to a PTXM file from the Source Browser. These errors can result from the misinterpretation of certain file naming conventions for multichannel audio formats.
Workaround: Deselect the "Autodetect Broadcast Wave Monophonic Groups" checkbox in the Link Options tab of the Link Settings window. This workaround is only necessary if using AMA Link via the Source Browser, since Import works as expected without errors.
Limitations ➤ Bug Number: MCDEV-18752. Avid Huddle does not connect properly to Microsoft Teams if a password was entered into the Connection Settings of the Avid I/O Manager SRT window before initiating a session.
Workaround: Clear any existing SRT passwords that were entered prior to initiating a session with Avid Huddle.
➤ Bug Number: MCDEV-18461. Boris FX prevents indexing when using the “Create Script from Clip” feature.
➤ Bug Number: MCDEV-18451. Fast Import of QuickTime files does not work on systems without QuickTime installed.
➤ Bug Number: MCDEV-18368. QuickTime movies with alpha channels are always imported as RLE on systems without QuickTime installed.
➤ Bug Number: MCDEV-18307. Clip Text for Timeline Clip Resolutions do not match the original video settings for Matte Keys imported into a 4K, 8K, or 16K project on systems without QuickTime installed.
➤ Bug Number: MCDEV-18384. OMF media cannot be created from QuickTime MOV files imported on a system without QuickTime installed.
➤ Bug Number: MCDEV-18374. QuickTime movies containing both audio tracks and alpha channel information are always imported as a Matte Key, unless Alpha Channel is set to "Ignore" in the Import Settings window, on systems without QuickTime installed.
➤ Bug Number: MCDEV-18367. "Crop/Pad for DV scan line difference" option in the Import Settings window is not respected when importing media on systems without QuickTime installed.
➤ Bug Number: MCDEV-18411. If clips containing an alpha channel were imported on a system without QuickTime installed, alpha layers in the Matte Key clips will not resize properly.
Workaround: If "Do not resize smaller images" was selected in the Import Settings window before clips were imported, right-click on them in the bin and choose "Source Settings". In the FrameFlex tab, choose "Center Keep Size" from the Reformat dropdown menu and modify the image size before clicking "Apply". This will add a spatial adapter to the Matte Key and its related sequences, which will require rendering.
Limitations ➤ Bug Number: MCDEV-18107. (Windows) In some instances, the Media Composer installation processes fails and produces a 1309 error. This can happen if the file path to the installer is very long and contains too many characters. For example, long path names can occur if the installer is within subfolders or executed from the Windows Desktop.
Workaround: Place the Media Composer installer on the root level of your drive and run it from there.
➤ Bug Number: MCCET-4971. Beginning with Media Composer 2022.12, it is not possible to map “Create > New > Sequence” as a keyboard shortcut using “Menu to Button Reassignment” in the Command Palette. Attempting to map that function results in a “That menu item cannot be assigned” dialog box. This limitation is due to the expanded functionality offered by the new submenu, which is generated dynamically, and does not allow for mapping of functions that are not persistent and might change.
Workaround: Use Cmd+Shift+N (macOS) or Ctrl+Shift+N (Windows) to create a new sequence using the currently active Sequence Template.
➤ Bug Number: MCDEV-17243. Proxy playback fails when Disk Cache is off or set to “0”.
Workaround: Avid NEXIS | EDGE users must set their Disk Cache to 1GB or greater.
➤ Bug Number: MCDEV-16685. When SRT is disabled, hardware format does not revert to project settings, resulting in a mismatch between UHD and HD formats, and causing errors in the Capture tool.
Workaround: Manually change video output to match project settings when Capture tool is opened and SRT is disabled.
➤ Bug Number: MCDEV-15629. Icons for managed Matte Key clips do not change color when their proxies are created and resolved.
Workaround: Check the Proxy Offline column for online/offline status.
➤ Bug Number: MCDEV-17081. In some instances, there is no warning that high resolution media is offline and proxy media will be used for output.
➤ Bug Number: MCDEV-15413. In some instances, clips that will link and play cannot be made into a proxy if it includes a broken data track.
➤ Bug Number: MCDEV-16119. (Avid Artist DNxIQ) When trying to capture audio, you might receive an “Audio/video is unexpectedly no longer coming into the system” exception error. Note that this only happens the first time, subsequent audio captures are successful.
Limitations Workaround: Perform a capture with video first and then turn video off for the subsequent captures.
➤ Bug Number: MCDEV-15843. (Windows 11) In some instances, you cannot drag and drop from the File Explorer to a bin.
Workaround: Use the Media Composer Source Browser to import or link your media.
➤ Bug Number: MCDEV-14845. Avid Media Composer | Enterprise Admin Tool does not restrict NDI when Media Composer is in software only mode.
➤ Bug Number: MCCET-3702. Image Quality issues when adding UHD progressive clips to an HD interlace sequence:
The process Media Composer uses to mix and match video formats in a sequence is to transform the source clip's frame rate and frame layout to meet the project specifications; the motion adapters are added first, then spatial adapters are applied in order to provide expected playback dimensions.
For example, if you have a UHD 50p clip that you want to add to a 1080i Timeline, the UHD clip first gets split into 2 separate fields (UHD format), then each field gets independently resized to 1920x540 in HD. The export process puts those resized fields back together into a progressive HD frame but does not maintain the clarity of the original progressive frame.
Workaround: If you first transcode the UHD progressive clip to HD progressive and then add the HD clip to the interlace sequence, it forces the resize operation from UHD to HD to be done before the split gets into interlace mode.
➤ Bug Number: MCCET-3788. You might receive a “clip name is a clip in a multi-essence file that cannot be exported using the specified Embedded in AAF setting” when exporting embedded AAFs with OP1a audio clips.
Workaround: Consolidate the OP1a clips to Avid OP-Atom prior to performing the export.
➤ Bug Number: MCDEV-12988. (macOS) The AMA Drastic plug-in is not supported with Media Composer v2020.4 ➤ Bug Number: MCDEV-12735. Maestro graphics do not appear correctly in the Timeline if your system uses the Radeon video card.
➤ Bug Number: MCDEV-11481. Promoting a title from the Title Tool application to Avid Titler+ cannot be performed if it includes a motion adapter.
➤ Bug Number: MCDEV-11796. DPX files larger than 10bit might fail to link correctly.
Before Installing the Editing Application Workaround: Go to File > Settings and click the User tab. In the Link Settings, click the Link Options tab and make sure Alpha Channel is set to Ignore.
➤ Bug Number: MCDEV-8641. (AMD Graphics) Systems with AMD graphics cards might display tearing when performing Full Screen playback.
Before Installing the Editing Application (Windows) Overwriting During the Install Process If you are upgrading from version v2020.12.x or later, you can choose to perform an overwrite during the install process. For versions prior to that, you must perform a manual uninstall first.
Media Composer | Enterprise and Media Composer | Distributed Processing If you are working with Media Composer | Enterprise or Media Composer | Distributed Processing, please refer to the “Installation Prerequisites” section in the Media Composer | Enterprise Administration Guide and Media Composer | Distributed Processing Administration Guide to make sure you have compatible Avid MediaCentral Cloud UX Platform ISO and Avid MediaCentral Cloud UX Feature Pack ISO versions.
Before Installing the Editing Application in a MediaCentral | Production Management Environment Carefully read through the “Avid Editor Compatibility Matrix” guide (found using the following link) before upgrading. It might be necessary to also upgrade the MediaCentral Production Management components on the editing client.
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Buffer Error Message The editing application requires a minimum of 8GB RAM. If you try to install the editing application on a system with less than 8GB RAM, you will receive a buffer error and installation will not proceed.
Download Note To avoid “File Path too long” or a “File cannot be copied” warning while unzipping the downloaded installer, try placing the installer.zip on the root level of your C:\ drive and unzip it from that location.
After Installing the Editing Application User Right to Raise Thread Priority (Windows) Note for Domain Administrators: If your editing systems are part of a domain, you must give the user the right to “Increase Scheduling Priority.” This must be done within the Domain Group Policy on the domain controller by giving the right explicitly to the user or giving the right to a group and adding the user to that group. You will not be able to launch as a regular user if this is not set properly.
If you are part of a domain, a Domain Administrator should install and perform the first launch of the editing application.
Install as Administrator You need to first install and launch the editing application as an Administrator. If you are in a Shared Storage environment, mount your workspaces as an Administrator. You may then log off and log back in as a Standard user, if necessary.
After Installing the Editing Application AMA Plug-Ins You cannot install the AMA Plug-ins while the editing application background services are running. Make sure you Stop the services before installing the AMA Plug-Ins. The stop/start background services icon is on the menu bar (macOS) or taskbar (Windows). Once you install the new AMA plug-in, restart the services. See “Starting and Stopping Avid Background Services” in the Help.
Notes on Software Licensing If You Upgrade Your Operating System If you need to upgrade your operating system after you install your Avid editing application, first deactivate your software. After you upgrade your operating system and, if required, reinstall your application, you can reactivate your software. For information on activating and deactivating your software license, see the Installation Guide for Avid Editing Applications.
Minimum RAM Recommendation For this release Avid recommends 16 GB minimum, 32 GB recommended. Some features might require more RAM and specific hardware. See “Feature Performance” on page 16 for more info.
Qualified Hardware and Operating Systems Qualified Hardware and Operating Systems Some features are processor-intensive and require specific hardware. See “Feature Performance” on page 16 for more info.
For 3rd-Party Open IO hardware qualification refer to the manufacturer’s documentation. See the Open IO Frequently Asked Questions document on the Knowledge Base:
http://kb.avid.com/articles/en_US/faq/en422991 The following lists the qualified Operating Systems. Depending upon your hardware the qualified Operating Systems are:
(cid:129) Windows 10 64-bit 22H2 or later (Professional and Enterprise) (cid:129) Windows 11 64-bit 22H2 or later (Professional and Enterprise) (cid:129) macOS 12.x to 12.7.x, 13.x to 13.6.x, and 14.x to 14.5.x
> **Note:** With the release of macOS 10.13.x and higher, Apple requires manual approval of loading
Kernel Extensions (KEXTs). (For example BlackMagic, and AJA IO devices install Kernel Extensions.) At installation time, you should get a dialog saying that the KEXT was not loaded.
You must go the “Security & Privacy” system preference and manually approve the KEXT. Keep the Security & Privacy pane open after you install the I/O device drivers so that you will see the notice that the driver has been blocked and press the “allow” button within 30 minutes of installing or the driver will be permanently blocked.
Qualified Workstations and Laptops For a list of qualified Windows and macOS systems, go to the following page: Avid qualified systems. Select either the Windows or macOS CPU Specifications pdf.
Feature Performance A number of features in this editing application are processor-intensive. As a result, you might experience problems if you are working on an older system. The following chart shows the hardware that Avid has successfully qualified when using these features. For a list of the qualified systems, see Qualified Workstations and Laptops.
Feature Description Recommended System PhraseFind AI and 24GB RAM minimum Avid qualified systems ScriptSync AI Feature Performance Feature Description Recommended System 8K projects 128GB RAM minimum 64+ core Intel Xeon or AMD Threadripper CPU systems with Nvidia or AMD graphics Editing High Resolution, 64 GB RAM minimum, 96 GB HP Z8 G5, Z6 G5 High Frame Rate XAVC-I recommended Lenovo P7, PX Media (UHD/4k in Dell 7960 59.94p) (cid:129) Single or dual CPU with 56+ virtual 4 streams of media and cores (with HT) color adapters (cid:129) Nvidia RTX A5000, A5500, A6000, 6000Ada (cid:129) AMD W6800 HP Z8, Z6 Lenovo P920, P720, P620 Dell 7920, 7820 (cid:129) Dual gold 6154 or 6254 3.0 GHz 18-core (72 with HT) (cid:129) AMD WX-7100, WX9100, Pro VII, W6800 (cid:129) Nvidia RTX 5000, 6000, A5000, A5500, A6000 HP Z6A Lenovo P620, P8 Dell 7865, 7875 or Boxx ApexxT4 (cid:129) AMD Threadripper CPU with 32 or 64 Cores (cid:129) Nvidia RTX A5000, A5500, A6000, 5000Ada, 6000Ada (cid:129) AMD W6800, W7900 Storage: 10-40 Gb Ethernet Avid NEXIS 1080p/50 XAVC Long 32 GB RAM minimum Qualified PC Dual 6 Core or higher Baseband Capture core with Hyperthreading Feature Performance Feature Description Recommended System Editing High Resolution, 32GB Min, 64 GB recommended HP Z8 G5, Z6 G5 High Frame Rate DNxHR Lenovo P7, PX Media (UHD/4k in Dell 7960 59.94p) (cid:129) Single or dual CPU with 56+ virtual cores (with HT) (cid:129) Nvidia RTX A5000, A5500, A6000, 6000Ada (cid:129) AMD W6800, W7900 HP Z8, Z6 Lenovo P920, P720, P620 Dell 7920, Dell 7820 (cid:129) Dual gold 6154 or 6254 3.0 GHz 18-core (72 with HT) (cid:129) AMD WX-7100, WX9100, Pro VII, W6800 (cid:129) Nvidia RTX 5000, 6000, A5000, A5500, A6000 HP Z8, Z6 Lenovo P920, P720, P620 Dell 7920, Dell 7820 (cid:129) AMD Threadripper CPU with 32 or 64 Cores (cid:129) Nvidia RTX A5000, A5500, A6000, 5000Ada, 6000Ada (cid:129) AMD W6800, W7900 Storage: 10-40 Gb Ethernet Avid NEXIS Editing High Resolution 32 GB RAM minimum Qualified PC Dual 6 Core or higher Media (Higher than 2K+) core with Hyperthreading DMF and Background 32 GB RAM recommended Qualified PC Dual 6 Core or higher Transcode, Background Render core with Hyperthreading Feature Performance Feature Description Recommended System Media Composer | Cloud 32 GB RAM minimum or higher i7 Quad core or higher with recommended depending upon Hyperthreading system model.
J2K Capture 16 GB RAM minimum Qualified PC Dual 6 Core or higher core with Hyperthreading HD Long GOP 9-way 32 GB RAM recommended Qualified PC Dual 6 Core or higher MultiCam with high stream count sequences core with Hyperthreading Storage: 2 x 1 Gb Ethernet or higher Stereoscopic 3D For optimal performance with Qualified PC Dual 6 Core or higher Stereoscopic 3D, use these higher performance systems. Avid core with Hyperthreading GB RAM when using full-frame Stereoscopic 3D.
XDCAM HD50 Capture Baseband capture through Open Avid qualified systems I/O HD RGB 4444 HD RGB capture requires a Qualified PC Dual 6 Core or higher Apple ProRes 4444 high-end workstation with Open DNxHD 4444 I/O and fast storage.
core with Hyperthreading Storage: 10Gb Ethernet Avid NEXIS AMA (QuickTime) AMA is a processor intensive Recommendation of qualified systems operation. Lower end platforms depends on your planned use of this may not offer optimum feature. Heavy usage of highly performance. Highly compressed compressed codecs requires high-end codecs such as H.264 will exhibit systems. (Dual 6 Core or Dual 8 Core minimal real-time performance. systems) AMA (RED) AMA is a processor intensive Qualified Xeon Workstations operation. Older platforms may not offer optimum performance. NOTE: RED plug-in uses the Graphics You will get better performance Processor. Better performance with high with higher-end workstations. performance graphics cards.
Avid Artist I/O Device Compatibility Feature Description Recommended System AVCI-Intra Capture AVC-Intra capture with software 24 core and higher Windows systems codecs is supported. only.
AVCI-Intra AVC-Intra (AVC-I) is a high 4-Way MultiCam Playback quality, low bit-rate HD codec and is very CPU intensive.
Core Systems Four Stream Playback:
Core Systems Avid Artist I/O Device Compatibility The following table shows the minimum version Media Composer supported with the Avid Artist I/O devices.
You must download the appropriate Avid Artist software from your Avid Master Account.
Minimum supported version Media Device Composer Avid Artist | DNxIO Media Composer v8.4.1 and higher Avid Artist | DNxIQ Media Composerv8.8.3 and higher Avid Artist | DNxIV Media Composer v8.10 and higher Avid Artist | DNxIP Media Composer v2018.8 Avid Artist | DNxID Media Composer v2018.9 Compatibility Chart The following table lists the NVIDIA® driver, QuickTime®, Windows Media™, shared storage, Sony® Panasonic® XDCAM™, P2, and Avid Artist Series versions that were qualified with the Avid editing applications. You can also refer to Documentation and version matrix.
Compatibility Chart IMPORTANT: For information on third party support (for example, Sorenson, Boris, etc) see the third party’s web site.
Item Versions Comments QuickTime Support v7.7.9 (Windows) Note: QuickTime v10X does not include v10.x, (v7.x legacy) (macOS) QuickTime Pro options.
Note: QuickTime is not supported with Windows 10.
https://kb.avid.com/articles/en_US/How_ To/QuickTime-Support-and-Security-on- Windows Avid Interplay See Knowledge Base article on IMPORTANT: The Avid Interplay Support compatibility. components that get installed on the editing application must be updated to the Avid Interplay version that is released with the editing application. These include the Media Indexer, Interplay Access, Interplay Framework, Interplay Transfer Client and ProEncode Client.
The Avid Interplay Server components can remain on the previous releases listed as supported. For details, see the “Avid Editing Application Compatibility with Interplay Releases” doc on the Knowledge Base.
NVIDIA Driver v552.22 (Ada series GPU) See “Setting up the NVIDIA Card” on Support page 22.
v474.82 (Kepler series GPU) For setting up the driver for stereoscopic, see the NVIDIA setup info in the Stereoscopic 3D Workflow Guide.
This version supports NVIDIA vGPU Software Version 17 for Virtual Machines. For more information visit Nvidia.com.
AMD Driver Support 24.Q1 Note: DO NOT update to 22.Q3 - it does not work with Media Composer. Also, 23.Q1.1 and 22.Q2 are known to cause intermittent errors.
Note: Do not install Adrenaline Edition driver on Radeon Pro GPUs.
For more information visit Amd.com Media Composer Compatibility with Audio Devices Item Versions Comments Shared Storage Avid NEXIS and Avid ISIS®. See “Shared Storage Support” on Support page 23.
Sony XDCAM driver v2.13 (XDCAM Transfer for The VFAM firmware version for macOS) PDW-U1 is 2.600.
The PDW-U2 is 2.810.
Windows FAM v2.3.2 and VFAM The driver can be downloaded from v5.0.2 Sony's website http://esupport.sony.com/.
Panasonic P2 drive (macOS) v3.1.7 There is currently no P2 writeback support for macOS clients.
(Windows) v2.24 Avid Artist Series EuControl software v3.4 See the User’s Guide for information on (Euphonix) Artist Series Color setup information.
Media Composer Compatibility with Audio Devices For details on compatible audio hardware and software:
Audio Hardware and Software Refer To Control Surfaces Supported Control Surfaces Avid Artist I/O Avid ArtistSeries FAQ Media Composer and ProTools Co-install Co-install information for Media Composer and ProTools Setting up the NVIDIA Card To set up the NVIDIA card, you must make sure you have the correct display driver version (install the display driver if necessary, and set the correct display settings. See the “Compatibility Chart” on page 20 for information on the supported driver(s).
Prior to setting up the NVIDIA card, check to make sure you have the correct display driver version. If you do not have the correct NVIDIA driver, you can install it from the Nvidia website - Nvidia.com.
Shared Storage Support To check the NVIDIA display driver version:
1. Right-click the Desktop and select NVIDIA Control Panel. You can also open the Windows
Control Panel and double-click the NVIDIA Control Panel icon.
2. Click System Information at the bottom left corner of the NVIDIA Control Panel.
The version number is listed in the Graphics card information section on the ForceWare version line.
To install the NVIDIA display driver:
1. Download the applicable Nvidia driver from the Nvidia website - Nvidia.com.
2. Double-click the file for the applicable driver.
3. Follow the on-screen instructions, and then restart your system.
To setup multiple displays:
1. Right-click the Desktop, and select Nvidia Control Panel.
2. In the settings window in the left of the window, click Set up multiple displays.
3. Select or deselect the desired monitors listed.
To set the Driver for Avid Editing Environments
1. Right-click the Desktop, and select Nvidia Control Panel.
2. Select the Desktop menu selection in the Control Panel menu bar.
3. Enable Desktop > Video Editing Mode.
4. Click Manage 3D Settings.
5. Click the Global Setting tab.
6. Under Global presets, select Base Profile.
7. Scroll to locate the Power Management Mode. Select Prefer maximum performance.
8. Click Apply.
Reboot after installing the Nvidia software even if you are not prompted to do so.
Never use the Windows “roll back driver” feature on the Nvidia driver. The driver version must match the rest of the components the Nvidia installer installs.
Shared Storage Support For information on Shared Storage Support, see the Avid NEXIS and Avid ISIS tables in the following document:
http://resources.avid.com/SupportFiles/Attachments/MediaCentral_Compatibility_Matrix.pdf Shared Storage Support Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Portions © Copyright 2003-2007 of MOG Solutions.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid Nexis, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see:
http://www.avid.com/US/about-avid/legal-notices/trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer ReadMe (cid:129) Created 7/9/24