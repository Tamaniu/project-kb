---
product: Avid NEXIS
module: Storage Platform
version: 2022.9.0
patch_range: 2022.9.0
release_type: Feature Release
release_date: 2022-09-01
source_docs:
  - name: New Features for NEXIS versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2022.9.0 – New Features

This release introduces workflow enhancements across the System Console, client compatibility, cloud workflows, APIs, and Storage Groups.

---

# ## 🔷 Management Console

### Improved Workspace Editing  
- Editing a workspace now highlights which **Storage Group** the workspace belongs to.  
- Reduces mis-assignment risk when working with large systems or mixed tiers.

### Workspace Member Count  
- The Workspaces page now displays the **number of users** currently connected to each workspace.

### Client Sorting  
- Client lists can now be sorted by:
  - Username  
  - Hostname  
  - IP address  
  - OS  
  - Connection type (NEXIS Client vs File Gateway)

---

# ## 🔷 Storage Groups

### Storage Group Selection in Workspace Creation  
- When creating a workspace, the Storage Group **must** now be selected.  
- Ensures correct tier alignment and prevents defaulting to the wrong storage pool.

---

# ## 🔷 Avid NEXIS Client

### macOS Ventura Support  
- Adds support for **macOS 13 (Ventura)** for editorial and File Gateway workflows.  
- Ensures compatibility with Media Composer and other Avid applications.

---

# ## 🔷 Cloud Workflows (AWS / Azure / GCP)

### Storage Connector – NEXIS Workspace Access  
- Cloud Storage Connectors can now:
  - Read media from NEXIS workspaces  
  - Write media back after cloud processing  
- Supports hybrid workflows spanning on-prem storage and cloud services.

### Cloud Proxy Interop  
- Improved handling of proxy media created in cloud systems before round-tripping to NEXIS, ensuring offset and naming conventions remain intact.

---

# ## 🔷 Avid NEXIS API

### REST API Enhancements  
- New endpoints introduced for:
  - Listing clients  
  - Listing connections  
  - Workspace usage statistics  
  - Storage Group membership  
- Improvements support automation and monitoring for third-party tools and orchestration layers.

---

# ## 🔷 System Reliability & Performance

### Metadata Optimisation  
- Internal metadata operations optimised for:
  - High-file-count workspaces  
  - Large folder structures  
  - Shared editorial environments

### File Gateway – Improved Handling of Large Transfers  
- Stability improvements for large SMB file transfers via File Gateway.

---

# ## 🔷 Hardware Compatibility

### Controller Firmware Updates  
- Updated controller firmware now shipped with Avid NEXIS engines for improved reliability and drive compatibility.

---
