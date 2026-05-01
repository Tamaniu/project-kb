---
product: avid-content-core
product-area: cloud-platform
version: "0.0.3"
doc-type: user-guide
source: avid-official
source-url: https://docs.avid.com/acc/Content/ACC_Help/Player_Chapter.htm
confidentiality: public
date-added: 01/05/2026
last-updated: 01/05/2026
status: current
feature-tags: [content-core, player, playback, proxy, jkl, timecode, metadata-tab, transcript-tab, segments-tab, markers, restrictions, content-description, temporal-hits, ocr, ai, vision-warehouse]
---

# Avid Content Core — Player Monitor and Tabs

**Sources:** docs.avid.com ACC Help — Using the Player Monitor and Tabs, Using the Metadata Tab, Using the Transcript Tab, Using the Segments Tab  
**Extracted:** 01/05/2026 | Docs version: 0.0.3

---

## Overview

The ACC Player provides professional-grade, frame-accurate playback of proxy media without requiring local downloads of high-res assets. It plays:

- Avid Production Management and MediaCentral Production Management master clips
- Sequences created in the ACC Web Editor

The Player is divided into the **Player Monitor** (video display and controls) and the **Player Tabs** (Metadata, Transcript, Segments).

---

## Proxy Creation

When MediaCentral Cloud UX detects a new Production Management master clip, it initiates creation of a **1080p proxy** and pushes it to ACC.

If you attempt to load an asset that has no proxy:
- ACC automatically initiates proxy creation.
- If resources are busy, the request is queued.
- The asset appears automatically in the Player when the proxy is ready.

If you load a Web Editor sequence that is actively being edited:
- Changes appear in the Player automatically (no manual refresh required), shortly after being made.
- Assets not yet viewed may briefly appear as black holes; these fill in after a short period.

---

## Timecode Display

The Player uses **absolute timecode** — the first frame is always `00:00:00:00`. This differs from the Web Editor's Source monitor, which can toggle between absolute and source timecode.

---

## Opening and Closing the Player

- Click the **chevron** near the top-right of the UI to open or close the Player.

## Resizing the Player

- **Vertical resize**: hover over the separator between the Player and the main app area; drag to resize.
- **Horizontal resize**: hover over the separator between the Player Monitor and Tabs areas; drag to resize.

---

## Loading Assets

- **Double-click** an asset (opens the Player if closed). Default app preferences may affect behaviour.
- **Drag and drop** an asset to the Player (if already open).
- **Right-click** an asset → **Open In > Player**.

Only **one asset** can be open in the Player at a time.

---

## Playback Controls

| Control | Key | Description |
|---|---|---|
| Go to In | | Moves to the In point (or start of asset if no In point set). |
| Mark In | | Sets the beginning of a segment. |
| 1 Frame Back | | Moves position indicator one frame back. |
| Rewind | **J** | Plays in reverse at shuttle speed increments. |
| Play / Pause | **K** (stop) | Play or pause media. |
| Fast Forward | **L** | Plays forward at shuttle speed increments. |
| 1 Frame Forward | | Moves position indicator one frame forward. |
| Mark Out | | Sets the end of a segment. |
| Go to Out | | Moves to the Out point (or end of asset if no Out point set). |

---

## J-K-L Playback (Three-Button Play)

JKL keys provide variable-speed playback (*three-button play*):

- **L**: play forward at normal speed. Press repeatedly to increase speed (doubles each press, up to 512×).
- **J**: play backward at the same speed increments.
- **K**: stop playback.
- **Hold J or L**: play at ½ speed.

Playback speed is shown to the right of the timecode field.

**Audio behaviour:**
- Audio is muted above **32× speed**.
- Audio scrubbing on JKL is audible in **forward playback only**.

JKL keys work in the Player Monitor and in the Web Editor's Source monitor, Record monitor, and Sequence Timeline.

---

## Player Tabs

### Metadata Tab

Displays properties associated with the asset open in the Player.

| Section | Properties |
|---|---|
| **Entity** | System Type (`avid-pmplus` or `webeditor`), System ID, Entity Type (`asset`), Object Type (`masterclip` or `sequence`), Object ID, Asset ID |
| **Core** | Name, Created, Creator, Modified, Modifier — plus additional properties depending on asset type |

**To access:** Load an asset, then click the **Metadata** tab.

If no asset is loaded: *"Asset is not selected — Select an asset to view metadata"*.

---

### Transcript Tab

Shows audio transcripts of proxy media analysed by Google services. Supported in this version: **Avid Production Management** and **MediaCentral Production Management** master clips only.

