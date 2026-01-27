# Transcript — Imran’s demo of MediaCentral 2025.10 (IBC 2025)

## What was demonstrated (claims only — based on transcript)

### 1) Translation workflow (new / highlighted)
- MediaCentral Cloud UX 2025.10 shows a **“Translation”** option alongside existing **transcription**.
- User can:
  - Click **Translation**
  - Use a **“+”** (plus) action to **create a new translation**
  - Choose a **target language** (example shown: **Danish**)
  - Click **Translate**
- Result:
  - The translated transcript is generated and becomes **available in the system**.
- Contextual claim:
  - Presented as **one of the most requested features**, now included in this release.

**Sceptical notes / what’s not proven here**
- No mention of:
  - Which translation engine/provider (e.g., Ada, Azure, third-party)
  - Accuracy controls (glossaries, custom terminology, newsroom dictionaries)
  - Costing/licensing model (per-minute, per-seat, per-language)
  - Supported languages list, quality tiers, or latency expectations
  - Whether translation is for **captions**, **scripts**, **search indexing**, or **export formats**  
  → This is a UI demo claim, not a spec.

---

### 2) “Inspector” panel (expanded metadata + usage context)
- Presenter opens **Inspector** and double-clicks a clip.
- Inspector shows:
  - **Properties / technical metadata**
  - **Where clips are being used** (usage in edits)
  - **Asset location** (positioning this as valuable for media management)

**Sceptical notes**
- “Where used” typically requires reliable linkage to:
  - Production Management sequences/projects
  - Possibly interplay/PM database relationships  
  Transcript doesn’t confirm:
  - Depth (sequence-level? story-level? bin-level?)
  - Whether it’s real-time, cached, permissions-aware, or cross-site aware.

---

### 3) Media management directly in MediaCentral (delete controls)
- New capability implied: actions previously requiring other apps can now be done *inside MediaCentral*.
- Example shown:
  - Right-click clip → choose **“delete …”** (appears to be “delete complet[e]” / “delete complete”)
  - A **new dialogue** appears showing:
    - Production Management database
    - Projects
    - “Where it at” (likely location/context)
  - Deletion options:
    - **Delete metadata only**
    - **Delete media** (actual essence)
- Presenter explicitly avoids executing permanent delete.

**Sceptical notes (important)**
- Deletion is high-risk operationally; transcript does not confirm safeguards like:
  - Role-based permissions / approvals
  - Soft-delete / recycle bin / retention policies
  - Storage-side deletion behaviour (NEXIS, nearline, object storage)
  - Impact on active sequences and linked assets
  - Audit trails and compliance logging
- “Delete media” semantics vary wildly (unlink vs purge vs archive delete). Needs proof from official docs / ReadMe.

---

## Feature summary (what you can safely say, from this transcript alone)

- MediaCentral Cloud UX 2025.10 demo includes:
  - **Transcript translation creation** via UI with selectable target language
  - **Inspector panel** showing technical metadata, where-used context, and asset location
  - **In-app media management deletion workflow** with options to remove metadata and/or media

---

## Immediate follow-up questions (to validate before you treat as “real”)

### Translation
- Is translation part of **Ada Transcribe** feature pack, Azure integration, or something else?
- Is translation applied to:
  - Transcript text only?
  - Captions/subtitles exports?
  - Search indexing (multilingual search)?
- Can you enforce **terminology** (names, places, political terms, editorial style)?

### Inspector / where-used
- Which systems does it depend on (Production Management, MAM, iNEWS, all three)?
- Does it work across **multi-site** and **federated** environments?
- Permissions: does a user only see where-used in projects they’re allowed to access?

### Delete workflow (risk + governance)
- Is there an approval workflow or at least “are you sure” + audit trail?
- Is “delete media” a **hard delete** on storage or a logical delete?
- What happens to sequences referencing deleted media?
- Is there recovery?

---
