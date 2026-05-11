---
product: mediacentral-newsroom-management
product-area: system-administration
version: "2021.11"
release-date: 12/2021
doc-type: setup-configuration-guide
source: avid-official
source-file: MCNM-SCG-2021.11.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2022.3"
feature-tags: [scg, setup, configuration, console, users, database, groups, keyboards, forms, servers, community, mos, fts, kafka, ctms, uuid, html5-plugins, ldap, wires, data-receiver, subscription-licensing, systemd, enhanced-server-services, mediaindex, rxnet]
---

# MediaCentral | Newsroom Management — Setup and Configuration Guide

**Document revision:** Rev A  
**Date:** 07/12/2021  
**Applies to:** MCNM v2021.11  
**Total pages:** ~520  
**Source file:** MCNM-SCG-2021.11.pdf

> **KB note:** This entry is a ToC-based chapter index with full extracts of v2021.11-specific sections. Page numbers are from the document's own pagination. The full document has not been extracted into the KB — use page references to locate sections in the source PDF.

---

## Chapter Map

### Using This Guide (p.1)
- Symbols and Conventions
- If You Need Help
- With the Syntax of Commands
- Avid Training Services

### Chapter 1 — Introduction
- Overview of MediaCentral | Newsroom Management
- System Administrator Tasks

### Chapter 2 — The Newsroom Console
Access via PuTTY or direct terminal. Covers all console-level administration tasks.
- Configuring PuTTY
- Logging in as a System Operator
- Entering Superuser Mode
- Changing System Administration Passwords
- Exiting the Console Session(s)
- Using Server Commands
- Selecting One or More Servers
- Using Command History (including Logged Command History)

### Chapter 3 — Getting Started
System startup and shutdown procedures. Referenced by Installation Quick Guide for initial bring-up.
- Starting the System
- Shutting Down the System
- Starting a System in Single-Server Mode

### Chapter 4 — Users
User account management including LDAP/AD import. Referenced by Installation Quick Guide for Cloud UX connection.
- Viewing User Accounts / Modifying User Traits
- Creating New Users / Removing User Accounts
- The User Manager Account / The Database Manager Account
- Logging Out All Users
- Importing Users from an LDAP Server

### Chapter 5 — The Database: Directories, Queues, and Stories
Core database management: creating and managing the news database structure.
- Overview of the News Database
- Creating Directories / Queues / Stories
- Using Script Templates
- Renaming / Deleting Directories and Queues
- Recovering a Killed Story
- Viewing and Changing Database Traits
- Database Purge Intervals and Limits
- Identifying and Removing Locked Queues and Stories
- MOS Integration

### Chapter 6 — Groups
Group-based access control and database permissions.
- Overview of Groups
- Creating / Renaming / Deleting Groups
- Group Checker
- Adding Users, Groups, and Workstations as Members
- Combined Permissions and Timeouts
- Group Traits for the Database (Read / Write / Editorial / Notification / Restricted)
- Creating a Mail Alias

### Chapter 7 — Keyboards and Macros
- Types of Macros
- Creating Keyboards and Macros
- Keyboard Checker / Testing
- Assigning a Default Keyboard to a User Account

### Chapter 8 — Forms
Story form creation and customisation, including MediaCentral UX integration fields.
- Form Guidelines / Creating Forms / Customising Forms
- SYSTEM.COLORS / SYSTEM.LISTS
- Assigning a Form to a Queue or Story Form
- Form Field Types and Definitions / Standard Forms
- MediaCentral | UX Integration

### Chapter 9 — Character Generator Title Entry
CG template configuration for on-air graphics integration.
- Overview of CG Title Entry
- Title Entry Setup and Configuration
- CG Template Editor
- Title Entry Security

### Chapter 10 — System Configuration (p.211)
Core system configuration: `/site/config`, system profile, licensing, devices, intersystem messaging.

See **Key Section Extracts** below for full detail on:
- Licensing Components (p.211)
- Configuration File (p.212)
- System Profile (p.216)

