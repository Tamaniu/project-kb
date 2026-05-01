---
product: mediacentral-newsroom-management
product-area: system-administration
version: "2020.4"
release-date: 15/04/2020
doc-type: setup-configuration-guide
source: avid-official
source-file: MCNM-SCG-2020-4.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2020.4.2"
feature-tags: [scg, setup, configuration, console, users, database, groups, keyboards, forms, servers, community, mos, fts, kafka, ctms, uuid, html5-plugins, ldap, printing, wires, data-receiver]
---

# MediaCentral | Newsroom Management — Setup and Configuration Guide

**Document revision:** Rev A  
**Date:** 15/04/2020  
**Applies to:** MCNM v2020.4  
**Total pages:** 705  
**Filename:** MSNM-SCG.pdf (referenced in Installation Quick Guide)

> **KB note:** This entry is a TOC-based chapter index. The full 705-page document has not been extracted into the KB. Use this index to locate relevant sections in the source PDF. Page numbers refer to the document's own pagination (not PDF page numbers, which offset by ~24 for front matter).

---

## Chapter Map

### Chapter 0 — Using This Guide (p.25)
- Symbols and Conventions — p.26
- If You Need Help — p.26
  - With the Syntax of Commands — p.27
- Avid Training Services — p.28

### Chapter 1 — Introduction (p.29)
- Overview of MediaCentral | Newsroom Management — p.30
- System Administrator Tasks — p.31

### Chapter 2 — The Newsroom Console (p.34)
Access via PuTTY or direct terminal. Covers all console-level administration tasks.
- Configuring PuTTY — p.35
- Logging in as a System Operator — p.51
- Entering Superuser Mode — p.51
- Changing System Administration Passwords — p.52
- Exiting the Console Session(s) — p.54
- Using Server Commands — p.54
- Selecting One or More Servers — p.55
- Using Command History — p.57
  - Logged Command History — p.58

### Chapter 3 — Getting Started (p.59)
System startup and shutdown procedures. Referenced by Installation Quick Guide for initial bring-up.
- Starting the System — p.60
- Shutting Down the System — p.63
- Starting a System in Single-Server Mode — p.65

### Chapter 4 — Users (p.67)
User account management including LDAP/AD import. Referenced by Installation Quick Guide for Cloud UX connection.
- Viewing User Accounts — p.68
- Modifying User Traits — p.70
  - User Traits — p.71
  - Changing a User's Password — p.76
  - Changing User Preferences — p.77
  - User Preferences — p.78
  - Setting up Simplified Users — p.85
  - Simplified User Settings — p.86
- Creating New Users — p.88
  - Adding a New User Account — p.88
  - Enabling a New User to Receive Mail — p.91
- Searching for User Information — p.91
- Removing User Accounts — p.94
- The User Manager Account — p.95
- The Database Manager Account — p.96
- Logging Out All Users — p.97
- Importing Users from an LDAP Server — p.98

### Chapter 5 — The Database: Directories, Queues, and Stories (p.104)
Core database management: creating and managing the news database structure.
- Overview of the News Database — p.105
- Restrictions to Directory or Queue Creation — p.106
- Creating a New Directory — p.107
- Creating a New Queue — p.108
  - Outgoing Mail Queue — p.110
  - Dead Letter Queue — p.111
  - Search Queues — p.111
  - Viewing Search Queue Information from the Console — p.115
- Creating a New Story — p.115
- Using Script Templates — p.116
- Renaming a Directory or Queue — p.117
- Deleting a Directory or Queue — p.119
- Recovering a Killed Story — p.119
- Viewing Database Traits — p.120
  - Viewing Information about Stories — p.122
  - Viewing Who Moved, Duplicated, or Killed a Story — p.124
  - Database Traits Summary — p.125
- Changing Database Traits — p.141
  - Turning Off the Ordered Trait of a Sorted Queue — p.143
- Database Purge Intervals and Limits — p.144
- Identifying Locked Queues and Stories — p.145
  - Types of Locks — p.149
  - Removing Locks from a Workstation — p.151
  - Unbusy Stories and Queues — p.152
- MOS Integration — p.154

