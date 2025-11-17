---
product: Avid NEXIS
module: Storage Platform
version: 2025.5.3
patch_range: 2025.5.3
release_type: Recommended Release
recommended: true
release_date: 2025-09-23
replaces:
  - 2025.5.1 (limited availability)
  - 2025.5.0 (withdrawn)
source_docs:
  - name: New Features for Nexis versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2025.5.3 – New Features

Avid NEXIS 2025.5.3 is the **recommended version for all Avid NEXIS systems**, both on-premises and cloud.  
This release resolves the major issues found in 2025.5.1 affecting F2 Engines with LACP and mirrored workspaces.

---

# ## 🔷 Server Fixes (in Numerical Order)

### **SSENG-44465 — Critical Fix for F2 Engines on LACP**
- In Avid NEXIS 2025.5.1, **media mirror writes would fail**  
  when an **Avid NEXIS | F2 or F2X engine** was configured with:
  - LACP (Link Aggregation Control Protocol), and  
  - Auto-negotiated **25Gbps** links.
- This issue is fully resolved in 2025.5.3.  
:contentReference[oaicite:1]{index=1}

---

### **SSENG-44552 — Storage Group API Fix (AWS EBS)**  
- On Avid NEXIS | Cloud Online Storage (AWS EBS),  
  adding Media Packs to a Storage Group created via the **public API** failed with:

  > “Failed: Unable to complete operation. Invalid parameter”

- Fixed **only for Storage Groups created in 2025.5.3 or later**.
- Storage Groups created in 2025.5.1 or earlier must be **deleted and recreated**.  
:contentReference[oaicite:2]{index=2}

---

### **SSENG-44695 — Incorrect Assert During Media Pack Resize**
- When adding smaller Media Packs to an existing Storage Group,  
  if the **Effective capacity** became less than the **allocated workspace capacity**,  
  the system incorrectly triggered an **assert error**.
- In 2025.5.3, the system correctly returns:

  > “Failed: Reservation exceeds Storage Group capacity”  
:contentReference[oaicite:3]{index=3}

---

# ## 🔷 Client Fixes

### **SSENG-44473 — avidfos Service Crash**
- Fixes a crash in the **avidfos** service triggered by:
  - Multiple threads rapidly opening/closing directories  
  - Common in workflows using third-party transfer tools  
- This defect was present in earlier 2025.x clients and is now resolved.  
:contentReference[oaicite:4]{index=4}

---

# ## 🔷 Platform Notices

### Windows 10 End-of-Support  
- Avid NEXIS 2025.5.3 is one of the final versions tested with **Windows 10**,  
  but Microsoft ends support for Windows 10 on **14 October 2025**.
- Avid recommends migrating to **Windows 11** for continued support.  
:contentReference[oaicite:5]{index=5}

---

# ## Summary

Avid NEXIS 2025.5.3 includes the following critical improvements:

- Fix for **F2/F2X mirror-write failures** with LACP + 25GbE  
- Fix for AWS EBS Storage Group API issues  
- Correction of Media Pack capacity handling during resize  
- Stabilisation of the avidfos client service  
- Updated OS support recommendations (Windows 10 → Windows 11)

This version is **the officially recommended build** for all Avid NEXIS systems and should be adopted by any site running 2025.5.x or earlier.

---
