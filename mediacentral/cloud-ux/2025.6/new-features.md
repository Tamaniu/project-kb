---
product: MediaCentral | Cloud UX
module: Cloud UX Platform
version: 2025.6.0
patch_range: 2025.6.0–2025.6.3
release_type: Feature Release
release_date: 2025-06-01
source_docs:
  - name: MediaCentral Cloud UX versions 2025.6.0 to 2025.6.3 – New Features
    type: internal-docx
    location: JoJo/private-source
---

# MediaCentral | Cloud UX 2025.6.x – New Features

This document lists all new features introduced across the **2025.6.0**, **2025.6.1**, **2025.6.2**, and **2025.6.3** releases of MediaCentral | Cloud UX.

---

# ## 🔷 Version 2025.6.0

# ### Asset Editor

#### Custom Tab Order  
- Tabs in the Asset Editor can now be reordered via drag-and-drop.  
- A blue bar appears to indicate the target drop position.  
- For details, see *“Asset Editor Tabs”* in the User’s Guide.

---

# ### Asset Editor – Transcript Tab

#### Removal of Preview Flag  
- The Transcript Tab is now fully supported; the "Preview" banner has been removed.

#### Support for PM Subclips  
- You can now open Production Management subclips in the Transcript Tab.  
- Transcript portions corresponding to subclips display automatically.  
- Starting a transcript on a subclip transcribes the **entire master clip**.  
- If the master already has a transcript, **re-transcribe** is triggered.

#### Overflow Menu  
- When horizontal space is limited, Transcript Tab buttons collapse into an overflow menu.  
- By default, **Export Transcript** and **Create New Transcription** appear in the overflow.

#### Entitlement Enforcement  
- Transcript creation and editing now require the entitlement:  
  **Avid Ada Transcribe RW Access**.  
- Without it, users may only *view*, *copy*, or *download* transcripts.

#### Set and Change Transcript Name  
- You can name a transcript when creating it and rename it afterwards.

#### Edit Mode Changes  
- Editing transcript segments requires explicitly enabling **Edit Mode**.  
- Enabling Edit Mode disables **Sync Playhead** automatically.

#### Export Transcript  
- Transcripts can now be exported in *.txt, *.csv*, and *.srt* formats.

#### Copy Text to Clipboard  
- Users can copy:
  - single words  
  - sentences  
  - sentence ranges across segments  
  - whole segments  
  - multiple segments  

#### Filtering by Speaker  
- A new Speaker filter shows only the segments belonging to selected speakers.

#### Delete Speaker  
- Speakers no longer used in the transcript can be deleted (unless still referenced).

#### Multi-Segment Speaker Assignment  
- You can change or assign speakers across multiple selected segments.  
- Multi-segment creation of new speakers is supported.

#### Segment Selection Improvements  
- **Right-click segment selection** is now available.  
- **Sentence selection across segments** is supported.  
- **Multi-selection of segments** via Shift/Ctrl click is supported.

#### Warning Icon for Partial Transcripts  
- A warning icon appears when only part of a transcript is available due to errors.

#### Improved Auto-Update  
- Shorter clips (<1 hour): transcript auto-loads fully once complete.  
- Growing or >1h clips: transcript updates in real time; editing enabled post-completion.

#### Improved Messaging  
- “No speech found” appears when a track contains no dialogue.  
- Failed transcribes show a temporary Fast Bar notification.

#### Improved Error Handling  
- Partial transcripts remain visible and editable even if creation fails mid-process.

#### Improved Reload Behaviour  
- Reloading preserves the currently selected transcript.

#### Simplified Text Highlighting  
- Shift-click highlighting is deprecated; direct selection preferred.

#### Improved Find Feature  
- Find now operates UI-side and interacts with the Speaker filter.  
- Clearing search terms now also clears highlights and counts.

---

# ### Associations App

#### Default Thumbnail Icon  
- A default icon is shown when an asset lacks a thumbnail.

#### Cached Thumbnail Usage  
- The app uses cached thumbnails to reduce backend requests.

#### Improved Sorting & Loading  
- Sorting metadata is applied when loading relations.  
- List view sorting applies via column headers.  
- Large associated asset sets load faster.

---

# ### Avid Ada Transcribe

#### Preview Status  
- Exits Tech Preview introduced in 2024.10.x.

#### Updated Model  
- New GPU-accelerated “turbo” model provides:
  - ~3× faster transcription  
  - Improved accuracy  
- Automatically enabled when GPU detected.

#### PostgreSQL Database Updates  
- Systems configured in clusters now automatically deploy a **second PostgreSQL pod** for redundancy.

---

# ### Browse App

#### Rename Option  
- Users can rename assets, sequences, and folders via menu/dialog.

#### Create Transcript Option  
- Transcript creation accessible directly from Browse for PM master clips.

#### Improved Drag & Drop  
- Entire Results area becomes a drop zone.  
- Subfolder highlighting indicates valid drop targets.

#### Subclip Creation Setting  
- Behaviour configurable in Configuration Settings App.

#### Audio-Only Clip Icon  
- Audio-only PM master clips display an Audio icon instead of generic Master Clip icon.

---

# ### Chat App

- Chat App (Beta) removed due to discontinued Microsoft Teams integration.

---

# ### Cloud Integrations

#### GCP: Improved Single-File Transfer  
- Now uses:
  - XML multipart upload  
  - Sliced object download  

#### Storage Connectors → Process App  
- Transfer jobs are now exposed to **Job Monitor**.

---

# ### Configuration Settings App

#### Publisher Automation (New Section)  
- Enables publishing clips via automation without using the Publisher App.

