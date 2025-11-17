---
product: Avid NEXIS
module: Storage Platform
version: 2024.6.2
patch_range: 2024.6.2
release_type: Patch Release
release_date: 2024-06-30
source_docs:
  - name: New Features for Nexis versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2024.6.2 – New Features

Avid NEXIS 2024.6.2 includes a new hardware/NIC support addition and resolves two upgrade-related controller issues.

---

# ## 🔷 Client Hardware Support

### Support for Intel E810-XXVDA2 on Windows  
- The **Intel E810-XXVDA2 25/10GbE NIC** is now supported on **Windows 11**, expanding from its earlier Windows 10 support.  
- Confirm supported NICs via the *Avid NEXIS Network and Switch Guide*.  
:contentReference[oaicite:1]{index=1}

---

# ## 🔷 Server Fixes (in Numerical Order)

### SSENG-40856 – Controller Reboot Loop (DNS Resolution Delay)  
- Fixes an issue during upgrade to **2024.5.0** or **2024.6.0** where:  
  - Controllers entered a **reboot loop**  
  - Caused by slow DNS hostname resolution  
:contentReference[oaicite:2]{index=2}

---

### SSENG-41023 – Upgrade Path Correction  
- Previously required installing 2024.6.0 *before* installing 2024.6.1.  
- This patch restores normal behaviour:  
  - Customers can now upgrade **directly to the latest release**, without the forced intermediate 2024.6.0 step.  
:contentReference[oaicite:3]{index=3}

---

# ## Summary

Avid NEXIS 2024.6.2 delivers:

- New support for Intel’s E810-XXVDA2 25/10GbE NIC on Windows 11  
- A fix for DNS-related controller reboot loops  
- Restored direct upgrade paths to the latest version

This is a small but important systems-stability patch.

---
