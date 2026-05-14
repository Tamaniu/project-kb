---
product: media-composer
product-area: editing
version: "2024.12"
release-date: 01/12/2024
doc-type: new-features
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Media Composer® What's New for Version 2024.12 Avid® recommends that you read all the information in this document thoroughly before installing or using any new software release.
Refer to the Media Composer page on the Avid Knowledge Base for the most up-to-date documentation, which contains the latest information that might have become available after the initial publication.
Avid periodically makes software updates available for download on Avid.com at the following location: https://www.avid.com/support. Please check this site regularly for information on available downloads for your product.
Native Support For Apple Silicon Native Support For Apple Silicon Media Composer v2024.12 now runs natively on Apple silicon, bringing improved performance for playback, processing, and overall user experience with Apple's ARM-based processors on Mac computers.
> **Note:** Media Composer v2024.12 includes a Universal installer that provides support for ARM-based Macs,
with the choice to run native or Rosetta emulation, as well as Intel-based Macs.
> **Note:** In order for a plug-in to work with Media Composer running natively on Apple silicon, the plug-in must
be native or Universal.
Source Side Waveforms Beginning with Media Composer 2024.12, audio waveforms can now be displayed in the Source monitor for clips that contain audio. Displaying audio waveforms in the Source monitor allows users to make better editing decisions, using a visual representation of a clip's amplitude over time, before adding clips to a sequence. For example, this makes it easier to precisely identify and select portions of dialogue or isolate other audio events.
Users may also choose to show a Waveform Map, which is a full-width, mixed down representation of the clip's entire waveform. The Waveform Map includes a separate playhead to indicate your current position within the clip, and it stays in alignment with the Source monitor's timeline, as well as the larger audio waveform. You can click and drag inside the Waveform Map to quickly scrub through the clip's audio, which is similar to navigating within other timelines in Media Composer.
Clicking on either the larger waveform in the Source monitor or inside the Waveform Map places the playhead at that location. In addition, users can use standard or custom keyboard shortcuts for editing and other functions, such as zooming in or out of large waveforms on clips by using Cmd+ [ and Cmd + ] (macOS) or Ctrl + [ and Ctrl + ] (Windows), or Cmd + / (macOS) and Ctrl + / (Windows) to show the entire sequence.
> **Note:** Currently, source side waveforms are only available for clips. Sequences are not supported.
Pausing Background Transcription While Editing If waveforms are not currently displayed in the Source monitor, users may activate them in one of the following ways:
To show waveforms for a clip in the Source monitor using a context menu:
1. Right-click in the Source monitor.
2. Choose "Waveforms > Show Waveforms" from the context menu.
To show waveforms for a clip in the Source monitor using a button:
1. Select Tools > Command Palette.
2. Click on the Play tab and choose the "Show Video/Waveform" button.
Adding this button to the top toolbar in the Timeline or the bottom toolbar in the Source monitor allows for quick access. You may also use the Active Palette option to toggle it on and off.
To show the Waveform Map using a context menu in the Source monitor:
1. Right-click in the Source monitor.
2. Choose "Waveforms > Waveform Map" from the context menu.
To show the Waveform Map using the context menu on a button:
1. Right-click on the "Show Video/Waveform" button, if it has been added to a toolbar in Media
Composer for quick access.
2. Choose "Waveform Map" from the context menu.
As mentioned, right-clicking on the "Show Video/Waveform" button opens a context menu, which includes options for “Waveform Map”, as well as the ability to enable or disable waveforms with "Show Tracks" or "Show Mix". Right-clicking in the Source monitor also opens a context menu with the same options, after "Waveforms" is selected.
Choosing "Show Tracks" displays individual waveforms for all tracks on the clip that is loaded into the Source monitor. Choosing "Show Mix" displays a waveform that represents a mix containing all tracks on the clip that is loaded in the Source monitor. Track selection is saved on a per-clip basis, since each clip may contain a different number and configuration of tracks. The tracks displayed in the Source monitor as individual tracks or included in the Mix / Waveform Map are controlled by the track's Mute/Solo/Enable state on the Source side of the timeline.
> **Note:** Waveform colors are determined by the Setting>User>Interface>General, Highlight color setting.
Pausing Background Transcription While Editing To improve performance while editing in Media Composer, a new checkbox has been added in Transcript Settings (Settings>Project>Transcript), which includes the option to "Pause background transcription while editing". When this option is not selected, transcriptions will process in the background, as they have before. When this option is selected (the default), the transcription process will be temporarily stopped while editing inside Media Composer.
Pausing Background Transcription While Editing After ten seconds of inactivity, the transcription process will continue again. Additionally, anytime that a foreground transcription process is run, the background transcription will be paused, which frees up resources to provide faster foreground transcriptions. Foreground transcriptions will always pause the background transcription, even if the new checkbox box is not selected. Background transcription will continue where it left off after the foreground transcription is finished.
Pausing Background Transcription While Editing