### Chapter 6 — Groups (p.156)
Group-based access control and database permissions.
- Overview of Groups — p.157
- Viewing Group Information from the Console — p.157
- Viewing Group Information from a Workstation — p.158
- Creating a New Group — p.159
  - Step 1 – Choosing a Group Name — p.159
  - Step 2 – Create New Group at Console — p.160
  - Step 3 – Creating Group's Membership Story and Specifying Members — p.160
- Group Checker — p.161
  - Group Checker Error Messages — p.162
- Renaming a Group — p.165
  - Step 1 – Change Group Name in Database — p.165
  - Step 2 – Change Group Name in SYSTEM.GROUPS — p.165
- Deleting a Group — p.166
- Creating or Modifying Multiple Groups — p.166
- Adding Users as Members of a Group — p.167
- Adding Groups as Members of Other Groups — p.168
  - Avoiding Recursion — p.168
- Adding Workstations as Members of a Group — p.170
- Combined Permissions and Timeouts — p.172
- Group Access and Usage Restrictions — p.173
- Group Traits for the Database — p.174
  - Read Group — p.175
  - Write Group — p.176
  - Editorial Group — p.177
  - Notification Group — p.177
  - Restricted Group — p.178
  - Restricting Both Reading and Writing — p.178
  - Transferring Group Assignments — p.179
  - Hiding Queues and Directories — p.179
- Creating a Mail Alias — p.180
  - Mail Aliases for Other Machines or the Internet — p.181

### Chapter 7 — Keyboards and Macros (p.182)
- Types of Macros — p.183
- Creating a Keyboard — p.184
- Creating Macros — p.185
  - Using the State Keys in Macros — p.189
  - Repeating Macros — p.190
  - Notes of Caution for Creating Macros — p.191
- Keyboard Checker — p.192
- Testing the Keyboard — p.195
- Assigning a Default Keyboard to a User Account — p.195

### Chapter 8 — Forms (p.199)
Story form creation and customisation, including MediaCentral UX integration fields.
- Form Guidelines — p.200
- Creating Forms — p.200
- Customising Forms — p.203
  - Turning on Label Borders — p.208
  - SYSTEM.COLORS — p.209
  - SYSTEM.LISTS — p.209
- Assigning a Form to a Queue or Story Form — p.210
- Form Field Types and Definitions — p.210
- Standard Forms — p.223
- MediaCentral | UX Integration — p.226

### Chapter 9 — Character Generator Title Entry (p.228)
CG template configuration for on-air graphics integration.
- Overview of CG Title Entry — p.229
- Title Entry Setup and Configuration — p.231
- CG Template Editor — p.234
  - Edit Title Entry Template Window — p.235
  - Creating a New Template — p.238
  - Using Font Presets — p.244
- Title Entry Security — p.246
  - Access to CG Template Editor — p.246
  - Access to CG Title Entry — p.246

### Chapter 10 — System Configuration (p.248)
Core system configuration: `/site/config`, system profile, devices, intersystem messaging.
- Overview — p.249
  - Making a Backup File — p.250
  - Viewing System Files — p.250
- Licensing Components — p.252
- Configuration File — p.253
  - Editing the Configuration File — p.256
  - Testing the Site Configuration File After Alteration — p.256
  - Incorporating Configuration Changes — p.257
- Hosts File — p.258
- System Profile Files — p.259
  - Changing the System Profile — p.259
  - Listing Parameter Settings — p.260
  - System Profile Parameters — p.261
- Devices — p.267
  - Viewing Information about Devices — p.268
  - List C Message Columns — p.270
- Intersystem Messaging — p.270
  - Sending Intersystem Messages — p.271
  - Receiving Intersystem Messages — p.272

### Chapter 11 — Printers (p.276)
- Local Printing — p.277
  - Local Printing Dialog Box — p.278
- Creating and Using Print Styles — p.282
  - Local Print Style Options — p.283
  - Banner Format Options — p.290
  - Example Style Story — p.291

### Chapter 12 — Wires (p.293)
Data Receiver integration for wire service ingest. Four-phase configuration process.
- Adding a Wire – MediaCentral | Data Receiver — p.294
  - Phase 1 — p.294
  - Phase 2 — p.295
  - Phase 3 — p.296
  - Phase 4 — p.297
- Wire Profile Options — p.297
- Wire Distribution — p.298
  - The Wire Distribution Story — p.299
  - Avoiding Hidden Categories — p.304
  - Mailboxes — p.304
  - Purge Intervals — p.305
  - Internationalisation — p.305
