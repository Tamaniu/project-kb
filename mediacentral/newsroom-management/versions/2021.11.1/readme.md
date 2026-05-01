---
product: mediacentral-newsroom-management
product-area: release-notes
version: "2021.11.1"
release-date: 30/01/2022
doc-type: release-notes
source: avid-official
source-file: MCNM_v2021.11.1_ReadMe_RevB.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2022.3"
feature-tags: [release-notes, patch, subscription-licensing, kafka, polling-server, real-name-display, dbrestore, isam, systemd, rxnet, vaultctl, configcheck, grpcheck, multi-site, ctcdebug, inewsctc, multi-mediacentral, rhel, centos, upgrade, downgrade, gmail-smtp, known-issues, wsapi, ldap, security-guidelines]
---

# MediaCentral | Newsroom Management — Version 2021.11.1 ReadMe

**Build:** v8.0.x  
**Document dates:** 30 January 2022 (v2021.11.1 changes added); Rev B 28 February 2022  
**Copyright:** 2022 Avid Technology, Inc.

> Avid recommends reading all information in this file before installing or using a new software release. This is a cumulative ReadMe: important features from prior versions are carried forward. Notes that are less important were not brought forward; reference older iNEWS ReadMe files for additional change information.

---

## Revision History

| Date | Notes |
|---|---|
| 28/02/2022 | Rev B — minor updates |
| 30/01/2022 | Added changes for v2021.11.1 |
| 19/11/2021 | Added changes for v2021.11 |
| 29/07/2021 | Added changes for v2021.7 |
| 13/05/2021 | Added changes for v2021.3 |
| 15/01/2021 | Added changes for v2020.9.1 |
| 23/09/2020 | Added changes for v2020.9 |
| 19/04/2020 | Added changes for v2020.4 |
| 28/01/2020 | Added changes for v2019.9.2 |
| 12/12/2019 | Added changes for v2019.9.1 |
| 16/09/2019 | Added changes for v2019.9 |
| 19/06/2019 | Added changes for v2019.6 |
| 27/02/2019 | Added changes for v2019.2 |
| 14/12/2018 | Added changes for v2018.11 |
| 10/12/2018 | Added changes for v2018.9.2 |
| 06/10/2018 | Added changes for v2018.9.1 |
| 22/09/2018 | Added changes for v2018.9 |
| 27/08/2018 | Added changes for v2018.6.1 |
| 26/07/2018 | Added changes for v2018.6 |
| 19/12/2017 | Added changes for v2017.2 release, including product rebranding |
| 16/09/2017 | Initial v2017.1 version |

---

## Updated Security Guidelines

As system and network security attacks become increasingly more inventive and persistent, Avid is adopting a new security strategy to help customers and partners better protect assets and intellectual property. Avid has traditionally recommended Symantec Endpoint Protection as the preferred and qualified solution. As of Q3 2020, Avid is introducing a more flexible strategy that provides general guidelines for protecting Avid systems, allowing you to choose the best security solution for your organisation while still following Avid best practices. Avid expects to release an updated Security Guidelines document that will provide general guidelines for configuring Avid systems with endpoint solutions.

---

## Compatibility Notes and Issues

### Workstation/Server Compatibility Chart

Older client versions can be used to log in to servers of the same or newer versions. However, newer client versions **cannot** be used to log in to servers with older versions.

Each column represents a Server Version; rows represent Client Versions. A = Allowed | NA = Not Allowed.

| iNEWS Client | 4.0 | 4.5/6 | 4.7/1 | 5.0–2 | 5.3–6 | 6.x | 2017.x | 2018.x | 2019.x | 2020.x | 2021.3 | 2021.7 | 2021.11.x |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 3.4/5/6 | A | A | A | A | A | A | A | A | A | A | A | A | A |
| 3.7 | A | A | A | A | A | A | A | A | A | A | A | A | A |
| 4.0 | A | A | A | A | A | A | A | A | A | A | A | A | A |
| 4.5/6 | NA | A | A | A | A | A | A | A | A | A | A | A | A |
| 4.7/1 | NA | NA | A | A | A | A | A | A | A | A | A | A | A |
| 5.0–2 | NA | NA | NA | A | A | A | A | A | A | A | A | A | A |
| 5.3–6 | NA | NA | NA | NA* | A | A | A | A | A | A | A | A | A |
| 6.x | NA | NA | NA | NA | NA* | A | A | A | A | A | A | A | A |
| 2017.x | NA | NA | NA | NA | NA | NA | A | A | A | A | A | A | A |
| 2018.x | NA | NA | NA | NA | NA | NA | NA | A | A | A | A | A | A |
| 2019.x | NA | NA | NA | NA | NA | NA | NA | NA | A | A | A | A | A |
| 2020.x | NA | NA | NA | NA | NA | NA | NA | NA | NA | A | A | A | A |
| 2021.3 | NA | NA | NA | NA | NA | NA | NA | NA | NA | NA | A | A | A |
| 2021.7 | NA | NA | NA | NA | NA | NA | NA | NA | NA | NA | NA | A | A |
| 2021.11.x | NA | NA | NA | NA | NA | NA | NA | NA | NA | NA | NA | NA | A |

