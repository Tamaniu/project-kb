---
product: mediacentral-newsroom-management-data-receiver
product-area: newsroom-management
version: "2021.3"
release-date: 06/04/2021
doc-type: install-admin-guide
source: avid-official
source-file: MCDR-IAG-v2021.3.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2022.3"
feature-tags: [data-receiver, wire-service, install, administration, rss, serial, anpa, inews, windows-server]
---

# MediaCentral | Data Receiver — Installation and Administration Guide

**Revision:** Rev A | **Created:** 06/04/2021 | **Copyright © 2021 Avid Technology, Inc.**

116-page guide covering installation, configuration, and administration of MediaCentral | Data Receiver v2021.3. Audience: information systems technicians, network administrators, and system administrators responsible for installing and maintaining Data Receiver.

> Avid strongly recommends that system administrators have prior experience with or classroom knowledge of Windows-based operating systems before proceeding with installation.

---

## Document Structure

| Chapter / Appendix | Title | Pages |
|---|---|---|
| Chapter 1 | Introduction | 15–22 |
| Chapter 2 | Data Receiver Install and Configuration | 23–36 |
| Chapter 3 | Data Receiver Administration Application | 37–68 |
| Chapter 4 | Wire Service Instances | 69–74 |
| Chapter 5 | Troubleshooting | 75–80 |
| Appendix A | Data Receiver Parsing Language | 81–96 |
| Appendix B | Hexadecimal Information | 97–108 |
| Appendix C | Custom Code Page Support | 109–116 |

---

## Chapter 1 — Introduction

### Overview

MediaCentral Data Receiver is a highly configurable wire server designed to handle all of a newsroom's subscription wire feeds from a single server, while enabling all Newsroom Management users to access the data from their desktops. It replaces the legacy iNEWS PCU by handling all wire services through a single server (or multiple servers for redundancy).

Data Receiver processes incoming wire data from multiple input sources including e-mail, telnet, file, and traditional serial feeds in multiple data formats. It is compatible with Newsroom Management systems v2.0 and later.

The system caches stories as they arrive so no data is lost even if the Newsroom Management system is taken offline. The system captures status and error events in Data Receiver logs, and can optionally send e-mail notifications to specified users.

Individual content streams of different formats — ANPA, IPTC, and NewsML — are each accepted and independently configurable.

### Input Types

Data Receiver supports five input types:

| Input Type | Description |
|---|---|
| Serial | Ingests stories from a serial port on the local PC |
| Email | Ingests data from a POP3 email server; deletes emails after reading |
| Telnet | Logs on to a Telnet server and detects data streamed from the Telnet port |
| File | Polls a directory on a local or remote PC at a given interval; files placed there are ingested and deleted |
| RSS | Subscribes to syndicated RSS feeds (public or authenticated); polls a specified URL at a set interval |

### Components

Data Receiver comprises two major components:

**Data Receiver Service** — Performs the majority of Data Receiver processing. Contains an NRCS Communication Module which handles formatting of wire data between wire services and the NRCS (e.g. iNEWS). The module accepts acknowledgement from the NRCS for each received story, sends each wire item as a complete story (not line-by-line), supports keyword search from iNEWS v2.0 onwards, and handles character translation between Unicode/code pages and the NMS character set.

**Administration Application** — GUI for configuring parameters, selecting and monitoring Data Receiver services, and diagnosing issues. Displays per-instance status including: Server, Name, Status (running/stopped/disabled), Story Input timestamp, Story To NRCS timestamp, and #Stories count.

### Site Preparation

Before installation, the following must be in place:

- Fully functional LAN/WAN network using TCP/IP
- Serial cabling from receiver/modem to the Data Receiver PC (for serial input feeds only)
- Qualified hardware and software (see compatibility below)

**Hardware and software qualification for v2021.3:**

| Component | Requirement |
|---|---|
| Operating System | Windows Server 2019 or Windows Server 2016 |
| NRCS | iNEWS Server v2.0 or higher |
| Serial card (if >1 serial wire or multiple serial inputs) | Digi Acceleport 8r (Avid part number 0030-03121-01) |

### Newsroom Management Server Configuration (4-phase setup)

When adding a wire for ingest through Data Receiver, four phases must be completed on the NMS:

