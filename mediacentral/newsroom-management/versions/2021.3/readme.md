---
product: mediacentral-newsroom-management
product-area: release-notes
version: "2021.3"
release-date: 13/05/2021
doc-type: release-notes
source: avid-official
source-file: MCNM_v2021.3_ReadMe.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2021.7"
feature-tags: [release-notes, compatibility, upgrade, downgrade, rhel-7.9, centos-7.9, vaultctl, configcheck, dblines, id-serial, systemd, inewsctc, kafka, multi-site, grpcheck, mos-gateway, gmail-smtp, known-issues]
---

# MediaCentral | Newsroom Management — ReadMe v2021.3

**Build:** v7.8  
**Document date:** 13 May 2021 (initial: 16 September 2017)  
**Copyright:** © 2021 Avid Technology, Inc.

---

## Compatibility

### Client / Server Compatibility Matrix

| Client Version | Compatible Server Versions |
|---|---|
| 2021.x | 2021.x only |
| 2020.x | 2020.x only |
| 2019.x | 2019.x only |
| Earlier | See prior ReadMe documents |

> **Note:** A 2021.x client will not connect to a 2020.x or earlier server, and vice versa.

### Newsroom Management Server — OS Qualification

| OS | Versions Qualified |
|---|---|
| Red Hat Enterprise Linux (RHEL) | 7.7, 7.9 |
| CentOS | 7.7, 7.9 |

> RHEL/CentOS 7.9 is **new** for v2021.3.

### iNEWS Workstation

- **Supported OS:** Windows 10 only.

### OS / Server Component Qualification Matrix

| Component | Build | OS |
|---|---|---|
| MCNM Server | v7.8 (2021.3.x) | RHEL 7.7 / 7.9; CentOS 7.5.7 / 7.9 |
| MOS Gateway | 2021.3 or later | Windows Server 2016 / 2019 |
| FTS / Data Receiver | — | Windows Server 2016 / 2019 |
| Command Server | — | Windows Server 2016 / 2019 |

> **Note on MOS Gateway:** Changed to "2021.3 or later" in this version (was "2020.9.x only" in v2020.9.x).

### Community

- v3.7 and v4.7: support up to 50 Community members.
- v6.0 and later: support up to 255 Community members.

### Virtualisation

Refer to the Enterprise Virtualisation Reference Guide for full VMware requirements. See `enterprise-virtualisation-ref.md` in this version folder.

> **Important:** Disks must have the `ID_SERIAL` property set before installing the NM Server on VMs with multiple virtual disks. See `enterprise-virtualisation-ref.md` for the check and enable procedure.

---

## Downgrade Notes

### Downgrading from v2021.3

Downgrading from v2021.3 requires restoring the old isam file from a backup taken before the upgrade. Contact Avid Customer Support for assistance.

### Downgrading from v2020.9.x or Earlier

Standard downgrade path. After downgrade, delete the systemd service file:

```bash
rm /etc/systemd/system/iNEWS.service
```

---

## Upgrade Notes

### Upgrading to v2021.3

In addition to the standard upgrade procedure, the following isam conversion must be performed:

**Before upgrading:**

```bash
dbdump Ci -f /tmp/isam_dump
```

**After upgrading:**

```bash
dbgen u
dbrestore i -f /tmp/isam_dump
```

> **Note:** After upgrading to v2021.3, create credentials for all existing txnet jobs using the `vaultctl` utility. See New Features below.

---

## New Features — v2021.3

### RHEL / CentOS 7.9 Qualified

MCNM v2021.3 is now qualified on Red Hat Enterprise Linux 7.9 and CentOS 7.9.

### Password Maximum Length

The maximum password length has been increased to **250 characters**.

### Virtual Disk ID_SERIAL Requirement (IN-6740)

Disks must have the `ID_SERIAL` property before NM installation on VMs with multiple virtual disks. This is **not** required for single-disk VMs or when `/rp5` and `/rp5backup` were created during OS setup.

Check with:
```bash
udevadm info --query=property --name=/dev/<disk>
```

Enable by setting `disk.EnableUUID=TRUE` in vCenter Configuration Parameters for the VM.

### dblines +X Flag — Fix Duplicate Qstamps (IN-6310)

A new `+X` flag for the `dblines` utility fixes duplicate qstamps within a queue.

```
dblines [bcfngsvwx +D -O -P +X] <pathname>
```

| Flag | Description |
|---|---|
| `+X` | Fix duplicate qstamps within the specified queue |

### Last Login Time Updated for MCCUX Users (IN-6546)

The last login time for MediaCentral Cloud UX users is now updated correctly.

