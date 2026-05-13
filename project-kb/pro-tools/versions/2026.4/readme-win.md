---
product: pro-tools
product-area: editing
version: "2026.4"
release-date: 01/04/2026
doc-type: readme-win
source: pdf
confidentiality: public
date-added: 13/05/2026
status: current
---

Avid Pro Tools Software v2026.4 ReadMe for Windows Tools® This ReadMe documents important compatibility information and known issues for all tiers of Pro software, version 2026.4 on Windows 11 (24H2 and 25H2).
> **Note:** For detailed compatibility information, including supported operating systems, visit the Pro Tools
compatibility pages online.
Compatibility Avid can only assure compatibility and provide support for qualified hardware and software configurations.
For the latest compatibility information—including qualified computers, operating systems, and third-party products—visit the Avid website (www.avid.com/compatibility).
iLok USB Smart Key and Pro Tools Authorization PTSW-158204: Pro Tools does not recognize iLok connected to USB3 ports.
Workaround: Texas Instruments USB3 controllers are currently incompatible with iLok generation 1 & 2 USB keys. iLok keys connected to a Texas Instruments USB3 controller will not be recognized by Pro Tools or the ilok.com website. Connect any iLoks to USB2 ports instead. .
Pro Tools Installation PT-202003: Uninstalling Pro Tools does not uninstall all components that are installed with Pro Tools.
Workaround: When you uninstall Pro Tools using the Programs and Features Control Panel, some components that are installed with Pro Tools are not uninstalled (such as Avid Effects, Avid Application Manager, and Avid Application Manger Helper). Use the Programs and Features Control Panel to uninstall these components separately.
PT-240899: Uninstalling Pro Tools | Ultimate results in Pro Tools | First track presets being removed if both Pro Tools | Ultimate and Pro Tools | First are co-installed on the same computer.
Workaround: If Pro Tools | Ultimate and Pro Tools | First are co-installed on the same Windows 10 partition, uninstalling Pro Tools | Ultimate results in Pro Tools | First track presets being uninstalled. To reinstall Pro Tools | First track presets, reinstall Pro Tools | First.
PT-249802: Assertion error or incorrect audio device chosen when launching Pro Tools.
Workaround: When launching Pro Tools under certain conditions, such as for the first time following a clean OS installation or after Pro Tools has unexpectedly quit, either an incorrect audio device can be selected as the default automatically or an assertion error dialog will display that prevents the use of the software. If either scenario occurs, quit Pro Tools, then relaunch while holding the “N” key to show the Playback Engine dialog. Select the appropriate playback device and click OK.
PT-213567: Virus Alert on D-Control Resource412.dll file which is a part of the Pro Tools Installer Package.
Workaround: Microsoft Windows users may encounter several false-positive Win64:Evo-gen (Susp) malware alerts on Korean language *.dll files (e.g., D-Control Resource412.dll) while running the Pro Tools Installer on systems running anti-virus software. To avoid this issue, temporarily disable anti-virus software, and run the Pro Tools Installer. Consult the manufacturer of your anti-virus software for more information.
PT-243411: Installation of QuickTime Windows may fail with a application hang.
Workaround: The installation of Apple QuickTime may hang and must be force quit on the Windows Operating System. This can occurs regardless of your Pro Tools installation. If you encounter this issue, install all Microsoft Windows updates available for the system and try again. If problems persist, consult a search engine for the latest troubleshooting information as the steps to work around the problem can change over time based on Windows Updates installed and available status.
General Compatibility Avid lets you install an endpoint detection and response solution on your Pro Tools client. While Avid does not support any specific solution, you can find general guidelines and information related to CrowdStrike Falcon on the following Avid Knowledge Base page:
https://kb.avid.com/articles/en_US/troubleshooting/en239659 PT-321737: Pro Tools quits unexpectedly when loading an AAX plugin on launch.
Workaround: If Pro Tools quits unexpectedly when loading an AAX plugin, you are prompted to move the plugin to the “Plugins (Unused)” folder.
PT-250326: Slow HDX firmware upgrades or downgrades when running in the background.
Workaround: If you switch to other applications while upgrading or downgrading your HDX firmware, the firmware upgrade/downgrade process runs much slower than expected. To avoid this issue, leave Pro Tools in the foreground and do not run other applications while upgrading or downgrading your firmware.
PT-249930: Graphical issues with Pro Tools when using 4K resolution monitors on Windows.
Workaround: While working with 4K resolution monitors on Windows it is recommended that you set the “Scaling performed by” parameter to “System” in the enabled “Override high DPI scaling behavior” option of the ProTools.exe > Properties > Compatibility tab. Using the setting “System Enhanced” can result in graphical issues with Pro Tools.
PT-261766: When opening a session with Sound Designer II files missing the .sd2 extension, those files are listed as corrupted files.
Workaround: When opening a session with Sound Designer II files that are missing the .sd2 extension, those files are listed as corrupted files in the Session Notes dialog. SD II files with the extension are listed as not supported.
PT-270744: Can not import audio-only MOV file using Import Video or drag and drop.
Workaround: When importing a MOV file which contains only audio, dragging and dropping the file to the timeline or using the Import Video command results in an error. To import an audio-only MOV, use the Import Audio command.
PT-266359: Audio cannot be imported from a video file with an unsupported video codec.
Workaround: It is not possible to import audio from a video file if the video codec is unsupported.
PT-217858: Pro Tools may not maximize while an ISO or other optical media is mounted.
Workaround: If minimized while an ISO or optical media disk is mounted, Pro Tools may not re-maximize from the Task Bar, Task Manager, or via Application Switching until the ISO or optical disk are ejected. To avoid this issue, ensure that no such media is mounted while maximizing Pro Tools.
PTSW-184397: OMF files that contain video are not compatible with Pro Tools 12 or higher.
Workaround: OMF sequences that contain video cannot be imported into Pro Tools 12 or higher. However, OMF sequences that contain embedded or referenced audio files can be imported into Pro Tools 12 and higher. To import a sequence that contains video media, use a linked AAF sequence.
108837: Automatic Update Notification will not connect through a proxy server that requires authentication.
Workaround: Software Updater will not find an active Internet connection when behind a proxy server that requires authentication to gain Internet access. To work around this, the client machine with Software without requiring authentication.
103563: Aero causes errors at lower HW Buffer sizes.
Workaround: With Aero enabled in Windows, Pro Tools will not play back without errors at HW Buffer sizes of 128 and below. Turn off Aero if you want to use lower HW Buffer sizes.
PT-228201: Changing Waveform Cache Versions preference blocks certain features within Soundminer.
Workaround: If Soundminer is installed, keep the “Waveform Cache Versions” preference setting at zero, its default value. Setting this preference to a different value may prevent Soundminer from determining the path to the currently open Pro Tools session, which will block certain features within Soundminer.
PT-230027: Soundminer “Spot to DAW” does not work if Pro Tools preferences are corrupted.
Workaround: If you can no longer spot to Pro Tools from Soundminer even though audio files are actually copied to the audio files folder. If this issue occurs, quit Pro Tools, clear the Pro Tools preferences, and relaunch Pro Tools.
PT-217940: Incompatibility Warning: Eleven Rack and MOTU MIDI Interfaces on Windows 10 and Windows 11.
Workaround: MOTU MIDI interfaces may not be fully compatible with the Eleven Rack when it is used as a PBE device operating on Windows 10 and Windows 11. We strongly advise against using the Eleven Rack as a PBE device in conjunction with MOTU MIDI interfaces. Doing so could potentially result in disruptions to MIDI signals, leading to errors and Pro Tools becoming unresponsive. We recommend you consider alternative configurations. Specifically, the Eleven Rack and MOTU MIDI interfaces are both compatible with various other PBE devices. Use other PBE devices to avoid potential complications associated with MIDI signal interruptions and software instability. If you encounter issues, check for the latest driver updates for your MOTU MIDI interfaces and Eleven Rack.
Known Issues The following sections document known issues you may encounter when using Pro Tools, along with workarounds if they exist.
General Pro Tools Issues PT-357016 Track outputs are cleared after round-trip from Pro Tools 2026.4 to Pro Tools 2025.10.x and back.
Workaround: A session saved in Pro Tools 2026.4, opened and re-saved in 2025.10.x, and then reopened in 2026.4 will have track outputs reset to “none.” This only affects session interchange between 2026.4 and 2025.10.x (not 2025.12.x). After opening the session in Pro Tools 2025.10.x, save it, and then reopen and save it again in either Pro Tools 2025.10.x or 2025.12.x. Once the session has been opened and saved twice in this manner output assignments will be present when next opened in 2026.4.
PT-346242 Pro Tools cannot open various application windows after updating Workspace Database file Workaround: When updating your currently installed Pro Tools version to a newer one, the Workspace Database file may need to be updated. After updating this file, Pro Tools might be unable to open various application windows.
To correct this issue, try the following:
- Quit and relaunch Pro Tools
- Click somewhere outside of the Pro Tools application and then switch back to Pro Tools
PT-320541: When launching Pro Tools while logged in with a non-administrator account you are prompted for an administrator password.
Workaround: Install Pro Tools using an administrator account and launch at least once to prevent non- administrator users from being asked for an administrator password.
PT-325714: When launching Pro Tools for the first time after installation, clicking Start Tutorial does not open the tutorial.
Workaround: If you have a username with non-English characters on Windows, clicking Start Tutorial on first Pro Tools launch opens the session but does not open the tutorial. To avoid this issue, log in with username that uses only English characters.
PT-268070: Input signal is briefly audible when starting playback with a record-armed track.
Workaround: If any record-armed track is receiving input signal, that signal may be briefly audible when starting playback. If you encounter this issue, disable record-arm on that track.
PT-220001: Pro Tools quits unexpectedly when disabling an internal audio device.
Workaround: Disabling an internal audio playback device from the Windows Control Panel while Pro Tools is running may cause Pro Tools to quit unexpectedly. To avoid this issue, ensure that Pro Tools is closed before making any changes to the audio device in the Windows Control Panel.
PT-278731: Changing the Playback Engine with a project open requires that you quit and restart Pro Tools.
Workaround: Changing the Playback Engine with a project open requires that you quit and restart Pro Tools even if the selected Playback Engine does not normally require this. To avoid this issue, change the Playback engine before opening or creating a project. If you do encounter this issue, quit Pro Tools as required, relaunch Pro Tools, and then reopen the project (File > Open Recent).
PT-276783: While using the Create Session from VENUE command to create a 64-track session, it is possible that Pro Tools may not be able to create the new session.
Workaround: If you encounter this issue, use Create Session from VENUE again, but use a new (unique) name for the Session file.
PT-252207: Playback and recording fails after switching sessions with H/W Buffer Size set to 2048.
Workaround: Depending on the session Sample Rate, it is possible to use 2048 H/W Buffer Size in Pro Tools (sessions with Sample Rate set to 88.2 kHz or higher). If you then open a session that uses lower Sample Rate setting that does not support a H/W Buffer Size setting of 2048 (such as 48 kHz), Pro Tools does not playback or record. If you encounter this issue, select a supported H/W Buffer Size, such as 1024, in the Playback Engine dialog (Setup > Playback Engine).
PT-271255: When bus recording cascaded stems in any punch mode on HDX systems, recorded audio is not properly aligned.
Workaround: When bus recording multiple cascaded tracks in any punch mode on HDX systems, recorded audio may not punch in at the correct time and may include some signal bleed from intermediate tracks.
With HDX Classic, enable Input Monitoring on the intermediate tracks to avoid this issue. With the HDX Hybrid Engine, enable Input Monitoring to avoid signal bleed from intermediate tracks, but phase offsets may occur between recorded audio on cascaded tracks.
PT-269111: Bus recording from a source track with a hardware insert and No Input results in early offset of recorded audio.
Workaround: Internal bussing from one audio track to another audio track with a hardware insert and No Input on source track results in audio being recorded 700 to 1024 samples early. To avoid this issue, select any hardware input or bus for input on the source track.
PT-285001: With both LLM and the Allow sends to persist during LLM preference enabled, Pre-roll and Post- roll are only heard when Pro Tools is in a punch record mode.
Low Latency Monitoring Allow sends to persist during Workaround: When both and the LLM preference are enabled, Pre-roll and Post-roll are only audible while in QuickPunch, TrackPunch, or DestructivePunch record mode. Prior to Pro Tools 2022.4, Pre-roll and Post-roll were not audible in any record mode while in this state.
PT-267468: 32 Sample Hardware Buffer Size is not available.
Workaround: In some cases when creating or opening a 44.1kHz or 48kHz sample rate session after previously quitting Pro Tools from a 176.4kHz or 192kHz sample rate session, the 32 sample Hardware Buffer size may not be available. If you encounter this issue, re-launch Pro Tools and open your 44.1/48 kHz session and the 32 sample Hardware Buffer size will be available.
PT-267227: 2048 HW Buffer Size setting not available at higher sample rates.
Workaround: After switching to a session with a higher sample rate, the highest hardware buffer setting may not be shown in the Playback Engine. Quit and relaunch Pro Tools to resolve this issue.
PT-267891: Playback does not start after switching from a higher sample rate session.
Workaround: In certain cases with the HDX Playback Engine, when closing a session with a sample rate of 176.4/192 kHz and a Hardware Buffer Size of 2048 samples, and then opening a 44.1/48 kHz sample rate session, you may not be able to play back the session. If this occurs, open the Playback Engine and change the Hardware Buffer Size to a different setting to resolve this issue.
PT-257172: Pro Tools 2019.10 and later does not automatically link to WAV files upon OMF import.
Workaround: When importing an OMF that references BWF WAV media into Pro Tools 19.10 and later, the associated WAV files do not link automatically and are identified as missing. This occurs even if the media is placed in the same folder as the OMF, and all file attributes match. To bring the media online, perform a manual relink when prompted. Note this only occurs with OMF; AAF is unaffected.
Additionally, if the missing WAV files are located in the same folder as the OMF, navigating within the Relink window is significantly slower (delays between clicks and results). To avoid this issue, place the OMF in a different location than the associated media before importing the OMF. As long as the OMF and media are separated, relink navigation works correctly.
58531: Pro Tools does not launch.
Workaround: Pro Tools will not launch if hardware drivers are not installed or if there are no Inputs or Outputs set in the Control Panel for your audio interface. If Pro Tools does not launch, be sure the drivers for your audio interface were installed before Pro Tools installation. For M-Audio and some third-party interfaces, if the drivers are already installed, go to the Control Panel for your audio interface and make sure either the Analog or S/PDIF Inputs and Outputs are enabled.
SSENG-28533: Unable to create Pro Tools Session on NEXIS using Windows client if real-time virus protection enabled.
Workaround: When using Pro Tools with NEXIS on a Windows client, add Pro Tools as an exclusion from the anti-virus scans to be able to create a Pro Tools session.
PTSW-188679: Pro Tools quits unexpectedly when manually moving clips with sections out of the session length bounds.
Workaround: Clips that are moved outside of the session bounds may cause Pro Tools to quit unexpectedly.
To avoid this, adjust the Session Length setting (in the Session Setup window) to ensure that there is sufficient time for all material in the session.
PT-201624: Pro Tools is slow to launch and may become unresponsive if a CD or DVD is mounted by your system.
Workaround: If a CD or DVD is mounted by your system, Pro Tools takes an exceptionally long time to launch. Additionally, Pro Tools may become unresponsive while a CD or DVD is mounted by your system. To resolve this issue, exit Pro Tools, eject the disc, and then relaunch Pro Tools.
PTSW-181403: Error messages are displayed while unzipping the downloaded Pro Tools installer zip file.
Workaround: While unzipping the downloaded Pro Tools installer .zip file, errors are displayed saying that certain files are missing. If you proceed and run the unzipped installer, then these files will be reported missing. To avoid this issue, move the downloaded .zip file to the root (top most) directory of a volume first (such as the C: drive), and then unzip.
PT-348832 and PT-350210: Opening a session saved in Pro Tools 2025.6.1 or earlier, tracks with FMP (Follow Main Pan) sends wider than the main output path or if you change a track output path to a wider format, the Front/Rear position will be centered with zero divergence.
Workaround: When opening a legacy session (such as Pro Tools 2025.6) containing a track with an FMP send wider than the main output path, all pan settings other than front and rear position will be zeroed in PT 2025.10. However, audio does not pass to rear channels until the main L/R panner is moved. Replace the main output with a path of equal or greater width to the send, then adjust pan parameters as desired.
If after changing the track's output path to a wider format and the main output pan parameters reset to zero, save the session under a new name. Then, use the Global Renderer Management menu to clear the track's pan automation. Import Session Data from the original session, selecting only the main pan and match the track.
PT-276702: Short automation lines to –inf attenuate audio too early.
Workaround: If you are using automation lines that attenuate to or from –inf, and the line is approximately 60ms or less, add additional breakpoints along the line to improve accuracy and avoid this issue. This can help even though the added breakpoints do not change the curve of the line.
PT-264403: Shifting an Edit Group containing frozen tracks removes clips and effect automation on non- frozen tracks.
Workaround: Shifting the contents of an Edit Group with Frozen Tracks can remove Clips and effect automation on non-frozen tracks. To avoid this issue, suspend the group before Shifting the contents.
PT-273775: Mute/unmute with dense automation causes level drop.
Workaround: In certain conditions, the Volume level may be lower than the original (~7dB) on the tracks with dense automation while toggling the Mute button, or changing automation mode from “Read” to “Off” and back to “Read” during the playback.
PT-249098: Dense automation results in –9155 Error.
Workaround: Due to higher voice counts available on Pro Tools Native systems, you might encounter AAE – 9155 errors when many automation parameters are written to multiple tracks on the same sample. If you regularly encounter “AAE –9155 Automation Too Dense” error messages at the exact same point try the following:
- Select all automation and choose Edit > Thin All Automation.
- If the session contains many parameters written at the exact same spot, try removing some of the
unnecessary automation by deleting it or changing the Automation mode from Read to Off on respective tracks.
If the Automation was written to any unnecessary tracks in the session, make those tracks
- Inactive.
- Select the suspect automation and nudge it by a sample or two.
PT-263781: Data lost while shifting automation across multiple tracks with mixed channel widths.
Workaround: When using the Shift command to move automation data on multiple tracks, if one of the tracks is a wider channel width than mono, automation on one track can be replaced by automation from another. In some cases, automation can be lost. If this occurs, Shift automation on tracks of different channel widths separately.
PT-316443: Track lane misalignment in the Edit window.
Workaround: In rare cases, an existing session may open with its track lanes misaligned in the Edit Window.
To resolve this issue, either minimize then maximize the Edit Window, or resize all tracks. After realigning all tracks, save the session, close it and reopen it.
PT-236038: The Mix Window cannot be expanded past a certain vertical size.
Workaround: The Pro Tools Mix Window has a vertical size limit. As a result, the window may not be stretched to fill the entire screen on high resolution monitors without scaling. If you encounter this issue, it is recommended that either the display be scaled to more fully fit the screen, or that you scroll through the Mix Window to view areas that might otherwise be out of view.
No Number: Clicking on a Pro Tools window that may be visible will not always bring Pro Tools to the foreground, especially if a process is running in Pro Tools (such as Bounce to Disk).
Workaround: If Pro Tools is not the foreground application, you can bring it to the foreground by doing one of the following:
- Click the Pro Tools icon in the Windows Taskbar.
- Press the Start+Tab keys to bring the Pro Tools application to the front.
PT-235174: OK button in the Tempo Change dialog is grayed out after using manual tempo in a previous session.
Workaround: If you encounter this issue, toggle the Conductor button off and on. The OK button should then be usable in the Tempo Change dialog.
PTSW-47133: Session templates retain I/O settings and some preferences, display settings, and window layouts.
Workaround: Pro Tools session templates retain the I/O settings and some of the preferences, display settings, and window layouts from the system on which the template was created. Consequently, new sessions based on a template restores several session properties from the original system. These properties are retained by Pro Tools until you change them or another session or template is opened that replaces them. This also means that if a new blank session is created after using a template, the properties from the template will be used for the new session.
The properties retained from templates include default track height, view settings, window size and File > position, and I/O Setup. You can update templates by making the desired changes, using the Save as Template command (be sure to select the “Install template in system” option), and then selecting the template you want to replace.
PTSW-125913: Trying to load a session from an unmapped network drive results in the error: “Pro Tools application has stopped working”.
Workaround: When trying to load a session from an unmapped network drive, the error “Pro Tools Application has stopped working” will occur. To avoid this problem, be sure to map the network drive to a drive letter, set up the drive as transfer volume, and then open the session.
PT-258820 and PT-260627: Session saved with Edit window closed may result in hidden tracks being shown and closed folders being opened upon session reopening.
Workaround: If a session was saved in a state with some tracks explicitly hidden and an Edit window closed, reopening it may result in hidden tracks being shown. The workaround is to always save the session with the Edit window open.
UME-905: Pro Tools does not play back immediately after importing a large and complex AAF sequence.
Workaround: Importing a complex AAF sequence that contains many video files and edits may cause Pro Tools to be in a Play/Pause state after all files have finished linking. This may also happen when reopening the session. If you encounter this, stop the transport, wait 30 seconds, and then attempt playback again. To avoid this problem completely, you can bounce the video and re-import, or request that the video editor flatten the video upon export.
PT-210384: Pro Tools reports AAE Error 2.
Workaround: You may encounter AAE Error 2 if you have two or more volumes on your system with the same name. To avoid this issue, ensure that each volume on your system is uniquely named.
PT-217391: Pro Tools becomes unresponsive when bouncing certain multichannel paths to MP3.
Workaround: The only multichannel format Pro Tools supports for bouncing to MP3 is 5.1. Bouncing any other multichannel format to MP3 (LCR, LCRS, QUAD, 5.0, 6.1, 7.0 SDDS, 7.1 SDDS, 7.0, and 7.1) results in Pro Tools becoming unresponsive and you will have to force quit.
PT-202888: Offline Bounce takes much longer than expected.
Workaround: Offline Bounce times can increase significantly in sessions that have output and input output is assigned to Track 3 input, and so on).
PT-266089: Bouncing Mix from UHD or 4K raster J2K source to H.265 fails.
Workaround: Pro Tools displays an error when attempting a bounce to a H.265 with UHD or 4K raster J2K source on the timeline. To avoid this error, either re-encode the source J2K clip to a different codec, or choose a different destination codec.
No Number: Windows erroneously reports that Pro Tools has stopped responding.
Workaround: Clicking on the splash screen while Pro Tools is launching can result in a Windows error stating that Pro Tools has stopped responding. Pro Tools is actually still loading normally and will finish launching if you just don’t do anything or if you click “Wait for the Program to Respond.” PTSW-149273: Automation is replaced instead of overlaid when using Adjust Session Start Time to Match Source Start Time when importing session data Workaround: Automation can sometimes be replaced instead of overlaid when using Adjust Session Start Time to Match Source Start Time when importing session data. This issue may occur if the source session start time (of the session being imported) is earlier than the current session start time. This issue can be avoided if you instead import the session data from the session with the later start time into the session with the earlier start time. You must also not enable the Adjust Session Start Time to Match Source Start Time option, and select Maintain Absolute when prompted.
PTSW-17100: Start+L launches the Switch Admin User prompt instead of nudging cursor to the left.
Workaround: Start+L Key launches the Switch Admin User prompt instead of nudging the cursor to the left.
As a workaround, enable Keyboard Focus (A...Z) and use the L key.
PT-219356: Auto Low Latency Monitoring is lost when opening a session created in Pro Tools 12.6 or higher in versions of ProTools lower than 12.6.
Workaround: If a session is saved with Auto Low Latency Monitoring (“Blue Mode”) enabled in 12.6 or higher, it is disabled when that session is opened in versions of Pro Tools lower than 12.6 (in 12.5 for Auto Low Latency Monitoring example). You will have to re-enable if desired. This issue does not occur when opening sessions in Pro Tools 12.6 and higher that were saved with Auto Low Latency Monitoring enabled in a version of Pro Tools lower than 12.6.
PT-229609: No sound when previewing audio files in Workspace if Delay Compensation was enabled during playback.
Workaround: If you enable Delay Compensation during both session playback and audio file preview in a Workspace browser, Workspace preview is silent until session playback is stopped. To avoid this issue, enable Delay Compensation before starting session playback and preview in a Workspace browser.
PTSW-34086: Audio clips on tick-based tracks do not play at the correct tempo after opening a Reason song with a different tempo.
Workaround: Audio clips on tick-based tracks do not play at the correct tempo after opening a Reason song with a tempo that is different from the one in your session. To correct this, make any tempo change via the Conductor track or the Manual Tempo input and the clips will play back correctly.
PT-273476: AAE Error –9093 during playback when using Rewire.
Workaround: When using a Rewire panel application in a Pro Tools session, you may encounter an AAE Error –9093 during playback. If this occurs, close and reopen the session to restore the ability to playback the session.
PTSW-133070: Cannot run Reason or Record as ReWire clients if they have not first been launched and set up as a standalone application.
Workaround: Reason and Record need to be launched and setup as a stand-alone applications before running them as a ReWire clients with Pro Tools. Do the following:
- Launch Reason or Record in stand-alone mode and follow the on-screen instructions.
- Quit Reason or Record.
- Launch Pro Tools and insert Reason or Record as a ReWire plugin on an audio, Auxiliary Input, or
Instrument track.
PTSW-149570: When importing audio from a network share, “file is unreadable” or other errors occur.
Workaround: When importing an audio file from a network share using the Import Audio dialog or a direct shortcut to the share, Pro Tools may display an error such as “The audio file is unreadable by Pro Tools” or “The mp3 cannot be imported because QuickTime is not installed,” even though QuickTime is installed on the system. If this occurs, map a drive letter to the network share and use the drive letter in the Import Audio dialog to navigate to the audio file.
PT-30818: Changing width of a track that has Track markers causes the Marker Lane to be removed and can cause assertion errors.
Workaround: Changing Width of a Track that has Track markers causes the Marker Lane to be removed and can cause assertion errors. To avoid any assertion error, save and re-open session after this issue occurs.
PTSW-61863: Importing MP3 or MP4 files without QuickTime installed.
Workaround: If Pro Tools has been run on a system on which QuickTime was not present, but then QuickTime is installed later, there is the possibility that Pro Tools has indexed QuickTime files as “Unknown.” These files will remain as unknown even after QuickTime has been installed. If this occurs, either delete DigiBase Database files and try again, or navigate in the browser to any “Unknown” QuickTime file and select “Update Database for Selected.” Conversely, if Pro Tools has been run on a system with QuickTime present, but then QuickTime is uninstalled, there is the possibility that QuickTime files have been indexed as known audio file types that can no longer be understood by Pro Tools since QuickTime is now absent. If this occurs, delete all database files and try again.
PT-264552: Move and Relink does not work.
Workaround: When many files are selected, Move and Relink throws assertion and does not work. The first one or two selected files may be moved before the assertion is thrown, but then the rest are not moved. Use Copy and Relink instead. Once Copy and Relink has finished, manually delete the original files.
50454 and 50457: Error message “Could Not Complete Your Request because the System Cannot Find the File Specified (2)”.
Workaround: This message can appear while logged into a non-administrative account and doing either of the following:
Performing destructive AudioSuite processing
- Locking files in the Workspace browser
- This is possibly because the audio file has read-only permissions. In order to correct this, you must be able
to log into an administrative account in Windows and change the permissions of the audio file so you have full read and write access to the audio file. If you do not have administrative access of the computer, then you must either contact the administrator of the computer to resolve this problem, or use the File > Save Copy In command to create a copy of the session with all of its audio files.
43997: Groove Templates.
Workaround: Pro Tools will be unable to retrieve custom Groove Templates that are saved in an incorrect directory. Groove Templates should be saved only within the “Grooves” folder.
PTSW-152707: Clip Groups can be dragged to tracks in Playlist view even though Clip Groups are not supported in Playlist view.
Workaround: It is possible to drag a clip group to a track in Playlist view even though clip groups are not supported in Playlist view. Normally, when switching to Playlist view from another track view, any clip groups on that track are automatically ungrouped. While clip groups dragged to tracks in Playlist view may appear to work properly, it is recommended that you ungroup them while in Playlist view to ensure proper behavior.
51775: Importing tracks with Import Session Data clears the Undo queue.
Workaround: It is documented in the Pro Tools Reference Guide that importing tracks through Import Session Data clears the Undo queue. More specifically, the Undo queue gets cleared when Main Playlist Option is set to “Import - Replace existing playlists.” The Undo queue does not get cleared if the option is set to “Import - Overlay new on existing playlists” or “Do Not Import.” PT-214780: Rendering Clip Gain or Clip Effects on multi-channel audio clips in an interleaved session results in multi-mono files.
Workaround: In an interleaved session, rendering Clip Gain or Clip Effects on a multichannel audio clip creates mono audio files for each channel rather than the expected single interleaved, multichannel audio file.
PT-220418: Real-Time Fade Adjustment tool can display the fade preview outside of the Timeline under certain Window Scrolling conditions.
Workaround: If the area before the start of the Timeline is visible when using Continuous Window Scrolling or if the Center Playhead option is enabled, and the area before the start of the timeline appears on-screen, then adjusting a fade using the Real-Time Fade Adjustment Tool can cause the fade preview to appear outside of the fade boundary or Timeline. To avoid this issue, only use the Real-Time Fade Adjustment Tool in No Scrolling, After Playback, Page scrolling modes, or when the start of the Timeline is off-screen.
PT-222834: Recording track group output featuring 90º volume automation changes while writing VCA automation can result in unwanted fades.
Workaround: If audio clips on a track within a track group feature sharp 90º volume automation changes and the track group has a VCA assigned to it, bus recording the output of the audio track to another audio track while VCA automation is being written may result in the new recorded audio fading in and out around the 90º volume automation changes. As of Pro Tools 2025.6, this has been improved on native tracks and Playback Engines . Decreased accuracy now occurs only for approximately 900ms after touching or releasing a VCA fader. The behavior on DSP tracks is unchanged. To avoid this issue, record any VCA automation first and then record the track group output in a separate record pass.
PTSW-181825: Unrendered mix and match AAFs will not properly import.
Workaround: If the error “A video file and its associated clips were removed because its timecode rate is incompatible with the project type” appears, it is likely that your AAF contains unrendered mix and match video. To avoid this, render mix and match AAFs from Media Composer before or during export.
PTSW-182322: AAF files that contain AMA-linked audio cannot be imported.
Workaround: Pro Tools cannot import AAF files that contain AMA-linked audio files. AMA-linked audio must be imported or transcoded in Media Composer before the AAF is exported.
PTSW-145325: With the Pro Tools Web browser, links to external sites do not work as expected.
Workaround: In the Pro Tools Web browser, navigating to external sites using links from Avid web pages (such as links to social networks like Facebook and LinkedIn) may not work as expected. For the sake of security, the Pro Tools Web browser is restricted to avid.com pages. If you want to browse sites other than avid.com, or share avid.com pages with friends, use the Launch Page in External Browser feature to view the page in your default Web browser and navigate from there.
PTSW-136012: Clip names appear incorrectly after selecting Field Recorder channel matches, or expanding to new tracks.
Workaround: This can occur if the file name of a Field Recorder channel match contains a hyphen followed by a number greater than zero. Pro Tools names new clips by incrementing the number after the hyphen. If a field recorder file is already named in this way (such as “Filename-01”), then new clips created by selecting a Field Recorder channel match or by expanding a track may have names different from the parent file. To avoid this situation, avoid using hyphens in Field Recorder file names.
PTSW-152147: Field Recorder matches appear offset after AudioSuite rendering if the session timecode rate does not match the file timecode rate.
Workaround: If a portion of a file has been rendered with an AudioSuite plugin, an offset can occur when expanding field recorder matches in cases where the session timecode rate does not match the timecode rate of the audio file. To avoid this issue, you can either render the whole file with AudioSuite (rather than only a portion of the file), or use Whole File mode when rendering AudioSuite processing.
PTSW-180659: External Field Recorder matches do not show up after an initial index pass.
Workaround: If external field recorder matches do not show up on a field recorder track after the initial index pass, save and reopen the session.
Editing PT-332175: Edit window does not scroll when dragging a clip outside of the window if a plugin window is open.
Workaround: Holding any modifier key while dragging a clip outside of the Edit window allows scrolling.
However, dropping a clip into a plugin is prohibited if a modifier key is held.
PT-207491: Fades are not restored after moving clips using the Grabber tool.
Layered Editing Workaround: With enabled, moving a clip that partially covers a fade on another clip with the Grabber tool so that it no longer covers the fade does not restore the fade to its original duration.
You will need to manually trim the fade to its original duration.
PT-222824: The Undo command does not remove a clip copied to a playlist by virtue of the Send Overlapped Clip to New Playlist preference.
Workaround: When the Send Overlapped Clip to New Playlist preference is enabled, and you move a clip completely over another, the overlapped clip is moved to a new playlist. However, if the track is not in Playlists view, Undo restores the clip on the main playlist, but it does not remove the clip from the alternate playlist. You will have to manually remove that clip from the alternate playlist if you so desire.
PT-236287: Designating the Main playlist as the Target playlist after a new playlist was created and then undone may result in Pro Tools quitting unexpectedly.
Workaround: If a track already has an alternate Target playlist and its creation was undone, then trying to set Main playlist for the same track as the Target playlist may result in Pro Tools quitting unexpectedly.
PT-237313: No indication of designated target playlist in Playlist selector menu.
Workaround: When a track contains one playlist that is the Target playlist, the blue target icon does not appear next to the playlist name in the Playlist menu. This issue is resolved once another playlist is created.
PT-219668: Looping clips does not send fully overlapped clips to an available playlist.
Workaround: With both Layered Editing option (Options > Layered Editing) and the Send Fully Overlapped Clips to Available Playlist While Editing preference enabled (Setup > Preferences > Editing), clips that are fully overlapped by a looped clip (Clip > Loop) are not sent to an available playlist. Manually move clips that will be fully overlapped by the looped clip to another playlist before looping the clip.
PT-220888: Fully overlapped clip not sent to new playlist if the clip is overlapped by creating a fade.
Workaround: When a clip is fully overlapped by the creation of a Fade In or Fade Out, the overlapped clip is not sent to a new playlist even though the Send Fully Overlapped Clips to Available Playlist While Editing preference is enabled. To avoid this issue, create a shorter fade and then extend it to fully overlap the clip in question. That clip is sent to a new playlist. Alternatively, manually move the clip to a new playlist.
PT-220491: With Layered Editing enabled, deleting overlapping clips that were created with Duplicate or Repeat can result in some overlapped clips being unexpectedly edited as well.
Workaround: With Layered Editing enabled, deleting overlapping clips that were created with Duplicate or Repeat can result in some overlapped clips being unexpectedly edited as well depending on the order in which the overlapping clips are deleted. To avoid this issue, delete any overlapping clips in order from left to right.
PT-255202: EditorTools unable to communicate with Pro Tools if the Task Manager window is open.
Workaround: If the Task Manager window is open, EditorTools is unable to communicate with Pro Tools.
Close the Task Manager in order for EditorTools to function properly.
Projects and Collaboration No Number: It is strongly recommended that you do not log in to the same project on multiple systems using the same Avid Master Account login.
Workaround: When you are connected to the internet and then you open a Pro Tools Project, Pro Tools checks to see if there are any other machines that are logged in to the same Avid Master Account and both with the same project open. If the project is detected as being open on another system it should be closed.
This prevents the project bundle on the cloud from becoming corrupted by competing updates from multiple systems using the same account. To avoid this situation, it is strongly advised that you close projects when leaving systems idle if it is possible that you will be working on the same project from another computer with the same Avid Master Account.
PT-285685: Cannot download or open any Cloud Collaboration Projects using a Non-Admin account.
Workaround: Cloud Collaboration Projects are not supported on guest accounts at this time. Administrative rights are required.
MP-5538: Pro Tools doesn't indicate incoming contact requests.
Workaround: When using Avid Link in Pro Tools, as opposed to using the desktop client, incoming contact request notifications are visible in the Home screen under the Notifications tab. Go to the Avid Link menu Notifications.
and choose Home, then navigate to the Notifications section by clicking PT-255960: Playing back recorded MIDI CC data incorrectly triggers the Upload Track Change button.
Workaround: When playing back MIDI CC data on a shared MIDI or Instrument track, Pro Tools may incorrectly indicate changes on that track for upload. Since clicking the Upload Track Changes button synchronizes the track with server, it is recommended do this until you have made additional changes to the track.
PT-225252: “Failed: couldn't connect to server...” errors encountered after restarting your computer.
Workaround: Cloud Client Services require a few minutes to start, so if you encounter “Failed: couldn't connect to server...” errors when using Pro Tools collaboration features right after a system reboot, just wait a few minutes for Cloud Client Services to start and then relaunch Pro Tools.
PT-219746: Additional Playlists indicator does not appear on shared tracks with collaborators' systems.
Workaround: If you duplicate a playlist on a shared track, the Additional Playlists indicator does not light for collaborators. Subsequently making a change to the alternate playlist, however, does notify collaborators.
PT-220208: Projects may not synchronize to Avid Cloud after remaining open overnight.
Workaround: After a Project has been open for a protracted period of time, saving to the Avid Cloud may not succeed. If you see a Project upload not completing in the Task Manager, it is recommended that the Project be saved and closed, and that you sign-out and then back in again. You should then be able to complete the Project upload.
PT-202643: Disconnecting from the internet or closing a project during project synchronization can result in failed project synchronization.
Workaround: To prevent potential synchronization with projects, do not disrupt the project synchronization while it is in progress. Avoid disconnecting from the internet, turning off WiFi, shutting your laptop, or quitting Pro Tools during this time. To monitor the progress of project synchronization, choose Window > Task Manager.
PT-202615: After opening a project that has not completely uploaded, you will need to reboot your computer to continue working on the project.
Workaround: If your project does not completely upload to your cloud account, quit Pro Tools, reboot the computer, and then launch Pro Tools | First to continue working on your project.
PT-204847: “There was a problem uploading the project” error.
Workaround: If your Documents folder (e.g., C:\Users\JohnDoe\Documents) is configured with Windows encryption, you may encounter a “There was a problem uploading the project” error. To avoid this error, right-click the Pro Tools folder and “disable encryption.” PT-211627: Removing a collaborator from your project may not relinquish ownership of tracks claimed by that collaborator.
Workaround: When a collaborator who has ownership over shared tracks is removed from a project that you own, their track ownership may not be automatically relinquished. Should this issue occur, click the Track Ownership button for these tracks and ownership should be returned to you after about five minutes.
PT-213277: Project uploads may pause while Shuttle Lock is active.
Workaround: Entering Shuttle Lock mode while project uploads are in progress may temporarily prevent uploads from finishing until the playhead comes to a stop. To avoid this issue, confirm that all uploads have completed in the Task Manager before using Shuttle Lock mode in a project.
PT-220200: Edit selection moved to the wrong playlist on a shared track.
Workaround: On a shared audio track received from a collaborator who reordered the track's playlist lanes (by click-dragging the lanes up and down), the Move To... commands in the Right-click menu sends the selection to the wrong playlist. The collaborator reordering lanes and sharing can be on a Mac or Windows system, however, only Windows systems will have the issue on the receiving end. To avoid this issue, make sure that collaborators do not manually reorder playlist lanes on shared tracks.
PT-279522: DestructivePunch Enable does not check available disk space before processing, which leads to Pro Tools becoming unresponsive if all available space is used.
Workaround: When preparing tracks for DestructivePunch, Pro Tools will attempt to use any necessary disk space to create contiguous files for each record-enabled track. If all available disk space is used before processing completes, Pro Tools becomes unresponsive. To avoid this issue, be sure there is enough disk space before enabling DestructivePunch. To conserve space, adjust the “DestructivePunch File Length (Setup > Preferences) setting in the Operation Preferences to cover only the necessary length.
PT-212577: DestructivePunch record passes are not transmitted to collaborators.
Workaround: Using Destructive Punch to update a shared file does not transmit a track change and the file is not updated on collaborator systems.
PT-209796: Changed Display Name in Artist Chat is not updated in the Dashboard until signing out and signing back in.
Workaround: After making a change to the Display Name in your Artist Chat profile, the Pro Tools Dashboard is not updated with the new user name until you sign out and sign out and back in.
PT-211701 and PT-214391: Artist Chat messages of 1,800 characters or more may not be received or even sent.
Workaround: Attempting to send an Artist Chat message of 1,800 or more characters can appear to send but may not be received by other users in the chat or they may not be sent at all. The actual maximum limit for Artist Chat messages is 2 kilobytes per message. It is recommended that uncommonly long messages be posted in shorter segments.
PT-211627: Dropped Keystrokes in Artist Chat and Sign On Window.
Workaround: In some cases keyboard keystrokes will fail to be transmitted to the Sign On and Artist Chat windows.
CLOUD-3285: Pasting a text string inside of the “< >” characters into Artist Chat results in a blank entry.
Workaround: Any text in contained by “<” and “>” is disallowed for security reasons. Please do not use these characters in Artist Chat messages.
PT-212607: When sharing a track with plugins such as Melodyne or Space, only the waveform cache inside the plugin is uploaded and shared, but not the referenced audio file .
Workaround: Media assets for Plugins (such as Melodyne or Space) that use external media, like a waveform cache or impulse responses, may not always be copied with the shared tracks to the cloud for use by other collaborators.
Ableton Link PT-263719: Pro Tools is not seen by other Ableton Link peers after leaving and rejoining session.
Workaround: Sometimes when a computer running Windows leaves an Ableton Link session, then tries to rejoin, they are not seen by the other Windows systems until they also leave the session and rejoin.
PT-263560: Pro Tools goes out of sync with an Ableton Link session after receiving a tempo change.
Workaround: When Pro Tools receives a tempo change while synced to other peers with Ableton Link, it may lose phase alignment synchronization. It remains tempo locked, but the position in the cycle is incorrect.
This can be corrected by restarting the Pro Tools transport to re-establish sync.
No Number: Count Off is unavailable with Ableton Link.
Workaround: Count Off is unavailable with Ableton Link. If Count Off is enabled, enabling Ableton Link disables Count Off.
PT-270144: Ableton Link is disabled with Sync X or SYNC HD.
Workaround: Because Ableton Link can interfere with the operation of synchronization peripherals it is disabled with Sync X or SYNC HD enabled.
I/O Setup 60730: I/O Setup files can be saved with illegal characters when Enforce Mac/PC Compatibility option is not enabled.
Workaround: When importing I/O Setup files (.pio files) from Mac sessions that were not saved with the Enable Mac/PC Compatibility option enabled, files that have illegal characters are not converted successfully—illegal characters do not get replaced with an underscore.
PTSW-127517: Master Faders assigned to mapped output buses function only on that specific bus, not for the output channel as a whole.
Workaround: Because a Master Fader works on a bus, not on an output path or output channel, there may be certain configurations in which the level sent to the physical I/O is not reflected on any meters in the Pro Tools application. If the configuration includes output subpaths or has multiple buses assigned to a single output path, the overall signal level from these combined sources (including any clipping indication) will only be displayed on the interface itself. You can avoid using multiple output paths or output buses simultaneously by routing your sources to a single mapped output bus and assign a Master Fader to that.
PT-252964: 2nd port of MTRX DigiLink I/O card does not show inactive in the I/O Setup in 192 kHz sessions.
Workaround: The second DigiLink Mini port on MTRX DigiLink I/O expansion cards is unavailable at sample rates of 176.4 kHz and 192 kHz.
PTSW-194443: Opening a session saved to .ptf (Pro Tools 7–9) from Pro Tools 12.x or higher in Pro Tools 8.1 or lower results in incorrectly mapped IO.
Workaround: For any session saved to .ptf (Pro Tools 7–9) from Pro Tools 12.x or higher requires that IO Settings be manually corrected when opening that session with Pro Tools versions 8.1 and lower. Manually map the correct IO settings in the IO Setup before playing back the session.
File and Disk Management PT-231812: Auto-backups are not created during playback or recording.
Workaround: Auto-backups are not saved while Pro Tools is playing back or recording. To ensure your work is saved during long periods of playback or recording, either manually save during playback or recording, or after stopping playback or recording. Auto-backups continue to function as expected when the transport is stopped.
PTSW-32639: Auto-saving with external hard drives that have little free space can result in data loss.
Workaround: When recording to hard drives that do not have much free space available and when the Auto-Save preference is turned on, it is possible to completely fill your record drives, and cause data loss.
While this occurrence is rare, it can also result in external drives that will fall offline and not be able to used on the Windows system. It is recommend that you do not allow your record drives to become completely full, and that you manually back up your projects on a regular basis.
PTSW-57355: Pro Tools unable to relink to audio files and fade files that have illegal characters when Enforce Mac/PC Compatibility is not enabled.
Workaround: A Pro Tools session is unable to relink to audio files and fades that have illegal characters if the session was copied without the Enable Mac/PC Compatibility option enabled. The workaround is to open the DigiBase Project Browser and manually relink each file by Unique ID.
PTSW-151579: Importing interleaved BWF files exported from Pro Tools 10 and higher into Pro Tools 9.0.x (and lower) may cause Pro Tools to quit unexpectedly.
Workaround: When exporting any greater-than-stereo multichannel interleaved WAV (BWF) files other than 5.1 from Pro Tools 10 and higher, and then importing them into Pro Tools 9.x or lower, Pro Tools quits unexpectedly. To avoid this problem, export audio files for import into lower versions of Pro Tools in another file format (such as AIFF or multi-mono).
PT-251446: Pro Tools quits unexpectedly when indexing Workspace or Field Recorder Search outside of a session.
Workaround: If Pro Tools consistently quits unexpectedly when indexing a directory with the Workspace, or when using the Select Areas to Search functionality with field recorder workflows, this might be resolved by trashing your Workspace database files. To do this, clear the contents of the following folder:
<boot drive>:\Users\Public\Pro Tools\.
PTSW-52463: Unable to open Mac sessions from Workspace if illegal characters in session name were converted to underscore symbols.
Workaround: You will not be able to open a Mac session from the Workspace if the session name contains illegal characters that were converted to underscores. The workaround is to open the session using the File > Open command.
PT-267125: OP-1a MXF files appear only as audio files in the Workspace.
Workaround: OP-1a MXF files may contain both video and audio media. However, OP-1a MXF files only appear as audio files in the Workspace.
PTSW-28069: Multiple files with the same name do not relink properly when Save Copy In command is used with Preserve Folder Hierarchy option.
Workaround: When saving a session copy with Preserve Folder Hierarchy checked, files with the same name may not relink properly when using Manual Relink. When opening the session copy, use Automatically Relink to locate the correct files. If the session has already been opened using Manual Relink and some files are still offline, select Relink Offline in the Project Browser to manually relink the remaining files.
37572: Missing files when opening a session created by a lower version of Pro Tools.
Workaround: When opening some sessions created by a lower version of Pro Tools, some files may be missing. You should be able to relink these files in the Relink window by Name and Duration. In some cases Match Format may not result in found links.
PTSW-178130: After Relinking files the Relink window does not retain its “revealed/open” status.
Workaround: Although the checkbox remains selected, the reveal status of volumes is not retained if the Relink window is automatically reopened. Be sure to reveal the volumes so that the enabled checkboxes are visible in order to reliably relink to missing files.
No Number: “Access Violation” on playback of read-only sessions.
Workaround: Pressing play in a session recently restored from CD-ROM may result in a dialog stating “Access Violation.” This happens if the session (and its audio files) are marked with the Read-Only flag. If you do not know how to remove the Read-Only flag from your files, please consult Windows Help.
PTSW-189868: When relinking audio files, mismatched channel widths are not found.
Workaround: When relinking audio files, it is possible to link files with different channel widths. This is not a supported workflow and may have unpredictable results. Ensure that the channel width of linked files match the channel widths of clips in the session to avoid this issue.
Importing Multichannel Files Pro Tools 2026.4 addresses issues around channel ordering and naming of multichannel files on import and export that were caused by discrepancies between different channel ordering methods (iXML channel info metadata, WavEXT channel mask metadata, and the physical order of channels within files). The solution has been designed to reconcile this information whilst maintaining backwards compatibility with legacy versions of Pro Tools. As a result, files created by third-party applications will now import to the correct track format in Pro Tools and with the correct channel order, and furthermore, files created by Pro Tools will be recognized correctly by other applications.
PT-346519 Importing certain third-party immersive files (that specifically use WavEXT channel mask metadata rather than iXML) into a session without consolidating or converting, and then opening that session in Pro Tools 2025.12.2 or older, plays back with an improper channel order.
Workaround: Consolidate the files before opening the session in older Pro Tools versions (this is easiest to do at the import stage).
PT-346587 Importing or opening a session created by Pro Tools 2025.12.2 or older that links to certain third- party immersive files (that specifically use WavEXT channel mask metadata rather than iXML) and have been manually reordered to address incorrect channel order, will play with improper channel order in the later Pro Tools version.
Workaround: The easiest solution is to right-click the affected clip, choose "matching alternates" and re- select the same clip. Alternatively, consolidate the affected files in Pro Tools 2025.12.2 or older before opening in the later Pro Tools version.
PT-347779 Importing or opening a session created by Pro Tools 2025.12.2 or older that contains certain third-party 5.x.x files (that use WavEXT channel mask metadata) that were created by import/convert workflow, will play with improper channel order.
Workaround: Manually reorder the files into the correct channel order.
Exporting Multichannel Files PT-320398 5.1 audio bounced as part of a multi-stem (PolyWAV) file always uses Film channel order.
Workaround: Bounce the stems separately. Alternatively, use a third-party metadata editing utility to manually reorder the channels as desired.
Elastic Audio PTSW-20602: Maintaining phase coherency with Elastic Audio pitch processing.
Workaround: When there is Elastic Audio Pitch processing enabled on a track, switching from Polyphonic, Rhythmic, or X-Form to Monophonic or Varispeed can disrupt phase coherency. To preserve phase coherency in this case, be sure to clear all Elastic Audio Pitch processing from the track before switching to the Monophonic or Varispeed algorithm.
PTSW-33894: Cannot import Elastic Audio tracks with the Consolidate From Source Media option.
Workaround: Use Copy from Source Media to import Elastic Audio tracks.
PTSW-33768: Drift in an audio file may occur when using Elastic Audio and the Monophonic or X-Form algorithms.
Workaround: Drift in an audio clip may occur when using elastic audio depending on how much the clips is expanded or compressed when using the Monophonic algorithm. If you are using elastic audio with material that contains transient information in it that you would like to keep from drifting, you should use the Polyphonic or Rhythmic algorithms.
PTSW-47311: Elastic Audio clips on Playlist lanes are not rendered.
Workaround: In Playlists View, any Elastic Audio clips on Playlist lanes are not rendered (waveform is “off- line”) when changing the track’s Elastic Audio processing from Real-Time to Rendered. Using the object grabber to select any off-line clips, promoting them to the main playlist or copying and pasting the clips in place will render using the selected Elastic Audio algorithm.
Melodyne Editing and ARA Processing PT-288978: “Monitor when editing blobs” (preview) feature does not work on the Record armed or InputMonitor-enabled tracks for HDX, HDX Hybrid, and Carbon Playback Engines since the Melodyne plugin is Native-only.
Workaround: Melodyne preview is unavailable with Pro Tools | HDX and Pro Tools | Carbon systems for tracks in DSP mode (when Record armed or InputMonitor-enabled) since Melodyne is a Native only plugin.
Exit DSP mode (disable Record or InputMontoring) to be able to preview Melodyne editing.
PT-286468: When playback over a Melodyne-analyzed clip starts, sample-accuracy is maintained until reaching any Melodyne-edited note(s). From there on, Melodyne minimizes phase errors of adjacent notes (“blobs”) and thus is no longer sample accurate until reaching the next “hard” note separation.
Workaround: If you add a hard separation after the edited blobs (rightmost tool in the toolbox, first sub- tool: “separation type tool”), from there after the separation and onward it will again be phase-aligned.
Note that there actually needs to be a gap where the hard separation is in order to reset note transitions and to play the unmodified audio accurately. In addition to adding a hard separation after the edits as described, shorten either note left or right of the hard separation slightly so that there is a small gap, then audio will be phase-aligned following the edits. Alternatively, you can insert a manual fade with the fade tool to reset note transition tracking.
PT-291848: Every “Copy” operation over the same partially selected Melodyne audio clip adds a new redundant record to the Clip List.
Workaround: To avoid redundant records in the Clip List do not press Command+C more than once if the selection has not changed.
XSOUNDRADI-62: Freezing or un-freezing tracks drops their alignment state if the tracks had been ARA processed with Auto-Align plugin.
Workaround: Freezing or un-freezing tracks drops their alignment state if the tracks had been ARA processed with Auto-Align plugin. For more information, including possible workaround, see https://soundradix.freshdesk.com/support/solutions/articles/5000889289.
Track Commit and Track Freeze PT-210026: Relinking to missing rendered “frozen” Auxiliary Input tracks does not yield any results when reopening a session.
Workaround: If there is missing rendered audio from frozen Auxiliary Input tracks, they cannot be relinked after first time of reopening a session. Task Manager will report: “Some Files to relink Not Found.” To correct this issue, close and reopen the session, and try to relink to the missing files again.
PT-210128: Frozen tracks are not translated by AAF and Interplay unless committed.
Workaround: Only the unprocessed source audio on frozen tracks is translated by AAF and Interplay To ensure that the desired track audio processing is translated accurately for AAF sequences (and Avid Interplay), commit those tracks rather than freeze them.
PT-207317: Committing clips on Instrument tracks by dragging them to audio tracks with the Downmixer plugin may render an incomplete clip.
Workaround: Committing MIDI clips on Instrument tracks by dragging them to audio tracks with Downmixer may render an incomplete clip. Using the Grabber tool on these incomplete clips may not function over the incomplete areas of the clip. To avoid this issue, Commit Instrument track clips to new Audio tracks before inserting the Downmixer plugin.
PT-208300: When committing from two or more Instrument tracks in a session with tempo changes by dragging and dropping to audio tracks, and where the Instrument tracks include a mix of sample-based and tick-based tracks, the tick based committed clip is trimmed to match the source MIDI original duration even though the audio committed from tick-based MIDI follows the tempo changes.
Workaround: To avoid this issue, use the Trim tool to reveal the rest of the committed audio or commit sample-based MIDI clips and tick-based clips separately.
MIDI PT-345735: With MIDI Live Mode enabled and plugins on Master Fader track, record-enabled or input- monitored Instrument tracks play out of sync and late (depending on the Master Fader delay).
Workaround: When MIDI Live Mode is enabled and you have plugins on Master Fader tracks, record- enabled or input-monitored Instrument tracks may play out of sync with the rest of the tracks in the session and be delayed depending on the reported delay of the Master Fader. Disable plugin delay compensation on the Master Fader track in the Mix Window to avoid this issue.
PT-337234: With MIDI Live mode enabled, MIDI Beat Clock Virtual Instruments do not synchronize the internal sequencer with the disk MIDI data when the Instrument track is record-enabled and routed to an Auxiliary Input track.
Workaround: With MIDI Live mode enabled, MIDI Beat Clock Virtual Instruments like drum machines do not synchronize their internal sequencer with the MIDI notes on the timeline when the Instrument track is record-enabled and routed to an Auxiliary Input track. Disable MIDI Live mode to avoid this issue.
PT-341237:When an Individual Target Instrument track is controlled by another Instrument or MIDI track, live-recorded MIDI notes are positioned earlier on the timeline even when MIDI Live Mode is on.
Workaround: When an Individual Target Instrument track is controlled by another Instrument or MIDI track, live-recorded MIDI notes are positioned earlier on the timeline even when MIDI Live Mode is activated. To avoid this issue, use Chain-in mode instead of Individual Target mode.
PT-266337: Clip Gain and Clip Effects are ignored when converting audio to MIDI by drag and drop from the Clip List.
Workaround: If an audio clip on the timeline includes Clip Gain and/or Clip Effects, dragging the same clip from the Clip List to a MIDI or Instrument track ignores Clip Gain and/or Clip Effects when the MIDI data is extracted. To include Clip Gain and/or Clip Effects when the MIDI data is extracted, drag and drop the audio clip from the audio track instead of the Clip List.
PT-250083: Score Editor is illegible with hundreds of MIDI tracks are in a session.
Workaround: Avoid opening the Score Editor when there are hundreds of MIDI tracks in your session. The Score Editor will be illegible when opened with many tracks in a session and the showing and hiding of tracks may result in Pro Tools freezing.
PT-210853: Pro Tools does not recognize a MIDI device that is connected or powered on while Pro Tools is running.
Workaround: Pro Tools does not recognize a MIDI device that is connected or powered on while Pro Tools is running. Quit and relaunch Pro Tools for the MIDI device to be recognized. All MIDI devices should be connected and turned on before launching Pro Tools.
PTSW-46839: Unavailable MIDI input paths for MIDI and Instrument tracks are not indicated.
Workaround: The device or path name for MIDI Input on MIDI and Instrument tracks is not italicized and grayed out when opening a session on a system where the device or path are not actually present.
PTSW-24193, SIB-164: Versions of Sibelius lower than 7.5 do not launch when using the Send to Sibelius command.
Workaround: When you first install any of the supported Sibelius packages (Sibelius, Sibelius First, or Sibelius Student), the Send to Sibelius command in Pro Tools will return a false error stating that Sibelius is not installed in the system. To avoid this problem, launch Sibelius manually and create a score document.
This will only needs to be done once, after which the Send to Sibelius command should function properly.
PTSW-49297: When using Import Session Data on a MIDI track with Real-Time Properties enabled and set to using diatonic transposition, transposition is based on the first key signature in the session only.
Workaround: When importing session data from a session that includes multiple key signatures and a MIDI or Instrument track with the “Transpose in Key” Real-Time property enabled, the transposition will be based only on the first key in the session. This can be corrected by toggling the Real-Time Properties off and on, at which point the diatonic transposition will be correct for each key.
PT-320605: MIDI and Instrument tracks using ‘Chain In’ are unassigned when session is opened on earlier versions of Pro Tools.
Workaround: Sessions opened on Pro Tools 2023.12 (or earlier) lose their MIDI output assignment if the MIDI output was assigned to ‘Chain In’. You can re-assign the MIDI output or you can preemptively assign the track to an ‘Individual Target’, if you know that your session will be opened in an earlier version of Pro Tools.
PT-320241: Online track bounce or commit of a tempo synchronized virtual instrument will be out of sync after an offline bounce or commit, if the track is using MIDI chain in.
Workaround: Online track bounce or commit of a tempo synchronized virtual instrument will be out of sync after an offline bounce or commit, if the track is using MIDI chain in. To avoid this issue, save and reopen the session before performing an online track process if you know that you’ve done an offline process previously.
PT-318934: Not all supported Virtual Instrument plugins provide MIDI Out (MIDI Thru) with Pro Tools MIDI Chains.
Workaround: The following plugins do not currently provide MIDI Out (MIDI Thru) with Pro Tools MIDI Chains:
- Noise Engineering
- Spitfire all plugins
- Waves OVox
- Waves Flow Motion
- Arturia Analog Lab V Play (free)
- Fabfilter Twin
- ADSR Sample Manager
- Baby Audio Atoms
- Minimal Audio Current
- DiscoDSP Discovery Pro
- Newfangled Audio Generate
- UAD Minimoog
- UAD Opal
- UAD PolyMax
- Unfiltered Audio Lion
- MIDI Live Mode
PT-342676: When MIDI Live Mode is enabled, the signal from the Virtual Instrument on the record-armed track may experience latency, causing it to be misaligned with other tracks that are routed to the same bus.
Workaround: When MIDI Live Mode is enabled, the signal from the Virtual Instrument on the record-armed or input-monitored track may be delayed on playback and misaligned with other tracks that are routed to the same bus. This issue arises particularly when there is a track in the session that has high latency plugins but is not routed to the bus. MIDI recorded on this Instrument track may be placed incorrectly, but sound in sync with other tracks routed to the Auxiliary Input track until the Instrument track is rec-enabled. Disable the delay compensation on the Instrument track or keep all your tracks routed to the same final Auxiliary Input track to avoid this issue.
PT-342678: MIDI is recorded early with MIDI Live Mode on the Instrument track routed to an Auxiliary Input track if the session has high latency plugins on other tracks that are not routed to the Auxiliary Input track.
Workaround: When MIDI Live Mode is enabled, MIDI may be recorded earlier on the Instrument track routed to an Auxiliary Input track if the session has high latency plugins on other tracks that are not routed to that Auxiliary Input track. While it sounds fine and aligns well with other tracks routed to the Auxiliary Input track when the track is record-enabled, it plays early once the track is disarmed, resulting in a sound that reflects its original recording timing. To avoid this issue, disable the MIDI Live Mode when working with this type of session routing or route all tracks to the same Auxiliary Input track.
PT-336324: With MIDI Live Mode enabled, MIDI loopback may be late depending on the Hardware Buffer Size.
Workaround: When MIDI Live Mode is enabled, MIDI notes recorded from one track to another using either virtual or hardware MIDI loopback may appear late on the timeline, depending on the Hardware Buffer Size.
To avoid this issue, disable MIDI Live Mode before re-recording MIDI.
PT-336000: With MIDI Live mode enabled, simultaneously recorded MIDI and audio from an external hardware synth are not aligned.
Workaround: When MIDI Live mode is enabled, MIDI and audio recorded live from an external synthesizer may not align on the timeline depending on the Hardware Buffer Size. As a result, the MIDI data may appear late compared to the audio. This misalignment is a known design limitation of MIDI Live Mode, Disable MIDI Live Mode when simultaneously recording MIDI and audio from an external hardware MIDI instrument to avoid this issue.
PT-343542: Audio from Vienna Ensemble Pro (and other instrument hosts) is recorded late when using AOS if Instrument track input monitoring and MIDI Live mode are both enabled. (PT-343542) Workaround: When recording audio from Vienna Ensemble Pro (VEP) using AOS, the recorded audio may be late if input monitoring is enabled on the Instrument track and MIDI Live Mode is active. To ensure proper timing when printing audio from VEP, disable input monitoring on the Instrument track during recording, or turn off MIDI Live mode.
Plugins
> **Note:** For known issues about specific plugins, see the Audio Plugins Read Me.
PT-313911: When the Plugin menu organization is changed before opening a session, AudioSuite plugins are grayed out and cannot be instantiated.
Workaround: When the plugin menu categorization is changed in the Preferences prior to opening a session, all AudioSuite plugins appear grayed out and cannot be instantiated after loading a session.
Restart Pro Tools to us AudioSuite plugins.
PT-331469: New “plugin” spelling breaks compatibility with some SoundFlow scripts.
Workaround: In Pro Tools 2024.10, throughout the user interface, the old spelling “plugin” has been updated to “plugin.” This change affects SoundFlow scripts and macros where users have manually specified label names or UI element titles that use the word “plugin.” You will need to adjust these scripts to the new spelling to keep the scripts and macros working properly with 2024.10.
PT-325376: Default EQ and Dynamics plugins are reset when opening sessions of different sample rates.
Workaround: After setting an EQ or Dynamics plugin as default, opening or creating a session of a different sample rate may cause the defaults to be reset unless you first quit and relaunch Pro Tools.
PT-318442: Updating existing plugins while Pro Tools is running may result in unexpected behavior.
Workaround: Although it is now possible to install and immediately use plugins without having to restart Pro Tools, it is not recommended to update existing plugins as this can result in undesired behavior, for example graphical issues or even Pro Tools quitting unexpectedly.
PT-325577: Click II Plugin is not delay compensated on Instrument tracks.
Workaround: Automatic Delay Compensation is not applied to Instrument tracks with MBC Plugins inserted, when the MIDI output selector of Instrument track is set to None. In case of the Click II Plugin, use Aux Input or Audio tracks instead or Disable Plugin Delay on the Instrument track hosting the Click II Plugin to turn on Automatic Delay Compensation for this track in session.
PT-314181: Plugin license dialogs appear twice during Pro Tools launch.
Workaround: Certain third-party plugin license dialogs appear twice when launching Pro Tools. This occurs if the license is not present during the first launch of Pro Tools after installing the plugin. On subsequent launches, the license dialog appears only once. This issue may occur with Plugin Alliance products.
PT-319086: Pro Tools hangs during initialization of EON-Arp Plugin when Corwdstrike Falcon is installed.
Workaround: In case when corporate Antivirus software is used, such as Crowdstrike Falcon, inserting EON- Arp Plugin on an Instrument track might cause Pro Tools to become unresponsive for up to one minute.
PT-272796: Plugins cannot be inserted once the maximum number of voices are used.
Workaround: Once the maximum number of voices have been used, plugins can no longer be inserted on tracks. To be able to insert plugins, reduce voice usage (such as by making some tracks inactive). Once voice usage is reduced from the maxim limit, you can once again insert plugins.\ PT-268663: Signal generator plugin is not bypassed for a moment when duplicating a track.
Workaround: A short, audible pop may occur in monitors when duplicating a muted track with Signal Generator plugin. To avoid this, inactivate the track before duplicating it.
PT-201687: Purchasing and installing a newer version of an already installed plugin may cause a system restart.
Workaround: If you use the In-Application Plugin Marketplace to purchase and install a plugin that is already installed on your system, your computer may restart during installation. This only occurs if the currently installed version is older than the version you just purchased and downloaded. If you want to buy an additional license for a plugin you already own please do so at https://shop.avid.com. If you want to install the latest version of a plugin that you already own, please visit https://account.avid.com/subscriptions or https://www.avid.com/plugins; find the version of the plugin you want, and then download and install it.
PT-250123: Using Plug & Mix plugins after a DSP insert on HDX systems can result in Pro Tools quitting unexpectedly or freezing, and offline Bounce issues.
Workaround: Inserting Plug & Mix Native plugins after a DSP insert can result in Pro Tools quitting unexpectedly. It is recommended that use Plug & Mix plugins only before any DSP insert on a track. If your session already has a DSP plugin preceding Plug & Mix Native insert, remove Native Plug & Mix plugin first and then switch the order of inserts to avoid this issue. It is a known issue that Offline Bounce will fail if Plug & Mix plugins are preceded by DSP inserts on one or more tracks. In this case, use Online Bounce to Disc.
PT-233584: Pro Tools quits unexpectedly when opening any Facebook Audio 360 plugin after installing the FB360 video player while connected over remote desktop.
Workaround: To avoid this issue, do not operate sessions with Facebook Audio 360 plugins over a remote desktop connection.
PT-273158: Internally bused tracks from an AOS plugin are missing from offline bounce.
Workaround: (HDX Classic Only) Internally bussed tracks with outputs from multichannel plugins (such as AOS plugins) assigned to their inputs will be missing when performing an off-line bounce. Use real-time bounce to ensure that these tracks are included in the bounce.
PT-237401: The inputs of tracks fed by plugin Auxiliary Output Sends may become unassigned if the plugin is recalled as a Track Preset on another track.
Workaround: If a track containing a plugin feeding other tracks using Auxiliary Output Sends (AOS) is saved as a Track Preset, recalling that Track Preset elsewhere in a Session or Project may interfere with the routing of the tracks being fed by the original instance of the plugin. It is recommended that Track Presets containing plugins with AOS assignments either be avoided or created in with “Plugin Assignments” unchecked in the “Track Data to Recall” dialog.
PT-273287: With a plugin with Auxiliary Output Sends is inserted after a hardware insert on a non-DSP Mode enabled track, AOS output signal may be offset by the amount of the System Delay.
Workaround: (HDX Hybrid Engine Only) With the HDX Hybrid Engine or Pro Tools | Carbon, audio signal may be offset by the amount of the system delay on AOS plugin output if there is a hardware insert before the plugin on non-DSP tracks. To avoid this issue, insert any AAX plugin between the hardware insert and the AOS plugin.
PT-272192: Using the DSP version of the Pro Multiband Splitter plugin results in signal loss when routed to an Auxiliary Input track with a Native plugin inserted.
Workaround: (HDX Classic Only) When using the DSP version of the Pro Multiband Splitter plugin on a stereo audio track with one of its Auxiliary Output Sends routed to a stereo Auxiliary Input track with a Native plugin inserted, audio may not pass. To avoid this issue, use a DSP version of the plugin on the stereo Auxiliary Input track.
PT-236149: It is not possible to recall an insert from a Track preset that contains third-party multichannel plugins on a track of a smaller channel width than that from which the preset was created.
Workaround: When attempting to recall an insert from a Track preset that contains third-party multichannel plugins on a track of a smaller channel width than that from which the preset was created, Pro Tools does not load the preset. Instead, you are presented with a warning message stating that “Pro Tools cannot convert the following multichannel plugins that were originally saved in this track preset to the format of the current track. The original format of the track was “X”.” If you encounter this issue, create an instance of the Track preset for each needed stem format. Also, note that if an insert from a mono Track preset is recalled on a multichannel track, any third-party plugins are converted to multi-mono instead of remaining multichannel. This is only an issue with certain third-party plugins.
PTSW-57457: AudioSuite and Clip Groups.
Workaround: AudioSuite plugins handle Clip Groups in the Clip List slightly differently than audio files. With audio files, an AudioSuite process can be applied to all copies of a unique audio file which appear in your session by selecting your target as Clip List in the AudioSuite plugin window and selecting Use in Playlist.
However, if your target is set to Clip List in the AudioSuite plugin window while you have a Clip Group selected, Pro Tools does not recognize the Clip Group as processable audio and will present a No Audio was Selected error. This is because a clip group is not treated as audio until it is actually used in a track.
To apply an AudioSuite process to all copies of a Clip Group in a session at once, do the following:
1. Select the Clip Group to be processed.
2. From the Clip List menu, select Ungroup All. All elements of the group will remain selected.
3. Perform AudioSuite processing.
4. From the Clip List menu, select Regroup.
5. When prompted, select Modify to apply the AudioSuite Process to all copies of the Clip Group in the
session, or Copy to apply it only to the selected Clip Group.
111704: Plugin Find and Relink with file types not supported by Pro Tools.
Workaround: Find and Relink will not be triggered by plugins in situations where plugins are missing links to file types that are not natively supported by Pro Tools (such as REX files). To have full Plugin Find and Relink support, the file types used by plugins must also be supported by Pro Tools.
PTSW-33965: MIDI outputs to some software synthesizer plugins are italicized in cross-platform sessions.
Workaround: With some software synthesizers, MIDI output ports show up italicized when opening a session on a different computer platform than the session was created on until you re-assign the outputs.
PT-202826: When replacing one plugin with another, the new plugin inherits previously auto-enabled parameters.
Workaround: With the Plugin Controls Default to Auto-Enabled preference enabled, all available automation parameters become unexpectedly re-enabled (merged) after replacing one instance of the plugin with another. Disable this preference before replacing one plugin with another to avoid this issue.
PT-262935: Some plugin automation may be delayed on playback.
Workaround: At some sample rates and hardware buffer size configurations, plugin automation may play back out of time. If you encounter this issue, you may be able to correct this issue by increasing the HW Buffer Size in the Playback Engine.
PT-218043: Clip effects may be rendered when rendering clip gain.
Workaround: When rendering clip gain for a clip, any active clip effects may also be rendered. To avoid unintentionally rendering clip effects, bypass clip effects for the clip before rendering clip gain.
PT-329056: Files unnecessary rendered when dragging audio clips into an AAX plugin that does not support audio file import.
Workaround: Dragging and dropping an audio clip from a track into a plugin that does not support import of audio files may result in a new file to be unnecessarily rendered.\ PT-328981: Cannot drag and drop files to Pro Tools when in admin mode.
Workaround: Pro Tools is installed by default in non-admin mode. If drag and drop is prohibited, right click on the app, go to Properties > Compatibility and deselect “Run this program as an administrator.” PT-329978: Drag and Drop to plugin sampler from a muted audio track results in silent audio (no sound).
Workaround: Dragging a clip from a muted track results in a muted clip in the sampler. Unmute the track before dragging the clip so that all the processing (such as plugin inserts, ARA, EA, automation, and so on) are inherited by the clip after drag and drop.
PT-329346: Clip not imported when dragging and dropping from a Pro Tools track to the Waves CR8 sampler plugin.
Workaround: In Pro Tools 2024.10 Avid added the ability to drag and drop clips from a track in Pro Tools directly to AAX plugins, such as samplers. Currently this functionality is not available with the Waves CR8 sampler plugin.
Splice XSPLICE-59: Pro Tools freezes and requires manual restart if import from Splice is canceled immediately after dropping a clip from the Splice panel to the timeline.
Workaround: When an audio clip is dragged from the Splice Panel and dropped onto the Pro Tools timeline, canceling the import operation immediately after the drop, when the progress bar dialog appears, may cause Pro Tools to freeze, requiring a manual force quit. To avoid this issue, wait for a couple of seconds, until the progress bar starts to fill up, before canceling the import.
PT-342202:The Splice window is not recalled with Window Configurations.
If a Window Configuration is created while Splice is open in a detached window, the size and position of the Splice window is not be retained when recalling the Window Configuration.
PT-340273: Splice scaling does not match Pro Tools when Windows scaling is changed.
Workaround: Changing the Windows scaling value while Pro Tools is running causes the Splice plugin to look oversized compared to the rest of the application. Restart Pro Tools to resolve this issue.
XSPLICE-64: Splice always previews in 4/4 meter.
Splice always preview in 4/4 meter. If working with other meters this may result in a short silence at the end of a loop, or the preview starting the next loop on any beat other than the first beat of the bar.
XSPLICE-50: Splice reports “There was an error uploading your audio.” Workaround: This can be caused by uploading a selection that contains a significant tempo change.
“Search with Sound” requires an audio selection to be exactly 1, 2, 4, or 8 bars in duration to ensure that relevant matches can be identified, and tempo deviation over a certain threshold will be rejected.
Transcription PT-331541: Transcribing dialects takes longer than expected.
Workaround: The Transcription Settings window (Setup menu) includes a “Language Hint” setting which is set to Multilingual by default. In many cases this is the best option to use, but when working with speech of a dialect in a single language it will likely analyze the file more quickly and accurately if this is set to the target language being spoken. if a file contains a mixture of languages, the best results can be obtained by cutting the different languages into separate clips and rendering them as new files before transcribing.
PT-331541: Transcribed words in fades cannot be edited on the timeline.
Workaround: Transcription data within a fade in, fade out, or crossfade region in the Edit window cannot be edited with the Edit Word, Join Words and Clear Word(s) commands. To edit words within a fade region, either use the editing functions for that clip from the Transcript window or temporarily remove the fades from the track you want to edit.
DSP Mode (HDX Hybrid Engine Only) PT-281621: Inserting Default EQ/DYN plugins on DSP Mode–enabled track results in no plugin processing.
Workaround: When an AAX-DSP plugin is selected as the Default EQ or Default Dynamics plugin in the Pro Tools Preferences (Setup > Preferences > Mixing), recalling that plugin on a DSP Mode– enabled track results in no plugin processing. Adjusting the plugin controls has no effect the signal and the Plugin DSP indicator displays incorrectly (“Native” on a green background). If you encounter this issue, disable and then enable DSP Mode on the track or re-insert the DSP version of the plugin on the track.
PT-273811: Pro Tools does not report a lack of output channels when a Hardware Insert is inserted on any audio track in the session.
Workaround: Pro Tools does not report a lack of output channels after enabling DSP Mode on all audio tracks when a Hardware Insert is inserted on any audio track in the session. In this case, the output of out- of-resource tracks appears active. Reassign the output of the track with the Hardware Insert or move the Hardware Insert to the insert above (for example, from slot b to slot a), and the warning dialog appears and the outputs of the out-of-resource tracks to appear inactive. Also, note that if a Hardware Insert is inserted on an out-of-resource track, the track remains unvoiced even after disabling DSP Mode on the track.
PT-274120: InputMonitoring incorrectly enabled on some tracks.
Workaround: In sessions that use all the available Hybrid Output channels, enabling InputMonitoring on a track may incorrectly cause InputMonitoring to be enabled on other tracks as well. To avoid this issue, toggle the InputMonitor button on tracks with InputMonitoring incorrectly enabled.
PT-272552: When a DSP Mode–enabled track is routed to any subpath of a multichannel path, DSP Mode is automatically enabled for all tracks that use that multichannel path or any of its subpaths.
Workaround: Enabling DSP Mode on a track that is routed to any subpath of a multichannel path automatically enables DSP Mode on all tracks that use that multichannel path or any of its subpaths.
Enable DSP Mode Safe on any affected tracks that you do not want in DSP Mode.
PT-273251: Native to DSP cascade bus recording over mono subpaths early by 3–5 samples depending on sample rate.
Workaround: When cascade bus recording over mono subpaths to DSP Mode–enabled tracks from a source track that is not in DSP Mode, the recorded audio may start early by 3–5 samples depending on the sample rate. To avoid this issue, do not use mono subpaths with cascade routing or enable DSP Mode on the source track.
PT-274282: Playback signal delayed on a record-enabled audio track in DSP Mode with a Send to Auxiliary Input track.
Workaround: In a session that combines tracks with DSP and Native plugins, the playback signal may be delayed by the amount of the System Delay on a record-enabled track in DSP Mode that has a Send or additional output routed to Auxiliary Input track. To avoid this issue, either disable Delay Compensation on the Auxiliary Input track or enable DSP Mode Safe on the Auxiliary Input track.
PT-271985: Sound artifacts present while disabling DSP Mode for a source track in an internal buss connection.
Workaround: When a DSP Mode–enabled source track is bussed to another DSP Mode–enabled track with input monitoring, and then DSP Mode is disabled for the source track, a buzz can be heard on input- monitored track’s output. To avoid this issue, deactivate InputMonitoring on the destination track prior to disabling DSP Mode on the source track.
PT-274329: With Delay Compensation disabled, bus recording is offset on Native tracks.
Workaround: With Delay Compensation disabled, bus recording is delayed on Native tracks by 2,048– 8,192 samples depending on the session sample rate. To minimize the offset, record to DSP Mode–enabled tracks.
PT-274486: When using Track Punch and Destructive Punch modes, audio recorded from live input through an Auxiliary Input track and then bussed to audio track is offset by system delay amount.
Workaround: When using Track Punch and Destructive Punch modes, audio recorded from live input through an Auxiliary Input track and then bussed to audio track is offset by system delay amount. To avoid this issue, use Quick Punch, Loop Record, Destructive Record, or normal record modes instead.
PT-274324: Streaming Errors at Low Buffer Sizes with oversampling enabled in plugins.
Workaround: When using lower buffer sizes with plugins that offer Oversampling, you may experience streaming errors. If you encounter this issue, disabling Oversampling in these plugins may improve streaming performance.
PT-273231: After enabling DSP Mode on a track with Wholegrain Trio DynPEQ and Quartet DynPEQ plugins, Pro Tools quits unexpectedly.
Workaround: After enabling DSP Mode on a track with Wholegrain Trio DynPEQ and Quartet DynPEQ plugins, Pro Tools quits unexpectedly. To avoid this issue, enable DSP Mode Safe for the track and use the Native versions of these plugins.
HDX Systems PT-325048: HDX card firmware reset seems to be unsuccessful.
Workaround: Pro Tools does not prompt you to update HDX firmware after a firmware reset is performed on shipping HDX cards. This is because the firmware that the HDX card is reset to is the most up to date version. This is true for any HDX card with Sub Assembly part number of 9150-58905-06. This part number can be found printed on the card itself or from the DigiTest Slot Info tab. This is expected, and does not indicate a failure to update the firmware.
PT-246977: AAE –1103 errors on Windows when swapping a chassis with Avid Audio PCI-e cards between multiple systems.
Workaround: If you swap a PCI-e chassis with Avid audio cards between multiple systems, you may encounter AAE –1103 errors on a Windows based systems. To avoid this issue, reboot your computer with the chassis connected.
PT-247759: Installing HDX Firmware reset can result in a Kernel Panic or Blue Screen if more than one card is reset in quick succession.
Workaround: If an HDX firmware update fails and you reset your hardware to factory default to try again, you may find that attempting to reset more than one card at a time can result in a kernel panic on macOS or a blue screen error on Windows. If you encounter this issue, reset the firmware on one card at a time.
Launch Pro Tools to install the latest firmware on one card, then shutdown and repeat the process on each additional card in the system.
PT-247346: If a DigiReWire client is open when a firmware downgrade is requested, a “Pro Tools quit unexpectedly” warning is displayed after quitting Pro Tools.
Workaround: If a DigiReWire client (such as Reason or Live) is open when an HDX firmware downgrade is performed, Pro Tools may not quit correctly. This dialog can safely be ignored. Should you need to upgrade and downgrade your HDX firmware regularly, avoid having a DigiReWire client open when doing so.
PTSW-156651: Pro Tools does not play back when an invalid sync source is selected on SYNC HD (Word Clock or AES/EBU).
Workaround: When attempting to initiate playback, playback will fail if a SYNC HD is connected to an HDX card and an Avid audio interface with no connections to either the word clock or AES/EBU ports. Ensure that the clock is set to a working clock source to resolve this issue.
PTSW-155373: In Avid DigiTest, the reported slot number may not correspond to the physical slot number in the computer.
Workaround: In Avid DigiTest, the slot number reported for HDX cards starts from 0 on up. For example, “Slot 1” does not necessarily correlate to the first physical slot in the machine. If you have an HDX card that is having problems, match the Serial Number ID on the back of the card with the Serial Number ID displayed on the Slot Info page in Avid DigiTest.
PTSW-158701 and PTSW-157600: Audio stops in certain circumstances with multi-card HDX systems.
Workaround: Signal routing issues are known to occur with HDX systems on HP Z800 Workstations. To resolve these issues, run HP Performance Advisor software after installing Pro Tools, and load the Avid optimized settings.
PTSW-158063 and PT-202030: Corrupted audio when bus recording or bouncing to disk.
Workaround: HP Z800 workstations can drop samples while recording or bouncing to disk when an HDX card is present in PCIe Slot #3 (connected to the Southbridge). This problem is resolved by updating the HP Z800 to the latest BIOS (3.54) or by installing the card in another PCIe slot. Use the HP Performance advisor to update your machine before or after installing your HDX card(s).
PT-248851: Printing interleaved files with more than 8 channels per track on HDX 2 or greater system results in AAE error –9060.
Workaround: Printing interleaved files with more than 8 channels per track (such as 7.1.2) on a system with more than one HDX card will fail with AAE error –9060. To avoid this issue, print multi-mono files.
PT-293864: HDX is not available as Playback Engine when the UA Connect application is running before launching Pro Tools.
Workaround: When UA Connect software is running in the background and you then launch Pro Tools, HDX may not be available as Playback Engine. In order to avoid this issue, end the UA Connect process on Windows using Task manager and then launch Pro Tools. Every plugin is going to be available and UA software will start running after instantiating any of them.
HD Native Systems PT-268965: HD Native cannot be initialized in Device manager after FPGA update.
Workaround: In some cases HD Native may not be initialized in Device Manager after an FPGA update. For example, when installing Pro Tools on a clean system, and then launching Pro Tools and updating HD Native firmware, HD Native may be shown in Device Manager as Other Device and may not be available in the Pro Tools Playback Engine. To correct this issue, go to Device Manager > Sound, video and game controllers, right-click on HD Native, choose uninstall device (do not choose Delete the driver software for this device), and then click Scan for hardware changes. HD Native should now be properly initialized. If that fails, restart your computer after updating HD Native firmware instead of shutting down.
PT-234613: “Avid HD Native Thunderbolt device is not certified on a qualified HP Z machine.” Workaround: If you encounter this warning, you may safely allow the connection to your HD Z machine.
PTSW-125715: Audible pops and clicks when changing buffer sizes.
Workaround: Pops and clicks may occur when changing the Hardware Buffer Size (H/W Buffer Size) in the Playback Engine dialog while monitoring live audio through HD Native hardware. Avid recommends not changing the Hardware Buffer Size while monitoring live audio to avoid this problem. If you must change the Hardware Buffer Size while monitoring live audio, be sure to lower the monitoring volume to avoid any possible damage to your speakers.
Control Surfaces PT-278737: Improper selection response for Input type and Link controls on S1 surface with Avid PRE Mic Preamp controls.
Workaround: When running Pro Tools with an S1 control surface connected over EUCON and Avid PRE hardware, and with the Preamp Control settings displayed on S1 surface, the Input Type and Link controls behave improperly. For example, when changing the Input source from Mic to Line, the display should show Line while you are touching the knob, but instead changes from Mic to Inpt Type and then stops responding further until you touch it again. Link control behaves similarly. To work around this issue, re-touch the knob each time you want to change either of these settings.
PT-278363 and PT-278682: Mic Preamp controls disappear unexpectedly from S6 Knob and Display Modules.
Workaround: Mic Preamp controls for Avid PRE may become unavailable with the S6 Knob and Display modules after performing certain operations, such as creating new tracks in Pro Tools or selecting Input Types from the associated modules. The display can usually be restored by switching to a different view on the affected S6 channel strip (such as EQ) and then switching back to Input, or in some cases re-selecting the affected track’s input in Pro Tools.
PT-248711: Performance issues may occur when using EuControl with the H/W Buffer Size set to 32 in large sessions on macOS.
Workaround: Working with large sessions with the H/W Buffer Size set to 32, and with EUCON enabled, may result in CPU spikes and AAE –6101 errors during playback. If your session exceeds 500 audio tracks it is recommended that you use H/W Buffer Size of 64 or larger when EUCON is enabled.
PTSW-46911: Trim Scrub and Trim Shuttle don’t work on clips with fades.
Workaround: If a clip has fades, Trim Scrub and Trim Shuttle don’t work when trying to trim using a control surface. To work around this problem, remove any fades on the clip, then execute the Trim Scrub or Trim Shuttle, and then restore the fades.
PTSW-17559: Used HW output path indication.
Workaround: In Assign Matrix, Insert mode the used HW output path will not have amber background indicating that it's already assigned after switching to a different insert on the same track.
PTSW-18480: Color indication on plugin controls in Learn mode with D-Command/D-Control.
Workaround: When a plugin is in Learn mode and the track with this plugin is not focused on the main ICON unit, all automation LEDs in the plugin window will be red if the track is in one of auto write modes. This conflicts with red color indication on the plugin control, which is armed for mapping. The workaround is to set the track with plugins to Read automation mode.
PTSW-52799: SignalTools meter ballistics on control surfaces.
Workaround: SignalTools RMS, VU, BBC, Nordic and DIN meters will display inaccurate decay times when viewed on a control surface. Unaffected types are Peak, VENUE, and Peak + RMS, which only reports the Peak meter to the control surface. The attack times of the affected meters are not affected, only the decay times. All meter types display accurately in the plugin window.
PTSW-150897: Channel Strip plugin Expander/Gate meters appear in the Compressor/Limiter meter instead of in the Expander/Gate meter in D-Control Dynamics section (Main Unit).
Workaround: The Avid Channel Strip plugin uses shared meters for Expander/Gate and Compressor/Limiter processing. Because of this, both Expander/Gate and Compressor/Limiter metering appear only in the Compressor/Limiter meter in D-Control Dynamics Section (Main Unit).
PT-253045: D-Control and D-Command timecode counter does not display first hours digit with a greater than 100 fps timeline.
Workaround: If the session timecode rate is over 100 fps, the first hours digit will be truncated on the ICON timecode counter (though it can still be viewed on the main counter in Pro Tools). This is a hardware limitation because the ICON counter only contains 8 digits whereas 9 digits would be required to display all possible frame values.
PTSW-133466: The Edit and Mix windows do not follow banking on EUCON control surfaces.
Workaround: When the Edit Window Follows Bank Selection and/or the Mix Window Follows Bank Selection preferences are enabled in Pro Tools (Setup > Preferences > Mixing), after banking your EUCON controller, neither the Edit nor Mix window scroll to follow. You will have to manually change the view of the Edit or Mix windows to see the tracks that correspond to the EUCON controller if they are off screen.
Video PT-344751: AVE reports an error at the completion of audio/video export when bouncing some files as Same as Source.
Workaround: To avoid this error, use the “Transcode” option instead of “Same as Source”.
UME-1729: DVCProHD video files do not import on Apple silicon.
Workaround: Files encoded as DVCProHD do not import into Pro Tools on an Apple silicon computer and need to be re-encoded into a supported format.
UME-1693 and PT-302249: Bounced .mov file may result in subtle metadata differences in the resulting file.
Workaround: When doing a Same As Source bounce from MOV files that contain the “Clean Aperture” metadata attribute, or are “Thin Raster,” the bounce will re-transcode the files using the same codec rather than copying the existing data. This may result in subtle metadata differences in the resulting file.
UME-1587: Video Engine quits unexpectedly when bouncing DNxHD SQ material Same as Source with blank space included in selection.
Workaround: When bouncing DNxHD SQ material (such as DNxHD 80 at 1080p24) to QuickTime using Same as Source, the Video Engine displays an assertion if an area of blank space is included in the bounce selection. To avoid this, do one of the following: do not select any blank space, do not choose Same as Source in Bounce Settings, add black video to the blank space before bouncing, or use a different DNxHD bit rate as source material.
UME-1582, UME-1583: Same as Source Bounce to QuickTime is not possible with ProRes, H.264, or PJPEG source media if the timeline selection contains blank space.
Workaround: If blank space is included in the timeline selection, and the source video codec is Apple ProRes, H.264, or PJPEG, then Same as Source QuickTime export is not be permitted. If it is necessary to bounce Same as Source, either use DNx source material or replace any blank space with black frames before bouncing. Note that bouncing from ProRes to ProRes is possible by adjusting the QuickTime Settings in the QuickTime Bounce dialog. ETE-6771 PTTTTT: Media Composer cannot play files bounced from Pro Tools using Same as Source if there is filler at the beginning or the end of media in the exported selection.
Workaround: Pro Tools does not currently support Long GOP video files (such as H.264) that contain filler (e.g. blank space) at the end of the file. Importing such a file causes the video engine to crash. When attempting to bounce a H.264 file on the timeline with a selection that extends past the end of the clip/file, Same as Source the option is unavailable. You must transcode the file.
PT-266982: QuickTime movies with MP3 encoded audio cannot be imported.
Workaround: It is not possible to import video from a QuickTime file that contains MP3 encoded audio. In order to import the audio from one of these files, use the Import Audio command.
PT-265173, PT-265173, PT-266358, and PT-266834: Audio from a QuickTime movie imports in the wrong channel order.
Workaround: Pro Tools 2020.11 (and higher) uses QuickTime channel descriptor metadata when importing audio from a QuickTime file. This is used to place audio channels on the timeline in the correct order. Pro Tools always places audio channels on the timeline in Film order (L C R Ls Rs LFE), regardless of the physical channel order in the file. If a QuickTime file does not contain channel descriptor metadata, the file will be assumed to be in SMPTE order (L R C LFE Ls Rs).
Pro Tools 2020.9.1 (and earlier) exports QuickTime files in Film order, but it put channel descriptors in SMPTE order. Pro Tools 2020.9.1 (and earlier) does not respect channel descriptors and assumes files are in Film order. As a result, channel orders are incorrect when importing QuickTime files generated between 2020.11 and 2020.9.1.
UME-1580: Video fails to import with multiple codecs in a single file.
Workaround: A missing codec error may be encountered when importing a QuickTime video that contains multiple codecs in a single file. To avoid this issue, use different files for each codec.
PT-281250: Video track color space from an AAF may follow first clip.
Workaround: When importing an AAF, Pro Tools uses the color space information from the AAF, if it exists, to set the color space on the video track. However, not all AAFs contain color space information, in which case Pro Tools uses the first clip in the sequence to determine the color space instead.
PT-256019: Video appears squished during playback on the video hardware display when using 720x486 or 720x586 raster sizes with certain frame rates.
Workaround: When using 720x486 with 23 or 24 fps, or when using 720x586 with 24 or 25 (progressive) fps, video output may display squished during playback on the hardware display. To avoid this issue, try setting the engine Raster Size (in the I/O section of the video track) to an HD raster size (such as 1080x1920).
UME-1529: SD video will not stretch to a 16:9 aspect ratio on the desktop display.
Workaround: When using 720x486 and 720x586 raster sizes, and the aspect ratio is set to 16:9 with the Stretch setting enabled, the video window size updates to 16:9, but the picture does not stretch. You can workaround this by setting the engine Raster Size to an HD raster, such as 1920x1080. This can be done by Command-clicking (Mac) or Control-clicking (Windows) on the engine Raster Selector (in the I/O section of the video track).
PT-252007: DNxIP automatically displays 2Kp50, 2Kp59.94, or 2Kp60 video as 1080p when outputting through the HDMI or SDI connections.
Workaround: DNxIP only outputs 2Kp50, 2Kp59/94, and 2Kp60 video over IP using the SMPTE 2110 standard. The HDMI and SDI outputs will not display these formats. Instead, DNxIP switches to 1080p in order to maintain the higher frame rate. Additionally, you must have installed the latest firmware update that is included with the driver. Visit www.avid.com for the latest driver compatibility information.
No Number: Playback of QuickTime video in Pro Tools may stutter or drop frames.
Workaround: When monitoring QuickTime playback in the Pro Tools Video Window on the computer screen, the video image may stutter or drop frames. To improve results with QuickTime playback, try any of the following:
- Disable Continuous Scrolling.
- Close unnecessary UI windows.
- Try using the DNxHD codec.
- A second Pro Tools or Media Composer Video Satellite option offers guaranteed performance for Avid
video playback with a primary HDX or HD Native system.
PTSW-52140, PTSW-52155, PTSW-52157: Unsupported QuickTime video formats.
Workaround: Several video formats supported in QuickTime are not supported in Pro Tools. These include .DivX, .flc, .m4v and .3gp format movies. Attempting to import these will generate errors or will fail to import.
UME-835: QuickTime files that contain multiple CODECs may not import.
Workaround: If the Pro Tools tells you that a file cannot be imported because it may be unsupported, check to see if the file contains more than one CODEC. This can be done by opening the file in QuickTime player and examining the file properties. QuickTime files that contain more than one CODEC are not officially supported for import into Pro Tools.
PT-255898: 1080p50 AVC-Intra100 causes an “The Avid Video Engine stopped unexpectedly” error.
Workaround: 1080p50 AVC-Intra100 QuickTime media causes an “The Avid Video Engine stopped unexpectedly” error. To avoid this issue, use another application to transcode the media to another codec, such as DNxHD.
UME-1459: 1080p50 XDCAM 50MBPS will not draw thumbnails or display picture.
Workaround: 1080p50 XDCAM 50MBPS QuickTime media will not draw thumbnails, and the video window displays black. To avoid this, use another application to transcode the media to another codec, such as DNxHD or H.264.
PT-236136 and PT-235110: 1080p50 video can only be bounced as “Same as Source”.
Workaround: Pro Tools can only bounce 1080p50 video using the “Same as Source” method. Transcode is not allowed at this time. If you would like to change the codec or attributes of the exported video, use another application.
UME-1529: “No valid same as source resolution found” when bouncing DNxHR MXF files as Same As Source.
Workaround: DNxHR MXF files cannot be bounced using Same as Source at this time. Instead, it is possible to re-transcode the bounced file to QuickTime DNxHR, or you can use DNxHR QuickTime in your workflows to utilize the Same as Source bounce option with DNxHR media.
UME-1394: Pro Tools presents the following error: “The Video Engine has reported an error. More information is in the Video Engine log file” when attempting to play back video files with a resolution of 1080p50 using the AVC-Intra100 and 200 CODECs.
Workaround: Pro Tools cannot play back video files with a resolution of 1080p50 using the AVC-Intra100 and 200 CODECs. Doing so results in the following error: “The Video Engine has reported an error. More information is in the Video Engine log file.” There is currently no workaround for this issue, so you must transcode the media to another CODEC, such as DNxHR or Apple Pro Res.
UME-1392: Video media using XDCAM CODECs displays only black in a 1080p50 video project type.
Workaround: XDCAM codecs display only black when using a 1080p50 project type. There is currently no workaround. Transcode the media to another CODEC, such as DNxHR or Apple Pro Res for use with Pro Tools.
PTSW-162502: Closing the QuickTime window during session playback may result in –9092 errors that stop playback.
Workaround: To avoid this issue, try increasing the number of CPU Cores available for Pro Tools processing and/or raise the H/W Buffer Size in the Pro Tools Playback Engine dialog.
PTSW-178017: “Error reading video in the QuickTime files” when importing some MPEG 1 and 2 video files in Pro Tools.
Workaround: Some MPEG1 and MPEG2 files cannot be opened by Avid applications, including Pro Tools.
Transcode these files to one of our primary CODEC such as DNxHD or AppleProRes for use in Pro Tools to avoid this issue.
79182: MPEG-1 and MPEG-2 video freezes at edit points.
Workaround: Editing MPEG-1 & MPEG-2 video is not officially supported. If you experience this problem, try switching playback to the Video window, or convert the movie to a supported format using a 3rd party application. Removing the audio from an MPEG-1 or MPEG-2 movie with a 3rd party application may also fix the problem.
PTSW-179261: Audio and video will not stay in sync when using ASIO4ALL.
Workaround: When ASIO4ALL is selected as the Pro Tools Playback Engine, video may drift out of sync and even drop frames. To avoid this, use a supported Avid audio interface.
PTSW-180554: Video pull factor may become invalid when video hardware is enabled.
Workaround: If a software video pull factor of 0.1% is set while video hardware is disabled, enabling the video hardware may create an illegal pull setting. Video hardware only supports 0.1% pull ups at 24pPAL rates, and 0.1% pull downs at 25pPAL rates. If the pull rate is set to 0.1% at any other rate while video hardware is enabled, manually select an available option from the pull menu, which may be “none.” PT-245451: Video file frame rates may not appear in the Workspace for files with frame rates above 60 fps.
fps. If you encounter this, delete the Workspace.wksp database file to correct this issue.
PTSW-178722: Video may not stay in sync when video hardware is attached and Pro Tools is locked to an external clock.
Workaround: If both Pro Tools and an attached video peripheral are each resolved to an external clock, but the clock is not derived from the same source, video will not stay in sync. An example of this would be if the video peripheral is locked to black burst, and the audio peripheral is locked to an audio clock not derived from the same video black burst, such as SPDIF. In this scenario, setting the video peripheral to lock to its own internal clock will allow Pro Tools to compensate for video drift over time.
Third-Party Video Peripherals The following issues may occur with third-party video hardware. Please contact your hardware vendor for support.
- In some cases, video will not stay in sync over time if the video peripheral is not, or cannot, lock to
video reference. If you experience this, a workaround is to set the Pro Tools clock to internal. This will cause the video peripheral to slew overtime and stay in sync with Pro Tools. (THPV-2) With some peripherals video playback will be one frame out of sync with Pro Tools audio. To
- compensate for this, choose Setup > Video Sync Offset and enter a 1 frame offset. (THPV-9)
With some video peripherals, the video output will be scrambled when video is not loaded in
- Pro Tools, or when the video peripheral is disabled. (THPV-32)
Video Satellite PTSW-23142: Pro Tools and Media Composer Video Satellite Quit Unexpectedly when Disconnecting an Additional Pro Tools System During Playback .
Workaround: When multiple Pro Tools systems are connected via Satellite Link in conjunction with a Video Satellite, always stop playback before disconnecting any of the systems.
UDevC00116083: “Pro Tools Cannot Currently Play” Error.
Workaround: In a Video Satellite configuration, when the system is sitting idle, Media Composer may post the dialog, “Pro Tools cannot currently play, is online with Machine Control, or is in Transport = Remote Mode. Please resolve the issue with the Pro Tools system and try again.” To avoid this problem, link the Video Satellite from the Pro Tools Administrator system rather than from Media Composer.
UME-956: Media Composer Video Satellite cannot be enabled when Pro Tools is co-installed on the same computer.
Workaround: When Media Composer and Pro Tools are co-installed on the same computer, that system cannot be used as a Video Satellite. To use the computer as a Video Satellite, uninstall Pro Tools and re- install Media Composer.
No Number: 23.976 or 24 fps Sequence Start Time Ending In Digits Other than “:00” Causes Time Code Offset.
Workaround: Media Composer uses NTSC or PAL time code when setting the sequence start time regardless of the format selected by the user for display. When you are working on a video satellite project at 23.976 :00 or 24 fps, a Media Composer sequence with a start time that ends in a value other than causes an offset between Pro Tools and Media Composer at the session start. For example, the start time 45:02:10:15 (ending in :15) would cause an offset, but the start time 45:02:10:00 (ending in :00) would not.
As a workaround, always set your Media Composer sequence start time to a time code value ending in 00.
98460: Cueing from Media Composer in a 720p Project Causes 1-Frame Offset.
Workaround: In 720p projects, Media Composer counts at 50 or 60 (59.94) progressive fps—depending on the project type—while Pro Tools counts at 25 or 29.97 frames per second. When you cue a sequence from the video satellite in a 720p project, the Pro Tools edit cursor can be offset by as much as one frame.
As a workaround, cue and play back from Pro Tools when working with a 720p project in a video satellite frame boundaries (for example, frame 47) from Pro Tools.
UDevC00090064, UDevC00090078, UDevC00088666, UDevC00089437, UDevC00087542: Audio and video may drift out of sync In Satellite Mode in certain conditions.
Workaround: When operating in Satellite mode, audio and video output from Media Composer may drift out of sync by as much as one frame in any of the following conditions:
When viewing video full screen in 1394 mode. This is due to the difference between the monitor's
- refresh rate and the video reference rate.
- When the Edit Play Rate of the video differs from the frame rate of the video reference signal. (For
example, this occurs with a 24p NTSC project with 23.976 Edit Play Rate and NTSC reference signal.)
- When looping a selection that is not aligned to video frame boundaries in Pro Tools. As a workaround,
make your selection in Pro Tools using Grid mode with the Grid value set to 1-frame increments— especially when it is necessary to loop several times without stopping.
Pro Tools Satellite Systems PT-248378: Saving logs only saves logs for linked satellite systems.
Workaround: It is possible to gather log files across a set of Satellite Linked systems. This can be done by Setup > Preferences > Operation, Save Logs going to and clicking button. When this is done, it will zip the needed logs on each of the satellite systems, but it will not zip the logs on the system that executed the Save command. To gather logs on that system you need to unlink satellites and save the logs again. Saving logs only needs to be done when instructed to do so by Avid Customer Care.
Synchronization and Machine Control PT-261032: When updating Sync X or SYNC HD firmware, DigiTest defaults to the wrong card with more than one HDX card installed.
Workaround: DigiTest may default to second or third installed HDX card rather than lead. When using DigiTest to update Sync X or SYNC HD firmware, you will need to select the right card before the firmware upgrade can be successfully run.
PT-267639 and PT-267637: With Sync X or SYNC HD at 176.4 kHz and 192 kHz, higher VSO values are selectable but cannot play.
Workaround: With Sync X or SYNC HD at 192k, the VSO Up range is only about .2 semitones even though greater values can be selected. At 176.4 kHz, playback of positive VSO values are limited to +1.67 or less.
PT-266430: While Video Ref Source is Sync X, enabling or disabling Generate LTC causes momentary fluctuations in Detected Rate and Clock Ref display as the clock resets. Clock Ref may briefly display as unlocked.
Workaround: There is currently no workaround for this issue.
PT-259487: Sync X front panel Page 4 – Position Ref displays “Generate” when Serial Timecode is selected for Positional Reference in Pro Tools.
Workaround: There is currently no workaround for this issue.
PT-260473: Session Setup window does not update when switching from Sync X to Sync HD without quitting Pro Tools.
Workaround: If you want to switch between Sync X and Sync HD, quit Pro Tools before making the cabling changes.
PT-246213: Intermittently out of sync when chasing LTC with high frame rate video reference.
Workaround: Systems that are locked to video reference above 30 fps may experience intermittent sync offsets that can vary between each playback pass. These offsets may be a frame or more, depending on the frame rate. To avoid this, lock Pro Tools systems to 30 fps or lower video reference whenever locking to LTC or generating LTC that another system may be chasing.
PTSW-63013, PTSW-60432: Recording with serial timecode.
Workaround: Occasionally, it is possible for the Tascam DA-98 servo lock bit behavior to cause Pro Tools to think the DA-98 is servo locked before it actually is. This could cause a synchronization offset when Pro Tools locked to serial timecode generated from a DA-98. Pro Tools will now handle these cases, but if you experience this problem, try increasing the amount of frames to 10 in the “Delay before locking to Timecode” preference.
46200: The “Machine Cues Intelligently” preference should not be used with non-linear decks.
Workaround: Pro Tools overshoots and posts an “Error Cueing Machine” dialog if the Machine Cues Intelligently preference is checked when using non-linear playback devices.
PT-262678: Recording is not sample accurate when re-triggering play by clicking into the Timecode ruler of a 9-pin Master without issuing a Stop command first.
Workaround: Do not click in the Timecode ruler of the Master system to re-trigger play. Either use a 9-pin controller or issue Stop and then Play commands from the Master system.
PTSW-153187: When using Serial Timecode, if Play is triggered at a timecode location before session start, no audio is output when session start is reached Workaround: To avoid this issue, insert time at the session start so that PreRoll does not start before session start.
PT-317083: If a 5.1 and a 7.1.2 bed are both active, the 5.1 Bed's Ls/Rs Binaural Mode is controlled by the 7.1.2 bed's Lsr/Rsr channels when rendering.
Workaround: When 5.1 and 7.1 or 7.1.2 beds are used in I/O Setup in the same session, the Binaural Mode settings in the Ls and Rs channels of a 5.1 bed and the Lrs/Rrs and Lss/Rss channels of any 7.1 and 7.1.2 beds can affect each other, with one of the settings overwriting the other. As a workaround, do not use 5.1 beds and 7.1 or 7.1.2 beds in the same session.
PT-312441: Importing a .pio file created in Pro Tools 2023.9 or earlier results in Dolby Atmos objects being imported into the Bus page of the I/O Setup.
Workaround: Importing an I/O Setup (.pio) file, that was created in Pro Tools 2023.9 or earlier, results in any Stereo Dolby Atmos objects being imported into the Bus page of the I/O Setup. It is recommended that you regenerate any previous .pio files that contain Dolby Atmos objects and beds in Pro Tools 2023.12 or later.
PT-312611: Invalid Object assignments are removed resulting in lost automation when opening a session created in Pro Tools 2023.12 and later in earlier Pro Tools versions.
Workaround: Pro Tools 2023.12 and later allow Dolby Atmos object paths which are otherwise invalid (indicated by red elements in the I/O Setup Dolby Atmos page). If a session is saved with an invalid object path assigned to a track, and then opened in Pro Tools 2023.9 or earlier, the invalid object assignment will be removed from the track without warning along with any associated pan automation. Be sure all necessary object assignments are valid before sharing a session with a legacy Pro Tools system.
PT-305751: Mono tracks routed to Atmos Bed LFE Sub Paths will output to center channel of Bed/Object Fold Down Path when active.
Workaround: If a mono track is routed to the LFE Sub Path of an Atmos Bed, when Bed/Object Fold Down is engaged, that track will route to the Center channel of the Fold Down path. This does not affect routing to the main Bed Path. To work around this issue, either mult the mono LFE track to an LFE sub path of the Fold Down Output path, or route the mono LFE track to an x.1.x aux which is then routed to the main bed output.
PT-270427: ADM Export to SMB shared network storage results in an error.
Workaround: Attempting to bounce a Dolby Atmos ADM BWF file to SMB network shared storaged from a Windows Pro Tools system may result in this dialog: “Error was encountered when writing ADM to storage.
This might be due to either a slow drive or network storage. The bounce will be aborted.” Use other storage as the ADM bounce destination to avoid this issue.
PT-263665: 7.1.2 audio is heard out the incorrect channels.
Workaround: 7.1.2 interleaved files that were created in Pro Tools 2019.6 (and earlier), play audio out incorrect channels if opened in Pro Tools 2019.10 (or later). Please visit the following knowledge-base article for more details: https://kb.avid.com/articles/readme/Pro-Tools-7-1-2-Channel-Order-Change.
PT-228845: Cannot map buses to Objects when connected to a VPN.
Workaround: You can map buses to Objects even when not connected to a Renderer as long as Atmos is enabled in the Peripherals dialog. However, you may not be able to map buses to Objects if you are using a Virtual Private Network (VPN). To map buses to Objects when offline, disconnect from the VPN, map buses to Objects, and then reconnect to the VPN.
PT-266332: Some Bed assignments are not imported when importing session data from another Dolby Atmos session.
Workaround: In a Dolby Atmos workflow, it is possible to map more than one bus to a single bed. This happens automatically if the buses share the same output. However, only one of these buses maintains an explicit assignment to the Renderer. This is indicated on the Bus page of the I/O Setup by the Mapping to Renderer checkbox only being available for the one explicitly assigned/assignable Bed bus. These buses have no functional difference except when importing session data. To ensure all buses are imported, be sure to check both “Main Output Assignments” and “Bed/Object assignment and Toggle Settings” in the Track Data to Import section.
PT-267073: Multichannel beds are imported in the wrong channel order if a Dolby Atmos ADM BWF file is dragged and dropped to the timeline.
Workaround: Multichannel beds are imported in the wrong channel order if a Dolby Atmos ADM BWF file is Import Session Data.
dragged and dropped to the timeline. To avoid this, use PT-324528: Dolby Atmos pan automation is rendered slightly later when online-bouncing live renderer outputs with a low HW Buffer Size.
Workaround: Some online bounce/commit operations result in pan data being rendered late by 2x the HW Buffer Size. This occurs if the HW Buffer Size is 128 or less (at 48 kHz) or 256 or less (at 96 kHz), when track- bouncing an Aux with a live custom re-render input or bouncing the physical Monitor Output using Bounce Mix. To avoid this, use the highest HW Buffer Size when online-bouncing, bounce custom re-renders from the Bounce Mix window instead of from a track, or bounce offline (which does not have this issue).
PT-324327: Automatic Delay Compensation is incorrectly applied to online Dolby Atmos ADM and re- render bounces.
Workaround: When real-time-bouncing Dolby Atmos ADM and/or Re-Render files, plugin delay is not accurately compensated if Renderer mode is External. To avoid this, bounce offline or enable the Internal mode.
PT-347416: Automatic Delay Compensation is incorrectly applied to online Dolby Atmos ADM and re-render bounces. Moving an assignment from a send slot shared with a Dolby Atmos bed will cut and paste automation.
Workaround: If a send slot contains both a Dolby Atmos bed assignment and a bus assignment for another immersive renderer (360RA), moving the send from one slot to another results in automation (pan, volume, mute) to be removed from the original slot and pasted to the new one. This results in loss of automation data from the original bed send when switching back to Dolby Atmos, since only one automation playlist exists per send slot. Copy the send instead of moving it to maintain automation for the slot.
PT-321811 Custom Live Binaural Re-Render is affected by Personalized Head Related Transfer Function (PHRTF).
Workaround: Custom binaural re-renders are affected by the active PHRTF profile. This is only true for live re-renders appearing on track inputs. Offline and online binaural re-renders created through the Bounce Mix window always use the default profile.
AAX Immersive Audio Plugins PT-352254 Pan automation does not automatically convert to the Pro Tools mixer after splitting multichannel AAX object tracks to mono.
Workaround: After splitting a multichannel AAX object track into mono object tracks, the mono tracks may fail to receive Pro Tools mixer pan data when switching to a Dolby Atmos Renderer. Only the Center channel converts correctlywhile all other channels may default to static positional values. Use the Global Renderer Management menu to convert immediately or to clear Pro Tools mixer pan data first, then change renderers.
PT-354521 Send assignments are duplicated after moving between send slots and then switching renderers.
Workaround: Moving a send assignment between slot positions after changing renderers can result in duplicated sends when switching back to the original renderer. Explicitly assign a send slot or set it to “no send” when switching renderers. This prevents the send assignment from cloning when switching back to the original renderer. Note that selecting “no send” also clears all automation for the slot (affecting assignments for that send for all renderers).
360RA Immersive Audio PT-349776 No indication in Pro Tools that Sony 360RA WalkMix Renderer does not support sample rates other than 48kHz and 96kHz.
Workaround: When running the 360RA WalkMix Renderer at sample rates other than 48kHz and 96kHz, Pro Tools does not indicate that the current sample rate is unsupported. Additionally, the 360RA WalkMix Renderer name is not italicized in the I/O Setup Window and Renderer controls in the Edit Window toolbar (unlike the Dolby Atmos Renderer). You can assign tracks to the 360RA WalkMix Renderer and open the 360RA WalkMix panner, but no signal appears in the renderer. The 360RA WalkMix Renderer plugin window does communicate sample rate support.
PT-348509 “Select/Show/Show Only assignments” options in the output right-click menu does not affect all 360RA Object tracks.
Workaround: Unlike regular output assignments, 360RA Object tracks are treated independently. As a result, outputs' right-click menu commands “Select/Show/Show only assignments to 360RA WalkMix Renderer: Object” do not behave as they do with the standard output routing.
PT-348809 360RA WalkMix Renderer Pan Automation is lost when moving clips between single multichannel and multiple mono tracks.
Workaround: When moving clips between a single multichannel track and multiple mono tracks (or the other way around), Pan Automation for 360RA WalkMix Renderer on those clips is lost. To avoid this issue, split the multichannel track into multiple mono tracks (Track > Split into Mono). This is also workaround for migrating greater-than-stereo tracks assigned to objects in 360RA to Dolby Atmos.
XS-165 Exporting Master ADM with 360RA WalkMix Renderer takes a long time.
With 360RA WalkMix Renderer, exporting the Master ADM file may take longer than exporting a Dolby Atmos ADM, depending on the Pro Tools session size. This happens because of the complex calculations minutes with longer times for larger sessions.
PT-348230 Tracks assigned to 360RA WalkMix Renderer are not audible during the online track bounce.
Tracks assigned to 360RA WalkMix Renderer are not audible during the online track bounce. There is no workaround.
PT-347698Converting assignment from immersive renderer to Pro Tools Mix may remove the main output assignment.
Workaround: When using the Global Renderer Management right-click menu to convert an immersive assignment from WalkMix to Atmos, the existing main output may be unassigned. If the conversion is performed while Atmos is the Active renderer, only bed assignments will be removed. If converted while WalkMix is active, the assignment is removed regardless of type. Instead of using the Global Renderer Management convert function, manually assign an object output to avoid losing the main output.
PT-349390Duplicate track ignores Object Toggle and LFE automation if WalkMix is the active renderer.
Workaround: When duplicating a track while WalkMix is the active renderer, LFE and Object toggle automation do not carry over to the duplicate track. Switch to Atmos before duplicating the track to ensure all automation, including LFE and Object toggle, is preserved.
PT-349391Object toggle automation is deleted if session is reopened while Object output is unassigned.
Workaround: If a session is saved and reopened while an Object output is unassigned, any existing Object toggle automation is lost. Reassign the Object output before closing the session to preserve automation.
PT-349380 Object control mode is off after converting assignment from WalkMix to Atmos using the Global Renderer Management menu.
Workaround: When converting an object assignment from WalkMix to Atmos using the Global Renderer Management right-click menu while Atmos is the active renderer, the Object control mode is unexpectedly turned off. Manually re-enable Object control mode after conversion to correct this.
PT-348485 Resizing WalkMix panner causes output meter and track color bar to disappear.
Workaround: On Windows, resizing the WalkMix panner window can cause the output meter section and track color bar to vanish or become misaligned. Slightly move the window to restore the correct display.
PT-348972 ICON and MIDI panners do not control 360RA WalkMix.
Workaround: ICON surfaces and MIDI devices currently do not control the 360RA WalkMix Panner. While these devices can manipulate panning in Dolby Atmos, switching to 360RA WalkMix disables their control capabilities. Use the mouse or Eucon-based control surfaces to manipulate 360RA WalkMix panning.
PT-348972 ICON and MIDI panners do not control 360RA WalkMix.
Workaround: ICON surfaces and MIDI devices currently do not control the 360RA WalkMix Panner. While these devices can manipulate panning in Dolby Atmos, switching to 360RA WalkMix disables their control capabilities. Use the mouse or Eucon-based control surfaces to manipulate 360RA WalkMix panning.
PT-345511 Multiple tracks assigned to same Dolby Atmos object receive individual pan conversion to WalkMix 360RA spherical format.
Workaround: When switching the renderer from Dolby Atmos to WalkMix 360RA, if multiple mono or stereo tracks are assigned to the same Dolby Atmos object, each will have their own pan setting and automation converted to WalkMix 360RA spherical format and the object control mode master setting is ignored. If you want to maintain the object control mode master behavior, before making the conversion either route all tracks sharing the same object assignment to a single Auxiliary Input track and copy the Object Control master’s automation to the track or copy the Object Control master’s automation to each track individually.
PT-346672 No dialog shown when reopening sessions saved with 360RA WalkMix Renderer on HDX Classic; renderer drop-down appears blank.
When reopening a session saved with 360RA WalkMix as the active renderer on an HDX Classic system, no compatibility dialog appears, and the renderer drop-down in I/O Setup may be blank. Manually reselect 360RA WalkMix from the Renderer drop-down in I/O Setup to populate the Renderer selector. However, note that 360RA WalkMix Renderer does not function on HDX Classic.
PT-348972 Performance slows after opening 360RA WalkMix Panner unless the Renderer window is also open. (XS-62) Workaround: On some Windows systems with Nvidia graphics, opening the 360RA WalkMix Panner without also displaying the 360RA WalkMix Renderer window causes significant UI sluggishness in Pro Tools.
Symptoms include delayed menu response, frozen meters and counters during playback, and long pauses when interacting with UI elements. To avoid this issue, install Nvidia driver v581.42 or later.
PT-348828 Installing an immersive plugin while Pro Tools is running requires closing and reopening session to use the Renderer.
Workaround: When an immersive plugin is installed while Pro Tools is running, it loads like any other plugin.
However, the renderer cannot be enabled until you close and reopen the session. You can then select the newly installed Renderer.
MPEG-H Renderer XFR-101 Recalling an MPEG-H track preset deletes all current presets in the renderer and reassigns all components.
Recalling a track preset assigned to the MPEG-H renderer clears all current presets, overwrites the MPEG-H scene, and breaks previous connections. If possible, recall MPEG-H track presets before configuring the MPEG-H renderer.
XFR-58 Pro Tools may not display a dialog when exceeding the number of supported inputs on the MPEG-H renderer.
Workaround: If the session exceeds the maximum number of supported MPEG-H tracks, a warning dialog may not appear, and track outputs stay active. To avoid this issue, ensure that you do not exceed the MPEG-H renderer's input limit and check for errors in the renderer window.
XFR-37 Changing the MPEG-H renderer's interactivity controls during playback may cause audio artifacts.
The Interactivity Settings of the MPEG-H renderer are static scene information and should not be changed dynamically during playback. Modifying these controls while transport runs may cause audio artifacts.
XFR-39 MPEG-H automation jitters.
Timing of MPEG-H automation is not sample-accurate. It exceeds typical AAX plugin jitter of 32 samples and can reach up to 1000 samples. There is currently no workaround for this issue.
XFR-62 MPEG-H renderer Online bounce is muted.
MPEG-H assigned tracks are not audible and are muted during online mix bounce or track bounce. This does not affect the final bounced file. There is currently no workaround for this issue.
XFR-97 After importing MPEG-H file, the panning data given to the renderer are the default track positions.
Workaround: After importing an MPEG-H file, the Immersive Panner may display panning at the default track position instead of the position set in the pan automation lanes. Start the transport or relocate the playhead to update the pan position.
XFR-64 MPEG-H Master import is blocked if existing beds or objects are present in the session.
Workaround: When importing an MPEG-H Master file, the import operation is blocked if there is any MPEG-H bed or object assignment in the session, even if the assignment is inactive or the corresponding component has been removed from the renderer UI. This prevents importing multiple MPEG-H Master files with overlapping object or bed names in the same session. Remove all MPEG-H assignments from track output selectors before importing an MPEG-H Master file. Be sure to delete any MPEG-H beds using the output selector on any audio or Auxiliary Input track.
XFR-79 Pro Tools Immersive Panner movement is limited when the anchor is positioned beyond a room wall.
Workaround: When using the MPEG-H renderer, renaming a bed component in the renderer UI does not update the corresponding I/O path name in Pro Tools. Rename the bed or I/O path directly in Pro Tools if a name change is required there.
XFR-119 Freezing or committing an MPEG-H assigned track removes it from selected components in the preset.
Currently, freezing or committing an MPEG-H Renderer assigned track results in its removal from the selected components list of the MPEG-H renderer preset. There is not workaround at this moment.
XFR-122 LFE from x.1 / x.1.x source renders to Center channel when assigned to MPEG-H object.
Workaround: When a source track containing LFE content (5.1, 7.1.4, etc) is assigned to an MPEG-H object, the LFE signal is incorrectly rendered to the Center channel instead of being discarded or mapped appropriately. LFE automation lanes (X/Y/Z) are available and active, allowing positional control, but anchor and channel-linking settings have no effect on the LFE signal.
Use one of the following before routing to an MPEG-H object:
- Insert a multi-mono plug-in on the source track to attenuate or mute the LFE channel.
- Route the source x.1 track to an x.0 aux, then route the aux to the object.
- If the source is an audio track, split the track to mono, then move the non-LFE channels to an x.0
track, and route that track to the object.
Pro Tools Immersive Panner PT-351575 Pro Tools Immersive Panner movement is limited when the anchor is positioned beyond a room wall.
Workaround: When using the Pro Tools Immersive Panner, if the anchor coordinates exist beyond a wall boundary, the panner abject cannot be moved across the full room. This behavior is by design and reflects internal automation range limits. Position the anchor at or within the wall boundary (for example, X ≤ 100) to ensure that the panner ball can reach the opposite wall.
XFR-95 Some default click-to-pan positions do not map precisely to MPEG-H speaker locations.
Workaround: In some cases, when using the Pro Tools Immersive Panner, using the click-to-pan feature results in signal being distributed between multiple speakers. For example, when using the MPEG-H Lw renderer with a 9.1 monitoring format, clicking sends some audio to the L channel, rather than placing it entirely in Lw. This is due to differences between the default 9.x.6 speaker locations in the panner, and positioning within specific renderers. If necessary, you can manually adjust the panner position to place the signal fully into the desired speaker. For example, set Y to 50 for Lw/Rw positions.
PT-355255 Coalesce Pan Guide does not affect Pro Tools Immersive Panner height automation.
Workaround: The Coalesce Pan Guide command does not apply height automation data when tracks are using the Pro Tools Immersive Panner Height and Shape modes (such as Sphere). The command remains available for mono and stereo object tracks, but is currently only supported with the legacy Pro Tools 3D panner. Migrate the object track to a Dolby Atmos renderer (internal or external) to automatically coalesce the data, if needed. The session can then be converted back to MPEG-H or Audio Vivid.
PT-355504 Pro Tools Immersive Panner Size controls do not affect MPEG-H objects.
Workaround: When using the MPEG-H renderer, adjusting the Size or Size All controls in the Pro Tools Immersive Panner has no effect on object rendering. MPEG-H does not currently respond to these size parameters, and changes are ignored.
PT-355420 In Immersive Panner, with Allow Latch Prime on Stop enabled and the anchor unlinked, changing Manipulate controls rewrites and flattens individual channels automation.
Workaround: When writing pan automation in Immersive Panner with Allow Latch Prime on Stop enabled and the anchor unlinked, changing controls in the Manipulate section rewrites and flattens Allow Latch Prime on Stop individual channel automation. To avoid losing pan data when using with an unlinked anchor, do not change meta controls when transport is stopped.
PT-354023 The position of objects in the Pro Tools Immersive Panner is altered by position of the unlinked anchor and the objects may not restore their positions when the anchor is placed to its original position.
Workaround: When changing the position of the unlinked anchor of the Pro Tools Immersive Panner, the unlinked anchor still affects object positions due to the Immersive Panner's room scaling logic. Object positions may differ and may not be restore when the anchor returns to its original spot.
Ambisonics PT-304740: High-order Ambisonics tracks and buses use excessive amounts of DSP with the HDX Hybrid Playback Engine.
Workaround: If the Playback Engine is set to HDX Hybrid, high-order Ambisonics tracks (especially 6th and 7th Order) in DSP mode consume more HDX resources than expected. To avoid this issue, keep all Ambisonics tracks in Native mode.
PT-232689: Do not assign the Audition path to Ambisonics Output paths.
Workaround: Ambisonics Output paths should not be used for audition paths. If you assign an Ambisonics Output path as the Audition path, it will not work. Only use non-Ambisonics Outputs paths for the assigned Audition path.
PT-264995: Pro Tools quits unexpectedly when using FB360 Ambisonics plugins.
Workaround: If you are using FB360 Ambisonics plugins and also have sessions set to 88.2 or 176.4 kHz sample rates, please be aware that there is a known issue where may quit unexpectedly if adding the Control plugin following the instantiation of the Spatialiser plugin. To avoid this issue, use a different sample rate for your session.
Pro Tools and Media Composer PT-247229: Single track direct output exports from Media Composer may appear in the wrong channel when imported to ProTools.
Workaround: (Pro Tools Ultimate and Media Composer Ultimate Only) Using Pro Tools 2018.12 or higher and Media Composer 2018.10 or higher, if a single track is exported from Media Composer and the Direct Output, One File, .Wav file export options are enabled, the file may import into Pro Tools with the wrong channel order. To avoid this issue, select the File Per Track, 5.1, or 7.1 export options in Media Composer.
This results in a single file that will import into Pro Tools with the correct channel order. Another option is to export multiple tracks with the Direct Output setting enabled. This results in a single file that Pro Tools treats as consisting of all mono channels.
PT-256851: AAF-associated WAV files exported from Pro Tools 2019.12 will not AMA-Link in Media Composer 2019.11.
Workaround: If an AAF referencing WAV files is exported from PT 2019.12 and then imported into Media Composer 2019.11 (and earlier) using AMA-Linking, the WAV media is offline. To bring the media online, place the exported WAV media into an OMFI MediaFiles folder accessible by Media Composer.
PT-258888: Video clips in the AAF are in the wrong timeline location.
Workaround: Video clips on the timeline will not be in the correct location if there are any other unrendered video clips included in the sequence. To avoid this issue, make sure that the AAF has all video rendered upon export from Media Composer.
PT-316655: Pro Tools Sketches are not rendered or present in Media Composer compatible .PTXM files.
Workaround: When exporting to the .PTXM file format, Sketches are not rendered. You must manually print sketches prior to .PTXM export.
General Localization PT-264670: Problems Rendering Online Help if Pro Tools Language Support is set to Simplified Chinese.
Workaround: Avid’s Online Help Center is not rendered correctly inside of Pro Tools when the Language Support is set to Simplified Chinese. To View the Help content either switch Pro Tools language to English or open the page in an external browser.
PTSW-63606: Relinking using MacDrive Version 6 to open sessions from other platform.
Workaround: MacDrive version 6 strips the extensions off of files in “Normal Use” mode - you need to use “Backup/File Transfer” mode to avoid having the extensions stripped off. However, “Backup/File Transfer” doesn't work well with multibyte characters, as “International Use” does. “International Use” also strips the extensions, so you either have to not use multibyte characters, or have the trouble with stripping extensions. These used to be separate options in MacDrive 5, but in 6 you can't get one without the other.
To get around the stripping extensions, you can do a Relink by ID only, and have it search through all the files to match them up - this is the only workaround.
PTSW-33569, PTSW-99570, PTSW-33826: AAF/OMF sequences with non-English characters import with garbled clip names or won't relink.
Workaround: If an AAF/OMF sequence containing files or clip names with non-English characters is exported from a Mac-based Pro Tools 7.3.1 system (or lower), it may not import correctly into Avid Media Composer, or Pro Tools 7.4 and higher systems on Windows or Mac. Conversely, AAF/OMF sequences with non-English characters exported from any Pro Tools 7.4 or higher system (or higher) may not import correctly into a Mac-based Pro Tools 7.3.1 (or lower) system. To relink the files, select “Manually Find and Relink,” then deselect all options except “Find by file ID.” Clip names may appear garbled.
59608: Inconsistent MIDI performance on Dutch OS with English Pro Tools.
Workaround: When running the English version of Pro Tools on Dutch OS, MIDI output can slow down with extended use.
Known Issues with Audio Interfaces PTSW-138994: Avid DigiTest firmware updates appear to freeze when DigiTest is not the front-most application.
Workaround: When clicking outside the Avid DigiTest window, the Graphical User Interface (GUI) may appear to freeze. However, the firmware update will complete successfully. If you encounter this issue, please wait for the firmware upgrade to finish. You will know that the firmware update completed successfully when the GUI becomes responsive again.
PTSW-28118: When switching audio interfaces, some devices may fail to load proper drivers with the Found New Hardware wizard.
Workaround: When switching audio interfaces, the Found New Hardware Wizard will sometimes properly identify the device, but then fail to install the needed drivers. If this happens, with the new device connected, go to Add or Remove Programs in the Windows Control Panel, choose the audio interface, select Change, and run a “Repair” install. The driver installation should complete with the Found New Hardware Wizard.
56697: Changing sample rates during a session can cause session to play at a faster or slower speed.
Workaround: Changing Sample Rate during a session from the Control Panel for your audio interface can cause the audio to playback at the incorrect speed. Consequently, the data could be unrecoverable afterwards. Before creating a session, set the Sample Rate in the Control Panel for your audio interface and do not make changes thereafter.
Pro Tools | MTRX Studio PT-259483: Hardware Setup displays “Loop Master: N/A”.
Workaround: If two MTRX Studio units are connected to a single Pro Tools system, Hardware Setup displays “Loop Master: N/A.” To avoid this issue, use only one unit per Pro Tools system (select the unit you want to use in the DADman Device List and deselect all other units).
HD OMNI PT-303824: Pro Tools quits unexpectedly after activating or deactivating the Main and ALT monitors in the Hardware Setup when one of the formats is higher than another.
Workaround: Pro Tools may quit unexpectedly after activating or deactivating the Main and ALT monitors in the Hardware Setup when using HDX with HD OMNI as the Playback Engine if one of the two formats is higher by the channel count than the other monitor format. Restart Pro Tools to correct this issue.
PTSW-1614: Noise in the output signal from HD OMNI with digital input.
Workaround: If HD OMNI is connected to a digital ource with a mismatched clock and Sample Rate Conversion (SRC) is not enabled, you will hear noise (including loud “pops”) in the output signal. To correct this problem, either enable SRC or ensure that the clock of the digital source and HD OMNI are matched correctly.
PTSW-125692: HD OMNI front panel Setup menus are unresponsive after Pro Tools quits unexpectedly.
Workaround: HD OMNI will not automatically recover “stand-alone” mode if Pro Tools quits unexpectedly (or if you disconnect the DigiLink cable from HD OMNI while Pro Tools is running). As a result, some of the SETUP functions accessible from the front panel will be unavailable. Power cycle HD OMNI to recover stand- alone mode.
PTSW-122690, PTSW-1346, and PTSW-1235: Graphic redraw problems in the Hardware Setup dialog.
Workaround: When changing the Hardware Setup configuration for HD OMNI, it is possible to encounter graphics redraw problems in some cases. To force a graphics redraw of the Hardware Setup dialog, close and reopen the Hardware Setup dialog.
PTSW-126575: No sound on output after Hardware reset.
Workaround: After resetting the HD OMNI interface to the default factory settings using the front panel controls, the HD OMNI interface stops emitting sound in sessions where the outputs are not assigned to the Monitor output path. To correct this problem, press the ALT monitor button to switch to the ALT Monitor path, and then press it again to switch back to the Main Monitor path.
PTSW-127313: Loss of monitor path with launching Pro Tools with HD OMNI off or disconnected.
Workaround: When launching Pro Tools and opening I/O Setup after powering off HD OMNI or disconnecting it from the system, the inactive Monitor path is not present in Output tab. You may need to restore the default I/O Settings and remap the corresponding Output buses.
PTSW-127559: Output paths are not automatically created in the Output page of the I/O Setup after disabling the corresponding monitor path in the Monitor page of the Hardware Setup, and re-assigning the outputs from “None” to physical outputs in the Main page of the Hardware Setup.
Workaround: After disabling the Monitor path in the Monitor page of the Hardware Setup and re-assigning the corresponding Outputs from “None” to physical outputs (such as “A 1–2”) in the Main Page of the Hardware Setup, these Output paths are not automatically created in the Output Page of the I/O Setup.
You will have to manually create the appropriate Output paths in the I/O Setup (or click Default).
PTSW-127563: Changing monitor path output assignments in the Hardware Setup does not update the output paths in the Output page of the I/O Setup.
Workaround: When changing Monitor path Output assignments in the Monitor page of the Hardware Setup (such as setting the Monitor path Format to None or assigning the Monitor to different physical outputs), the Output paths in the Output page of the I/O Setup do not reflect the corresponding changes. You will have to manually create the appropriate Output paths in the I/O Setup (or click Default).
PTSW-123896: When creating new sessions, using the I/O Settings selector can result in unexpected output assignments if HD OMNI has an assigned Monitor path.
Workaround: If HD OMNI has an assigned Monitor path, Output paths created by the selected I/O Settings option in the New Session dialog may be offset by the channel width of the Monitor path. If this happens, you will have to manually create the appropriate Output paths in the I/O Setup (or click Default).
PTSW-127739: I/O Setup Bus page erroneously adds Monitor paths.
Workaround: With both MAIN and ALT Monitor paths declared, toggling one of the CR Monitor paths from the current format to “None” and then back to the starting Monitor format from within the Hardware Setup Monitor page, causes the Bus page in I/O Setup to erroneously add an extra Monitor path with the abbreviation with “(1).” This can happen numerous time and each new Monitor abbreviation increments accordingly.
Avid Audio Interfaces with ASIO Third Party Client Software PTSW-162469, PTSW-154719: When adjusting the Hardware Buffer Size in a third-party audio application (such as Reason), the Avid Hardware ASIO driver may quit unexpectedly.
Workaround: It is possible to select an unsupported hardware buffer size for some Avid audio interfaces when using third-party ASIO client software (such as Reason or Cubase). To avoid this issue, use the Avid hardware driver control panel to change the hardware buffer size.
ASIO and WASAPI PTSW-132084: Pops and clicks can occur when using third-party ASIO audio interfaces with Pro Tools.
Workaround: Note that audible pops and clicks can occur when using some third-party audio interfaces even if Error Suppression is disabled. Try increasing the Hardware Buffer size for the device to avoid this problem.
PT-201662: When using Pro Tools or Pro Tools HD with WASAPI or ASIO, Pro Tools cannot create or open sessions that have a different sample rate than Windows default audio interface.
Workaround: When using Pro Tools or Pro Tools HD software with WASAPI, Pro Tools cannot create or open sessions that have a different sample rate than Windows default audio interface. To avoid this issue, exit Pro Tools, disable the audio interface in the Windows Control Panel, and then launch Pro Tools to create or open a session using the desired sample rate.
PT-223463 and PT-237198: Pro Tools fails to launch if video hardware is seen as the default audio interface for Pro Tools.
Workaround: If video hardware is installed after installing drivers for your audio interface, Pro Tools may hang on launch. Should this occur, force quit Pro Tools in task manager and relaunch Pro Tools while holding down the N key on your computer keyboard. This will cause the Pro Tools Playback Engine dialog to launch. Change the playback engine from the video hardware to any supported audio interface.
Error Messages PT-296575 Diagnostic Policy Service causes high-latency DPC calls, which may result in –9093 Errors.
To avoid performance issues, disable Diagnostic Policy Service:
1. Press Start+R, and then type in services.msc and click OK.
2. Right-click on Diagnostic Policy Service and select Properties.
3. Click Stop.
4. Set the startup type to Disabled.
5. Click Apply and then OK.
32637 Error –6031 during playback.
Workaround: If you encounter a –6031 error while playing back a session with dense MIDI or automation, stop playback, save and close the session, quit and re-launch Pro Tools, then re-open the session before resuming playback.
DAE Error –9132 Workaround:
If a –9132 error occurs during Bounce To Disk (even with the highest Hardware Buffer setting selected), bus the desired tracks to the appropriate number and format (mono or stereo) of audio tracks, then record them to disk instead of bouncing.
36130 Error –5000 (Unknown Error) when launching Pro Tools.
Workaround: On a system with multiple partitions, if different InterLok PACE versions are installed on different partitions, Pro Tools will report an “Unknown –5000 error” on launch. To avoid this problem, install the same PACE components on all partitions on your system.
Error –6042 Workaround: If you repeatedly encounter –6042 errors, open the System Usage window and check the PCI gauge. If the gauge is peaked, you will need to reset the PCI bus. To reset the PCI bus, make all tracks inactive and start playback. If you still encounter a –6042 error, quit and relaunch Pro Tools, open the Playback engine dialog, and change the Number of Voices to a setting that uses fewer per DSP.
55049 Error –6074 when toggling all plugins between Active and Inactive mode during playback.
Workaround: In large sessions, deactivating and reactivating all the plugins simultaneously can cause Pro Tools to post the following error: “The engine DSP ran into the TDM2 deadband. Too many I/Os to the TDM2 chip (–6074).” To resolve the problem, activate and deactivate plugins in smaller groups.
42611 Error –9073 when recording to a FireWire drive and the 2 GB file limit is reached.
Workaround: When the 2 GB file limit is reached during recording to FireWire drives, a –9073 error is posted instead of the expected “Recording has been terminated because a disk is full” dialog. This error is benign, and does not signal any data loss or problem with the hard drive.
Error –9073 other than when recording to a FireWire drive and the 2 GB file limit is reached.
Workaround: If you encounter a –9073 error, refer to the Answerbase for possible causes and solutions (www.avid.com/us/support).
Error –9128 Workaround: In sessions with high sample rates (96 kHz or higher), you may need to set the Hardware Buffer Size to 512 or more to avoid –9128 errors during playback with Native plugins or dense automation.
Error –9155 Workaround: In sessions with high sample rates of 96 kHz or more, you may need to set the Hardware Buffer Size to 512 or more to avoid –9155 errors during playback with dense automation.
Error –9735 Workaround: When Pro Tools reaches the end of its time limit in the Timeline, or if Pro Tools has been in continuous play for longer than the maximum time limit, you will encounter a DAE error –9735. The maximum time limit for Pro Tools depends on the session sample rate. For more information, see the Pro Tools Reference Guide.
Errata What's New in Pro Tools 2026.4 Guide and Pro Tools Reference Guide (2026.4) The Enable all GPIOs option in the Synchronization page of the Peripherals dialog (Settings > Peripherals > Synchronization) completely disables (default state) or enables the GPIO for Sync HD and Sync X.
If you are using the GPIO to trigger or as a trigger, ensure that the Enable all GPIOs and Enable Relay-Based GPOs options are enabled.
g In previous versions of Pro Tools, the GPIO was always enabled. Disabling the Enable All GPIOs option alleviates –22003 errors that can occur when time sensitive Synchronization/GPIO packets are sent (regardless of whether or not you are using Relay Based GPIO).