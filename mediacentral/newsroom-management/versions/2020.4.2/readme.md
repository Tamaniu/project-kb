---
product: mediacentral-newsroom-management
product-area: release-notes
version: "2020.4.2"
release-date: 19/12/2021
doc-type: readme
source: avid-official
source-file: MCNM_v2020.4.2_ReadMe.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2020.9"
feature-tags: [compatibility, upgrade, downgrade, new-features, known-issues, inewsctc, ctms, kafka, mediaindex, ftps, rxnet, txnet, ldap, mos, systemd, community, uuid, dbrestore]
---

# MediaCentral | Newsroom Management v2020.4.2 ReadMe

**Build:** v7.6.2  
**Date:** 20 December 2021  
**Applies to:** MCNM v2020.4.2  
**Copyright:** © 2021 Avid Technology, Inc.

---

## Document Revision History

| Date | Version |
|---|---|
| 19/12/2021 | Rev B — v2020.4.2 |
| 12/09/2021 | v2020.4.2 |
| 29/07/2021 | Additional fixes for v2020.4.1 |
| 14/06/2021 | v2020.4.1 (minor modification) |
| 10/05/2020 | v2020.4.1 |
| 19/04/2020 | v2020.4 |
| 28/01/2020 | v2019.9.2 |
| 12/12/2019 | v2019.9.1 |
| 16/09/2019 | v2019.9 |
| 19/06/2019 | v2019.6 |
| 27/02/2019 | v2019.2 |
| 14/12/2018 | v2018.11 |
| 10/12/2018 | v2018.9.2 |
| 06/10/2018 | v2018.9.1 |
| 22/09/2018 | v2018.9 |
| 27/08/2018 | v2018.6.1 |
| 26/07/2018 | v2018.6 |
| 19/12/2017 | v2017.2 |
| 16/09/2017 | Initial (v2017.1) |

---

## Compatibility

### Operating System

- **RHEL:** 7.7, 7.5
- **CentOS:** 7.7, 7.5
- **Build:** 7.6.x
- **iNEWS Workstation:** Windows 10 only

### Client / Server Compatibility Matrix

v2020.x client software only works with v2020.x servers. Cross-version mixing (e.g. 2020.x client with 2019.x server) is not supported.

### OS / Server Qualification Matrix

| MCNM Version | Build | RHEL | CentOS | Windows Server | Windows |
|---|---|---|---|---|---|
| 2020.4.x | 7.6 | 7.4 / 7.5 / 7.7 | 7.3 / 7.5 / 7.7 | 2008 R2 / 2016 / 2019 | Windows 10 Pro 64-bit |

### Component Compatibility

| Component | Version Required | Notes |
|---|---|---|
| FTS | 4.0.3+ | Windows Server 2016 / 2019 |
| Media\|Index | 5.2+ | — |
| Command | 1.0.1+ | v3.2+ required for VID-DUR feature |
| MOS Gateway | 4.x+ | — |
| Console MUX | 2.0 | — |
| Data Receiver | 1.8+ | — |
| Instinct | 1.1+ / 1.6+ | — |
| NewsCutter | 6.1.5+ | — |

### LDAP

- Tested with LDAP TLS.
- External users are not compatible with older clients (see Known Issues — External Users).

---

## Upgrade and Downgrade Notes

### Downgrade from v2020.4.x

- To v2020.4.x / v2019.9.x / v2019.6 / v2019.2 / v2018.11 / v2018.9 / v2018.6 / v2017.x: Standard downgrade. Delete `/etc/systemd/system/iNEWS.service` before reverting.
- To v6.1: Manual uninstall required.

### Upgrade to v2020.4.x

- Standard upgrade.
- **HTTPS Kafka / MediaCentral searches:** Requires Cloud UX v2019.9.5 or later.
- **Kafka mediaindex:** After upgrading to v2020.4, remove the old Kafka story and restart `mediaindex`.

### Upgrade from v2019.x

- Standard upgrade.

### Upgrade from v2018.x (database conversion required)

Upgrading from v2017.2 to v2018.6 requires a 12-step database conversion procedure using `dbdump`, `finit`, `dbgen`, and `dbrestore` commands. See the source document for the full procedure.

### Upgrade from v2017.2

```
./install upgrade
```

### v2017.1 Logging Messages

Move rsyslog configuration from `/etc/rsyslog.conf` to `/etc/rsyslog.d/00-iNEWS.conf`.

