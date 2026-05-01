---
product: mediacentral-newsroom-management
product-area: newsroom
version: "2020.4"
doc-type: readme
source: pdf
source-file: MCNM_v2020.4_ReadMe.pdf
confidentiality: public
date-added: 28/04/2026
last-updated: 28/04/2026
status: superseded
superseded-by: "2020.4.1"
products-affected: [mediacentral-newsroom-management, mediacentral-mos-gateway, mediacentral-command, mediacentral-data-receiver, fast-text-search]
feature-tags: [readme, compatibility, install, upgrade, bug-fixes, limitations, https, multi-site, kafka, systemd, inewsctc, viddur, txnet, rxnet, wsapi, ldap, azure]
---

# MediaCentral | Newsroom Management — ReadMe v2020.4

**Source PDF:** MCNM_v2020.4_ReadMe.pdf  
**Document date:** 19/04/2020  
**Internal version:** v7.6 (from copyright footer: "MediaCentral | Newsroom Management v2020.4 (v7.6) ReadMe • 19 April 2020")  
**Online Support:** <http://www.avid.com/onlinesupport>

> This ReadMe is a cumulative document covering Newsroom Management (formerly Avid iNEWS) versions
> from v2017.1 (iNEWS) through v2020.4. For additional change information not contained here, Avid
> directs users to older iNEWS ReadMe files.

> **Source note:** The introduction states: *"Since this release of MediaCentral Newsroom Management
> will be more widely distributed than previous versions, some notes on important features and changes
> have been brought forward from previous ReadMe documents. Notes that are less important were not
> brought forward."* This means the historical sections are a curated, not exhaustive, summary.

---

## Revision History

| Date | Changes |
|---|---|
| 19 Apr 2020 | Added changes for 2020.4 |
| 28 Jan 2020 | Added changes for 2019.9.2 |
| 12 Dec 2019 | Added changes for 2019.9.1 |
| 16 Sept 2019 | Added changes for 2019.9 |
| 19 June 2019 | Added changes for 2019.6 |
| 27 Feb 2019 | Added changes for 2019.2 |
| 14 Dec 2018 | Added changes for v2018.11 |
| 10 Dec 2018 | Added changes for v2018.9.2 |
| 6 Oct 2018 | Added changes for v2018.9.1 |
| 22 Sept 2018 | Added changes for v2018.9 |
| 27 Aug 2018 | Added change for v2018.6.1 |
| 26 July 2018 | Added changes for v2018.6 |
| 19 December 2017 | Added changes for v2017.2 release, inc. product rebranding |
| 16 September 2017 | Initial v2017.1 version |

---

## Compatibility Notes and Issues

### Workstation/Server Compatibility Chart

Client rows vs. server column versions. A = Allowed, NA = Not Allowed.

| iNEWS Client \ Server | 4.0 | 4.5/6 | 4.7/1 | 5.0–2 | 5.3–6 | 6.x | 2017.x | 2018.x | 2019.x | 2020.x |
|---|---|---|---|---|---|---|---|---|---|---|
| 3.4/5/6 | A | A | A | A | A | A | A | A | A | A |
| 3.7 | A | A | A | A | A | A | A | A | A | A |
| 4.0 | A | A | A | A | A | A | A | A | A | A |
| 4.5/6 | NA | A | A | A | A | A | A | A | A | A |
| 4.7/1 | NA | NA | A | A | A | A | A | A | A | A |
| 5.0–2 | NA | NA | NA | A | A | A | A | A | A | A |
| 5.3–6 | NA | NA | NA | NA* | A | A | A | A | A | A |
| 6.x | NA | NA | NA | NA | NA* | A | A | A | A | A |
| 2017.x | NA | NA | NA | NA | NA | NA | A | A | A | A |
| 2018.x | NA | NA | NA | NA | NA | NA | NA | A | A | A |
| 2019.x | NA | NA | NA | NA | NA | NA | NA | NA | A | A |
| 2020.x | NA | NA | NA | NA | NA | NA | NA | NA | NA | A |

> \* Due to compatibility issues with the Clear AIR DATE feature on clients running v5.3.x–5.5.x, these
> versions are not supported on servers running v5.0–5.2 or earlier.

> For compatibility with server versions earlier than 4.0, see ReadMe files for 2019.x versions or earlier.

### iNEWS Workstation

Compatible with Windows 10 only. Not officially supported on any other Windows operating system.

### Newsroom Management Server

Qualified with Red Hat Enterprise Linux 7.7 and 7.5; CentOS 7.7 and 7.5. Avid recommends keeping
servers up-to-date with the latest patch to avoid Linux kernel vulnerability issues.

### MediaCentral | Newsroom Community

- Community communication protocol was modified in a previous iNEWS version to allow databases
  larger than 16 GB. This broke compatibility with iNEWS Server v3.4.4 and earlier.
- iNEWS 3.4.5 still supports Community communication for systems with a small database; for systems
  with large databases, Community communication requires iNEWS 3.4.5 or later.