- Setting Up Wire Keyword Searches — p.305
  - Additional Information about Search Jobs — p.308
  - Keyword Search Rule Sets — p.309
  - Keyword Checker Messages — p.313

### Chapter 13 — Servers (p.316)
All server types: action, distribution, parallel wire, keyword, seek, FTS, mail, monitor. Also covers RX/TX links and enhanced server services.
- Overview — p.317
- Adding a Server Program to the System — p.318
- Job Lists: Queues, Stories, and Commands — p.320
  - Types of Tasks for Servers — p.321
    - Adding a Scan Line in a Job List Story — p.322
    - Defining a Priority Queue — p.323
    - Defining an Every Entry Queue — p.323
    - A Server's Command Set — p.323
    - Processing Deleted Stories — p.325
    - Ordered Queues and the Order Command — p.326
  - Mailbox Tasks — p.326
    - Types of Mailboxes — p.327
    - Assigning a Mailbox to a Queue — p.329
  - Timed-Interval Tasks — p.330
    - Example of Timed Interval Tasks — p.331
- Action Servers — p.332
  - Adding an Action Server — p.333
  - Field Validation — p.335
    - Possible Uses of Validation — p.336
    - Using Field Validation — p.336
    - Validation Job List Commands — p.338
  - Rundown Mirroring — p.339
    - Polling Commands for Action Servers or Txnet Servers — p.340
    - Configuring Rundown Mirroring — p.340
    - Overlapping Job Lists — p.342
    - Polling Issues Related to Tx Links — p.343
- Distribution Servers — p.344
  - Distribution Codes — p.345
    - Wildcards and the Destination Queue — p.345
    - Move and Dup Commands — p.346
    - Action Servers or Tx Links — p.346
    - Instructions in the Wire Distribution Story — p.347
    - Matching and Case — p.348
    - Matching and Order — p.348
  - Adding a Distribution Server — p.349
- Parallel Wire Servers — p.352
  - Adding a Parallel Wire Server — p.353
- Keyword Servers — p.358
  - Adding a Keyword Server — p.360
- System Servers — p.365
  - Seek Servers — p.366
    - Adding a Seek Server — p.366
  - Fast Text Search Servers — p.367
    - Media | Index Integration — p.370
    - Installing FTS Components on the Windows-based Server — p.371
    - Setting up FTS Components on the Newsroom Management Servers (Linux) — p.372
    - Batch Indexing — p.376
    - Reindexing (Optional) — p.378
  - Mail Server — p.378
- Monitor Servers — p.379
  - Checklist: Monitor Server Configuration — p.380
    - Creating a Monitor Server for Each Show — p.381
    - Creating Composite and Event List Queues — p.384
    - Set up Queue and Story Forms — p.387
    - Assigning Forms to Queues — p.387
    - Creating an Entry in the SYSTEM.MAP Story — p.388
    - Updating the System Dictionaries — p.398
  - Creating Styles — p.400
  - Using the Monitor Server — p.405
- Network Systems Using RX/TX Links — p.407
  - Sending Story Forms — p.408
  - Setting Automatic Update — p.408
  - Update Trait – Queue Considerations — p.409
  - Changing Queue Order — p.410
  - Adding Rxnet/Txnet Servers — p.411
- Enhanced Server Services — p.419
  - Rxnet Custom Configuration — p.422

### Chapter 14 — MediaCentral | Newsroom Community (p.425)
Multi-site iNEWS Community configuration (A/AB/ABC topology).
- Configuring MediaCentral | Newsroom Management for Community — p.426
  - Syntax of the ctraits Command — p.428
- Viewing Remote Systems or Community Sessions — p.429
  - Restrictions — p.430
  - Local and Remote SYSTEM.MOS-MAP — p.430
- Removing a System from Community — p.430
- Connection Issues — p.431
  - System Messages in the iNEWS.log — p.431
- Large vs. Small Databases — p.433
  - Guidelines and Errors — p.434

### Chapter 15 — MOS Redirection (p.435)
- Overview of MOS Redirection — p.436
  - MOS-MAP Story — p.437
- Configuring MediaCentral | Newsroom Management for MOS Redirection — p.438

