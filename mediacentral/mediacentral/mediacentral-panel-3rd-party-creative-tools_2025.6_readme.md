# MediaCentral | Panel for 3rd Party Creative Tools 2025.6 — ReadMe

> Version: 2025.6.0  
> Product: MediaCentral | Panel for 3rd Party Creative Tools  
> Scope: ReadMe content only (new features, fixes, limitations)

---

## Overview

- Integration between MediaCentral and Adobe Creative Cloud tools:
  - Adobe Premiere Pro
  - Adobe Photoshop
  - Adobe After Effects

---

## New Features

### Adobe Premiere Pro Project Deletion
- Projects and associated media can be deleted directly in MediaCentral Cloud UX.
- Users can select and manage associated items before deletion.

### Light Theme
- UI theme can be configured via User Settings in MediaCentral Cloud UX.

### Cancel Import Prompt
- Users can choose to Cancel or Wait when long-running sequence imports occur.

---

## Fixed in Version 2025.6.0

- AL-3498: Importing complex sequences into Adobe Premiere Pro may fail with an AAF path error.
- Additional optimisation requires MediaCentral Cloud UX v2024.10.5 or later.

---

## Limitations and Defects in Version 2025.6

- AL-3798: Ingest Sequence with “Trimmed” option fails to check in sequences.
  - Workaround: Create a new sequence using ingested material in MediaCentral.

---

## Limitations in Prior Versions

### Multi-Site
- Multi-site remote systems are not supported.
- Remote assets may appear in Search but cannot be used in workflows.

### Adobe Photoshop (2024.10)
- Legacy Extensions unavailable in Apple Silicon mode.
- Workaround: Run Photoshop in Intel/Rosetta mode.

### Adobe Premiere Pro (2023.12+)

Key issues include:
- Audio track misassignment in Premiere Pro v24.5+
- Media Encoder arm64 export failures on Apple Silicon
- AirSpeed codec misinterpretation
- Restrictions and audio mapping inconsistencies
- Mixed asset ingest and conversion issues
- Frame rate and marker inconsistencies
- Export, ingest, and conversion edge cases

---

## OP-Atom Limitations (Without Media Files Plugin)

### In-place Editing
- Limited format support when Media Files Plugin is not installed.
- Growing files (EWC) are not supported.

### Convert Workflow (OP-1a)

Key constraints:
- Simplified AAF and sequence structures
- Effects and complex structures may be discarded
- No segmented source clip conversion
- Limited format support for OP-1a
- Sequential conversion process
- Long conversion times for complex sequences
- Sequence parameters not preserved in Premiere Pro
- Convert feature intended only for short sequences
- Manual cleanup of intermediate media required

