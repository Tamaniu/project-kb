---
product: media-composer
product-area: editing
version: "2024.12.2"
release-date: 01/12/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Fixed in Media Composer v2024.12.2 Avid Media Composer® ReadMe for Version 2024.12.2 Fixed in Media Composer v2024.12.2 The following have been fixed for all applicable models of Media Composer in this update (First, Standard, Ultimate, and Enterprise):
Bug Number: MCCET-5907. While in Frame View mode, opening a bin always indicated that it had unsaved changes.
Bug Number: MCCET-5921. (MediaCentral | Production Management) Send to Playback did not work in a UHD project if "Transcode before sending to playback" was enabled.
Bug Number: MCCET-5771. Moving a clip one frame at a time using keyboard shortcuts could unmute or solo audio tracks.
Bug Number: MCCET-5858. (macOS) Save As field in the Export dialog window would not accept text that was pasted using Cmd+V.
Bug Number: MCCET-5910. (macOS) Cmd+A did not work to select all items in the Import dialog window.
Bug Number: MCCET-5017. In some instances, the aspect ratio changed after using the "Commit Multicam Edits" command on a sequence made of Group clips.
Bug Number: MCCET-5924. (MediaCentral | Production Management) In some instances, PhraseFind did not start when connected to MediaCentral, resulting in an "A language must be selected before PhraseFind can be performed" error.
Bug Number: MCCET-4917. In some instances, the Mute Clip command did not work consistently on Group clips.
Bug Number: MCCET-5912. Choosing to Show Phantom Marks in the Record monitor caused Effect Editor keyframes to disappear from the Record monitor.
Bug Number: MCCET-5687. Loading complex stories in NRCS caused Media Composer performance to slowdown and eventually hang.
Fixed in Media Composer v2024.12.2 Bug Number: MCCET-5909. (Windows) When using the "Media Composer Classic" user profile, changing the "Create a new Bin or opening a closed Bin" option in the Bin Settings to "Floats the Bin" caused Bins to open behind other windows.
Bug Number: MCCET-5344. Smart Tool buttons mapped to the Timeline were deselected after entering Trim mode.
Bug Number: MCCET-5342. LTC timecode for Blackmagic Design I/O devices was out of sync with the timecode for sequences in a 24p project.
Bug Number: MCCET-5874. When trying to load an MXF OPAtom file recorded via EVS, the following error appears: Exception: MXF_DIDMapperSegmented::GetParsedIndexTableSegmented - Unable to parse the Index Table.
Bug Number: MCCET-5911. Match frames did not work properly when creating a group clip of 59.94p footage in a 59.94i project.
Bug Number: MCCET-5879. (MediaCentral | Production Management) Glitches were encountered after AVC-Intra 100 media created in Media Composer v2024.12 was transcoded using MediaCentral Transcode. This fix requires the use of MediaCentral Transcode v2024.10.2 or later.
Bug Number: MCCET-5936. Play button in the Record monitor was not highlighted during playback of a sequence.
Bug Number: MCCET-5650. Subclips created by AutoSync with surround sound had no audio output when played in the source monitor.
Bug Number: MCCET-5951. "Segmentation fault" error was encountered in sequences containing markers after using the "To the Left" or "To the Right" command to select all corresponding segments (in Segment mode), and using keyboard shortcuts to nudge clips.
Bug Number: MCCET-5386. Media Creation target drive pulldown menu was not wide enough to display long drive or workspace names.
Bug Number: MCCET-5359. Increasing or decreasing the timecode using the "Using Timecode to Find a Frame" in a DF timecode sequence did not move to the correct frame location.
Bug Number: MCCET-5937. Titles created with the Classic Title Tool or Marquee did not update in the Timeline after using Add/Edit Title to modify them.
Bug Number: MCCET-5946. (macOS) Multiple mixes window did not show the saved mix presets in the Multi-Mix Tool.
Bug Number: MCCET-5973. (Windows) "Exception: Structured Exception" error occurred when creating a new project on a Media Composer system without SRT and NDI installed.
Fixed in Media Composer v2024.12.2 Bug Number: MCCET-5895. Exporting markers caused Media Composer to crash.
Bug Number: MCCET-5923. FrameFlex reformat option did not retain when performing an AutoSync on a sequence.
Bug Number: MCCET-5745. (macOS) "File <file_name> not found" error occurred when opening a project containing UTF-8-Mac (NFD) encoded folder names containing certain Japanese characters.
Bug Number: MCCET-5543. Floating Composer monitor moved to the left after toggling show/hide video.
Bug Number: MCCET-5952. Marker names and comments did not appear immediately after pasting a marker into a duplicated sequence until the sequence was reloaded.
Bug Number: MCCET-5765. Applying the AAX Dyn3 Limiter/Compressor intermittently failed to respond to side-chain input A1 until the Key Input was reselected.
Bug Number: MCCET-4972. The Active Format Description (AFD) metadata entry was missing from exported media files.
Bug Number: MCCET-5544. Renaming track names in Group Clips did not trigger a redraw, resulting in partially visible text.
Bug Number: MCCET-5892. (macOS) In Titler++, the 'à' character is incorrectly rendered as an uppercase letter when entered using a French keyboard layout.
Bug Number: MCCET-5456. Dragging a track from within a nested clip to a new track automatically selected the first clip or filler item on the destination track.
Bug Number: MCCET-5918. VBI lines were incorrectly displayed when linking IMX50 media.
Bug Number: MCCET-5703. Switching from the Color workspace to Edit workspace caused the floating Composer window to lose its saved panel layout.
Bug Number: MCCET-5933. Clicking a clip and pressing Cmd/Ctrl+A in quick succession failed to select all items on the first attempt, causing the interface to flash.
Bug Number: MCCET-5729. Consolidating ProRes 422 HQ 4096x2160 50P MOV files from DJI Ronin caused Media Composer to crash.
Bug Number: MCCET-5964. Exported MXF files from a 1080x1920 timeline were encoded with a 1088x1920 raster when using DNxHR HQX or DNxHR 444 codecs.
Bug Number: MCCET-5360. Applying animated effects to clips with alpha channels intermittently caused Media Composer to freeze or crash.
Fixed in Media Composer v2024.12.2 Bug Number: MCCET-5972. Scroll-based shortcuts (Ctrl+Scroll Wheel, Ctrl+Shift+Scroll Wheel) failed to function in Color Correction when the cursor was active in a field box.
Bug Number: MCCET-5561. (masOS) When comparing sequences, the List Tool incorrectly diplayed frame counts.
Bug Number: MCCET-5127. Playing an asset after rapidly switching to a 9-way multicam split caused the viewer to detach and render outside the source frame.
Bug Number: MCCET-5974. Exporting an XML from the List Tool resulted in custom columns and their associated text entries written in the incorrect order.
Bug Number: MCCET-5950. Rolling titles created in the Legacy Title Tool repeatedly played only the first page.
Bug Number: MCCET-5935. Titler++ failed to render visible updates when text modifications were applied.
Bug Number: MCCET-5868. Enabling Secure Reliable Transport (SRT) caused fullscreen playback to stall on dual monitor setups.
Bug Number: MCCET-5908. Editing FrameFlex effects on group clips resulted in incorrect images being displayed in the Effects Editor.
Bug Number: MCCET-5698. Symphony color correction tools became unusably slow when Avid Huddle/SRT streaming was enabled.
Bug Number: MCCET-5279. Caching and redraw issues in the Timecode Burn-In Effect resulted in inaccurate timecode display.
Bug Number: MCCET-5849. Exporting caption data from layered SubCap tracks always showed the text that was on the topmost track.
Bug Number: MCCET-4307. Connection to the FluidMotion vector correction effect editor was lost when switching workspaces.
Bug Number: MCCET-6018. Premiere and Resolve keyboard mappings were unavailable when Media Composer was licensed as a Standard version.
Bug Number: MCCET-5999. XAVC-I 300 clips resolution display name changes to AVC-I after the bin was reopened, resulting in a mixed-resolution indicator being applied to the sequence in the bin.
Bug Number: MCDEV-20233. (Windows) QuickTime files containing an alpha channel could not be imported using the default 'Uncompressed' Alpha Encoding option in the Import Settings window. Starting with Media Composer v24.12.2, all imported alpha channels use Run-Length Encoding (RLE).
Fixed in Media Composer v2024.12.2 Bug Number: MCCET-5902. Certain versions of Elasticsearch used by Media Composer resulted in uncontrolled resource consumption and application crashes.
Limitations Limitations The following are known limitations:
Photoshop PSD files are not supported for AMA linking if QuickTime is not installed.
- Some fonts, by their design, are only available in Bold. On macOS systems, selecting a font does
- not always produce a visual change; try selecting “Bold.”
- If you launch a project and receive an “Enable 3rd Party Emulation” warning, even if you select
Enable in the warning dialog, you should also perform the following: Select File > Settings and click the Project tab. Click General Settings and select “Enable Bin Sharing on 3rd party storage emulating Avid NEXIS/ISIS.” Bug Number: MCCET-5929. Intel Mac systems might exhibit reduced performance compared to Apple Silicon systems due to framework modernization designed for native Apple Silicon support. Although performance enhancements were introduced in version 2024.12, Intel-based hardware does not benefit from the same level of optimization as Apple Silicon machines.
> **Note:** This performance difference is due to the optimization for Apple Silicon, rather than an issue that can
be addressed through further development. Avid remains committed to supporting Intel Mac systems in current versions of Media Composer.
Limitations