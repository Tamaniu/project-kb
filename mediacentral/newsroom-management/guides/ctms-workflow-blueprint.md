---
title: "CTMS Workflow Blueprint"
source: /sessions/keen-vibrant-rubin/mnt/Word docs for kb/Word avid-kb:working:project kb public Avid transcripts word/CTMS_Workflow_Blueprint.docx
added: 01/06/2026
---

# Blueprint for Implementing Time-Based Media Segmentation using Avid MediaCentral at STV

- --

## 🔍 Objective:
To implement a TAMS-equivalent workflow using Avid MediaCentral Cloud UX and partner services at STV, enabling time-based media segmentation, semantic search, remote collaborative editing, and immutable archival segments.

- --

## 🔢 Key Capabilities to Replicate:
- Time-addressable segment access and annotation.
- Scalable ingest with growing file and subclip support.
- Programmatic timeline metadata manipulation.
- Automated analysis (speech-to-text, scene detection).
- Immutable archive support.

- --

## 🧰 Required Avid Components:
1. **MediaCentral | Cloud UX (2024.10+ or 2025.6)**
2. **MediaCentral | Asset Management / Production Management**
3. **Avid Ada Transcribe with GPU acceleration**
4. **NEXIS | Cloudspaces (for immutable archive)**
5. **MediaCentral CTMS API**
6. **Rules Engine & Media Analytics**
7. **Partner Integrations:**
- Telestream Vantage (encoding/workflow automation)
- Adobe Creative Cloud with MediaCentral Panel
- CuttingRoom (future-facing browser-based editing)

- --

## 📊 CTMS API Use for Segment Annotation
- *Base Endpoint:** `/aa/time-based` (requires auth/session)

# Sample API Operations:

- **GET Time-Based Annotations for an Asset:**
GET /ctms/v1/assets/{assetId}/aa/time-based

- **POST New Segment Annotation:**
POST /ctms/v1/assets/{assetId}/aa/time-based
{
"start": "00:02:10.00",
"duration": "00:00:30.00",
"layer": "Transcription",
"attributes": {
"speaker": "Anchor",
"keyword": "Prime Minister"
}
}

- **PATCH Segment (Update Metadata):**
PATCH /ctms/v1/assets/{assetId}/aa/time-based/{segmentId}
{
"attributes": {
"verified": true,
"notes": "Fact-checked by newsroom editor"
}
}

- **DELETE Segment:**
DELETE /ctms/v1/assets/{assetId}/aa/time-based/{segmentId}

- --

## 📅 Workflow Templates

### 1. **Ingest + Live Subclip Creation**
- FastServe or Telestream receives SDI/IP feed.
- Growing file begins ingest into NEXIS with EWC enabled.
- Metadata such as source, subject and assignment attached.
- MediaCentral UX users create subclips in real-time.
- CTMS annotations (via UI or API) created for notable segments.

### 2. **Transcript & AI Analysis Injection**
- Ada Transcribe runs STT with speaker diarisation.
- Transcript auto-tagged by time.
- Media Analytics triggers Azure Video Indexer or AWS Rekognition.
- Output written to CTMS `aa:time-based` segment layer.

### 3. **Browser-Based Collaborative Editing**
- Users access growing or archived assets in MediaCentral UX.
- Editors highlight/copy/export segments using transcript timecodes.
- Adobe Premiere editors use MediaCentral Panel for subclip import.
- Optionally, workflows passed to CuttingRoom for web-based cut.

### 4. **Archive and Immutability Layer**
- Final versions pushed to NEXIS | Cloudspaces.
- Archive tier marked read-only; segment metadata frozen.
- CTMS annotations remain queryable.
- Search App UI filters by keywords, speaker, HDR, etc.

- --

## 🎨 Partner Integration Highlights

- **Telestream Vantage:** Auto-subclip/export workflows based on metadata match (e.g., generate clip if "Breaking News" keyword in transcript).
- **Adobe Creative Cloud:** Subclips with CTMS metadata import directly; preserve speaker/timecode labels.
- **CuttingRoom (optional):** Avid-backed partner for end-to-end cloud editorial.

- --

## 🔐 Security, Governance, and Immutability
- Use Avid entitlement system to restrict segment editing.
- Quarantine/archive folders managed via MediaCentral | Asset Management.
- Immutable segment records enforced via NEXIS and backup policy.

- --

## 🚀 Next Steps for STV
1. Confirm Ada Transcribe GPU infrastructure.
2. Enable CTMS endpoints and test POST/GET access.
3. Map ingest triggers to Telestream or FastServe.
4. Define segment schemas (e.g., layer types: speech, visual, cue).
5. Create Rules Engine rules for transcription auto-tagging.
6. Train editorial teams on subclip, transcript tab, segment filters.

- --

- *Reference APIs:** [developer.avid.com](https://developer.avid.com/ctms/api/aa/resources/time-based.html)

# Partner Docs:
- [Telestream Avid Integration](https://www.telestream.net/pdfs/app-notes/app-Avid-Integration-Guide.pdf)
- [CuttingRoom Overview](https://www.cuttingroom.com/)

- --

Let me know if you'd like this blueprint exported as a Word or PDF file for distribution across STV teams.
