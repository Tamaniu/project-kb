---
product: mediacentral-newsroom-management
product-area: release-notes
version: "2020.9.4"
release-date: 12/09/2021
doc-type: readme
source: avid-official
source-file: MCNM_v2020.9.4_ReadMe.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2021.3"
feature-tags: [compatibility, upgrade, downgrade, new-features, known-issues, inewsctc, ctms, kafka, mediaindex, ftps, rxnet, txnet, ldap, mos, mos-gateway, systemd, community, uuid, dbrestore, grpcheck, sendmail, gmail, security, virtualisation]
---

# MediaCentral | Newsroom Management v2020.9.4 ReadMe

**Build:** v7.7.4  
**Date:** 13 September 2021  
**Applies to:** MCNM v2020.9.4  
**Copyright:** © 2021 Avid Technology, Inc.

---

## Document Revision History

| Date | Version |
|---|---|
| 12/09/2021 | v2020.9.4 |
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

## Updated Security Guidelines

Beginning with v2020.9, Avid is adopting a flexible security strategy. Symantec Endpoint Protection is no longer mandated. An updated Security Guidelines document was to be released in Q4 2020.

---

## Compatibility

### Operating System

- **RHEL:** 7.7, 7.5
- **CentOS:** 7.7, 7.5
- **Build:** 7.7.x
- **iNEWS Workstation:** Windows 10 only

### Client / Server Compatibility Matrix

v2020.9.x client software only works with v2020.9.x servers. Cross-version mixing is not supported.

### OS / Server Qualification Matrix

| MCNM Version | Build | RHEL | CentOS | Windows Server |
|---|---|---|---|---|
| 2020.9.x | 7.7.x | 7.4 / 7.5 / 7.7 | 7.3 / 7.5 / 7.7 | 2008 R2 / 2016 / 2019 |

### Virtualisation

Refer to the Enterprise Virtualisation Reference Guide for VM configuration requirements.

### Component Compatibility

| Component | Version Required | Notes |
|---|---|---|
| FTS | 4.0.3+ | Windows Server 2016 / 2019 |
| Media\|Index | 5.2+ | — |
| Command | 1.0.1+ | v3.2+ required for VID-DUR feature |
| MOS Gateway | **2020.9.x only** | Changed from "4.x or later" in v2020.4; must use MOS Gateway 2020.9.x |
| Console MUX | 2.0 | — |
| Data Receiver | 1.8+ | — |
| Instinct | 1.1+ / 1.6+ | — |
| NewsCutter | 6.1.5+ | — |

> **Important:** MOS Gateway compatibility changed in v2020.9. Only MOS Gateway 2020.9.x is compatible; earlier versions (e.g. 4.x) are not supported with v2020.9.x.

### LDAP

- Tested with LDAP TLS.
- External users are not compatible with older clients (see Known Issues — External Users).

---

## Upgrade and Downgrade Notes

### Downgrade from v2020.9.x

- To v2020.9.x / v2020.4.x / v2019.9.x / v2019.6 / v2019.2 / v2018.11 / v2018.9 / v2018.6 / v2017.x: Standard downgrade. Delete `/etc/systemd/system/iNEWS.service` before reverting.
- To v6.1: Manual uninstall required.

### Upgrade to v2020.9.4

- Standard upgrade.

### Upgrade to v2020.9.2

- inewsctc-only patch. Manual procedure:
  1. Copy `inewsctc.gz` to the server.
  2. Back up the existing `inewsctc` binary.
  3. Install the new `inewsctc`.
  4. Run `maketab -iv`.
  5. Restart the affected `inewsctc` service.

### Upgrade to v2020.9 or v2020.9.1

- Standard upgrade.

### Upgrade to v2020.4.x

- Standard upgrade.
- **HTTPS Kafka / MediaCentral searches:** Requires Cloud UX v2019.9.5 or later.
- After upgrading to v2020.4, remove the old Kafka story and restart `mediaindex`.

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

### For MediaCentral | Newsroom Management v2020.9

#### Improved CTC Queue Access