### Installer Startup Dependency Fix (IN-6501)

A dependency issue in the installer startup sequence has been resolved.

### rxnet-socket Start/Stop in startup/shutdown (IN-6492)

The `startup` and `shutdown` scripts now start and stop the `rxnet` socket service correctly.

### vaultctl — Secure txnet Credential Storage

The `vaultctl` utility securely stores credentials for txnet jobs, replacing plain-text credential storage.

**Commands:**

| Command | Description |
|---|---|
| `vaultctl list` | List all stored credentials |
| `vaultctl add` | Add new credentials |
| `vaultctl delete` | Delete stored credentials |
| `vaultctl sync` | Synchronise credentials |

**Options:**

| Option | Description |
|---|---|
| `-p` | Specify password |
| `-v` | Verbose output |
| `-?` | Display help |

> **After upgrading to v2021.3:** Run `vaultctl add` to create credentials for all existing txnet jobs.

### configcheck — Verify txnet Credentials

The `configcheck` utility verifies txnet credentials for all existing txnet jobs.

**Options:**

| Option | Description |
|---|---|
| `-A` | Check all configuration files |
| `-t` | Check txnet configuration files only |
| `-?` | Display help |

### Workstation — Show Timing Clock Size (v2021.3)

Users can now adjust the size of the Show Timing Clock:

1. Select **Format > Clock Size**. The Clock Size dialogue opens.
2. Select the desired size.
3. Click **OK**.

### Workstation — Queue Path Toolbar (v2021.3)

A new toolbar displays the name of the active queue next to the Show Timing Clock.

- **To enable:** Select **View > Queue Path**.
- Font type and size are customisable via **Format > Font**.

> **Note:** Toolbar settings are saved to the workstation's registry, not the user's profile.

---

## New Features — v2020.9

### iNEWS CTC Queue Access (IN-6094)

Improved queue access through CTC with newer interface and libraries, fixing frequent unexpected disconnections from CloudUX.

### Dbvisit UUID Skip

The Dbvisit utility can now skip UUID generation during specific operations.

### Dbgen UUID

`dbgen u` — generates UUIDs for database entries. Required as part of the v2021.3 upgrade procedure.

### GJAVASESSIONTIMEOUT

New environment variable. Controls the timeout for Java sessions.

### Story Save Failure — Backup to User Destination (GSAVESTORYTOUSERDEST)

New environment variable. When saving a story fails, the story is saved to the user's destination queue as a backup.

---

## New Features — v2020.4

### MOS Gateway Integration with FTP/FTPS

MOS Gateway v2020.9 replaces the legacy iNEWSCOM with FTP/FTPS for MOS object communication.

### grpcheck — scp Replaces rcp

The `grpcheck` utility now uses `scp` (SSH) instead of `rcp` for remote copy operations. SSH key setup is required.

**SSH key setup procedure:**

```bash
ssh-keygen -t rsa -b 4096 -N '' -f <path_to_home_directory>/.ssh/id_rsa
ssh-copy-id so@<remote_machine_ipaddress>
```

**Home directories:**

| User | Home Directory |
|---|---|
| `so` | `/home/so` |
| `root` | `/root` |

**Configuration keys in `/site/config`:**

| Key | Description |
|---|---|
| `CONFIG_SYSTEM_A_REMOTE_SO_PASSWORD` | Password for remote `so` on server A |
| `CONFIG_SYSTEM_B_REMOTE_SO_PASSWORD` | Password for remote `so` on server B |
| `CONFIG_SYSTEM_C_REMOTE_SO_PASSWORD` | Password for remote `so` on server C |

### HTTPS Support for MediaCentral (v2020.4)

HTTPS support for MediaCentral Search HTTP authentication (requires MC Cloud UX v2019.9.5 or later).

- NM v2019.6 or earlier: must disable authentication on the Cloud UX side.
- NM v2019.9 with Search HTTP Interface: must also disable authentication on Cloud UX.

---

## New Features — v2019.9

### Multi-Site Support

Multi-site configuration allows a single MCNM Community to serve multiple physical sites.

### Kafka Search

Kafka-based search is now the recommended search integration method (replacing MediaIndex).

- Configure `W_SEARCHTYPE /kafka` in `/site/dict/words`.
- Requires `W_MCS_BASE_URL` pointing to Cloud UX.

### Enhanced Server Services (systemd)

Full systemd service management introduced in v2019.9.

**Connect/reconnect services (auto-started at system start):**

| Service | Description |
|---|---|
| `inews-dbserver` | Database server |
| `inews-msgserver` | Message server |
| `inews-cmrserver` | Community server |
| `inews-timerserver` | Timer server |
| `inews-ntfyserver` | Notification server |
| `inews-workserver` | Work server |

