---
product: Avid NEXIS
module: Storage Platform
version: 2025.5.1
patch_range: 2025.5.1
release_type: Feature Release (Limited Availability)
limited_availability: true
availability_note: "Requires Avid Support approval due to an issue affecting F2 Engines with 25Gbps + LACP + Mirrored workspaces."
release_date: 2025-05-15
replaces:
  - 2025.5.0 (withdrawn)
source_docs:
  - name: New Features for Nexis versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# ⚠️ Avid NEXIS 2025.5.1 – Limited Availability

**This release is only available with Avid Support authorisation.**  
A known issue affects **Avid NEXIS | F2 Engines** using:

- **25 GbE network links**  
- **LACP (Link Aggregation)**  
- **Media Mirrored workspaces**

See “Known Issues” (page 24) for details.  
:contentReference[oaicite:2]{index=2}

---

# ## 🔷 Includes All Features From 2025.5.0

This release includes **every feature and fix** originally introduced in 2025.5.0 (withdrawn), including:

- Windows 11 23H2 support  
- macOS 15 Sequoia support  
- Ubuntu / Rocky Linux client enhancements  
- High-capacity drive support (20 TB / 24 TB)  
- Increased Cloud Storage limits  
- Amazon Linux 2023 support (Cloud)  
- Additional AWS regions  
- Media Composer 2024.12 CloudFormation updates  

(See the 2025.5.0 page for full details.)

---

# ## 🔷 New Features Introduced in 2025.5.1

## **Support for 2×100GbE Controller for Avid NEXIS | F5**  
- Avid qualifies the **dual-100GbE controller** for use with **Avid NEXIS | F5**.  
- Requires **Avid NEXIS | VFS 2025.5.1** or higher.  
- When adding a new F5 engine equipped with this controller, the system **must** be upgraded to 2025.5.1 first.  
- The **2×100GbE controller can be mixed with a 2×50GbE controller** in a single chassis.  
:contentReference[oaicite:3]{index=3}  

---

## **Support for macOS 15 Sequoia with High-Speed Adapters**  
Expanded support for macOS 15 Sequoia clients, adding qualification for:

- **10GbE**  
- **2×10GbE**  
- **25GbE**  
- **40GbE**  
- **100GbE**

Applies to:

- Apple Silicon (M-series)  
- Intel-based Macs  

Important notes from the documentation:

- ATTO ThunderLink adapters require latest firmware from ATTO.  
- Sonnet Twin10G SFP+ users must use **Apple’s built-in dext**, *not* the Sonnet kext driver.  
- See “Known Issues” on page 24 for more details.  
:contentReference[oaicite:4]{index=4}

---

# ## 🔷 Server Fixes (in Numerical Order)

### **SSENG-42854, SSENG-43568, SSENG-43569**  
- Fixes a media corruption issue affecting video/audio captured using **FastServe** and transferred into NEXIS mirrored workspaces.  
- The issue occurred under certain **EWC (Edit While Capture)** network error conditions.  
:contentReference[oaicite:5]{index=5}

---

### **SSENG-44095**  
- Corrects an issue introduced in 2025.5.0 where **aggregated link speed reporting** caused write failures on **F5 Engines using LACP**.  
- This was the primary cause of 2025.5.0 being withdrawn.  
:contentReference[oaicite:6]{index=6}

---

### **SSENG-41138, SSENG-41140, SSENG-42694**  
- Security enhancements for:
  - Avid NEXIS | VFS  
  - Management communication channels  
:contentReference[oaicite:7]{index=7}

---

# ## Summary

Avid NEXIS 2025.5.1 provides:

- New qualification of **2×100GbE controllers** for F5  
- Expanded **macOS Sequoia** support across all major high-speed network adapters  
- Fixes for FastServe EWC corruption  
- Critical fix for LACP link-speed failure (primary reason 2025.5.0 was withdrawn)  
- Security improvements to VFS  

⚠️ **Due to the issue affecting F2 Engines with 25GbE + LACP + Mirroring, this release requires Avid Support approval before use.**

---