- **Phase 1:** Ensure Data Receiver software is installed, configured, and licensed; wire feed connected to appropriate port.
- **Phase 2:** Create a wire profile for the wire service.
- **Phase 3:** Add the wire distribution information.
- **Phase 4:** Reconfigure the system and start Data Receiver.

> See *MediaCentral | Newsroom Management Setup and Configuration Guide*, Chapter 12 – Wires, for full details on all four phases.

**NMS configuration steps (per instance):**

1. Add wire server resources to the iNEWS server licence. Each Data Receiver instance requires its own wire server resource licensed and configured on the NMS (see *MCNM SCG* — "Licensing Components").
2. Choose a device number for each Data Receiver instance. Must not already be in use.
3. (Serial input only) Connect the wire feed to the selected port on the PC.
4. Modify the NMS configuration file (`/site/config`) by adding the device number to the resource list under the host section:
   ```
   reslist <device #> ;<comments>
   ```
   Example: `reslist 801 ;data receiver instance`
   > For dual or triple server systems, add the `reslist` entry to each relevant host section.
5. The Data Receiver may have a wire profile in `/site/wires`. The profile must have the same name as the device number. To modify the wire profile: `ed /site/wires/<device#>`
6. Each Data Receiver instance must have a wire distribution story in the `SYSTEM.WIRES` distribution queue on the NMS (same procedure as Phase 3 for a PCU port — see *MCNM SCG*, Chapter 12).
7. Apply the changes:
   a. Take the NMS offline: `offline`
   b. Apply configuration: `configure`
   c. Put the NMS back online: `online`

> The steps above must be performed for each Data Receiver instance. Data Receivers may be used to provide redundancy via distribution servers and parallel wire servers — see *MCNM SCG*, Chapter 13 – Servers.

---

## Chapter 2 — Data Receiver Install and Configuration

### Installation and Configuration Checklist

| Task | Reference |
|---|---|
| Check requirements | Site Preparation (Chapter 1) |
| Install the Data Receiver software | Installing the Data Receiver Software (this chapter) |
| Add New Wire Service Instance(s) | Chapter 4 — Wire Service Instances |

### Installing the Data Receiver Software

**Prerequisites:** Confirm the network configuration conforms to hardware and software requirements. .NET Framework v3.5 must be enabled on Windows Server (from Server 2012 R2 onwards requires internet access to the Windows Install Medium to enable manually via Control Panel > Programs > Programs and Features > .NET Framework 3.5).