> Note: Shows only transcripts created through ACC analysis — not transcripts from on-prem MediaCentral Cloud UX or from the Web Editor.

#### Transcript Tab Layout

| # | Control | Description |
|---|---|---|
| 1 | Reload | Reloads the transcript. |
| 2 | Find | Search words in transcript (contains search; single word only). Word count shown as `<selected>/<total>`. Navigation arrows skip between matches. If Sync Playhead is on, skipping also moves the playhead. |
| 3 | Sync Playhead | **On (blue, default):** current word highlights in green during playback; clicking a word moves the playhead. **Off (grey):** no synchronisation between playhead and transcript. |
| 4 | Export Transcript | Export as TXT, CSV, or SRT to local workstation. |
| 5 | Transcript area | Table with Speaker and Transcript columns. Start timecode per segment shown as `HH:MM:SS.mmm`. |

#### Navigating the Transcript

With Sync Playhead **on**: the currently spoken word highlights in green; clicking a word moves the position indicator to its timecode. When between two words, the left word highlights. When two words share a timecode, both highlight.

With Sync Playhead **off**: no highlighting; clicking a word does not move the position indicator.

#### Searching in the Transcript

1. Type in the **Find** field (contains search — no need to type the full word; multiple words not supported).
2. Press **Enter**. All matches highlight in blue; the transcript scrolls to the first match.
3. Use **Previous** / **Next** arrows to navigate. Previous is disabled at the first hit; Next at the last.
4. Click **X** to clear the search.

Find interacts with Speaker filter: applying a Speaker filter clears the Find search term.

#### Filtering Speakers

1. Click the grey **Filter** button in the Speaker column header.
2. Select one or more speakers (use the Find a speaker field to search). Filter is applied immediately; button turns blue.
3. Click outside the filter tool to close.

To disable: click the blue Filter button and deselect all, or click Reload.

#### Exporting a Transcript

1. Click **Export Transcript**.
2. Select format: **TXT**, **CSV**, or **SRT**.

File saved as `<asset_name>_transcript.<ext>` to the browser's download location.

#### Copying Transcript Text

- Highlight words with the mouse → right-click → **Copy Text**, or press **Ctrl+C**.
- Highlighting text across segments also sets In/Out mark points on the Player's position indicator panel.
- Copying multiple segments: select with Shift+click or Ctrl+click, then Ctrl+C.

---

### Segments Tab

Displays time-based metadata for Production Management or MediaCentral Production Management assets.

#### Available Layers (one at a time)

| Layer | Description |
|---|---|
| **All Markers** | All markers from all tracks. |
| **V1…n / A1…n** | Individual video/audio track markers. |
| **Restrictions** | Spans indicating limited-use content (IP rights, compliance, etc.). |
| **Content Description** | AI-generated descriptions of video content. |
| **Temporal Hits** | Location of semantic matches from a Simple or Markers & Segments search. Only shown for assets opened from Search results after a semantic/M&S search. |

> Note: In this version, markers and restrictions can be **viewed but not added, edited, or deleted**.

#### Segment Field Reference

**Markers** (sorted by In timecode):
- In/Out timecode, Marker icon, Type, Timeline position, Colour, Comment, Owner, Track

**Restrictions** (sorted by In timecode):
- In/Out timecode, Timeline position, Comment, Owner, Modified date/time

**Content Descriptions** (sorted by In timecode):
- In/Out timecode, Timeline position, Description text

**Temporal Hits** (sorted by relevance, most accurate first):
- In/Out timecode, Timeline: blue span = entire temporal segment, green span = best result within it

All timecodes displayed as `HH:MM:SS.mmm` (milliseconds, not frames) to ensure accuracy where proxy frame rate differs from source.

#### Filtering Markers / Restrictions / Content Descriptions

- Click in the **Filter** field and type a search term (contains search).
  - Markers: searches Colour, Comment, Owner, and Track fields.
  - Restrictions: searches Comment, Owner, and Modified fields.
  - Content Descriptions: searches description text.
- Click **X** (Clear) to remove the filter.

#### Navigating by Segments

- Click a segment: the position indicator moves to its In timecode.
- During playback: the current segment highlights in grey; the Segments area scrolls automatically.

#### Copying Comment / Description Text

1. Double-click the comment or description field.
2. Highlight the text to copy.
3. Press **Ctrl+C**.

#### Temporal Hits — To Inspect

1. In the Search app, conduct a **semantic search** or a **Markers & Segments search**.
2. Double-click an asset in the results (or right-click → Open in → Player), then click the **Segments** tab.
3. The Temporal Hits layer is selected automatically. Clicking a temporal hit segment moves the position indicator to the **In timecode of the best result** within that segment.