---

## New Features

### For MediaCentral | Newsroom Management v2020.4

#### HTTPS Support for MediaCentral Kafka / Search

MediaCentral Kafka and MediaCentral Search now support HTTPS connections. Requires Cloud UX v2019.9.5 or later on the Cloud UX side.

#### Community Reconnect Implementation

iNEWS workstations are now notified when a community disconnection occurs, improving reconnection behaviour in Community (A/B/C) deployments.

#### VID-DUR Field

Extracts video duration from the story body into Composite and Device-Event queues. Requires MediaCentral Command v3.2 or later.

#### New Environment Variables

| Variable | Description |
|---|---|
| `EnableLogging` | Enables logging for the specified service |
| `RESTARTDURINGPOLLINGPERIOD` | Controls restart behaviour during polling periods |
| `TXDCKEEPALIVE` | `<0\|20+>` — keep-alive interval for TXNET data channel; 0 = disabled; minimum 20 seconds; recommended ≥ half firewall timeout; 3 missed packets triggers channel close |
| `RXDATAPORTRANGE` | `<low port>..<high port>` (e.g. `10000..10010`) — restricts passive mode data port range for rxnet; minimum number of ports must be ≥ number of sessions in /site/config |
| `W_INDEX_STORYUUID` | Enables story UUID indexing |

#### MOS Enhancements

- **MOS size checking:** Monitor now checks MOS attachment size before sending to Command.
- **MOS-objID field:** Captures the `<mosobjid>` tag from MOS communication, stored in story form area.
- `MOS_SIZE_LIMIT=16333` can be added to flag large MOS items with monitor error when monitor is turned on. Applies to all MOS items.

#### Increasing Bioserver Cache

Documentation added for increasing bioserver cache size to improve performance.

---

### For MediaCentral | Newsroom Management v2019.9

#### Multi-Site Support

- `ENABLE_REMOTE_AVAILABILITY=1` environment variable enables multi-site availability.

#### Enhanced Server Services (systemd)

- systemd introduced as service manager, replacing upstart.
- iNEWS service unit files at `/usr/lib/systemd/system/`.
- `inews-bioserver.service` is one of the key service units.
- Full service tables for connect/reconnect and startup/boot services — see SCG.
- `rxnet` uses socket activation under systemd.
- Five-step procedure for custom rxnet configuration documented in SCG.

#### Workstation Improvements

- Show Timing Clock: adjustable size.
- Queue Path toolbar: new toolbar displaying the name of the active queue. Enable via **View > Queue Path**; font type and size customisable via **Format > Font**.

> **Note:** Toolbar settings are saved to the workstation's registry, not to the user's profile.

---

### For MediaCentral | Newsroom Management v2019.6

#### CTCDEBUG Environment Variable

New environment variable for `inewsctc` logging. Options: `trace`, `debug`, `info`, `warning`, `error`. Default: `trace`.

#### Print Options

| Option | Values | Description |
|---|---|---|
| `WinAutoPageBreak` | `Yes\|No` | Print with optional story preview; enforces page break so story doesn't start on page below another story continuing to a second page. Default: Yes. |
| `WinColorScript` | `Yes\|No` | Use colour printing in script printouts. If enabled, coloured text used instead of shading: CC = green, presenter = red, machine control = blue. Default: No. |

#### AIWS Session Re-instantiation

AIWS session re-instantiated to allow the NRCS Tool to connect to Newsroom Management. Must be added to `/site/config` in two places:

```
; Host section:
reslist  711:712  ; Instinct AIWS (NRCS tool) sessions

; Instinct (AIWS) Sessions section:
aiws  711  –  gnews  –  ; Instinct (NRCS tool) session
aiws  712  –  gnews  –  ; Instinct (NRCS tool) session
```

Run `workdebug stat` to verify — NRCS tool session shows as `AII` (Avid Interplay Instinct). Run `list` to see AIWS sessions for logged-in NRCS Tool users.

#### HTML5 Plugin URL Parameters

HTML5 plugins now support URL parameters (previously only base URL was supported).

#### First Day of Week Calendar

Calendar in iNEWS Workstation now honours the First Day of Week setting of the Windows-based workstation on which it is running.

#### Group Story Numbering (W_GSEPARATOR / W_GENUMERATOR)

The numbering scheme for grouped stories in the PAGE column of rundown queues is now configurable via `/site/dict/words` (requires `maketab -i` after changes):