iNEWS CTC queue access improved through newer interface and libraries, addressing frequent and unexpected disconnections from CloudUX.

#### Dbvisit Update — Skip UUID Table

Dbvisit updated to skip the UUID table during database synchronisation.

#### Dbgen UUID File Generation

`dbgen` can now generate the UUID file as part of database generation operations.

#### New Environment Variables

| Variable | Format | Description |
|---|---|---|
| `GJAVASESSIONTIMEOUT` | `mm:ss` | Session timeout for JAVA clients (Cloud UX browser sessions). Default: no timeout. Introduced to log out stale JAVA client sessions that were not releasing Newsroom Management sessions when the user closed the browser instead of logging out. |
| `GSAVESTORYTOUSERDEST` | — | Saves recovered stories to the user's destination rather than a default location. |

#### MOS Gateway Integration

- MOS Gateway 2020.9.x required (see Compatibility above).
- iNEWSCOM replaced by FTP/FTPS as the communication mechanism between Newsroom Management and MOS Gateway.
- For full configuration details see the MOS Gateway 2020.9.x ReadMe.

#### Grpcheck — scp Replaces rcp

`grpcheck` now uses `scp` instead of `rcp` for community database integrity checks. SSH key setup is required:

- SSH keys must be established between all servers in the community before using `grpcheck`.
- The following configuration keys apply:
  - `CONFIG_SYSTEM_A_REMOTE_SO_PASSWORD`
  - `CONFIG_SYSTEM_B_REMOTE_SO_PASSWORD`
  - `CONFIG_SYSTEM_C_REMOTE_SO_PASSWORD`

---

### For MediaCentral | Newsroom Management v2020.4

#### HTTPS Support for MediaCentral Kafka / Search

MediaCentral Kafka and MediaCentral Search now support HTTPS connections. Requires Cloud UX v2019.9.5 or later.

#### Community Reconnect Implementation

iNEWS workstations are now notified when a community disconnection occurs.

#### VID-DUR Field

Extracts video duration from the story body into Composite and Device-Event queues. Requires MediaCentral Command v3.2 or later.

#### New Environment Variables

| Variable | Description |
|---|---|
| `EnableLogging` | Enables logging for the specified service |
| `RESTARTDURINGPOLLINGPERIOD` | Controls restart behaviour during polling periods |
| `TXDCKEEPALIVE` | `<0\|20+>` — keep-alive interval for TXNET data channel; 0 = disabled; minimum 20 seconds; recommended ≥ half firewall timeout; 3 missed packets triggers channel close |
| `RXDATAPORTRANGE` | `<low port>..<high port>` (e.g. `10000..10010`) — restricts passive mode data port range for rxnet |
| `W_INDEX_STORYUUID` | Enables story UUID indexing |

#### MOS Enhancements

- MOS size checking: Monitor checks MOS attachment size before sending to Command.
- MOS-objID field: Captures `<mosobjid>` tag from MOS communication.
- `MOS_SIZE_LIMIT=16333` can be added to flag large MOS items with monitor error when monitor is turned on.

---

### For MediaCentral | Newsroom Management v2019.9

#### Multi-Site Support

`ENABLE_REMOTE_AVAILABILITY=1` environment variable enables multi-site availability.

#### Enhanced Server Services (systemd)

systemd introduced as service manager, replacing upstart. iNEWS service unit files at `/usr/lib/systemd/system/`. `rxnet` uses socket activation under systemd. Full service tables and custom rxnet configuration procedure in SCG.

#### Workstation Improvements

- Show Timing Clock: adjustable size.
- Queue Path toolbar: displays name of the active queue. Enable via **View > Queue Path**; font customisable via **Format > Font**.

> **Note:** Toolbar settings are saved to the workstation's registry, not to the user's profile.

---

### For MediaCentral | Newsroom Management v2019.6

#### CTCDEBUG Environment Variable

New environment variable for `inewsctc` logging. Options: `trace`, `debug`, `info`, `warning`, `error`. Default: `trace`.

#### Print Options

