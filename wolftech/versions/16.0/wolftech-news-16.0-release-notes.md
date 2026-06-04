# Wolftech News — Release Notes v16.0
**April 2026 Update (16.0)**
**Source:** Customer release document — distributed to customers, not posted publicly
**Added to KB:** 23/04/2026
**Version scope:** 16.0 only — do not apply to earlier versions

---

## Summary

After a big integration release with version 15, this release shifts the focus to the small things that save time. The sections below mirror the structure of the official release document.

---

## Research

### Feeds

- Use of enhanced Ritzau calendar API
- Live Feeds Post Layout Update
- Improvements to performance of Reuters and PA feeds

> **Note:** No detailed descriptions were provided for the Research section in the release document; the above are the complete feature statements as published.

---

## Planning

### Categorization

#### Manage Greenlight Options in Admin

Navigate to Admin > Greenlight Options. You can:

- Enable greenlight workflows
- Enable automatic greenlight based on criteria being met
- Enforce that content cannot progress through the different statuses unless it is greenlit first

You can determine which values are required before greenlight is possible, including:

- Additional Information / Forms Mandatory Fields
- A Description
- Adding Categories (such as Genre and office)
- Assigning a Production Type
- Adding a budget code (note: budget codes must be enabled in Admin > Layout)
- Setting a main department
- Creating at least one publishing output to set distribution intent
- Providing a description for one publishing output

#### Manage Event Options in General Settings

Two new options in General Settings:

- **Disallowing events with only end date** — prevents creation of events that have no start date
- **Using today date instead of story date** — sets the default event date to today rather than the story date

#### Define Time Zones Available for Selection in General Settings

Admins can now pre-select the time zones available to users in the "Preselected recent time zones" picker in General Settings. Reduces noise for organisations operating in a limited number of time zones.

#### Date-Time Field Type Added to Custom Fields for Additional Information

A new Date and Time field type is now available when creating custom fields in Additional Information. Use case: setting project milestone dates for reference (e.g. Media Return Date). Can be marked as mandatory for greenlight.

---

### Plan View

#### Sort by Last Modified

Plan view columns can now be sorted by "Last Modified". This allows stories, read-in notes, or publishing outputs with the latest changes to always appear at the top. Available in the Sort By dropdown within column filters.

#### Group by None

When sorting by Last Modified, grouping columns by department/content type can obscure the chronological order. A new "None" option in the Group By dropdown removes all grouping so all content appears in a single, time-ordered list.

#### Filter Week Views by Specific Days

For shows that only air on certain days of the week, the plan view's week display can now be filtered to show only those days. Accessible from the display eye (👁) menu.

#### Reorder Planning Columns in Edit Mode with Drag and Drop

Column headers in plan view can now be dragged to a new position while in edit mode. A blue target indicator shows whether the column will be placed to the left or right of the target position.

#### Feeds in Plan View

Feed columns can now be mixed with story columns in plan view — described as "easily one of the biggest changes in the plan view recently."

- Select from different Feed filter types in the plan view filter panel
- All the same filter options from the standalone Feed view apply here
- Additional option: **Apply Date Filter** — when enabled, feed columns in plan view are filtered to the same date range as the plan view dashboard. By default, feed columns show feeds across multiple days independently of the plan view date
- Feed Saved Searches can be used as a filter type. Select the saved search icon as the filter type, then click the + button to select a saved search (personal or shared). Note: plan view dates override the search's own date ranges when this is used

#### Search Hit Highlights in Plan and Feed View

When searching in a plan or feed view, or when a keyword filter is set in the feed filter, matching search hits are now highlighted in black.

#### Select Multiple Publishing Statuses in One Column

Publishing columns can now be filtered to include more than one publishing status simultaneously. For example, a "Review" column can include multiple review statuses at once.

#### Hide Publishing Hierarchy Folders

When creating publishing dashboards, the hierarchy folder can be useful for showing aggregated TRT. However, it is not always needed. A new "Hide Hierarchy Folders" checkbox in the column filter removes it from view. The left column in the plan view (without hierarchy folder) vs the right column (with) illustrates the difference.

#### Fix: D&D in Month View

Drag and drop in the month view has been corrected.

#### Performance and Stability Improvements

General performance and stability improvements to plan view.

---

## Resourcing

### Bookings, Requests, Guest Overview, Finance, Map, Risk Assessment

#### Assign to Me Button

Centralised teams (translators, ingests, graphics, etc.) operating a "pick-up" model can now quickly self-assign requests. From the booking request panel, open the three-dot (…) menu and choose **Assign to me**. Confirm the task after validating the date and timings.

