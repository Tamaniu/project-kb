---
product: media-composer
product-area: editing
version: "2023.12.6"
release-date: 01/12/2023
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Fixed in Media Composer v2023.12.6 Avid Media Composer® ReadMe for Version 2023.12.6 Fixed in Media Composer v2023.12.6 The following have been fixed for all applicable models of Media Composer in this update (First, Standard, Ultimate, and Enterprise):
Bug Number: MCCET-5855. "SPFPlayConsumer::Execute TIMEOUT Monitor Exception" error encountered after playback of some XDCAM HD 35 media.
Bug Number: MCCET-5731. Selecting "Decompose" with "Captured Clips Only" option for a sequence resulted in "Assertion failed" and "Fatal Error" messages.
Bug Number: MCCET-5582. Increasing or decreasing timecode values by one frame increments did not work with an edit timebase of 50 fps.
Bug Number: MCCET-4813. In some instances, markers shifted in a timeline that contained Group clips and mixed frame rates.
Bug Number: MCCET-5847. In some instances, performance issues were encountered while using MultiCamera mode.
Bug Number: MCCET-5865. When importing an AAF, users were prompted to "Please choose an import resolution", even if media matched the current project resolution.
Bug Number: MCCET-5800. Using a semicolon in the name of a new sequence template caused multiple sequence templates to be created, in addition to a possible error if selected.
Bug Number: MCCET-5413. "Assertion failed" error was encountered after importing an AAF and previewing the output for Columnar or TabbedLists using the List Tool.
Bug Number: MCCET-5508. Sequence names containing underscores did not appear correctly at the bottom of the Timeline window.
Bug Number: MCCET-5630. In some instances, errors were encountered after using Auto Contrast in the Color Correction panel.
Bug Number: MCCET-5587. Find Script button did not work for Group or MultiGroup clips.
Fixed in Media Composer v2023.12.6 Bug Number: MCCET-5342. LTC timecode for Blackmagic Design I/O devices was out of sync with the timecode for sequences in a 24p project.
Bug Number: MCCET-5645. In some instances, using a Splice-in edit caused an "Assertion failed" error, which prevented bins from saving.
Bug Number: MCCET-5781. Exporting a short sequence to AAF took a long time, while the status window reported "Gathering AAF Dependencies".
Bug Number: MCCET-5316. In some instances, Send to Playback skipped clips and left black space, depending on Dynamic Relink settings and the resolutions used in a sequence.
Bug Number: MCCET-5921. (MediaCentral | Production Management) Send to Playback did not work in a UHD project if "Transcode before sending to playback" was enabled.
Bug Number: MCCET-5771. Moving a clip one frame at a time using keyboard shortcuts could unmute or solo audio tracks.
Bug Number: MCCET-5017. In some instances, the aspect ratio changed after using the "Commit Multicam Edits" command on a sequence made of Group clips.
Bug Number: MCCET-4917. In some instances, the Mute Clip command did not work consistently on Group clips.
Bug Number: MCCET-5687. Loading complex stories in NRCS caused Media Composer performance to slowdown and eventually hang.
Bug Number: MCCET-5344. Smart Tool buttons mapped to the Timeline were deselected after entering Trim mode.
Bug Number: MCCET-5911. Match frames did not work properly when creating a group clip of 59.94p footage in a 59.94i project.
Bug Number: MCCET-5879. (MediaCentral | Production Management) Glitches were encountered after AVC-Intra 100 media created in Media Composer v2024.12 was transcoded using MediaCentral Transcode. This fix requires the use of MediaCentral Transcode v2024.10.2 or later.
Bug Number: MCCET-5809. Playback and scrubbing of AVC-Intra 50/100 1080i50 mixdowns revealed significant encoding artifacts and visual glitches.
Bug Number: MCCET-5650. Subclips created by AutoSync with surround sound had no audio output when played in the source monitor.
Bug Number: MCCET-5386. Media Creation target drive pulldown menu was not wide enough to display long drive or workspace names.
Fixed in Media Composer v2023.12.6 Bug Number: MCCET-5359. Increasing or decreasing the timecode using the "Using Timecode to Find a Frame" in a DF timecode sequence did not move to the correct frame location.
Bug Number: MCCET-5973. (Windows) "Exception: Structured Exception" error occurred when creating a new project on a Media Composer system without SRT and NDI installed.
Bug Number: MCCET-5959. Using "Find Bin" opened a floating window, despite tabbed bins being selected in the settings.
Bug Number: MCCET-5745. (macOS) "File <file_name> not found" error occurred when opening a project containing UTF-8-Mac (NFD) encoded folder names containing certain Japanese characters.
Bug Number: MCCET-5543. Floating Composer monitor moved to the left after toggling show/hide video.
Bug Number: MCCET-5765. Applying the AAX Dyn3 Limiter/Compressor intermittently failed to respond to side-chain input A1 until the Key Input was reselected.
Bug Number: MCCET-4972. The Active Format Description (AFD) metadata entry was missing from exported media files.
Bug Number: MCCET-5456. Dragging a track from within a nested clip to a new track automatically selected the first clip or filler item on the destination track.
Bug Number: MCCET-5703. Switching from the Color workspace to Edit workspace caused the floating Composer window to lose its saved panel layout.
Bug Number: MCCET-5964. Exported MXF files from a 1080x1920 timeline were encoded with a 1088x1920 raster when using DNxHR HQX or DNxHR 444 codecs.
Bug Number: MCCET-5561. (masOS) When comparing sequences, the List Tool incorrectly diplayed frame counts.
Bug Number: MCCET-5698. Symphony color correction tools became unusably slow when Avid Huddle/SRT streaming was enabled.
Bug Number: MCCET-4307. Connection to the FluidMotion vector correction effect editor was lost when switching workspaces.
Bug Number: MCCET-6018. Premiere and Resolve keyboard mappings were unavailable when Media Composer was licensed as a Standard version.
Bug Number: MCCET-5448. The "Scaling" text in the Record Monitor appeared blurred during 3D Warp adjustments.
Fixed in Media Composer v2023.12.6 Bug Number: MCCET-5906. Loading Canon XF MPEG-2 35 and Sony XDCAM EX 35 media consolidated to OP-ATOM into the Source monitor resulted in assertion failures and application crashes.
Bug Number: MCCET-5810. Media Composer crashed when attempting to load a second sequence while the first sequence was already active in Play Standby mode.
Bug Number: MCCET-5696. Group clips created from subclips with in-points displayed incorrect FrameFlex aspect ratios.
Bug Number: MCCET-5467. Interlaced frame rates were not supported when exporting SD 4:3 .mov files.
Bug Number: MCCET-6009. Multigroup clips were scaling up unexpectedly during playback in the Source Monitor in DCI 4K Scope projects.
Bug Number: MCCET-5369. An additional black frame was present at the end of .mov clips linked through UME.
Bug Number: MCCET-5902. Certain versions of Elasticsearch used by Media Composer resulted in uncontrolled resource consumption and application crashes.
Bug Number: MCCET-6000. In some instances, checking out or importing highly complex AAF sequence files could cause Media Composer to become unresponsive.
Bug Number: MCCET-5293. Duplicate yellow trim indicators appeared during ripple trimming when timeline playback transitioned to a second page.
Bug Number: MCCET-5374. The Play Length Toggle button did not appear highlighted in the Command Palette.
Bug Number: MCCET-4448. Using Expert Render with an NVIDIA RTX 5000 GPU resulted in certain matte keys rendering as black.
Bug Number: MCCET-6023. Media Composer caused a memory leak due to repeated access to SMB- mapped network drives in domain environments.
Bug Number:MCCET-5598. Subcap playback dropped frames and lost real-time performance.
Fixed in Media Composer v2023.12.6