Other sections in this chapter:
- Hosts File
- Devices — Viewing Information about Devices; List C Message Columns
- Intersystem Messaging — Sending / Receiving Intersystem Messages

### Chapter 11 — Printers
- Local Printing / Creating and Using Print Styles

### Chapter 12 — Wires
Data Receiver integration for wire service ingest. Four-phase configuration process.
- Adding a Wire — MediaCentral | Data Receiver (Phases 1–4)
- Wire Profile Options
- Wire Distribution (Distribution Story, Mailboxes, Purge Intervals, Internationalisation)
- Setting Up Wire Keyword Searches / Keyword Search Rule Sets / Keyword Checker Messages

### Chapter 13 — Servers (p.349)
All server types: action, distribution, parallel wire, keyword, seek, FTS, mail, monitor. Also covers RX/TX links and enhanced server services.

See **Key Section Extracts** below for full detail on:
- Enhanced Server Services (p.349)
- Rxnet Custom Configuration (p.353)

Other sections in this chapter:
- Overview / Adding a Server Program to the System
- Job Lists: Queues, Stories, and Commands
- Action Servers / Distribution Servers / Parallel Wire Servers / Keyword Servers
- System Servers (Seek, FTS, Mail)
- Monitor Servers
- Network Systems Using RX/TX Links

### Chapter 14 — MediaCentral | Newsroom Community
Multi-site iNEWS Community configuration (A/AB/ABC topology).
- Configuring NM for Community
- Viewing Remote Systems or Community Sessions
- Removing a System from Community / Connection Issues
- Large vs. Small Databases

### Chapter 15 — MOS Redirection
- Overview of MOS Redirection (MOS-MAP Story)
- Configuring NM for MOS Redirection

### Chapter 16 — Web Publishing
- Web Publishing via Txnet
- The HTML Export Template / Sample HTML Export Template
- Publishing News Stories to the Web

### Chapter 17 — News Projects
- Overview of Projects and Facets
- Setting up the News Database for Projects
- Creating Projects / Facets
- Creating a New Story inside a Project / Associating Stories

### Chapter 18 — File Linking
- Configuring File Linking

### Chapter 19 — Central Indexing / Media|Index (p.400)
Kafka-based centralised search indexing. Kafka Search became available with v2019.9.
- Overview of Indexed Searching
- Setting Up for Centralised Index Searching (Editing Site Files, Enabling Logging, Assigning Attributes, Activating mediaindex)
- Multi-Site Support

See **Key Section Extracts** below for:
- Kafka Search (p.404)

### Chapter 20 — CTMS Integration (p.405)
iNEWS CTC (Cloud UX integration service) configuration. Referenced by Installation Quick Guide.

See **Key Section Extracts** below for:
- Configuring the iNEWS CTC (p.405)
- Limiting Memory Allocation for iNEWS CTC
- Increasing Bioserver Cache
- Multi-site Support (p.415)

### Chapter 21 — UUID Functionality
Story-centric workflow UUID tracking. UUIDs introduced in NSML v4.0 (`<uuid>` and `<uuidorig>` tags in story head).

### Chapter 22 — HTML5 Plugins
- Configuring Newsroom Management for HTML5

---

## Appendix A — Command References

### A.1 Programs Invoked by MediaCentral | Newsroom Management
Internal daemon and service programs.

### A.2 Commands Used by Avid Personnel Only
Service-level commands; not for customer use.

### A.3 Linux Commands

### A.4 Console Server Commands
Full alphabetical reference. Key commands (with v2021.11 page references):

