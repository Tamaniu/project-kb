---
product: Avid NEXIS
module: Storage Platform
version: 2023.0.0
patch_range: 2023.0.0
release_type: Feature Release
release_date: 2023-01-01
source_docs:
  - name: New Features for NEXIS versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2023.0.0 – New Features

The 2023.0.0 release introduces new all-flash hardware, improved power supplies for F-Series, significant licensing and cloud-storage model changes, and enhancements to system-time handling and Ubuntu client support.

---

# ## 🔷 Hardware – Engines

### Avid NEXIS | F2 SSD (New Engine)
- New **double-density all-flash Engine** for high-bandwidth workflows.  
- Provides:
  - Flexible configuration  
  - Redundancy  
  - Expansion options  
- Supports one or two all-SSD Media Packs with capacities:  
  - **3.84 TB drives** → 38.4 TB (1 pack) / 76.8 TB (2 packs)  
  - **15.36 TB drives** → 153.6 TB (1 pack) / 307 TB (2 packs)

- With embedded System Director Service:
  - Up to **four F2 SSD Engines** may be combined in a single shared-storage system  
  - Up to **4 Media Packs total**

:contentReference[oaicite:2]{index=2}

---

### Improved F-Series Power Supply Units
- New **“-ECO”** marked PSUs meeting stricter energy-efficiency standards.  
- Older models marked **“-HE”**.  
- Notes:
  - Within a single Engine, all PSUs must be the **same type** (HE or ECO).  
  - Mixed HE/ECO is allowed across multiple Engines in a system.

:contentReference[oaicite:3]{index=3}

---

# ## 🔷 System Behaviour

### System Time Handling Improved
- Changing the system time by more than 20 minutes **no longer invalidates the license**.  
- Fix addresses issues when switching between 12-hour and 24-hour formats.
- Time-zone changes / DST changes remain unaffected.
- Documentation updated to reinforce that **24-hour format is required** in UI fields.

:contentReference[oaicite:4]{index=4}

---

# ## 🔷 Licensing – Cloud Storage

### New Licensing Model for Avid NEXIS | Cloud Storage
- Introduces updated licensing for cloud systems.  
- Existing NEXIS Cloud Storage deployments may upgrade to **2023.3.0** to adopt the new licensing model.  
- Behaviour change:
  - The *Deactivate License* button (present before upgrade) is **removed** after upgrading.
- After the upgrade:
  - A **new license** is required to change *capacity* or *renewal date*.

:contentReference[oaicite:5]{index=5}

---

# ## 🔷 Client Support – Ubuntu

### Ubuntu LTS 22.04 Client Kit  
- Adds an **Avid NEXIS Client installer** for Ubuntu LTS 22.04 to support newer MediaCentral | Platform environments.  
- Notes:
  - **Client Manager GUI is not supported**.  
  - Ubuntu kit supports **command-line only**.

:contentReference[oaicite:6]{index=6}

---

# ## Summary

Avid NEXIS 2023.0 delivers:

- A major new all-flash Engine (F2 SSD)  
- Improved energy-efficient power supplies  
- A redesigned licensing model for cloud deployments  
- More flexible system-time handling  
- New Ubuntu LTS support for cloud and Platform workflows  

It is a foundational release enabling the later 2023.8 scale and performance enhancements.

---