**Startup/boot services (launched by installer):**

| Service | Description |
|---|---|
| `inews-action@` | Action server |
| `inews-distribution@` | Distribution server |
| `inews-ftsindex@` | FTS index server |
| `inews-ftsseek@` | FTS seek server |
| `inews-inewsctc@` | iNEWS CTC |
| `inews-keyword@` | Keyword server |
| `inews-mailserver@` | Mail server |
| `inews-mediaindex@` | Media index server |
| `inews-parallel@` | Parallel server |
| `inews-seek@` | Seek server |
| `inews-txnet@` | TX Net server |

**Socket-activated services:**

| Service | Description |
|---|---|
| `inews-ismessage` | IS message socket |
| `inews-nxserver` | NX server socket |
| `inews-rxnet` | RX Net socket |
| `inews-tftp` | TFTP socket |

> **Note (v2021.3 addition):** `startup` and `shutdown` scripts now correctly start/stop the `inews-rxnet` socket service.

---

## New Features — v2019.6

### CTCDEBUG Environment Variable

New environment variable for the `inewsctc` service.

| Value | Description |
|---|---|
| `trace` | Trace level (default) |
| `debug` | Debug level |
| `info` | Info level |
| `warning` | Warning level |
| `error` | Error level only |

### Local Print Options

Two new print options configurable in `/site/dict/words` (Windows-specific):

| Option | Values | Default | Description |
|---|---|---|---|
| `WinAutoPageBreak` | Yes \| No | Yes | Enforces page breaks so stories do not span pages in optional story preview |
| `WinColorScript` | Yes \| No | No | Enables colour printing in script printouts (presenter, machine control, CC text in green, red, blue respectively) |

### AIWS Session for NRCS Tool

The AIWS session has been re-instantiated to allow the NRCS tool (Avid Interplay Instinct) to connect. Requires entries in `/site/config`:

Host section:
```
reslist    711:712    ; Instinct AIWS (NRCS tool) sessions
```

Instinct (AIWS) Sessions section:
```
aiws 711 -  gnews  -  ; Instinct (NRCS tool) session
aiws 712 -  gnews  -  ; Instinct (NRCS tool) session
```

After configuration, `workdebug stat` shows AII sessions, and `list` shows AIWS sessions (e.g. `A711 avstar A 04-02 12:27:09 [12417]`).

### Group Story Numbering in PAGE Column

The numbering scheme for grouped stories in the PAGE column is now configurable in `/site/dict/words` (requires `maketab -i` for changes to take effect):

| Word | Values | Default | Description |
|---|---|---|---|
| `W_GSEPARATOR` | `/–` \| `/.` | `/–` | Separator character (hyphen or period) |
| `W_GENUMERATOR` | `/A` \| `/#` \| `/##` \| `/###` | `/A` | Enumerator format |

Enumerator values:
- `/A` — alphabetic (e.g. C01-A, C01-B, C01-C)
- `/#` — numeric, no zero padding
- `/##` — numeric, one padding zero
- `/###` — numeric, two padding zeros

Example: `W_GSEPARATOR /.` and `W_GENUMERATOR /##` produces C01.01, C01.02, C01.03, etc.

### HTML5 Plugin Parameter Support

Newsroom Management now supports parameters in URLs for HTML5 plugins (previously only base URL was supported).

### Calendar — First Day of Week

The calendar in Newsroom Management now honours the First Day of the Week Calendar setting from the Windows-based workstation.

---

## New Features — v2019.2

### Maestro HTML5 MOS Plugin Support

Support for the Maestro HTML5 MOS plugin. See HTML5 Plugins in the Setup Configuration Guide.

---

## New Features — v2018.11

### Wire Profile Option "Join" for Data Receiver

New wire profile option "called join" for Data Receiver updates. See "Adding a Wire – Data Receiver" in the Setup Configuration Guide.

### /site/config Session for Data Receiver Wireserver

The Data Receiver wireserver is now supported as a `/site/config` session. See Appendix B of the Setup Configuration Guide.

### Custom Fields in Media Central Search

Custom fields from iNEWS are now supported in Media Central Search indexing.

### iNEWS CTC — Richer Notifications

iNEWS CTC now supports new notifications for stories, queues, and folders with a richer set of information. For changes on all servers (A/B/C), an iNEWS CTC must be configured on each server.

> **Note:** Monitor changes do not result in notifications.

---

## New Features — v2018.6

### HTTPS File Linking

HTTPS support for file linking. See Chapter 18 "File Linking" in the Setup Configuration Guide.

