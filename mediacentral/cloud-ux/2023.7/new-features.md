---
product: MediaCentral | Cloud UX
module: Cloud UX Platform
version: 2023.7.0
patch_range: 2023.7.0–2023.7.23
release_type: LTM Release
release_date: 2023-07-01
source_docs:
  - name: New Features in MediaCentral Cloud UX 2023.7.0 to 2023.7.23.docx
    type: internal-docx
    location: JoJo/private-source
---

# MediaCentral | Cloud UX 2023.7.x – New Features  
LTM Release (with cumulative patches 2023.7.1 → 2023.7.23)

The following sections list all new features introduced in MediaCentral | Cloud UX 2023.7.0 and subsequent patches up to 2023.7.23.

---

# ## 🔷 Version 2023.7.0

# ### Asset Editor

#### Metadata Tab Improvements
- Tab navigation improved for **multi-value compound edit windows**:  
  - Tab cycles within a single row rather than jumping to the next row.  
  - Read-only, master data and boolean properties are skipped.
- Legal list entry sorting now respects the sort order defined in Asset Management Datamodel Administrator.

#### Storyboard Tab Improvements
- New **Overflow button** added when window width is reduced.  
- Hidden toolbar buttons are accessible via a context menu when space is limited.
- Legal list entry sorting now respects Asset Management Datamodel Administrator ordering.

#### XAVC-Intra 100 (1080p) Support
- Asset Editor now supports **XAVC-Intra 100 (1080p)** at **50** and **59.94 fps** for:  
  - Playback  
  - Send to Playback workflows

---

# ### Browse App

#### Browse Favourites
- You can now create Favourites using **Create Favourite** in the Browse App menu.

---

# ### Cloud Integrations

#### Feature Packs Installation (Cloud Transcoding + Storage Integration)
Feature Packs ISO installation now includes confirmation prompts for:

- **AWS**  
  - Services: AWS Elemental Gateway, AWS Storage Connector  
  - Feature packs: `aws-elemental`, `aws-storage`  
- **Azure**  
  - Services: Azure Media Services Gateway, Azure Storage Connector  
  - Feature packs: `azure-mediaservices`, `azure-storage`  
- **Google Cloud**  
  - Services: GCP Transcoder Gateway, GCP Storage Connector  
  - Feature packs: `gcp-transcoder`, `gcp-storage`

#### Workflow Settings – Transcoding (GCP)
- New **Transcoding** section to configure transcoding profiles for GCP.

#### Workflow Settings – Locations
- New endpoints added for Locations configuration.  
- Locations represent abstracted connection data with multiple URLs/protocols.

#### Workflow Settings – Storage Connector (Azure)
- New Storage Connector section appears once Azure connector deployed.  
- Allows configuring Storage Connector profiles.

---

# ### Collaborate App

#### Weblink Editing
- You can now edit a weblink’s **name** and **URL**.

---

# ### Collaborate Mobile App

#### Calendar View
- Week-by-week calendar shows assignments by due date.  
- New **Unscheduled** tab shows assignments without dates.  
- Tap & hold to set or adjust due dates.

#### Quick Set for Status and Priority
- Status and Priority can now be changed without entering Edit mode.

#### Light Mode Support
- Toggle between:
  - Light mode  
  - Dark mode  
  - OS automatic appearance

#### Dynamic Font Scaling
- App now responds to iOS “Larger Text” accessibility settings.

---

# ### Installation and Configuration (Ne