### Chapter 16 — Web Publishing (p.440)
Txnet-based HTML export to web.
- Web Publishing — p.441
  - Setting up Txnet to Send HTML — p.441
  - The HTML Export Template — p.443
  - Sample HTML Export Template — p.452
  - Publishing News Stories to the Web — p.456

### Chapter 17 — News Projects (p.458)
- Overview of Projects and Facets — p.459
- Setting up the News Database for Projects — p.460
- Creating Projects — p.461
  - Date Variables for Searching — p.464
- Creating Facets — p.465
- Creating a New Story inside a Project — p.467
- Associating Stories with Projects or Facets — p.467
- Creating a Shortcut Button — p.469

### Chapter 18 — File Linking (p.471)
- Configuring File Linking — p.471

### Chapter 19 — Central Indexing (p.473)
Kafka-based centralised search indexing. Kafka Search became available with v2019.9.
- Overview of Indexed Searching — p.474
- Setting Up for Centralised Index Searching — p.474
  - Editing Site Files — p.475
  - (Optional) Enabling Logging — p.478
  - Assigning the Media Indexing Attribute — p.478
  - Activating the mediaindex Program — p.479
- Multi-Site Support — p.480
- Kafka Search — p.481

### Chapter 20 — CTMS Integration (p.482)
iNEWS CTC (Cloud UX integration service) configuration. Referenced by Installation Quick Guide.
- Configuring the iNEWS CTC — p.482
  - Limiting Memory Allocation for iNEWS CTC — p.489
  - Increasing Bioserver Cache — p.490
- Multi-site Support — p.491
  - Time Synchronisation — p.493
  - Kafka Search Support for Multi-site Environments — p.494

### Chapter 21 — UUID Functionality (p.496)
Story-centric workflow UUID tracking. UUIDs introduced in NSML v4.0 (`<uuid>` and `<uuidorig>` tags in story head).

### Chapter 22 — HTML5 Plugins (p.499)
- Configuring Newsroom Management for HTML5 — p.499

---

## Appendix A — Command References (p.503)

### A.1 Programs Invoked by MediaCentral | Newsroom Management (p.503)
Internal daemon and service programs.

### A.2 Commands Used by Avid Personnel Only (p.504)
Service-level commands; not for customer use.

### A.3 Linux Commands (p.504)

### A.4 Console Server Commands (p.505)
Full reference for all console operator commands:

| Command | Page | Notes |
|---|---|---|
| `broadcast` | 505 | |
| `configure` | 505 | |
| `connect` | 506 | |
| `ctraits` | 507 | Community traits |
| `dbclean` | 507 | |
| `dbclose` | 508 | |
| `dbdev` / `dbsize` | 508 | |
| `dbdump` | 509 | |
| `dbfree` | 510 | |
| `dblines` | 511 | |
| `dboriginal` | 511 | |
| `dbpurge` (Superuser) | 512 | |
| `dbrestore` | 513 | |
| `dbserver` | 515 | |
| `dbsort` | 516 | |
| `dbtraits` | 516 | |
| `dbvisit` | 518 | |
| `dictionary` | 520 | |
| `diskclear` (Superuser) | 520 | |
| `diskcopy` | 521 | |
| `doc` | 521 | |
| `ed` | 522 | |
| `enter` | 522 | |
| `force` (Superuser) | 522 | |
| `grpcheck` | 523 | |
| `gtraits` (Superuser) | 523 | |
| `help` | 524 | |
| `hogs` | 524 | |
| `idiff` | 525 | |
| `list` | 525 | |
| `list B` | 528 | |
| `list C` | 529 | |
| `list c` | 530 | |
| `list d` | 531 | |
| `list g` | 532 | |
| `list p` | 532 | |
| `list q` | 534 | |
| `list s` | 535 | |
| `list sq` | 536 | |
| `list u` | 536 | |
| `logout` | 538 | |
| `makemontab` | 538 | |
| `makeshift` (Superuser) | 539 | |
| `maketab` (Superuser) | 540 | |
| `mapcheck` | 540 | |
| `msgclean` | 541 | |
| `offline` | 543 | |
| `online` | 544 | |
| `otod` | 544 | |
| `reconnect` | 545 | |
| `remove` | 546 | |
| `rename` (Superuser) | 546 | |
| `reorder` | 546 | |
| `restart` | 547 | |
| `searchtape` | 547 | |
| `send` | 548 | |
| `sendlong` | 548 | |
| `shutdown` | 548 | |
| `sitedump` (Superuser) | 549 | |
| `siterestore` (Superuser) | 549 | |
| `startup` | 550 | |
| `status` | 550 | |
| `stop` | 551 | |
| `su` | 551 | |
| `unbusy` | 552 | |
| `utraits` (Superuser) | 552 | |
| `version` | 553 | |
| `wholockedit` | 554 | |