> *Note: Due to compatibility issues with a new Clear AIR DATE feature, clients running versions 5.3.x–5.5.x are not supported on servers running versions 5.0–5.2 or earlier.

### iNEWS Workstation

The client software is compatible for use on **Windows 10** only. This version of Newsroom Management is not officially supported for use on any other Windows operating system.

### Newsroom Management Server

The Newsroom Management Server is qualified and supported for use with **Red Hat Enterprise Linux 7.7 and 7.9**. Avid recommends keeping servers up-to-date with the latest patch to avoid vulnerabilities in the Linux kernel. This version is also qualified with **CentOS 7.7 and 7.9**.

### WSAPI

WSAPI is qualified for Tomcat 7.0 with Java 8. Default Java 8 installation disables the SSLv3 algorithm, which may prevent WSAPI from connecting to the Newsroom Management Server and may show the following messages:

```
ads1news-A a1005: [2844 2021.3 (build 7.8.0.45) RH7] gnews 1005 a - 1.6.2.1 Hot-to-go
ads1news-A a1005: Protocol level: received(12), maximum(18)
ads1news-A a1005: SSL_accept failed (0:5)
```

To re-enable SSLv3, modify the file `java.security` at: `/user/lib/jvm/java-1.8.0-openjdk-1.8.0.xxxxx/jre/lib/security/` by commenting out the lines that disable SSLv3 and restart Tomcat.

> **Note:** Windows Server 2019 with Tomcat 7.0 is qualified for WSAPI, and CentOS 7.7 with Tomcat 7.0 is qualified for WSAPI and FileLink server.

### MediaCentral | Newsroom Community

In a previous version of iNEWS, the MediaCentral Newsroom Community (formerly iNEWS Community) communication protocol was modified to allow databases larger than 16GB. This modification broke compatibility with iNEWS Server version 3.4.4 and earlier. iNEWS 3.4.5 still supports Community communication with either iNEWS 3.4.5 or earlier systems with a small database, but for large databases, Community communication is supported only with iNEWS 3.4.5 and later. All 2.x and 3.x servers should be upgraded to at least 3.4.5 when a large database server is added to the community. When a community includes a 5.x system, any 3.x or earlier should be upgraded to 3.7 and any 4.x systems should be upgraded to 4.7.

> **Note:** iNEWS 3.7 and iNEWS 4.7 releases support 50 Community members, up from 24. Beginning with iNEWS 6.0, the release supports 255 Community members, up from 50.

### Servers and Operating Systems Compatibility Matrix

| Newsroom Version | Build | RHEL 7.7 | RHEL 7.9 | CentOS 7.7 | CentOS 7.9 | WinSrv2016 | WinSrv2019 | Win10Pro(64bit) |
|---|---|---|---|---|---|---|---|---|
| MCNM 2021.11.x | 8.0.x | X | X | X | X | X | X | X |
| MCNM 2021.7 | 7.8 | X | X | X | X | X | X | X |
| MCNM 2021.3 | 7.7 | X | X | X | X | X | X | X |
| MCNM 2020.9.x | 7.7.x | X | X | X | X | X | X | X |
| MCNM 2020.4 | 7.6 | X | X | X | X | X | X | X |

> Windows Server columns refer to FTS, MOS Gateway, and Data Receiver servers. iNEWS Workstation column (Win10Pro) is workstation client only. For the full matrix including older versions (2019.x through 6.0), see source PDF MCNM_v2021.11.1_ReadMe_RevB.pdf, page 8.

> **Note:** Not shown in matrix — Windows Server 2019 with Tomcat 7.0 is qualified for WSAPI, and CentOS 7.7 with Tomcat 7.0 is qualified for WSAPI and FileLink server.

### External Users (LDAP)

This version is tested with LDAP TLS.

