---
product: media-composer
product-area: editing
version: "2022.7"
release-date: 01/07/2022
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application ® Composer® ReadMe for Media v2022.7 Revision History Date Description March 29, 2023 Added a Note to Media Composer Notes.
October 11, 2022 Updated Qualified Hardware and Operating Systems September 20, 2022 Added MCCET-4612 to Fixed in Media Composer v2022.7 September 9, 2022 Updated Compatibility Chart for NVIDIA Driver Support August 23, 2022 Added support for macOS version 12.5.1 July 13, 2022 Added a note about new Match Frame results for Group and MultiGroup subclips IMPORTANT: Avid periodically makes software updates available for download on Avid.com at the following location:www.avid.com/us/support/downloads. Please check the above site regularly for information on available downloads for your product.
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
Media Composer Notes Systems without QuickTime installed, such as macOS Catalina and later, may experience import issues with some file formats and wrappers. In certain instances, unsupported files may not trigger any response in Media Composer during an import operation. Depending on the codec used, it may be necessary to link and transcode the file using the Consolidate/Transcode window before working with it in a project. Please refer to the following document on the Avid Knowledge Base page for more information on formats that are not supported without QuickTime:
https://avid.secure.force.com/pkb/articles/en_US/Compatibility/Media-Composer-File-Type-Sup port-on-macOS-Catalina (macOS Only) macOS Catalina does not support 32 bit applications. The legacy Title Tool, Marquee Title Tool and QuickTime legacy codecs are no longer installed when you install Media Composer. If you are installing Media Composer on a system with a pre-Catalina OS, a separate installer is provided that allows you to choose to install the Title Tool, If You Need Help Marquee, and QuickTime legacy codecs. Only install legacy codecs if QuickTime is installed on your system. The installer is Media Composer Legacy Components 2021.12.1 Mac. You can get the installer from MyAvid, Link, or the download center.
(macOS Only) macOS Catalina or higher does not support DMF (Dynamic Media Folders).
MCDEV-11537 If you intend to use full-frame stereoscopic with an Avid Artist DNxIQ, you may want to remain with Media Composer v2018.12.x until the issues with Stereoscopic support are resolved in a future version.
Match Frame results for the subclip of a Group or MultiGroup clip created in Media Composer v2022.7 and later will load the original subclip of the Group or MultiGroup clip.
If using subclips of a Group or MultiGroup clip created in an earlier version of Media Composer, the same Match Frame operation will load the Group or MultiGroup clip.
(cid:129) (MCCET- 2541) When working with Avid Artist DNxIO or Avid Artist DNxIQ, you should disable the Line In recording input (BlackMagic Audio in the Windows OS).
(cid:129) Avid recommends that you do not install Desktop Video software version 10.10.1 on Media Composer versions prior to v2018.5.1.
(cid:129) Avid Artist DNxIO and Avid Artist DNxIQ: If you are using Avid Artist DNxIO, Avid Artist DNxIQ, or a BlackMagic Designs video device, please update to Desktop Video software version v11.0 or higher. If you are using Avid Artist DNxIV and Avid Artist DNxIP please update to AJA software v15.2 or later.
(cid:129) Qualified Operating Systems: For information on qualified operating systems, see Qualified Hardware and Operating Systems.
(cid:129) Dongle Info (macOS Only): The Dongle Sentinel driver installer is no longer automatically installed when you install the editing application. The driver is now located in the Avid_Utilities folder (/Applications/Utilities/Avid_Utilities/Sentinel_Driver). If you have a dongle, manually install the driver from this location.
When installing the Sentinel Driver, check your System Preferences and select “Security and Privacy.” You may need to choose to Allow the driver to be accessed.
(cid:129) Media Composer now includes a dnxmov2mxf executable in the \Program Files\Avid\Avid Media Composer\SupportingFiles\Utilities folder. This executable allows you to manually convert MOV files with DNX essence with separately stored alpha to an MXF OP1a file with DNX essence and embedded alpha.
The tool is available for Windows, osX and Linux. To run on Windows, Visual C++ Redistributable for Visual Studio 2015 or Visual C++ Redistributable for Visual Studio 2017 is required.
If You Need Help Run the command from a command prompt on Windows or from terminal on macOS.
DNXMOV2MXF usage is:
dnxmov2mxf path_to_mov [path_to_mxf] Notes on Working with SRT For details on working with SRT, search for “Open IO Support for SRT” in the Help.
Decoded Output (cid:129) Due to the compressed streaming nature of SRT, and the variety of SRT decoding applications and devices available, the decoded output may not be in sync with the Media Composer desktop. Depending on the decoder being used, the output may be up to several seconds out of sync. Adjusting the buffering settings in the decoder as well as the SRT latency setting can help to improve the delay depending on your network's quality of service.
SRT Quality Bitrates (cid:129) The default quality settings for a 1080p/29.97 project are 5-15 Mbits/sec for low, 10-30Mbps for medium and 30-80 Mbps for high. Bitrates will vary, and might exceed the average values, based on the media being sent over SRT. Bitrates are scaled based on the frame rate and raster size, and may vary in the actual bitstream based on how efficiently the codec can compress the frames.
(cid:129) Only 8b quality is supported with SRT. Media Composer will automatically set the I/O to 8b quality if Media Composer is set to draft or 10b.
Projects and Media Support:
(cid:129) 2K/UHD/4K projects will be downconverted to HD formats at the same frame rate. For example, if you are working on a UHD 4k 23.976 projects, it will be converted to an HD 23.976p project.
(cid:129) Interlaced formats are not natively supported, but will be converted to progressive format at the equivalent frame rate.
(cid:129) SRT will mix multi-channel audio to stereo audio.
(cid:129) RGB is not natively supported and will be converted to YUV.
> **Note:** The SRT plug-in is supported with Media Composer | Enterprise and Media Composer |
Ultimate licenses only.
Security Guidelines As system and network security attacks become increasingly more inventive and persistent, Avid has adopted a new security strategy to help you, our customer and partner, better protect your assets and intellectual property. As you might know, Avid has traditionally recommended Changed in Media Composer v2022.7 Symantec Endpoint Protection as the preferred and qualified solution for much of the Avid product line. As of Q3, 2020, Avid introduced a more flexible strategy that provides general guidelines for protecting your Avid systems. This new policy allows you to choose the best security solution for your organization, while still following Avid best practices. Avid Media Composer allows you to install an endpoint detection and response solution on your system.While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://avid.secure.force.com/pkb/articles/en_US/troubleshooting/en239659 Changed in Media Composer v2022.7 This release supports macOS version 12.5.1.
Fixed in Media Composer v2022.7 The following have been fixed:
➤ Bug Number: MCCET-4612. Media Composer Options were not enabled when using a dongle for activation.
➤ Bug Number: MCDEV-16141. (Titler+) Text entry lagged behind keyboard input and sometimes caused a "Not Responding" state.
➤ Bug Number: MCDEV-16503. (Titler+) Avid Titler+ Dashboard disappeared when using a dual monitor setup with a floating Composer window.
➤ Bug Number: MCDEV-16089. (Titler+) Position (X and Y axis) did not align with global coordinate system and was affected by Rotation.
➤ Bug Number: MCDEV-16591. (Titler+) Changes to font size were not retained when switching between Move Mode and Text Mode.
➤ Bug Number: MCDEV-14303. (Titler+) Each Backspace (Delete) entry on an empty text layer was registered as an event, preventing the Undo command from functioning as expected, and sometimes causing text to vanish.
➤ Bug Number: MCDEV-16414. (Titler+) Quitting Media Composer while Avid Titler+ Dashboard and Effect Editor were open caused a Segmentation fault.
Fixed in Media Composer v2022.7 ➤ Bug Number: MCDEV-15669. (Titler+) Performance was significantly affected when multiple lines of text extended beyond boundaries of the viewer.
➤ Bug Number: MCDEV-15220. (Titler+) Clicking in viewer after rendering created an unintended keyframe.
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
Fixed in Media Composer v2022.7 ➤ Bug Number: MCCET-4657. In some instances, the "Exception: SETTING CLASS NOT REGISTERED" error message appeared after using the Command Palette to move the Segment Mode (Lift/Overwrite) button.
➤ Bug Number: MCCET-4576. Timecode window experienced a display glitch when switching between user profiles.
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
Fixed in Media Composer v2022.7 ➤ Bug Number: MCCET-4558. In some instances, Media Composer | Enterprise would not launch due to Avid NEXIS configuration errors, and users were not presented with any warning or informational message.
➤ Bug Number: MCCET-4449. When working with MultiCamera sequences, Media Composer performance slowed down and eventually did not respond.
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
Limitations Limitations The following are known limitations (cid:129) Photoshop PSD files are not supported for AMA linking if QuickTime is not installed.
(cid:129) Some fonts, by their design, are available only in Bold. On the macOS system it can happen that selecting a font does not produce any visual changes. Try selecting “Bold.” (cid:129) If you launch a project and receive an “Enable 3rd Party Emulation” warning, even if you select Enable in the warning dialog, you should also perform the following: Select File > Settings and click the Project tab. Click General Settings and select “Enable Bin Sharing on 3rd party storage emulating Avid NEXIS/ISIS.” ➤ Bug Number: MCCET-4710. (Windows)(MediaCentral | Production Management) “Exception:
Structured Exception” error appears when starting Media Composer and "Connecting to MediaIndexer" status is displayed on splash screen.
Workaround: Restart Media Composer.
➤ Bug Number: MCDEV-15413. In some instances, clips that will link and play cannot be made into a proxy if it includes a broken data track.
➤ Bug Number: MCDEV-16119. (Avid Artist DNxIQ) When trying to capture audio, you might receive an “Audio/video is unexpectedly no longer coming into the system” exception error. Note that this only happens the first time, subsequent audio captures are successful.
Workaround: Perform a capture with video first and then turn video off for the subsequent captures.
➤ Bug Number: MCDEV-15829. If you perform a clean install of Windows 11, Media Composer to Windows 11.
➤ Bug Number: MCDEV-15843. (Windows 11) In some instances, you cannot drag and drop from the File Explorer to a bin.
Workaround: Use the Media Composer Source Browser to import or link your media.
➤ Bug Number: MCDEV-14845. Avid Media Composer | Enterprise Admin Tool does not restrict NDI when Media Composer is in software only mode.
➤ Bug Number: MCCET-3702. Image Quality issues when adding UHD progressive clips to an HD interlace sequence:
Limitations The process Media Composer uses to mix and match video formats in a sequence is to transform the source clip's frame rate and frame layout to meet the project specifications; the motion adapters are added first, then spatial adapters are applied in order to provide expected playback dimensions.
For example, if you have a UHD 50p clip that you want to add to a 1080i Timeline, the UHD clip first gets split into 2 separate fields (UHD format), then each field gets independently resized to 1920x540 in HD. The export process puts those resized fields back together into a progressive HD frame but does not maintain the clarity of the original progressive frame.
Workaround: If you first transcode the UHD progressive clip to HD progressive and then add the HD clip to the interlace sequence, it forces the resize operation from UHD to HD to be done before the split gets into interlace mode.
➤ Bug Number: MCCET-3788. You might receive a “clip name is a clip in a multi-essence file that cannot be exported using the specified Embedded in AAF setting” when exporting embedded AAFs with OP1a audio clips.
Workaround: Consolidate the OP1a clips to Avid OP-Atom prior to performing the export.
➤ Bug Number: MCDEV-12988. (macOS) The AMA Drastic plug-in is not supported with Media Composer v2020.4 ➤ Bug Number: MCDEV-12735. Maestro graphics do not appear correctly in the Timeline if your system uses the Radeon video card.
➤ Bug Number: MCDEV-11481. Promoting a title from the Title Tool application to Avid Titler+ cannot be performed if it includes a motion adapter.
➤ Bug Number: MCDEV-11796. DPX files larger than 10bit might fail to link correctly.
Workaround: Go to File > Settings and click the User tab. In the Link Settings, click the Link Options tab and make sure Alpha Channel is set to Ignore.
➤ Bug Number: MCDEV-14376. Media Tool ignores the “Current project” filtering option and lists MXF OP1a media files that are not associated with the current project.
➤ Bug Number: MCDEV-8641. (AMD Graphics). Systems with AMD graphics cards might display tearing when performing Full Screen playback.
➤ Bug Number: MCDEV-9269. (Media Composer | Cloud) After performing a remote download operation on a sequence containing AVC-I 100 remote media, the downloaded media appears as XAVC-I 100.
Before Installing the Editing Application Workaround: Download the entire master clips.
➤ Bug Number: (macOS). You may occasionally see the menu bar flash followed by a brief beach ball. To fix this, deactivate “Displays have separate spaces” under System Preferences > Mission Control settings.
➤ Bug Number: MCDEV-9011. Intermittently, when working with the XDCAM Nablet Plug-in, you might see “Failed to get the sample position from the AMA Plug-in” errors if you have waveforms enabled in the Timeline.
➤ Bug Number: COGS-2560. While working in the Script Window, text operations (cut/copy/paste/delete/editing) can only be done in edit mode. See “Editing a Script” in the Help.
➤ Bug Number: MCDEV-5385. MultiCam editing with Panasonic LongG media is not supported with this release.
Before Installing the Editing Application (Windows) Overwriting During the Install Process If you are upgrading from version v2020.12.x or later, you can choose to perform an overwrite during the install process. For versions prior to that, you must perform a manual uninstall first.
Media Composer | Enterprise and Media Composer | Distributed Processing If you are working with Media Composer | Enterprise or Media Composer | Distributed Processing, please refer to the “Installation Prerequisites” section in the Media Composer | Enterprise Administration Guide and Media Composer | Distributed Processing Administration Guide to make sure you have compatible Avid MediaCentral Cloud UX Platform ISO and Avid MediaCentral Cloud UX Feature Pack ISO versions.
Avid DX Driver Separate Installer The Avid DX Driver is not automatically installed when you install the editing application. If you need to install the Avid DX Driver to work with your Avid IO device, you can install it separately.
The installer is located:
(cid:129) (macOS) /Applications/Utilities/Avid Utilities (cid:129) (Windows) Program Files\Avid\Utilities\DXDrivers Before Installing the Editing Application Before Installing the Editing Application in a MediaCentral | Production Management Environment Carefully read through the “Avid Editor Compatibility Matrix” guide (found using the following link) before upgrading. It might be necessary to also upgrade the MediaCentral Production Management components on the editing client.
http://avid.force.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts Buffer Error Message The editing application requires a minimum of 8GB RAM. If you try to install the editing application on a system with less than 8GB RAM, you will receive a buffer error and installation will not proceed.
Download Note To avoid “File Path too long” or a “File cannot be copied” warning while unzipping the downloaded installer, try placing the installer .zip on the root level of your C:\ drive and unzip it from that location.
User Right to Raise Thread Priority (Windows) Note for Domain Administrators: If your editing systems are part of a domain, you must give the user the right to “Increase Scheduling Priority.” This must be done within the Domain Group Policy on the domain controller by giving the right explicitly to the user or giving the right to a group and adding the user to that group. You will not be able to launch as a regular user if this is not set properly.
If you are part of a domain, a Domain Administrator should install and perform the first launch of the editing application.
Install as Administrator You need to first install and launch the editing application as an Administrator. If you are in a Shared Storage environment, mount your workspaces as an Administrator. You may then log off and log back in as a Standard user, if necessary.
After Installing the Editing Application After Installing the Editing Application AMA Plug-Ins You cannot install the AMA Plug-ins while the editing application background services are running. Make sure you Stop the services before installing the AMA Plug-Ins. The stop/start background services icon is on the menu bar (macOS) or taskbar (Windows). Once you install the new AMA plug-in, restart the services. See “Starting and Stopping Avid Background Services” in the Help.
Notes on Software Licensing If You Upgrade Your Operating System If you need to upgrade your operating system after you install your Avid editing application, first deactivate your software. After you upgrade your operating system and, if required, reinstall your application, you can reactivate your software. For information on activating and deactivating your software license, see the Installation Guide for Avid Editing Applications.
Minimum RAM Recommendation For this release Avid recommends 16 GB minimum, 32 GB recommended. Some features might require more RAM and specific hardware. See “Feature Performance” on page 16 for more info.
Qualified Hardware and Operating Systems Some features are processor-intensive and require specific hardware. See “Feature Performance” on page 16 for more info.
For 3rd-Party Open IO hardware qualification refer to the manufacturer’s documentation. See the Open IO Frequently Asked Questions document on the Knowledge Base:
http://avid.force.com/pkb/articles/en_US/faq/en422991 The following lists the qualified Operating Systems. Depending upon your hardware the qualified Operating Systems are:
(cid:129) Windows 10 64-bit 21H1or later (Professional and Enterprise) (cid:129) Windows 11 64-bit 21H2 or later (Professional and Enterprise) (cid:129) macOS 10.15.7, 11.x to 11.6.7, 12.x to 12.5.1 Feature Performance
> **Note:** macOS 10.14.6 Mojave is not supported with Media Composer 22.4 and later releases. Avid has not qualified macOS 12.x with the CrowdStrike anti-virus application. With the release of macOS 10.13.x and higher, Apple requires manual approval of loading
Kernel Extensions (KEXTs). (For example BlackMagic, and AJA IO devices install Kernel Extensions.) At installation time, you should get a dialog saying that the KEXT was not loaded.
You must go the “Security & Privacy” system preference and manually approve the KEXT. Keep the Security & Privacy pane open after you install the I/O device drivers so that you will see the notice that the driver has been blocked and press the “allow” button within 30 minutes of installing or the driver will be permanently blocked.
Qualified Workstations and Laptops For a list of qualified Windows and macOS systems, go to the following page: Avid qualified systems. Select either the Windows or macOS CPU Specifications pdf.
Feature Performance A number of features in this editing application are processor-intensive. As a result, you might experience problems if you are working on an older system. The following chart shows the hardware that Avid has successfully qualified when using these features. For a list of the qualified systems, see Qualified Workstations and Laptops.
Feature Description Recommended System 16K projects 96GB RAM minimum 48 Core Intel CPU systems with Nvidia RTX graphics Editing High Resolution, 64 GB RAM minimum, 96 GB HP Z8, Z6, High Frame Rate XAVC-I recommended Lenovo P920, P720, P620 systems Media (UHD/4k in Dell 7920, Dell 7820 59.94p) (cid:129) Dual gold 6254 3.1 Ghz turbo to 4.0 4 streams of media and Ghz 18-core (72 with HT) color adapters (cid:129) Dual Xeon Gold 6154 3.0 Ghz, turbo up to 3.7 Ghz 18-core (72 cores with Hyperthreading) (cid:129) AMD WX-7100 (cid:129) Nvidia RTX 5000, RTX 6000, AMD WX9100 Storage: 10Gb Ethernet Avid NEXIS Feature Performance Feature Description Recommended System 1080p/50 XAVC Long 16 GB RAM minimum Qualified PC Dual 6 Core or higher Baseband Capture core with Hyperthreading Editing High Resolution, 32GB Min, 64 GB recommended HP Z8, Z6, High Frame Rate DNxHR Lenovo P920, P720, P620 systems Media (UHD/4k in HP Z840 59.94p) HP Z640/Z620 Dell 7920/7910 Dell 7820/7810 Lenovo P910/P900/ Lenovo P710/P700 (cid:129) NVIDIA RTX 5000, 6000, AMD WX9100 (cid:129) NVIDIA P5000, M5000 or K5200 and AMD WX-7100 PCIe Gen3 Gfx card (recommended) Mac Pro (cid:129) 12 core (24 with Hyperthreading) 3 GHz (cid:129) Dual AMD FirePro 500/700 Graphics card Storage: 10Gb Ethernet Avid NEXIS Editing High Resolution 16 GB RAM minimum Qualified PC Dual 6 Core or higher Media (Higher than 2K+) core with Hyperthreading DMF and Background 32 GB RAM recommended Qualified PC Dual 6 Core or higher Transcode, Background Render core with Hyperthreading Media Composer | Cloud 16 GB RAM minimum. 24 GB or i7 Quad core or higher with higher recommended depending Hyperthreading upon system model.
J2K Capture Qualified PC Dual 6 Core or higher core with Hyperthreading Feature Performance Feature Description Recommended System XDCAM Long GOP Avid recommends 16 GB RAM Qualified PC Dual 6 Core or higher 9-way MultiCam with high stream count core with Hyperthreading sequences Storage: 2 x 1 Gb Ethernet or higher Avid NEXIS Stereoscopic 3D For optimal performance with Qualified PC Dual 6 Core or higher Stereoscopic 3D, use these higher performance systems. Avid core with Hyperthreading recommends a minimum of 16GB RAM when using Stereoscopic 3D.
XDCAM HD50 Capture Qualified systems HD RGB 4444 HD RGB capture requires a high Qualified PC Dual 6 Core or higher Apple ProRes 4444 end workstation.
DNxHD 4444 core with Hyperthreading Storage: 10Gb Ethernet Avid NEXIS AMA (QuickTime) AMA is a processor intensive Recommendation of qualified systems operation. Lower end platforms depends on your planned use of this may not offer optimum feature. Heavy usage of highly performance. Highly compressed compressed codecs requires the high end codecs such as H.264 will exhibit systems. (Dual 6 Core or Dual 8 Core minimal real-time performance. systems) AMA (RED) AMA is a processor intensive Qualified Xeon Workstations operation. Older platforms may not offer optimum performance. NOTE: RED plug-in uses the Graphics you will get better performance Processor. Better performance with high with higher end workstations. performance graphics cards.
AVCI-Intra Capture AVC-Intra capture with software 24 core and higher Windows systems codecs is supported. only.
Avid Artist I/O Device Compatibility Feature Description Recommended System AVCI-Intra AVC-Intra(AVC-I) is a high 4-Way MultiCam Playback quality, low bit-rate HD codec and is very CPU intensive.
Core Systems Four Stream Playback:
Core Systems AMA Workflows: Dual Quad, Dual 6 or Dual 8 core systems Avid Artist I/O Device Compatibility The following table shows the minimum version Media Composer supported with the Avid Artist I/O devices.
You must download the appropriate Avid Artist software from your Avid Master Account.
Minimum supported version Media Device Composer Avid Artist | DNxIO Media Composer v8.4.1 and higher Avid Artist | DNxIQ Media Composerv8.8.3 and higher Avid Artist | DNxIV Media Composer v8.10 and higher Avid Artist | DNxIP Media Composer v2018.8 Avid Artist | DNxID Media Composer v2018.9 Compatibility Chart NVIDIA® QuickTime®, The following table lists the driver, Windows Media™, shared storage, Sony® XDCAM™, Panasonic® P2, and Avid Artist Series versions that were qualified with the Avid editing applications. You can also refer to Documentation and version matrix.
Compatibility Chart IMPORTANT: For information on third party support (for example, Sorenson, Boris, etc) see the third party’s web site.
Item Versions Comments QuickTime Support v7.7.9 (Windows) Note: QuickTime v10X does not include v10.x, (v7.x legacy) (macOS) QuickTime Pro options.
Note: QuickTime is not supported with Windows 10.
https://avid.secure.force.com/pkb/articles /en_US/How_To/QuickTime-Support-an d-Security-on-Windows Avid Interplay See Knowledge Base article on IMPORTANT: The Avid Interplay Support compatibility. components that get installed on the editing application must be updated to the Avid Interplay version that is released with the editing application. These include the Media Indexer, Interplay Access, Interplay Framework, Interplay Transfer Client and ProEncode Client.
The Avid Interplay Server components can remain on the previous releases listed as supported. For details, see the “Avid Editing Application Compatibility with Interplay Releases” doc on the Knowledge Base.
NVIDIA Driver v472.98 See “Setting up the NVIDIA Card” on Support page 21.
For setting up the driver for stereoscopic, see the NVIDIA setup info in the Stereoscopic 3D Workflow Guide.
This version supports NVIDIA vGPU Software 13.2 for Virtual Machines. For more information visit Nvidia.com.
Shared Storage Avid NEXIS and Avid ISIS®. See “Shared Storage Support” on Support page 22.
Sony XDCAM driver v2.13 (XDCAM Transfer for The VFAM firmware version for macOS) PDW-U1 is 2.600.
The PDW-U2 is 2.810.
Windows FAM v2.3.2 and VFAM The driver can be downloaded from v5.0.2 Sony's website http://esupport.sony.com/.
Media Composer Compatibility with Audio Devices Item Versions Comments Panasonic P2 drive (macOS) v3.1.7 There is currently no P2 writeback support for macOS clients.
(Windows) v2.24 Avid Artist Series EuControl software v3.4 See the User’s Guide for information on (Euphonix) Artist Series Color setup information.
Media Composer Compatibility with Audio Devices For details on compatible audio hardware and software:
Audio Hardware and Software Refer To Control Surfaces Supported Control Surfaces Avid Artist I/O Supported Avid Artist I/O Devices Media Composer and ProTools Co-install Co-install information for Media Composer and ProTools Setting up the NVIDIA Card To set up the NVIDIA card, you must make sure you have the correct display driver version (install the display driver if necessary, and set the correct display settings. See the “Compatibility Chart” on page 19 for information on the supported driver(s).
Prior to setting up the NVIDIA card, check to make sure you have the correct display driver version. If you do not have the correct NVIDIA driver, you can install it from the Nvidia website - Nvidia.com.
To check the NVIDIA display driver version:
1. Right-click the Desktop and select NVIDIA Control Panel. You can also open the Windows
Control Panel and double-click the NVIDIA Control Panel icon.
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
Avid Media Composer ReadMe (cid:129) Created 3/29/23