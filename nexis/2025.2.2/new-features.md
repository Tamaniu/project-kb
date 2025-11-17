---
product: Avid NEXIS
module: Storage Platform
version: 2025.2.2
patch_range: 2025.2.2
release_type: Feature & Patch Release
release_date: 2025-03-01
replaces:
  - 2025.2.0 (withdrawn)
source_docs:
  - name: New Features for Nexis versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2025.2.2 – New Features

Avid NEXIS 2025.2.2 is the **corrected, safe replacement** for the withdrawn 2025.2.0.  
It includes **all features from 2025.2.0**, plus **additional fixes** resolved after the withdrawal.

---

# ## 🔷 Includes All Features from 2025.2.0

This release includes *everything* introduced in 2025.2.0:

- **Shared Delete**  
- **Larger Media Pack drive capacities**  
- **Rocky Linux 40GbE support**  
- **Removal of CentOS client installer from Cloud deployments**  
- **Custom macOS folder icons**  

*(See the 2025.2.0 page for full detail.)*  
:contentReference[oaicite:1]{index=1}

---

# ## 🔷 Additional Server Fixes (in Numerical Order)

### SSENG-37037, SSENG-37518  
- LDAP server becomes unresponsive and stops processing authentication requests.  
- Caused failure of all Remote LDAP logins.  
- Issue resolved.

---

### SSENG-42931  
- `uServerAgent` crashes when retrieving **Media Pack Disk Statistics** due to unhandled exception.  
- Fixed.

---

### SSENG-43125  
- After upgrading to **2025.2.0**, some Storage Groups displayed **zero capacity** for:  
  - Effective  
  - Allocated  
  - Unallocated  
  - Some Workspaces  
- This prevented write operations.  
- Corrected in **2025.2.2**.

---

# ## 🔷 Additional Client Fixes

### SSENG-38029  
- After upgrading the client to **2023.8.0**, project sharing in **EDIUS** fails.  
- Resolved.  
:contentReference[oaicite:2]{index=2}

---

### SSENG-43169, SSENG-43158, SSENG-43570, ICI-4985  
- Directory handle leak on **Ubuntu** and **Rocky Linux** clients caused:  
  - Cannot Allocate Memory errors  
  - Slow performance  
  - Disconnections  
  - Media offline behaviour  
- Leak fixed.

---

# ## 🔷 Server & Client Security Fixes

### SSENG-42855  
- Enhanced security for:  
  - Avid NEXIS | VFS  
  - Client Manager  
:contentReference[oaicite:3]{index=3}

---

# ## Summary

Avid NEXIS **2025.2.2** is the **corrected, supported replacement** for the withdrawn 2025.2.0 version.

It introduces:

- All major new features originally planned for 2025.2.0  
- Critical stability fixes  
- LDAP authentication recovery  
- Disk statistics retrieval fix  
- Storage Group capacity repair  
- Linux directory-handle leak fix  
- Security strengthening  

This is the **minimum recommended** build for any system planning to adopt the 2025.2 feature set.

---
