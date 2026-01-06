# Avid Media Composer – New Features
## Version 2025.12

> Avid recommends that you read all the information in this document thoroughly before installing or using any new software release.

---

## Waveform Map Alongside Video

The Waveform Map can now be displayed alongside video in the Source Monitor, allowing you to view audio waveforms and video simultaneously. This builds on the Sourceside Waveforms feature introduced in 2024.12.

### To enable this view:
- Right-click in the Source Monitor and choose **Waveform > Waveform Map with Video**
- Or use the waveform display command button

You can click and scrub the Waveform Map to reposition the playhead while keeping visual alignment with your video. This is especially helpful for audio-driven editing, syncing audio and video using waveform peaks, and identifying dialogue or sound effects without switching views.

---

## Avid Titler+ Template Workflow

Avid Titler+ now makes it easier to create and share templates.

### To create a new template:
- Select **Tools > Avid Titler+ Template**

### To create a template from a title in a sequence:
- From the Titler+ dashboard, the bottom left includes a drop-down to:
  - **Save**: Update the current template with new changes
  - **Save As**: Create a duplicate with the new changes
- From the Effect Editor, drag the effect icon to a bin

### To edit a template:
- Right-click on a template and choose **Edit Titler+ Template**
- Drag the template to the Record monitor

The template opens in the Record monitor for adjustments to text, colors, animation timing, and other properties.

### To save your changes:
- Click the save button at the bottom left of the Titler+ Dashboard
- Or open another sequence in the Record monitor (which prompts you to save)

### Sharing Custom Templates
You can organize templates into bins for use across projects and share them with other users.

---

## Edit Transcription Text

You can now make corrections directly in the Transcript Tool while keeping word-level timing and synchronization intact. Your edits will retain alignment between the transcript and the media, so working in the transcript tool stays in sync.

### To edit transcripts:
- Double-click a word to edit it in place
- Highlight multiple words, and double-click to edit them
- Right-click and choose **Edit Text** to update the current word or selected text

> Only one sentence can be edited at a time to maintain timing accuracy.

A **Find and Replace** feature is available in the Transcript Tool fast menu for quick correction of repeated mistakes, standardization of terminology, or bulk updates across an entire transcript.

### How timing is preserved
- **Single word edits**: The original word's timing is preserved  
- **Multiple words in one word's space**: Timings split averaging across the new words  
- **Multiple word edits**: Media Composer compares the original and edited text to align unchanged words, then adjusts timings for the words between them  
- **Drastic text changes**: Timings are averaged evenly across the sentence  

Edited transcripts:
- Are updated in the database
- Are shared in shared transcript environments and via AVTs
- Maintain full synchronization for Script-based editing, SubCap creation, and PhraseFind navigation

---

## Peer-to-Peer Transcript Sharing

You can now share a central transcript database for a project across a network, allowing transcripts to function like shared media and project workflows. Access to this functionality is only available on a **NEXIS** file system.

Transcript Sharing is enabled via **Project Settings > Transcript Settings**:
- **Host Shared Transcripts**: Allows the current workstation’s database to be accessed by other workstations
- **Use Shared Transcripts**: Utilize the database on the host workstation

When enabled:
- Transcripts are read from and written to the host workstation’s database
- Multiple stations can process media transcriptions simultaneously
- Transcript entries lock while being edited to prevent conflicts

Additional notes:
- Transcripts are tied to master clips and shared across projects
- Deleting a transcript affects all users
- The host workstation does not need Media Composer running
- TCP/IP port **9281** must be open on the host system

---

## Full Resolution MultiCamera Output

Multicam now operates at full resolution, removing the previous quarter-resolution limitation. The Timeline Video Quality Menu displays the same quality options available in single-camera workflows.

This enables full-quality multicam output for **NDI** and **SRT** workflows, allowing streaming to connected monitoring devices in remote and virtual environments.

> Available quality levels depend on GPU capabilities, number of angles, and output configuration.

---

## DNx 4.0 Codec

The DNx 4.0 update simplifies codec selection and adds new flexibility for color depth control.

### Simplified DNx codec selection
Media Composer introduces a unified DNx 4.0 naming system:
- Avid DNx LB
- Avid DNx SQ
- Avid DNx HQ

The application automatically applies the correct encoding for your project.

> Existing DNxHR and DNxHD media continue to work without changes.

Reference:  
https://kb.avid.com/pkb/articles/en_US/Knowledge/Avid-DNx-naming-scheme-and-data-rates

### Color bit depth control
When exporting DNx media in MOV or MP4 formats, you can choose:
- 8-bit
- 10-bit
- 12-bit

Notes:
- Higher quality at lower data rates may affect processing time
- Some format combinations are not backward compatible
- DNx 4.0 is **not supported** in PAM or MediaCentral Cloud UX environments

---

## Marker Improvements

### Source-Side Marker Import
Markers can now be imported on the source side. Markers with timecodes outside clip boundaries are ignored.

### SVG Marker Overlays
Extensions now support importing markers with visual annotations as overlays. This can be toggled via the Marker Tool fast menu.

---

## Extensions

Extensions integrate additional tools directly into the Media Composer interface as dockable panels.

Key updates:
- Panel SDK is now rebranded as **Media Composer Extensions**
- A new **Extensions** menu appears once an extension is installed
- Extensions can be included in custom workspaces and managed like standard panels
