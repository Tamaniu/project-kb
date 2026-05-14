---
product: media-composer
product-area: editing
version: "2024.12.3"
release-date: 01/12/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Fixed in Media Composer v2024.12.3 Avid Media Composer® ReadMe for Version 2024.12.3 Fixed in Media Composer v2024.12.3 The following have been fixed for all applicable models of Media Composer in this update (First, Standard, Ultimate, and Enterprise):
Bug Number: MCCET-5838. Timecode navigation failed under specific combinations of sequence settings and Timecode Window configurations.
Bug Number: MCCET-5448. The "Scaling" text in the Record Monitor appeared blurred during 3D Warp adjustments.
Bug Number: MCCET-5820. Attempting to consolidate spanned P2 clips resulted in a 'CM_LABEL_NOT_ UNIQUE' error.
Bug Number: MCCET-5628. Media Composer crashed when importing ProRes MXF files from the ARRI Alexa 35.
Bug Number: MCCET-5982. Selection of multiple clips in the bin was lost when the Field Motion property was changed.
Bug Number: MCCET-5906. Loading Canon XF MPEG-2 35 and Sony XDCAM EX 35 media consolidated to OP-ATOM into the Source monitor resulted in assertion failures and application crashes.
Bug Number: MCCET-5810. Media Composer crashed when attempting to load a second sequence while the first sequence was already active in Play Standby mode.
Bug Number: MCCET-5696. Group clips created from subclips with in-points displayed incorrect FrameFlex aspect ratios.
Bug Number: MCCET-5968. A fatal error occurred during transcription while Red Giant Universe AVX plug-ins were active in Media Composer.
Bug Number: MCCET-5467. Interlaced frame rates were not supported when exporting SD 4:3 .mov files.
Bug Number: MCCET-6009. Multigroup clips were scaling up unexpectedly during playback in the Source Monitor in DCI 4K Scope projects.
Fixed in Media Composer v2024.12.3 Bug Number: MCCET-5369. An additional black frame was present at the end of .mov clips linked through UME.
Bug Number: MCCET-5902. Certain versions of Elasticsearch used by Media Composer resulted in uncontrolled resource consumption and application crashes.
Bug Number: MCCET-6000. In some instances, checking out or importing highly complex AAF sequence files could cause Media Composer to become unresponsive.
Bug Number: MCCET-6029. Using 10-bit codecs for rolling and crawling titles caused a 'WRONG FORMAT' error in the Classic Title Tool.
Bug Number: MCCET-5979. When 32-bit WAV files were imported or transcoded into a 50p project, the audio start timecode failed to register correctly.
Bug Number: MCCET-5293. Duplicate yellow trim indicators appeared during ripple trimming when timeline playback transitioned to a second page.
Bug Number: MCCET-5374. The Play Length Toggle button did not appear highlighted in the Command Palette.
Bug Number: MCCET-4483. Flickering or image corruption occurred during playback and after export on systems equipped with NVIDIA RTX A4000 or A4500 GPUs.
Bug Number: MCCET-4448. Using Expert Render with an NVIDIA RTX 5000 GPU resulted in certain matte keys rendering as black.
Bug Number: MCCET-5767. Parameter values appeared on the keyframe graph in the Titler Plus/Effect Editor, which obscured labels or data points.
Bug Number: MCCET-6023. Media Composer caused a memory leak due to repeated access to SMBmapped network drives in domain environments.
Bug Number: MCCET-5127. Playing an asset after rapidly switching to a 9-way multicam split caused the viewer to detach and render outside the source frame.
Bug Number: MCCET-6015. Motion Adapters were lost from muted clips in Media Composer after copy- pasting, reloading the project, or refreshing the timeline.
Bug Number: MCCET-6031. Using 'Create script from clip' on an auto-synced clip resulted in script text being generated multiple times.
Bug Number: MCCET-5598. Subcap playback dropped frames and lost real-time performance.
Fixed in Media Composer v2024.12.3 Bug Number: MCCET-5295. The 'Choose for Me' option misidentified 25i and 50i HD/HDTR formats, which led to incorrect auto project settings.
Bug Number: MCCET-5963. Selecting multiple clips in a bin using Ctrl+A caused the system to hang when executed under a specific user profile.
Bug Number: MCCET-6026. Media did not load in the Source Monitor on the initial double-click in frame view, particularly after opening a project or bin.
Bug Number: MCCET-6043. Media Composer crashed when nudging clips while the Markers window is docked in the top-left corner of the interface.
Bug Number: MCCET-5919. The 'Draft' and 'Best Performance' video quality options were missing, along with the hardware/software toggle when no I/O hardware was detected.
Bug Number: MCCET-5874. When trying to load an MXF OPAtom file recorded via EVS, the following error appears: Exception: MXF_DIDMapperSegmented::GetParsedIndexTableSegmented - Unable to parse the Index Table.
Bug Number: MCCET-6074. (MediaCentral | Production Management) AVC-Intra 100 video files created using Media Composer's Video Mixdown or Transcode initially played back correctly, but showed glitches after being checked into and out.
Bug Number: MCCET-6047. MXF files using the AVC-Intra 100 format had glitches at the end after linking and consolidating in newer Media Composer versions.
Bug Number: MCCET-5938. Bin icon showed as closed in the Favorite Bins folder even though the bin was open in the Main Bin container.
Bug Number: MCCET-6077. NRCS crashed on Qt6Core.dll after Media Composer was relaunched and the user attempted the Shift+Click Create Sequence command in the NRCS tool using a previously loaded story.
Bug Number: MCCET-6049. Media Composer crashed upon opening the Dynamic Relink Window while the user was logged into the NRCS tool.
Bug Number: MCCET-6040. Opening a newly created bin immediately after logging into NRCS caused Media Composer to become unresponsive, displaying an exception error referencing Qt6Core.DLL.
Bug Number: MCCET-6095. (MediaCentral | Production Management) In Media Composer 2024.12.X, the Production Management window hung and caused the editor to crash for certain users when signing in via MediaCentral Cloud UX.
Bug Number: MCCET-5095. Editing a field in the NRCS Tool caused the iNews-linked sequence to be de- associated.
Fixed in Media Composer v2024.12.3 Bug Number: MCCET-5661. Importing an STL file into SubCap in Media Composer triggered a 'No import file selected' error, even though the file was selected and imported successfully.
Bug Number: MCCET-5989. Some markers changed color when a sequence was opened in a newer version of Media Composer, despite the sequence not being edited.
Bug Number: MCCET-5893. (macOS) Drag-and-drop from Interplay Access to Media Composer bins was unsuccessful.
Bug Number: MCCET-6078. Playback in Media Composer froze on Mac systems equipped with M3 and M4 processors.
Bug Number: MCCET-5988. The process of dragging and dropping a story-associated-sequence from the MediaCentral Cloud UX Rundown app (browser) to a bin failed when using Media Composer v24.12.x or later.
Bug Number: MCCET-5830. An Exception: PMM_MISMATCH_MEDIA_WRONG_FORMAT was encountered when attempting to consolidate sequences containing segments of AVC Long GOP.
Bug Number: MCCET-6113. In Frame View, dragging a clip to the Source monitor left previously selected clips highlighted, causing multiple clips to appear selected.
Bug Number: MCCET-5984. When XDCAM MXF OP1A media files were batch re-imported as MXF OP- Atom, the embedded captions (Data track) were not properly imported.
Limitations Limitations The following are known limitations:
Photoshop PSD files are not supported for AMA linking if QuickTime is not installed.
- Some fonts, by their design, are only available in Bold. On macOS systems, selecting a font does
- not always produce a visual change; try selecting “Bold.”
- If you launch a project and receive an “Enable 3rd Party Emulation” warning, even if you select
Enable in the warning dialog, you should also perform the following: Select File > Settings and click the Project tab. Click General Settings and select “Enable Bin Sharing on 3rd party storage emulating Avid NEXIS/ISIS.” Bug Number: MCCET-5929. Intel Mac systems might exhibit reduced performance compared to Apple Silicon systems due to framework modernization designed for native Apple Silicon support. Although performance enhancements were introduced in version 2024.12, Intel-based hardware does not benefit from the same level of optimization as Apple Silicon machines.
> **Note:** This performance difference is due to the optimization for Apple Silicon, rather than an issue that can
be addressed through further development. Avid remains committed to supporting Intel Mac systems in current versions of Media Composer.
Limitations