#### Enforce Mandatory Locations on Bookings

A new toggle in General Settings > Booking section: **"Require locations on bookings and requests made within stories."** Ensures every booking attached to a story has a location assigned.

> Note: does not apply to work orders or ungrouped bookings that do not yet have a story associated.

#### Enforce Mandatory Fields on New Resource/Guest Profile Creations

Admins can now define which fields are required when creating a new resource or contact profile. Configure per resource type in Admin > Resource Types > Template tab. Mark individual fields as Required.

#### Add New Contacts While You Add Them to a Story

Previously, users could create a new guest profile during the booking process if the contact wasn't found. This is now extended to the contact addition flow:

1. Go to a story, select the Add Contact button, and search for a contact
2. If not found, click the + button to the right of the contact list
3. Fill in the contact details and choose **Add as contact** (rather than "Proceed to booking")

This adds the contact as a reference contact profile in the story rather than creating a booking.

#### Display Booking Unique ID (Crew ID)

The booking's unique ID is now visible inside the request panel, alongside the existing story and publishing output unique IDs. Use the copy icon to copy the ID. Useful for organisations using this ID as a Crew ID for ingest systems.

#### Define the Default Map Language in External Connections Admin

Navigate to Admin > External Connections > Google Maps. A new **Language** dropdown allows admins to set the map display language to match organisational preferences (e.g. English [US], French, German).

#### Done Bookings Moved to Bottom of Booking List View

Every booking marked as Done is moved to the bottom of the booking list, keeping focus on active bookings. Bookings that are not done continue to be sorted by booking date.

#### Fix: Mobile Booking Confirmations Now Include Task Title and Story Title

Mobile booking confirmation messages now include both the task title and the story title.

#### Fix: Guest View Search by Resource Name

Guest view search by resource name now works correctly.

#### Fix: Untitled Tasks Now Display "Untitled" as Task Name

Tasks without a title now display "Untitled" as their task name rather than being blank.

---

## Production

### Editorial (Background Information)

#### Improved Draft Mode

Draft Mode allows editorial segments not yet ready to be shared to remain hidden until posted. Version 16.0 includes a comprehensive set of improvements to this feature.

**Enable/disable:** Admin > Layout > Editorial Tabs Information > "Enable Background Item Drafts"

**How it works:**
- When a user starts working on a segment, it starts as a draft automatically
- The button reads **Post** initially; once posted, further edits show **Notify** instead of Save (wording configurable in Layout admin)
- Clicking outside the text item without posting keeps the item as a draft
- Drafts are hidden from other users by default
- Other users can choose to see colleagues' drafts via the editorial filter: "Show drafts from other users"
- A **warning dialog** is shown when navigating away from a story that contains unsaved draft items: "You have changes that have not been published. These changes will be saved automatically, but they will not be visible to others until published." The dialog can be suppressed via "Don't ask again" (configurable in My Page > Settings)

**My Drafts:**
- Users can see all their current drafts from the profile menu: Profile icon > My Drafts
- Each draft shows: Date/Time, Type, Title, Tab, and a text snippet
- The open draft icon navigates to the story and draft item

**Posting behaviour:**
- When a user hits Post, the item is no longer a draft and is made available to others
- The creation date of the newly shared item is set to the time it is posted
- Posting new changes triggers the activity log for users following the story; no activity log entry is sent until the item is posted

#### Paste Image Handler

When users paste content from websites into editorial items, Wolftech offers to scrape images from the website. The Paste Image Handler is a new dialog that allows users to select only the images from the copied source that are actually required. This avoids unnecessary media clutter or post-clean-up.

Steps:
1. Paste a website URL or content
2. A selection dialog appears showing all scraped images with descriptions
3. Select or deselect images (Select all / Deselect options available)
4. Click **Paste** — the upload manager handles the ingest
5. Images appear in the editorial segment and are attached to the story board

#### Attach via Bulk Drag and Drop of Assets into Editorial Segments

Multiple assets can now be dragged into a story for quick actions. The upload manager handles the queue.

- **Drag to story media tab** → uploads to the story board
- **Drag to story details tab** → prompts to select the upload target: Main Story Board or one of the visible editorial segments on screen

#### Additional Formatting Options in Text Editor

The script/text editor toolbar now exposes more functions:

- **Full screen** on a single editorial item (expand icon)
- **Styling** (bold, italic, font colour, underline, strikethrough, resize, text colour)
- **Paragraph options** — indentation, quoting, alignment, lists, block quote
- **Insert** — emojis, special characters, divider lines, tables/cells, links, images

#### Fix: Table Editing Formatting Pop-up Placement