| Option | Values | Description |
|---|---|---|
| `WinAutoPageBreak` | `Yes\|No` | Enforces page break to avoid story starting below another story continuing to second page. Default: Yes. |
| `WinColorScript` | `Yes\|No` | Colour printing in script printouts: CC = green, presenter = red, machine control = blue. Default: No. |

#### AIWS Session Re-instantiation

AIWS session re-instantiated to allow NRCS Tool to connect to Newsroom Management. Add to `/site/config`:

```
; Host section:
reslist  711:712  ; Instinct AIWS (NRCS tool) sessions

; Instinct (AIWS) Sessions section:
aiws  711  –  gnews  –  ; Instinct (NRCS tool) session
aiws  712  –  gnews  –  ; Instinct (NRCS tool) session
```

#### Group Story Numbering (W_GSEPARATOR / W_GENUMERATOR)

Configurable via `/site/dict/words` (requires `maketab -i` after changes):

| Word | Values | Description |
|---|---|---|
| `W_GSEPARATOR` | `/–` (default) / `/.` | Separator between group identifier and story letter. |
| `W_GENUMERATOR` | `/A` (default) / `/#` / `/##` / `/###` | Story enumerator. |

---

### For MediaCentral | Newsroom Management v2019.2

- Maestro HTML5 MOS plugin support added.

---

### For MediaCentral | Newsroom Management v2018.11

- New wire profile option: `join` — for Data Receiver updates.

---

### For MediaCentral | Newsroom Management v2018.6

- HTTPS support for file linking. See SCG Chapter 18 and `TomcatInstallFileLink.pdf`.
- Expanded centralised indexed searches from Cloud UX. See SCG Chapter 19.
- Network recovery: iNEWS Workstation provides reconnect dialog and story restore option on network loss.
- WSAPI qualification: Windows Server 2016 with Tomcat 7.0 and Java 8.
- New UID for production cues in NSML: `uid` attribute on `<ae>` tag.
- Chromium engine updated.
- Single combined Licensing Agent. (IN-3448)
- `USE_AUTHENTICATION_BY_IP=0/1`: enables authentication with MCUX or MCCUX server for `inewsctc` connection.

---

### For MediaCentral | Newsroom Management v2017.2

#### RXNET Port Range (RXDATAPORTRANGE)

```
Syntax:  RXDATAPORTRANGE=<low port>..<high port>
Example: RXDATAPORTRANGE=10000..10010
```

#### iNEWS CTC — Multiple MediaCentral Connections

From v2017.2, `inewsctc` can connect to multiple MediaCentral systems. Remove cloud settings from `/site/dict/words`; configure per-connection env files in `/site/env/inewsctc.<device-id>`. Logs in `/var/log/iNEWS/` folder.

---

### For iNEWS v2017.1

- iNEWS with Azure: hybrid deployment. See *iNEWS NRCS with Microsoft Azure Integration Guide*.
- FTPS Support: FTP over SSL. See *iNEWS FTP/FTPS Server Protocol Specification*.
- Media | Index Searching: custom iNEWS metadata search via Media Index.

---

## Changes Between Versions

### Changes between 2020.9.3 and 2020.9.4

- Action server removed edit lock from story if user session ID changed, causing Rundown app to lose the lock. Fixed. (IN-7113, MA-6028)

### Changes between 2020.9.2 and 2020.9.3

- This version contains only MOS Gateway updates.
- TAB character in story body caused MOS Gateway StorySend service to crash. Fixed. (IN-6907)
- MOS attachment attributes modified incorrectly for roStorySend stories. Fixed. (IN-6857)

### Changes between 2020.9.1 and 2020.9.2

- Fields tag removed from MOS attachment when saving stories in CloudUX. Fixed. (IN-6891)

### Changes between 2020.9 and 2020.9.1

- Save Story and Unlock Story would not move story into destination queue via action server when editing in Rundown Application while logged in from CloudUX. Fixed. (IN-6576)

### Changes between 2020.4 and 2020.9

