---
product: MediaCentral | Cloud UX
module: Cloud UX Platform
version: 2023.12.0
patch_range: 2023.12.0
release_type: Feature Release
release_date: 2023-12-01
source_docs:
  - name: New Features in MediaCentral Cloud UX 2023.12.0.docx
    type: internal-docx
    location: JoJo/private-source
---

# MediaCentral | Cloud UX 2023.12.0 – New Features

This release introduces significant updates across Asset Editor, Browse, Clip Mover, Cloud Integrations, Collaborate, Mobile App, Layouts, Acquire, Multi-Site Settings, My Collection Tool, Process App, Rundown, Search, System and User Management.

All feature descriptions below are taken directly and exclusively from the uploaded 2023.12.0 New Features document.

---

# ## 🔷 Asset Editor

### Storyboard Tab – Thumbnails for AM Video EDLs
- Adds the ability to show **thumbnails** for Asset Management video EDL (sequence) layers.
- The layer selector now preselects **“Thumbnails”** when opening an AM EDL.
- Thumbnails may be shown automatically depending on configuration.
- Refer to *“Working with the Storyboard Tab”* in the User’s Guide.

### Send to Playback – New Entitlement
- The Quick Send → **Send to Playback** option is now controlled via entitlement.
- Admins can enable/disable this per group in the User Management app.
- If disabled:
  - Quick Send menu shows **“No Items”** instead of Send to Playback.
- Entitlement defaults:
  - **Enabled** for upgrades to 2023.12  
  - **Disabled** for new installations of 2023.12+

---

# ## 🔷 Browse App

### Immediate Folder Refresh on Move
- When moving an asset to another folder, the original folder view now refreshes immediately.

### Improved Invalid Character Messages
- When renaming PM folders or assets:
  - Invalid characters now trigger **specific error messages**  
  - Separate messages for **asset names** and **folder names**

---

# ## 🔷 Clip Mover App (New)

### New Clip Mover App for Growing Files
- Introduces a new app enabling transfer of **growing recordings** to playout without needing an outpoint.
- Integrated with:
  - **FastServe | Ingest** (growing file ingest)
  - **FastServe | Playout** (play-while-transfer)

### Workflow Summary
- Start a growing recording from FastServe Ingest or Stream IO Remote Console.
- Enable **Check-In** and select the matching PM system.
- Drag clips from Browse → Clip Mover → drop to FastServe Playout queue.
- Monitor transfer progress in **Process App**.
- Resulting clip appears on the target Playout server’s Remote Console for play-while-transfer.

---

# ## 🔷 Cloud Integrations

### Workflow Settings – Storage Connectors
- Leaving the Storage Connectors app with unsaved changes now opens a **confirmation dialog**.
- User is prompted to Save or Discard changes.

---

# ## 🔷 Collaborate Setting
