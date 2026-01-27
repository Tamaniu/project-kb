# MediaCentral Cloud UX 2025.10 — New Features

> **Version:** 2025.10.0  
> **Source:** Avid MediaCentral | Cloud UX documentation (New Features section)  
> **Scope:** Functional changes, admin features, platform automation, Avid AI, and workflow impacts  
> **Note:** This document lists *explicitly stated* new features only. No inference.

---

## Asset Editor

### Storyboard tab
- Out timecode of a restriction is now clickable and navigates the playhead directly to the restriction end.
- Dragging multiple markers or restrictions into a sequence now inserts them sorted by ascending timecode.

### Metadata tab
- Multi-value compound attribute tables are now resizable.
- Columns auto-resize with the panel and can be resized individually.
- Column widths are not persisted when reopening the asset.

---

## Transcript Tab

### Transcript / Translation toggle
- New toggle buttons allow switching between Transcript and Translation modes.

### Avid AI Translate
- Users with **Avid AI Translate RW Access** can:
  - Initiate transcript translations
  - View, edit, and copy translations
  - Navigate translations with a synchronised playhead

### Transcript usability
- Renamed transcripts now show the track name in brackets.
- Highlighted transcript text can be dragged to a sequence, automatically setting In/Out points.

---

## Avid AI (formerly Avid ADA)

### Rebrand
- Avid ADA is now branded **Avid AI**
- Includes:
  - Avid AI Transcribe
  - Avid AI Translate
  - Avid AI Summary

### Avid AI Admin App
- New admin app for managing AI workflows:
  - Transcription status and resync
  - Default translation language selection
- Deployed with the **Speech To Text (stt)** feature pack

### Media Analytics Engine
- Supports multiple job queues:
  - `default` (10 concurrent jobs)
  - `avid.ml` (10)
  - `avid.ai` (1000)
- Adaptive job polling (500ms → 10s) improves short-job latency

---

## Avid Production Management (APM)

### New admin and user apps
- Production Management Administrator app
- Media Indexer Administration app
- Inspector app (detailed asset inspection)

### New workflows
- Folder reservations to prevent deletion/moves
- Delete Production Management assets directly in Cloud UX
- Remove assets from folders without deleting media

---

## Platform Storage & Cloud Integrations

### Platform Storage Connector Gateway
- Unified gateway for:
  - AWS S3
  - Azure Storage
  - GCP Storage
- Supports multiple connections per connector

---

## Configuration Settings App

- **Email Settings panel restored** (removed in 2024.10)
- Default Service User now configured in-app
- Default reservation length configurable for Production Management

---

## Fast Bar Customisation

- Show / hide apps per session
- Drag-and-drop reordering

---

## Installation & Platform Changes

- **Ubuntu 24.04 LTS required**
- Legacy feature-pack mounting is no longer supported
- Secure Vault introduced for sensitive configuration storage
- New deployment flow using `avidctl platform import` + `deploy`

---

## MediaCentral Acquire

- New **Source View** (organised by source, not channel)
- Automatic channel assignment
- Improved recurring recording editing
- New filtering panel and enhanced timeline sorting
- Channel visibility toggles

---

## Platform Automation

### UI Automation Plugin (new)
- Commands menu actions:
  - Media Analytics
  - Notifications
  - Publish
- Entitlement-controlled access
- Improved validation and default handling

### Rules Engine
- CloudEvents support
- Time zone–aware expressions
- Expanded Wolftech and Production Management rule support

---

## Search App

- Search now includes transcribed subclips
- Summary text searchable
- Renamed Ada labels updated to Avid AI terminology

---

## Rundown App

- Queue form selection
- Full keyboard tab navigation
- Improved handling of missing timing fields

---

## User Management

- New entitlements:
  - Avid AI Transcribe RW Access
  - Avid AI Translate RW Access
  - Avid AI Summary RW Access

---

## Known Non-Support

- **MediaCentral Cloud UX Mobile App (iOS)** is not supported from 2025.10 onwards