- iNEWS CTC would frequently and unexpectedly disconnect from CloudUX. Fixed by improving queue access through CTC with newer interface and libraries. (IN-6094)
- JAVA client did not release Newsroom Management sessions when user closed browser instead of logging out. Fixed. (IN-6140)
- iNEWS client terminated on opening stories with text copied from web page (URL unknown) via Rundown app in MC Cloud UX. Fixed. (IN-6272)
- Channel change for clips made in Newsroom Management did not always take or change back. Fixed. (IN-5319)
- GET queue request returned 404 Not Found error if there was no SYSTEM.MAP queue in the database. Fixed. (IN-6090)
- Channel to which graphic was assigned with mosItemReplace message disappeared from production cue. Fixed. (IN-6148)
- Form field not cleared after deleting channel from MOS device playlist. Fixed. (IN-6179)
- Frequent hourglass delays (2 to 4 seconds) in refresh rundowns with large number of stories. Fixed. (IN-6248)
- Monitor did not update Channel column in mosItemReplace workflow. Fixed. (IN-6243)
- Significant hourglass delay after selecting many stories in Queue panel and clicking Context menu option. Fixed. (IN-6242)
- Significant hourglass delay after selecting many stories in Queue panel and clicking Story menu option. Fixed. (IN-6186)
- Running `mapcheck` from console might cause segmentation fault. Fixed. (IN-6222)
- mediaindex service terminated after restart even if there were no errors in configuration. Fixed. (IN-6220)
- MAM communication interrupted, producing "Error connecting to [iNEWS SYSTEM], connection was aborted" in WSAPI logs. Fixed. (IN-6203)
- Cyrillic and Georgian fonts not displaying correctly in Command. Fixed. (IN-6271)
- Client hangs on startup; gnew session exits upon reading stories in SYSTEM.HTML-PLUGINS. Fixed. (IN-6275)
- `list s-v` output did not display remote client IP address nor system name for RXNET connections. Fixed. (IN-6319)
- Starting in a saved session or loading a session may change the Clock size for all users who log into the same iNEWS Workstation PC. Fixed. (IN-6331)
- Users experienced FTPS connection issues with the Newsroom Management database when using IE browser. Fixed. (IN-6363)

### Changes between 2019.9.2 and 2020.4

- iNEWS workstations crashed intermittently with Maestro plugins. Fixed. (IN-5346/5402)
- inewsctc accumulated memory usage with number of requests. Fixed. (IN-5497)
- Chinese characters in Cloud UX stories might not appear in queue until logout/login. Fixed. (IN-5558)
- iNEWS CTC retains memory for further use to decrease fragmentation; releases if OS requests it. See SCG Chapter 20. (IN-5799)
- Saving story to local server failed if community session in another workspace unavailable. Fixed. (IN-5892)
- Story edit lock not auto-renewed if another story was edit-locked in second workspace. Fixed. (IN-5893)
- After saving story using TXNET/RXNET, "S" sequence missing from story. Fixed. (IN-5451)
- After reboot and running `connect`, dependency messages said some services failed to start. Fixed. (IN-5657)
- Story form with reference to absent list/form in SYSTEM directory returned "404 not found" from iNEWS CTC. Now returns story form with empty list. (IN-5670)
- Following upgrades to v2018.11.x, firewalls closing socket connections after inactivity caused TXNET/RXNET issues. Fixed with new environment variables (documented in SCG Appendix D): (IN-5732)
  - `RXDATAPORTRANGE=<low port>..<high port>`
  - `TXDCKEEPALIVE=<0|20+>`
- RXNET would open database when offline if FTP client attempted to connect. Fixed. (IN-5839)
- iNEWS Workstations following Show Timing did not always update with sync timing. Fixed. (IN-5851)
- Client terminated when localtimeout expired with field data warning dialogue open. Fixed. (IN-5450)
- Issues related to losing stories out of iNEWS. Fixed. (IN-5852)

### Changes between 2019.9.1 and 2019.9.2