| Word | Values | Description |
|---|---|---|
| `W_GSEPARATOR` | `/–` (default) / `/.` | Separator between group identifier and story letter. |
| `W_GENUMERATOR` | `/A` (default) / `/#` / `/##` / `/###` | Story enumerator: A=alphabetic; #=numeric no padding; ##=one padding zero; ###=two padding zeros. |

Example: `W_GSEPARATOR /.` and `W_GENUMERATOR /##` enables numbering such as C01.01, C01.02, C01.03 … C02.01.

---

### For MediaCentral | Newsroom Management v2019.2

- Maestro HTML5 MOS plugin support added.

---

### For MediaCentral | Newsroom Management v2018.11

- New wire profile option: `join` — for Data Receiver updates. See SCG for details.

---

### For MediaCentral | Newsroom Management v2018.6

- **HTTPS support for file linking.** See SCG Chapter 18 "File Linking" and `TomcatInstallFileLink.pdf`.
- **Expanded centralised indexed searches** from MediaCentral Cloud UX via sending data for indexing to MediaCentral Search. See SCG Chapter 19 "Central Indexing".
- **Network recovery:** iNEWS Workstation now provides a reconnect dialog when connection to the network is lost, with option to restore backed-up stories.
- **WSAPI qualification:** Windows Server 2016 with Tomcat 7.0 and Java 8.
- **New UID for production cues in NSML:** `uid` attribute added to `<ae>` tag to help automation track machine control changes.
- **Chromium engine** updated.
- **Single combined Licensing Agent:** handles all session types and licence counting. (IN-3448)
- **`USE_AUTHENTICATION_BY_IP=0/1`** environment variable: enables service to authenticate with MCUX or MCCUX server for `inewsctc` connection.

---

### For MediaCentral | Newsroom Management v2017.2

#### RXNET Port Range (RXDATAPORTRANGE)

Environment variable to control the port range used for RXNET connections. Important if ports need to be opened in a firewall.

```
Syntax:  RXDATAPORTRANGE=<low port>..<high port>
Example: RXDATAPORTRANGE=10000..10010
```

If the variable is absent or incorrectly formatted, a random port is opened. The minimum number of ports must be at least the number of sessions configured in `/site/config` for the rxnet server.

#### Central Index Enhancements

Custom fields from NSML, grouping, and improved labels. (IN-3092)

#### UUIDtraits Utility

New `uuidtraits` utility with checkpoint online flag:

```
RH73-A# uuidtraits
```

Usage:
- (no flag): search value (path, stamp) by UUID
- `-s UUID`: search story (file id) by UUID
- `-c`: check integrity and show issues
- `-f`: fix found integrity issues
- `-o`: use checkpoint partition while checking or fixing issues
- `-p`: print entire UUID table

#### iNEWS CTC — Multiple MediaCentral Connections

From v2017.2, `inewsctc` can connect to multiple MediaCentral systems. (IN-3094)

**Migration required:** Remove the following settings from `/site/dict/words`:
```
W_ACS_GATEWAY_HOST   /<ip>
W_SERVICE_REALM      /<system-name>
W_SERVICE_TOKEN      ;/<security-token>
```
Retain `W_ACS_GATEWAY_HOST` and `W_ACS_GATEWAY_PORT` — still used for media index functionality.

**New per-connection env files** in `/site/env/`:

```
/site/env/inewsctc.<device-id>
```

Each file contains:
```
ACS_GATEWAY_HOST=<ip-address>
ACS_GATEWAY_PORT=9900
SERVICE_REALM=<system-name>
SERVICE_TOKEN=
```

Multiple inewsctc entries in `/site/config` (one per MediaCentral connection):
```
ctc  1122  –  inewsctc  –
ctc  1123  –  inewsctc  –
ctc  1124  –  inewsctc  –
```

> **Note:** Logs are recorded per service and can be found in `/var/log/iNEWS/` folder (e.g. `inewsctc.1122.log`, `inewsctc.1124.log`, `iNEWS.log`).

---

### For iNEWS v2017.1

#### iNEWS with Azure

Supports integration with Microsoft Azure as a hybrid deployment. See *iNEWS NRCS with Microsoft Azure Integration Guide*.

#### FTPS Support

FTP over SSL support added. See *iNEWS FTP/FTPS Server Protocol Specification* document.

#### Media | Index Searching

