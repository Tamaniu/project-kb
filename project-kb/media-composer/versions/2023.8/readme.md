---
product: media-composer
product-area: editing
version: "2023.8"
release-date: 01/08/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application ® Composer® ReadMe for Media v2023.8 Revision History Date Description November 22, 2023 Updated a Note in Media Composer Notes.
October 20, 2023 Added a Note to Security Guidelines.
September 14, 2023 Modified previous Note (to recommend installing v2023.8.1) in Media Composer Notes. In addition, updated macOS to 13.5.2. in Qualified Hardware and Operating Systems.
September 8, 2023 Added a Note to Media Composer Notes.
IMPORTANT: Avid periodically makes software updates available for download on Avid.com at the following location:www.avid.com/us/support/downloads. Please check the above site regularly for information on available downloads for your product.
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
Media Composer Notes It is recommended that all users upgrade to v2023.8.1, in order to avoid an error (AvNN Error 275, Connection Refused), which affects the new PhraseFind AI and ScriptSync AI features.
https://avid.secure.force.com/pkb/articles/en_US/Knowledge/AvNN-Error-275-Connection-Refu sed-when-using-new-ScripSync-AI-and-PhraseFind-AI PhraseFind AI indexes media in the background. Indexing is a resource intensive operation, which may impact the performance of Media Composer. If the impact on editing becomes noticeable, you can pause or stop background indexing by opening the Find window, clicking on the gear icon to access Search Settings, and selecting “Pause All Indexing” or “Stop PhraseFind AI Indexing”.
If You Need Help (macOS Only) During the installation of Media Composer on macOS, users are presented with an additional prompt for credentials at the "Running package scripts" stage, which states: "You are making changes to the System Certificate Trust Settings". This prompt is expected. To proceed, enter your password and update settings as instructed.
Beginning with the release of Media Composer v2023.8, the import, export and creation of HDV media is no longer supported.
Beginning with the release of Media Composer v2022.12, input (Tape Capture) and output (Digital Cut) using IEEE-1394 (Firewire) devices is no longer supported.
Systems without QuickTime installed, such as macOS Catalina and later, may experience import issues with some file formats and wrappers. In certain instances, unsupported files may not trigger any response in Media Composer during an import operation. Depending on the codec used, it may be necessary to link and transcode the file using the Consolidate/Transcode window before working with it in a project. Please refer to the following document on the Avid Knowledge Base page for more information on formats that are not supported without QuickTime:
https://avid.secure.force.com/pkb/articles/en_US/Compatibility/Media-Composer-File-Type-Sup port-on-macOS-Catalina (macOS Only) macOS Catalina and higher does not support 32 bit applications. The legacy Title Tool, Marquee Title Tool and QuickTime legacy codecs are no longer installed when you install Media Composer. Only install legacy codecs if QuickTime is installed on your system. The installer is Media Composer Legacy Components 2021.12.1 Mac. You can get the installer from MyAvid, Link, or the download center.
(macOS Only) macOS Catalina or higher does not support DMF (Dynamic Media Folders).
If You Need Help Match Frame results for the subclip of a Group or MultiGroup clip created in Media Composer v2022.7 and later will load the original subclip of the Group or MultiGroup clip.
If using subclips of a Group or MultiGroup clip created in an earlier version of Media Composer, the same Match Frame operation will load the Group or MultiGroup clip.
(cid:129) If you are using an AMD card and certain keyboard shortcuts that require modifier keys are not working, such as Ctrl+Shift+M or Ctrl+Shift+G for Multicam editing, then disable the AMD “Use Hotkeys” setting to fix the issue.
(cid:129) If you are using an attached hardware I/O device, such as the Avid Artist DNxIQ or Avid Artist DNxIV, you may need to manually select it and activate it as an output device the first time Media Composer v2022.10 is opened. To do this, right-click on the HW/SW button in the Timeline window, select the hardware device you want to use, and click on the HW/SW button to activate it. Media Composer will preserve this selection the next time you open Media Composer.
(cid:129) (MCCET-4684) Captions may overlap or merge for imported SCC files if lines of text appear in rapid succession. To avoid this possibility, clean the caption data by removing all duplicate control codes from the SCC file.
(cid:129) (MCCET-2541) When working with Avid Artist DNxIO or Avid Artist DNxIQ, you should disable the Line In recording input (BlackMagic Audio in the Windows OS).
(cid:129) Avid Artist DNxIO and Avid Artist DNxIQ: If you are using Avid Artist DNxIO, Avid Artist DNxIQ, or a BlackMagic Designs video device, please update to Desktop Video software version v12.4 or higher. If you are using Avid Artist DNxIV and Avid Artist DNxIP please update to AJA software v16.2.2 or later.
(cid:129) Qualified Operating Systems: For information on qualified operating systems, see Qualified Hardware and Operating Systems.
(cid:129) Dongle Info (macOS Only): The Dongle Sentinel driver installer is no longer automatically installed when you install the editing application. The driver is now located in the Avid_Utilities folder (/Applications/Utilities/Avid_Utilities/Sentinel_Driver). If you have a dongle, manually install the driver from this location. Dongles are NOT supported on macOS M1 systems or any macOS system running Monterey or later.
When installing the Sentinel Driver, check your System Preferences and select “Security and Privacy.” You may need to choose to Allow the driver to be accessed.
(cid:129) Media Composer now includes a dnxmov2mxf executable in the \Program Files\Avid\Avid Media Composer\SupportingFiles\Utilities folder. This executable allows you to manually convert MOV files with DNX essence with separately stored alpha to an MXF OP1a file with DNX essence and embedded alpha.
The tool is available for Windows, macOS and Linux. To run on Windows, Visual C++ Redistributable for Visual Studio 2015 or Visual C++ Redistributable for Visual Studio 2017 is required.
If You Need Help Run the command from a command prompt on Windows or from terminal on macOS.
DNXMOV2MXF usage is:
dnxmov2mxf path_to_mov [path_to_mxf] Notes on Working with SRT For details on working with SRT, search for “Open I/O Support for SRT” in the Help.
Decoded Output (cid:129) Due to the compressed streaming nature of SRT, and the variety of SRT decoding applications and devices available, the decoded output may not be in sync with the Media Composer desktop. Depending on the decoder being used, the output may be up to several seconds out of sync. Adjusting the buffering settings in the decoder as well as the SRT latency setting can help to improve the delay depending on your network's quality of service.
SRT Quality Bitrates (cid:129) The default quality settings for a 1080p/29.97 project are 5-15 Mbps for low, 10-30Mbps for medium and 30-80 Mbps for high. Bitrates will vary, and might exceed the average values, based on the media being sent over SRT. Bitrates are scaled based on the frame rate and raster size, and may vary in the actual bitstream based on how efficiently the codec can compress the frames.
(cid:129) Only 8b quality is supported with SRT. Media Composer will automatically set the I/O to 8b quality if Media Composer is set to draft or 10b.
Projects and Media Support:
(cid:129) 2K/UHD/4K projects will be downconverted to HD formats at the same frame rate. For example, if you are working on a UHD 4k 23.976 projects, it will be converted to an HD 23.976p project.
(cid:129) Interlaced formats are not natively supported, but will be converted to progressive format at the equivalent frame rate.
(cid:129) SRT will mix multi-channel audio to stereo audio.
(cid:129) RGB is not natively supported and will be converted to YUV.
> **Note:** The SRT plug-in is supported with Media Composer | Enterprise and Media Composer |
Ultimate licenses only.
Security Guidelines As system and network security attacks become increasingly more inventive and persistent, Avid has adopted a new security strategy to help you, our customer and partner, better protect your assets and intellectual property. As you might know, Avid has traditionally recommended Fixed in Media Composer v2023.8 Symantec Endpoint Protection as the preferred and qualified solution for much of the Avid product line. As of Q3, 2020, Avid introduced a more flexible strategy that provides general guidelines for protecting your Avid systems. This new policy allows you to choose the best security solution for your organization, while still following Avid best practices. Avid Media Composer allows you to install an endpoint detection and response solution on your system.While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://avid.secure.force.com/pkb/articles/en_US/troubleshooting/en239659
> **Note:** Currently, CrowdStrike is only supported up to v7.0.3 (macOS and Windows). Do not install
v7.0.4 or later at this time.
Fixed in Media Composer v2023.8 The following have been fixed:
➤ Bug Number: MCCET-5022. Copying and pasting keyframes in the Effects editor did not work for all properties.
➤ Bug Number: MCCET-5038. (MediaCentral | Production Management) Master clips relinked to smaller, consolidated media files and not the full-length clips, which was exhibited by segmented master clips appearing on the Timeline (Source Mode).
➤ Bug Number: MCCET-5050 and MCCET-4859. (MediaCentral | Production Management) Consolidated media files were showing up in multiple locations and linking to the original, non-consolidated media files for master clips and subclips.
➤ Bug Number: MCCET-4984. Depending on the Interface brightness settings selected, Caption Text for the SubCap effect was not visible in the Effect Editor or the Edit Master Caption List dialog box.
➤ Bug Number: MCCET-4871. Arabic text did not display correctly in the Caption Text box for the SubCap effect.
➤ Bug Number: MCCET-4544. (MediaCentral | Production Management) In some instances, XDCAM clips that were imported and consolidated using Media Composer 2018.12.15 could not be played in more recent versions of Media Composer.
➤ Bug Number: MCCET-5011. (MediaCentral | Production Management) Files that triggered a "Fast Import" operation linked back to an AMA link of the original imported file when loaded for the first time.
Fixed in Media Composer v2023.8 ➤ Bug Number: MCCET-5053. (Windows) Some system fonts were missing from the list of available fonts in the SubCap effect.
➤ Bug Number: MCCET-4862. (macOS) In some instances, AAF files failed to import on M1 Macs.
➤ Bug Number: MCCET-4809. In some instances, audio for proxy media experienced playback errors, including distorted sound and playback that stopped unexpectedly.
➤ Bug Number: MCCET-5077. Exporting a sequence with H.264 proxy media as an MOV produced corrupted frames.
➤ Bug Number: MCCET-5032. ALE file import caused all bin column names that start with "Vendor" to display incorrectly.
➤ Bug Number: MCCET-4491. (MediaCentral | Production Management) Depending on check-in procedure, End Timecode information for clips created with an Edit While Capture (EWC) workflow could be lost without a warning message.
➤ Bug Number: MCCET-4593. (macOS) RS-422 deck control was lost for Avid Artist | DNxIO if BlackMagic Desktop Video 12.2 or newer was installed on the system.
➤ Bug Number: MCCET-5068. Transfer menu “Send To Playback” option was not available if the Timeline window was selected for users of Media Composer | Ultimate and Media Composer | Enterprise.
➤ Bug Number: MCCET-4825. When working with high frame rate projects, captions created with the SubCap effect and exported from Media Composer included incorrect timecode data.
➤ Bug Number: MCCET-5093. (MediaCentral | Production Management) In some instances, checking out and loading sequences caused Media Composer to crash if Dynamic Relink was enabled.
➤ Bug Number: MCCET-4880. In some instances, artifacts appeared in the Y Waveform monitor, depending on the Timeline Video Quality Menu settings.
➤ Bug Number: MCCET-5084. List of available Target Bins was not refreshed properly in the Audio Punch-In Tool.
➤ Bug Number: MCCET-4707. (macOS) In some instances, Media Composer experienced intermittent hangs/beachballs on Apple Silicon.
Fixed in Media Composer v2023.8 ➤ Bug Number: MCCET-5057. Exporting and reimporting a “File_129” EDL caused clip names with over 32 characters to be truncated to 32 characters.
➤ Bug Number: MCCET-4533. Importing SCC files created with Subtitle Edit (third-party application) caused some characters to be displayed twice in Media Composer.
➤ Bug Number: MCCET-5019. Depending on the type of symbols and the amount of space between them, closed captions generated by Telestream (CaptionMaker) appeared with duplicate symbols if imported as part of an AAF file.
➤ Bug Number: MCCET-5116. In some instances, H.264 800Kbps Proxy (HD 1080i) media appeared corrupted in the Source monitor if the Video Quality Menu in the Timeline was set to Full Quality (green) or a Timewarp effect was applied when working with mixed frame rates.
➤ Bug Number: MCCET-4727. In some instances, H.264 800Kbps Proxy (HD 1080i) media appeared corrupted in the Source monitor if the Video Quality Menu in the Timeline was set to Full Quality (green) or a Timewarp effect was applied when working with mixed frame rates.
➤ Bug Number: MCCET-5117. Navigating between markers on a subclip using the “Go to Previous Marker”, “Go to Next Marker”, “Go to Previous Event”, and “Go to Next Event” buttons on the Source monitor caused Media Composer to freeze.
➤ Bug Number: MCCET-5076. In some instances, AAF files included incorrect data if Audio EQ was applied.
➤ Bug Number: MCCET-4158. When prompted to “Update Sequence” for sequences containing Group clips with Timewarp and color correction effects applied, the duplicated sequence created gaps between clips and changed the overall duration.
➤ Bug Number: MCCET-5136. (MediaCentral | Production Management) Sequences took a long time to load if they had associated media on unmounted workspaces.
➤ Bug Number: MCCET-5005. Shift+clicking on markers in the Marker window and performing an operation, such as delete, affected the incorrect markers, if they were filtered using the search field.
➤ Bug Number: MCCET-5009. (macOS) In some instances, media containing alpha channels were incorrectly aligned with the Matte Key effect on Apple Silicon processors (M1 and M2).
➤ Bug Number: MCCET-5119. Noticeable lags were experienced while editing in the timeline if many real-time audio effects were used.
Limitations ➤ Bug Number: MCCET-4256. When importing files, Media Composer did not recognize some QuickTime media formats, including DNxHD HQ files exported from Adobe Premiere Pro, and presented an "Import Resolution Conflict" message.
➤ Bug Number: MCCET-5051. Bin saves failed and triggered an error message if the bin being saved was located on a read-only NEXIS workspace.
➤ Bug Number: MCCET-5075. Audio waveforms were very slow to draw and would take additional time to redraw if Zoom In or Zoom Out were used.
➤ Bug Number: MCCET-5063. If individual hostnames began with a number, an error message appeared when configuring STP targets in the MC Enterprise Admin Tool on Cloud UX, which indicated that "The server or workgroup name entered is invalid or may not be available on the network".
➤ Bug Number: MCCET-5104. Panning did not work properly for ganged audio channels in the Audio Mixer.
➤ Bug Number: MCCET-5159. Comments did not appear in the bin Text View for a variety of items.
➤ Bug Number: MCCET-5224. The Select Project window displayed incorrect information for Creation Date and Modification Date.
➤ Bug Number: MCCET-4119. When exporting XDCAM MXF OP1a files, macro blocking occurred if "Re-encode for XDCAM bitstream compliance" was selected.
> **Note:** Beginning with v2023.8, the option to “Re-encode for XDCAM bitstream compliance” in the
AMA File Export window is no longer necessary and has been removed.
Limitations The following are known limitations (cid:129) Photoshop PSD files are not supported for AMA linking if QuickTime is not installed.
(cid:129) Some fonts, by their design, are available only in Bold. On the macOS system it can happen that selecting a font does not produce any visual changes. Try selecting “Bold.” (cid:129) If you launch a project and receive an “Enable 3rd Party Emulation” warning, even if you select Enable in the warning dialog, you should also perform the following: Select File > Settings and click the Project tab. Click General Settings and select “Enable Bin Sharing on 3rd party storage emulating Avid NEXIS/ISIS.” Limitations ➤ Bug Number: MCDEV-18107. (Windows) In some instances, the Media Composer installation processes fails and produces a 1309 error. This can happen if the file path to the installer is very long and contains too many characters. For example, long path names can occur if the installer is within subfolders or executed from the Windows Desktop.
Workaround: Place the Media Composer installer on the root level of your drive and run it from there.
➤ Bug Number: MCDEV-17859. When using the Capture Tool to record both audio and video from an external device, the capture process will fail if Desktop Audio is enabled.
Workaround: Disable Desktop Audio if you need to capture both audio and video from an external device. From the Timeline, right-click the "HW/SW" button, deselect "Desktop Audio".
and capture again.
➤ Bug Number: MCCET-4971. Beginning with Media Composer 2022.12, it is not possible to map “Create > New > Sequence” as a keyboard shortcut using “Menu to Button Reassignment” in the Command Palette. Attempting to map that function results in a “That menu item cannot be assigned” dialog box. This limitation is due to the expanded functionality offered by the new submenu, which is generated dynamically, and does not allow for mapping of functions that are not persistent and might change.
Workaround: Use Cmd+Shift+N (macOS) or Ctrl+Shift+N (Windows) to create a new sequence using the currently active Sequence Template.
➤ Bug Number: MCDEV-17243. Proxy playback fails when Disk Cache is off or set to “0”.
Workaround: Avid NEXIS | EDGE users must set their Disk Cache to 1GB or greater.
➤ Bug Number: MCDEV-16685. When SRT is disabled, hardware format does not revert to project settings, resulting in a mismatch between UHD and HD formats, and causing errors in the Capture tool.
Workaround: Manually change video output to match project settings when Capture tool is opened and SRT is disabled.
➤ Bug Number: MCDEV-15629. Icons for managed Matte Key clips do not change color when their proxies are created and resolved.
Workaround: Check the Proxy Offline column for online/offline status.
➤ Bug Number: MCDEV-17081. In some instances, there is no warning that high resolution media is offline and proxy media will be used for output.
Limitations ➤ Bug Number: MCDEV-15413. In some instances, clips that will link and play cannot be made into a proxy if it includes a broken data track.
➤ Bug Number: MCDEV-16119. (Avid Artist DNxIQ) When trying to capture audio, you might receive an “Audio/video is unexpectedly no longer coming into the system” exception error. Note that this only happens the first time, subsequent audio captures are successful.
Workaround: Perform a capture with video first and then turn video off for the subsequent captures.
➤ Bug Number: MCDEV-15843. (Windows 11) In some instances, you cannot drag and drop from the File Explorer to a bin.
Workaround: Use the Media Composer Source Browser to import or link your media.
➤ Bug Number: MCDEV-14845. Avid Media Composer | Enterprise Admin Tool does not restrict NDI when Media Composer is in software only mode.
➤ Bug Number: MCCET-3702. Image Quality issues when adding UHD progressive clips to an HD interlace sequence:
The process Media Composer uses to mix and match video formats in a sequence is to transform the source clip's frame rate and frame layout to meet the project specifications; the motion adapters are added first, then spatial adapters are applied in order to provide expected playback dimensions.
For example, if you have a UHD 50p clip that you want to add to a 1080i Timeline, the UHD clip first gets split into 2 separate fields (UHD format), then each field gets independently resized to 1920x540 in HD. The export process puts those resized fields back together into a progressive HD frame but does not maintain the clarity of the original progressive frame.
Workaround: If you first transcode the UHD progressive clip to HD progressive and then add the HD clip to the interlace sequence, it forces the resize operation from UHD to HD to be done before the split gets into interlace mode.
➤ Bug Number: MCCET-3788. You might receive a “clip name is a clip in a multi-essence file that cannot be exported using the specified Embedded in AAF setting” when exporting embedded AAFs with OP1a audio clips.
Workaround: Consolidate the OP1a clips to Avid OP-Atom prior to performing the export.
➤ Bug Number: MCDEV-12988. (macOS) The AMA Drastic plug-in is not supported with Media Composer v2020.4 Before Installing the Editing Application ➤ Bug Number: MCDEV-12735. Maestro graphics do not appear correctly in the Timeline if your system uses the Radeon video card.
➤ Bug Number: MCDEV-11481. Promoting a title from the Title Tool application to Avid Titler+ cannot be performed if it includes a motion adapter.
➤ Bug Number: MCDEV-11796. DPX files larger than 10bit might fail to link correctly.
Workaround: Go to File > Settings and click the User tab. In the Link Settings, click the Link Options tab and make sure Alpha Channel is set to Ignore.
➤ Bug Number: MCDEV-8641. (AMD Graphics) Systems with AMD graphics cards might display tearing when performing Full Screen playback.
Before Installing the Editing Application (Windows) Overwriting During the Install Process If you are upgrading from version v2020.12.x or later, you can choose to perform an overwrite during the install process. For versions prior to that, you must perform a manual uninstall first.
Media Composer | Enterprise and Media Composer | Distributed Processing If you are working with Media Composer | Enterprise or Media Composer | Distributed Processing, please refer to the “Installation Prerequisites” section in the Media Composer | Enterprise Administration Guide and Media Composer | Distributed Processing Administration Guide to make sure you have compatible Avid MediaCentral Cloud UX Platform ISO and Avid MediaCentral Cloud UX Feature Pack ISO versions.
Before Installing the Editing Application in a MediaCentral | Production Management Environment Carefully read through the “Avid Editor Compatibility Matrix” guide (found using the following link) before upgrading. It might be necessary to also upgrade the MediaCentral Production Management components on the editing client.
http://avid.force.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Buffer Error Message The editing application requires a minimum of 8GB RAM. If you try to install the editing application on a system with less than 8GB RAM, you will receive a buffer error and installation will not proceed.
After Installing the Editing Application Download Note To avoid “File Path too long” or a “File cannot be copied” warning while unzipping the downloaded installer, try placing the installer.zip on the root level of your C:\ drive and unzip it from that location.
User Right to Raise Thread Priority (Windows) Note for Domain Administrators: If your editing systems are part of a domain, you must give the user the right to “Increase Scheduling Priority.” This must be done within the Domain Group Policy on the domain controller by giving the right explicitly to the user or giving the right to a group and adding the user to that group. You will not be able to launch as a regular user if this is not set properly.
If you are part of a domain, a Domain Administrator should install and perform the first launch of the editing application.
Install as Administrator You need to first install and launch the editing application as an Administrator. If you are in a Shared Storage environment, mount your workspaces as an Administrator. You may then log off and log back in as a Standard user, if necessary.
After Installing the Editing Application AMA Plug-Ins You cannot install the AMA Plug-ins while the editing application background services are running. Make sure you Stop the services before installing the AMA Plug-Ins. The stop/start background services icon is on the menu bar (macOS) or taskbar (Windows). Once you install the new AMA plug-in, restart the services. See “Starting and Stopping Avid Background Services” in the Help.
Notes on Software Licensing If You Upgrade Your Operating System If you need to upgrade your operating system after you install your Avid editing application, first deactivate your software. After you upgrade your operating system and, if required, reinstall your application, you can reactivate your software. For information on activating and deactivating your software license, see the Installation Guide for Avid Editing Applications.
Minimum RAM Recommendation Minimum RAM Recommendation For this release Avid recommends 16 GB minimum, 32 GB recommended. Some features might require more RAM and specific hardware. See “Feature Performance” on page 17 for more info.
Qualified Hardware and Operating Systems Some features are processor-intensive and require specific hardware. See “Feature Performance” on page 17 for more info.
For 3rd-Party Open IO hardware qualification refer to the manufacturer’s documentation. See the Open IO Frequently Asked Questions document on the Knowledge Base:
http://avid.force.com/pkb/articles/en_US/faq/en422991 The following lists the qualified Operating Systems. Depending upon your hardware the qualified Operating Systems are:
(cid:129) Windows 10 64-bit 21H1, 21H2, and 22H2 or later (Professional and Enterprise) (cid:129) Windows 11 64-bit 21H2, 22H2 or later (Professional and Enterprise) (cid:129) macOS 10.15.7, 11.x to 11.7, 12.x to 12.6.x, and 13.0 to 13.5.2
> **Note:** macOS 10.14.6 Mojave is not supported with Media Composer 22.4 and later releases. Avid has not qualified macOS 12.x with the CrowdStrike anti-virus application. With the release of macOS 10.13.x and higher, Apple requires manual approval of loading
Kernel Extensions (KEXTs). (For example BlackMagic, and AJA IO devices install Kernel Extensions.) At installation time, you should get a dialog saying that the KEXT was not loaded.
You must go the “Security & Privacy” system preference and manually approve the KEXT. Keep the Security & Privacy pane open after you install the I/O device drivers so that you will see the notice that the driver has been blocked and press the “allow” button within 30 minutes of installing or the driver will be permanently blocked.
Qualified Workstations and Laptops For a list of qualified Windows and macOS systems, go to the following page: Avid qualified systems. Select either the Windows or macOS CPU Specifications pdf.
Feature Performance Feature Performance A number of features in this editing application are processor-intensive. As a result, you might experience problems if you are working on an older system. The following chart shows the hardware that Avid has successfully qualified when using these features. For a list of the qualified systems, see Qualified Workstations and Laptops.
Feature Description Recommended System PhraseFind AI and 24GB RAM minimum Avid qualified systems ScriptSync AI 16K projects 96GB RAM minimum 48+ core Intel Xeon or AMD Threadripper CPU systems with Nvidia RTX graphics Editing High Resolution, 64 GB RAM minimum, 96 GB HP Z8, Z6, High Frame Rate XAVC-I recommended Lenovo P920, P720, P620 Media (UHD/4k in Dell 7920, Dell 7820 59.94p) (cid:129) Dual gold 6254 3.1 Ghz turbo to 4.0 4 streams of media and Ghz 18-core (72 with HT) color adapters (cid:129) Dual Xeon Gold 6154 3.0 Ghz, turbo up to 3.7 Ghz 18-core (72 cores with Hyperthreading) (cid:129) AMD W5700, AMD W6800 & Pro (cid:129) Nvidia RTX 5000, RTX 6000 (cid:129) Nvidia RTX A6000, RTX A5000 Storage: 10Gb Ethernet Avid NEXIS 1080p/50 XAVC Long 32 GB RAM minimum Qualified PC Dual 6 Core or higher Baseband Capture core with Hyperthreading Feature Performance Feature Description Recommended System Editing High Resolution, 32GB Min, 64 GB recommended HP Z8, Z6, High Frame Rate DNxHR Lenovo P920, P720, P620 Media (UHD/4k in HP Z840 59.94p) HP Z640 Dell 7920/7910 Dell 7820/7810 Lenovo P910/P900/ Lenovo P710/P700 (cid:129) NVIDIA RTX 5000, 6000, AMD (cid:129) NVIDIA P5000, M5000 or K5200 and AMD W5700 PCIe Gen3 Gfx card (recommended) Mac Pro 2019 (cid:129) 16 core (32 with Hyperthreading) 3.2 GHz Storage: 10Gb Ethernet Avid NEXIS Editing High Resolution 32 GB RAM minimum Qualified PC Dual 6 Core or higher Media (Higher than 2K+) core with Hyperthreading DMF and Background 32 GB RAM recommended Qualified PC Dual 6 Core or higher Transcode, Background Render core with Hyperthreading Media Composer | Cloud 32 GB RAM minimum or higher i7 Quad core or higher with recommended depending upon Hyperthreading system model.
J2K Capture 16 GB RAM minimum Qualified PC Dual 6 Core or higher core with Hyperthreading Feature Performance Feature Description Recommended System HD Long GOP 9-way 32 GB RAM recommended Qualified PC Dual 6 Core or higher MultiCam with high stream count sequences core with Hyperthreading Storage: 2 x 1 Gb Ethernet or higher Avid NEXIS Stereoscopic 3D For optimal performance with Qualified PC Dual 6 Core or higher Stereoscopic 3D, use these higher performance systems. Avid core with Hyperthreading GB RAM when using full-frame Stereoscopic 3D.
XDCAM HD50 Capture Baseband capture through Open Avid qualified systems I/O HD RGB 4444 HD RGB capture requires a Qualified PC Dual 6 Core or higher Apple ProRes 4444 high-end workstation with Open DNxHD 4444 I/O and fast storage.
core with Hyperthreading Storage: 10Gb Ethernet Avid NEXIS AMA (QuickTime) AMA is a processor intensive Recommendation of qualified systems operation. Lower end platforms depends on your planned use of this may not offer optimum feature. Heavy usage of highly performance. Highly compressed compressed codecs requires high-end codecs such as H.264 will exhibit systems. (Dual 6 Core or Dual 8 Core minimal real-time performance. systems) AMA (RED) AMA is a processor intensive Qualified Xeon Workstations operation. Older platforms may not offer optimum performance. NOTE: RED plug-in uses the Graphics You will get better performance Processor. Better performance with high with higher-end workstations. performance graphics cards.
AVCI-Intra Capture AVC-Intra capture with software 24 core and higher Windows systems codecs is supported. only.
Avid Artist I/O Device Compatibility Feature Description Recommended System AVCI-Intra AVC-Intra (AVC-I) is a high 4-Way MultiCam Playback quality, low bit-rate HD codec and is very CPU intensive.
Core Systems Four Stream Playback:
Core Systems Avid Artist I/O Device Compatibility The following table shows the minimum version Media Composer supported with the Avid Artist I/O devices.
You must download the appropriate Avid Artist software from your Avid Master Account.
Minimum supported version Media Device Composer Avid Artist | DNxIO Media Composer v8.4.1 and higher Avid Artist | DNxIQ Media Composerv8.8.3 and higher Avid Artist | DNxIV Media Composer v8.10 and higher Avid Artist | DNxIP Media Composer v2018.8 Avid Artist | DNxID Media Composer v2018.9 Compatibility Chart The following table lists the NVIDIA® driver, QuickTime®, Windows Media™, shared storage, Sony® XDCAM™, Panasonic® P2, and Avid Artist Series versions that were qualified with the Avid editing applications. You can also refer to Documentation and version matrix.
Compatibility Chart IMPORTANT: For information on third party support (for example, Sorenson, Boris, etc) see the third party’s web site.
Item Versions Comments QuickTime Support v7.7.9 (Windows) Note: QuickTime v10X does not include v10.x, (v7.x legacy) (macOS) QuickTime Pro options.
Note: QuickTime is not supported with Windows 10.
https://avid.secure.force.com/pkb/articles /en_US/How_To/QuickTime-Support-an d-Security-on-Windows Avid Interplay See Knowledge Base article on IMPORTANT: The Avid Interplay Support compatibility. components that get installed on the editing application must be updated to the Avid Interplay version that is released with the editing application. These include the Media Indexer, Interplay Access, Interplay Framework, Interplay Transfer Client and ProEncode Client.
The Avid Interplay Server components can remain on the previous releases listed as supported. For details, see the “Avid Editing Application Compatibility with Interplay Releases” doc on the Knowledge Base.
NVIDIA Driver v529.11 See “Setting up the NVIDIA Card” on Support page 22.
For setting up the driver for stereoscopic, see the NVIDIA setup info in the Stereoscopic 3D Workflow Guide.
This version supports NVIDIA vGPU Software 15 for Virtual Machines. For more information visit Nvidia.com.
AMD Driver Support 23.Q2 Note: DO NOT update to 22.Q3 - it does not work with Media Composer. Also, 22.Q2 is known to cause intermittent errors.
For more information visit Amd.com Shared Storage Avid NEXIS and Avid ISIS®. See “Shared Storage Support” on Support page 23.
Media Composer Compatibility with Audio Devices Item Versions Comments Sony XDCAM driver v2.13 (XDCAM Transfer for The VFAM firmware version for macOS) PDW-U1 is 2.600.
The PDW-U2 is 2.810.
Windows FAM v2.3.2 and VFAM The driver can be downloaded from v5.0.2 Sony's website http://esupport.sony.com/.
Panasonic P2 drive (macOS) v3.1.7 There is currently no P2 writeback support for macOS clients.
(Windows) v2.24 Avid Artist Series EuControl software v3.4 See the User’s Guide for information on (Euphonix) Artist Series Color setup information.
Media Composer Compatibility with Audio Devices For details on compatible audio hardware and software:
Audio Hardware and Software Refer To Control Surfaces Supported Control Surfaces Avid Artist I/O Supported Avid Artist I/O Devices Media Composer and ProTools Co-install Co-install information for Media Composer and ProTools Setting up the NVIDIA Card To set up the NVIDIA card, you must make sure you have the correct display driver version (install the display driver if necessary, and set the correct display settings. See the “Compatibility Chart” on page 20 for information on the supported driver(s).
Prior to setting up the NVIDIA card, check to make sure you have the correct display driver version. If you do not have the correct NVIDIA driver, you can install it from the Nvidia website - Nvidia.com.
To check the NVIDIA display driver version:
1. Right-click the Desktop and select NVIDIA Control Panel. You can also open the Windows
Control Panel and double-click the NVIDIA Control Panel icon.
2. Click System Information at the bottom left corner of the NVIDIA Control Panel.
Shared Storage Support The version number is listed in the Graphics card information section on the ForceWare version line.
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
Avid Media Composer ReadMe (cid:129) Created 11/22/23