- MOS item removed when saving story with Cloud UX Rundown app. Fixed. (IN-5768)
- "Failed to save story and release edit lock" when saving via Rundown app. Fix requires MediaCentral Cloud UX 2019.6 or later. (IN-5769, MA-5024)
- Saving story with "modify-dev" field in Rundown app caused inewsctc crash. Fixed. (IN-5771)
- Error when saving stories in queue with action job configured. Fix requires MediaCentral Cloud UX 2019.10 or later. (IN-5770, MA-5526)

### Changes between 2019.9 and 2019.9.1

- Production cue disappears if insertion point at immediate left of production cue grommet and user clicks N, P or CC, then saves. Fixed. (IN-5727)
- Assigned channel cleared after monitor loaded. Fixed. (IN-5652)
- "Renumber all" did not provide unique page numbers when queue contained BREAK stories. Fixed. (IN-5607)
- Story group indicator disappeared when user changed queue form of current viewing queue. Fixed. (IN-5566)

### Changes between 2019.6 and 2019.9

- User with NM credentials on Windows command line FTP client could still log in when system was offline. Fixed. (IN-5454)
- Action server crashed when joblist modified and saved. Fixed. (IN-5202)
- Bioserver might disconnect on ABC system resulting in incorrect community types. Fixed. (IN-169213)
- After loading playlist to Command, monitor terminated with 'out of memory' error. Fixed. (IN-4800)
- Monitor terminated when receiving update to story with large MOS attachment exceeding size limit. Fixed. (IN-5110)
  > **Note:** Add `MOS_SIZE_LIMIT=16333` environment variable to flag large MOS items with monitor error when monitor is turned on. Applies to all MOS items.
- inewsctc device had to be manually restarted often. Fixed. (IN-4927)
- New users did not get updates in re-fresh queue. Fixed. (IN-5403)

### Changes between 2019.2 and 2019.6

- `force` utility missing from `/exc/` server folder. Fixed. (IN-4973)
- Duplicate clip in Command when modifying field in story auto-assigned to non-default channel after monitor load. Fixed. (IN-4837)
- NRCS Tool connections used licensed "general" session rather than non-licensed "aiws" session. Fixed. (IN-4199)
- Stories copied to other queues assigned new UUIDs no longer linked back to originals. Fixed. (IN-4618)
- P, M, CC text printed in gray scale instead of SYSTEM.STYLES colours. Fixed. (IN-4806)
- TXNET polling failed to put order list to destination when all stories deleted. Fixed. (IN-4900)
- Viz production cue from edit-locked story: now warns story is locked and does not launch ActiveX plug-in. (IN-5103)
- Loud beeping from PC's internal speaker when accessing Maestro plug-in. Fixed. (IN-4998)
- inewsctc did not reflect group changes on fly. Now it does. (IN-5082)
- inewsctc would sometimes lock block 1 — the Directory ISAM. Fixed. (IN-5016)
- Users unable to log in after workserver utility stopped on both news servers. Fixed. (IN-4801)
- Fullwidth ampersand (&) in story caused crash of iNewsCOMU.dll in MOS Gateway. Fixed. (IN-4701)
- Modification of story would sometimes record wrong user ID in MODIFY-BY field. Fixed. (IN-4479)

### Changes between 2018.11 and 2019.2

- `sendpassword` job list command to send key locked story via txnet didn't work. Fixed. (IN-4611)
- bioserver goes to 911$ prompt unexpectedly. Fixed. (IN-4759)
- Multiple placeholders created for same story. Fixed. (IN-4524)
- Show timing displayed `**:**` on countdown clock when Play key pressed before sync timing. Fixed. (IN-4621)
- Discrepancy between client and server calculation of audio time. Fixed. (IN-4739)
- Monitor terminated with "Monitor exiting: Out of memory (proc_mosItemReplace,0)". Fixed. (IN-4800)

### Changes between 2018.9.2 and 2018.11

- Channel assignments in stories with production cues not updating properly from newsroom client. Fixed. (IN-4248, IN-4204)
- Error core file generated when login attempted with username longer than 20 characters. Fixed. (IN-4222)

### Changes between 2018.9.1 and 2018.9.2