The formatting pop-up when editing tables is now correctly positioned.

---

### Media Management (Board / Connected Devices / Footage / Media Folder)

#### Bulk Uploads

As per the Editorial section. The upload manager handles multiple assets and understands the context of the upload target (story board or editorial segment).

#### Update Asset Description from Asset Card

Users can now edit the description of an asset directly from the asset card in the board, without opening the full asset metadata preview.

#### Support for Media Central APM

Wolftech now integrates with Avid Production Management (APM) systems:

- Read and search assets in APM
- Link APM assets to stories and publishing boards
- Create Story container folders in APM
- React to assets tagged with the storyID in APM to auto-ingest them into Wolftech Stories via the Rules Engine

#### MCCUX Improvements

- **Drag and Drop from Search or Browse** to the story details tab: provides options to link assets to the main story board or to editorial segments on screen. Useful for organising/grouping assets for review
- **Persistent Wolftech App Page** when navigating between MCCUX apps — Wolftech no longer reloads each time you close and reopen it
- **Improvements to thumbnail handling** of PM, AM and APM media across the app

#### New Media Admin Section

A new consolidated Media admin section has been added with three sub-sections:

- **File Extensions** — manage permitted file extensions (add new extensions)
- **Footage** — enable technical resources with live data; show Footage section in right story bar
- **MAM** — enable MAM integration, MAM search in story, show MAM content in Media section, add MAM items as URLs in Board, create MAM folders when greenlighting, allow creating MAM folder before greenlighting, update publishing MAM folder when updating story MAM attachments. Requires workflow integration. Default MAM ID: MediaCentral APM CLUX02

#### Improvements to Display of Thumbnails in Board List View (Landscape)

Thumbnail display in the board list view has been improved for landscape-oriented assets.

#### Fix: Click to Open Link Directly from Thumbnail

Users can now click on a web link asset thumbnail in the board to open the link directly.

---

### Reporting

#### TAMS Support for Reporting Livestreams into the Edit

Cutting Room now supports reporting directly to an S3 TAMS (Time Addressable Media Storage) server, allowing livestream recording directly into one of their sequences so you can start cutting whilst it is recording.

