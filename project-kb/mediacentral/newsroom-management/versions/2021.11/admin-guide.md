---
product: mediacentral-newsroom-management
product-area: system-administration
version: "2021.11"
release-date: 12/2021
doc-type: admin-guide
source: avid-official
source-file: MCNM-AG-2021-11.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2022.3"
feature-tags: [admin-guide, licensing, subscription-licensing, connect-services, database-security, database-management, snmp, backup, dbdump, sitedump, disconnects, troubleshooting, console-commands, system-files, dictionaries, environment-variables]
---

# MediaCentral | Newsroom Management — Administration Guide

**Document revision:** Rev A  
**Date:** 07/12/2021  
**Applies to:** MCNM v2021.11  
**Total pages:** ~258  
**Source file:** MCNM-AG-2021-11.pdf

> **KB note:** This entry is a ToC-based chapter index with a full extract of Chapter 2 (Licensing). This guide forms a two-book set with the Setup and Configuration Guide (see `scg.md`). Page numbers refer to the document's own pagination.

---

## Chapter Map

### Using This Guide (p.19)
- Symbols and Conventions (p.20)
- If You Need Help (p.20) — With the Syntax of Commands (p.21)
- Avid Training Services (p.21)

### Chapter 1 — Introduction (p.22)
- Overview of MediaCentral | Newsroom Management (p.23)
- System Administrator Tasks (p.24) — Basic Tasks, User Tasks, Database Tasks, Security Tasks, Customising the System, Storage Maintenance Tasks, Device Tasks, Reviewing Default Settings, Troubleshooting

### Chapter 2 — Licensing (p.27)
See **Key Section Extract** below for full content.
- Types of Licenses (p.28)
- Important Licensing Facts to Know (p.29)
- Checking License Status (p.29)

### Chapter 3 — Connect Services (p.32)
- Network Services (p.33) — Dialogs for Connect Services, Building a Dialog (Dialog Commands, Dialog Examples)
- Adding System Services (p.35) — Setting up the Service
- Console Connect Sessions (p.38)

### Chapter 4 — Database Security (p.40)
- Establishing Security Procedures (p.41)
- User Passwords (p.41) — Checking Password Status (p.41), Forcing Individual Users to Change Their Passwords (p.43)
- Tracking User Activity (p.44) — Tracking User Login Activity and Date Created (p.44), Listing Users Currently Logged in (p.45), Recording Logins (p.46)
- Using Group Security to Control System Access (p.47)

### Chapter 5 — Database Management (p.48)
- Monitoring Free Space (p.49) — Understanding Database Storage Units, Monitoring the Free List, Understanding How the System Copies Stories
- Tracking Database Space over Time (p.50) — Using the `hogs` Command, Using `dbserver` and `dbfree`
- Increasing Database Space for Immediate Use (p.52)
- Maintaining the Database (p.52) — Checking the Database for Errors (p.52), Cleaning the Database (p.54): Cleaning Offline (p.54), Cleaning Online with Dbvisit (p.56)

### Chapter 6 — Avid System Monitoring (p.59)
- Using SNMP Monitoring on the Server (p.60)
- Installing and Enabling the SNMP Agent (p.60)

### Chapter 7 — Backing Up the Newsroom Management System (p.61)
- Tape Operations (p.62) — Establishing Policies for Backup Procedures
- Backing up the News Database (p.63) — The `dbdump` Command (p.63), Backing up to Tape (p.63), Tapeless Database Backup (p.65), Backing up Individual Queues (p.69), Notes on Backing up the Database (p.71)
- Restoring Data to the News Database (p.71) — The `dbrestore` Command (p.71), Restoring a First-Level Directory (p.72)
- Listing Tape Contents and Backup Dates (p.72)
- Searching a Tape (p.74) — The `searchtape` Command (p.75), Searching by Stories / Words / Word and Date Range / Word and Day / Word and Month
- Restoring the Database (p.78)
- Disaster Recovery Planning (p.78) — Disaster Recovery Dbdump, Create Minimal dbdump
- Backing up Software (p.79)
- Backing up System Site Files (p.79) — The `sitedump` Command (p.79)

### Chapter 8 — Disconnects (p.81)
- Normal System Status (p.82)
- Disconnects (p.82) — Detecting a Disconnect (p.83), Types of Disconnect (p.84), Causes of Disconnects (p.85)
- Disconnect Recovery (p.85) — Overview (p.86), Procedures (p.86), Recovery Worksheet (p.89)

