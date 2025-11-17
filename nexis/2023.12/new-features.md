---
product: Avid NEXIS
module: Storage Platform
version: 2023.12.0
patch_range: 2023.12.0
release_type: Feature Release
release_date: 2023-12-01
source_docs:
  - name: New Features for NEXIS versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2023.12.0 – New Features

This release introduces improvements to cloud workflows, workspace management visual feedback, and major performance enhancements for Pro Tools when using Avid NEXIS | F2 SSD Engines.

---

# ## 🔷 Cloud Workflows – Ubuntu Client Support

### Ubuntu Client for Avid NEXIS | Cloud Storage  
- Avid NEXIS | Cloud Storage systems now allow downloading the **Avid NEXIS Client kit for Ubuntu** directly from the Management Console.  
- Suitable for MediaCentral | Cloud UX workflows.  
- **Note:**  
  - Ubuntu kit supports **command-line operations only** (no Client Manager GUI).  
:contentReference[oaicite:1]{index=1}

---

# ## 🔷 Management Console Improvements

### Pending Workspace Access Changes  
- When modifying Workspace Access for a user or group:  
  - The Access value turns **orange**, **italic**, and displays an **asterisk** `*`  
  - Indicates a **pending change** not yet committed  
- Aligns the UI behaviour with Media Composer and MediaCentral.  
:contentReference[oaicite:2]{index=2}

---

### Workspace Delete Feedback
- Workspaces marked for deletion now receive the suffix:
- - Helps administrators identify workspaces undergoing block/object deletion (useful for workspaces with large media volumes).  
:contentReference[oaicite:3]{index=3}

---

# ## 🔷 Performance — Avid Pro Tools + F2 SSD

### Performance Improvements for Pro Tools Workflows on F2 SSD  
- Significant performance enhancements introduced for customers using:  
- **Avid NEXIS | F2 SSD Engines**, and  
- **Avid Pro Tools** with **high track counts**

- Improvements include support for **up to 4000 voices (channels) per SSD Media Pack**, subject to network conditions.  
- Avid strongly recommends:  
- Connecting Pro Tools clients via **compatible 10GbE switches** for best performance.  
- Refer to the *Avid NEXIS Network and Switch Guide* for details.  
:contentReference[oaicite:4]{index=4}

---

# ## Summary

Avid NEXIS 2023.12 delivers:

- New Ubuntu Linux client support for cloud workflows  
- Clearer UI feedback when modifying workspace access rights  
- Better visibility when deleting large workspaces  
- Major performance improvements for Pro Tools on F2 SSD systems  

This version closes out the 2023 cycle with a focus on reliability, clarity, and performance.

---