Beginning with version 4.x, Avid iNEWS server allows user authentication via Windows Active Directory; however, external users are not compatible with the following clients: iNEWS Workstations earlier than 4.0.0; FTP clients (teleprompters, NewsCutter's NRCS Tool); COM clients (NewsCutter's NRCS Tool; Instinct; MOS Gateway's roStorySend and mosObj); Web Client; Web Access; Interplay Central client earlier than 1.3.0.

### Fast Text Search

Version 4.0.3 or later of Fast Text Search (FTS 4) is required for iNEWS Server version 5.1 and later on both Windows Server 2016 and 2019. FTS 4 is not supported on any iNEWS Server versions earlier than 3.5. A full re-index is required with an upgrade to FTS 4. FTS is compatible in a virtualised environment when the guest OS instance meets the application's minimum system requirements.

### Media | Index

Avid iNEWS v5.2 or later is compatible for use with Media | Index.

### Command

The Newsroom Management Server is compatible for use with Command 1.0.1 or later. Command v3.2 is required for proper integration with the iNEWS VID-DURATION feature.

### MOS Gateway

The Newsroom Management system is compatible with MOS Gateway 2021.11 for subscription licensing. MOS Gateway 2021.3 or later could be used for ULAT licensing. Port 921 should be enabled for MOS Gateway communication. Please refer to the *MOS Gateway Operation Guide* for how to configure the port if needed to use a different port.

### Virtualisation

The Avid Newsroom Management Server software is supported in a virtualised environment. Minimum specifications are provided in the *Avid iNEWS Server Enterprise Virtualization Reference Guide* for the Newsroom Management Server (iNEWS), the FTS/Data Receiver Server, Command Server, and MOS Gateway Server.

### Console Multiplexer

The Newsroom Management Server requires version 2.0 of the console multiplexer (MUX) software, which is on the iNEWS installation CD. The console multiplexer cannot currently display Unicode characters. A terminal emulator that supports Unicode characters can be used if Unicode support is required.

### Data Receiver

The Newsroom Management system is compatible with Data Receiver 1.8 or later. iNEWS 3.0 Server saves data as well-formed XML. Data Receiver SFCs must be updated to deliver well-formed XML. Field tags have changed from `<f id="TYPE"></f>` to `<string id="TYPE"></string>`.

### Instinct

The Newsroom Management system is compatible with Avid Instinct 1.1 and 1.6 or later. After the iNEWS Workstation software is installed on an Instinct computer, manual registration of the Instinct installation's COM control should be performed: **Start > Run > regsvr32 "C:\Program Files\Avid\Avid iNEWS Instinct\iNewsCOMU.dll"**.

### NewsCutter

The Newsroom Management system is compatible with NewsCutter NRCS Tool 6.1.5 or later. After the iNEWS Workstation software is installed on a NewsCutter, manual registration of the NewsCutter installation's COM control should be performed: **Start > Run > regsvr32 "C:\Program Files\Avid\Avid NewsCutter\iNewsCOMU.dll"**. If both NewsCutter and Instinct are on the machine, the Instinct COM control should be the one you register.

> **Note:** For NRCS tools accessing the Newsroom Management system with subscription licensing, a local user with the same username and password would be needed for FTP access as FTP does not support external users.

---

## ⚠ CRITICAL — Upgrade to v2021.11.x Requires New License String

**Before upgrading to v2021.11.x, you must obtain a new license string from your Avid representative.**

v2021.11 introduces subscription licensing via the MediaCentral Licensing server. The existing license string from v2021.7 and earlier is **not compatible** with v2021.11.x. Proceeding without the new license string will result in licensing errors after upgrade.

> **Note:** With subscription licensing, all user authentication is through MediaCentral **except FTP**. Users should be imported into the Newsroom Management database to define system access and permissions. FTP only supports local users.

---

## Downgrade Notes

| Downgrade From | Requirements |
|---|---|
| v2021.11.x | Rebranding required |
| v2021.7 | Old database file must be restored from backup; contact Avid Customer Support |
| v2021.3 | Old ISAM file must be restored from backup; contact Avid Customer Support |
| v2020.9.x and earlier | Must uninstall iNEWS packages manually; for downgrades from 2020.9.x to 2020.4.x, 2019.9.x, 2019.6, 2019.2, 2018.11, 2018.9.x or 2017.x: standard downgrade after running downgrade command, then delete `/etc/systemd/system/iNEWS.service` before rebooting |

---

## Install and Upgrade Notes

### Upgrading to v2021.11.x (7-step procedure)

Installing v2021.11.x or upgrading to v2021.11.x from previous versions requires an updated license string. Contact your Avid representative to obtain the new license string before beginning.

1. Upgrade the system performing the standard steps as described in the ReadMe.
2. Reboot.
3. Run the command: `service iNEWS stop`
4. Go to `/exc` and brand the system with the new license string.
5. Start iNEWS service with: `service iNEWS start`
6. Run standard dictionary upgrade commands followed by `maketab -i` and `makemontab -i`.
7. Run the following commands:
   ```
   connect a
   dbgen m
   startup
   ```

### Upgrading to v2021.7.x (if upgrading through intermediate versions)

Standard upgrade if Real Name Display feature is not being used. If Real Name Display **is** being used:

1. Update `/site/system`: `display_user_realname=yes`
2. Reboot, reconnect, and startup as usual.
3. Run `dblines r` to apply real name usage in the story form for every story in the database.

> **Note:** Avid recommends exporting/importing the user ISAM to ensure real names consist only of printable characters:
> ```
> dbdump Ci -f /tmp/isam_dump
> # then after upgrade:
> dbgen u
> dbrestore i -f /tmp/isam_dump
> ```

### Upgrading to v2021.3 (if upgrading through intermediate versions)

Standard upgrade with ISAM conversion for password enhancement:

1. Export the ISAM file: `dbdump Ci -f /tmp/isam_dump`
2. After the upgrade:
   - a. `dbgen u`
   - b. `dbrestore i -f /tmp/isam_dump`

> **Note:** After the upgrade, create credentials for txnet jobs with `vaultctl`. See "New Features — v2021.3" in this ReadMe for details.

### Upgrading to v2020.9.x or v2020.4.x (if upgrading through intermediate versions)

Standard upgrade. For v2020.4.x: Avid recommends running multiple CTC instances (#cores - 2) for load and redundancy support. See CTMS Integration chapter of the Setup Configuration Guide. After upgrading to v2020.4.x, the previous version of the Kafka story should be removed and the mediaindex service restarted.

### Upgrading to v2019.x

Standard upgrade.

### Upgrading to v2018.x (database conversion required — 12 steps)

A database conversion is required when upgrading from v2017.2 to v2018.6 or later. Before upgrading, back up the database:

```bash
#dbdump Cv -f + |gzip > /tmp/wavd.dbdump.gz
```

**12-step upgrade procedure (single server A system):**

> *For dual-server systems, perform the conversion for server A first, then repeat for server B.*

1. Navigate to the install directory (use WinSCP to move the install script to the server; place files in `/home/so` directory):
   ```bash
   # cd /home/so/<install folder>/linux
   ```
2. Take the server offline and close the database:
   ```bash
   # offline
   # logout all
   # shutdown   (say "yes" to prompt)
   # reboot
   ```
3. Log back in to PUTTY as the SO user.
4. Navigate to the install folder and start installation:
   ```bash
   # cd /home/so/<install folder>/linux
   # ./install upgrade
   # reboot    (remote session to the server will end)
   ```
5. Log back in as SO user and update dictionary:
   ```bash
   # dictionary -update /site/dict
   # dictionary -update /site/web
   ```
6. Switch to super user and execute:
   ```bash
   # maketab -i
   # makemontab -i
   ```
7. Reconnect iNEWS disks:
   ```bash
   # connect a net=a
   ```
8. Look for a valid output (e.g. `Connect successful for WAVD-A, starting servers...`).
9. Clear and initialise the database:
   ```bash
   # finit -
   # dbgen -
   ```
10. Restore the database:
    ```bash
    # gunzip < /tmp/wavd.dbdump.gz | dbrestore dpixv -f + -i -M
    ```
11. Startup the system normally and bring the database back online:
    ```bash
    # startup
    ```
12. Install Newsroom Management 7.0 client and log into the server as normal.

### Upgrading to v2017.2

Go to the folder with the installer script and run:

```bash
./install upgrade
```

> **Note:** Verify that the install file is executable; otherwise run: `chmod +x install`

### Upgrading from v2017.1 — Logging Messages

After moving to the rpm installer, logging configuration was moved from `/etc/rsyslog.conf` to `/etc/rsyslog.d/00-iNEWS.conf`. To avoid messages being duplicated in the iNEWS log file after upgrade, edit `/etc/rsyslog.conf` and remove the following lines:

```
# Log iNEWS messages
local0,local1,local2,local3,local4,local5,local6.*/var/log/iNEWS/iNEWS.log

# Display iNEWS messages on local and serial consoles
local0,local1,local2,local3,local4,local5,local6.* /dev/console
```

---

## Changes between 2021.11 and 2021.11.1

Version 2021.11.1 replaces version 2021.11 with an updated `dbrestore` executable that strips non-printable characters in the user Realname field.

- In version 2021.7, saving a story with a carriage return character in the Realname field would cause the client software to crash, after displaying a "Story save failed. Unexpected error" message. This is fixed. IN-7304

> **Note:** User ISAM should be exported and imported as recommended in the upgrade step (see Upgrading to v2021.7.x above).

---

## Changes between 2021.7 and 2021.11

### Server

- In previous versions, the monitor server would not load backup or secondary MOS Gateway server unless communication with primary MOS Gateway failed. This is fixed. IN-7061
- In previous versions, an action server removed the edit lock from a story if the user's session ID changed. This is fixed. IN-7113, MA-6028
- In previous versions, if you had spaces in `ID_SERIAL` value, you would not be able to install the server. This is fixed. IN-7141
- MediaCentral Cloud UX Search offers two ways to submit content for indexing: HTTP(S) interface and Kafka topics. The first is not suitable for multi-site environments. Beginning with v2021.11, the iNEWS Sync Agent no longer supports MediaCentral Cloud UX HTTP interface. IN-6993
- In version 2021.7, `dbrestore tdv` broke the internal UUID table. This is fixed. IN-7215

### Client (Workstation)

- In version 2021.3 and 2021.7, after data conversion, for some stories the modify-by field was not displayed. This is fixed. IN-7180, IN-7112
- In previous versions, entering the Unicode character for a midline horizontal ellipsis (U+22EF) to the script would cause the text "PrFont1Indent1440" to be added to the beginning of the story. This is fixed. IN-6571

---

## Changes between 2021.3 and 2021.7

- For NSML, the `<dist>` and `<wcode>` tags are read-only and can be written (updated) by iNEWS internal services only. See NSML Engineering Specification v4.2. IN-6962
- Previously, when the user pressed the spacebar while in show-timing, the queue record for that story would get a new modified time, a new f.id, and the modified flag would be set, but in v2020.9, the modified flag would not be set. This is by design. IN-6862
- In previous versions, inserting a script template into an iNEWS story changed the runs-time field to display -0:01. This is fixed. IN-6747
- Previously, the monitor server failed to validate `<noDur>` or `Replace=no` settings in SYSTEM.MOS-MAP; therefore, the mos-duration field would sometimes get updated on a monitor load when it should have remained empty. This is fixed. IN-6709
- In this version, FTS indexing was updated so that when a queue is unlocked, only those stories in the queue that are not easy-locked or key-locked are added back to the index for searching purposes. IN-6639
- Previously, if the `inews-mgwcom.socket` service was configured on both server A and server B of a dual-server NMS system, the com service on server A would fail. In v2021.7, the server installer was updated to fix this issue. IN-6783
- In some previous versions, if a user tried to use the Tab key to check a story restore to a specified queue, `dbrestore` would fail with the warning "Put location not allowed for d mode". This is fixed. IN-6788
- In previous versions, stopping a wire instance did not remove the entry from the "list s" output (T/U Index file). This is fixed. IN-6751
- Previously, an item with an apostrophe could not be opened in the HTML5 editor plug-in. This is fixed. IN-6902
- Previously, after upgrading from 2019.6 to 2020.9, locked database blocks for monitor process were not released. This is fixed. IN-6932
- In previous versions, fields tag is removed from MOS attachment when saving stories in CloudUX. This is fixed. IN-6891

**Changes related to MOS Gateway:**
- In previous versions, a TAB character in an iNEWS story terminates MOS Gateway StorySend service. This is fixed. IN-6907
- Previously, MOS Gateway logging lines were skipped by TraceLibrary if they were too large. This is fixed. IN-6961

---

## Changes between 2020.9.1 and 2021.3

- Previously, since v2020.9, MOS attachment attributes were modified incorrectly for roStorySend stories. This is fixed. IN-6857
- Previously, when using iNEWS Webservices to search, sometimes no results were returned and it went into timeout for 15 minutes. Fixed with WASPI 1.6.2. IN-6744
- After the reboot of a system and after running the `connect` command, Newsroom Management would sometimes show dependency messages that said some services failed to start. This is fixed. IN-6436
- Previously, some unlocked stories were indexed even if the queue they were in was locked, and this could prevent users from being able to open the queue. This is fixed. IN-4099
- Previously, if the QueueForm of a queue is mis-configured, the Queue Panel would not display any fields in Newsroom Management. This is fixed. IN-6359
- Previously, users experienced FTPS connection issues with the Newsroom Management database when using IE browser. This is fixed. IN-6363
- Previously, beginning in versions 2020.4, queue names with Danish characters could no longer be navigated correctly via rxnet. This is fixed. IN-6393
- Beginning in 2019.9.1 and later, the `inews-dbserver.service` start operation would time out, terminate, and fail to restart. This is fixed. IN-6395
- Previously, under certain workflows, the retrieval of a story from an Update queue using an FTP client would fail. This is fixed. IN-6465
- In a previous version, failed messages might appear after an RXNET timeout. This is fixed. IN-6544
- In a previous version, failed messages might appear after commands were manually stopped on the RXNET server. This is fixed. IN-6572
- Previously, FTPS-enabled connection would retain a mosreplication user session and not relinquish it. This is fixed. IN-6578
- Previously, the Create New Story option in the Rundown App would not insert stories in proper placement within an inverted or sorted queue. This is fixed. IN-6641
- Previously, when searching with media index, the slug would not be the story title if it is not set as the quick index field. This is fixed. IN-6649
- Previously, the sync agent might become stuck in a loop while processing a media-index queue. This is fixed. IN-6697
- Previously, the mos-duration information is not pulled into the events queue to update total time. This is fixed. IN-6707
- Previously, some stories could not be locked in a community server. This is fixed. IN-6741
- Previously, rxnet sessions were not removed from indexes (T/U) if the connection was broken. This is fixed. IN-6354
- In previous versions 2020.4 and 2020.9, the "style NO" setting in the CG device line of the MAP story entry for Command would result in an error in MCS dictionary entry, which was sent to the user who turned on the monitor. This is fixed. IN-6431
- Previously, when floating or unfloating stories with a large Maestro (MOS item) attachment, the monitor server would crash. This is fixed. IN-6786
- Previously, if a system was configured with three servers in SYSTEM.MAP, the monitor server might crash. This is fixed. IN-6784

---

## Changes between 2020.9 and 2020.9.1

- In previous version, Save Story and Unlock Story will not move story into destination queue via action server when editing story in Rundown Application while logging in to the server from CloudUX application. This is fixed. IN-6576

---

## Changes between 2020.4 and 2020.9

- In previous versions, iNEWS CTC would frequently and unexpectedly disconnect from CloudUX. Fixed by improving queue access through CTC with newer interface and libraries. IN-6094
- Previously, JAVA client did not release Newsroom Management sessions when the user closed the browser instead of logging out. This is fixed. IN-6140
- In previous versions, iNEWS client could terminate on opening stories containing text copied from a Web page and pasted into a news story using the Rundown app in MediaCentral Cloud UX. This is fixed. IN-6272
- In previous versions, channel change for clips made in Newsroom Management did not always take or changed back. This is fixed. IN-5319
- Previously, a GET queue request returned a 404 Not Found error if there was no SYSTEM.MAP queue in the database. This is fixed. IN-6090
- In previous versions, a channel to which the graphic was assigned with mosItemReplace message disappeared from the production cue. This is fixed. IN-6148, IN-6179
- Previously, the form field would not be cleared after deleting a channel from MOS device playlist. This is fixed. IN-6179
- Previously, frequent hourglass delays (2–4 seconds) in refresh rundowns could cause disruption to editing and production. This is fixed. IN-6248
- Previously, monitor did not update the Channel column in a mosItemReplace workflow. This is fixed. IN-6243
- Previously, users might encounter significant hourglass delays after selecting many stories in the Queue panel and clicking Context menu or Story menu options. This is fixed. IN-6242, IN-6186
- Previously, running `mapcheck` from the console might cause a segmentation fault. This is fixed. IN-6222
- Previously, the mediaindex service would terminate after a restart, even if there were no errors in configuration. IN-6220
- In previous versions, MAM communication with Newsroom Management was interrupted, producing "Error connecting to [iNEWS SYSTEM], connection was aborted" message in the WSAPI logs. This is fixed. IN-6203
- In the previous version, Cyrillic and Georgian fonts were not displaying correctly in Command. This is fixed. IN-6271
- In a previous version, the client would hang on startup and the gnew session exited upon reading stories in SYSTEM.HTML-PLUGINS. This is fixed. IN-6275
- In previous versions, `list s-v` output didn't display the remote client IP address nor system name for RXNET devices. This is fixed. IN-6319
- In the previous version, starting in a saved session or loading a session may change the Clock size for all users on the same iNEWS workstation PC. This is fixed. IN-6331
- Previously, the monitor server would sometimes exit unexpectedly when mosItemReplace processes were deferred. This is fixed. IN-6804, IN-6396
- After upgrading to v2020.4, some sites experienced brief periods when users would be unable to log in. This is fixed. IN-6785
- Previously, if a system was configured with three servers in SYSTEM.MAP, the monitor server might crash. This is fixed. IN-6784
- Previously, unfloating the first story in a playlist would cause the monitor server to crash. This is fixed. IN-6279

---

## Changes between 2019.9.2 and 2020.4

- Previously, iNEWS workstations crashed intermittently, especially on machines with Maestro plugins. This is fixed. IN-5346/IN-5402
- In previous versions, `inewsctc` could accumulate memory usage with the number of requests; this is fixed. IN-5497
- News stories in Cloud UX created using Chinese characters might not appear in the queue until after logout/login. This is fixed. IN-5558
- In a previous version, saving a story to a local server failed if the community session in another workspace was not available. This is fixed. IN-5892
- In a previous version, a story's edit lock was not auto-renewed if another story was edit-locked in a second workspace. This is fixed. IN-5893
- Previously, after saving a story using TXNET/RXNET, the "S" sequence would be missing from the story. This is fixed. IN-5451
- After the reboot of a system and after running the `connect` command, Newsroom Management would sometimes show dependency messages that said some services failed to start. This is fixed. IN-5657
- In previous versions, if requested story form contained a reference to an absent list/form in the SYSTEM directory, iNEWS CTC responded with a "404 not found" error. This is fixed. IN-5670
- Following upgrades to 2018.11.x, some sites with firewalls set to close socket connections after a period of inactivity resulted in TXNET/RXNET connection issues. Fixed with additional environment variables. IN-5732:
  - `RXDATAPORTRANGE=<low port>..<high port>` — sets port range for rxnet connection (e.g. `RXDATAPORTRANGE=10000..10010`). Minimum number of ports must be at least the number of sessions configured in `/site/config` for the rxnet server.
  - `TXDCKEEPALIVE=<0|20>` — "keep alive" interval for TXNET data channel so 3 missed packages triggers a channel close. `TXDCKEEPALIVE=0` disables it. Minimum: 20 seconds; recommended: at least half the firewall timeout interval.
- Previously, RXNET would open the database if it was closed when an FTP client attempted to connect to an offline server, resulting in an inability to run ONLINE commands. This is fixed. IN-5839
- In previous versions, iNEWS Workstations following Show Timing did not always update with the sync timing of the controlling workstation. This is fixed. IN-5851
- In previous versions, the client software might terminate when localtimeout expired and there was a field data warning dialogue open. This is fixed. IN-5450
- In previous versions, there were issues related to losing stories out of iNEWS. This is fixed. IN-5852

---

## Changes between 2019.9.1 and 2019.9.2

- In previous versions, sometimes the MOS item would be removed when saving the story with the MediaCentral Cloud UX Rundown app. This is fixed. IN-5768
- In previous versions, sometimes user would get a message "Failed to save story and release edit lock" when saving a story using the Rundown app. Fix requires MediaCentral | Cloud UX 2019.6 or later. IN-5769, MA-5024
- In previous versions, saving a story with "modify-dev" field in the Rundown app will cause inewsctc to crash. This is fixed. IN-5771
- In previous versions, users would get an error when saving stories using the Rundown app in a queue with action job configured. Fixed with new API added to inewsctc. Requires MediaCentral | Cloud UX 2019.10 or later. IN-5770, MA-5526

---

## Changes between 2019.9 and 2019.9.1

- In some previous versions, the production cue disappears if you put the insertion point to the immediate left of the production cue grommet, click N, P or CC, and save. This is fixed. IN-5727
- Previously in some workflows, the assigned channel would be cleared after monitor was loaded. This is fixed. IN-5652
- Previously, "renumber all" did not provide unique page numbers to stories when the queue contained BREAK stories. This is fixed. IN-5607
- Previously, the story group indicator would disappear when the user changed the queue form of the current viewing queue. This is fixed. IN-5566

---

## Changes between 2019.6 and 2019.9

- Previously, a user with Newsroom Management credentials on a Windows command line FTP client could still log in to the news database when the system was offline. This is fixed. IN-5454
- Previously, action server would crash when the joblist was modified and saved in the database. This is fixed. IN-5202
- Previously, bioserver might disconnect on an ABC system, which would result in incorrect system types. This is fixed. IN-169213
- Previously, after loading a playlist to Command, the monitor server would terminate with an 'out of memory' error, causing the rundown to be out of sync with the playlist. This is fixed. IN-4800
- Previously, the monitor server terminated when receiving an update to a story with a large MOS attachment for Maestro which exceeds its size limit. This is fixed. IN-5110

> **Note:** Monitor would skip sending any attachment to Command that is larger than the limit supported by Command. Users are advised to add an environment variable `MOS_SIZE_LIMIT=16333` to their NMS system so that large items will be flagged with a monitor error when monitor is turned on. This variable applies to all MOS items.

- In a previous version, Newsroom Management `inewsctc` device had to be manually restarted often. This is fixed. IN-4927
- In a previous version, new users did not get updates in re-fresh queue. This is fixed. IN-5403
- Previously, iNEWS workstations crashed intermittently, especially on machines with Maestro plugins. This is fixed. IN-5346/5402

---

## Changes between 2019.2 and 2019.6

See the full list in the v2021.11 readme or source PDF, pages 36–37.

---

## Changes between 2018.11 and 2019.2 and earlier versions

See the v2021.11 readme or source PDF pages 38–41 for changes between 2018.11 and 2019.2, and all earlier "Changes between" sections.

---

## Microsoft Windows Critical Updates

Avid recognises that it is very important to deploy Microsoft security patches to Windows-based products as quickly as possible. Avid recommends that systems be kept up to date in order to maintain the highest level of security and encourages installing all *critical* operating system updates provided by Microsoft.

In the unlikely event that one of these updates causes an issue, it is recommended to uninstall the update and contact Avid customer support as soon as possible.

---

## Documentation Errata

### Setup Configuration Guide

In past versions of the MediaCentral Newsroom Management Setup Configuration Guide, in the Forms chapter, a product integration section erroneously identified the product as MediaCentral | Cloud UX. It should have been MediaCentral | UX. This has been fixed in the section now titled "MediaCentral | UX Integration".

---

## Known Issues and Limitations

### User Real Name

Starting in v2021.7, where user real name support is added, you cannot use reserved XML characters in real names.

### Invalid User Name/Password (Subscription Licensing)

If an older version of the iNEWS Workstation is used with a v2021.11 server, and if the server cannot acquire a session licence from the MediaCentral Licensing server when subscription licensing is used, the error message is now: "Cannot obtain new user session from Cloud UX (licensing server)". IN-7154

### iNEWS SendMail

With new security measures enabled in the Gmail relay server, mail from iNEWS through sendmail will be rejected. **Workaround:** Configure the Gmail SMTP relay server for sendmail. See the "Configure Gmail SMTP Relay Server for Sendmail" section below.

### MAP Story Limit

The limit of devices for a rundown in the MAP story is 20. Having more than 20 devices configured will result in a client crash when attempting to open the Monitor dialogue.

### CloudUX Integration

If a Newsroom Management user name is used on two or more different computers to log into CloudUX, it will only show as a single session in MediaCentral Newsroom Management.

### Edit Locks

- Information about edit locks may contain a session identifier if the username is not known. This is the case for locks acquired through `inewsctc` API.
- Information about a user who has an edit lock could be incorrect when the user signs off without releasing edit locks and signs on, reusing the same session.

> **Note:** The new user does not have the edit lock, and the lock will expire in its pre-defined timeout.

### RedHat / CentOS 7.5

Autostop of misconfigured services does not work in RedHat/CentOS 7.5 environment.

### Netstation

Fields carried over from Avid Netstation template are skipped from indexing. IN-3269

### Chinese IME Mode

Avid recommends do not use key strokes in Chinese IME mode.

### Localhost Server

It is recommended to use localhost IP address "127.0.0.1" instead of alias "localhost" in case of telnet connection to localhost server.

### Console

iNEWS console is no longer supported by default. For information on setting up serial console in RH7, see: https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/sec-GRUB_2_over_a_Serial_Console.html

### Diskcopy Reports CRITICAL Error

If `diskcopy` reports "diskcopy: [CRITICAL] first block mirror error", check the message at the end of the log. "Successful – Disk is mirrored" indicates success; the CRITICAL message only indicates empty blocks that could not be copied.

For the full list of Known Issues and Limitations (Divehi, Chinese Localisation, German Localisation, Local Database, Windows UAC, External Users LDAP, Plug-ins, UNC Paths, iNEWS Web Services API, Multiple Monitors, Macros and Keystrokes), see the v2021.11 readme or source PDF pages 41–45.

---

## Configure Gmail SMTP Relay Server for Sendmail

For full Gmail SMTP relay configuration procedure (including sendmail.mc prerequisite lines, `yum install cyrus-sasl-plain`, Gmail Application Password generation (9 steps), sendmail.mc update, AuthInfo file modification, and `systemctl restart sendmail.service`), see the v2021.11 readme or source PDF pages 44–47.

---

## Technical Support

- **Avid Online Support:** [www.support.avid.com](http://www.support.avid.com) (24 hours a day, 7 days a week)
- **Sales / North America:** 800-949-AVID (800-949-2843)
- **International:** +1 978-275-2480

> Supplemental documentation for this release, if available, is provided on the Knowledge Base at Avid Online Support.