### Expanded Centralized Indexed Searches

Centralized indexed searches from MediaCentral | Search via MediaCentral | Cloud UX integration. See Chapter 19 "Central Indexing" in the Setup Configuration Guide.

### Network Recovery on Connection Loss

When an iNEWS Workstation loses network connection, a Server Connection dialogue appears offering Reconnect or Exit. After reconnection, a prompt offers restoration of backed-up stories.

### WSAPI on Windows Server 2016

WSAPI is now qualified on Windows Server 2016 with Tomcat 7.0 and Java 8.

### Production Cue UID in NSML

New UID attribute assigned to each production cue in NSML, enabling automation to track machine control changes.

### Licensing Agent (IN-3448)

New Licensing Agent handles all types of sessions and licence counting, providing a single, combined licensing façade.

### USE_AUTHENTICATION_BY_IP Environment Variable

New environment variable for `inewsctc`:

| Value | Description |
|---|---|
| `0` | Do not authenticate by IP |
| `1` | Authenticate with MCUX or MCCUX server |

---

## New Features — v2017.2

### RXDATAPORTRANGE — Restrict rxnet Port Range

System variable to control the passive port range used by the rxnet FTP server:

```
RXDATAPORTRANGE=<low port>..<high port>
```

Example: `RXDATAPORTRANGE=10000..10010`

If not set or format is invalid, a random port is opened. The minimum number of ports must be at least the number of sessions configured in `/site/config` for the rxnet server.

### Central Index Enhancements

Enhancements include custom fields from NSML, grouping, and improved labels (IN-3092).

### uuidtraits Utility — Checkpoint Online Flag

```
RH73-A# uuidtraits
```

| Flag | Description |
|---|---|
| (no flag) | Search value (path, stamp) by UUID |
| `-s UUID` | Search story (file id) by UUID |
| `-c` | Check integrity and show issues |
| `-f` | Fix found integrity issues |
| `-o` | Use checkpoint partition while checking or fixing |
| `-p` | Print entire UUID table |
| (online) | Uuidtraits utility online mode |

---

## New Features — v2017.2 — iNEWS CTC Multi-MediaCentral Support (IN-3094)

From v2017.2, `inewsctc` can connect to multiple MediaCentral systems simultaneously.

**Migration from single-system configuration:**

1. Remove the following from `/site/dict/words` (leave `W_ACS_GATEWAY_HOST` and `W_ACS_GATEWAY_PORT` — these are still used for mediaindex):

   ```
   ; iNEWS Service settings
   W_ACS_GATEWAY_HOST    /10.105.250.245
   W_ACS_GATEWAY_PORT    /9900
   W_SERVICE_REALM       /INEWS6X
   W_SERVICE_TOKEN       ;/security_token
   ```

2. For each MediaCentral connection, create an individual file in `/site/env/`:

   ```
   /site/env/inewsctc.<device-id>
   ```

   Each file contains:
   ```
   ACS_GATEWAY_HOST=<IP or hostname>
   ACS_GATEWAY_PORT=9900
   SERVICE_REALM=<system-name>
   SERVICE_TOKEN=
   ```

3. Verify that multiple `inewsctc` resources are configured in `/site/config`:

   ```
   reslist 1122    ; inewsctc
   reslist 1124    ; inewsctc
   ...
   otc  1122  -  inewsctc  -
   otc  1123  -  inewsctc  -
   otc  1124  -  inewsctc  -
   ```

4. Logs are per-service and can be found in `/var/log/iNEWS/`.

---

## New Features — v2017.1

### iNEWS with Azure

Avid iNEWS in Azure supports hybrid deployments (Azure VMs plus on-premise hardware). See the *iNEWS NRCS with Microsoft Azure Integration Guide*.

### FTPS Support

FTP over SSL is now supported. See the *iNEWS FTP/FTPS Server Protocol Specification*.

### Media | Index Searching

Custom iNEWS metadata can be searched via Media Index using a central index. A re-index is required to search on custom fields. See the Media | Index Integration chapter in the *Avid iNEWS Setup Configuration Guide*.

---

## Changes Between Versions

### Changes between 2020.9.1 and 2021.3

