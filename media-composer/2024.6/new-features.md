---
product: Media Composer
module: Editing Application
version: 2024.6
patch_range: 2024.6.x
release_type: Feature Release
release_date: 2024-06-01
source_docs:
  - name: New Features for Media Composer versions 2021.12 to 2025.6.docx
    type: internal-docx
    location: JoJo/private-source
---

# Media Composer 2024.6 – New Features

This release introduces enhancements to the Transcript Tool, transcript management, Pro Tools session importing, marker functionality, automation workflows, and OTIO interchange.

All features come directly from the 2024.6 section of the source document.

---

# ## 🔷 Transcript Tool

### **Transcription Window**
- The Transcript Tool is now a **dockable window**, providing direct access to transcripts for each clip.  
:contentReference[oaicite:1]{index=1}

---

# ## 🔷 Transcript Referencing & Management

### **Subclips and Groups Reference the Transcript for Master Clips**
- Only master clip transcripts are stored in the database.  
- Subclips and groups reference the transcript of their associated master clip.  
:contentReference[oaicite:2]{index=2}

---

### **Changing the Transcript Referenced by a Subclip and Group**
- When enabled, subclips and groups will always be **transcribed directly**.  
:contentReference[oaicite:3]{index=3}

---

### **Manage Transcription of Clips per Bin**
- Entire bins can be included or excluded from transcription.  
- Reduces system load on large projects or lower-spec machines.  
:contentReference[oaicite:4]{index=4}

---

# ## 🔷 Pro Tools Interop

### **Import Pro Tools Session (PTXM) into Media Composer**
- Media Composer can now **import PTXM** files prepared in Pro Tools.  
- Streamlines handoff and iterative roundtripping.  
:contentReference[oaicite:5]{index=5}

---

# ## 🔷 Markers

### **Expanded Marker Colours and Fields**
- Marker colours expanded to sixteen.  
- Marker information previously stored in “Marker Name” is now split into **“Marker Name”** and **“User”**.  
:contentReference[oaicite:6]{index=6}

---

# ## 🔷 Audio Automation

### **Sub-Frame Automation for Volume and Pan Controls**
- Sub-frame accurate reading and writing of automation for **Volume** and **Pan** is now available.  
:contentReference[oaicite:7]{index=7}

---

# ## 🔷 Interchange (OTIO)

### **Update to the Public Preview of OpenTimelineIO (OTIO)**
- Continued work with the open-source community to expand OTIO functionality.  
- OTIO is a human-readable interchange format showing master clip lengths and their placement in sequences.  
:contentReference[oaicite:8]{index=8}

---

# ## Summary

Media Composer 2024.6 includes:

- Dockable Transcript Tool window  
- Master-clip-driven transcript referencing  
- Optional direct transcription for subclips/groups  
- Per-bin transcription management  
- PTXM import  
- Expanded marker colours + “User” field  
- Sub-frame automation for volume and pan**  
- Latest OTIO public preview update**

---