- All 2.x and 3.x servers should be upgraded to at least 3.4.5 when a large database server is added
  to the community.
- When a community includes a 5.x system, any 3.x or earlier should be upgraded to 3.7; any 4.x
  systems should be upgraded to 4.7.

> Note: iNEWS 3.7 and iNEWS 4.7 releases support 50 Community members (up from 24). Beginning with
> iNEWS 6.0, 255 Community members are supported (up from 50).

### External Users (LDAP)

- LDAP TLS tested for this version.
- Beginning with v4.x, Avid iNEWS server allows user authentication via Windows Active Directory;
  however, external users are NOT compatible with:
  - iNEWS Workstations earlier than 4.0.0
  - FTP clients: teleprompters, NewsCutter's NRCS Tool
  - COM clients: NewsCutter's NRCS Tool; Instinct; MOS Gateway's roStorySend and mosObj
  - Web Client
  - Web Access
  - Interplay Central client earlier than 1.3.0

### Fast Text Search (FTS)

- FTS version 4.0.3 or later required for iNEWS Server v5.1 and later, on both Windows Server 2016
  and 2019.
- FTS 4 not supported on iNEWS Server versions earlier than 3.5. A full re-index is required when
  upgrading to FTS 4.
- FTS is compatible in a virtualised environment when the guest OS meets the application's minimum
  system requirements.

### Media | Index

- iNEWS v5.2 or later required.

### Command

- Compatible with Command v1.0.1 or later.
- Command v3.2 required for the iNEWS VID-DURATION feature.

### MOS Gateway

- Compatible with MOS Gateway 4.0 or later.

### Console Multiplexer

- Requires Console Multiplexer (MUX) software v2.0 (on the iNEWS installation CD).
- Cannot currently display Unicode characters; use a terminal emulator with Unicode support if required.

### Data Receiver

- Compatible with Data Receiver v1.8 or later.
- iNEWS 3.0 Server saves data as well-formed XML; Data Receiver SFCs must be updated to deliver
  well-formed XML. Field tags changed from `<f id="TYPE"></f>` to `<string id="TYPE"></string>`.

### Instinct

- Compatible with Avid Instinct v1.1 and v1.6 or later.
- After installing iNEWS Workstation software on an Instinct computer, manual registration of the
  Instinct COM control is required:
  `Start > Run > regsvr32 "C:\Program Files\Avid\Avid iNEWS Instinct\iNewsCOMU.dll"`

### NewsCutter

- Compatible with NewsCutter NRCS Tool v6.1.5 or later.
- After installing iNEWS Workstation software on a NewsCutter, manual registration of the
  NewsCutter COM control is required:
  `Start > Run > regsvr32 "C:\Program Files\Avid\Avid NewsCutter\iNewsCOMU.dll"`
- If both NewsCutter and Instinct are on the same machine, register the Instinct COM control only.

### Servers and Operating Systems Compatibility Matrix

| Newsroom Version | Build | RHEL 6.5 | RHEL 6.7 | RHEL 7.2 | RHEL 7.3 | RHEL 7.4 | RHEL 7.5 | RHEL 7.7 | CentOS 7.3 | CentOS 7.4 | CentOS 7.5 | CentOS 7.7 | WinSrv2008R2 | WinSrv2016 | WinSrv2019 | Win10Pro (64-bit) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MCNM 2020.4 | — | | | | | | X | X | | X | X | | | X | X | X |
| MCNM 2019.9.x | 7.5.x | | | | | | X | | | X | | | | X | | X |
| MCNM 2019.9 | 7.5 | | | | | | X | | | X | | | | X | | X |
| MCNM 2019.6 | 7.4 | | | | | X | | | | X | | | | X | | X |
| MCNM 2019.2 | 7.3 | | | | X | | | | X | | | | | X | | X |
| MCNM 2018.11 | 7.2 | | | X | | | | | X | | | | | X | | X |
| MCNM 2018.9 | 7.1 | | | | X | | | | X | | | | | X | | X |
| MCNM 2018.6 | 7.0 | | | X | | | | | X | | | | | X | | X |
| MCNM 2017.2 | 6.3 | | X | X | | | | | X | | | | | X | | X |
| iNEWS 2017.1 | 6.2 | | X | X | | | | | X | | | | | X | | X |
| iNEWS 6.1 | 6.1 | X | X | X | | | | | X | | | | X | | | X |
| iNEWS 6.0 | 6 | X | X | X | | | | | X | | | | X | | | X |

> WinSrv columns apply to FTS, MOS Gateway, and Data Receiver. Win10Pro applies to iNEWS Workstation.

> **Note not shown in matrix:** Windows Server 2019 with Tomcat 7.0 is qualified for WSAPI; CentOS 7.7
> with Tomcat 7.0 is qualified for WSAPI and FileLink server.

---

## Downgrade Notes & Issues

- To downgrade from 2020.4 to versions prior to 2017.2 (i.e., to 6.1): iNEWS packages must be
  uninstalled manually. Contact Avid Customer Support.
