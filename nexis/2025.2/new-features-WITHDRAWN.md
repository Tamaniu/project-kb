---
product: Avid NEXIS
module: Storage Platform
version: 2025.2.0
patch_range: 2025.2.0
release_type: Feature Release (Withdrawn)
withdrawn: true
withdrawn_reason: "Write operations may be prohibited. All features and fixes included in 2025.2.2."
release_date: 2025-02-01
source_docs:
  - name: New Features for Nexis versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# ⚠️ Avid NEXIS 2025.2.0 – Withdrawn

**THIS VERSION WAS WITHDRAWN BY AVID.**  
Avid advises upgrading to **Avid NEXIS 2025.2.2** immediately.

### Withdrawal Reason (from Avid documentation)
> *Withdrawn due to an issue that may prohibit write operations.*  
All features and fixes from 2025.2.0 are included in **2025.2.2**.

---

# ## 🔷 New Features (Withdrawn Release)

Although withdrawn, these were the major features introduced in **2025.2.0** and re-released in **2025.2.2**.

---

# ## 🔷 Shared Delete

### Support for Shared Delete  
Avid NEXIS 2025.2.0 adds support for **Shared Delete**, enabling a file to be deleted, renamed, or moved even if another application has the file open.

- Previously, NEXIS required **exclusive access** to delete/rename/move a file.
- Shared Delete improves compatibility with:
  - Antivirus software  
  - Endpoint security  
  - Indexers and scanning services  

**Platform-specific details:**

- **Windows:**  
  - If a file is opened with *shared delete*, it can be deleted/renamed/moved by any client.
  - If opened *without* shared delete, old behaviour applies (operation blocked).

- **macOS & Linux:**  
  - Files are *always* opened with shared delete.  
  - Files remain visible until the last holder closes the file.  
:contentReference[oaicite:2]{index=2}

---

# ## 🔷 Larger Drive Capacities (F2/F2X, F5, F5 | NL)

### Support for New High-Capacity HDDs  
- Qualification of **new Seagate high-capacity drives**.  
- New maximum drive sizes:
  - **20 TB** for online Media Packs (F2/F2X, F5)  
  - **24 TB** for nearline Media Packs (F5 | NL)

Reference: *Media Pack and System Drives* chapter in the Setup & Maintenance Guide.  
:contentReference[oaicite:3]{index=3}

---

# ## 🔷 40GbE Rocky Linux Client Support

### Support for Rocky Linux Clients Using 40GbE  
- Rocky Linux clients now supported with **40GbE** connections.  
- Part of Avid’s strategic shift away from CentOS.  
:contentReference[oaicite:4]{index=4}

---

# ## 🔷 Cloud Changes

### CentOS Client Installer Removed (Cloud Only)  
- For Cloud deployments, the Avid NEXIS Client installer for **CentOS** is now removed.  
- CentOS is transitioning to legacy lifecycle status across Avid products.  
:contentReference[oaicite:5]{index=5}

---

# ## 🔷 macOS Improvements

### Support for Custom Icons on macOS Folders  
- NEXIS workspaces on macOS now support **custom folder icons**.  
:contentReference[oaicite:6]{index=6}

---

# ## Summary

Avid NEXIS **2025.2.0** introduced significant enhancements:

- Shared Delete  
- Larger HDD capacities (20 TB / 24 TB)  
- Rocky Linux + 40GbE support  
- Removal of CentOS Cloud installer  
- macOS custom folder icon support  

However, due to a critical defect that **could block write operations**, this release was withdrawn.  
All content was reissued safely in **2025.2.2**.

---