### A.5 Job List Commands (p.555)

| Command | Page |
|---|---|
| `at` | 555 |
| `blockmode` | 555 |
| `bpoll` | 556 |
| `bscan` | 556 |
| `charset` | 556 |
| `distribution` | 556 |
| `dup` | 557 |
| `every` | 557 |
| `extension` | 557 |
| `fast` | 557 |
| `ignore` | 557 |
| `ignore-del` | 558 |
| `local` | 558 |
| `mailto` | 558 |
| `move` | 558 |
| `number` | 558 |
| `on` | 559 |
| `open` | 559 |
| `order` | 559 |
| `passive` | 560 |
| `poll` | 560 |
| `publish` | 560 |
| `put` | 560 |
| `quiet` | 561 |
| `remote` | 561 |
| `remove` | 561 |
| `replace` | 561 |
| `scan` | 561 |
| `send-del` | 562 |
| `sendform` | 562 |
| `sendpassword` | 562 |
| `source` | 562 |
| `validate` | 562 |

### A.6 Dialog Commands (p.563)

| Command | Page |
|---|---|
| `capture` | 563 |
| `delay` | 563 |
| `diag` | 564 |
| `echo` | 564 |
| `escape` | 564 |
| `expect` | 565 |
| `heol` | 565 |
| `map` | 566 |
| `mapin` | 566 |
| `mapout` | 566 |
| `message` | 566 |
| `pass` | 567 |
| `pause` | 567 |
| `stop` | 567 |
| `timer` | 568 |
| `type` | 568 |
| `wait` | 568 |

---

## Appendix B — System Files (p.570)

Key system configuration files and their documented structure:

| File | Page | Description |
|---|---|---|
| `/etc/hosts` | 571 | Network hostname resolution |
| `/site/config` | 572 | Primary system configuration file |
| `/site/system` | 580 | System-level parameters |
| `SYSTEM.CLIENT.WINDOWS` | 581 | Windows client configuration story |
| `SYSTEM.COLORS` | 582 | Colour definitions |
| `SYSTEM.CONFIGURE.301-ACTION` | 583 | Action server configuration template |
| `SYSTEM.GROUPS` | 584 | Group definitions |
| `SYSTEM.LISTS` | 584 | System list definitions |
| `SYSTEM.MAP` | 585 | Monitor server map |
| `SYSTEM.MOS-MAP` | 587 | MOS redirection map |
| `SYSTEM.RESOURCE` | 588 | Resource definitions |
| `SYSTEM.WIRES.DISTRIBUTION` | 591 | Wire distribution story |
| `SYSTEM.WIRES.KEYWORDS` | 592 | Wire keyword search rules |
| `SYSTEM.WIRES.KEYWORDS-AP` | 593 | AP wire keyword rules |
| `SYSTEM.WIRES.KEYWORDS-AP2` | 594 | AP2 wire keyword rules |

---

## Appendix C — Standard Dictionaries (p.595)

System message dictionaries located at `/site/dict/messages`.

- Using Dictionaries to Define Messages and Commands — p.595
- Customising Dictionaries — p.597
  - Changing Default Dictionary Values — p.597
  - Restoring Dictionary Defaults — p.599
- Utility Messages Dictionary (`/site/dict/messages`) — p.599
  - Dbserver Program Messages — p.601
  - Disconnect Program Messages — p.601
  - Category and Keyword Check Program Messages — p.601
  - Keyboard Check Program Messages — p.602
  - Keyboard Check Program Messages for Macros — p.603
  - Grpcheck Messages — p.604
  - Wire Program Messages — p.606
  - Mail Server Messages — p.606
  - Map Check Program Messages — p.606
  - Validation (Action) Server — p.607
  - Seek Server Messages — p.607
  - Last Login Messages — p.608