- Standard downgrade from 2020.4 to 2019.9.x, 2019.6, 2019.2, 2018.11, 2018.9.x, 2018.6, 2017.2,
  or 2017.1: After running the downgrade command, delete `/etc/systemd/system/iNEWS.service` before
  rebooting.

---

## Install & Upgrade Notes and Issues

### 2020.4

- Upgrading to 2020.4 from previous versions is a standard upgrade.
- **iNEWS CTC:** For load and redundancy support, multiple CTC instances should be on the server.
  Avid recommends running up to `#cores -2` instances. See the CTMS Integration chapter of the
  Setup Configuration Guide.
- Beginning with v2020.4, Newsroom Management features HTTPS support for both Kafka and
  MediaCentral searches (requires v2019.9.5 or later). After upgrading to v2020.4, the previous
  version of the Kafka story should be removed and the `mediaindex` service restarted.

### 2019.x

- Upgrading to 2019.x from previous versions is a standard upgrade.

### 2018.x

- A database conversion is required for upgrades from v2017.2 to v2018.6 or later.
- Prior to upgrading, run `dbdump` to make a backup:
  `#dbdump Cv -f + |gzip > /tmp/wavd.dbdump.gz`
- **12-step conversion procedure for single server A systems (v2017.2 → v2018.6):**
  1. Copy install script to server via WinSCP, place in `/home/so/`
  2. Take server offline: `# offline`, `# logout all`, `# shutdown`, `# reboot`
  3. Log back in as SO user, navigate to install folder and run: `./install upgrade`, `# reboot`
  4. Log back in as SO user, update dictionaries: `# dictionary -update /site/dict`, `# dictionary -update /site/web`
  5. Switch to superuser, execute: `# maketab -i`, `# makemontab -i`
  6. Reconnect iNEWS disks (command varies by server configuration)
  7. Look for: "Connect successful for WAVD-A, starting servers..."
  8. Clear and initialise database: `# finit -`, `# dbgen -`
  9. Restore database: `# gunzip < /tmp/wavd.dbdump.gz | dbrestore dpixv -f + -i -M`
  10. Bring system back online: `# startup`
  11. Install Newsroom Management 7.0 client and log in normally
  - For dual-server systems: perform conversion for server A first, then repeat for server B.

### 2017.2

- To upgrade from previous versions to 2017.2: `./install upgrade` from the folder with the installer.
- Verify install file is executable; if not: `chmod +x install`

### 2017.1 — Logging Messages

- After moving to rpm installer, logging configuration was moved from `/etc/rsyslog.conf` to
  `/etc/rsyslog.d/00-iNEWS.conf`.
- To avoid duplicate log messages on upgraded systems, edit `/etc/rsyslog.conf` and remove:
  ```
  local0,local1,local2,local3,local4,local5,local6.* /var/log/iNEWS/iNEWS.log
  local0,local1,local2,local3,local4,local5,local6.* /dev/console
  ```

---

## New Features

### For MediaCentral | Newsroom Management v2020.4

**HTTPS Support for MediaCentral**  
- Organisations integrating with MediaCentral Newsroom Management regarding Search HTTP
  authentication (introduced in MediaCentral Cloud UX v2019.9.5) must address:
  - Using Newsroom Management v2019.6 or earlier: authentication must be disabled on the
    MediaCentral Cloud UX side.
  - Using Newsroom Management v2019.9 with the Search HTTP Interface instead of Kafka:
    authentication must be disabled on the MediaCentral Cloud UX side.

**Community Reconnect Implementation**  
- Beginning with this version, iNEWS workstations are notified about community disconnects by the
  server, and will try to re-establish connection. If that fails, the message "Lost connection to
  community system \<community system name\>" is displayed.

**VID-DUR Field**  
- Newsroom Management server enhanced to extract video duration information from within the story
  body and populate the VID-DUR field in Composite and Device-Event queues.

**New Environment Variables**  
- `EnableLogging`: enhances client logging (see Appendix D of the Setup and Configuration Guide)
- `RESTARTDURINGPOLLINGPERIOD`: timed action servers — changes immediately applied (see Appendix D)
- `TXDCKEEPALIVE`: TXNET keep-alive — sends test message at configurable intervals to maintain TXNET
  data channel connectivity. `TXDCKEEPALIVE=0` disables. Minimum value 20 seconds; recommended
  setting is at least half the firewall timeout interval.
- `RXDATAPORTRANGE=<low port>..<high port>` — e.g., `RXDATAPORTRANGE=10000..10010`: sets port range
  for rxnet connection. If not present or incorrectly formatted, a random port is used. Minimum ports
  configured must at least equal the number of sessions configured in `/site/config` for the rxnet server.
- Story UUID support: `W_INDEX_STORYUUID` added to Words Dictionary `/site/dict/words` (Appendix C
  of the Setup and Configuration Guide) for MediaCentral and Kafka indexes.