#### Subclip Creation Setting  
- Defines whether the Alt/Option key is required for drag-drop subclip creation.

#### Sync Service Account Assignment  
- Sync Services now require assignment of a Cloud UX administrator or a Default Service Account member.

#### Dynamic Range Support  
- HDR/SDR status now visible in:
  - Asset Editor Media Viewer  
  - Metadata Tab  
  - Search App pills  
  - Display Options (Search App only)

> **Note:** Requires specific versions of Asset Management / Production Management per Avid documentation.

---

# ### MediaCentral Acquire

#### Enhanced UI Performance  
- Significant performance improvements with large numbers of channels/recordings.

#### Change Source During Recording  
- Users can switch recording sources live, without stopping an active recording.

---

# ### MediaCentral Collaborate (Discontinued)

- Collaborate App is removed.  
- Manual MongoDB cleanup steps provided for legacy data.

---

# ### MediaCentral Hoverscrub

#### Alternate Storage Location  
- Hoverscrub proxy storage can now be relocated to alternate storage paths.

---

# ### Notifications App

#### Scheduled-Job Notifications  
- Platform notifications sent when scheduled jobs execute.

#### Open Default App on Click  
- Clicking a notification opens the default app for the referenced asset.

---

# ### Platform Automation (Engines & Services)

#### Schedule Engine (New)  
- Maintains scheduled jobs and executes actions.

#### Action Monitor (New)  
- Receives action statuses and forwards to Job Monitor (Process App).

#### Wolftech Event Connector (New)  
- Polls Wolftech change messages and pushes them to Kafka.

#### Wolftech Change Event Agent (New)  
- Converts Wolftech events into automation events.

#### Action Engine Search (New)  
- Performs Search queries for automation workflows.

#### Action Engine Wolftech News (New)  
- Enables automation actions against Wolftech entities.

#### Action Engine Publisher (New)  
- Triggers PM/AM publishing workflows without the Publisher App.

#### Updated ActionSpecs  
- New fields: `entities`, `minEntities`, `maxEntities`.

---

# ### Platform Automation – Rules Editor App

#### Edit Expression Dialog  
- Expressions can reference Rules Simulator outputs.

#### Wolftech News Rule Support  
- Supports:
  - Story  
  - Publishing Output  
  - Pitch  
- Actions include:
  - Create Publishing Output  
  - Create Sequence  
  - Create News Sequence  
  - Add to Folder  
  - Send to Playback (now supported)

#### New Field: “Entity”  
- Defines how entity IDs are resolved (Literal, Property, Expression, Source Event).

#### New Actions  
- **Publish**  
- **Add to Publishing Output**  
- **Add to Story**

#### Property Namespaces Updated  
- New prefixes:
  - `common|`  
  - `custom|`  
  - `status|`

#### Collaborate Removed  
- Legacy Collaborate rules moved under “Other”.

---

# ### Process App

#### Action Visibility  
- Automation actions and rule-driven jobs now visible with filtering options.

#### Manual & Scheduled Retry  
- Supports retries on failed automation actions.

#### Storage Connector Jobs  
- Upload/Copy/Download jobs visible and actionable.

#### Improved Housekeeping  
- Archive/purge behaviour enhanced.

#### Pause/Resume Support  
- Processes may now support pausing and resuming.

#### Indicators for Successful Actions  
- Action buttons briefly highlight when an action is applied.

#### Filter Count Indicators  
- Sidebar and toolbar filters show match counts.

#### PARTIAL Status  
- New final status “PARTIAL” added.

---

# ### Publisher App

#### Updated Publisher Settings Integration  
- Wildmoka portal link improved.  
- Tunnel service behaviour updated.  
- Improved tunnel auto-restart safeguards.

---

# ### Rundown App

#### Light/Dark Mode Support  
- Matches global Cloud UX theme.

#### New Panel Arrangement Options  
- Vertical or Horizontal layout for Queue/Story.

#### New Display Toggle  
- Show Queue Name or Story Title on tabs.

#### Timing Bar Show/Hide  
- User setting persists across sessions.

#### Retain Story Form Visibility  
- Shift+Ctrl+F toggles story form visibility (persisted).

#### Paste Formatted Text  
- Colour and style detection improved:
  - Red = presenter  
  - Green = captions  
  - Blue = machine control  
  - Black = standard text

#### Segment Ordering Improvements  
- New grabber control for drag-reorder.  
- Visual indicators for drop position.

#### Coloured Event Status  
- Status colours applied (Cued, Play, Offline, Error).

---

# ### Search App

#### Create Transcript Option  
- Available via App Menu and context menu for PM modules.

#### Ada Transcript Status (Search Pill)  
- Supports:  
  - Canceled  
  - Completed  
  - Failed  
  - Paused  
  - Pending  
  - Running  

#### Ada Transcript Status Display  
- Coloured icons appear in results.

#### Wolftech Integration  
- New searchable asset types:
  - Publishing Output  
  - Event  
  - Story  
  - Pitch

---

# ### User Management App

#### Avid Ada Transcribe Entitlement  
- Enables transcript creation/editing for authorised groups only.

#### Adobe Project Delete Permission  
- New entitlement for Premiere Pro deletion workflows.

---

# ### User Settings

#### Platform Automation Notifications  
- Two new notification toggles:
  - System-independent jobs  
  - Wolftech News rule applies

#### Appearance Customisation  
- Light Mode, Dark Mode, System Default.

---

# ### Wolftech App

#### General Improvements  
- Backend optimisations improve loading times.

#### Mobile App  
- Wolftech Go now reference