| Command | Notes |
|---|---|
| `broadcast` | |
| `configure` | Test: `configure /site/config ab a` (tests, does not apply) |
| `connect` | |
| `ctraits` | |
| `dbclean` | |
| `dbclose` | |
| `dbdev` / `dbsize` | |
| `dbdump` | |
| `dbfree` | |
| `dblines` | |
| `dboriginal` | |
| `dbpurge` (Superuser conditional) | |
| `dbrestore` | |
| `dbserver` | |
| `dbsort` | |
| `dbtraits` | |
| `dbvisit` | |
| `dictionary` | |
| `diskclear` (Superuser only) | |
| `diskcopy` | |
| `doc` | |
| `ed` | **WARNING:** use lowercase `w` to save; uppercase `W` appends (corrupts file) |
| `enter` | |
| `force` (Superuser only) | |
| `grpcheck` | |
| `gtraits` (Superuser only) | |
| `help` | |
| `hogs` | |
| `idiff` | |
| `list` / `list B` / `list C` / `list c` / `list d` / `list g` / `list p` / `list q` / `list s` / `list sq` / `list u` | |
| `logout` | |
| `makemontab` | |
| `makeshift` (Superuser only) | |
| `maketab` (Superuser only) | |
| `mapcheck` | |
| `msgclean` | |
| `offline` | |
| `online` | |
| `otod` | |
| `reconnect` | |
| `remove` | |
| `rename` (Superuser only) | |
| `reorder` | |
| `restart` | |
| `searchtape` | |
| `send` / `sendlong` | |
| `shutdown` | |
| `sitedump` (Superuser only) | |
| `siterestore` (Superuser only) | |
| `startup` | |
| `status` | `status license` or `status l` to check licence status |
| `stop` | |
| `su` | |
| `unbusy` | |
| `utraits` (Superuser only) | |
| `vaultctl` | |
| `version` | |
| `wholockedit` | |

### A.5 Job List Commands
`at`, `blockmode`, `bpoll`, `bscan`, `charset`, `distribution`, `dup`, `every`, `extension`, `fast`, `ignore`, `ignore-del`, `local`, `mailto`, `move`, `number`, `on`, `open`, `order`, `passive`, `poll`, `publish`, `put`, `quiet`, `remote`, `remove`, `replace`, `scan`, `send-del`, `sendform`, `sendpassword`, `source`, `validate`

### A.6 Dialog Commands
`capture`, `delay`, `diag`, `echo`, `escape`, `expect`, `heol`, `map`, `mapin`, `mapout`, `message`, `pass`, `pause`, `stop`, `timer`, `type`, `wait`

---

## Appendix B — System Files

| File | Description |
|---|---|
| `/etc/hosts` | Host name resolution for all servers in system |
| `/site/config` | System road map — lists devices, servers, resources |
| `/site/system` | System profile — parameters read at boot by each server |
| `SYSTEM.CLIENT.WINDOWS` | Windows workstation configuration |
| `SYSTEM.COLORS` | Form colour definitions |
| `SYSTEM.CONFIGURE.301-ACTION` | Action server configuration |
| `SYSTEM.GROUPS` | Group definitions |
| `SYSTEM.LISTS` | List definitions |
| `SYSTEM.MAP` | Monitor server map |
| `SYSTEM.MOS-MAP` | MOS redirection map |
| `SYSTEM.RESOURCE` | Resource definitions |
| `SYSTEM.WIRES.DISTRIBUTION` | Wire distribution story |
| `SYSTEM.WIRES.KEYWORDS` | Wire keyword search definitions |
| `SYSTEM.WIRES.KEYWORDS-AP` | AP wire keyword search |
| `SYSTEM.WIRES.KEYWORDS-AP2` | AP2 wire keyword search |

---

## Appendix C — Standard Dictionaries

| Dictionary file | Contents |
|---|---|
| `/site/dict/messages` | Utility messages (dbserver, disconnect, keyword checker, wire, mail, etc.) |
| `/site/dict/queues` | Queue name mappings (e.g. `Q_SCHEMAS_KAFKA`, `Q_MEDIA_INDEX`) |
| `/site/dict/words` | System words (e.g. `W_SEARCHTYPE`, `W_MCS_BASE_URL`) |
| `/site/dict/keymacros` | Keyboard macros |
| `/site/dict/shift` | Case-shifting |
| `/site/dict/mcs` | MCS — Monitor Server device types, special strings, error messages |
| `/site/dict/joblist` | Job list commands |
| `/site/dict/dmessages` | D messages |
| `/site/dict/smessages` | S messages |