Custom iNEWS metadata search via Media Index using a central index. A re-index is required to search on custom fields. See SCG "Media | Index Integration" chapter.

---

## Changes Between Versions

### Changes between 2020.4.1 and 2020.4.2

- Action server removed edit lock from story if user session ID changed, causing Rundown app to lose the lock. Fixed. (IN-7113, MA-6028)
- Monitor server would not back up / use secondary MOS GW server unless communication with primary MOS GW server failed. Fixed. (IN-7061)
- Frequent hourglass shown when monitor was loaded and could not be alleviated with refresh interval setting. Fixed. (IN-6752)
- `mos-objid` value cleared from story form area after a MON LOAD. Fixed. (IN-7225)
- Locked database block for monitor process was not released. Fixed. (IN-6932)

### Changes between 2020.4 and 2020.4.1

- MAM communication interrupted, producing "Error connecting to [iNEWS SYSTEM], connection was aborted" in WSAPI logs. Fixed. (IN-6203)
- Save Story and Unlock Story would not move story to destination queue via action server when editing in Rundown App and logged in from CloudUX. Fixed. (IN-6576)
- Failed messages appeared after RXNET timed out. Fixed. (IN-6544, IN-6354)
- EDEADLOCK error intermittently printed by monitor. Fixed. (IN-6746)
- Starting dbserver would sometimes fail. Fixed. (IN-6395, IN-6436)
- Dependency messages after "connect" in v2020.4. Fixed. (IN-6436, IN-6395)
- Sometimes creating or deleting queues or folders with iNEWS Workstation could fail. Fixed. (IN-6392)
- Client hangs on startup; gnew session exits upon reading stories in SYSTEM.HTML-PLUGINS. Fixed. (IN-6275)
- Significant hourglass delay after selecting many stories in Queue panel and clicking Context menu option. Fixed. (IN-6242)
- Significant hourglass delay after selecting many stories in Queue panel and clicking Story menu option. Fixed. (IN-6186)
- Monitor server sometimes exited unexpectedly when mosItemReplace processes were deferred. Fixed. (IN-6804)
- Monitor server crashed when floating or unfloating stories with large Maestro (MOS item) attachment. Fixed. (IN-6786)
- Brief periods where users were unable to log in after upgrading to v2020.4. Fixed. (IN-6785, IN-6140)
- JAVA client did not release Newsroom Management sessions when user closed the browser instead of logging out. New environment variable introduced: `GJAVASESSIONTIMEOUT` (=mm:ss); default is no timeout. (IN-6140, IN-6785)
- System configured with three servers in SYSTEM.MAP caused monitor server crash. Fixed. (IN-6784)
- iNEWS workstation terminated on opening stories containing text copied from a web page and pasted via Rundown app in MC Cloud UX. Fixed. (IN-6272)
- Cyrillic and Georgian fonts not displaying correctly in Command. Fixed. (IN-6271)
- Monitor server would randomly go into a state where status messages would not reach iNEWS workstations and modifications would not get transmitted to Command. Fixed. (IN-6396)
- `list s-v` output does not display remote client IP address nor system name for RXNET connections. Fixed. (IN-6319)
- Unfloating first story in playlist caused monitor server to crash. Fixed. (IN-6279)
- Running `mapcheck` from the console might cause a segmentation fault. Fixed. (IN-6222)
- Form field not cleared after deleting a channel from MOS device playlist. Fixed. (IN-6179)
- "style NO" setting in CG device line of MAP story entry for Command resulted in error in MCS dictionary entry sent to user when monitor was turned on. Fixed. (IN-6431)
- `mediaindex` service terminated after restart even if there were no errors in configuration. Fixed. (IN-6220)
- Channel to which graphic was assigned with mosItemReplace message disappeared from the production cue. Fixed. (IN-6148, IN-6179)
- Frequent hourglass delays (2 to 4 seconds) in refresh rundowns with large number of stories. Fixed. (IN-6248)
- If QueueForm of a queue was mis-configured, Queue Panel would not display any fields (in older iNEWS it did). Fixed. (IN-6359)

### Changes between 2019.9.2 and 2020.4

