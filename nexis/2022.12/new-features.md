---
product: Avid NEXIS
module: Storage Platform
version: 2022.12.0
patch_range: 2022.12.0
release_type: Feature Release
release_date: 2022-12-01
source_docs:
  - name: New Features for NEXIS versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2022.12.0 – New Features

The 2022.12.0 release introduces client OS support updates, workspace policy changes, final updates for legacy E-Series USM firmware, and improvements to the Client Manager UI.

---

# ## 🔷 Client Operating System Support

### Windows Server 2022 Support  
- Added support for **Windows Server 2022** across:  
  - 1GbE, 2×1GbE  
  - 10GbE, 2×10GbE  
  - 40GbE  
- Applies to all Avid NEXIS on-premises client kits.  
:contentReference[oaicite:2]{index=2}

---

# ## 🔷 Workspace Management

### Unprotected Workspaces No Longer Supported  
- New Workspaces **cannot** be created with *Unprotected* Media Pack mode.  
- New Workspace creation now requires either:  
  - **One Disk protection** or  
  - **Two Disk protection**  
- Existing Unprotected Workspaces remain valid and editable (name, size, Storage Group, etc.).  
- When duplicating an Unprotected Workspace → user must choose One Disk or Two Disk protection.  
- When importing an Unprotected Workspace via DMU, the **default protection mode of the target Storage Group** is applied.  
:contentReference[oaicite:3]{index=3}

---

# ## 🔷 Hardware & Firmware Support

### Final USM Version for Legacy Engines  
- **USM version 1.37B** is now the *final* supported USM build for:  
  - E-Series Engines  
  - System Director Appliance  
  - Avid NEXIS | PRO models  
- No further USM updates will be delivered for these platforms.  
:contentReference[oaicite:4]{index=4}

---

# ## 🔷 Client Manager

### Display IP Address of Connected System  
- New **General Preferences** option in the NEXIS Client Manager allowing users to display the IP address of the connected Avid NEXIS system.  
- Documented in the *Avid NEXIS Client Setup and User Guide*.  
:contentReference[oaicite:5]{index=5}

### Remote NEXIS Setting – Behaviour Clarification  
- The “Remote Avid NEXIS” setting can include both:  
  - Local on-premises systems  
  - Long-distance / high-latency systems  
- **Important:** For all *other* client types/settings,  
  remove long-distance/high-latency systems to avoid:  
  - Slow project open times  
  - Slow Media Creation window response  
:contentReference[oaicite:6]{index=6}

---

# ## 🔷 Language Support

### Language Pack Change  
- **Russian** language support removed.  
- **Ukrainian** added as a new UI language option in the Client Manager.  
:contentReference[oaicite:7]{index=7}

---

# ## Summary

Avid NEXIS 2022.12.0 focuses on:

- tightening workspace protection policies,  
- broadening OS compatibility (notably Windows Server 2022),  
- improving client-side diagnostics/UI,  
- finalising firmware support for E-Series hardware.

---