**MOS**  
- Size checking of MOS objects dragged-and-dropped into stories is now done to ensure size does not
  exceed what the monitor server supports.
- New `MOS-objID` field added to capture information in the `<mosobjid>` tag from MOS communication.

**Increasing Bioserver Cache**  
- Bioserver cache can be increased to improve cache hit ratio for blocks in the current rundown. See
  "Increasing Bioserver Cache" in Chapter 20 of the Setup and Configuration Guide.

---

### For MediaCentral | Newsroom Management v2019.9

**Multi-Site Support**  
- Newsroom Management Server now supports multi-site connectivity.
- CloudUX clients can access a Newsroom Management Server connected to a remote MediaCentral server
  through MediaCentral multi-site connections. Only one CTC is required (CTC 2 is removed from
  multi-site configuration).
- To enable: add `ENABLE_REMOTE_AVAILABILITY=1` to the inewsctc file for the MediaCentral server
  making the connection.

**Kafka Search Support**  
- Newsroom Management Server now supports Kafka Search for multi-site environments:
  - Search Agent writes to a Kafka queue (of the same CloudUX) instead of the Search queue
  - Local Search reads from the Kafka queue
  - Remote Search also reads from the Kafka queue if the NM system is linked to CloudUX
  - Other CloudUX clients can search content on the NM system
- Kafka queue `SYSTEM.SCHEMAS.KAFKA` must be created manually.
- Two settings in `/site/dict/words` must be adjusted:
  - `W_SEARCHTYPE /kafka`
  - `W_MCS_BASE_URL /https://<CloudUX name>:<port optional>`

**Enhanced Server Services**  
- systemd introduced to maintain services on the server, improving service availability:
  - All services managed by systemd can auto-restart if they crash or exit abnormally (except bioserver)
  - Watchdog monitors and restarts hung servers (workserver, inewsctc, mediaindex, ftsindex)
- Bioserver: previously managed by upstart (file at `/etc/init.d/iNEWS`); now managed by systemd
  (file at `/usr/lib/systemd/system/inews-bioserver.service`). Alias `iNEWS.service` retained.
- Bioserver does not support auto-restart (must be manually connected and configured after startup).
- Commands: `systemctl start/stop inews-bioserver.service` or `systemctl start/stop inews.service`
  or `service inews start/stop`
- Stopping `inews-bioserver.service` kills all dependent servers (dbserver, workserver, NewsWeb.fcgi)
- Connect/Reconnect system units: `inews-dbserver.service`, `inews-msgserver.service`,
  `inews-cmrserver.service`, `inews-timerserver.service`, `inews-ntfyserver.service`,
  `inews-workserver.service`
- Startup/boot system units (all depend on `inews-bioserver.service`): `inews-action@.service`,
  `inews-distribution@.service`, `inews-ftsindex@.service`, `inews-ftsseek@.service`,
  `inews-inewsctc@.service`, `inews-keyword@.service`, `inews-mailserver@.service`,
  `inews-mediaindex@.service`, `inews-parallel@.service`, `inews-seek@.service`,
  `inews-txnet@.service`
- Socket/service pairs for rxnet/ismessage/nxserver/tftp: `inews-ismessage.socket`,
  `inews-nxserver.socket`, `inews-rxnet.socket`, `inews-tftp.socket`
- Rxnet custom configuration: copy `inews-rxnet.socket` and `inews-rxnet@.service` for each custom
  config, add `ReusePort=true` to both socket files, specify `ListenStream` IP addresses.
- Start/stop/restart utilities: `-f` flag removed (systemd forcibly kills processes after 90 seconds).
- Logs per service; found in `/var/log/iNEWS/` folder.

**Workstation Improvements**  
- New option to change the size of the Show Timing Clock: `Format > Clock Size`
- New toolbar displays the name of the active queue next to the Show Timing Clock
  (View > Queue Path; font customisable via Format > Font)
- Toolbar settings are saved to the workstation's registry, not the user's profile.

---

### For MediaCentral | Newsroom Management v2019.6

- New environment variable for inewsctc: `CTCDEBUG` — options: trace, debug, info, warning, error.
  Default value is `trace`.
- Two new local print options:

| Option | Parameter Value | Description |
|---|---|---|
| WinAutoPageBreak | Yes \| No | Controls page-break enforcement; default Yes |
| WinColorScript | Yes \| No | Uses colour printing in script printouts (green/red/blue for closed captioning, presenter instructions, machine control). Default No |

- AIWS session re-instantiated to allow NRCS tool to connect to Newsroom Management; must be added
  to `/site/config` in both the Host section and in an Instinct (AIWS) Sessions section.
- Improved HTML5 plugin support: Newsroom Management now supports parameters in the URL for plugins.
- Calendar in Newsroom Management now honours the First Day of Week Calendar setting of the Windows
  workstation.
- Grouped story numbering in the PAGE column is now configurable via two new words in
  `/site/dict/words`:
  - `W_GSEPARATOR` — separator character (`/-` for hyphen default, `/.` for period)
  - `W_GENUMERATOR` — enumerator character (`/A` alphabetic default, `/#` numeric, `/##` with zero
    padding, `/###` with two zero padding)