- iNEWS workstations crashed intermittently with Maestro plugins. Fixed. (IN-5346/5402)
- inewsctc could accumulate memory usage with number of requests. Fixed. (IN-5497)
- News stories in Cloud UX created using Chinese characters might not appear in queue until logout/login. Fixed. (IN-5558)
- iNEWS CTC retains memory for further use to decrease fragmentation; releases RAM if OS requests it. Not a memory leak. See SCG Chapter 20 for memory allocation settings. (IN-5799)
- Saving story to local server failed if community session in another workspace was not available. Fixed. (IN-5892)
- Story edit lock was not auto-renewed if another story was edit-locked in a second workspace. Fixed. (IN-5893)
- After saving story using TXNET/RXNET, the "S" sequence was missing from the story. Fixed. (IN-5451)
- After reboot and running `connect`, dependency messages said some services failed to start. Fixed. (IN-5657)
- If requested story form referenced absent list/form in SYSTEM directory, iNEWS CTC responded with "404 not found". Now returns story form with empty list. (IN-5670)
- Following upgrades to v2018.11.x, sites with firewalls closing socket connections after period of inactivity resulted in TXNET/RXNET connection issues. Fixed with new environment variables (documented in SCG Appendix D): (IN-5732)
  - `RXDATAPORTRANGE=<low port>..<high port>` — restricts passive mode data port range for rxnet
  - `TXDCKEEPALIVE=<0|20+>` — keep-alive interval for TXNET data channel; 3 missed packets triggers channel close; disabled when 0; minimum 20 seconds; recommended ≥ half firewall timeout
- RXNET would open database when offline if FTP client attempted to connect to offline server, resulting in inability to run ONLINE commands. Fixed. (IN-5839)
- iNEWS Workstations following Show Timing did not always update with sync timing of controlling workstation. Fixed. (IN-5851)
- Client software might terminate when localtimeout expired and there was a field data warning dialogue open. Fixed. (IN-5450)
- Issues related to losing stories out of iNEWS. Fixed. (IN-5852)

### Changes between 2019.9.1 and 2019.9.2

- MOS item removed when saving story with MediaCentral Cloud UX Rundown app. Fixed. (IN-5768)
- "Failed to save story and release edit lock" when saving a story using the Rundown app (storylock timeout + rundown app not refreshing the lock). Fix requires update to MediaCentral Cloud UX 2019.6 or later. (IN-5769, MA-5024)
- Saving a story with "modify-dev" field in the Rundown app caused inewsctc to crash. Fixed. (IN-5771)
- Error when saving stories using Rundown app in queue with action job configured. Fixed with new API in inewsctc to enable creation of story with editlock. Fix requires update to MediaCentral Cloud UX 2019.10 or later. (IN-5770, MA-5526)

### Changes between 2019.9 and 2019.9.1

- Production cue disappears if insertion point is at immediate left of production cue grommet and user clicks N, P or CC, then saves. Fixed. (IN-5727)
- Assigned channel would be cleared after monitor was loaded. Fixed. (IN-5652)
- "Renumber all" did not provide unique page numbers to stories when queue contained BREAK stories. Fixed. (IN-5607)
- Story group indicator disappeared when user changed queue form of current viewing queue. Fixed. (IN-5566)

### Changes between 2019.6 and 2019.9

- User with Newsroom Management credentials on Windows command line FTP client could still log in to news database when system was offline. Fixed. (IN-5454)
- Action server would crash, producing a core image file, when joblist was modified and saved in the database. Fixed. (IN-5202)
- Bioserver might disconnect on ABC system (A and B disconnecting while retaining connection to C would result in incorrect types: AC on A, BC on B, ABC on C). Fixed. (IN-169213)
- After loading playlist to Command, monitor server would terminate with 'out of memory' error, causing rundown to be out of sync with playlist and preventing deletion. Fixed. (IN-4800)
- Monitor server terminated when receiving update to story with large MOS attachment for Maestro exceeding its size limit. Fixed. (IN-5110)
  > **Note:** Monitor skips sending any attachment to Command that is larger than the limit supported by Command. Add `MOS_SIZE_LIMIT=16333` environment variable to flag large MOS items with monitor error when monitor is turned on. Applies to all MOS items.
- inewsctc device had to be manually restarted often. Fixed. (IN-4927)
- New users did not get updates in re-fresh queue. Fixed. (IN-5403)

### Changes between 2019.2 and 2019.6