### Chapter 9 — Troubleshooting (p.91)
- iNEWS Workstation Problems (p.92) — A User Cannot Log In, A User Cannot Establish a Session, A User Cannot Access an Item (Group Permissions, Busy Stories)
- Wire Problems (p.95) — Data Receiver
- Locked Blocks (p.95)
- How to Check Process Status (`ps` command) (p.95)
- Power Failure (p.96)
- Network Failure (p.97) — `netstat -i` Command, Output Errors (TX-ERRs), Input Errors (RX-ERRs)
- Newsroom Management and FTS Connectivity (`ftsdebug` command) (p.98) — Checking Communication between NM and FTS Servers (p.99), Community (p.100)

---

## Appendix A — Command References (p.102)

### Programs Invoked by MediaCentral | Newsroom Management (p.102)
### Commands Used by Avid Personnel Only (p.103)
### Linux Commands (p.103)
### Console Server Commands (p.103)

Alphabetical reference (p.104–147):
`broadcast`, `configcheck`, `configure`, `connect`, `ctraits`, `dbclean`, `dbclose`, `dbdev`/`dbsize`, `dbdump`, `dbfree`, `dblines`, `dboriginal`, `dbpurge` (Superuser conditional), `dbrestore`, `dbserver`, `dbsort`, `dbtraits`, `dbvisit`, `dictionary`, `diskclear` (Superuser only), `diskcopy`, `doc`, `ed`, `enter`, `force` (Superuser only), `grpcheck`, `gtraits` (Superuser only), `help`, `hogs`, `idiff`, `list`/`list B`/`list C`/`list c`/`list d`/`list g`/`list p`/`list q`/`list s`/`list sq`/`list u`, `logout`, `makemontab`, `makeshift` (Superuser only), `maketab` (Superuser only), `mapcheck`, `msgclean`, `offline`, `online`, `otod`, `reconnect`, `remove`, `rename` (Superuser only), `reorder`, `restart`, `searchtape`, `send`, `sendlong`, `shutdown`, `sitedump` (Superuser only), `siterestore` (Superuser only), `startup`, `status`, `stop`, `su`, `unbusy`, `utraits` (Superuser only), `vaultctl`, `version`, `wholockedit`

### Job List Commands (p.148)
`at`, `blockmode`, `bpoll`, `bscan`, `charset`, `distribution`, `dup`, `every`, `extension`, `fast`, `ignore`, `ignore-del`, `local`, `mailto`, `move`, `number`, `on`, `open`, `order`, `passive`, `poll`, `publish`, `put`, `quiet`, `remote`, `remove`, `replace`, `scan`, `send-del`, `sendform`, `sendpassword`, `source`, `validate`

### Dialog Commands (p.154)
`capture`, `delay`, `diag`, `echo`, `escape`, `expect`, `heol`, `map`, `mapin`, `mapout`, `message`, `pass`, `pause`, `stop`, `timer`, `type`, `wait`

---

## Appendix B — System Files (p.160)

| File | Page |
|---|---|
| `/etc/hosts` | 161 |
| `/site/config` | 162 |
| `/site/system` | 168 |
| `SYSTEM.CLIENT.WINDOWS` | 169 |
| `SYSTEM.COLORS` | 169 |
| `SYSTEM.CONFIGURE.301-ACTION` | 170 |
| `SYSTEM.GROUPS` | 171 |
| `SYSTEM.LISTS` | 171 |
| `SYSTEM.MAP` | 172 |
| `SYSTEM.MOS-MAP` | 174 |
| `SYSTEM.RESOURCE` | 175 |
| `SYSTEM.WIRES.DISTRIBUTION` | 178 |
| `SYSTEM.WIRES.KEYWORDS` | 179 |
| `SYSTEM.WIRES.KEYWORDS-AP` | 180 |
| `SYSTEM.WIRES.KEYWORDS-AP2` | 181 |

---

## Appendix C — Standard Dictionaries (p.182)

