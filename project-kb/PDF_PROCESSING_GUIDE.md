# PDF Processing Guide for Avid KB

**Last Updated**: 11/05/2026  
**Status**: Active Standard Operating Procedure

---

## Overview

This guide establishes the standard workflow for converting PDF source documents into markdown format and integrating them into the project knowledge base. The process uses batch automation, intelligent filename pattern matching, and multi-file output strategies to maintain consistency across all product versions.

---

## Directory Structure

```
avid-knowledge-base/
├── source-pdfs/                    # Input: raw PDF files from Avid documentation
├── project-kb/                     # Output: processed markdown files
│   ├── mediacentral/
│   │   ├── cloud-ux/
│   │   │   └── versions/
│   │   │       └── {version}/
│   │   │           ├── readme.md
│   │   │           ├── new-features.md      # When applicable
│   │   │           ├── install-guide.md     # When applicable
│   │   │           └── ...
│   │   ├── newsroom-management/
│   │   ├── production-management/
│   │   └── ...
│   ├── MANIFEST.txt                # Authoritative index of all KB files
│   └── PROJECT_INSTRUCTIONS.md
├── avid_pdf_to_md.py              # Core conversion script
├── process_pdfs_final.py           # Batch processor (recommended)
└── working/                        # Temporary files, logs, drafts
```

---

## Prerequisites

### Required Files

- **avid_pdf_to_md.py** — Converts individual PDF to markdown with YAML front-matter
- **process_pdfs_final.py** — Batch processor that orchestrates multiple PDF conversions
- **PDF_PATTERNS regex dictionary** — Maps PDF filenames to product/version/doc-type metadata

### System Requirements

- Python 3.7+
- Git (for version control and pushing to GitHub)
- Sufficient disk space for source PDFs and output markdown

---

## Workflow: Step-by-Step

### Phase 1: Prepare Source PDFs

1. **Place PDFs in `source-pdfs/` folder**
   ```bash
   ls source-pdfs/
   MCCUX_2024_10_17_ReadMe.pdf
   MCNM_v2024.10_ReadMe.pdf
   ...
   ```

2. **Verify filename patterns match PDF_PATTERNS regex**
   - Open `process_pdfs_final.py` and review the `PDF_PATTERNS` list
   - Ensure each PDF filename has a matching pattern
   - If a filename doesn't match, add a new pattern to the dictionary

3. **Example PDF Patterns** (from `process_pdfs_final.py`):
   ```python
   PDF_PATTERNS = [
       # Format: (regex_pattern, product_key, doc_type)
       (r'MCCUX_([\d_]+)_ReadMe', 'cloud-ux', 'readme'),
       (r'MCNM_v([\d.]+)_ReadMe', 'newsroom-management', 'readme'),
       (r'MCPM_([\d_]+)_ReadMe', 'production-management', 'readme'),
   ]
   ```

---

### Phase 2: Run Batch Processor

1. **Navigate to project root**
   ```bash
   cd ~/Desktop/avid-knowledge-base
   ```

2. **Run in dry-run mode first** (recommended)
   ```bash
   python3 process_pdfs_final.py --dry-run
   ```
   Output will show:
   - Files matched: ✓
   - Files skipped: ⊘ (pattern not found)
   - Output paths: where each markdown will be created

3. **Execute actual conversion**
   ```bash
   python3 process_pdfs_final.py
   ```
   Output structure:
   ```
   Processing: MCCUX_2024_10_17_ReadMe.pdf
     Product: cloud-ux | Version: 2024.10.17 | Type: readme
     ✓ project-kb/mediacentral/cloud-ux/versions/2024.10.17/readme.md
   ```

---

### Phase 3: Multi-File Output Pattern

**Critical Rule**: If a PDF ReadMe contains **new features sections**, create a separate `new-features.md` file.

#### Identifying New Features Content

Check if the converted readme.md includes headings like:
- "New Features in MediaCentral Cloud UX 2024.10.x"
- "What's New" sections
- "Feature Highlights"

#### Creating new-features.md

1. **Extract the new features content** from the readme.md
2. **Create a new file** in the same version directory:
   ```
   project-kb/mediacentral/{product}/versions/{version}/new-features.md
   ```

3. **Use matching YAML front-matter**:
   ```yaml
   ---
   product: mediacentral-cloud-ux
   product-area: newsroom-platform
   version: "2024.10.17"
   release-date: 01/10/2024
   doc-type: new-features          # ← Only difference from readme
   source: pdf
   confidentiality: public
   date-added: 11/05/2026
   status: current
   ---
   ```

4. **Paste extracted new features content** below the front-matter

#### Expected Structure for Cloud UX Releases

Each version directory should contain:
- ✓ `readme.md` (always)
- ✓ `new-features.md` (if ReadMe contains feature sections)
- Optional: `install-guide.md`, `users-guide.md`, etc. (if source PDFs exist)

---

### Phase 4: Update MANIFEST.txt

**Location**: `project-kb/MANIFEST.txt`

