- No impact on in-platform editing inside Asset Editor.

---

# ## 🔷 Patch 2024.10.3  
## Avid Ada Transcribe
### Status Change: **Exits Preview**
- The Transcript Tab is now **fully supported** (not a Tech Preview).
- Major usability and accuracy improvements.

### New AI Model (GPU-accelerated)
- Automatically detects server GPU presence.
- Enables the new **“turbo” model**:
- Up to **3× faster** transcription.
- Significantly better accuracy.
- Strong recommendation: provision an **NVIDIA GPU** on Ada Worker nodes.

### PostgreSQL Redundancy (Clusters Only)
- Second PostgreSQL pod automatically deployed for HA in cluster environments.
- Single-server deployments remain single-instance.

---

## Transcript Tab — Major Enhancements
### UI & Workflow
- **Preview flag removed** – now a full production feature.  
- **Overflow menu** auto-manages toolbars on smaller screens.  

### Access Control
- All transcript creation/editing functions are now gated by entitlement:  
**Avid Ada Transcribe RW Access**  
- Users without entitlement can **view/download only**.

### Transcript Naming
- Users can set or rename transcript names when creating/editing.

### Editing Improvements
- Edit mode required for modifications.  
- Multi-segment operations:
- Assign speaker
- Create new speaker
- Rename speakers
- Bulk edits  
- Right-click now selects a segment and opens context menu.

### Export & Copy
- Export transcript as **.txt**, **.csv**, **.srt**  
- Copy any text segment with Ctrl+C or via context menu.

### Filtering & Find (Refactored)
- Filter content by **speaker**.  
- Updated **Find**:
- Works client-side  
- Better highlighting  
- Interacts with Speaker filter  
- Clearing search resets counts/highlights  
- New Search icon in input field  

### Auto-Update Improvements
- < 1 hour non-growing clips → full transcript shown automatically.  
- Growing/long clips → transcript updates progressively until complete.  
- Reload preserves selected transcript.

### Better Messaging & Error Handling
- “No speech found” notifications.  
- Partial transcript handling improved (retains partial results).  
- Failures in growing/long clips no longer delete completed portions.

---

## Asset Editor — Dynamic Range Support
### Metadata Tab
- Dynamic Range value now displayed:
- **HDR**
- **SDR**
- **Mixed**
- **Unknown**
- **Not Applicable**

## Search App
### Dynamic Range Pill
- New searchable pill type.
- Display Options now include Dynamic Range.

---

# ## 🔷 Patch 2024.10.2  
## Publisher App
### Configuration Settings Updates
- “Go to publisher backoffice” opens Wildmoka portal in new tab.
- New **Referer set in Wildmoka** checkbox for tenant alignment.

### Proxy Tunnel Improvements
- Clearer notifications:
- “Tunnel up and running: All sockets created”
- “Tunnel Service Stop requested…”
- Automatic restart on pod crash.

### System Limits
- Caps on maximum simultaneous sockets to prevent exhaustion.

---

## Rules Editor
### Action: Media Analytics
- New **Result Name** field (future support in Transcript Tab).
- Opening older rules triggers “Action Specification(s) Changed” once.

---

## Rundown App
- New UI option (App menu):  
**Show Queue Name on Tab** / **Show Story Title on Tab**
- Persisted across sessions.  
- Shift+Ctrl+F toggles Story Form.  
- UI now remembers display state across sessions.

---

## User Management
### New Entitlement
- **Avid Ada Transcribe RW Access** added to group permissions.

---

## Audit Logging
- Media Analytics Engine jobs now logged:
- user  
- asset name  
- quota usage  
- job type  

---

# ## 🔷 Patch 2024.10.1  
## Chat App
### Notification Control
- Users can now **mute/unmute** chat notifications.  
- Status shown via icon.  
- Prevents unnecessary pop-ups during live production.

---

# ## 🔷 Patch 2024.10.0 (Base LTM Release)
## Asset Editor
### Dip to Color
- New transition effect available for sequences and news sequences.

### Audio Waveform Scaling
- Six zoom levels for waveform detail.
- Helps with precision editing.

### Tab Behaviour Improvements
- Tabs no longer truncate names.
- Navigation arrows added for overflowing tabs.

### Subclip Creation Workflow
- Drag-and-drop now **requires Alt/Option** (default).  
- Behaviour can be overridden via Config Settings (see patch 2024.10.7).

### Transcript Tab (Tech Preview in .0)
- Create, view, and edit transcripts for Production Management master clips.  
- AI model generates speaker-labelled segments.  
- Quality depends on SNR and speech clarity.

---

## Asset Management
### OpenID Support (ROPC)
- Asset Management can now authenticate via Cloud UX IAM with OpenID.

---

## Associations App
- Column order/width now persistent across browser sessions.
- Improved loading for large relation sets.

