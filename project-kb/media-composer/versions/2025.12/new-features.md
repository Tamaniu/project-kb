---
product: media-composer
product-area: editing
version: "2025.12"
release-date: 01/12/2025
doc-type: new-features
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
feature-tags: [transcription, ai, dnx, multicam, markers, extensions, titler]
---

# Media Composer 2025.12 — What's New

Avid® recommends that you read all the information in this document thoroughly before installing or using any new software release.
Refer to the Media Composer page on the Avid Knowledge Base for the most up-to-date documentation, which contains the latest information that might have become available after the initial publication.
Avid periodically makes software updates available for download on Avid.com at the following location: https://www.avid.com/support. Please check this site regularly for information on available downloads for your product.

## Waveform Map Alongside Video

The Waveform Map can now be displayed alongside video in the Source Monitor, allowing you to view audio waveforms and video simultaneously. This builds on the Sourceside Waveforms feature introduced in 2024.12.
To enable this view:
- Right-click in the Source Monitor and choose Waveform > Waveform Map with Video
- Or use the waveform display command button
You can click and scrub the Waveform Map to reposition the playhead while keeping visual alignment with your video. This is especially helpful for audio-driven editing, syncing audio and video using waveform peaks, and identifying dialogue or sound effects without switching views.

## Avid Titler+ Template Workflow

Avid Titler+ now makes it easier to create and share templates.
To create a new template:
- Select Tools > Avid Titler + Template

## Edit Transcription Text

To create a template from a title in a sequence:
- From the Titler+ dashboard, the bottom left includes a drop down to
  - ‘Save’: Update the current template with new changes
  - ‘Save As’: Create a duplicate with the new changes
- From the Effect Editor, drag the effect icon to a bin.
To edit a template:
- Right-click on a template and choose, Edit Titler+ Template
- Drag the template to the Record monitor
The template opens in the Record monitor for adjustments to text, colors, animation timing, and other properties.
To save your changes:
- Click the save button at the bottom left of the Titler+ Dashboard
- Or open another sequence in the Record monitor (which prompts you to save)

### Sharing Custom Templates

You can organize templates into bins for use across projects and share them with other users.
You can now make corrections directly in the Transcript Tool while keeping word-level timing and synchronization intact. Your edits will retain alignment between the transcript and the media, so working in the transcript tool stays in sync.

## Peer-to-Peer Transcript Sharing

To edit transcripts:
1. Double-click a word to edit it in place.
2. Highlight multiple words, and double click to edit them.
3. Right-click and choose Edit Text to update the current word or selected text.
> **Note:** Only one sentence can be edited at a time to maintain timing accuracy.
A Find and Replace feature is available in the Transcript Tool fast menu for quick correction of repeated mistakes, standardization of terminology, or bulk updates across an entire transcript.

### How Timing is Preserved

When you edit transcript text, Media Composer intelligently maintains word-level timing:
- Single word edits: The original word's timing is preserved.
- Multiple words in one word's space: Timings split averaging across the new words.
- Multiple word edits: Media Composer compares the original and edited text to align unchanged
words, then adjusts timings for the words between them.
- Drastic text changes: When the edit is too different to make reliable assumptions, timings are
averaged evenly across the sentence For better control over how word timings are affected, edit at different levels of granularity. Making smaller, more targeted edits gives you more precise control over timing preservation than editing large sections at once.
> **Note:** Edited transcripts are updated in the database and will be shared with others in a shared transcript
environment and via AVTs.
> **Note:** Edited transcripts maintain all timing information and remain fully synchronized with your media for
Script-based editing, SubCap creation, and PhraseFind navigation.
You can now share a central transcript database for a project across a network, allowing transcripts to function like shared media and project workflows. Access to this functionality is only available on a Nexis file system.
Transcript Sharing is enabled via the Project Setting > Transcript Settings, where you can choose:
- Host Shared Transcripts: Allows the current workstation’s database to be accessed by other
workstations.
- Use Shared Transcripts: Utilize the database on the host workstation.

## Full Resolution MultiCamera Output