- `force` utility missing from utilities list in `/exc/` server folder. Fixed. (IN-4973)
- After monitor load of stories to Command and locking channel group, modifying field in story auto-assigned to non-default channel resulted in duplicate clip in Command. Fixed. (IN-4837)
- NRCS Tool connections used licensed "general" session rather than non-licensed "aiws" session. Fixed. (IN-4199)
- With UUID introduction in v6.0, stories copied to other queues assigned new UUIDs no longer linked back to originals in original queue. Fixed. (IN-4618)
- Presenter (P), machine control (M), and closed captioning (CC) text printed in gray scale instead of SYSTEM.STYLES colours. Fixed. (IN-4806)
- TXNET using polling failed to put order list to destination when all stories in queue polled are deleted. Fixed. (IN-4900)
- Viz production cue from edit-locked story: previously warned of story lock but still opened in browser mode; now warns story is locked and does not launch the ActiveX plug-in. (IN-5103)
- Loud beeping from PC's internal speaker when accessing Maestro plug-in at a Newsroom Management workstation. Fixed. (IN-4998)
- inewsctc did not reflect group changes on fly; adding/removing users from SYSTEM.GROUPS did not follow inewsctc restart. Now it does. (IN-5082)
- inewsctc would sometimes lock block 1 — the Directory ISAM. Fixed. (IN-5016)
- Users were unable to log in after workserver utility stopped on both news servers. Fixed. (IN-4801)
- Fullwidth ampersand (&) added to a story caused the crash of iNewsCOMU.dll in MOS Gateway. Fixed. (IN-4701)
- Modification of a story would sometimes record wrong user ID in MODIFY-BY field. Fixed. (IN-4479)

### Changes between 2018.11 and 2019.2

- `sendpassword` job list command to send key locked story via txnet didn't work correctly. Fixed. (IN-4611)
- bioserver goes to 911$ prompt unexpectedly. Fixed. (IN-4759)
- Multiple placeholders created for same story. Fixed. (IN-4524)
- Show timing displayed `**:**` on countdown clock when Play key pressed in Command for video clip just prior to story being sync timed in iNEWS. Fixed. (IN-4621)
- Discrepancy between client and server calculation of audio time. Fixed. (IN-4739)
- Monitor server could sometimes terminate with "Monitor exiting: Out of memory (proc_mosItemReplace,0):…" in iNEWS logs. Fixed. (IN-4800)

### Changes between 2018.9.2 and 2018.11

- Channel assignments in stories with production cues were not updating properly from newsroom client. Fixed. (IN-4248, IN-4204)
- Error core file generated on server when a login was attempted with a username longer than 20 characters. Fixed. (IN-4222)

### Changes between 2018.9.1 and 2018.9.2

- `sendpassword` job list command to send key locked story via txnet didn't work correctly. Fixed. (IN-4611)
- TXNET sends production cues with UUIDs even when earlier NSML formats specified in job list for txnet device. Fixed. (IN-4575)

### Changes between 2018.9 and 2018.9.1

- Story creation error displayed if production cue was added via the CG Titling tool. Fixed. (IN-4326)

### Changes between 2018.6.1 and 2018.9

- Stories with blank create-date or modify-date in client would not index. Fixed. (IN-4198)
- Sending email via an action server (mailto) would not send story body data. Fixed. (IN-4280)
- "Configure" program usage updated with removal of obsolete items. (IN-4153)
- W_MCS_BASE_URL: default changed from `/https://mediacentralsearch/` to `/https://mediacentralsearch/search`.

> **Documentation Errata for v2018.9:** The v2018.6 SCG (page 469) gave `W_MCS_BASE_URL /https://mediacentralsearch/`. This was changed in v2018.9 and should now be `W_MCS_BASE_URL /https://mediacentralsearch/search`.

### Changes between 2018.6 and 2018.6.1

- After setting up CloudUX configuration on iNEWS side, folders were visible but opening any queue or story resulted in "server could not be located" error. Fixed. (IN-4191)

### Changes between 2017.2 and 2018.6

