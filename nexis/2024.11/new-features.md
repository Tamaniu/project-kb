---
product: Avid NEXIS
module: Storage Platform
version: 2024.11.0
patch_range: 2024.11.0
release_type: Feature Release
release_date: 2024-11-01
source_docs:
  - name: New Features for Nexis versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2024.11.0 – New Features

Avid NEXIS 2024.11 introduces native Apple Silicon support, expands Linux client compatibility, transitions CentOS to legacy status, increases Cloud Storage client limits, and resolves several server and client issues.

---

# ## 🔷 Client Operating System Support

### Native Apple Silicon Support  
- Avid NEXIS Client software now runs **natively on Apple Silicon (M-series)**.  
- Rosetta 2 is **no longer required**.  
:contentReference[oaicite:1]{index=1}

---

### Rocky Linux Support for On-premises Clients  
- Avid NEXIS 2024.11 supports **Rocky Linux on-premises clients** with:
  - **1GbE**
  - **10GbE**  
- Installation instructions available in the Avid NEXIS Client Manager Installation & User Guide.  
- Rocky Linux kit supports **command-line operations only**.  
:contentReference[oaicite:2]{index=2}

---

### CentOS Support Update  
- **CentOS Linux 7** reached end of life on **30 June 2024**.  
- CentOS installers remain temporarily available but will be removed in future releases.  
- CentOS clients and CentOS VFS Gateways continue to function **for now**, but Avid recommends planning migration to:
  - **Ubuntu**
  - **Rocky Linux**  
:contentReference[oaicite:3]{index=3}

---

# ## 🔷 Cloud Storage Scalability

### Support for 600 Active Clients on Avid NEXIS | Cloud Storage  
- Maximum number of **concurrent active clients** increased to **600**.  
- Applies to Avid NEXIS | Cloud Storage systems.  
:contentReference[oaicite:4]{index=4}

---

# ## 🔷 Server Fixes (in Numerical Order)

### SSENG-35821  
- Datagram RX/TX statistics for Avid NEXIS | F2 Media Packs always showed zeros; System Director status showed “Not connected/No session”.  
- Statistics now report correctly.

### SSENG-39462  
- Persistent error: “ProfileManagerLib:0 Slot 0 is not configured for redundancy” on PRO and PRO+ systems.  
- Error no longer appears incorrectly.

### SSENG-39529  
- Log entries displayed excessive warnings:  
  *“AuthenticateFromCache: failed to authenticate against the cached password…”*  
- Log level reduced from **Warning → Info** to avoid confusion.  
:contentReference[oaicite:5]{index=5}

---

### SSENG-41106  
- After a Full Disk error, Storage Manager failed to restart correctly and lost connection.  
- Restart and recovery now function as expected.

### SSENG-41355  
- Teams Quota could not be adjusted when:
  - Team Name  
  - Team Admin Group  
  had the same characters but **different capitalisation**.

### SSENG-41500  
- Deleting a Team Workspace via Team Admin did not record the workspace name in AdminToolLog.  
- Log entry now correctly includes workspace name.

### SSENG-41397  
- Sorting Workspace Access column incorrectly sorted by **Effective Access**.  
- Sorting behaviour now correct.

### SSENG-41765  
- Resolved issues writing to **mirror-protected workspaces** during controller switch-over.  
:contentReference[oaicite:6]{index=6}

---

# ## 🔷 Client Fixes

### SSENG-44473  
- `avidfos` service crashed due to rapid open/close directory loops (often triggered by third-party transfer tools).  
- Stability improved; service no longer crashes under these patterns.  
:contentReference[oaicite:7]{index=7}

---

# ## Summaries

Avid NEXIS 2024.11.0 brings:

- Full **native Apple Silicon** client support  
- Expanded **Rocky Linux** client support  
- CentOS moved to legacy lifecycle  
- Cloud Storage scalability up to **600** active clients  
- Fixes for logging, team workspace administration, controller failover, and statistics reporting  
- Stability improvements for macOS client file operations  

This version is an important compatibility and reliability milestone before the 2025.x stream.

---
