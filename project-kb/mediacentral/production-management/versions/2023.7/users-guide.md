---
product: mediacentral-production-management
product-area: post-production
version: "2023.7"
release-date: 01/07/2023
doc-type: users-guide
source: pdf
source-file: MCPM_2023_7_0_Interplay_Access_User_Guide.pdf
confidentiality: public
date-added: 24/04/2026
status: current
feature-tags: [production-management, mcpm, interplay-access, assets, search, browse, delete, archive, version-history, file-assets]
---

# Interplay Access User's Guide — MediaCentral | Production Management v2023.7

> **Source:** Interplay® | Access User's Guide, Version 2023.7 (236 pages).  
> Interplay Access is the Production Management client application used by all end users for browsing, searching, and working with assets in the PM database. This document is a structured reference captured from the source PDF. For step-by-step procedures, consult the source PDF directly.

---

## Scope and Audience

This guide is for all MediaCentral Production Management end users who need to work with master clips, sequences, and other assets in an Avid workgroup. Some tasks (marked "Administrators Only") require administrative privileges.

Interplay Access is supported on both Windows and macOS.

> ⚠️ A user can run only **one** Interplay Access session and one Interplay Administrator session on a single machine. Terminal/server sessions are not supported.

---

## Document Coverage

| Chapter | Topic | Source Pages |
|---|---|---|
| 1 | Getting Started with Interplay Access | 14 |
| 2 | Viewing Assets in the Monitor | 28 |
| 3 | Adding and Organising Assets | 33 |
| 4 | Browsing the Database | 62 |
| 5 | Searching for Assets | 112 |
| 6 | Working with File Assets | 138 |
| 7 | Deleting Assets | 166 |
| 8 | Communicating Using the Messenger | 195 |
| 9 | Version History and Archiving | 200 |
| 10 | Screenshots and Printing | 209 |
| App. A | Keyboard Shortcuts | 212 |
| App. B | Interplay Access Menus | 213 |
| App. C | System Metadata Properties | 224 |
| App. D | Production Management Character Support | 236 |

---

## Chapter 1 — Getting Started

### Supported Platforms

- Windows
- macOS

### Starting and Configuring Access

- Start Interplay Access from the applications menu.
- Set the **Default Working Folder** to your primary working location in the database.
- Connect to a database by entering the PM Engine hostname and credentials.
- Users can change their own password via the Access UI.
- Remove databases from the tree structure when no longer needed.

### Configuration Options

| Option | Notes |
|---|---|
| Display Full Menus | Shows all available menu items |
| Show Hidden Dialogs | Re-enables dialogs the user previously dismissed |
| Font Settings | Change UI font size |
| Asset Types, Commands, and Applications | Configure which file types open with which applications |
| Pro Tools Location (macOS only) | Set path to Pro Tools installation |
| Working Path for a Folder | Set a default local path mapped to a PM database folder |

---

## Chapter 3 — Adding and Organising Assets

### Folder Management

- Create new folders (nested folder structure supported).
- Rename folders and edit descriptions.
- Change folder ownership (admins only).
- View and change folder options (admins only).
- **Unchecked-In Avid Assets folder**: system folder for assets that have been captured but not yet checked in to the database.

### Adding Assets to the Database

- **Import files or folders**: adds file assets to the PM database.
- **Resync media files with NEXIS workspaces** (admins only): use when media files are out of sync with the database.

### Moving and Organising

- Move assets into folders by drag-and-drop.
- Cut, copy, and paste assets between folders.
- Duplicate Avid assets.
- Organise assets using categories.
- Use shortcuts (public or private) for fast folder navigation; admins can make private shortcuts public.

### Transfer Operations

| Operation | Notes |
|---|---|
| Transfer to another workgroup | Sends Avid assets to a remote PM workgroup via Transfer Engine |
| Copy assets and media to another workgroup | Metadata + media copy via Copy Service |
| Move media to another workspace | Moves media files within NEXIS using Move Service |

---

## Chapter 4 — Browsing the Database

### Asset Icons and Indicators

| Icon Type | Notes |
|---|---|
| Avid assets | Master clips, sequences, subclips, effects, rendered effects, group clips |
| File assets | Non-Avid files (documents, graphics, etc.) |
| Media status indicators | Online, offline, partial, etc. (source PDF pp. 73–74) |

### AMA Clips

- AMA clips are browsable alongside native Avid assets.
- AMA source file location visible in Properties panel.
- Update media status using "Update Status from MI" (or re-checkin).

### Assets Pane Features

| Feature | Notes |
|---|---|
| Toolbar and default layout | Customisable column display |
| Resolution display | Select displayed resolution for multi-rez assets |
| Grouping and sorting | Sort and group by any metadata column |
| Undo Assets Pane changes | Revert to previous view state |
| View Presets | Save and apply custom column layouts for Content and Search tabs |
| Storyboard / Frame View | Thumbnail-based browsing |
| Extended View Mode | Expanded metadata display |
| Object Inspector | Detailed metadata pane with configurable property display |

### Object Inspector Tabs

| Tab | Contents |
|---|---|
| Default tabs | Standard metadata properties |
| Media Relatives | View all media associated with an asset |
| Restrictions | View usage restrictions on an asset |
| Frame Locators | View locators attached to asset frames |
| Location of media on NEXIS | Shows physical workspace and path |

### Asset Tracking

