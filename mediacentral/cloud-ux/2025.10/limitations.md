---
product: MediaCentral | Cloud UX
module: Cloud UX Platform
version: 2025.10.0
section: Limitations and Defects Found
release_date: 2025-10-01
source_docs:
  - name: MCCUX Limitations and Defects Found in Version 2025.10.0.docx
    type: internal-docx
    location: JoJo/private-source
---

# MediaCentral | Cloud UX 2025.10.0 – Limitations and Defects Found

This page lists known limitations and defects identified in version **2025.10.0** of MediaCentral | Cloud UX, along with any provided workarounds.

---

# ## 🔷 Action Engine CTMS

### Bug Number: MAM-21373
- In the Rules Editor, the action **Update Metadata** lists the attributes **Top Story** and **Main Organization**, although these cannot be updated for a *Story* or *Pitch*.

---

# ## 🔷 Avid Production Management

### Bug Number: ASSETS-4823
- Deleting a folder with a **large number of assets** (approx. 15,000) causes the deletion request to fail.  
- **No assets** in the folder are deleted.  
- Applies to both:
  - MediaCentral Cloud UX  
  - Production Access client

**Workarounds:**
- Open the folder and delete assets in **smaller batches**, then retry folder deletion.  
- Alternatively:  
  - Move a portion of assets to another folder.  
  - Delete the two smaller folders individually.

---

### Bug Number: PLUS-2293
- After creating the initial PM database backup, subsequent backups using:  
produce “**cannot tar bucket**” warning/error messages.  
- These indicate certain bucket files already exist and were not recreated.

**Workaround:**  
- These messages may be ignored — the resulting backup file is created successfully.

---

# ## 🔷 Browse App

### Bug Number: JP-9849
- When using Avid NEXIS API Services to browse storage, the Browse app side-panel does **not display chevrons** next to the storage root in the tree.

**Workaround:**  
- Although the chevrons do not appear, the tree structure **is available**.  
- Double-click the Avid NEXIS system to expand it and navigate folders.

---

# ## 🔷 MediaCentral Panel for Media Composer

### Bug Number: MTTO-4829
- When Cloud UX is configured with an **OpenID** authentication provider (e.g. Okta), assets do **not** play in the Asset Editor’s Media Viewer.

**Workarounds:**
- For PM assets:  
Load the asset into Media Composer’s **Source/Record monitor**.  
- For AM assets:  
Use **Chrome browser** to access MediaCentral Cloud UX directly.

---

# ## 🔷 MediaCentral Panel for 3rd Party Creative Tools

### Bug Number: AL-3883
- After initiating a partial delivery of **remote PM assets** using Production Management Delivery, imported assets appear **offline** in Adobe Premiere.  
- The issue is due to incorrect mapping of MXF track assignments.

**Workaround:**  
- After delivery completes, **consolidate** or **create a mixdown** of the assets locally.  
- The consolidated assets can then be used in Premiere.

---

### Bug Number: AL-3996
- Importing multi-resolution PM assets fails if the **high-res version** of the asset is offline.

---

# ## 🔷 Search App

### Bug Number: RCTR-3148
- After adding markers to a PM asset, they do **not** appear in the **Timeline view** within *Inline Hits*.

**Notes:**
- The markers *do* appear in the **Storyboard tab**.  
- Search App continues to find marker text correctly.

---

# ## 🔷 Schedule Editor / Schedule Engine

### Bug Number: MAM-21379
- When configuring a **Basic Trigger** intended to run monthly, the **week identifier** cannot be changed to “fifth”.  
- The list retains its prior selection.

---

### Bug Number: MAM-21361
- When Schedule Engine is running in **multiple instances**, jobs are triggered even if the Schedule Engine is **paused**.

---
