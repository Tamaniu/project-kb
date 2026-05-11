---
product: mediacentral-production-management
product-area: post-production
version: "2023.7"
release-date: 01/07/2023
doc-type: install-guide
source: pdf
source-file: MCPM_2023_7_0_Software_lnstall_and_Config_Guide.pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, mcpm, installation, configuration, upgrade, licensing, network, shared-storage, antivirus, time-sync]
---

# Software Installation and Configuration Guide — MediaCentral | Production Management v2023.7

> **Source:** MediaCentral | Production Management Software Installation and Configuration Guide, Version 2023.7 (103 pages).  
> This document is a structured reference captured from the source PDF. For step-by-step installation procedures, consult the source PDF directly.

---

## Document Coverage

| Chapter | Topic | Source Pages |
|---|---|---|
| 1 | Installation Overview | 11 |
| 2 | Installing the Production Management Server | (follows Ch. 1) |
| 3 | Installing the Production Management Client | — |
| 4 | Installing Additional Services | — |
| 5 | Post-Installation Configuration | — |
| 6 | Upgrading Production Management | — |
| 7 | Software Licensing | 60 |
| 8 | Additional Configuration Topics | 71 |

---

## Chapter 1 — Installation Overview

### Installers

Three separate Production Management installers are available from the Avid Download Center:

| Installer | Platform |
|---|---|
| MediaCentral Production Management **Server** Installer | Windows |
| MediaCentral Production Management **Client** Installer | Windows |
| MediaCentral Production Management **Client** Installer | Macintosh |

For Avid editing applications (Media Composer), first install the editing application, then use the Client Installer to enrol it into the PM workgroup. The Interplay Assist application is on the Client Installer.

### Installation Check List

Follow the installation check list in the source PDF (p. 13) to ensure correct component installation order. The order matters — the PM Engine and shared-storage system must be available before clients are installed.

### Network Considerations

- All PM components must be on the same network; time synchronisation is required.
- **Time synchronisation**: all servers and clients must synchronise to a common NTP source. Use the Avid Service Framework Time Sync feature (see Chapter 8).
- Firewall ports must be opened for PM services. See Appendix A of the Admin Guide for the required TCP/IP ports.

### Shared-Storage Setup

Before installing PM, configure the Avid NEXIS shared-storage system:

- **Workspace names**: must not contain spaces or special characters.
- **User accounts required**:

| Account Purpose | Notes |
|---|---|
| Server Execution User | Windows account used by the PM Engine to access NEXIS workspaces; must have full read/write/delete access to all workspaces |
| Interplay Administrator access to workspaces | Separate account for admin tools |
| Deletion account | Required for the deletion workflow |
| Transfer account | Required for the Transfer Engine |

Creating the Server Execution User Account: see source PDF p. 17.

---

## Chapter 7 — Software Licensing

### Licence Types

- Hardware dongle (legacy)
- Software licensing (standard from v2022.3 onwards)

### Upgrading Licensing (v2022.3 and Later)

From v2022.3, production Management uses a software-based licensing model. Customers upgrading from older dongle-based licences must convert to software licences before or during upgrade. See source PDF p. 62 for the upgrade process.

### Activation Procedures

| Scenario | Procedure |
|---|---|
| Single licence activation | Source PDF p. 63 |
| Production Management Engine licence activation | Source PDF p. 64 |
| Additional licences | Source PDF p. 66 |
| Activation without internet connection | Source PDF p. 67 |
| Deactivation | Source PDF p. 69 |
| Troubleshooting | Source PDF p. 70 |

---

## Chapter 8 — Additional Configuration Topics

### Antivirus Software

Antivirus software is **not** recommended on Production Management Servers. If antivirus must be used:

- Exclude all Avid application folders and the PM database location from real-time scanning.
- Schedule any scans during off-hours maintenance windows.
- Consult Avid support for the current list of exclusion paths.

> Note: Microsoft Defender is **not** supported with MCPM v2024.10 (see v2024.10 new features). Ensure antivirus exclusions are reviewed for each version.

### Firewall Configuration

PM components communicate over TCP/IP. Firewalls must allow traffic on all required PM ports (listed in Admin Guide Appendix A). See source PDF p. 71 for troubleshooting firewall issues.

### Journal Data Integration

Configures integration of journal (log) data into the database for audit purposes (source PDF p. 72).

### Mounting Workspaces as Drives

Workspaces can be mounted as lettered drives or letterless (UNC paths):

- **Lettered drives**: required for Transcode and STP Encode services when using drive-letter mounting mode.
- **Letterless (UNC)**: preferred if the number of workspaces exceeds available drive letters.
- Choose mounting method during provider installation — this cannot be changed without reinstalling the service.

See source PDF p. 73 for full guidance.

### Time Synchronisation

All Production Management servers and clients must synchronise to a common time source to prevent database and transfer errors.

- Use the **Avid Service Framework Time Sync** feature for PM workgroup components.
- NTP is required — configure Windows Time service to point to a reliable NTP source.
- Configuring the Lookup Service on a separate server: see source PDF p. 76.

### Interplay Transfer AS3000 Server (Legacy Hardware)

Reference documentation for the legacy AS3000 Transfer Server appliance (network connections, port usage, card installation): source PDF pp. 101–102. This hardware is from a prior generation; current deployments use standard server hardware.