| Issue | Fix |
|---|---|
| IN-6857 | MOS attachment attributes modified incorrectly for roStorySend stories |
| IN-6744 | iNEWS Webservices search timeout (15 min) — fixed with WSAPI 1.6.2 |
| IN-6436 | Connect command showing dependency failure messages after reboot |
| IN-4099 | Unlocked stories indexed even when queue was locked |
| IN-6359 | QueueForm mis-configuration causing Queue Panel to show no fields |
| IN-6363 | FTPS connection issues with IE browser |
| IN-6393 | Danish characters in queue names not navigable via rxnet (since v2020.4) |
| IN-6395 | inews-dbserver.service start timeout/terminate/restart failure (since v2019.9.1) |
| IN-6465 | FTP client retrieval from Update queue failing |
| IN-6544 | Failed messages appearing after RXNET timeout |
| IN-6572 | Failed messages after manually stopping RXNET server |
| IN-6578 | FTPS connection retaining mosreplication user session |
| IN-6641 | Create New Story in Rundown App not inserting in correct position in inverted/sorted queue |
| IN-6649 | Media index search showing slug instead of story title when not set as quick index field |
| IN-6697 | Sync agent stuck in loop on media-index queue |
| IN-6707 | mos-duration information not pulled into events queue for total time update |
| IN-6741 | Stories could not be locked in a community server |
| IN-6354 | rxnet sessions not removed from indexes (T/U) on broken connection |
| IN-6431 | MAP story CG "style NO" causing error in MCS dictionary entry |
| IN-6786 | Monitor crash when floating/unfloating story with large Maestro (MOS item) attachment |
| IN-6784 | Monitor crash when system configured with three servers in SYSTEM.MAP |

### Changes between 2020.9 and 2020.9.1

| Issue | Fix |
|---|---|
| IN-6576 | Save Story and Unlock Story not moving story to destination queue via action server when editing from CloudUX Rundown Application |

### Changes between 2020.4 and 2020.9

| Issue | Fix |
|---|---|
| IN-6094 | iNEWS CTC frequent unexpected disconnections from CloudUX |
| IN-6140 | JAVA client not releasing NM sessions when browser closed without logout |
| IN-6272 | iNEWS client terminating on URL-pasted text in Rundown app |
| IN-5319 | Channel change for clips not always applied |
| IN-6090 | GET queue returning 404 when no SYSTEM.MAP queue exists |
| IN-6148, IN-6179 | Graphic channel disappeared from production cue on mosItemReplace |
| IN-6179 | Form field not cleared after deleting channel from MOS device playlist |
| IN-6248 | Hourglass delays (2–4 seconds) in refresh rundowns with large number of stories |
| IN-6243 | Monitor not updating Channel column in mosItemReplace workflow |
| IN-6242 | Hourglass delay after selecting many stories in Queue panel Context menu |
| IN-6186 | Hourglass delay after selecting many stories in Queue panel Story menu |
| IN-6222 | mapcheck from console causing segmentation fault |
| IN-6220 | mediaindex service terminating after restart despite no configuration errors |
| IN-6203 | MAM communication "Error connecting to [iNEWS SYSTEM], connection was aborted" in WSAPI logs |
| IN-6271 | Cyrillic and Georgian fonts not displaying correctly in Command |
| IN-6275 | Client hang on startup reading stories in SYSTEM.HTML-PLUGINS |
| IN-6319 | list s-v not displaying remote client IP/system name for RXNET connections |
| IN-6331 | Saving/loading session changing Clock size for all users on same iNEWS workstation PC |
| IN-6804, IN-6396 | Monitor exiting unexpectedly when mosItemReplace processes deferred |
| IN-6785 | Brief periods of login inability after upgrading to v2020.4 |
| IN-6784 | Monitor crash with three servers in SYSTEM.MAP |
| IN-6279 | Unfloating first story in playlist causing monitor crash |

### Changes between 2019.9.2 and 2020.4

Key fixes: IN-5346/IN-5402, IN-5497, IN-5558, IN-5799, IN-5892, IN-5893, IN-5451, IN-5657, IN-5670, IN-5732, IN-5839, IN-5851, IN-5450, IN-5852. Notable: RXDATAPORTRANGE and TXDCKEEPALIVE env variables documented for firewall/keepalive configuration (also in SCG Appendix D).

### Changes between 2019.9.1 and 2019.9.2

| Issue | Fix |
|---|---|
| IN-5768 | MOS item removed when saving story with CloudUX Rundown app |
| IN-5769, MA-5024 | "Failed to save story and release edit lock" message (requires MC Cloud UX 2019.6 or later) |
| IN-5771 | inewsctc crash with "modify-dev" field |

### Changes between 2019.9 and 2019.9.1

| Issue | Fix |
|---|---|
| IN-5727 | Production cue disappears on insertion point at grommet + N/P/CC save |
| IN-5652 | Assigned channel cleared after monitor load |
| IN-5607 | "Renumber all" not giving unique page numbers with BREAK stories |
| IN-5566 | Story group indicator disappearing on queue form change |