---

## Key Section Extracts

### Chapter 10 — Licensing Components (p.211)

**Licence status check:**
```
status license
```
or equivalently:
```
status l
```
(lowercase L)

**Output fields (permanent iNEWS licence):**
```
Site Key. . . . . . . . : <site key>
Creation date . . . . . : <ISO timestamp>
License type. . . . . . : iNEWS
Maximum product version : not restricted
CPUs. . . . . . . . . . : <n>
COM sessions. . . . . . : <n>
Generic sessions. . . . : <n>
Community sessions. . . : allowed / not allowed
Expiration date . . . . : no date (permanent)
License status. . . . . : Valid
System brand date . . . : <ISO timestamp>
```

**Licence categories:**
- COM resources
- Community sessions
- Sessions — iNEWS Workstations, web access, web clients, web services/API, Wires, Instinct

**Subscription licensing (new from v2021.11):**
- `licensing_server=<cloudux.host>:<port>` in `/site/system` (commented example shows Cloud UX host and port 9900)
- To change licence allowances: contact Avid sales representative
- See also: Admin Guide Ch.2 for full Types of Licenses and Important Licensing Facts

**SYSTEM.CLIENT.WINDOWS:** if IP/MAC count exceeds licensed number, a diagnostic is produced but the system still configures. This differs from other licence limit violations which block configuration.

---

### Chapter 10 — Configuration File (p.212)

**Location:** `/site/config`

**Purpose:** System road map; lists devices, servers, and resources for all hosts. Only the master computer's copy is active.

> **WARNING:** Site files are NOT automatically mirrored between servers. Always select all servers in PuTTYCS before editing `/site/config`.

**Host section format:**
```
host <system-config> <computer>
  reslist <device-number>  ;<comment>
  servers <device-number>
```

**Sample device configuration lines:**
```
server  301   monitor
server  401   rxnet
server  501   txnet
server  601   action
server  801   ftsindex
server  901   ftsseek
server 1101   keyword
server 1201   mailserver
server 1401   seek
aiws   1601 – gnews
cinws  1801 – gnews
com    1901 – gnews
resource 2301 console
session 1000-1100
```

**Range syntax:** `reslist 100:109` is equivalent to 10 individual entries. `com 681:689 – gnews –` = 9 COM sessions.

**Editing:**
```
ed /site/config
```
> **WARNING:** Use lowercase `w` to save. Uppercase `W` appends to file and corrupts it.

**Testing (does not apply changes):**
```
configure /site/config ab a
```

**Applying changes:**
```
offline
configure
online
```
Restart affected devices after reconfiguration.

---

### Chapter 10 — System Profile (p.216)

**Location:** `/site/system`

**Purpose:** Read at boot by each server. Changes require a reboot to take effect.

**Editing:**
```
ed /site/system
```
> **WARNING:** Use lowercase `w` to save only. Uppercase `W` corrupts the file.

**Display current settings:**
```
status all
```

**Key parameters (v2021.11):**

| Parameter | Default | Notes |
|---|---|---|
| `auto_upgrade` | `yes` | Automatic upgrade on connect |
| `clockmax` | `12` | Clock format: `12` or `24` |
| `excludedvideo` | `none` | Options: `director` / `none` |
| `highwater` | `105000` | Blocks (~500 MB); triggers cleanup |
| `id` | (none) | System name — uppercase, max 8 chars; e.g. `NRCS-A` |
| `lastlogin` | `yes` | Display last login info |
| `load` | `0` | Connections |
| `localtimeout` | `00:00` | Session timeout (max 540 min) |
| `lowwater` | `100000` | Blocks (~400 MB); minimum free space |
| `master` | — | Name of master computer |
| `maxhits` | `500` | Search result limit (max 32765) |
| `min_passwd_length` | `5` | Minimum password length (characters) |
| `licensing_server` | — | `<cloudux.host>:<port>` — required for subscription licensing |

