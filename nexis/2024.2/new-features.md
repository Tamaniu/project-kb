---
product: Avid NEXIS
module: Storage Platform
version: 2024.2.0
patch_range: 2024.2.0
release_type: Feature Release
release_date: 2024-02-01
source_docs:
  - name: New Features for NEXIS versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2024.2.0 – New Features

Avid NEXIS 2024.2.0 introduces improvements to Linux FastServe bonding workflows, increases active-client limits for Cloud Storage, updates macOS support, and provides a UI change for CentOS clients.

---

# ## 🔷 Linux Client Networking

### Network Bonding for Linux Clients (FastServe)  
- **Mode 1 bonding (“ethTeaming”)** now officially qualified for Linux clients running FastServe connected to Avid NEXIS.  
- Applies to:
  - **FastServe | Ingest**  
  - **FastServe | Playout**  
- Configuration reference:  
  - FastServe Administrator Guides  
  - Avid KB: FastServe Documentation  
:contentReference[oaicite:1]{index=1}

---

# ## 🔷 Cloud Storage Capacity

### Support for **330 Simultaneous Active Clients** on Avid NEXIS | Cloud Storage  
- Maximum number of **concurrent active clients** increased from previous limits to **330 active connections**.  
- Applies to all Avid NEXIS | Cloud Storage systems.  
- Full details in “Cloud System Limits” (p.12).  
:contentReference[oaicite:2]{index=2}

---

# ## 🔷 Client OS Support

### macOS Sonoma (14) – 1GbE Adapter Support  
- Adds support for **macOS 14 Sonoma** for clients using **1GbE network adapters**.  
- Supported on Apple Silicon (M1/M2/M3) and Intel Macs.  
:contentReference[oaicite:3]{index=3}

---

# ## 🔷 Client Manager (CentOS)

### Client Manager UI Change (CentOS Only)  
- Due to a codebase update, **CentOS** kits no longer support opening the Avid NEXIS Management Console from the Client Manager UI.  
- Only CentOS is affected.  
:contentReference[oaicite:4]{index=4}

---

# ## Summary

Avid NEXIS 2024.2.0 introduces:

- Qualified **network bonding** for Linux FastServe  
- A major increase in **Cloud Storage simultaneous client limits**  
- macOS Sonoma (14) support for 1GbE workflows  
- Removal of Console-launch button in CentOS Client Manager  

This release focuses on network resilience, cloud scaling, and broader OS/client compatibility.

---