- Using Dictionaries to Define Messages and Commands (p.182)
- Customising Dictionaries (p.183) — Changing Default Dictionary Values (p.183), Restoring Dictionary Defaults (p.185)
- `/site/dict/messages` — Utility Messages Dictionary (p.185): Dbserver, Disconnect, Category/Keyword Check, Keyboard Check, Grpcheck, Wire, Mail Server, Map Check, Validation (Action) Server, Seek Server, Last Login, Print Server, dbtraits, Save Error (Workstation), License Status Messages
- `/site/dict/queues` — Queues Dictionary (p.193)
- `/site/dict/words` — Words Dictionary (p.195)
- `/site/dict/keymacros` — Keyboard Macros Dictionary (p.199)
- `/site/dict/shift` — Case-shifting Dictionary (p.201)
- `/site/dict/mcs` — MCS Dictionary (p.203): Device Types for Monitor Servers and Drivers (p.203), Special Strings Recognised by Monitor Server (p.204), Error Messages for the Monitor Server (p.204), Status Reported in Device Status Field (p.206)
- `/site/dict/joblist` — Job List Command Dictionary (p.206)
- `/site/dict/dmessages` — D Messages Dictionary (p.208)
- `/site/dict/smessages` — S Messages Dictionary (p.208)

---

## Appendix D — Environment Variables (p.210)

- Registry Editor (p.210)
- Environment Variables (Registry Values) (p.211): `CCColor`, `DestinationOrder`, `DisableCommandLine`, `EnableLogging`, `MailLookup`, `MsgMailAlert`, `OldIEBrowserUsage`, `PIColor` (RGB Hexadecimal Colour Chart), `ShowTimingBar`, `SyncToServer`, `VT Compatibility`
- Environmental Variables for Servers (p.223): RXNET, TXNET, ACTION SERVER, MONITOR SERVER, `GBUFFERLIMIT`, `GSAVESTORYTOUSERDEST`, `GJAVASESSIONTIMEOUT`, `CTCDEBUG`

---

## Appendix E — Managing Traits at the Console (p.228)

- Viewing User Traits from the Console (p.228)
- Modifying User Traits from the Console (p.229) — Changing a User's Password (p.230), Listing Users Who Do Not Have Passwords (p.232)
- User Traits Console Command Summary (p.235)
- Managing Database Traits from the Console (p.237) — Getting Basic Information (p.237), Getting Detailed Information (p.238)
- Changing Database Traits from the Console (p.239) — Changing a Parent Directory Only (p.239)
- Database Traits Console Command Summary (p.239) — Sortfield (p.245), Purge Interval (p.247), Mailbox Attribute (p.247), The dis Column (p.248), FTSindex Attribute (p.249)
- Managing Group Traits at the Console (p.249) — Read Group (p.250), Write Group (p.250), Editorial Group (p.250), Notify Group (p.251), Restricting Access Using Read and Write Limitations (p.251), Removing Directory or Queue Restrictions (p.252)

---

## Appendix F — The Line Editor, `ed` (p.253)

- Starting `ed` (p.253)
- Specifying Lines to Edit (p.253)
- Searching the File (p.255) — Searching Tips (p.255)
- Editing Commands (p.255)
- Saving Changes (p.258)
- Quitting `ed` (p.258)

> **WARNING:** Always use lowercase `w` to save in `ed`. Uppercase `W` appends to the file and corrupts it. This applies to all site files including `/site/config` and `/site/system`.

---

## Key Section Extract — Chapter 2: Licensing (p.27)

### Types of Licenses (p.28)

There are two types of licences for Avid Newsroom Management:

**1. iNEWS Licences**

Reside on the Newsroom Management server; consumption maintained at the server. Licence options include:
- CPUs
- Generic Sessions (wires)
- COM resources
- Community sessions

> For iNEWS licensing, any connecting MOS Gateway requires activation using the Avid Licensing Control application. If replication or roStorySend workflow is required, COM resources on the NM server are also needed.

**2. MediaCentral Cloud UX Licences** (subscription licensing — new from v2021.11)

Consumption maintained at the MediaCentral server. The following licence items are supported from v2021.11:

| Name | Type | Description |
|---|---|---|
| Newsroom Management | module | Controls whether Newsroom Management is enabled |
| CPU Consumption | quota | Corresponds to CPU licences on the NM server |
| MOS Gateway | quota | Enables integration with MOS Gateway |
| MOS Gateway COM Connection | quota | Corresponds to a COM resource licence on the NM server |
| Wire Sessions | quota | Corresponds to newer generic sessions licences or old-style wire server licences |
| Control Room Client | quota | New type — pre-defined IP in config file; intended for control room use |
| Community | on-off | Corresponds to the Community option on the NM server |
| MediaCentral Platform | core | Required for user login; corresponds to sessions licences |