**Default installation path:** `C:\Program Files (x86)\Avid\Data Receiver\`

**Installation procedure (12 steps):**

1. Log on to the target computer as System Administrator.
2. Navigate to the folder containing the Data Receiver installer.
3. Double-click the Data Receiver setup file. The InstallShield Wizard starts and checks the OS version.
4. When prompted, click Yes to install Microsoft .NET Framework 2.0 (if not already present). If .NET Framework 3.5 cannot be installed automatically, enable it manually via Control Panel (see prerequisites above).
5. When the Data Receiver Setup dialogue box appears, click Next.
6. Read the licence agreement when it appears.
7. Click the radio button to accept the terms; this enables the Next button.
8. Click Next. The Destination Folder dialogue box appears (default: `C:\Program Files (x86)\Avid\Data Receiver\`).
9. Either accept the default destination or use the Change button to select a different folder.
10. Click Next. The Start Copying Files dialogue appears for verification of the destination folder.
11. Click Next. The Setup Status dialogue appears and installation proceeds.
12. When the InstallShield Wizard Completed dialogue appears, click Finish.

### Removing the Data Receiver Software

Avid recommends removing the existing version before upgrading.

**Removal procedure (4 steps):**

1. Select Start > Control Panel.
2. Select Uninstall a Program under Programs.
3. Double-click on **MediaCentral | Data Receiver** in the programs list.
4. Select Yes at the uninstall confirmation dialogue.

### Upgrading the Data Receiver Software

**Upgrade procedure (3 steps):**

1. Double-click the installer for the new version. The upgrade confirmation dialogue appears: "This setup will perform an upgrade of MediaCentral® | Data Receiver. Do you want to continue?"
2. Select Yes. The InstallShield Wizard (Resuming) dialogue appears.
3. Click Next. The installation proceeds and shows a Status/progress dialogue. When complete, the InstallShield Wizard Completed dialogue is displayed.

---

## Chapter 3 — Data Receiver Administration Application (Summary)

The Administration Application is a Windows GUI for configuring and monitoring all Data Receiver wire instances on the local server.

**Key UI components:**

- **Menu Bar:** Wire Services menu (create/add/remove instances), Help menu
- **Summary Tab:** Tabular view of all configured instances — columns: Server, Name, Status, Story Input, Story To NRCS, #Stories; includes Auto Scroll checkbox, Start/Stop button, Get Status button, Summary Panel
- **Wire Configuration Tabs:** One tab per configured wire instance, each containing Wire Service Section, Input Section (Serial / Email / Telnet / File / RSS configuration), Process Section, Output Section, Output Cache Settings, Logging Section

**Logging:** Data Receiver logs activity per instance. Log detail level is configurable; log files use day-of-week extensions (`.Monday`, `.Tuesday`, etc.).

For full reference on all Administration Application screens and configuration fields, see the source PDF MCDR-IAG-v2021.3.pdf, Chapter 3 (pages 37–68).

---

## Chapter 4 — Wire Service Instances (Summary)

Each wire feed requires a separate wire service instance. Instances are created, started, removed, and added-back through the Administration Application.

**Key procedures:**

- **Adding a new instance:** Via Wire Services menu > Create a New Instance; specify name, config file, sfc file, and directories.
- **Starting a new instance:** After creation, the instance must be explicitly started.
- **Removing an instance:** Via Administration Application. Note: the `WS.exe.config` entry must also be manually removed to fully stop the instance — see Known Limitations in the ReadMe.
- **Adding a previously configured instance:** Instances with existing config files can be re-added without reconfiguration.

For full procedures with screenshots, see MCDR-IAG-v2021.3.pdf, Chapter 4 (pages 69–74).

---

## Chapter 5 — Troubleshooting (Summary)

| Issue | Primary cause / action |
|---|---|
| Data Receiver does not start after installation | Check .NET Framework installation; verify service registration |
| New wire service instance does not start | Check COM port availability; verify config file path |
| Previously functional instance does not run | Check COM port conflicts; review log files |
| All previously functional instances do not run | Check Data Receiver Service status; restart service |
| Problems after hardware configuration changes | Re-test COM ports; check Device Manager |
| Story to NRCS / story output not in sync | Verify NMS connection; check wire distribution story configuration |

**COM Port Testing:** Data Receiver includes a COM port test utility accessible via the Administration Application. Common issues: COM Port Test Shows Illegal Device Name; Instance Won't Start or Can't Find a COM Port.

For full troubleshooting procedures, see MCDR-IAG-v2021.3.pdf, Chapter 5 (pages 75–80).

---

## Appendix A — Data Receiver Parsing Language

Data Receiver uses a parsing language to extract and reformat wire feed data into iNEWS stories. The parsing language defines how raw wire data is identified, split, and mapped to story fields.

**Key sections:**
- Parsing Language Overview
- Parsing Language Commands (reference list)
- Sample Parsing Language for ANPA (pages 87–96)

For full command reference and ANPA sample, see MCDR-IAG-v2021.3.pdf, Appendix A (pages 81–96).

---

## Appendix B — Hexadecimal Information

Reference material for custom character translation:
- ASCII Hexadecimal Overview and Definitions
- ASCII Hexadecimal Table (full table, pages 99–103)
- Sample Parsing Language for ANPA (pages 104–108)

---

## Appendix C — Custom Code Page Support

Data Receiver supports custom code pages for character translation between wire feed encoding and the NMS character set. Three custom code page modes are supported:

| Mode | Description |
|---|---|
| Custom Single Byte | Single-byte character set mapping |
| Custom Multi Byte | Multi-byte character set mapping |
| Custom Shifted | Shifted character encoding mapping |

For configuration details, see MCDR-IAG-v2021.3.pdf, Appendix C (pages 109–116).

---

## Technical Support

For information on Avid service offerings, visit [www.avid.com/support](http://www.avid.com/support) or call Avid Sales at 800-949-AVID (800-949-2843). International users: +1 978-275-2480.

Avid Online Support: [www.avid.com/onlineSupport](http://www.avid.com/onlineSupport) — available 24 hours a day, 7 days a week.
