---
product: avid-content-core
product-area: cloud-platform
version: "0.0.3"
doc-type: user-guide
source: avid-official
source-url: https://docs.avid.com/acc/Content/ACC_Help/Using_My_Collection.htm
confidentiality: public
date-added: 01/05/2026
last-updated: 01/05/2026
status: current
feature-tags: [content-core, my-collections, scratch-pad, bin, tabs, drag-drop, web-editor, shortcuts]
---

# Avid Content Core — My Collections

**Sources:** docs.avid.com ACC Help — Using My Collections, My Collections Shortcuts  
**Extracted:** 01/05/2026 | Docs version: 0.0.3

---

## Overview

My Collections is an assets **scratch pad** — a floating window for gathering assets found in ACC for later use. It is a floating window (not docked like most apps), initially positioned at the bottom-right of the UI.

**Key characteristics:**

- Floating window — can be moved, resized, closed, and reopened; it restores to its last known position.
- No restrictions on asset types.
- Multiple Web Editor sequences in a single tab: you **cannot** send the entire collection to the Web Editor (single sequence only).
- Items **persist across sessions** until manually cleared.
- Double-click any asset to open it in the default app.
- Limits: **50 tabs** max; **100 assets** per tab.

**To resize:** drag any corner or side.  
**To close:** click the **Minimise** button (upper-right), or press **Esc** with focus on the window.

---

## Adding Assets

### Via Landing Page

1. Click **Landing Page** in the Fast Bar.
2. Select the desired tab in the My Collections window or panel.
3. Do one of:
   - Click **"Add to My Collections"** on any card.
   - Tick the card checkbox → click **"Add to My Collections"** at the top.
   - Tick the category checkbox to select all → click **"Add to My Collections"**.

### Via Drag and Drop

1. Click **My Collections** in the Fast Bar to open the window.
2. Select the desired tab.
3. In another app (e.g. Search), select assets (Shift+click or Ctrl+click for multiple).
4. Drag and drop to the My Collections window.

### Via Context Menu

1. Select asset(s) in Search or another applicable app (Shift+click or Ctrl+click for multiple).
2. Right-click → **Copy to My Collections**.

> Note: the right-click context menu is not available from the Player.

### Via Keyboard

1. Select asset(s) in another app.
2. Press **Ctrl+C** to add to the collection.

---

## Managing Tabs

**Create a new tab:** click the **New Tab (+)** button (upper-right of window).

**Rename a tab:**
1. Right-click → **Rename**, or slowly double-click the tab name.
2. Type the new name. Press **Enter** or click outside the field.
- Tab names: max 100 characters; display limited to ~125 px (hover to see full name).

**Remove a tab:**
1. Right-click → **Remove**. Click **Remove** to confirm.
- All assets in that tab are removed; duplicate assets in other tabs are unaffected.
- The window always retains at least one tab — if all are deleted, a new default COLLECTION tab is created.

---

## Removing Assets

1. Click **My Collections** in the Fast Bar.
2. Do one of:
   - Hover over an asset → click the **trash icon**.
   - Click an asset → press the **Delete** key.
   - Click **Clear** to remove all assets from the current tab (confirmation required; the tab itself is not deleted).
   - Delete a tab to remove all assets within it.

---

## Using Assets from My Collections

- **Drag and drop** individual assets to any app or to the Player.
- **Shift+click / Ctrl+click** multiple assets and drag as a group (multiple drag to the Player is not supported).
- Click **Send to Web Editor**:
  - No sequence in the collection: Web Editor home page asks you to select/create a project.
  - A sequence is included: that sequence loads automatically; other supported assets are added to the Project Bin.
  - Cannot send a collection with **multiple sequences** via this button.

Dragging an asset from My Collections to another part of the UI does **not** remove it from the collection.

---

## Keyboard Shortcuts

| Shortcut | Description | Focus Required |
|---|---|---|
| Ctrl+C (Win) / Cmd+C (Mac) | Add selected asset to current tab | My Collections open |
| Esc | Minimise / hide the window | My Collections |
| Left / Right Arrow | Switch between tabs (Enter or Space to confirm) | Tabs area |
| Up / Down Arrow | Navigate between assets (two or more in a tab) | Tabs area |
| Enter / Space | Trigger action on focused element | My Collections |