> **Note:** Beginning with v2021.11, Cloud UX subscription licensing is an optional alternative to iNEWS licensing. Subscription licences are available in MediaCentral v2021.11 and later only. For information on activating subscription licensing, see the "Using the License App" chapter of the *MediaCentral Cloud UX Installation and Configuration Guide*.

---

### Important Licensing Facts to Know (p.29)

The following apply to Newsroom Management licensing via the MediaCentral Cloud UX Subscription Licence:

- **Any install or upgrade from a version older than v2021.11 requires a new licence file** — the file format changed in v2021.11.

- **Some setup is required on the NM server.** The licence must be defined in `/site/system`:
  - New installation: a `licensing_server` entry is added to allow the user to enter the server IP.
  - Upgrade: `licensing_server=x.x.x.x` (where `x.x.x.x` is the IP address of the licensing server) is added to `/site/system`.

- **The MediaCentral Licensing server must be running** when setting up the NM server or when starting/restarting the NM server.

- **For initial setup, log in as the Administrator user** (not avstar). The Administrator account exists in both the Starter database and MediaCentral Cloud UX default installation; avstar is absent in MediaCentral Cloud UX.

- **If the MediaCentral Licensing server becomes unavailable** for an extended period, the NM server will report an invalid state. Restarting the NM server is required to reset the state. While the Licensing server is unavailable, users and services cannot establish new connections to the NM server.

- **Adding or changing subscription licences does not require a stop/restart of the NM server.**

- **With subscription licensing**, only one licence is consumed for iNEWS workstations or MediaCentral Rundown App sessions on the same machine under the same user connection. Different users consume one licence each.

- **User authentication for subscription licensing is through MediaCentral.** Use LDAP user accounts. Accounts should be imported into the NM server to define access permissions and user preferences. Accounts should be set as "external" to avoid password operations that do not apply.

---

### Checking License Status (p.29)

Licence status can and should be checked from either the NM server or the MediaCentral server.

> **Note:** These steps should be performed only by qualified Avid personnel.

**On the NM server:**
```
status l
```
(lowercase letter L)

**Permanent iNEWS licence — example output:**
```
WAVD-A# status l
A is ONLINE and has been CONFIGURED. ID is WAVD.
System is A. Master is A.
Disk status is OK. The database is OPEN.
Site Key. . . . . . . . . . . . : 000003
Creation date . . . . . . . . . : 2021-09-28T08:58:12.000Z
License type. . . . . . . . . . : iNEWS
Maximum product version . . . . : not restricted
CPUs. . . . . . . . . . . . . . : 3
COM sessions. . . . . . . . . . : 2
Generic sessions. . . . . . . . : 20
Community sessions. . . . . . . : allowed
Expiration date . . . . . . . . : no date (permanent)
License status. . . . . . . . . : Valid
System brand date . . . . . . . : 2021-09-28T13:23:27.000Z
```

**Subscription (Cloud UX) licence — example output:**
```
WAVDCUX-A# status l
A is ONLINE and has been CONFIGURED. ID is WAVDCUX.
System is A. Master is A.
Disk status is OK. The database is OPEN.
Site Key. . . . . . . . . . . . : 000010
Creation date . . . . . . . . . : 2021-09-28T08:58:12.000Z
License type. . . . . . . . . . : CloudUX
License status. . . . . . . . . : Valid
System brand date . . . . . . . : 2021-09-28T13:23:27.000Z
```

Note: with a CloudUX subscription licence, the output omits CPU count, COM sessions, and Generic sessions fields — these are managed at the MediaCentral licensing server, not reported locally.

**Via MediaCentral:**
1. Sign on with an Administrator account.
2. Select the Licence app and then click **Licensing** in the app's Sidebar.
3. The Results area shows licences added to MediaCentral Cloud UX. Use the filter field to search for specific licences (e.g. filter for "news" to view all Newsroom Management-related licences).

---

## Technical Support

Avid Online Support: [www.avid.com/onlineSupport](http://www.avid.com/onlineSupport) — available 24 hours a day, 7 days a week.