- `sendpassword` job list command via txnet didn't work. Fixed. (IN-4611)
- TXNET sends production cues with UUIDs even when earlier NSML formats specified in txnet job list. Fixed. (IN-4575)

### Changes between 2018.9 and 2018.9.1

- Story creation error displayed if production cue added via CG Titling tool. Fixed. (IN-4326)

### Changes between 2018.6.1 and 2018.9

- Stories with blank create-date or modify-date would not index. Fixed. (IN-4198)
- Sending email via action server (mailto) would not send story body data. Fixed. (IN-4280)
- "Configure" program usage updated with removal of obsolete items. (IN-4153)
- W_MCS_BASE_URL: changed from `/https://mediacentralsearch/` to `/https://mediacentralsearch/search`.

> **Documentation Errata for v2018.9:** The v2018.6 SCG (page 469) gave `W_MCS_BASE_URL /https://mediacentralsearch/`. Should be `W_MCS_BASE_URL /https://mediacentralsearch/search`.

### Changes between 2018.6 and 2018.6.1

- Opening any queue or story after setting up CloudUX configuration on iNEWS side resulted in "server could not be located" error. Fixed. (IN-4191)

### Changes between 2017.2 and 2018.6

- NSML with duplicate "idref" and "ae id" numbers meant user could not save story after editing. Fixed. (IN-2434)
- Using "TRANSMIT" in wire distribution story added duplicate priority code. Fixed. (IN-2179)
- Custom configurations using `-e` option to point to `/site/env/rxnet` for specific NSML version was broken. Fixed. (IN-3823)
- Unloading one MOS device affected other loaded MOS devices in "Choice" configuration. Fixed. (IN-3600)
- Memory fragmentation issue with bioserver. Fixed. (IN-2686)
- "create-date" field got erased if mail was sent to group of users. Fixed. (IN-3502)
- After upgrade to v2017.2, some HTML files formatted incorrectly. Fixed. (IN-3504)
- Changes in refresh queue not received by community users. Fixed. (IN-3533)
- Opening large rundown with refresh trait caused graying out of toolbar icons. Fixed. (IN-3624)
- Stories with low link counts and "story open" errors in PRELIM queues. Fixed. (IN-3834)
- MOS drag-and-drop placeholder operation now enabled if MOS item subsequently modified with MOS Gateway 4.5 or mosItemReplace workflow. (IN-1082)
- Story grouping would stop working after printing a selection of stories. Fixed. (IN-3664)
- Client didn't properly display order of sorted remote queue when user entered new story. Fixed. (IN-3820)
- Connect to Service dialog would go to Login screen instead of prompting for password. Fixed. (IN-3503)

### Changes between 2017.1 and 2017.2

- System renamed: Avid iNEWS → MediaCentral Newsroom Management; Newsroom Management Servers; iNEWS Workstations (client machines retain the iNEWS name).
- Sluggish typing in stories with many hyperlinks. Fixed. (IN-1828)
- Ctrl-F search involving date fields might cause UI freeze. Fixed. (IN-176005)
- dbrestore of version 2.1 database failed. Fixed. (IN-3387)
- Font and point size changed when overwriting production cue text. Fixed. (IN-1578)
- Error when logging out with Show Versions workspace open. Fixed. (IN-2260)
- Backup Command server was monitor loaded instead of Primary Command server. Fixed. (IN-3386)
- NRCS Tool in Media Composer didn't display main level directory in iNEWS. Fixed. (IN-3270)

### Changes between 6.1 and 2017.1