Enabling transcript sharing will read and write any transcript functionality to the hosting workstation’s database. When transcripts are created, they will be added to the shared database. This allows multiple stations to process media transcriptions simultaneously for a project, resulting in more efficient processing across a team. Any edits or speaker identifications will be shared with users who access this database.
Transcript entries in the database lock as users are writing or editing them. Users will be prompted if a conflict occurs and will have the option to abort on the other workstation and obtain the lock. This should be done with caution if other workstations are known to be offline and not actively writing.
> **Note:** Media Composer transcripts are tied to master clips, which means if it is present across projects, it
will use the same transcript entry. Any changes made in one project will be reflected in all master clips that include it. If the transcript is deleted for one user, it will be deleted for all users using this shared database.
> **Note:** When enabling a station to host transcripts, it does not require that station to have Media Composer
running or in the same project. However, if the host station is not on or the search database is stopped on the host machine, transcripts will not be available for other users.
> **Note:** Only users with access to the relevant shared projects and media can view or edit associated
transcripts. Transcripts cannot be accessed without access to the master clips and/or media associated with the transcript, providing an additional layer of security.
> **Note:** The host workstation must allow inbound TCP/IP connections on port 9281 to share the transcript
database on the network.
Multicam now operates at full resolution, removing the previous quarter-resolution limitation. When working in multicam mode, the Timeline Video Quality Menu displays the same quality options available in single-camera workflows, allowing you to select the optimal quality level for your system.
This enables full-quality multicam output for NDI and SRT workflows, making it possible to stream multicam content to connected monitoring devices in remote and virtual environments at full resolution.
The quality menu displays only options that are supported across all connected output devices.

## DNx 4.0 Codec

> **Note:** Users should be aware of system performance when streaming multiple cameras simultaneously.
Available quality levels may vary based on GPU capabilities, number of multicam angles, and whether NDI or SRT output is enabled.
The DNx 4.0 update simplifies codec selection and adds new flexibility for color depth control, making it easier to deliver high-quality media tailored to your project needs.

### Simplified DNx Codec Selection

Media Composer now introduces a unified DNx 4.0 naming system. Instead of choosing between DNxHD or DNxHR variants based on resolution, you simply select Avid DNx LB, SQ, HQ, and so on. Media Composer automatically applies the correct encoding for your project, streamlining workflow and reducing complexity.
Ref: https://kb.avid.com/pkb/articles/en_US/Knowledge/Avid-DNx-naming-scheme-and-data-rates
> **Note:** Existing media using the DNxHR or DNxHD codecs will continue to work without any changes.

### Color Bit Depth Control

When exporting DNx media in MOV or MP4 formats, you now have the flexibility to set color depth. Use the Color Depth dropdown in the Export dialog to choose between 8-bit, 10-bit, or 12-bit options, giving you greater control over image fidelity for delivery or archival.

## Marker Improvements

> **Note:** With DNx 4.0, users can expect higher quality at lower data rates. This may affect processing times,
depending on the media being ingested and the export settings.
> **Note:** Combinations of formats that were previously unavailable for export will not be recognized in older
versions of Media Composer. However, any previously possible combination remains compatible across versions.
> **Note:** This update applies only to standalone Media Composer systems. While Avid Production
Management and MediaCentral CloudUX do not reflect the new DNx naming convention in their interface, media created using the simplified naming remains fully compatible in those environments.
- Source-Side Marker Import
Markers can now be imported on the source side, allowing you to add markers from an external file to source clips. If markers contain timecodes outside of the clip's boundaries in the Source monitor, they are ignored.

### SVG Marker Overlays

- Avid Media Composer Extensions now support importing markers with visual annotations as
overlays. This can be enabled and disabled via the Marker Tool fast menu.

## Extensions

Extensions integrate additional tools directly into the Media Composer interface. These tools appear as panels that can be docked, floated, or tabbed like other windows and are accessed from the Extensions menu. Extensions can be included in custom workspaces and behave like standard panels in terms of layout and management.
Panel SDK is now rebranded as Media Composer Extensions, and a new Extensions menu appears in the application menu once an extension is installed. This menu provides easier access to installed Extensions, making it simpler to manage and launch tools within your workspace.