- NSML with duplicate "idref" and "ae id" numbers meant user could not save story after editing. Fixed. (IN-2434)
- Using "TRANSMIT" option in wire distribution story added duplicate priority code to distribution code. Fixed. (IN-2179)
- Custom configurations using `-e` option to point to `/site/env/rxnet` for specific NSML version was broken. Fixed. (IN-3823)
- Unloading one MOS device affected other loaded MOS devices in "Choice" configuration. Fixed. (IN-3600)
- Memory fragmentation issue with bioserver causing high memory consumption. Fixed. (IN-2686)
- "create-date" field got erased if mail was sent to group of users. Fixed. (IN-3502)
- After upgrade to v2017.2, some HTML files formatted incorrectly. Fixed. (IN-3504)
- Changes in a refresh queue were not received by community users. Fixed. (IN-3533)
- Opening large rundown with refresh trait caused graying out of new story/print story icons on main toolbar. Fixed. (IN-3624)
- Stories with low link counts and "story open" errors in PRELIM queues. Fixed. (IN-3834)
- MOS items dragged and dropped into story: when creating placeholder, since no activeX info available, operation was disabled. Now client enables such operation if MOS item subsequently modified to include activeX info with MOS Gateway 4.5 or mosItemReplace workflow. (IN-1082)
- Story grouping would stop working after printing a selection of stories. Fixed. (IN-3664)
- Client didn't properly display order of sorted (remote) queue when user entered new story in remote queue. Fixed. (IN-3820)
- Connect to Service dialog would go to Login screen instead of prompting for password. Fixed. (IN-3503)

### Changes between 2017.1 and 2017.2

- System formerly known as Avid iNEWS is now called MediaCentral Newsroom Management. Servers are now called Newsroom Management Servers. Computers running client software are still called iNEWS Workstations.
- Typing in iNEWS stories containing many hyperlinks resulted in sluggish typing of new text. Fixed. (IN-1828)
- Ctrl-F search involving create-date or modify-date field might result in error causing UI to freeze. Fixed. (IN-176005)
- dbrestore of version 2.1 database failed. Fixed. (IN-3387)
- Font and point size changed when overwriting production cue text. Fixed. (IN-1578)
- iNEWS client throws error when logging out with Show Versions workspace open. Fixed. (IN-2260)
- Under specific scenario, Backup Command server was monitor loaded when Primary Command servers expected to be loaded. Fixed. (IN-3386)
- NRCS Tool in Media Composer doesn't display main level directory in iNEWS. Fixed. (IN-3270)

### Changes between 6.1 and 2017.1

- External user might be unable to log in for several minutes after user traits modified. Fixed. (IN-2762)
- User modifying body or story form of iNEWS story caused video items in production cues to be temporarily deleted and re-added, changing channels to default and causing issues with cued and playing items. Fixed. (IN-2530)
- Monitor changes fixing multiple/jumping green line issues in Command when editing items in a story with items being played. (IN-2837)
- Users experienced problems dragging and docking toolbars when multiple workspaces were open. Fixed. (IN-1579)
- bioserver could terminate unexpectedly after server reboot and/or during startup of services in A/B system configuration. Fixed. (IN-2677)
- Client crashes if all stories are copied from a queue to a local database. Fixed. (IN-2574)
- iNEWS CTC (CTMS adapter) would not reconnect to MediaCentral if MediaCentral restarted. Users needed to manually restart inewsctc. Issue fixed in Avid MediaCentral 2.10.2 with this version. (IN-2920)
- `W_BINDBUS` in `/site/dict/words` is no longer used to define connection to busserver for mediaindex service. mediaindex now uses: `W_ACS_GATEWAY_HOST /<IP address>` and `W_ACS_GATEWAY_PORT /9900`.
- `dbrestore` utility has new `-u` flag to restore stories more than once, even if UUID is present. If stories of the same UUID exist, a new UUID is assigned to the restored stories.

---

## Documentation Errata

### Setup Configuration Guide

In past versions of the MediaCentral Newsroom Management SCG, the Forms chapter section erroneously identified the product as MediaCentral | Cloud UX. It should have been MediaCentral | UX. This has been fixed in the section now titled "MediaCentral | UX Integration".

---

## Known Issues and Limitations

### CloudUX Integration

- If a Newsroom Management username is used on two or more different computers to log into CloudUX, it will only show as a single session in MediaCentral Newsroom Management.

### Edit Locks

- Information about edit locks may contain a session identifier if the username is not known. This is the case for locks acquired through the inewsctc API.
- Information about a user who has an edit lock could be incorrect when the user signs off without releasing edit locks and signs on, reusing the same session.

> **Note:** The new user does not have the edit lock, and the lock will expire in its pre-defined timeout.

### RedHat / CentOS 7.5

- Autostop of misconfigured services does not work in RedHat/CentOS 7.5 environments.

### Netstation

- Fields carried over from Avid Netstation template are skipped from indexing. (IN-3269)

### Chinese IME Mode

- Avid recommends not using key strokes in Chinese IME mode.

### Localhost Server

- It is recommended to use localhost IP address `127.0.0.1` instead of alias `localhost` in case of telnet connection to localhost server.