- External user unable to log in for several minutes after user traits modified. Fixed. (IN-2762)
- Modifying story body or form caused video items in production cues to be deleted and re-added. Fixed. (IN-2530)
- Multiple/jumping green line fixes in Command when editing items in story with items being played. (IN-2837)
- Problems dragging and docking toolbars with multiple workspaces open. Fixed. (IN-1579)
- bioserver could terminate unexpectedly after server reboot in A/B system. Fixed. (IN-2677)
- Client crashes if all stories copied from queue to local database. Fixed. (IN-2574)
- iNEWS CTC (CTMS adapter) would not reconnect to MediaCentral if MediaCentral restarted. Fixed in MediaCentral 2.10.2. (IN-2920)
- `W_BINDBUS` no longer used; mediaindex now uses `W_ACS_GATEWAY_HOST /<IP>` and `W_ACS_GATEWAY_PORT /9900`.
- `dbrestore` new `-u` flag: restores story more than once even if UUID present; new UUID assigned if UUID conflicts.

---

## Documentation Errata

### Setup Configuration Guide

In past versions of the MediaCentral Newsroom Management SCG, the Forms chapter section erroneously identified the product as MediaCentral | Cloud UX. It should be MediaCentral | UX. Fixed in section now titled "MediaCentral | UX Integration".

---

## Known Issues and Limitations

### iNEWS SendMail

With new security measures in the Gmail relay server, mail from iNEWS through sendmail will be rejected.

**Workaround:** Configure the Gmail SMTP relay server for sendmail. See "Configure Gmail SMTP Relay Server for Sendmail" section below.

### MAP Story Limit

The limit of devices for a rundown in the MAP story is 20. Having more than 20 devices configured for a rundown in the MAP story will cause a client crash when attempting to open the Monitor dialog.

### CloudUX Integration

- If a Newsroom Management username is used on two or more different computers to log into CloudUX, it will only show as a single session in MediaCentral Newsroom Management.

### Edit Locks

- Information about edit locks may contain a session identifier if the username is not known (locks acquired through inewsctc API).
- Edit lock information may be incorrect if the user signs off without releasing locks and reuses the same session.

> **Note:** The new user does not have the edit lock, and the lock will expire in its pre-defined timeout.

### RedHat / CentOS 7.5

- Autostop of misconfigured services does not work in RedHat/CentOS 7.5 environments.

### Netstation

- Fields carried over from Avid Netstation template are skipped from indexing. (IN-3269)

### Chinese IME Mode

- Avid recommends not using key strokes in Chinese IME mode.

### Localhost Server

- Use localhost IP address `127.0.0.1` instead of alias `localhost` for telnet connections to localhost server.

### Console

- iNEWS console is no longer supported by default. For RH7 serial console setup, see the Red Hat documentation.

### Diskcopy Reports CRITICAL Error

- If diskcopy reports `[CRITICAL] first block mirror error`, check the end of the log. `"Successful – Disk is mirrored"` means the process completed successfully; the error only indicates empty blocks that could not be copied.

### Divehi Support

- Sometimes the last line of text aligns to the left for a right-aligned story with the new richedit control.

### Chinese Localization Issue

- Chinese input method DaYi cannot be used to create new queues or folders.

### German Localization Issue

- Ctrl+Shift+Right Arrow incorrectly marks a word beginning with a German Umlaut (ä, Ä, ö, Ö), regardless of case.

### Local Database

- To download print styles and story forms to a local computer for offline use, the user must have Read Access to the iNEWS System directories. This is by design.

### Windows 7 and Windows 8 with UAC Enabled

- When UAC is on, users cannot drag-and-drop text from outside applications (e.g. Microsoft Word) into iNEWS. **Workaround:** Use Ctrl+C / Ctrl+V.

### External Users (LDAP)