---

### For MediaCentral | Newsroom Management v2019.2

- New support for the Maestro HTML5 MOS plugin. See HTML5 Plugins in the Setup Configuration Guide.

---

### For MediaCentral | Newsroom Management v2018.11

- New wire profile option called `join` for Data Receiver updates. See "Adding a Wire – Data Receiver"
  and "Wire Profile Options" in the Setup Configuration Guide.
- Support for `/site/config` session for a Data Receiver wireserver (Appendix B of SCG).
- Custom fields in MediaCentral Search now supported.
- iNEWS CTC supports new notifications for stories, queues, and folders with a richer set of
  information. CTC needs to be configured on each server (A/B/C) for changes on all servers.

> Note: For performance reasons, changes by monitor will not result in notifications.

---

### For MediaCentral | Newsroom Management v2018.6

- HTTPS support for file linking (Chapter 18 of the Setup Configuration Guide; also see
  TomcatInstallFileLink.pdf included with the upgrade/install files).
- Expanded centralised indexed searches from MediaCentral | Cloud UX integration.
- Network recovery when iNEWS Workstation loses connection: users receive a dialog box offering
  to reconnect; followed by an option to restore backed-up stories.
- WSAPI qualified to run under Windows Server 2016 with Tomcat 7.0 and Java version 8.
- New UID for production cues in NSML: assigns a new attribute uid to each production cue.
- New licensing agent for all session types (IN-3448).
- New environment variable `USE_AUTHENTICATION_BY_IP=0/1` — enables service to authenticate with
  MCUX or MCCUX server for inewsctc connection.

---

### For MediaCentral | Newsroom Management v2017.2

- RXDATAPORTRANGE environment variable: controls port range for RXNET connections.
  Syntax: `RXDATAPORTRANGE=<low port>..<high port>` (e.g., `RXDATAPORTRANGE=10000..10010`)
- Central Index enhancements: custom fields from NSML, grouping, improved labels (IN-3092).
- UUIDtraits utility — checkpoint online flag added. Commands:
  - `-c` check integrity and show issues
  - `-f` fix integrity issues
  - `-o` use checkpoint partition while checking/fixing
  - `-p` print entire UUID table
  - `-s UUID` search story(file id) by UUID
- iNEWS CTC now connects to multiple MediaCentral systems. Settings moved from `/site/dict/words`
  (W_ACS_GATEWAY_HOST, etc.) to individual inewsctc files under `/site/env/`. For each MediaCentral
  connection, a separate inewsctc file is configured. Leave W_ACS_GATEWAY_HOST and W_ACS_GATEWAY_PORT
  in words for media index functionality. Logs per service in `/var/log/iNEWS/` folder.

---

### For iNEWS v2017.1

**iNEWS with Azure**  
- iNEWS supports integration with Microsoft Azure. Avid iNEWS in Azure is a hybrid deployment (some
  services on VMs in Azure, others on-premise). See *iNEWS NRCS with Microsoft Azure Integration Guide*.

**FTPS Support**  
- FTP over SSL support added. See the *iNEWS FTP/FTPS Server Protocol Specification* document.

**Media | Index Searching**  
- This version supports searching custom iNEWS metadata via Media Index using a central index. A
  re-index is required to search on custom fields. See the Media | Index Integration chapter of the
  *Avid iNEWS Setup Configuration Guide*.

---

## Changes Between Versions

### Changes between 2019.9.2 and 2020.4

- iNEWS workstations crashed intermittently, especially on machines with Maestro plugins — fixed. IN-5346/IN-5402
- inewsctc accumulated memory usage with number of requests — fixed. IN-5497
- News stories in Cloud UX created using Chinese characters might not appear in queue until after logout/login — fixed. IN-5558
- iNEWS CTC RAM usage: service now releases memory when OS requests it. See Chapter 20 of SCG for
  memory allocation instructions. IN-5799
- Saving a story to a local server failed if community session in another workspace was unavailable — fixed. IN-5892
- Story edit lock not auto-renewed if another story was edit-locked in a second workspace — fixed. IN-5893
- After saving a story using TXNET/RXNET, the "S" sequence was missing from the story — fixed. IN-5451
- After reboot and running `connect`, Newsroom Management sometimes showed dependency messages stating
  services failed to start — fixed. IN-5657
- Requested story form containing a reference to an absent list/form in SYSTEM directory caused CTC to
  return a 404 error — fixed to return story form with empty list. IN-5670
- Following upgrades to v2018.11.x, some sites with firewalls closing socket connections after a period
  of inactivity resulted in TXNET/RXNET connection issues — fixed with RXDATAPORTRANGE and TXDCKEEPALIVE
  environment variables (documented in Appendix D of SCG). IN-5732
- RXNET would open the database if closed when an FTP client attempted to connect to an offline server,
  preventing ONLINE commands from running — fixed. IN-5839
