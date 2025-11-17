---
product: Avid NEXIS
module: Storage Platform
version: 2024.5.0
patch_range: 2024.5.0
release_type: Feature Release
release_date: 2024-05-01
source_docs:
  - name: New Features for NEXIS versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2024.5.0 – New Features

Avid NEXIS 2024.5.0 introduces usability improvements, updates to system-drive replacement workflows, deprecation of Cloudspaces, and fixes across Avid NEXIS engines and clients.

---

# ## 🔷 Management Console Improvements

### UI Updates (Workspaces, Storage Groups, System Display)
- Consistent **available-space** reporting between:
  - Management Console  
  - Client Manager  
  - OS file manager  
- Improved **Bind/Unbind** button visibility and clarity.
- Cleaner text/buttons for adding/removing Media Packs on the Storage Groups page.
- Workspace list now shows **up to 50 Workspaces per page**.
- **Capacity Tracker** moved to left side of Workspace Edit mode and is **collapsed by default**.
- Software version now displayed in the **title bar** for visibility across all pages.  
:contentReference[oaicite:2]{index=2}

---

# ## 🔷 Avid NEXIS | Cloudspaces – Removed

### Cloudspaces No Longer Supported  
- Avid NEXIS 2024.5.0 **removes support for Cloudspaces**.  
- Before upgrading:
  - Delete all Cloudspaces data while the subscription is still active.
- After upgrade:
  - Cloudspaces and Cloud Storage Group **no longer appear** in the Console.
  - The “Services” navigation link is removed.  
:contentReference[oaicite:3]{index=3}

---

# ## 🔷 Controller Replacement – Compatibility Change

### Downtime Required with Replacement Controllers  
- Version 2024.5 includes updated **Debian Linux** components which break backward compatibility with older controller builds.  
- Adding/replacing a controller **requires a maintenance window**.

#### Applies to:  
- Avid NEXIS **F-Series** (including SDA+ and PRO+)  
- Avid NEXIS **E-Series** (including SDA, PRO 20TB, PRO 40TB)

#### Summary of Procedures:
- **F-Series (single controller)**  
  - Remove failed controller → Insert replacement → System updates automatically.
- **F-Series (redundant controllers)**  
  - Remove both → Insert replacement → System updates → Reinsert old controller.
- **E-Series**  
  - Remove controller → Connect via management port → Install 2024.5.0+ manually.

> Avid recommends updating **all shelf-spare controllers** to 2024.5.0 or higher after upgrading the system.  
:contentReference[oaicite:4]{index=4}

---

# ## 🔷 Server Fixes (in Numerical Order)

- **SSENGHW-122 / 123 / 124:**  
  Controller amber Module Fault LED remained lit on PRO+, F-Series (single controller) despite normal behaviour.

- **SSENG-38851:**  
  Slow load times when displaying large numbers of Workspaces → now paged to 50 per page.

- **SSENG-39054:**  
  Deleting empty mirrored Workspaces sometimes stuck in “Delete Pending”.

- **SENG-39272:**  
  System drives finished rebuilding but UI stayed stuck on “Rebuilding”.

- **SSENG-39705:**  
  System Director unexpected shutdown due to metadata save issue.

- **SSENG-39855:**  
  After upgrading to 2024.2, excessive email notifications for license expiry.  
:contentReference[oaicite:5]{index=5}

---

# ## 🔷 Client Fixes

- **SSENG-39108:**  
  On cloud-based Media Composer systems, combination of streaming media (NDI/SRT) and CrowdStrike caused dropped/difficult frames.

- **SSENG-39650:**  
  After upgrading to 2023.12+, clients started using port **4000** (undocumented), causing third-party conflicts.  
  - Updated to use port **7237** instead.  
:contentReference[oaicite:6]{index=6}

---

# ## Summary

Avid NEXIS 2024.5.0 delivers:

- Major UI improvements for workspace and storage management  
- Complete removal of Cloudspaces  
- A necessary controller compatibility change (requires downtime)  
- Server and client reliability fixes  
- Better consistency in free-space reporting and UI behaviour  

This version acts as a stability and infrastructure-refresh milestone for the 2024.x cycle.

---
