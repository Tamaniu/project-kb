---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2024.10.0"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

MediaCentral | Media Files Plugin Version 2024.10 ReadMe Introduction The Avid MediaCentral | Media Files plugin allows enables Adobe Premiere Pro to access a wide range of Avid Atom media, so that Adobe users are able to edit native Avid media in place. The plugin supports intra-frame codecs like DNx and AVC-I, as well as MPEG-2 and even MPEG-4 Long GOP formats such as XDCAM, AVC-L and XAVC-Long, including growing media (EWC). This enables Production Management users to edit in place with all the various file types which can be stored on a Production Management system (including (XDCAM HD, and (X)AVC Long GOP).
The MediaCentral | Media Files plugin is mostly targeted to News editing workflows. Therefore, long sequences and hour-long source clips might affect performance.
This ReadMe contains installation instructions for installing the MediaCentral | Media Files Plugin for both Windows and macOS.
Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
Revision History Date Revised Changes Made December 10, 2024 Initial release.
Installing the MediaCentral | Media Files Plugin Contents Installing the MediaCentral | Media Files Plugin The MediaCentral | Media Files plugin is available for both Windows and macOS. The installer names for each are as follows:
For Windows: AvidMediaCentralMediaFilesPluginInstaller_2023.12_Win.exe
- For macOS: AvidMediaFilesPlugin_2023.12_Mac.dmg
> **Note:** The installers disable the plugin for Adobe After Effects using the blocklist file feature of Adobe's
plugin system. For more information, see https://ppro-plugins.docsforadobe.dev/intro/plugin- installation.html?highlight=blacklisting#plugin-blocklisting-formerly-blacklisting.
> **Note:** Although the illustrations below were captured using a Windows client, the following procedure
applies to both Windows and macOS installations.
To install the MediaCentral Media Files plugin:
1. Locate the appropriate installation file for your environment (Windows or macOS), copy it to your
Adobe Premiere Pro workstation, and double-click it to run the installer.
The InstallShield Wizard opens to the Welcome page.
2. Click Next to continue.
Installing the MediaCentral | Media Files Plugin
3. Click “Yes, I accept the terms in the license agreement” on the License Agreement page, and click
Next.
The Cloud UX Host Information page opens.
4. In the Cloud UX Hostname or IP Address field, type the name or IP address of the MediaCentral
Cloud UX server, and click Next.
If you want to test the connection to the server, click the Test Connection button. If the connection is valid, the Connection Successful dialog box opens to let you know. Click OK to close it.
> **Note:** If you are installing using the macOS installer, you do not need to type the name or IP address
of the MediaCentral Cloud UX server. You can click Next, and you are prompted to enter this information after the main installer has completed.
5. Click Install to install the program.
The Installshield Wizard Completed page opens.
Licensing
6. (Windows Only) Confirm if you want to "Read important Adobe Premiere Pro cache information."
- If no, deselect the checkbox and click Finish.
- If yes, leave the checkbox selected, and click Finish to close the InstallShield Wizard.
The installer completes the installation and opens the README_Adobe_Caches.txt file.
Read the information provided in the .txt file. And, if necessary, follow the instructions on how to clear the Plugin cache, and/or delete the Media cache in the event that the Avid MediaCentral Media Files plugin does not load or runs into problems
> **Note:** If using the macOS installer, this checkbox is not displayed. For more information Adobe Premiere
Pro media cache, see "Adobe Premiere Pro Media Cache" on page 7.
Licensing The Avid MediaCentral | Media Files plugin is licensed with the same license as the Avid MediaCentral | Panel 3rd Party Creative Tools. If you are not assigned such a license, the MediaCentral Media Files plugin will not be operational.
If you can connect to MediaCentral Cloud UX through the Panel inside Adobe Premiere Pro, the Media Files plugin should also work.
After a successful connection to MediaCentral Cloud UX, both the installer and the Panel will write the license configuration file to disk.
Working with the MediaCentral | Media Files Plugin Once the plugin is installed and loaded in Adobe Premiere Pro, even Avid Op-Atom media that Adobe Premiere Pro does not support natively can be imported and used in your sequences.
For more information, see "How the MediaCentral | Media Files Plugin Works" below.
> **Note:** It’s important to note that with the MediaCentral Media Files plugin present, the MediaCentral |
Panel 3rd Party Creative Tools will default to importing all assets from MediaCentral | Production Management natively (i.e., without using the convert option through MediaCentral | Ingest). However, the option to convert assets to Op1a is still available in the context menu, if you need it for a specific workflow.
How the MediaCentral | Media Files Plugin Works The Avid MediaCentral MediaFiles Plugin for Adobe Premiere Pro uses the same core component that is used by many other Avid Products (such as MediaCentral Ingest, the Asset Management Media Rewrapping Services or Media Composer’s MXF export) to read and convert a wide variety of Avid OP- Atom media.
The formats supported by this mechanism are referred to as the ‘platform shortlist’ formats because they are aimed at providing MediaCentral Cloud UX users with an end-to-end workflow that is transparent across all MediaCentral Cloud UX components including – with this plugin – third party products like Adobe Premiere Pro.
Format Support The shortlist formats include most, if not all native Avid Atom resolutions used in today’s common broadcast production scenarios: Starting from the proven DV and DVC Pro codecs, the range extends to Working with the MediaCentral | Media Files Plugin include widely used production formats such as XDCAM HD and AVC-Intra, all the way up to cutting edge encodings such as high-bitrate XAVC-Intra or highly compressed MPEG-4 AVC Long GOP media such as XAVC-Long or AVC-L up to HD resolutions.
These formats are supported in standard frame rates 23.98, 25, 29.97, 50 and 59.94 fps. All native Avid formats supported by the Avid MediaCentral MediaFiles Plugin can be used in growing (EWC) mode, with the limitations outlined below.
Format Limitations Some formats are not currently supported by the plugin even though they may be widely used in a particular product such as Media Composer.
The list of non-supported formats include traditional Avid JFIF formats including 1:1 uncompressed and Avid’s classic AVR resolutions. All formats are supported as Avid Atom only, the plugin does not handle OMF and WAV media files. Also, currently the plugin is unable to convert the 'classic' Avid low-res formats created by AirSpeed and FastServe - H.264 800k and 1.5/2M to the format required by Adobe Premiere Pro. If you encounter formats that do not work as expected, please let us know.
To make native Avid media available to Adobe Premiere Pro, the MediaCentral Media Files plugin must decode all native Avid source media for Premiere. This is a computing expensive process that requires relatively powerful hardware. Not surprisingly, using many sources, long form material or many audio tracks will slow down this process. Also, Long GOP material such as XDCAM and – even more challenging
  - AVC Long GOP requires more processor cycles for decoding. This means that, while performance will be
constantly improved as the plugin matures, at this point the plugin is best suited for smaller broadcast style projects.
Performance With the description above, it should be obvious that the plugin’s performance depends on many factors such as number of streams, codecs used and state of the media. To continue to provide an acceptable user experience, the plugin uses two modes: Conform and real-time.
For more information, see the following topics:
"About Conform Mode" below
- "How Real-time Mode Works" on the next page
- "How Adobe Premiere Pro Interacts with the Plugin" on the next page
- About Conform Mode
In previous versions of the plugin, Adobe Premiere Pro started a conform operation in the background to generate waveform peak data. While the conform operation was ongoing, some essential functionality, such as export, was disabled in Adobe Premiere Pro. The current version of the plugin disables conforming in Adobe Premiere Pro, so peak data will be generated on the fly.
Performance can be optimized further in Adobe Premiere Pro by navigating to the Preferences dialog box, and selecting the Audio option. In the Audio Preferences dialog box, uncheck the Automatic audio waveform generation field, and click OK.
Troubleshooting How Real-time Mode Works In the current version of the plugin, realtime mode is used for all operations. If a user scrubs away from the current position, the plugin will immediately move to the user selected playhead position and start real- time decoding from there. This mode will also be used if the source clip is still growing (Edit-While- Capture, EWC). Due to performance improvements in the plugin, playback and scrubbing operations should be smooth over the entire duration of the clip.
How Adobe Premiere Pro Interacts with the Plugin Adobe Premiere Pro controls the different plugin modes based on user interaction and software internal decisions. With this, Adobe Premiere Pro may choose to discard already conformed segments of media or may start multiple importers at once. This is beyond the control of the Avid MediaCentral Media Files plugin.
Specifically, for MPEG-4 Long GOP media, decoding may require the plugin to keep a large number of video frames in RAM. In combination with the multiple importer behavior described above, the Avid MediaCentral Media Files plugin may consume significant amounts of RAM.
The current version has been optimized to minimize memory consumption, but in combination, Adobe Premiere Pro and the plugin still benefit from having ample amounts of RAM.
Avid is interested in hearing about your experience and get feedback for this new product. This will help us in further optimizing the plugin’s features and performance.
Troubleshooting This section contains troubleshooting information for the MediaCentral | Media Files plugin. The following topics are available:
Troubleshooting "Viewing Log Files" below
- "Adobe Premiere Pro Media Cache" below
- "Plugin Not Loading Properly" below
- Viewing Log Files
The MediaCentral Media Files plugin and Media Processor log files can be found in the following location:
- For Windows: %APPDATA%\Avid\AvidMediaFilesPlugin
- For macOS: /Users/{user name}/Library/Logs/Avid/AvidMediaFilesPlugin
By default the log level is set to error. The log level can be increased to 'dump' for debugging as follows:
For Windows: set the registry key as follows:
- [HKEY_LOCAL_MACHINE\SOFTWARE\Avid Technology\AvidMediaFilesPlugin]
"loglevel"="dump" For macOS:
- Create an empty file dump.lvl at the plugin logs location:
/Users/{user name}/Library/Logs/Avid/AvidMediaFilesPlugin Adobe Premiere Pro Media Cache Adobe Premiere Pro uses a media cache that should be emptied in case an asset cannot be loaded for any reason.
The location of the cache for Adobe Premiere Pro can be found in the following locations:
For Windows:
- %appdata%\Adobe\Common\Media Cache
%appdata%Adobe\Common\Media Cache Files For macOS:
- /Users/Library/Application Support/Adobe/Common\Media Cache
/Users/Library/Application Support/Adobe/Common\Media Cache Files Plugin Not Loading Properly Should the MediaCentral | Media Files plugin not load properly, you can inspect the “Plugin Loading.log” file that Adobe Premiere Pro writes to the following locations:
- For Windows:
Pre 14.5: [Documents Folder]\Adobe\Premiere Pro\[Version number]\ 14.5+: %AppData%\Roaming\Adobe\Premiere Pro\
- For macOS:
~/Library/Application Support/Adobe/Premiere Pro/[version number]/ Notes:
If the log file indicates that the plugin cannot be loaded successfully, clearing the plugin cache may
- resolve the issue. To do this, fully close Adobe Premiere Pro and relaunch it while holding the Shift
key on your keyboard. Adobe Premiere Pro will then ask you whether or not you would like to clear the plugin cache.
Fixed in Version 2024.10.0 Windows only: If clearing the cache does not resolve the issue, a dependency library may not be
- accessible. Please verify that the PATH system environment variable includes 'C:\Program
Files\Avid\MediaProcessor\' and that the location is accessible.
- On macOS, as all dependencies are included in the plugin bundle, this should not be an issue.
Fixed in Version 2024.10.0 The following issues have been resolved in MediaCentral | Media Files Plugin in this release.
Bug Number: AL-3387. Media imported from Production Management through the 3rd Party Creative Tools Panel displays incorrect timecodes in Adobe Premiere Pro when Premiere is relaunched.
Bug Number: AL-3448. Media imported to Adobe Premiere Pro through the 3rd Party Creative Tools Panel will display the start timecodes as 00:00:00:00 (Video In Point).
Limitations The following limitations are included in this release.
Bug Number: AL-610. When you import a drop-frame Production Management asset, the duration of the asset might be reported incorrectly in the Source monitor and the timecodes appear as non-drop frame timecode.
Bug Number: AL-662. On Mac systems, checking-in a sequence to Production Management that contains an Edit-While-Capture (EWC) clip will fail with an AAF error in Adobe Premiere Pro.
Workaround: You must wait for the EWC recording to complete before checking-in the sequence.
Bug Number: AL-3419. On Mac systems running macOS 14.6.1, the Media Files Plugin installer appears to install the plugin successfully but will eventually ask for access to your hard drive and then fail with an AppleScript 'alias' error.
Workaround: This can be resolved by upgrading to macOS 14.7.1 and then running the installer again.
Bug Number: AL-3427. On Mac systems with Intel processors, Airspeed Edit-While-Capture (EWC) recordings at DNxHD SQ may crash Adobe Premiere Pro when attempting playback at the tail end of the EWC clip.
Bug Number: TI-11663. When assets are first imported into Adobe Premiere Pro, playback of Production Management media is choppy, and frames are being dropped. This makes scrubbing video difficult and will cause playback to worsen when scrubbing the timeline. This is especially true with EWC media.
However, given time, as the media is “cached” playback becomes more smooth.
Limitations