1. **Find the section** for your product/version
   ```bash
   grep "2024.10.17" project-kb/MANIFEST.txt
   ```

2. **Add entry** for each new markdown file with annotation format:
   ```
   mediacentral/cloud-ux/versions/2024.10.17/readme.md         | source: MCCUX_2024_10_17_ReadMe.pdf | version: 2024.10.17 | doc-type: readme | converted: 11/05/2026
   mediacentral/cloud-ux/versions/2024.10.17/new-features.md   | source: MCCUX_2024_10_17_ReadMe.pdf | version: 2024.10.17 | doc-type: new-features | converted: 11/05/2026
   ```

3. **Update the "Last updated" timestamp** at the top of MANIFEST.txt
   ```
   # Last updated: 11/05/2026
   ```

4. **Keep entries sorted** by product, then by version (descending)

---

### Phase 5: Commit and Push to GitHub

#### Important: Check Git Configuration

The `project-kb/` directory may be registered as a git submodule or gitlink. Before committing:

```bash
git ls-files -s | grep project-kb
```

If output shows `160000`, it's a gitlink—you'll need to convert it to a regular directory:

```bash
git rm --cached project-kb
git add project-kb/
```

#### Standard Git Workflow

1. **Stage the changes**
   ```bash
   git add project-kb/mediacentral/{product}/versions/{version}/
   git add project-kb/MANIFEST.txt
   ```

2. **Commit with descriptive message**
   ```bash
   git commit -m "Add new-features.md for Cloud UX v2024.10.17 and update MANIFEST"
   ```

3. **Push to remote**
   ```bash
   git push origin master
   ```

4. **Verify commit**
   ```bash
   git log --oneline -5
   ```

---

## YAML Front-Matter Template

Every markdown file must include YAML front-matter:

```yaml
---
product: mediacentral-{product}              # e.g., mediacentral-cloud-ux
product-area: newsroom-platform              # or production-platform, asset-management, etc.
version: "2024.10.17"                        # Quoted string format
release-date: 01/10/2024                     # DD/MM/YYYY
doc-type: readme|new-features|install-guide # One per file
source: pdf|kb.avid.com|internal             # Where it came from
confidentiality: public|confidential          # public for all project-kb files
date-added: 11/05/2026                       # When added to KB (DD/MM/YYYY)
status: current|archived|draft                # current = active
---
```

---

## Common Issues & Solutions

### Issue: PDF filename doesn't match any pattern

**Solution**: Add a new regex pattern to `PDF_PATTERNS` in `process_pdfs_final.py`

```python
# Add to PDF_PATTERNS list:
(r'NEW_PRODUCT_v([\d.]+)_ReadMe', 'new-product', 'readme'),
```

Then re-run the batch processor.

### Issue: Git won't accept new files in project-kb/

**Cause**: `project-kb` registered as gitlink (mode 160000)

**Solution**:
```bash
git rm --cached project-kb
git add project-kb/
git commit -m "Convert project-kb from gitlink to directory"
```

### Issue: Files created but not showing in git status

**Cause**: Git index lock file or gitlink conflict

**Solution**:
```bash
rm -f .git/index.lock
git status
```

### Issue: new-features.md content is duplicative with readme.md

**Solution**: Extract *only* the "New Features" sections from the source PDF into new-features.md. Remove redundant installation/configuration instructions that belong in readme.md.

---

## Validation Checklist

Before pushing changes:

- ✓ All PDFs in `source-pdfs/` have been processed
- ✓ Output markdown files exist in correct directory structure
- ✓ Every version directory with a readme.md also has new-features.md (if applicable)
- ✓ All YAML front-matter is present and valid
- ✓ MANIFEST.txt entries added for each new file
- ✓ MANIFEST.txt timestamp updated to current date
- ✓ Git status shows changes ready to commit
- ✓ Commit message is descriptive and includes version/product info
- ✓ Remote push successful (verify with `git log --oneline`)

---

## Key Principles

1. **Repository-First**: Always verify against `project-kb/` before external sources
2. **Version-Bounded**: File organization strictly follows `versions/{version}/` structure
3. **Multi-File Pattern**: ReadMe + new-features split is standard for feature releases
4. **MANIFEST as Authority**: All files must be indexed with source attribution
5. **Atomic Commits**: Each product version batch = one commit
6. **Date Consistency**: Use DD/MM/YYYY format throughout (UK standard)

---

## References

- **Core Converter**: `avid_pdf_to_md.py` — Handles PDF-to-markdown conversion with YAML generation
- **Batch Processor**: `process_pdfs_final.py` — Orchestrates multiple conversions with regex pattern matching
- **KB Structure**: `project-kb/README.md` — Product organization and metadata schema
- **Project Rules**: `project-kb/PROJECT_INSTRUCTIONS.md` — Governance and version-bounding rules

---

## Support & Maintenance

**Last Validated**: 11/05/2026  
**Validated Against**: Cloud UX v2024.10.17 conversion  
**Next Review**: Post-v2024.10.20 release or when new product added

For issues or improvements to this guide, open an issue or update this document in the project repository.
