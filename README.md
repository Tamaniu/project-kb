# Avid Product Knowledge Base (Internal)

Private, structured reference for Avid products and versions from 2021 onwards.

This repository is designed as a **machine-readable, version-controlled source of truth**
for analysing Avid product capabilities, changes, and limitations over time.

---

## Scope

### Products covered
- MediaCentral family
  - Cloud UX
  - Production Management
  - Newsroom Management
  - Data Receiver
  - Web Services API (WSAPI)
  - Media Analytics
- Media Composer
- Avid NEXIS
- Stream IO

### Supplementary material
Selected transcripts from:
- NAB sessions
- Wolftech / CuttingRoom material
- *Making the Media* (ITV-related episodes)

---

## Structure

- `meta/`  
  Product-level metadata, manifests, and supporting reference files

- `<product>/<module>/<version>/`  
  Version-specific documentation, primarily `new-features.md`

- `transcripts/`  
  Curated transcripts relevant to news and broadcast workflows

---

## Conventions

- One folder per **headline version**  
  e.g. `2024.10`, `2023.12`, `2025.6`

- Patch span (e.g. `2024.10.0–2024.10.8`) is documented in the **front matter**
  of each `new-features.md`

- All documentation is written in **Markdown**
  and assumes an **Avid-savvy, technical audience**

---

## Indexing & Usage (Important)

This repository is intended to be consumed in **stateless analysis environments**
(e.g. AI tools, scripted analysis, project-specific research contexts).

### Authoritative index
- `MANIFEST.txt` provides the **complete and authoritative list of files**
- Consumers MUST use the manifest rather than assuming directory traversal
- The manifest should be regenerated after any structural changes using:

```bash
find . -type f -not -path './.git/*' | sed 's|^\./||' | sort > MANIFEST.txt

# Avid Product Knowledge Base (Internal)

Private, structured reference for Avid products and versions from 2021 onwards.

## Scope

- MediaCentral family
  - Cloud UX
  - Production Management
  - Newsroom Management
  - Data Receiver
  - Web Services API (WSAPI)
  - Media Analytics
- Media Composer
- Avid NEXIS
- Stream IO
- Selected transcripts from:
  - NAB sessions
  - Wolftech / CuttingRoom material
  - Making the Media (ITV-related episodes)

## Structure

- `meta/` – product and version metadata
- `<product>/<module>/<version>/` – version-specific docs, primarily `new-features.md`
- `transcripts/` – curated transcripts relevant to news/broadcast workflows

## Conventions

- One folder per headline version, e.g. `2024.10`, `2023.12`, `2025.6`.
- Patch span (e.g. `2024.10.0–2024.10.8`) documented in the front matter of each `new-features.md`.
- All docs are written in Markdown and assume an Avid-savvy, technical audience.
# project-kb
Private Avid product/version knowledge base