More information: [https://www.cuttingroom.com/product/reporter](https://www.cuttingroom.com/product/reporter)

---

### Editing

#### Web Editor Shortcuts (LLM, MCP Server and Actions)

A ShortCut panel has been added to the Cutting Room web editor allowing AI-assisted editing actions.

**LLM Configuration** (Admin > AI > Language Model):

- Supported providers: Anthropic, OpenAI, or local models
- Model selection (e.g. Claude Haiku 4.5)
- Configuration is shared across the workspace

**Talk to ShortCut:** Enable audio-based actions via the browser microphone (uses browser's built-in Speech Recognition to convert speech to text; note: some browsers may send audio to their servers for processing).

**Connected Services (MCP Server):** Connect external MCP servers to give ShortCut access to other services, e.g. connect a MAM to let ShortCut search for assets and add them to the timeline, or connect an archive to pull in historical footage. Requires: Name, URL, Authentication Headers (optional), Tool Prefix (optional), Cutting Room Connector (optional), Integration Instructions (optional).

**Shortcut Actions (Custom Prompts):**

- Categorised under: Edit, Audio, Captions, Look/Color, Export
- Pre-loaded context always included: Project summary, full timeline, and source media
- Optional additional context: Spoken Content (captions, subtitles, transcripts), Audio Analysis (levels, waveform power, mix status), Graphics Templates (available templates and editable fields)
- Shortcuts can be created in admin (available to all users) or by individual users in the timeline shortcut panel (available to that user only)
- Capabilities include: Normalize audio, Create versions, Render to multiple output settings, translate captions, and more

#### Web Editor Blur

The Cutting Room web editor Inspector panel now includes a Blur function.

- Open the Inspector panel on a clip and select the Blur tab
- Two modes:
  - **Detect faces** — face detection modes: Interviews, Doc, GDPR protection, or Custom. Works well; may need to run analysis from specific frames if faces were not tracked initially
  - **Define a region** — manually define the area to blur
- Options allow styling of the blur effect
- Results of tracking are visible in the timeline

#### SSO Support

The web editor now supports SSO authentication for a more secure framework. This opens up the possibility of aligning the SSO user across Wolftech and the web editor for a more seamless experience.

#### Improved API Credentials

The web editor now allows API credentials to be easily provided to Wolftech. These can then be added to the Wolftech External Connections admin for authorisation.

> **Note:** This setup works but is not as secure as the Content Core authorisation framework, which manages individual user rights to specific pieces of media.

---

### AI Assistant and Content Authenticity

#### Reality Defender Forensic Analysis *(Coming in release 16.1)*

Integration with Reality Defender for AI-generated content detection. This feature is listed in v16.0 documentation but is noted as **coming in release 16.1**.

**Authorisation:**
- An API key will be provided with every new Wolftech tenant
- Existing customers can request an API key
- Provides access to a free starter tier for trial

**Configuration:** Admin > External Connections > Trust and Authenticity > Reality Defender tab (enter API key)

**Permissions:** Create an auth role with the permission "Can trigger Reality Defender jobs" and assign to relevant users.

**Usage:**
- Trigger analysis from the board action menu (three-dot menu on an asset > Forensic analysis)
- While processing, the asset displays a grey Reality Defender icon
- Preview shows "Processing" status
- Once complete, the asset is classified as one of: **Authentic**, **Fake**, **Suspicious**, or **Other (Errors)**
- The classification tag is visible in the asset preview and on the asset card
- The board filter includes a **Content Authenticity** section: All, Authentic, Suspicious, Manipulated, Unknown/Other

---

## Publishing

### Social Publishing of Web Editor Sequences

Wolftech now supports direct publication of Cutting Room web editor sequences to social platforms: **YouTube, Facebook, Instagram, X (Twitter), and TikTok**.

**Workflow configuration (Admin > Publishing):**

Define the publishing workflow per platform (subplatform). Specify:

- Editor type (Cutting Room)
- Frame rate for editing versions
- Project profile (can contain multiple aspect ratios)
- Rendition profile for this destination
- Publishing connector
- Template from a preconfigured setup defined for each destination

**Selecting the main sequence for publication:**

After review, drag the sequence from the board to the template field. This marks it as "Main" for that specific publishing output and adds a blue highlight. Alternatively, use the asset action menu > "Set as main sequence."

The system will prevent other users from deleting this asset from the main story board if it is marked as main in one of the outputs.

A user can always unset a sequence as main to choose a different one.

**Rendering and publication — two options:**

1. **Pre-render first:** Click the Render button in the web editor. This renders all versions available in the project. Do not use the publishing panel inside the editor (not linked to Wolftech). Then return to Wolftech, update publishing statuses, and click Publish when ready. The correct rendition is published with the template metadata.

2. **Publish without pre-rendering:** Click Publish on a sequence that has not been rendered. Wolftech kicks off the rendition of only the required version and automatically publishes it to the destination once complete. Note: this option does not display the same rendering progress UI. The template will display a rendition URL and a publishing URL at the end.

---

### Publishing Template Enhancements

#### Character Limits for Template Fields

Each publishing destination has different character limits. Admins can now define limits per field in the template editor:

1. Open the field in the template editor
2. Enable "Character limit" and set the count
3. Users see the character count and limit whilst typing
4. Exceeding the limit shows a red warning
5. Users can edit manually or use AI smart publishing functions to suggest alternatives
6. When compliant, the warning returns to grey

#### New Data Mapping Points

Two new story metadata mapping points have been added to the publishing workflow:

- **Location**
- **Publishing owner department**

#### Data Flow from Story — Token Cards

When story metadata is mapped to a publishing template field, a **token card** now appears in the template so users know the field is mapped and does not need manual editing. Users can hover over the token to preview the current value. The value sent for publication is the last value before the user hits publish. If a user wants to override, they can click the field and delete the token to enter a manual value.

#### Indicator of Which Fields Are Published to the Destination

An indicator now appears on the template admin section showing which fields are going to the publishing destination versus fields present only for operational purposes. Fields without the link indicator are not linked to the publishing destination. Note: indicators are only visible in the template admin, not to regular users.

---

### Default Start Time Flexibility

At the folder level, admins can define a default start time for a show or publication endpoint. Previously, this locked each publishing instance to that time. Now it is used as the **default** when creating a publishing instance, but users are free to adjust the timing. Helpful when a show starts at 07:00 but a specific publishing instance is due at 07:05.

---

### Admin Option to Default Open Publishing Details Tab (Instead of Editor)

The default behaviour when opening a publishing instance is to open the template editor. Admins can now change this so the Details tab opens first. Toggle: Admin > General Settings > Publishing Output > "Show details tab first in publishing point modal."

---

### Increased Publishing Note Character Limit to 250,000

The Publishing Note character limit has been increased to 250,000 characters.

---

### Avid Newsroom Management (iNEWS) Integration Improvements

#### Open Publishing Output in iNEWS to Navigate to MCCUX Rundown App

A new **Open in iNEWS** button appears in the publishing page. When working inside MCCUX, this directs to the iNEWS story inside the Rundown app — useful for adding graphics or working through the rundown.

> Note: This works on the standalone Wolftech version only; not inside MCCUX.

#### Form Improvements

- **Templates are now mapped to iNEWS Forms 1-1:** If a user updates the form used to create a Wolftech template, the Wolftech template is updated with the changes from the form (bidirectional)
- **Enlarge the story form area via drag:** The form area can be resized by dragging
- **iNEWS Title-Slug updates Wolftech publishing title:** Update the title slug in the form or in iNEWS and the Wolftech publishing title updates accordingly. Note: iNEWS is the master and requires an edit lock to update
- **Modified date handling improvements:** The modified date is only listed after someone does the first edit

#### Body Improvements

- **Reorder body segments via Drag and Drop:** Reorder body segments in the Wolftech script editor by using the segment sidebar and dragging to a new position
- **Script Pasting supports source colour understanding:** When copying and pasting from another publishing point in iNEWS or from another Wolftech instance, Wolftech understands the colour of the source text to determine whether to paste as CC, PI, or Script
- **Fix:** Hide sequence production cue anchor 0 from body
- **Fix:** Handling of changes from PI to CC to Text

#### Timings

- **Override Read, SOT and Total Timings with manual targets from Wolftech:** Use the timing bar at the bottom of the script editor. Click to edit timings (acquires the lock of the form). Adjust as required and click Save to commit

#### iNEWS in Plan View

- **iNEWS Total Time is now aggregated to track TRT in plan view:** Set timings at story level and see how the aggregated Total Run Time for the show calculates the total amount of content in that show
- **iNEWS Templates are now visible in Plan view cards**

#### Improvement to Handling of Lock Time Out

The lock timeout defined in iNEWS now applies in Wolftech. If a user inadvertently leaves the application without releasing the lock, the system will release it automatically. There are also improvements to the handling of edit locks when cancelling edits or closing a tab or leaving the app, to make sure saving is enforced.

#### Bug Fixes and Stability Improvements

General bug fixes and stability improvements to the iNEWS integration.

---

## User Experience, Navigation and Accessibility

### User Experience and Accessibility

#### Deep Links: URLs for All Content

As users navigate through the application, browser URLs now update to reflect the current content — stories, events, and publishing outputs. URLs can be copied and pasted for direct navigation and collaboration.

> Note: Works on the standalone Wolftech version. Does not update inside MCCUX.

#### Back Navigation (Plan to Content, or Publishing to Story)

Deep links enable browser back navigation. Users can now use the browser back button to return from a specific story to the plan view, or from a publishing instance back to the story.

#### Improved Browser Tab Titles

Browser tab labels now indicate exactly which story or plan view page you are in, including emojis if they are used in the title.

#### New Close Button Positioning

The "Close all open stories" button has been repositioned to avoid confusion with the right action bar.

#### Support for Right to Left Text Entry

Right to Left text entry is now supported across all text fields.

---

### Wall Monitor

#### Updated Wall Monitor Lifetime Token Duration to 90 Days

The wall monitor lifetime token duration has been extended to 90 days.

---

## Administration

### Authorization and Security

#### Force Log Out of Users Removed from Their SSO Group

Users who are removed from their SSO Access profile will now not only be unable to log in, but will also be immediately logged out of the application with a warning message that they no longer have access.

---

### API and Automation

#### Migrate Existing iNEWS Stories into Wolftech via API

It is now possible to automate the creation of publishing items in Wolftech relating to existing iNEWS stories. This is useful for migrating existing iNEWS story databases into Wolftech. Use the `create-inews-pub-point-by-unique-id` API call.

#### Increased Content Description Field Max Character Length to 512,000 in External APIs

The maximum description character length on the external API has been greatly increased to 512,000 characters.

#### Get List of Attachment Items for a Specific Editorial Segment via API

Organisations that need to orchestrate media workflows based on editorial segment attachments can now query these via:

```
/v2/query/background-information/list-items
```

#### Include Unique ID in Story Search API

The unique ID of a story is now easier to retrieve when performing story searches via the API.

---

### Performance

#### Multi-Tenancy Deployment Framework

The application has been architected to support deployment in a multi-tenancy environment. This sets the framework for a future continuous deployment pipeline that will greatly reduce the overhead of upgrading and testing new versions of Wolftech.

> Contact your Customer Success Manager for more information.

#### Performance Improvements Across Stories, Plan View and More

General performance improvements across stories, plan view, and additional areas of the application.

---

*End of Wolftech News 16.0 Release Notes*