External users are not compatible with: iNEWS Workstations earlier than 4.0.0; FTP clients (teleprompters, NewsCutter's NRCS Tool); COM clients (NewsCutter's NRCS Tool, Instinct, MOS Gateway's roStorySend and mosObj); Web Client; Web Access; Interplay Central earlier than 1.3.0.

### Plug-ins

Some plug-ins (e.g. AMG Journalist) will not paint correctly in iNEWS. **Workaround:** Create `ActiveXRedraw.txt` in the iNEWS executable directory containing the CLSID of the plug-in. Reload iNEWS.

### UNC Paths

- UNC paths with spaces no longer work correctly in the iNEWS client (server-side URL change in iNEWS 3.4.2).
- Intelliscribe printing: configure at 300 DPI with "Enhanced Features" disabled.
- Vertigo Xmedia + Aurora Assignment List (v7+) on same client: Xmedia splash screen can cause Xmedia tree to be inaccessible. **Workaround:** Rename or remove `skinCrafter3_vs2008.dll` from Assignment List installation directory.

### iNEWS Web Services API

- WSAPI cannot be undeployed via Tomcat management interface when Tomcat is running on Windows. **Workaround:** Stop Tomcat; delete `inewswebservice` file and folder from Tomcat webapps directory; place new `.war` file into webapps; start Tomcat. (Undeployment via management interface works correctly on Linux.)

### Multiple Monitors

- Application maximised when closed reopens on primary monitor regardless of which monitor it was on.
- Moving from dual to single monitor can result in application opening to a screen that no longer exists. **Workaround:** Right-click iNEWS in taskbar, select Move, press an arrow key, then move the mouse.

### Macros and Keystrokes

- Some PCs upgraded from IE6 to IE7/8 experience issues with macros performing rapid successive functions. **Workaround:** Use K_WINDOW token in macro or add `{pause <#>}` statements.

---

## Configure Gmail SMTP Relay Server for Sendmail

> **Warning:** Before modifying sendmail configuration files, you must add the following lines to `/etc/mail/sendmail.mc` to preserve the iNEWS mailing configuration:

```
define(`ALIAS_FILE', `/site/.mail/aliases')dnl
dnl
MAILER_DEFINITIONS
################################# iNEWS Server Mailer
R$+<@LOCAL>      $@$1                   delete LOCAL
R$+<@$-.LOCAL>   $@$1<@$2>              delete .LOCAL
R$+<@$=w>        $@$1                   delete local hostname
R<@>             $n                     errors to mailer-daemon
CPnews
Mnews,      P=/exc/newsmail, F=DFhlmnsu, S=news, R=news, A=newsmail -j
$j $f $u
$news
################################# iNEWS Server Mailer
dnl
dnl
LOCAL_NET_CONFIG
################################# iNEWS Server Mailer
R$*<@local.news.>  $#news@$wS:$1    user@local.news
################################# iNEWS Server Mailer
dnl
```

### Install Dependencies

```
# yum install cyrus-sasl-plain
```

### Generate Gmail Application Password

1. Log in to your Gmail account and go to the Manage your Google Account page.
2. Go to the Security page.
3. Enable 2-Step Verification if not already enabled.
4. Click on the App passwords link.
5. In the Select app drop-down menu, select Mail.
6. In the Select device drop-down menu, select Other.
7. Enter the name for your application, such as `iNEWS`.
8. Click GENERATE.
9. Copy your password from the pop-up window.

### Update Sendmail Configuration

Add the following lines to `/etc/mail/sendmail.mc` **before** the `MAILER(smtp)dnl` line:

```
define(`SMART_HOST',`[smtp.gmail.com]')dnl
define(`RELAY_MAILER_ARGS', `TCP $h 587')dnl
define(`ESMTP_MAILER_ARGS', `TCP $h 587')dnl
define(`confCACERT_PATH', `/etc/pki/tls/certs')dnl
define(`confCACERT', `/etc/pki/tls/certs/ca-bundle.crt')dnl
define(`confAUTH_OPTIONS', `A p')dnl
define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
TRUST_AUTH_MECH(`EXTERNAL DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
FEATURE(`authinfo',`hash -o /etc/mail/authinfo.db')dnl
```

### Modify the AuthInfo File

Add the following line to `/etc/mail/authinfo`:

```
AuthInfo: "U:root" "I:EMAIL" "P:PASSWORD"
```

Replace `EMAIL` and `PASSWORD` with your actual Gmail email address and application password.

### Finalise Configuration

Run the following commands as root:

```
# cd /etc/mail
# make
# systemctl restart sendmail.service
```

---

## Technical Support

- Online support: [www.support.avid.com](https://www.support.avid.com)
- North America: 800-949-AVID (800-949-2843)
- International: 978-275-2480