- iNEWS Workstations following Show Timing did not always update with the sync timing of the controlling
  workstation — fixed. IN-5851
- Client software might terminate when localtimeout expired and a field data warning dialogue was open — fixed. IN-5450
- Issues related to losing stories out of iNEWS — fixed. IN-5852

### Changes between 2019.9.1 and 2019.9.2

- MOS item removed when saving story with the MediaCentral Cloud UX Rundown app — fixed. IN-5768
- "Failed to save story and release edit lock" message when saving via Rundown app — fixed. Requires
  MediaCentral | Cloud UX v2019.6 or later. IN-5769, MA-5024
- Saving a story with "modify-dev" field in Rundown app caused inewsctc crash — fixed. IN-5771
- Error when saving stories in Rundown app in a queue with action job configured — fixed with new API
  to enable creation of story with editlock. Requires MediaCentral | Cloud UX v2019.10 or later. IN-5770, MA-5526

### Changes between 2019.9 and 2019.9.1

- Production cue disappeared when inserting the cursor immediately left of the production cue grommet,
  clicking N, P, or CC, and saving — fixed. IN-5727
- Assigned channel cleared after monitor was loaded — fixed. IN-5652
- "Renumber all" did not provide unique page numbers when the queue contained BREAK stories — fixed. IN-5607
- Story group indicator disappeared when the user changed the queue form of the current viewing
  queue — fixed. IN-5566

### Changes between 2019.6 and 2019.9

- User with Newsroom Management credentials on a Windows command line FTP client could still log in
  when the news database was offline — fixed. IN-5454
- Action server crashed producing a core image file when the joblist was modified and saved in the
  database — fixed. IN-5202
- Bioserver disconnects on an ABC system causing incorrect system types — fixed. IN-169213
- Loading a playlist to Command caused monitor server on the NM system to terminate with 'out of
  memory' error — fixed. IN-4800
- Monitor server terminated when receiving an update to a story with a large MOS attachment for Maestro
  exceeding the size limit — fixed. MOS_SIZE_LIMIT=16333 environment variable available to flag
  oversized items with a monitor error when monitor is turned on. IN-5110
- NM inewsctc device had to be manually restarted often — fixed. IN-4927
- New users did not get updates in re-fresh queue — fixed. IN-5403
- iNEWS workstations crashed intermittently with Maestro plugins — fixed. IN-5346/5402

### Changes between 2019.2 and 2019.6

- `force` utility missing from utilities list in `/exc/` server folder — fixed. IN-4973
- Modifying a field in a story auto-assigned to a non-default channel in Command after monitor load and
  channel group lock caused a duplicate clip in Command — fixed. IN-4837
- NRCS Tool connections used "general" session rather than non-licensed "aiws" session — fixed. IN-4199
- With UUID introduction in v6.0, stories copied to other queues which were assigned new UUIDs were no
  longer linked to corresponding stories in the original queue — fixed. IN-4618
- Presenter (P), machine control (M), and closed captioning (CC) text printing in grey scale instead of
  colours — fixed. IN-4806
- TXNET polling failed to put order list to destination when all stories in the queue were deleted — fixed. IN-4900
- Modifying a Viz production cue from an edit-locked story: warning is now shown and the story is not
  opened in browser mode. IN-5103
- Loud beeping sound from iNEWS workstation PC speaker when accessing Maestro plug-in — fixed. IN-4998
- inewsctc did not reflect group changes on the fly for SYSTEM.GROUPS queue — fixed. IN-5082
- inewsctc would sometimes lock block 1 (the Directory ISAM) — fixed. IN-5016
- Users unable to log in after workserver utility stopped on both news servers — fixed. IN-4801
- Fullwidth ampersand (&) in a story caused crash of iNewsCOMU.dll in MOS Gateway — fixed. IN-4701
- Story modification would sometimes record the wrong user ID in MODIFY-BY field — fixed. IN-4479

### Changes between 2018.11 and 2019.2

- Using `sendpassword` job list command to send a key-locked story via txnet doesn't work — fixed. IN-4611
- bioserver goes to `911$` prompt unexpectedly — fixed. IN-4759
- Multiple placeholders created for the same story — fixed. IN-4524
- Show timing displayed `**:**` on countdown clock when Play key was pressed in Command for a video clip
  just prior to story being sync-timed in iNEWS — fixed. IN-4621
- Discrepancy between client and server calculation of audio time — fixed. IN-4739
- Monitor server could sometimes terminate with "Monitor exiting: Out of memory (proc_mosItemReplace,0):"
  in iNEWS logs — fixed. IN-4800

### Changes between 2018.9.2 and 2018.11

- Channel assignments in stories with production cues not updating properly from newsroom client — fixed. IN-4248, IN-4204
- Error core file generated on server when a login was attempted with a username longer than 20
  characters — fixed. IN-4222

### Changes between 2018.9.1 and 2018.9.2

