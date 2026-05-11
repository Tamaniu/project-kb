---
product: avid-content-core
product-area: cloud-platform
version: "0.0.3"
doc-type: user-guide
source: avid-official
source-url: https://docs.avid.com/acc/Content/ACC_Help/SearchApp/Search_Using_Simple.htm
confidentiality: public
date-added: 01/05/2026
last-updated: 01/05/2026
status: current
feature-tags: [content-core, search, semantic-search, simple-search, advanced-search, natural-language, voice-search, image-search, filters, search-terms, pills, ocr, temporal-hits, markers, query-mode, context-menu]
---

# Avid Content Core — Search

**Sources:** docs.avid.com ACC Help — Using the Simple Search, Search App Header (Advanced), Searching with Multiple Terms, Editing or Clearing a Search, Using Filters, Using the Search Context Menus  
**Extracted:** 01/05/2026 | Docs version: 0.0.3

---

## Overview

ACC provides two search modes:

1. **Simple Search** — natural language semantic search via the bar at the top of the UI. Available from any app; executes a federated search and opens the Search app in the main area.
2. **Advanced Search** — term-based search using the Search app header ("pills"). Offers structured search terms, multiple term types, boolean operators, and filter combinations.

Both modes display results **by relevance** (most accurate first).

---

## Simple Search (Natural Language / Semantic)

The simple search bar at the top of the ACC UI enables **semantic searches** — focusing on the *meaning* of a term, not just text matching. No knowledge of asset names or metadata required.

A search for `"beach"` may return:

- Assets with "beach" in text-based metadata.
- Assets showing footage of a beach (no metadata match needed).
- Assets whose audio includes the word "beach".
- Related assets (sand castle, sailboat, ocean sunset).
- Assets with the word visible on-screen (via **OCR** — Optical Character Recognition).

OCR indexes every visible word in video — for example, scrolling ticker-tape text across a two-hour broadcast becomes fully searchable.

Simple searches do **not** support quoted phrases or wildcard characters. Use simple text phrases for best results.

Executing a search from the top bar opens the Search app in the main area (replacing whatever app was there).

### Text Search

- Type a search term or phrase into the top bar. Press **Enter** or **Return**.

### Voice Search

1. Click the **microphone button** (right side of search bar). Button turns red when active.
2. If prompted, grant Chrome permission to access the microphone.
3. Speak your word or phrase. It appears in the search bar.
4. Click **Search**.

### Image Search

ACC can analyse a local image file and return assets related to its content. This uses semantic matching — not necessarily an exact frame match (though exact matches typically rank highest).

**File requirements:** JPEG, JPG, or PNG · Min 128 × 128 px · Max 5 MB.

The image is deconstructed into encoded text for back-end analysis. It is **not uploaded to any external system** and data is **not retained** after the search.

1. Click the **image button** (right side of search bar).
2. Drag and drop an image to the panel, or click inside to browse for a file.
3. Click **Search**.

---

## Advanced Search — Search App Header

The Advanced mode uses **search terms ("pills")** to build structured queries. Each term is displayed as a coloured pill. The Search app header contains:

| # | Control | Description |
|---|---|---|
| 1 | Search term | Input field for a custom value. |
| 2 | Add Term (+) | Adds a new term to the search. |
| 3 | Clear Search | Removes all terms and filters; resets to a single empty term. |
| 4 | Search Button | Executes the search. |
| 5 | Query Mode | Toggles between Compact (pill) and Form (detail) view. |
| 6 | Dock | Docks the Search app. |
| 7 | Context Menu | Additional actions on Results area assets. |
| 8 | Close | Closes the Search app. |

### Query Mode

- **Compact** (default): each term displayed as a coloured pill. Details hidden.
- **Form**: each term displayed in full edit mode across two columns. A scroll bar appears after five rows.

Default can be set in **User Settings > Search**; overridden per session in the header.

---

## Searching with Multiple Terms

When more than one term is added:

- An **&** (AND) boolean operator appears between each term.
- Terms of the **same type** share a colour.
- You **cannot** combine a primary *Metadata* pill and a *Markers and Segments* pill in the same search.
- You **cannot** add two primary Metadata pills.
- You **can** add two secondary Metadata pill types (e.g. two *Metadata:Name* pills — both appear in orange).
- Empty terms (with no value assigned) are **ignored** when the search is executed.

### To add a term

- Click the **Add (+)** button in the Search header, or press **Tab** after the existing term.

### To execute

- Click the **Search** button or press **Enter**.

---

## Editing or Clearing a Search

After entering terms, you can edit, add, or remove terms to adjust the query.

- Click an existing term to edit it. Text values are highlighted for easy replacement; menu-based values open their menu automatically.
- Click away from the Search header: results update to reflect your changes.

### To clear all terms and filters

- Click the **Clear Search** button, or
- Press **Ctrl+Backspace** (Windows) / **Cmd+Backspace** (Mac).

---

## Using Filters

Filters in the Search sidebar limit results by common metadata fields using **non-customisable modifiers**. Unlike search terms, filter qualifiers cannot be changed.

Selecting a filter applies it immediately. The Filter button and Applied Filters button both update.

### Filter UI Elements

| # | Element | Description |
|---|---|---|
| 1 | Filter button | Number badge = how many filters are active. |
| 2 | Applied Filters | Shows count of active filters. Click X to clear all. |
| 3 | Filter Name | Category label. |
| 4 | Expand / Collapse | Show or hide a filter category. |
| 5 | Qualifier selection box | Bullet = single-selection (must deselect via Applied Filters fly-out). Tick = multi-selection (click again to deselect). |
| 6 | Applied Filters fly-out | Click Applied Filters header for detail; click X next to any filter to remove it. |
| 7 | Asset count | Total assets matching this filter based on the full database (not affected by other active filters). |

### Important Filter Behaviours

- Up to **six options** shown per category by default. "Show More" expands up to six additional; "Show All" opens a break-out window for more than six.
- **Created and Modified** filters:
  - *Today*: assets from 12:00am to current time, **respects local client time zone**.
  - *Last 24 hours*: rolling 24-hour period.
- Filters cannot be modified or customised.

### System Filter

Lists names of each local and remote system connected to ACC. Examples:
- Local: ACC Web Editor
- Remote: on-prem MediaCentral Cloud UX deployment

Production Management shows the database name (`apm-db`) plus the MediaCentral Cloud UX system name as defined in the **ACC Site Registry app**.

---

## Search Context Menus

Available on assets in the Results area. Access via:

- **Right-click** on an asset, or
- Select an asset and click the **context menu button** in the Search app header.

Available actions (vary by asset type):

| Action | See |
|---|---|
| **Request a Review** | [Review and Approval](review-and-approval.md) |
| **Copy to My Collections** | [My Collections](my-collections.md) |
| **Open In** | [Choosing the App for Opening Assets](ui-common.md#choosing-the-app-for-opening-assets-open-in) |
