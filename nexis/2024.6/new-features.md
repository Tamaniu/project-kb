---
product: Avid NEXIS
module: Storage Platform
version: 2024.6.0
patch_range: 2024.6.0
release_type: Feature Release
release_date: 2024-06-01
source_docs:
  - name: New Features for NEXIS versions 2022.5.0 to 2025.5.10 – consolidated.docx
    type: internal-docx
    location: JoJo/private-source
---

# Avid NEXIS 2024.6.0 – New Features

Avid NEXIS 2024.6.0 introduces improvements to the snapshot workflow, protection of the `/support` directory, OS support updates, and the replacement of SSL support libraries.

---

# ## 🔷 Management Console – Snapshot Improvements

### Snapshot Summary Page Enhancements  
The Snapshot Summary page now shows counts for the following snapshot states:

- **Completed**
- **Expired**
- **Pending**
- **Failed**
- **Cancelled**

Provides clearer visibility into snapshot behaviours and troubleshooting.  
:contentReference[oaicite:1]{index=1}

---

# ## 🔷 File Gateway – Support Directory Protection

### `/support` Directory Is Now Protected  
- The `/support` directory is no longer exposed via SMB or NFS file sharing.
- Prevents accidental removal or modification of supporting files used by Avid NEXIS engines.  
- Protects:
  - System logs  
  - Diagnostics  
  - Internal support utilities  
:contentReference[oaicite:2]{index=2}

---

# ## 🔷 Client OS Support

### Dropping Support for Older OS Versions  
Beginning with 2024.6.0:

- **Windows 7** is no longer supported  
- **macOS 10.14 Mojave** is no longer supported  

All client OS matrices updated accordingly.  
:contentReference[oaicite:3]{index=3}

---

# ## 🔷 Security

### Microsoft SSPI Replaced with OpenSSL  
- All SSL/TLS communication now uses **OpenSSL** instead of the Microsoft Security Support Provider Interface (SSPI).
- Ensures:
  - Modern TLS compliance  
  - Better long-term patching  
  - More consistent security behaviour across OS platforms  
:contentReference[oaicite:4]{index=4}

---

# ## Summary

Avid NEXIS 2024.6.0 includes:

- Enhanced snapshot visibility  
- Stronger protection for internal system directories  
- Removal of legacy OS support (Win7, macOS 10.14)  
- Migration to OpenSSL for secure communications  

This release focuses on operational safety, reliability, and security-hardening.

---