- Using `sendpassword` job list command to send a key-locked story via txnet didn't work — fixed. IN-4611
- TXNET sends production cues with uuids even when earlier NSML formats are specified in the job list
  for the txnet device — fixed. IN-4575

### Changes between 2018.9 and 2018.9.1

- Story creation error displayed when a production cue was added via the CG Titling tool — fixed. IN-4326

### Changes between 2018.6.1 and 2018.9

- Stories with blank create-date or modify-date in client would not index — fixed. IN-4198
- Sending email via an action server (mailto) would not send story body data — fixed. IN-4280
- "Configure" program usage updated with removal of obsolete items. IN-4153
- `W_MCS_BASE_URL /https://mediacentralsearch/` changed to `W_MCS_BASE_URL /https://mediacentralsearch/search` in iNEWS server default `/site/dict/words`. IN-4153

> **Documentation Errata for v2018.9:** In the v2018.6 Setup Configuration Guide, page 469, the
> `W_MCS_BASE_URL` value was listed as `/https://mediacentralsearch/`. This was changed in v2018.9
> to `/https://mediacentralsearch/search`.

### Changes between 2018.6 and 2018.6.1

- After setting up CloudUX configuration on the iNEWS side, folders were visible but any attempt to
  open a queue or story resulted in an error indicating the server could not be located — fixed. IN-4191

### Changes between 2017.2 and 2018.6

- NSML with duplicate "idref" and "ae id" numbers: user could not save such story after editing — fixed. IN-2434
- Using "TRANSMIT" option in wire distribution story added a duplicate priority code to the distribution
  code — fixed. IN-2179
- Custom configurations using the `-e` option to point to `/site/env/rxnet` to specific NSML version
  were broken — fixed. IN-3823
- Unloading one MOS device affected other loaded MOS devices in "Choice" configuration — fixed. IN-3600
- Memory fragmentation issue with bioserver that caused it to consume a lot of memory — fixed. IN-2686
- "create-date" field erased if mail was sent to a group of users — fixed. IN-3502
- After upgrade to v2017.2, some HTML files formatted incorrectly — fixed. IN-3504
- Changes in a refresh queue were not received by community users — fixed. IN-3533
- Opening large rundown with refresh trait caused graying out of new story and print story icons on
  main toolbar for long time — fixed. IN-3624
- Users experienced stories with low link counts and "story open" errors in PRELIM queues — fixed. IN-3834
- When MOS items were dragged and dropped into the story, activeX app information was saved so the item
  could subsequently be re-launched. Now, the client is changed to enable such operation if the MOS item
  is subsequently modified to include activeX information with MOS Gateway 4.5 or mosItemReplace
  workflow. IN-1082

### Changes between 2017.1 and 2017.2

- Product formerly known as Avid iNEWS is now called MediaCentral Newsroom Management; servers are
  called Newsroom Management Servers; client computers are still called iNEWS Workstations.
- Ctrl-F search involving create-date or modify-date field could cause the user interface to freeze,
  requiring a restart — fixed. IN-176005
- dbrestore of a v2.1 database failed — fixed. IN-3387
- Font and point size changed when overwriting production cue text — fixed. IN-1578
- iNEWS client error when logging out with Show Versions workspace open — fixed. IN-2260
- Under a specific scenario, the Backup Command server was monitor-loaded when the Primary Command
  servers were expected to be loaded — fixed. IN-3386
- NRCS Tool in Media Composer doesn't display main level directory in iNEWS — fixed. IN-3270
- Sluggish typing in iNEWS stories containing many hyperlinks — fixed. IN-1828

### Changes between 6.1 and 2017.1

- External user might be unable to log in for several minutes after traits are modified — fixed. IN-2762
- User modified the body or story form of an iNEWS story: video items in production cues were
  temporarily deleted and re-added, changing channels to default and causing issues with cued and
  playing items — fixed. IN-2530
- Monitor changes that fixed the multiple/jumping green line issues in Command when editing items in
  a story that has items being played. IN-2837
- Users experienced problems dragging and docking toolbars when multiple workspaces were open — fixed. IN-1579
- bioserver could terminate unexpectedly after server reboot and/or during startup of services in A/B
  system configuration — fixed. IN-2677
- Client crashes if all stories are copied from a queue to a local database — fixed. IN-2574
- iNEWS CTC—the iNEWS adapter for the Connectivity Toolkit Media Suite (CTMS)—would not reconnect to
  MediaCentral if MediaCentral restarted. Users needed to manually restart inewsctc. Fixed in Avid
  MediaCentral 2.10.2 with this version. IN-2920
- `W_BINDBUSINUM` in `/site/dict/words` no longer used to define the connection to the busserver for
  the mediaindex service. The mediaindex service now uses the same settings the CTMS service uses
  (`W_ACS_GATEWAY_HOST` and `W_ACS_GATEWAY_PORT`).
- `searchtape` to restore stories could not restore or create UUIDs — fixed.
- dbrestore utility has a new flag to allow stories to be written back to the system more than once,
  to different locations. If stories of the same UUID exist, a new UUID is assigned to the restored
  stories. (`dbrestore` — usage: `dbrestore <key> [option...]`)