### Changes between 2019.6 and 2019.9

Key fixes: IN-5454, IN-5202, IN-169213, IN-4800, IN-5110, IN-4927, IN-5403, IN-5346/5402.

> **Note:** Users should add `MOS_SIZE_LIMIT=16333` env variable to flag large MOS items with monitor error when monitor is turned on.

### Changes between 2019.2 and 2019.6

Key fixes: IN-4973, IN-4837, IN-4199, IN-4618, IN-4806, IN-4900, IN-5103, IN-4998, IN-5082, IN-5016, IN-4801, IN-4701, IN-4479.

### Changes between 2018.11 and 2019.2

Key fixes: IN-4611, IN-4759, IN-4524, IN-4621, IN-4739, IN-4800.

### Changes between 2018.9.2 and 2018.11

| Issue | Fix |
|---|---|
| IN-4248, IN-4204 | Channel assignments in stories with production cues not updating from newsroom client |
| IN-4222 | Error core file generated on login attempt with username longer than 20 characters |

### Changes between 2018.9.1 and 2018.9.2

| Issue | Fix |
|---|---|
| IN-4611 | sendpassword job list command via txnet not working correctly |
| IN-4575 | TXNET sending production cues with UUIDs when earlier NSML format specified in job list |

### Changes between 2018.9 and 2018.9.1

| Issue | Fix |
|---|---|
| IN-4326 | Story creation error when production cue added via CG Titling tool |

### Changes between 2018.6.1 and 2018.9

| Issue | Fix |
|---|---|
| IN-4198 | Stories with blank create-date or modify-date not indexing |
| IN-4280 | Email via action server (mailto) not sending story body data |
| IN-4153 | Configure program usage updated with removal of obsolete items |
| — | W_MCS_BASE_URL default changed from `/https://mediacentralsearch/` to `/https://mediacentralsearch/search` |

**Documentation Errata for v2018.9:** In the v2018.6 SCG (p.469), `W_MCS_BASE_URL /https://mediacentralsearch/` should now read `W_MCS_BASE_URL /https://mediacentralsearch/search`.

### Changes between 2018.6 and 2018.6.1

| Issue | Fix |
|---|---|
| IN-4191 | Folders visible after CloudUX configuration but queue/story open returning "server could not be located" error |

### Changes between 2017.2 and 2018.6

Key fixes: IN-2434, IN-2179, IN-3823, IN-3600, IN-2686, IN-3502, IN-3504, IN-3533, IN-3624, IN-3834, IN-1082, IN-3664, IN-3820, IN-3503.

### Changes between 2017.1 and 2017.2

- Product renamed from Avid iNEWS to MediaCentral | Newsroom Management. Servers renamed to Newsroom Management Servers; client computers remain iNEWS Workstations.
- Key fixes: IN-1828, IN-176005, IN-3387, IN-1578, IN-2260, IN-3386, IN-3270.

### Changes between 6.1 and 2017.1

Key fixes: IN-2762, IN-2530, IN-2837, IN-1579, IN-2677, IN-2574, IN-2920.

- `W_BINDBUS` in `/site/dict/words` no longer used to define busserver for mediaindex. Now uses `W_ACS_GATEWAY_HOST` and `W_ACS_GATEWAY_PORT`.
- `dbrestore` utility: new `-u` flag to restore story even if UUID already exists (assigns new UUID if same UUID found in system).

**dbrestore flags reference:**

| Flag | Description |
|---|---|
| `s` or `d` | Restore stories only OR directories and stories |
| `p` | Restore project files |
| `i` | Restore ISAM files |
| `v` | Verbose — list directory names |
| `vv` | As `v` but list each slug also |
| `x` | Ask before restoring each ISAM file |
| `f` | Print facts about blocks and times |
| `u` | Restore story more than once, even if UUID present |
| `t` | Print table of contents, do not restore |

Must be superuser to list ISAM files.

---

## Microsoft Windows Critical Updates

Avid recommends installing all critical Microsoft OS updates promptly. In the unlikely event a critical update causes an incompatibility, uninstall the update and contact Avid Customer Support. Avid will investigate and provide a software update or workaround.

---

## Documentation Errata

### Setup Configuration Guide

In past versions, the Forms chapter incorrectly identified the product as "MediaCentral | Cloud UX". The correct name is "MediaCentral | UX". This section is now titled "MediaCentral | UX Integration".

---

## Known Issues and Limitations

### Data Receiver and Wire Services

Stopping a wire instance using the Avid Data Receiver Administration application does not remove the entry from the `list s` output (T/U Index file).