View status of assets across multiple workgroups (requires remote workgroup configuration in Interplay Administrator).

### Special Clip Types

| Clip Type | Notes |
|---|---|
| Group clips | Multi-cam synced clips; browsable in Access; some Search limitations apply |
| Multigroup clips | Group of clips with common source timecode; supports breaks in timecode |
| Stereoscopic 3D | Supported viewing and properties in Access |
| AMA clips | Browse; delete removes DB entry (source file handling depends on config) |

---

## Chapter 5 — Searching for Assets

### Search Approaches

| Type | Notes |
|---|---|
| Text-only search | Full-text search across all indexed fields |
| Simple Search | Single-attribute search with guided attribute/value UI |
| Extended Search | Multi-attribute search with operators (AND, OR, NOT) |
| File-based Workflow Search | Search based on file asset content or attributes |
| Saved Search | Save and re-run frequent searches |
| Cross-workgroup search | Search across remote PM workgroups |

### Optimising Search Performance

- Set a **Search Root** to limit search to a subfolder — significantly improves performance for large databases.
- Use specific attributes rather than text-only search wherever possible.
- Key simple search attributes: see source PDF pp. 115–118.

### Specialist Search Options

| Option | Notes |
|---|---|
| Search for rendered effects | Find assets with rendered effects |
| Search for highly linked assets | Identify assets referenced by many sequences |
| Find assets by unique identifier | Use MOB ID or other unique ID |
| Find clips from same source tape | Group clips by tape provenance |
| Find shared / unshared clips | Identify assets referenced in multiple contexts |
| Third-party search plug-ins | Configurable; supports remote search integration |

### Migrated Archive Search

Searching for archived items migrated from Workgroup 4 — see source PDF p. 130 and Best Practices Guide Appendix B.

---

## Chapter 6 — Working with File Assets

### Check-Out and Check-In Workflow

| Step | Notes |
|---|---|
| Get Latest | Download latest version of a file asset |
| Check Out | Locks asset for editing; downloads a local copy |
| Undo Checkout | Returns file without saving changes |
| Check In | Uploads changes; creates a new version in version history |
| Check In with Multiple Checkouts | Handles concurrent checkout scenarios |

### Bundled File Assets

Bundled file assets group related files (e.g. a project and its assets) as a single database entry. See source PDF pp. 151–153.

### Final Cut Pro Integration

- Check in Final Cut Pro sequences to Production Management.
- Export Avid sequences to Final Cut Pro.
- Share Final Cut Pro projects between FCP systems via PM.
- Working with QuickTime Reference Movies in a PM environment (source PDF pp. 160–165).

---

## Chapter 7 — Deleting Assets

### Protecting Assets from Deletion

| Protection Method | Notes |
|---|---|
| Assign User Roles | Restrict delete rights by role |
| Freeze Folders and Content | Prevents any modification or deletion |
| Set Reservations | Marks assets as reserved; prevents inadvertent deletion |

### Deletion Procedures

| Operation | Notes |
|---|---|
| Delete Avid assets and media | Preferred — removes metadata and media together |
| Delete metadata only | Removes database entry; media may remain (Orphan Clips) |
| Delete with multiple links | Handles assets referenced by multiple sequences |
| Delete orphan clips | Manages clips whose sequences have been deleted |
| Delete offline file locations | Removes stale file location references |
| Delete file assets | Removes non-Avid file database entries |
| Deleted Items folder | Staging area; must be emptied separately |

### Access Control and Delete Matrix

Full matrix of user roles vs. deletion permissions: source PDF pp. 193–194.

> ⚠️ **Consolidated subclips**: Safely deleting media when working with consolidated subclips requires careful sequencing to avoid orphaning shared media — see source PDF pp. 182–189.

---

## Chapter 8 — Messenger

Built-in messaging between Access users within the same workgroup:

- Read messages in the Message Browser
- Write new messages to individual users or groups
- Reply to and forward messages
- Delete messages

---

## Chapter 9 — Version History and Archiving

### Version History

Access maintains a version history for file assets:

| Feature | Notes |
|---|---|
| View version history | See all prior versions of a file asset |
| History and Label icons | Visual indicators of version status |
| View a file version | Open a specific prior version |
| Compare two versions | Diff view between two versions |
| Compare database file vs. local file | Check for divergence |
| Get Version | Retrieve a specific prior version |
| Rollback | Undo checked-in changes |
| Labels | Mark significant versions (milestones) |

### Archiving from Interplay Access

- Initiate archive operations for Avid assets directly from the Access UI.
- Uses the Archive Production Service (requires Archive Engine and licence).
- See the Production Services Setup Guide for archive configuration detail.

---

## Appendix A — Keyboard Shortcuts

Full keyboard shortcut reference for Interplay Access on Windows and macOS: source PDF pp. 212.

---

## Appendix B — Menu Reference

Full menu structure for Interplay Access (all platforms): Interplay Access Menu (macOS only), File, Edit, View, Operations, Tools, Preferences, Debug, Help menus — source PDF pp. 213–223.

---

## Appendix C — System Metadata Properties

Full list of all system-defined metadata properties visible and searchable in Interplay Access: source PDF pp. 224–235. (Note: a matching appendix is in the Admin Guide Appendix D.)

---

## Appendix D — Character Support

Valid and invalid characters for asset names, folder names, and other text fields in Production Management: source PDF p. 236.