---

## Microsoft Windows Critical Updates

Avid recommends keeping Windows-based systems up to date with all critical OS updates from Microsoft.
In the unlikely event that an update causes an issue, uninstall the update and contact Avid Customer
Support as soon as possible.

---

## Documentation Errata

### Setup Configuration Guide

In past versions of the MCNM Setup Configuration Guide, in the Forms chapter, a product integration
section erroneously identified the product as MediaCentral | Cloud UX. It should have been
MediaCentral | UX. This has been fixed in the section now titled "MediaCentral | UX Integration".

---

## Known Issues and Limitations

| Area | Issue | Workaround |
|---|---|---|
| CloudUX Integration | If a NM username is used on two or more different computers to log into CloudUX, it will only show as a single session in Newsroom Management. | — |
| Edit Locks | Edit lock information may contain a session identifier if the username is not known (for locks acquired through inewsctc API). Information about a user with an edit lock could be incorrect when the user signs off without releasing edit locks and then signs on again using the same session. New user does not have the edit lock; the lock expires in its pre-defined timeout. | — |
| RedHat/CentOS 7.5 | Autostop of misconfigured services does not work in RedHat/CentOS 7.5 environment. | — |
| Netstation | Fields carried over from Avid Netstation template are skipped from indexing. IN-3269 | — |
| Chinese IME Mode | Avid recommends not using keystrokes in Chinese IME mode. | — |
| Localhost Server | Use IP address "127.0.0.1" instead of alias "localhost" for telnet connection to localhost server. | — |
| Console | iNEWS console is no longer supported by default. For serial console setup in RH7: https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/sec-GRUB_2_over_a_Serial_Console.html | — |
| Diskcopy CRITICAL error | "diskcopy: 17:09:59 [CRITICAL] first block mirror error" messages are misleading. Check the end of the log for actual status — "Successful – Disk is mirrored" indicates success; the error indicates only that there are empty blocks that could not be copied. | Check end of log |
| Divehi Support | With the new richedit control, sometimes the last line of text will align to the left for a right-aligned story. | — |
| Chinese Localization | Chinese input method DaYi cannot be used to create new queues or folders. | — |
| German Localization | Ctrl+Shift+Right Arrow incorrectly marks a word if that word begins with a German Umlaut. | — |
| Local Database | To download print styles and story forms to a local computer for offline use, Read Access to iNEWS SYSTEM directories is required. | — |
| Windows 7/8 with UAC | When UAC is enabled, users cannot drag-and-drop text from an outside application (e.g., Microsoft Word) into iNEWS. | Use Ctrl+C and Ctrl+V |
| External Users (LDAP) | Not compatible with iNEWS Workstations <4.0.0, FTP clients (teleprompters, NewsCutter NRCS Tool), COM clients (NewsCutter NRCS Tool, Instinct, MOS Gateway's roStorySend and mosObj), Web Client, Web Access, Interplay Central <1.3.0. | — |
| Plug-ins | Some plug-ins (e.g., AMG Journalist) will not paint correctly in iNEWS. Workaround via ActiveXRedraw.txt file containing the CLSID from the Windows Registry Editor for the affected plug-in. | Create ActiveXRedraw.txt in iNEWS executable directory with plug-in CLSID |
| UNC Paths | UNC paths with spaces no longer work correctly in iNEWS client software (from v3.4.2). Intelliscribe printing should be configured at 300 DPI with "Enhanced Features" disabled. Vertigo Xmedia plug-in and Aurora Assignment List plug-in (v7+) installed together on the same client: Xmedia splash screen can cause tree to be inaccessible. | For Xmedia issue: rename or remove skinCrafter3_vs2008.dll from Assignment List installation directory |
| iNEWS Web Services API | Cannot be undeployed via Tomcat management interface when Tomcat is running on a Windows host. | Stop Tomcat service; delete inewswebservice file and folder from Tomcat webapps directory; place new .war file into webapps directory; start Tomcat service. Undeployment through management interface works correctly on a Linux host. |
| Multiple Monitors | If application is maximised when closed, it will be maximised on the primary monitor when reopened regardless of which monitor it was on. Moving a user from dual-monitor to single-monitor machine may cause application to open to a screen that no longer exists. | Right-click iNEWS in Windows taskbar > Move, then press an arrow key to lock window to mouse |
| Macros and Keystrokes | PCs upgraded from IE6 to IE7/8 may experience issues with macros performing several functions in rapid succession. Most apparent with macros that trigger the Local Print or User Preferences dialog box. | Append dialog box name after K_WINDOW token: e.g., {ctrl p}{window Local Printing}; or add {pause <#>} statements of 1–2 seconds at the problem point in the macro |

---

## Technical Support Information

- Online Support: <http://www.support.avid.com> (available 24 hours per day, 7 days per week)
- Avid Sales (North America): 800-949-AVID (800-949-2843)
- International users: 978-275-2480