### Console

- iNEWS console is no longer supported by default. For information on setting up serial console in RH7, see the Red Hat documentation.

### Diskcopy Reports CRITICAL Error

- If diskcopy reports `"diskcopy: 17:09:59 [CRITICAL] first block mirror error: on block 66958 (5:Input/output error)"`, users should check the message at the end of the log for actual status. `"Successful – Disk is mirrored"` indicates the process completed successfully; the error only indicates there are empty blocks that could not be copied.

### Divehi Support

- With the new richedit control, sometimes the last line of text will align to the left for a right-aligned story.

### Chinese Localization Issue

- Chinese input method DaYi cannot be used to create new queues or folders.

### German Localization Issue

- Using Ctrl+Shift+Right Arrow incorrectly marks a word if that word begins with a German Umlaut (ä, Ä, ö, Ö), regardless of case.

### Local Database

- To download print styles and story forms to a local computer for use offline, the user must have Read Access to the iNEWS System directories where styles and forms are located. This is by design.

### Windows 7 and Windows 8 with UAC Enabled

- When User Access Control (UAC) is turned on, users cannot drag-and-drop text from an outside application such as Microsoft Word into iNEWS.
- **Workaround:** Use Ctrl+C and Ctrl+V to copy and paste text between applications.

### External Users (LDAP)

Beginning with version 4.x, Avid iNEWS server allows user authentication via Windows Active Directory; however, external users are not compatible with the following clients:

- iNEWS Workstations earlier than 4.0.0
- FTP clients: teleprompters, NewsCutter's NRCS Tool
- COM clients: NewsCutter's NRCS Tool; Instinct; MOS Gateway's roStorySend and mosObj
- Web Client
- Web Access
- Interplay Central earlier than 1.3.0

### Plug-ins

Some plug-ins (e.g. AMG Journalist) will not paint correctly in iNEWS. **Workaround:** Create a file named `ActiveXRedraw.txt` in the iNEWS executable directory (64-bit: `C:\Program Files (x86)\Avid\iNEWS\`; 32-bit: `C:\Program Files\Avid\iNEWS\`), containing the CLSID of the plug-in (located in the registry at HKEY_CLASSES_ROOT\Wow6432Node\CLSID\ for 64-bit or HKEY_CLASSES_ROOT\CLSID\ for 32-bit). Reload iNEWS.

### UNC Paths

- UNC paths with spaces no longer work correctly in the iNEWS client software due to server-side URL changes in iNEWS 3.4.2.
- iNEWS integration with Intelliscribe printing should be configured at 300 DPI with "Enhanced Features" disabled. Higher DPI or enabling enhanced features can cause long delays in printing.
- When Vertigo Xmedia plug-in and Aurora Assignment List plug-in (version 7 or later) are both installed on the same client, the Xmedia splash screen can cause the Xmedia tree to be inaccessible. **Workaround:** Rename or remove `skinCrafter3_vs2008.dll` from the Assignment List installation directory.

### iNEWS Web Services API

- WSAPI cannot be undeployed via the Tomcat management interface when Tomcat is running on a Windows host. **Workaround:** Stop the Tomcat service; delete the `inewswebservice` file and folder from the Tomcat webapps directory; place the new `.war` file into the webapps directory; start the Tomcat service.
  > **Note:** Undeployment through the management interface works correctly if the Tomcat service is running on a Linux host.

### Multiple Monitors

- If the application is maximised when closed, it will be maximised on the primary monitor when reopened regardless of which monitor it was on when closed.
- Moving a user from a dual monitor machine to a single monitor machine (e.g. an undocked laptop) could result in the application opening to a screen that no longer exists. **Workaround:** Right-click iNEWS in the Windows taskbar and select Move; press an arrow key; move the mouse pointer to bring the iNEWS main window onto the screen.

### Macros and Keystrokes

- Some PCs upgraded from Internet Explorer 6 to IE 7 or 8 will experience issues with macros that perform several functions in rapid succession. **Workaround:** Use the K_WINDOW token in the macro (e.g. `{ctrl p}{window Local Printing}` instead of just `{ctrl p}`). Alternatively, add `{pause <#>}` statements of one or two seconds at problem points in the macro.

---

## Technical Support

- Online support: [www.support.avid.com](https://www.support.avid.com)
- North America: 800-949-AVID (800-949-2843)
- International: 978-275-2480