---

### Chapter 13 — Enhanced Server Services (p.349)

**Overview:** systemd manages all iNEWS services in v2021.11. Services auto-restart on crash or exit, except bioserver.

**Watchdog functionality is active on:** `workserver`, `inewsctc`, `mediaindex`, `ftsindex`

---

**Bioserver:**
- Service file: `/usr/lib/systemd/system/inews-bioserver.service`
- Alias: `iNEWS.service`
- **NOT auto-restartable** — must be manually connected and configured.
- Start/stop:
  ```
  systemctl start inews-bioserver.service
  systemctl stop inews-bioserver.service
  ```
  or equivalently:
  ```
  systemctl start inews.service
  service inews start
  ```
- **Stopping bioserver** kills dependent services (dbserver, workserver, NewsWeb.fcgi) via systemd dependency.
- **Starting bioserver** does NOT auto-start dependent services.

---

**Connect / Reconnect services** (6 services):

| Service file | Executable |
|---|---|
| `inews-dbserver.service` | `/exc/dbserver` |
| `inews-msgserver.service` | `/exc/service msg` |
| `inews-cmrserver.service` | `/exc/service cmr` |
| `inews-timerserver.service` | `/exc/service timer` |
| `inews-ntfyserver.service` | `/exc/service ntfy` |
| `inews-workserver.service` | `/exc/workserver` |

---

**Startup / boot services** (11 `@services` — all depend on `inews-bioserver.service`):

`action`, `distribution`, `ftsindex`, `ftsseek`, `inewsctc`, `keyword`, `mailserver`, `mediaindex`, `parallel`, `seek`, `txnet`

---

**Socket-activated services** (4):

| Socket file | Service file | Executable |
|---|---|---|
| `inews-ismessage.socket` | `inews-ismessage@.service` | `/exc/ismessage` |
| `inews-nxserver.socket` | `inews-nxserver@.service` | `/exc/nxserver` |
| `inews-rxnet.socket` | `inews-rxnet@.service` | `/exc/rxnet` |
| `inews-tftp.socket` | `inews-tftp.service` | `in.tftpd` |

> All except `inews-tftp` require `inews-bioserver.service`.

---

**Service status:**
```
systemctl status inews-action@201.service
```

**List all iNEWS units:**
```
systemctl list-units inews-*
```

**Start / stop / restart:** The `-f` flag has been removed. systemd kills forcibly after 90 seconds if a service does not stop cleanly.

---

**Rxnet Custom Configuration (p.353)**

Use when rxnet must bind to specific network interfaces (e.g. for multi-interface configurations).

**5-step procedure:**

1. Copy the default socket and service files:
   ```
   cp inews-rxnet.socket inews-rxnet-nsml2.socket
   cp inews-rxnet@.service inews-rxnet-nsml2@.service
   ```
   (in `/usr/lib/systemd/system/`)

2. If both sockets are to be used simultaneously, add `ReusePort=true` to the `[Socket]` section of both `.socket` files.

3. Specify IP addresses in each socket file using one of:
   - **Option A:** `ListenStream=<specific-IP>:<port>` entries
   - **Option B:** `BindToDevice=ens160` / `ens192` or `BindToAddress=<IP>`

4. Edit `inews-rxnet-nsml2@.service`:
   - Set `ExecStart=/exc/rxnet -e /site/env/rxnet-nsml2`
   - Set memory limits via `Slice=inews-servers.slice`

5. Reload and restart:
   ```
   systemctl daemon-reload
   ```
   Then stop and start both socket units.

---

### Chapter 19 — Kafka Search (p.404)

**Architecture:**
- The Search Agent writes to a Kafka queue (hosted on the same Cloud UX instance) instead of the local Search queue.
- Local Search and Remote Search (if NM is linked to Cloud UX) read from the Kafka queue.
- Other Cloud UX clients can search NM content via the same queue.

