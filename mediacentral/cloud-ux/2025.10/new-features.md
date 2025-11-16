---
product: MediaCentral | Cloud UX
module: Cloud UX Platform
version: 2025.10
patch_range: 2025.10.0
release_type: Feature Release
release_date: 2025-10-01
source_docs:
  - name: MCCUX_2025_10_0_ReadMe.pdf
    type: avid-pdf
    location: internal-upload
---

# MediaCentral | Cloud UX 2025.10 – New Features

This release introduces several workflow enhancements, performance improvements, UI refinements and updated platform services across the MediaCentral Cloud UX ecosystem. Release 2025.10 builds on the 2024.10 LTM foundation and continues the expansion of Avid Ada, Search, Publisher, Asset Editor and platform-level automation.

---

# ## 🔷 1. User Interface & Experience

### ### Asset Editor
- Improved responsiveness when switching between large sequences.
- Updated rendering flow reduces delays on metadata-heavy assets.
- Enhancements to waveform rendering for audio media.

### ### Timeline Interactions
- More consistent drag behaviour for segments and keyframes.
- Improved handling of mixed-resolution timeline assets.

---

# ## 🔷 2. Search App Enhancements

### Faster Query Performance
- Updated indexing strategy reduces load times for multi-criteria searches.
- Improved UI rendering for Timeline Inline Hits view.

### Better Unicode & Internationalisation Support
- Full support for combined-character scripts.
- Improved handling of multilingual metadata.
- Updated tokenisation for languages using non-Latin character sets.

### Updated Secondary Date Filters
- New quick-select values:
  - **Today**
  - **Last Week**
  - **Last Two Weeks**
  - **Last Year**

### TBMD (Time-Based Metadata) Enhancements
- Cleaner separation of layers in complex metadata sets.
- Reduced memory usage when scrolling large TBMD results.

---

# ## 🔷 3. Avid Ada Transcribe (AI/ML)

### Updated Speech-to-Text (STT) Model
- Accuracy improvements for noisy environments.
- Faster average processing time on GPU-enabled nodes.
- Improved speaker segmentation for multi-speaker clips.

### Transcript Tab Improvements
- Updated UI responsiveness for long transcripts.
- Lock/unlock behaviour refined to prevent accidental edits.
- Better error-state messaging for failed transcriptions.

### Expanded Language Support *(where supported by licensing)*
- Updated tokeniser and diarization model for broader international coverage.

---

# ## 🔷 4. Notifications and User Messaging

### Expanded Notification Types
- Publisher notifications
- Priority wire notifications (Flash, Bulletin, Urgent)
- Platform-triggered notifications via Rules Engine
- Email notifications for supported apps

### Behaviour Changes
- Faster refresh of the notifications panel.
- Better batching of incoming notifications to reduce UI noise.

---

# ## 🔷 5. Publisher App

### Improved Integration with Wildmoka
- “Go to Publisher Backoffice” now opens in a dedicated tab.
- Updated referer behaviour for permission consistency.

### Tunnel Service Improvements
- More transparent up/down status messages.
- Automatic restart behaviour in case of pod crash.
- Caps implemented to prevent socket exhaustion.

---

# ## 🔷 6. Process & Rules Apps

### Rules Editor (Platform Automation)
- Improved validation when configuring complex conditions.
- Action Media Analytics now includes:
  - **Result Name** field (future use)
  - Better handling of transcript-related actions
- Increased stability when handling large rule libraries.

### Process App Improvements
- New system filter: **Adobe Integration**
- Media Analytics Engine jobs now show full hierarchy
- Faster refresh of job lists with large volumes

---

# ## 🔷 7. Rundown App Improvements

### UI & Workflow
- Updated keyboard shortcut consistency.
- Preserves Story/Queue view mode across sessions.
- Better time calculations for multi-story selections.
- Character count improvements for script views.

### Performance
- Reduced delay when opening very large rundowns.

---

# ## 🔷 8. Search Index Monitor

- Temporary placeholder (“ghost”) assets now filtered correctly.
- More accurate asset counts across large PM systems.
- Reduced false-pending states from stale data entries.

---

# ## 🔷 9. Acquire App & Recording Workflows

### Recording Manipulation
- Improved drag and drop reliability for timeline repositioning.

### Channel Permissions
- Enforcement of group-level access refined.
- Better behaviour when users belong to multiple permission sets.

### Performance & Scale
- Backend improvements scale to high-density ingest installations:
  - Up to ~80 channels
  - ~10,000 recordings per hour

---

# ## 🔷 10. Collaborate App

### Layout Persistence
- Layout states preserved (panels, sidebar, display options).
- Consistent behaviour across reloads.

---

# ## 🔷 11. Chat App

### Microsoft Teams Integration
- More stable floating chat windows.
- Refined notification icon behaviour.

---

# ## 🔷 12. Configuration, Security & System Behaviour

### Configuration Store Security
- More configuration values stored encrypted.
- Legacy `/etc/avid/config` handling improved during upgrades.

### Kubernetes
- Updated scripts for easier certificate rotation.
- Recommended annual cert rotation retained.

### OpenID / IAM
- Updated behaviour for authentication provider configuration.
- Improved ROPC support for Asset Management & Publisher.

### NEXIS API Integration
- HTTPS configuration mandatory for NEXIS 2024.5+.

### Ubuntu OS Behaviour
- Automatic unattended updates remain disabled for admin control.

---

# ## 🔷 13. Installation & Upgrade Behaviour

### Supported Upgrade Paths into 2025.10
- From 2024.10 LTM  
- From 2024.2 (with recent patches)  
- From 2023.7 LTM  
- From 2022.3 (with ≥ 2022.3.12 patch)

### Feature Packs Still Supported
- Avid Ada  
- Speech To Text  
- Media Analytics Gateway  
- Media Analytics Engine  
- Action Engine: PM-STP / AM-Orchestration  

---

# ## Summary for Customers

> **MediaCentral Cloud UX 2025.10 is primarily a workflow-polish and platform-performance release.**  
> It strengthens AI transcription, Publisher, Search, and Rules workflows, while delivering better UI consistency, improved error handling and faster interaction across apps like Rundown, Acquire and Asset Editor.

It is not an LTM release but represents meaningful incremental improvements for news, post, and multi-site deployments transitioning from 2024.10 or 2024.2.

---

# ## Internal Notes (Optional)

- This release deepens platform automation (Rules + Process) but does *not* introduce major new apps.
- GPU acceleration for Ada remains strongly recommended for accuracy + speed.
- Search and TBMD improvements have measurable benefits in high-volume PM deployments.
