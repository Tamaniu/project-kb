---
product: MediaCentral | Cloud UX
module: Cloud UX Platform
version: 2022.12.0
patch_range: 2022.12.0–2022.12.2
release_type: Feature Release
release_date: 2022-12-01
source_docs:
  - name: MediaCentral Cloud UX 2022.12.0 to 2022.12.2 – New Features.docx
    type: internal-docx
    location: JoJo/private-source
---

# MediaCentral | Cloud UX 2022.12.x – New Features  
This document lists all new features introduced in MediaCentral | Cloud UX 2022.12.0, 2022.12.1, and 2022.12.2.

---

# ## 🔷 Version 2022.12.0

# ### Asset Editor

#### Metadata Tab Enhancements
- Create, edit, and delete **master data records** directly from the Metadata tab (permission-controlled).
- For multi-value/multi-value compound/master data properties:
  - When filtering returns no matches, a **“Show all values”** link appears to clear the filter.
- Pressing **Esc** when editing Date, Time, DateTime, Duration, Float, Integer, Text, Timecode now discards changes.
- “X” remove-value buttons now only appear on **mouse hover**.
- Long labels are now truncated with **ellipsis**; full value shown via tooltip.
- Read-only templates configured in Asset Management are now enforced in Cloud UX.

#### Storyboard Tab Enhancements
- **All markers** layer added for PM assets:
  - Shows markers from all tracks in a single layer.  
  - Read-only.  
  - New **Track** column allows filtering by track.
- New keyboard shortcuts for segment creation:  
  - **Ctrl/Cmd+1** → open new segment, set In  
  - **Ctrl/Cmd+2** → close segment, set Out  
  - **Ctrl/Cmd+3** → create one-frame segment
- Shortcuts now work when the **Media Viewer is focused**.
- Drag-and-drop multiple markers/restrictions/segments into sequences now supported (except multi-stratum segment dropping).
- Segments outside SOC/EOC are automatically trimmed for AM assets.
- Thumbnails only shown within the SOC/EOC range.

---

# ### Associations App

#### Show Taxonomy Display Labels
- The app now shows **user-friendly labels** for:
  - Legal lists  
  - Thesauri  
  - Master data  
- Previously showed only display IDs.

---

# ### Browse App

#### Browse Favourites
- Users can save frequently-used folders as favourites:
  - **Personal**  
  - **Team**  
  - **Public**
- Ordering: Personal → Team → Public.
- Visible under **My Folders**.

#### Multi-Selection for Transcode & Delivery
- Transcode and Delivery actions now support **multi-select** for up to **50 assets**.

---

# ### Cloud Integrations

#### Workflow Settings App – New *Transcoding* Section (Beta)
- Configure AWS Elemental MediaConvert transcoding profiles.  
- Supports:
  - Multiple AWS accounts  
  - Multiple IAM roles  
  - Multiple S3 regions  
  - Different AWSMC queues & templates

#### Workflow Settings App – New *Locations* Section (Beta)
- Maps SMB and S3 access paths for hybrid on-prem/cloud workflows.  
- Used to ensure correct URL mapping between AM (SMB) and MediaConvert (S3).

---

# ### Collaborate App

#### “Show Unscheduled”
- Remove a Due Date by dragging an assignment into the **Show Unscheduled** window.

#### Show / Clear Filters Button
- Quickly displays or clears active filters (topic, assignment, filters tab).

#### People & Resources Improvements
- Supervisors can now create contacts/resources directly from the header.  
- Collaborators can view People/Resources in read-only mode.  
- New **“Find a contact”** and **“Find a resource”** fields for faster searching.

#### New Priority: *Embargo*
- Indicates a topic/assignment is complete but temporarily on hold.

#### Topic Refresh Improvements
- New/edited/deleted topics now appear instantly without refreshing.

#### Auto-Refresh & Task Refresh
- UI auto-refreshes for:
  - Topics  
  - Assignments  
  - Tasks  
  - Media container  
- A new manual **Task Refr**