---

## Chat App (New)
- Integrated with **Microsoft Teams**.  
- Allows floating chats within UI for multitasking.  
- Available across:
- Cloud UX
- MediaCentral | Panel for Media Composer
- Panel for 3rd Party Creative Tools

---

## Configuration Settings App
### Email Settings Removed
- SMTP configuration must now be set via script, not UI.

---

## Installation & Configuration
### Supported Upgrade Paths to 2024.10
- 2022.3 (with ≥ 2022.3.12)
- 2023.7 (previous LTM)
- 2024.2

### Encrypted Config Store
- Sensitive configuration now stored encrypted.  
- Manual `/etc/avid/config` files remain active (not migrated).  

### Site Key Update
- Keys written directly to `sitekey.yaml`.  
- `public-key.pem` and `private-key.pem` no longer created.

### Post-Install Setup Scripts
Includes updates for:
- Authentication provider config  
- OpenID ROPC  
- Collaborate admin integration  
- Search config scripts with new language code  
- Change Event Agent (new requirement for Rules Editor & Transcribe workflows)  
- NEXIS API services (HTTPS required for 2024.5+)  
- Email settings scripting  
- Chat App → Entra ID integration  

### Feature Packs
Introduced:
- Avid Ada  
- Speech To Text  
- Media Analytics Gateway  
- Media Analytics Engine  
- Action Engine (AM-Orchestration)  
- Action Engine (PM-STP)

### Kubernetes Certificates
- Annual rotation required.
- Script support added.

### Kafka Security (Multi-Site)
- Secure inter-site data exchange option.

### System Monitoring
- Elasticsearch upgraded to **v8.12.2**.

### Acquire Licensing Update
- Acquire permissions changed — requires license refresh if generated pre-2023.7.

### Ubuntu Update Policy
- `unattended-upgrades` now **disabled** by default.

---

## Collaborate App
### Layout Persistence
- Layouts now preserve:
- active panel  
- sidebar state  
- display options  
- more  

---

## MediaCentral Acquire
### Recording Segmentation
- Enables EWC workflows with segment-based capture.

### Recording Manipulation
- Drag endpoints to adjust duration inside Channels View.

### Large-Scale Performance Enhancements
- Certified for **~80 channels** and **10,000 recordings/hour**.

### User Rights
- Channel access now group-based; highest permission wins.

---

## Notifications App
### New Notification Types
- Platform notifications (Rules-based)
- Priority Wires (Flash, Bulletin, Urgent from Newsroom Management)

---

## Process App
### Adobe Integration Filter
- Filter jobs by **Adobe Integration** system type.

### Media Analytics Job Visibility
- Full hierarchy visualisation.  
- Group by “Media Analytics”.

---

## Rules Editor App (New App)
- Create/edit/enable/disable/duplicate/export/import/delete rules.
- Supports triggers from:
- Collaborate  
- Local Production Management  
- Local Asset Management  

---

## Rundown App
### Auto-Open Story Logic
- New queues honour display state of previously opened queue.

### Keyboard Shortcuts
- Shift+Ctrl+F = Show/hide Story Form  
- Ctrl+P = Print dialog  

### Totals
- Tooltip shows total story time for selected stories.

### Character Counts
- Character count displayed in story segments & timing bar.

---

## Search App
### Inline Hits: Respect Line Breaks
- Proper paragraph handling.

### Layers Filtering
- Filter displayed layers in Timeline View.

### Ada Transcript Search Integration
- Any / Markers & Segments pills now include transcript data.

### TBMD Optimisation
- Faster indexing via batch processing.
- Timeline view loads segments on demand.

### Unicode Improvements
- Better handling of extended characters (e.g. š, ž, č).

### Secondary Search Types Updated
- Today, Last week, Last two weeks, Last year  
(for date-based AM metadata)

---

## Search Index Monitor App
### Ghost Asset Cleanup
- Temporary placeholders now ignored in asset counts.

---

## System
### PAM CTC Redundancy
- Now HA in clusters; improved performance.

### REST Migration
- Bus interface replaced with REST for some services.

### GPU Support (Ada)
- Official support for NVIDIA GPUs to accelerate transcription.

### Hoverscrub Proxy Cleanup
- Automatic deletion of old proxies.

### Ukrainian Localisation
- Full UI available in Ukrainian.

### “What’s New” Prompt
- Post-installation informational window added.

---

## User Settings
### Notification Controls for Rules
- Separate configuration for:
- Collaborate rule applies  
- PM rule applies  
- Asset Management rule applies  
- Email notification type added (Platform Automation only).

### Priority Wires Toggle
- Enable/disable notifications for high-priority wire stories.

## Workflow Settings App
### STP Profile Naming Restrictions
- Only alphanumeric, `-`, and `_` permitted.

---
