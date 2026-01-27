# MediaCentral | Panel for ENPS 2024.10.6 — ReadMe

> Version: 2024.10.6  
> Product: MediaCentral | Panel for ENPS  
> Scope: ReadMe content only (configuration, requirements, usage, limitations)

---

## Overview

- Provides ENPS users access to MediaCentral Cloud UX via an embedded panel.
- Enables browsing assets and creating/editing Production Management sequences.
- Sequences can be attached to ENPS stories as MOS Item References (MIRs).

---

## Requirements & Compatibility

- MediaCentral Cloud UX: **v2024.10.6 or newer**
- Not supported with Cloud UX: **2024.10, 2024.10.1, 2024.10.2**
- Maestro News MOS Gateway: **3.2.8 or newer**
- ENPS: **9.5.1.1053**
- Not supported:
  - Enterprise Editing (draft sequences)
  - Multi-site workflows
- Sequence creation/editing limited to **MediaCentral Production Management**

---

## Installation & Licensing

- Installed via MediaCentral Cloud UX Feature Pack ISO  
  (NRCS Integration must be enabled during deployment)
- Required licenses:
  - MediaCentral | 3rd Party ENPS (system-level)
  - MediaCentral | Cloud UX Panel for ENPS (per user)
- Panel entitlement must be enabled in User Management.

---

## Maestro News Components

### Required Components
- Maestro News Producer MOS Gateway
- Maestro News MOS Service  
  (BUS service option recommended over REST)

### Key Notes
- MOS ID must match across:
  - MOS Gateway
  - MOS Service
  - ENPS MOS Configuration
- Communication ports:
  - MOS Gateway: **10540 / 10541**
  - MOS Service default: **5002**

---

## ENPS Configuration

- MOS entry required in ENPS System Maintenance:
  - Address: `<MOSID>.MOS`
  - ActiveX: `ENPSHTMLHost`
  - MOS Version: `2.8.2`
  - URL: `https://<FQDN>/nrcs/` (realm optional)
- Users must restart ENPS client to access the panel.

---

## Panel Usage Highlights

- Panel accessed via ENPS MOS button.
- Browse, Search, and Process apps available.
- Asset Editor supported for sequence editing.
- Create Sequence supports:
  - Multiple sequence creation
  - Automatic MIR insertion
- Save behaviour:
  - Timeline save does not update MOS item
  - Panel Save updates both sequence and MOS item

---

## Certificates

- Panel uses Chromium-based browser.
- Trusted SSL certificates must be installed on client systems.
- Missing certificates may cause login failures.

---

## Revision History

- April 14, 2025 — First publication