**Workaround:** Reserve wire instances by configuring generic sessions in `/site/config` to the IP address(es) of the Data Receiver.

### iNEWS SendMail

With new security measures enabled in the Gmail relay server, mail from iNEWS through sendmail will be rejected.

**Workaround:** Configure the Gmail SMTP relay server for sendmail. See the Configure Gmail SMTP Relay Server for Sendmail section below.

### MAP Story Limit

The limit of devices for a rundown in the MAP story is **20**. Having more than 20 devices configured for a rundown in the MAP story will result in a client crash when attempting to open the Monitor dialogue.

### CloudUX Integration

If a Newsroom Management username is used on two or more different computers to log into CloudUX, it will only show as a single session in MediaCentral Newsroom Management.

### Edit Locks

- Edit lock information may contain a session identifier rather than a username if the username is not known (e.g. for locks acquired via inewsctc API).
- Lock information for a user who signs off without releasing edit locks may be incorrect.

> **Note:** The new user does not have the edit lock; it will expire at its pre-defined timeout.

### RedHat / CentOS 75

Autostop of misconfigured services does not work in a RedHat/CentOS 75 environment.

### Netstation

Fields carried over from an Avid Netstation template are skipped from indexing (IN-3269).

### Chinese IME Mode

Avid recommends not using keystrokes in Chinese IME mode.

### Localhost Server

Use IP address `127.0.0.1` instead of the alias `localhost` for telnet connections to the localhost server.

### Console

iNEWS console is no longer supported by default. For serial console setup on RHEL 7, see:
https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/sec-GRUB_2_over_a_Serial_Console.html

### Diskcopy Reports CRITICAL Error

If diskcopy reports `"diskcopy: 17:09:59 [CRITICAL] first block mirror error: on block 66958 (5:Input/output error)"`, check the end of the log. The message `"Successful – Disk is mirrored"` confirms the process completed successfully; the CRITICAL message indicates only that there were empty blocks that could not be copied.

### Divehi Support

With the new richedit control, the last line of text will sometimes align to the left for a right-aligned story.

### Chinese Localization Issue

The DaYi input method cannot be used to create new queues or folders.

### German Localization Issue

Using Ctrl+Shift+Right Arrow incorrectly marks a word if that word begins with a German Umlaut (ä, Ä, ö, Ö, etc.), treating the diacritic symbol as a separator.

### Local Database

To download print styles and story forms for offline use, the user must have Read Access to the iNEWS System directories where styles and forms are located. This is by design.

### Windows 7 and Windows 8 with UAC Enabled

With User Access Control (UAC) enabled, users cannot drag-and-drop text from an outside application (e.g. Microsoft Word) into iNEWS.

**Workaround:** Use Ctrl+C and Ctrl+V to copy and paste text between applications.

### External Users (LDAP)

External users authenticated via Windows Active Directory (available from v4.x) are not compatible with:

- iNEWS Workstations earlier than v4.0.0
- FTP clients: teleprompters, NewsCutter's NRCS Tool
- COM clients: NewsCutter's NRCS Tool; Instinct; MOS Gateway's roStorySend and mosObj
- Web Client
- Web Access
- Interplay Central client earlier than v1.3.0

### Plug-ins

Some plug-ins (e.g. AMG Journalist) will not paint correctly in iNEWS.

**Workaround (ActiveXRedraw):**

