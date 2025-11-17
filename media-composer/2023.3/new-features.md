---
product: Media Composer
module: Editing Application
version: 2023.3
patch_range: 2023.3.x
release_type: Feature Release
release_date: 2023-03-01
source_docs:
  - name: New Features for Media Composer versions 2021.12 to 2025.6.docx
    type: internal-docx
    location: JoJo/private-source
---

# Media Composer 2023.3 – New Features

The 2023.3 release introduces enhancements for remote workflows, exporting to Pro Tools, bin protection, folder organisation, and improved metadata and relink tools.

---

# ## 🔷 Remote & NEXIS Workflows

### **Copy Media from a Remote User to NEXIS Workspaces**  
- When connected to **Avid NEXIS | Edge**, remote users can now copy media from their local machine directly into mounted NEXIS workspaces.  
- Streamlines remote ingest workflows for Enterprise deployments.  
:contentReference[oaicite:2]{index=2}

---

# ## 🔷 Pro Tools Interop

### **Improvements to Pro Tools Session Export**  
- When exporting a Pro Tools Session using **Copy All Media**, MC now evaluates the **entire bin** rather than only media referenced by the loaded sequence.  
- New behaviour interacts with:
  - *Ask to Exclude Audio Media from a Previous Sequence*  
  - *Ask to Exclude Video Media from a Previous Sequence*  
:contentReference[oaicite:3]{index=3}

---

# ## 🔷 Project & Bin Management

### **New “Protect Project Bin” Command**  
- A new command in the **bin context menu** prevents other users from modifying a shared project bin.  
:contentReference[oaicite:4]{index=4}

---

### **Right-Click to Add a Folder Within a Folder**  
- Previously, subfolders had to be created at root level and dragged manually.  
- You can now **right-click inside any folder** to create a nested folder directly.  
:contentReference[oaicite:5]{index=5}

---

# ## 🔷 User Profiles & Workspaces

### **New User Profiles for Premiere Pro Editors**  
- Adds new profiles and workspaces tailored for editors transitioning from Adobe Premiere Pro.  
:contentReference[oaicite:6]{index=6}

---

# ## 🔷 Marker & Metadata Improvements

### **Creation Date Column Update in the Marker Tool**  
- The *Creation Date* column now follows the **operating system’s date format**.  
:contentReference[oaicite:7]{index=7}

---

# ## 🔷 Relink & Media Handling

### **Choice of File or Folder in Relink Dialog**  
- In the “Locate Media” window, users can now choose a **specific file** or an **entire folder**.  
- Folder selection allows rapid relinking of large media sets.  
:contentReference[oaicite:8]{index=8}

---

# ## 🔷 UME (Universal Media Engine)

### **Live Link Support for UME**  
- Live Link is now supported via UME for:
  - MOV  
  - MP4  
  - TIFF  
  - JPEG  
  - PNG  
- (Image sequences not included.)  
:contentReference[oaicite:9]{index=9}

---

# ## Summary

Media Composer 2023.3 includes:

- Remote-to-NEXIS media copy (Edge)  
- Improved Pro Tools session export logic  
- Project bin protection  
- Nested folder creation via right-click  
- Premiere-style user profiles  
- Updated Marker Tool metadata formatting  
- Faster, smarter Relink (file or folder)  
- UME Live Link support for key formats  

A focused 2023 feature release aimed at strengthening remote workflows, metadata clarity, and editorial efficiency.

---
