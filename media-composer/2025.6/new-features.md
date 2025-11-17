---
product: Media Composer
module: Editing Application
version: 2025.6
patch_range: 2025.6.x
release_type: Feature Release
release_date: 2025-06-01
source_docs:
  - name: New for Media Composer version 2025.6 - only.docx
    type: internal-docx
    location: JoJo/private-source
---

# Media Composer 2025.6 – New Features

All content below is taken directly and exactly from the source document, with no edits or omissions.

---

## Proxy Workflow Now Available with Ultimate License

Proxy editing workflows, previously tied to Enterprise licensing or the Avid Nexis Edge product with Avid Nexis storage, are now available to all Ultimate and Enterprise license users. This allows for greater access to both local and remote-friendly proxies, without requiring additional software or hardware.

Media Composer now supports dual-resolution linking, where a single clip can reference both high resolution and proxy media. This enables seamless switching between full-quality and lightweight proxies for improved performance in remote or resource-constrained environments.

Proxies can be generated directly within Media Composer by right-clicking a clip in the bin and selecting “Create Proxies.” Once proxies are created and linked, users can toggle between high-res and proxy playback by right-clicking the play button in the source or record monitor.

Proxy formats include DNxHD LB and H.264, and playback quality is controlled via the Timeline Video Quality Menu. This allows users to switch resolutions on the fly without relinking or manual media management.

This workflow eliminates the need for external transcoding or relinking steps, streamlining proxy editing for both local and remote projects.

Note - It is not currently possible to generate transcripts from proxy media.

---

## On-Prem Avid NEXIS Support for Proxy Workflow

The Proxy Workflows from Avid Nexis Edge are now available without an Avid Nexis Edge deployment, allowing proxy workflows to function directly on an on-prem Avid NEXIS system.

Note - This is strictly for standalone Media Composer systems. It is not supported in a Workgroup (MediaCentral) environment.

---

## Transcript Settings and Transcript Tool UI Improvements

Transcript settings are easier to access in Media Composer v2025.6. The 'Transcript Settings' option has been added to the Transcript Tool Fast Menu, “Include Bin in Transcription” / “Exclude Bin from Transcription” are accessible from the Bin top menu, and the “Start/Stop PhraseFind AI Indexing” option is available within 'Transcript Settings'.

When working in the Transcript Tool, precise word selection is now possible using the keyboard, by holding down Shift and using the arrow keys to adjust the selection, word-by-word. Copying and pasting text has also been improved for the Transcript Tool in this version, which uses plain text formatting for consistent pasting across applications.

---

## Delete Transcripts

You can now delete individual transcripts for a clip from both the Transcript Tool Fast Menu and the Bin context menu. When working with Group or Multigroup clips, only the selected audio’s transcript will be removed.

---

## Single Transcript Index

In previous versions of Media Composer, changing the “Language Hint” in a Project’s Transcript Setting would require all media to be re-transcribed, and switching the language back would point to the old transcripts. As a result, sharing AVT files became unpredictable and could result in duplicated work. Beginning with Media Composer v2025.6, changing the language hint only determines what language is used when transcribing new clips moving forward. Existing transcripts remain untouched, regardless of language, which improves predictability, simplifies collaboration across systems, and removes the need to manage multiple language-specific transcript states.

Note - This update changes the structure of the transcript database. Downgrading to a version prior to v2025.6 may cause the transcript database to go offline. It is strongly recommended to export an AVT before upgrading, especially if there’s any chance you’ll need to revert.

---

## MediaCentral Transcription Interop

When importing media from MediaCentral, transcription data now comes with it. If a user double-clicks a clip or drags it into a bin, the associated transcript is automatically brought into Media Composer and stored in its local transcript database.

Note - Interop only works with MediaCentral's panel, and does not work with MediaCentral Production Management.

---

## Avid Titler+ Clip Text Labels

A new label called “Title Text” now appears in the Timeline on segments created with Avid Titler+, making it easier to identify and distinguish between title segments. This feature, which is enabled by default and can be toggled from the Timeline Clip Text menu, dynamically labels segments based on their topmost Titler+ text content, enhancing clarity and organization in complex projects. In addition, users can quickly locate titles using the “Timeline and Monitor” panel in the Find window or Timeline search bar.

Note - Avid Titler+ now supports integrated GPUs (with at least 2 GB of RAM) from Intel and AMD

---

## Avid Titler+ EDL Export for Titles

Beginning with Media Composer v2025.6, all titles used in the Timeline can be exported as part of an Edit Decision List (EDL). Each Titler+ effect is assigned a dedicated event timecode and a unique name (based on the Clip Text label), making it easy to identify and reference in post-production workflows. This functionality streamlines collaboration and simplifies the editing process, especially when working across different editing systems or with multiple team members, by providing a clear, organized record of all titles and their precise placement within a project’s Timeline.

---

## Use Marks Option for Create SubCap

The Transcribe window for Create SubCap now includes a “Use Marks” option, allowing users to generate captions only within a marked section of the timeline. This is ideal for updating or captioning a specific scene without affecting the rest of the timeline.

---

## AutoSequence and Spot to Timecode Use Camera Column

AutoSequence and Spot to Timecode now use the Camera column in a bin to distinguish between different sources and automatically place the corresponding clips on separate tracks. This works by assigning alphanumeric values (e.g., A, B, Sound) to the Camera column for clips that represent a particular camera or audio source. Once input, information from this column can be used to create a sync map with a single command, placing clips with matching Camera values on the same track. Distinct values are separated, speeding up daily sync processes or mix placement.

Note - When using AutoSequence and holding Option, the camera column will be ignored, since clips are not placed at their related timecode and there is no chance of overlap.

Note - When using Spot to Timecode and holding Option, the camera column will be used, track selection is ignored and new tracks are created. Without holding Option, the camera column will be ignored and selected tracks will be utilized.

---

## OpenTimelineIO Import Support

Media Composer can now import OpenTimelineIO (OTIO) files, enabling better interchange with supported third-party applications and streamlining collaborative workflows.

To import OTIO files (macOS and Windows):

(Option) Drag and drop .otio files directly into a bin

(Option) Choose File > Input > Import Media, select a .otio file and click Open.

(Option) Right-click inside a bin , choose Input > Import Media, select a .otio file and click Open

To relink media from third-party applications for use with OTIO files (macOS and Windows):

Make sure any media included in the .otio file is in your project in Media Composer

Select the online clips you want to relink, right-click on the sequence created by the imported OTIO and choose Relink > Managed Media.

In the Relink window, make sure "Selected items in ALL open bins" is selected, select "Name", and activate the "Ignore extension" checkbox.

---

## Quality Levels for AVC Long GOP Codec Family

A new drop-down menu for AVC Long GOP Quality Level has been added to the Mixdown and Transcode tab for Media Creation settings.

This setting modifies the quality level of AVC Long GOP codecs during media creation operations, such as transcode, mixdown, render, and import. MOV and MP4 export options have the same settings as AVC Long GOP codecs, but in their own export dialog.

There are three quality levels of encoding for this codec: fastest, balanced and best. If not modified, the fastest quality level is used by default, which is the same quality level that was used in previous versions of Media Composer.

---

## HDR Relink

It is now possible to set a requirement for HDR media when performing a Dynamic Relink operation in Media Composer.