**Prerequisites:**
- `SYSTEM.SCHEMAS.KAFKA` queue must be created manually: navigate to `SYSTEM > SCHEMAS` and create a queue named `KAFKA`.

**Configuration:**

`/site/dict/words`:
```
W_SEARCHTYPE     /kafka
W_MCS_BASE_URL   /https://<CloudUX-name>:<port optional>
```

`/site/dict/queues`:
```
Q_SCHEMAS_KAFKA  /system.schemas.kafka
```

---

### Chapter 20 — CTMS Integration (p.405)

**Purpose:** The iNEWS CTC (Connectivity Toolkit Connector) connects NM to the MediaCentral platform.

**Recommendations:**
- Configure up to `(number of CPUs) - 2` CTC instances.
- Allocate 1 GB memory per CTC instance (see memory limiting below).
- Increase bioserver cache (see below).
- For AB/ABC systems: stop `inewsctc` on the offline server before taking it offline.

**v2017.2+ configuration note:** Remove `W_ACS_GATEWAY_HOST`, `W_ACS_GATEWAY_PORT`, and `W_ACS_GATEWAY_SERVICE_REALM` from `/site/dict/words`. Keep `W_ACS_GATEWAY_HOST /busserver` and `W_ACS_GATEWAY_PORT /9900` — these are still needed for media index. CTC service connections are now based on `/site/env` folder files.

---

**`/site/config` entry:**
```
server  601  inewsctc  -  -
```
Session block:
```
session  1000:1100  -  -
```
Start a CTC device:
```
start 601
```

---

**`/site/env/inewsctc.<device-id>` parameters:**

| Variable | Value |
|---|---|
| `ACS_GATEWAY_HOST` | Hostname or IP of Cloud UX server |
| `ACS_GATEWAY_PORT` | `9900` (default) |
| `SERVICE_REALM` | iNEWS system name — uppercase, without `-A`/`-B` server suffix (e.g. `NRCS`) |
| `SERVICE_TOKEN` | (leave empty unless instructed) |
| `USE_AUTHENTICATION_BY_IP` | `0` or `1` |

---

**Notification service (from iNEWS v6.1):**
- Modify `/etc/nginx/conf.d/default.conf` — add or edit the `location /notifications` block.
- Restart:
  ```
  service avid-notification restart
  ```

---

**Busserver (avid-acs-gateway) trust configuration:**
- Edit `/etc/sysconfig/avid-acs-gateway`.
- Add NM server IP to `ACS_SECURITY_FULL_TRUST_IPV4_MASK_LIST`:
  ```
  "127.0.0.1/25;<nm-server-ip>;"
  ```
  > **Do not remove** the `127.0.0.1/25` entry.
- Restart:
  ```
  service avid-acs-gateway restart
  ```

---

**Limiting CTC memory:**
1. Edit `/usr/lib/systemd/system/inews-inewsctc@.service`
2. Add to `[Service]`:
   ```
   MemoryLimit=1G
   ```
3. Reload:
   ```
   systemctl daemon-reload
   ```
4. Restart all CTC instances.

---

**Increasing bioserver cache:**
1. Edit `/site/exc/bio.conf`
2. Add:
   ```
   IOMAN_CBMAX=1000000
   ```
   (1 million blocks ≈ 4 GB)
3. **Reboot required** for this change to take effect.

---

**CTC log files:** `/var/log/iNEWS/` — e.g. `inewsctc.601.log`

---

**Multi-site support:**
- Add `ENABLE_REMOTE_AVAILABILITY=1` to the `inewsctc.<device-id>` environment file.
- NTP time synchronisation between all sites is critical for multi-site operation.

---

## Technical Support

Avid Online Support: [www.avid.com/onlineSupport](http://www.avid.com/onlineSupport) — available 24 hours a day, 7 days a week.
