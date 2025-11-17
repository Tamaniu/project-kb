---
product: Media Composer
module: Editing Application
version: 2023.8
patch_range: 2023.8.x
release_type: Feature Release
release_date: 2023-08-01
source_docs:
  - name: New Features for Media Composer versions 2021.12 to 2025.6.docx
    type: internal-docx
    location: JoJo/private-source
---

# Media Composer 2023.8 – New Features

This release introduces major enhancements in AI tools, user profiles, audio workflows, UI behaviour, sequence handling, export settings, and device management.

All items below are taken exactly from the 2023.8 section of the source document.

---

# ## 🔷 AI Tools

### **AI-Enhanced ScriptSync and PhraseFind**  
- Adds new capabilities through a significant technology preview.  
- Includes transcript creation via the **PhraseFind AI engine**.  
:contentReference[oaicite:1]{index=1}

---

# ## 🔷 User Profiles & UI

### **Media Composer Classic User Profile and Workspace**  
- New “Media Composer Classic” profile restores UI elements and behaviours from pre-2018 versions.  
:contentReference[oaicite:2]{index=2}

### **Display Middle Composer Button Panel**  
- Option available in Composer Settings to enable the middle button panel.  
:contentReference[oaicite:3]{index=3}

### **Changing Monitor Configuration Duplicates Workspaces**  
- When altering monitor count, MC asks whether to duplicate the current workspace.  
:contentReference[oaicite:4]{index=4}

---

# ## 🔷 Developer Tools

### **Panel SDK**  
- Introduces a new API set enabling deeper third-party integrations.  
:contentReference[oaicite:5]{index=5}

---

# ## 🔷 Audio

### **Audio Punch-in Using USB Audio Devices with Video Hardware**  
- Supports USB audio input while using video output hardware simultaneously.  
:contentReference[oaicite:6]{index=6}

### **Clip Gain Extended to 36 dB**  
- Maximum clip gain increased from 12 dB → 36 dB.  
:contentReference[oaicite:7]{index=7}

### **“LFE Only” Mono Tracks**  
- Mono tracks can be designated as LFE-only.  
:contentReference[oaicite:8]{index=8}

### **Track Effect Bypass**  
- Adds a new **“Track”** option under Effect Bypass in Audio Project Settings.  
:contentReference[oaicite:9]{index=9}

### **Device Selection for Desktop Audio Output**  
- Choose which connected audio device MC uses for desktop audio.  
:contentReference[oaicite:10]{index=10}

---

# ## 🔷 Subclipping

### **Batch Subclip Tool**  
- Enables creation of multiple subclips with adjustable options:  
  - Track selection  
  - Adding/removing frames  
:contentReference[oaicite:11]{index=11}

---

# ## 🔷 Timeline & Editing Enhancements

### **Apply Sequence Template to an Existing Sequence**  
- Updates format, track layout, and names while keeping other attributes.  
:contentReference[oaicite:12]{index=12}

### **Keyboard Shortcuts Added to Command Button Tooltips**  
- Hovering over tool buttons now reveals associated shortcuts.  
:contentReference[oaicite:13]{index=13}

---

# ## 🔷 Export & Interchange

### **Multi-Mix Tool Options Added to Pro Tools Session Export Settings**  
- Enables adding guide tracks to PT session exports.  
:contentReference[oaicite:14]{index=14}

### **GOP Options Added to XDCAM Export to Device**  
- Adds “Keyframe mode” and “Keyframe distance” for constant-GOP exports.  
:contentReference[oaicite:15]{index=15}

### **Optimized EDL with Four Audio Tracks**  
- EDL outputs now support up to **four audio tracks**.  
:contentReference[oaicite:16]{index=16}

---

# ## Summary

Media Composer 2023.8 delivers:

- AI upgrades for ScriptSync and PhraseFind  
- New “Classic” user profile  
- Panel SDK (new integration API)  
- USB punch-in with hardware playback  
- Batch Subclip Tool  
- Workspace duplication on monitor changes  
- Extended clip gain and LFE track option  
- Track effect bypass improvements  
- Device selection for desktop audio  
- Sequence Template application  
- New Pro Tools export options  
- XDCAM GOP export controls  
- Four-track optimised EDL output

---