1. In the iNEWS executable directory, create a text file named `ActiveXRedraw.txt`:
   - 64-bit workstations: `C:\Program Files (x86)\Avid\iNEWS\`
   - 32-bit workstations: `C:\Program Files\Avid\iNEWS\`
2. Open the registry editor (`regedit`).
3. Select **Edit > Find > AMG Journalist** to locate the CLSID:
   - 64-bit: `Computer\HKEY_CLASSES_ROOT\Wow6432Node\CLSID\`
   - 32-bit: `Computer\HKEY_CLASSES_ROOT\CLSID\`
4. Copy the CLSID (folder name) into `ActiveXRedraw.txt`.
5. Save the file.
6. Reload iNEWS.

### UNC Paths

UNC paths with spaces no longer work correctly in the iNEWS client software since v3.4.2. This will be addressed in a future client-only fix.

Additional UNC path notes:
- Intelliscribe printing: configure at 300 DPI with "Enhanced Features" disabled. Higher DPI or enhanced features cause long delays.
- Vertigo Xmedia plug-in and Aurora Assignment List plug-in (v7+) installed simultaneously: the Xmedia splash screen can make the Xmedia tree inaccessible. **Workaround:** Rename or remove `skinCrafter3_vs2008.dll` from the Assignment List installation directory.

### iNEWS Web Services API

The iNEWS Web Service API cannot be undeployed via the Tomcat management interface when Tomcat is running on Windows.

**Workaround (Windows manual undeploy):**

1. Stop the Tomcat service.
2. Delete the `inewswebservice` file and folder from the Tomcat webapps directory.
3. Place the new `.war` file into the webapps directory.
4. Start the Tomcat service.

> **Note:** Undeployment through the management interface works correctly when Tomcat is running on Linux.

### Multiple Monitors

If the iNEWS application is maximised when closed, it will open maximised on the primary monitor when reopened, regardless of which monitor it was on when closed. Moving from a dual-monitor to a single-monitor machine may cause the application window to open on a screen that no longer exists.

**Workaround:** Right-click iNEWS in the Windows taskbar, select **Move**, press an arrow key to lock the window to the mouse, then move the mouse onto the screen.

### Macros and Keystrokes

PCs upgraded from Internet Explorer 6 to IE7 or IE8 may experience issues with macros that perform several functions in rapid succession. This is most apparent with macros that trigger the Local Print or User Preferences dialogue.

**Workarounds:**
- Use the `K_WINDOW /window` token: place the dialogue name after the K_WINDOW token immediately following the keystroke that opens it (e.g. `{ctrl p}{window Local Printing}` instead of just `{ctrl p}`).
- Add `{pause <#>}` statements of one or two seconds at the point where activity ceases in the macro.

---

## Configure Gmail SMTP Relay Server for Sendmail

> **WARNING:** Before modifying any sendmail configuration files, save the iNEWS mailer lines to prevent losing the iNEWS mailing configuration.

### Step 1 — Save iNEWS Mailer Lines

Add the following to `/etc/mail/sendmail.mc` (save these existing lines before any modifications):

```
define(`ALIAS_FILE', `/site/.mail/aliases')dnl
dnl
MAILER_DEFINITIONS
################################# iNEWS Server Mailer
R$+<@LOCAL>       $@$1                    delete LOCAL
R$+<@$-.LOCAL>    $@$1<@$2>               delete .LOCAL
R$+<@$=w>         $@$1                    delete local hostname
R<@>              $n                      errors to mailer-daemon
CPnews
Mnews,    P=/exc/newsmail, F=DFhlmnsu, S=news, R=news, A=newsmail -j
$j $f $u
Snews
################################# iNEWS Server Mailer
dnl
dnl
LOCAL_NET_CONFIG
################################# iNEWS Server Mailer
R$*<@local.news.>  $#news@$wS:$1    user@local.news
################################# iNEWS Server Mailer
dnl
```

### Step 2 — Install Dependencies

```bash
# yum install cyrus-sasl-plain
```

### Step 3 — Generate Gmail Application Password

1. Log in to Gmail and go to **Manage Google Account**.
2. Navigate to **Security**.
3. Enable **2-Step Verification** if not already enabled.
4. Click **App passwords**.
5. Select app: **Mail**.
6. Select device: **Other**.
7. Enter name: `iNEWS`.
8. Click **GENERATE**.
9. Copy the password from the pop-up window.

### Step 4 — Update sendmail Configuration

Add the following lines to `/etc/mail/sendmail.mc` **before** the `MAILER(smtp)dnl` line:

```
define(`SMART_HOST',`[smtp.gmail.com]')dnl
define(`RELAY_MAILER_ARGS', `TCP $h 587')dnl
define(`ESMTP_MAILER_ARGS', `TCP $h 587')dnl
define(`confCACERT_PATH', `/etc/pki/tls/certs')dnl
define(`confCACERT', `/etc/pki/tls/certs/ca-bundle.crt')dnl
define(`confAUTH_OPTIONS',`A p')dnl
define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
TRUST_AUTH_MECH(`EXTERNAL DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
FEATURE(`authinfo',`hash -o /etc/mail/authinfo.db')dnl
```

### Step 5 — Modify the AuthInfo File

Add the following line to `/etc/mail/authinfo`:

```
AuthInfo: "U:root" "I:EMAIL" "P:PASSWORD"
```

Replace `EMAIL` and `PASSWORD` with your actual Gmail address and the application password generated in Step 3.

### Step 6 — Regenerate Configuration and Restart

```bash
# cd /etc/mail
# make
# systemctl restart sendmail.service
```

---

## Technical Support

- **Web:** www.avid.com/support
- **North America:** 800-949-AVID (800-949-2843)
- **International:** 978-275-2480
- **Online Support (24/7):** www.support.avid.com

Supplemental documentation for this release, if available, is provided on the Knowledge Base via Avid Online Support.
