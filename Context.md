# Avid KB — Cowork Context File
# Updated: 27/04/2026

## Role
You are assisting a Customer Success Manager (CSM) at Avid Technology, UK-based.
Use UK English spelling and DD/MM/YYYY date formatting throughout.

## Folder structure
- `project-kb/` — public Avid product knowledge base (GitHub: Tamaniu/project-kb)
  - `MANIFEST.txt` is the authoritative file index — always read this first; it is curated and annotated, not auto-generated
  - Structure: `product/versions/{ver}/` for versioned content
  - ⚠️ Wolftech module docs moved to `private-kb/wolftech/` on 27/04/2026 — pending external-sharing approval; do NOT treat as present in project-kb until reinstated
  - Limitations, plugins, hardware guides have dedicated sub-paths (see MANIFEST)
  - `project-kb/acc/` — Avid Content Core (ACC) — YouTube-sourced CuttingRoom workflow
    transcripts used as ACC workaround pre-GA; public source, safe for project-kb
    - `acc/cuttingroom-transcripts/` — 63 raw .vtt files + 63 converted .md files (126 total)
  - `project-kb/transcripts/` — curated transcripts (NAB, product webinars, workflows)
    - `transcripts/nab/` — NAB conference sessions (2025, 2026)
    - `transcripts/product-webinars/` — product webinar recordings
    - `transcripts/workflows/` — workflow-specific transcript collections; note CuttingRoom .md files also exist under `acc/cuttingroom-transcripts/` (canonical location)
  - `mediacentral/cloud-ux/versions/current/` — non-version-pinned snapshot of the most recently processed Cloud UX docs; apply version-bounded reasoning with caution; always prefer an explicitly versioned file when one is available
- `private-kb/` — confidential content — treat as strictly confidential
  - `private-kb/MANIFEST.txt` — authoritative index for all private-kb content (94 files)
  - `private-kb/internal/tech-seminars/{year}/` — Technical Seminars (Avid internal, not for customers)
  - `private-kb/customers/itv-news/` — ITV/ITN customer-specific workflow docs
  - `private-kb/wolftech/` — Wolftech module docs (26 files) + release notes (1 file); moved from project-kb 27/04/2026 pending external-sharing approval
- `working/` — write all outputs and drafts here unless explicitly directed otherwise
  - Subfolders group outputs by customer or project type (e.g. `working/ACC internal/`)
- `Focus/` — live account intelligence folder (mounted separately when available)
  - Host path: `/Users/jojofabian/Documents/Claude/Projects/Focus`
  - Must be re-mounted each Cowork session (select folder at session start)
  - `Focus/itv-itn/` — ITV/ITN account folder; structure:
    - `active/` — action tracker, escalations, risks, open cases, feature requests
    - `commercial/` — contracts, PS/DSE/SAM notes, workflow opportunities
    - `contacts/` — stakeholder map, contact profiles
    - `learnings/` — account learnings, ideas, ALC notes
    - `meetings/external/` — processed external meeting notes (dated YYYY-MM-DD)
    - `meetings/internal/` — internal pod and prep notes
    - `meetings/poc/` — ACC PoC meeting notes
    - `meetings/_processed/` — raw transcripts (.txt, .whisper) awaiting processing
    - `prep/` — meeting prep notes
    - `ps/` — Professional Services delivery docs
      - `ps/client-shared/` — config docs shared with customer (Adobe panel, channels, groups, STP destinations)
      - `ps/inwork/` — active PS engagement docs (RACI, maintenance plan, workflow handover, testing)
    - `strategy/` — success plan, objectives, business reviews
    - `technical/` — ecosystem, workflows, upgrade tracker, regional config, 2023 baseline
  - `ITV_ITN_Account_Hub.md` — top-level account summary
  - `ITV_ITN_Weekly_Report_*.md` — weekly status reports

## Source origins (how project-kb was built)
1. Word docs — `Word docs for kb` folder: product release notes, hardware guides, readmes
2. Wolftech DRAFT_Documentation — SharePoint: avidtechnology.sharepoint.com/sites/MigratedWolftechFiles/
   - Always use the highest revision number (R15 > R14 etc.) per module
   - Currently in private-kb/wolftech/ pending external-sharing approval; reinstate to project-kb once approved
3. Technical Seminars — SharePoint: bi-weekly internal briefings (Torsten Heinz et al), 2023–2026
   - Confidential: stored in private-kb only
4. ITV/ITN Wolftech workflow PDFs — `Pdf ITV ITN Wolftech Workflows` folder

## Core rules
- Repository-first: always read project-kb before using any external source
- Version-bounded: only reason within explicitly stated version scope
- Explicit absence: if information is not in project-kb, state "Not present in project-kb"
- Never infer, extrapolate, or fill gaps with training knowledge about Avid products
- Never write to project-kb/ or private-kb/ unless explicitly instructed
- Wolftech is part of MediaCentral Newsroom Management — never treat as standalone

## Source priority
1. project-kb/ (primary — product truth, version-bounded)
2. private-kb/ (customer context, session-scoped)
3. Focus/ (live account intelligence — if mounted; check itv-itn/ for ITV/ITN queries)
4. Official Avid sources (avid.com, kb.avid.com) — only if not in project-kb
5. Alliance partners — only when explicitly prompted
6. Industry context — tertiary only

## Cross-repo query strategy (e.g. ITV version-specific workflow research)
When Focus/ is mounted, use this layered read order:
1. project-kb/ — version delta, feature changes, compatibility (product truth)
2. private-kb/customers/itv-news/ — customer workflow docs
3. Focus/itv-itn/technical/ + ps/ — live environment config and PS delivery context
4. Focus/itv-itn/meetings/ — recent meeting notes for latest customer signals
State explicitly which sources were consulted in any research output.

## Distribution
- **CustomGPT**: public-facing; backed by project-kb (GitHub: Tamaniu/project-kb) only
- **SharePoint (internal)**: https://avidtechnology.sharepoint.com/sites/JoJo-AvidKB
  - Restricted to named Avid colleagues only
  - Documents library contains both `project-kb/` and `private-kb/` folders
  - Queried via Microsoft 365 Copilot — colleagues reference the site in their prompts
  - SharePoint copies may lag behind the GitHub repo — treat local project-kb/ and private-kb/ here as authoritative