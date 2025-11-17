---
product: Avid NEXIS
module: Storage Platform
version: 2024.10.0
patch_range: 2024.10.0
release_type: Feature Release
release_date: 2024-10-01
source_docs:
  - name: New Features for Nexis versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2024.10.0 – New Features

This release adds support for a new Windows 11 build, introduces client-side file deletion logging, updates installer naming conventions, and resolves several server and client issues.

---

# ## 🔷 Client Operating System Support

### Windows 11 Build 23H2 Support  
- Avid NEXIS now supports **Windows 11 build 23H2**, which is the **recommended** build for all Avid NEXIS client systems.  
- Windows 11 builds **22H2** and **21H2** are no longer recommended because they no longer receive Microsoft updates.  
:contentReference[oaicite:1]{index=1}

---

# ## 🔷 Client Logging

### File Delete Logging  
- File and folder deletions on clients are now logged, in addition to existing Workspace deletion logging.  
- Logged details include:
  - Date  
  - Time  
  - User  
  - Host name  
  - File path  
- This feature is **enabled by default**.  
- See *“Logging File Deletions”* in the Avid NEXIS Administration Guide.  
:contentReference[oaicite:2]{index=2}

---

# ## 🔷 Installer Naming

### Updated Installer Naming Convention  
- Avid NEXIS installer names now include the word **“for”** before the trademarked OS name.  
- Example:  
  - `AvidNEXISClientforWindows.exe`  
  - `AvidNEXISClientforMac.pkg`  
:contentReference[oaicite:3]{index=3}

---

# ## 🔷 Server Fixes (in Numerical Order)

### SSENG-40267  
- Creating a Team workspace incorrectly caused an **automatic mirrored workspace** to be created, even when the engine protection mode was set to *Unprotected*.

### SSENG-40632  
- When entering a Storage System Name or Engine Name, the Console allowed more characters than the allowed limit.  
- Character limits now enforced consistently:
  - **18** characters for Engine Name  
  - **31** characters for Storage System Name  

### SSENG-40842  
- Installing an SSL certificate on Avid NEXIS | PRO 40 or PRO+ resulted in no visible change; certificate was not applied.  
:contentReference[oaicite:4]{index=4}

---

# ## 🔷 Client Fixes

### SSENG-40043  
- Resolves a compatibility issue causing **kernel panics** during playback when using:
  - Avid NEXIS client versions **2024.5.x** and **2024.6.x**  
  - Avid Pro Tools  
  - macOS  
:contentReference[oaicite:5]{index=5}

---

# ## Summary

Avid NEXIS 2024.10.0 delivers:

- Support for **Windows 11 build 23H2**  
- Automatic **file and folder deletion logging**  
- Updated installer naming conventions  
- Fixes to workspace creation, naming limits, SSL certificate application  
- A critical macOS playback stability fix for Pro Tools environments  

This release strengthens system reliability and standardises OS and client behaviour.

---
