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
- A new manual **Task Refresh** button also added.

#### Rename Assets from Media Container
- Assets (incl. Notes) can be renamed from inside the Media Container.

#### Asset Tooltip
- Hovering the Info icon shows detailed asset information.

#### Deep Link Support
- Notifications and copied URLs now open:
  - The Collaborate app  
  - The specific task/assignment/topic directly  

---

# ### Collaborate Mobile App

#### Updated User Interface
- Widespread UI modernisation for clarity and usability.

#### People & Resources
- Collaborators can now view all contacts/resources.  
- Supervisors can create or edit them.

#### Sorting & Filtering Improvements
- Better sorting and filtering depending on app location context.

#### My Profile Enhancements
- My Profile → quick links to:
  - iOS Notifications  
  - iOS Language settings  
- About screen shows host server & version.

#### Duplicate Assignments
- Long-press an assignment → Duplicate.

#### Multi-Delete
- Long-press → multi-select → delete multiple items at once.

#### Remote Assets Indicator
- Remote assets display a down-arrow icon consistent with the Browser UI.

#### iOS 16 Support
- Updated OS support; iOS 15 dropped.

---

# ### Installation & Configuration (New-Feature Content)

#### Deploy Script – New Feature Packs
- Install/upgrade now prompts for:
  - Avid Acquire  
  - AWS Elemental  
  - MediaCentral Sync

#### Post-Install / Upgrade Setup Script Enhancements
Updated documentation covers:
- XFER/XFORM configuration  
- Configure Acquire & Router Control  
- Configure MediaCentral Sync Controller  
- OpenID provider buffer updates  
- Enabling System Monitoring

Cloud UX now **auto-backs-up existing YAML configs** to:

#### Certificates & Chrome on macOS
- Chrome removed ability to export self-signed certificates.  
- Installation Guide updated to reflect new macOS certificate workflow.

#### Adding Custom Graphics
- Updated instructions for custom graphics (Chrome changes).

#### Workflow Settings – Shared Library Archive Enhancements
- Requires Consolidate Sequence enabled.  
- New controls:
  - **Dynamic Relink Video Resolution**  
  - **Dynamic Relink Fallback Mode**  
  - **DP Job Queue selection**

---

# ### Layouts

#### Layouts Button Added
- Fast Bar now includes a **Layouts** button.  
- Users can:
  - Create personal or public layouts  
  - Restore saved layouts from server

---

# ### MediaCentral Acquire

#### Acquire App (Introduction)
- New browser-based ingest scheduling, recording and monitoring app.  
- Works with:
  - MediaCentral | Stream  
  - FastServe | Ingest  
- Supports:
  - Automated recording  
  - Edit-while-capture  
  - Multi-server ingest  
  - Routing via Stream or external routers  
- Metadata stored centrally in Cloud UX DB.

---

# ### MediaCentral Panel for 3rd-Party Creative Tools

#### Branding Update
- Panel renamed from:
  - *Avid MediaCentral | Panel for Adobe Premiere Pro*  
  to  
  - **Avid MediaCentral | Panel for 3rd Party Creative Tools**.
- File Connector renamed accordingly.

---

# ### MediaCentral Sync App

#### Multi-Site Enablement
- Sync can now be deployed as a **feature pack** on Cloud UX.  
- Allows PM asset + media synchronisation between sites.  
- IMPORTANT:  
  - Synchronising **multiple** PM systems to **one** Sync server is **no longer supported**.

---

# ### Send to Playback

#### Remote Send to Playback
- Local assets can now be sent to a **remote FastServe system**.  
- Requires:
  - FastServe | Playout 2022.12+  
  - Avid Sales/Professional Services assistance for Cloud UX side configuration  
    (not yet documented)

---

# ### Router Control

#### Router Control Support
- New Router Control app for controlling broadcast routers.  
- Supports:
  - Native protocols  
  - 3rd-party router controllers  
- Exposes:
  - Sources  
  - Destinations  
  - Levels  
- Enables ingest routing within broadcast news workflows.

---

# ### Rundown App

#### Newsroom Permissions Enforcement
- UI now reflects NRCS permissions accurately:
  - Float → disabled when prohibited  
  - Delete story → disabled without rights  
  - Locking stories → restricted  
  - Edit story/form → restricted

#### Phonetic Searching
- Two phonetic search modes:
  - **Fast** (more hits, less accurate)  
  - **Accurate** (fewer hits, higher precision)

#### Master Data Sets
- Only relevant master data columns displayed.

#### Asset Management CBA Rules
- Search App display options now obey AM CBA restrictions.

#### Duration & Duration(ms) Alignment
- Duration and Duration(ms) aligned to SOC/EOC definitions.

---

# ### System

#### Keyboard Shortcuts Documentation Updated
- New and previously undocumented shortcuts now included.

#### System Monitoring – Fluentd / Fluent-bit
- Logstash and Filebeat replaced by Fluentd and Fluent-bit.

#### Grafana Authentication via Okta
- Grafana now accepts Okta as authentication provider.

#### Audit Logging Enhancements
- Audit logs now include subscription license usage data.

#### Log Collection Enhancements
- `collect-logs` updated with more control over volume/content.

#### Timecode Display Improvements
- Handling improved for:
  - Timecode breaks  
  - SOM/SOC/EOC/EOM  
- Affects:
  - Search inline hits  
  - Asset Editor storyboard  
  - Media Viewer

#### Changed User for `avidmam-upload`  
- Service no longer runs as root; uses **avid:avid**.  
- Requires updated mount configuration.

---

# ### Tasks App

#### Edit Metadata Without Mandatory Fields Filled
- Mandatory fields only enforced for actions.  
- Editing general metadata allowed even if mandatory fields empty.  
- Exceptions:
  - Cancel user task  
  - Delegate user task

---

# ### User Management

#### Okta Integration Faster Sync
- Sync interval reduced from **24 hours → 1 hour**.

---

# ## 🔷 Version 2022.12.1

### Temporary File Cleanup Script  
- New script automates cleanup of temporary OP1a files created during Remote STP.  
- Uses `/etc/avid/config/nexis-cleanup.yaml`.  
- Supports:
  - Custom file age  
  - Multiple workspace paths  
- Requires **platform redeploy** to activate.

---

# ## 🔷 Version 2022.12.2

### Avid Maestro Preview Frame Toggle  
- Maestro Preview Frame now controlled via Config Settings → Integrations → Graphics Management → **Full Preview on Page Open**.
- Behaviour depends on:
  - Open Asset  
  - Trigger Full Preview  
  - Change Asset Data
- Requires:
  - Sign out of Cloud UX  
  - Restart Maestro News Services  
  - MaestroMOSService.exe running  

---
