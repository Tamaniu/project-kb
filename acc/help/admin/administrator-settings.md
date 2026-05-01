---
product: avid-content-core
product-area: cloud-platform
version: "0.0.3"
doc-type: user-guide
source: avid-official
source-url: https://docs.avid.com/acc/Content/ACC_Help/Admin_Managing_Settings.htm
confidentiality: public
date-added: 01/05/2026
last-updated: 01/05/2026
status: current
feature-tags: [content-core, admin, web-editor, cutting-room, frame-rate, social-media, render, output-profile, search-settings, vision-warehouse, documentdb, search-index, site-registry]
---

# Avid Content Core — Administrator Settings

**Sources:** docs.avid.com ACC Help — Managing the ACC Administrator Settings, Configuring the Web Editor Settings, Configuring the Editor Import Graphics Settings, Configuring the Editor Social Media Settings, Configuring the Editor Output Settings, Using the Search Settings App  
**Extracted:** 01/05/2026 | Docs version: 0.0.3

---

## Accessing the Administrator Apps

Only users assigned an administrator role (via the ACC Control Panel) can access the administrator apps.

1. Sign in with your administrator account.
2. Click the **User Menu** (upper-right) and select **Admin Mode**.
3. When finished, click the User Menu and select **Main Mode** (to return to the main UI) or **Sign Out**.

### Administrator Fast Bar

| Button | Name | Description |
|---|---|---|
| Expand/Collapse | Expand / Collapse | Shows or minimises the Fast Bar. |
| Web Editor | Web Editor Settings | Configure Web Editor default settings for all users. |
| Search Settings | Search Settings | Monitor search index status; view catalogue and queue details. |
| Site Registry | Site Registry | View sites and systems connected to the ACC tenant. |
| App Overflow | App Overflow | Appears when the browser window is too small to show all apps; provides access to hidden apps. |

---

## Web Editor Settings

> The ACC Web Editor is powered by **Cutting Room** (an Avid Technology partner). References to Cutting Room may appear in these settings.

### General Settings — Allowed Frame Rates

Configures which frame rates are available when a user creates a new sequence. Frame rate **cannot be changed** after the first asset is added to the Sequence Timeline.

The **Same as Source** option automatically sets the frame rate based on the first asset added to the sequence.

**To configure:**
1. Click **Web Editor Settings** in the Administrator Fast Bar and select **General Settings** from the sidebar.
2. Expand **"Set Allowed Frame Rates"**.
3. Enable/disable options, or use **Select All** / **Clear All**. At least one frame rate must be enabled.
4. Click **Save**.

### General Settings — Downloading Content

When the "allow" toggle is enabled, a **Download** tab appears in the render output window, allowing users to save local copies of rendered output. Administrators may want to **disable this** when working with sensitive or high-value IP content.

---

## Web Editor Settings — Import Graphics

This panel imports graphic templates created outside of ACC into the Web Editor. For full details, see the Cutting Room documentation: https://docs.cuttingroom.com/docs/managing-graphics-templates

---

## Web Editor Settings — Social Media

Configures social media accounts used in the Web Editor publishing process. Multiple accounts per provider are supported.

**Supported platforms:** Facebook, Instagram, TikTok, X, YouTube.

### To create a social media profile

1. Select **Social Media** from the Web Editor Settings sidebar.
2. Click **Add New**.
3. Select a social media platform.
4. Enter a **profile name** (displayed in the render output window).
5. Set the **Shared Source** toggle:
   - **Enabled** (default): profile is visible to all users after saving.
   - **Disabled**: profile visible only to Web Editor administrators — useful for testing before wider rollout.
6. Click **Sign In** and provide the platform credentials.
7. Click **Save**.

### To delete a social media profile

1. Select **Social Media** from the Web Editor Settings sidebar.
2. Click the delete icon next to the profile.
3. Click **Delete** to confirm.

---

## Web Editor Settings — Output Settings

Defines the output templates that appear when a user clicks the Render button in the Web Editor. The render process creates media for **every available output setting**, so excessive profiles increase render time.

### Output Settings Fields

| Field | Description |
|---|---|
| Name | Shown in both the Administrator app and Web Editor render options. |
| Format | MP4 (video/audio), M4A, or MP3 (audio-only). Audio-only formats hide many other options. |
| Preset | Selects a preset video format; auto-populates Aspect Ratio, Video Bit Rate, etc. Values can be customised (changes Preset display to "Custom"). |
| Aspect Ratio | Standard aspect ratios or Custom (unlocks Width, Height, Crop fields). |
| Video Bitrate | Bit rate in MB/s. Higher values = potentially higher quality, larger files. |
| Disable Graphics Burn-In | If enabled, graphic elements (e.g. titles) are excluded from the final output. |
| Disable Captions Burn-In | If enabled, closed captioning is omitted from the final output. |
| Caption File Format | Defines a captions file format for the Downloads area (defaults to None). |

Advanced Settings are also available but should only be modified with confidence.

**To create an output setting:**
1. Select **Outputs** from the Web Editor Settings sidebar.
2. Click **Add New** under Output Settings.
3. Configure fields as above. Click **Save**.

**To delete an output setting:**
1. Select **Outputs** from the sidebar. Click the delete icon. Click **Delete** to confirm.

### Render Profiles

Render profiles associate a sequence with a **subset of output settings**, speeding up rendering for specific use cases (e.g. a sequence intended only for 1:1 social media). After creating a profile, a **Render Profile** menu appears in the New Sequence window (defaults to "All").

**To create a render profile:**
1. Select **Outputs** from the Web Editor Settings sidebar.
2. Click **Add New** under the Profiles area.
3. Enter a profile name.
4. From the Renditions pull-down, select an Output Setting. Click **Add to this Profile**.
5. Repeat to add more output settings to this profile.
6. Click **Save**.

**To delete a render profile:**
1. Select **Outputs** from the sidebar. Click the delete icon next to the profile. Click **Delete** to confirm.

---

## Search Settings App

The Search Settings app allows administrators to monitor search configuration status and view details about search indices.

The view **auto-refreshes every 30 seconds**. Layout:

- **Header** (top): health check of back-end systems
- **All Sites, All Systems** (middle): aggregate view
- **Site Details** (bottom): cards representing each connected system's search index

Searches in ACC run across all indexed data from all cards.

### Health Indicators

Each component shows green/yellow/red. Hover over an indicator for a tooltip.

**Vision Warehouse** — Part of Google Vertex AI Vision. Analyses proxy media to produce:
- Audio transcripts
- OCR (Optical Character Recognition) data
- Embeddings for semantic searches
- Additional rich metadata

Vision Warehouse metadata is stored within ACC only — **not pushed back to any on-prem database**. Normal status: *"Vision Warehouse is online"*.

**Search Engine** — Indexes annotations generated by ACC in Vision Warehouse; triggers proxy analysis; passes search queries and returns post-processed results to the front end. Normal status: *"Search API is online"*.

**DocumentDB** — The database of ACC's Aggregated Asset Store. Normal status: *"DocumentDB is responding to commands"*.

### Site Details Cards

Each card represents a search index for a connected system — either an on-prem Production Management module or an ACC-integrated system such as the Web Editor. Additional detail on errors, warnings, or index status appears in the **Details panel** (right side of app).
