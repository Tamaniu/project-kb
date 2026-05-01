---
product: mediacentral-newsroom-management
product-area: release-notes
version: "2021.7"
release-date: 26/07/2021
doc-type: release-notes
source: avid-official
source-file: MCNM_v2021.7_ReadMe.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2021.7.1"
feature-tags: [release-notes, real-name-display, systemd, vaultctl, configcheck, dblines, id-serial, workstation, queue-path, ctcdebug, inewsctc, multi-mediacentral, rhel, centos, upgrade, downgrade, gmail-smtp, known-issues]
---

# MediaCentral | Newsroom Management — Version 2021.7 ReadMe

**Build:** v7.9  
**Document date:** 26 July 2021  
**Copyright:** 2021 Avid Technology, Inc.

> Avid recommends reading all information in this file before installing or using a new software release.  
> The MediaCentral Newsroom Management Server was formerly known as the Avid iNEWS Server.

---

## Revision History

| Date | Notes |
|---|---|
| 26 July 2021 | Initial v2021.7 release notes |

---

## Compatibility

### Client / Server Version Matrix

Newsroom Management v2021.7 is compatible **only** with other v2021.7 components. Cross-version operation is not supported.

| Component | Compatible Version |
|---|---|
| Newsroom Management Server | v2021.7 |
| iNEWS Workstation | v2021.7 |
| MOS Gateway | 2021.3 or later |
| Data Receiver | v1.8 or later |

> **Note:** MOS Gateway 2021.3 or later is required. Data Receiver v1.8 or later is required for v2021.7 compatibility.

### Operating System

| OS | Versions Qualified |
|---|---|
| Red Hat Enterprise Linux (RHEL) | 7.7, 7.9 |
| CentOS | 7.4, 7.5, 7.7, 7.9 |

> **Change from v2021.3:** CentOS 7.4 is newly qualified in v2021.7.

---

## New Features in v2021.7

### Real Name Display

v2021.7 introduces the ability to display users' real names in the CREATE-BY, MODIFY-BY, ENDORSE-BY, and WRITER fields, instead of their login IDs.

**To enable Real Name Display:**

Add the following line to the `/site/system` directory file:

```
display_user_realname=YES
```

This requires MediaCentral | Cloud UX v2021.7 or later.

**New utilities and flags related to Real Name Display:**

| Command | Description |
|---|---|
| `dbrestore -r` | Restores real names when restoring a database |
| `dblines r` | Populates the display (real name) attribute in existing story fields |
| `dblines -R` | Removes the display (real name) attribute from story fields |

**Upgrade considerations — Real Name Display:**

If the Real Name Display feature is **not** used, upgrading from v2021.3 to v2021.7 is a standard upgrade.

If the Real Name Display feature **is** used, the following additional steps are required after upgrading:

1. Set the `display_user_realname=YES` environment variable in `/site/system`.
2. Reboot the server.
3. Run `dblines r` to populate the real name attribute in existing story fields.

### iNEWS Field Tag Format Change

From v2021.7, the iNEWS field tag format used by Data Receiver has changed:

| Version | Format |
|---|---|
| Prior to v2021.7 | `<f id="TYPE">` |
| v2021.7 and later | `<string id="TYPE">` |

This change requires Data Receiver v1.8 or later.

### NSML v4.2

This release introduces NSML Engineering Specification v4.2. The change from v4.1 to v4.2 adds a `display` attribute to `<string>` tags in the `<fields>` section, which stores the user's real name for CREATE-BY, ENDORSE-BY, MODIFY-BY, and WRITER fields.

Example:
```xml
<string id="modify-by" display="John Doe">jdoe</string>
```

For full NSML v4.2 details, see `nsml-spec.md` in this version folder.

---

## Features Carried Forward from Previous Versions

The following features were introduced in prior versions and remain active in v2021.7. See the "Changes between" sections below for full detail.

| Feature | Introduced |
|---|---|
| systemd service management | v2021.3 |
| `vaultctl` (password vault) | v2021.3 |
| `configcheck` utility | v2021.3 |
| `dblines +X` (session count) | v2021.3 |
| ID_SERIAL disk property requirement | v2021.3 |
| Queue Path toolbar | v2021.3 |
| Show Timing Clock size adjustment | v2021.3 |
| iNEWS CTC multi-MediaCentral connection | v2017.2 |
| CTCDEBUG environment variable | v2019.6 |
| RXDATAPORTRANGE / TXDCKEEPALIVE env vars | v2019.9.2 |
| USE_AUTHENTICATION_BY_IP env var | v2018.6 |
| Grouped story numbering (W_GSEPARATOR, W_GENUMERATOR) | v2019.6 |
| AIWS session for Instinct/NRCS Tool | v2019.6 |

---

## Upgrade Notes

### Upgrading to v2021.7

Standard upgrade from v2021.3 unless the Real Name Display feature is being enabled. See "New Features — Real Name Display" above for the additional steps required if that feature is used.

### Downgrading from v2021.7

Downgrading from v2021.7 requires the **database file** (not just the ISAM file) from a backup taken prior to the upgrade. Contact Avid Customer Support for assistance.

---

## systemd Service Management

From v2021.3 onwards, Newsroom Management uses systemd for service management on RHEL/CentOS 7.

**Key commands:**

```bash
# Check status of a specific service
systemctl status inews-action@201.service

# List all iNEWS services
systemctl list-units inews-*

# Reload daemon after unit file changes
systemctl daemon-reload

# Stop and start RXNET sockets (example)
systemctl stop inews-rxnet.socket
systemctl stop inews-rxnet-nsml2.socket
systemctl start inews-rxnet.socket
systemctl start inews-rxnet-nsml2.socket
```

Status output includes: current status and service uptime, process ID (same as `list c-r` output), number of processes, consumed memory, and log messages.

Service logs are recorded per service and can be found in `/var/log/iNEWS/`.

---

## Workstation Improvements (v2021.3)

### Show Timing Clock Size

A new option allows users to change the size of the Show Timing Clock.

**To adjust the size:**
1. Select **Format > Clock Size**. The Clock Size dialogue box opens.
2. Select the size.
3. Click **OK**.

### Queue Path Toolbar

A new toolbar displays the name of the active queue next to the Show Timing Clock.

**To view the Queue Path toolbar:**
- Select **View > Queue Path**.

The font type and size used by the toolbar are customisable.

**To customise the Queue Path toolbar:**
1. Click on the toolbar.
2. Select **Format > Font**. You can adjust both font type and font size.

> **Note:** Toolbar settings are saved to the workstation's registry and not to the user's profile.

---

## iNEWS CTC — Multiple MediaCentral Connections (v2017.2)

From v2017.2, `inewsctc` can connect to multiple MediaCentral systems (IN-3094).

**Migration from single-connection configuration:**

In previous versions, settings were in `/site/dict/words`:
```
W_ACS_GATEWAY_HOST    /10.105.250.245
W_ACS_GATEWAY_PORT    /9900
W_SERVICE_REALM       /INEWS6X
W_SERVICE_TOKEN       ;/security_token
```

From v2017.2, remove `W_SERVICE_REALM` and `W_SERVICE_TOKEN` from `/site/dict/words`. Keep `W_ACS_GATEWAY_HOST` and `W_ACS_GATEWAY_PORT` as they are also used for media index functionality.

Settings for each MediaCentral connection are now in individual `inewsctc` files under `/site/env/`:

```bash
cd /site/env
ls
# inewsctc.1122  inewsctc.1124  mediaindex  monitor.301  monitor.302  rxnet  txnet
```

Each file contains:
```
ACS_GATEWAY_HOST=172.22.197.92
ACS_GATEWAY_PORT=9900
SERVICE_REALM=RH73
SERVICE_TOKEN=
```

Configure multiple `inewsctc` entries in `/site/config`:
```
reslist 1122           ; inewsctc
reslist 1124           ; inewsctc
...
ctc  1122  -  inewsctc  -
ctc  1123  -  inewsctc  -
ctc  1124  -  inewsctc  -
```

Service logs per `inewsctc` instance are written to `/var/log/iNEWS/` (e.g. `inewsctc.1122.log`, `inewsctc.1124.log`).

---

## Changes between 2021.3 and 2021.7

- For NSML, the `<dist>` and `<wcode>` tags are read-only and can be written (updated) by iNEWS internal services only. See NSML Engineering Specification v4.2. IN-6962
- Previously, when the user pressed the spacebar while in show-timing, the queue record for that story would get a new modified time, a new f.id, and the modified flag would be set; in v2020.9, the modified flag would not be set. This is by design. IN-6862
- In previous versions, inserting a script template into an iNEWS story changed runs-time field to display -0:01. This is fixed. IN-6747
- Previously, the monitor server failed to validate `<noDur>` or `Replace=no` settings in SYSTEM.MOS-MAP; therefore, the mos-duration field would sometimes get updated on a monitor load when it should have remained empty. This is fixed. IN-6709
- In this version, FTS indexing was updated so that when a queue is unlocked, only those stories in the queue that are not easy-locked or key-locked are added back to the index for searching purposes. IN-6639
- Previously, if the `inews-mgwcom.socket` service was configured on both server A and server B of a dual-server MediaCentral Newsroom Management system, the com service on server A would fail. The workaround was to only configure the service on the primary server in a dual-server system. In v2021.7, the server installer was updated to fix this issue. IN-6783
- In some previous versions, if a user tried to use the Tab key to check a story restore to a specified queue, `dbrestore` would fail with the warning "Put location not allowed for d mode". This is fixed. IN-6788
- In previous versions, stopping a wire instance did not remove the entry from the "list s" output (T/U Index file). This is fixed. IN-6751
- Previously, an item with an apostrophe could not be opened in the HTML5 editor plug-in. This is fixed. IN-6902
- Previously, after upgrading from 2019.6 to 2020.9, locked database blocks for monitor process were not released. This is fixed. IN-6932
- In previous versions, fields tag is removed from MOS attachment when saving stories in CloudUX. This is fixed. IN-6891

**Changes related to MOS Gateway:**
- In previous versions, TAB character in iNEWS story terminates MOS Gateway StorySend service. This is fixed. IN-6907
- Previously, MOS Gateway logging lines were skipped by TraceLibrary if they were too large. This is fixed. IN-6961

---

## Changes between 2020.9.1 and 2021.3

- Previously, since version 2020.9, MOS attachment attributes were modified incorrectly for roStorySend stories. This is fixed. IN-6857
- Previously, when using iNEWS Webservices to search, sometimes no results were returned and it went into timeout for 15 minutes. Fixed with WASPI 1.6.2. IN-6744
- After the reboot of a system and after running the connect command, Newsroom Management would sometimes show dependency messages that said some services failed to start. This is fixed. IN-6436
- Previously, some unlocked stories were indexed even if the queue they were in was locked, and this could prevent users from being able to open the queue. This is fixed. IN-4099
- Previously, if the QueueForm of a queue is mis-configured, the Queue Panel would not display any fields in Newsroom Management, like it did in older versions of iNEWS. This is fixed. IN-6359
- Previously, users experienced FTPS connection issues with the Newsroom Management database when using IE browser. This is fixed. IN-6363
- Previously, beginning in versions 2020.4, queue names with Danish characters could no longer be navigated correctly via rxnet. This is fixed. IN-6393
- Beginning in 2019.9.1 and later, the `inews-dbserver.service` start operation would time out, terminate, and fail to restart. This is fixed. IN-6395
- Previously, under certain workflows, the retrieval of a story from an Update queue using an FTP client would fail. This is fixed. IN-6465
- In a previous version, failed messages might appear after an RXNET timeout. This is fixed. IN-6544
- In a previous version, failed messages might appear after commands were manually stopped on the RXNET server. This is fixed. IN-6572
- Previously, FTPS-enabled connection would retain a mosreplication user session and not relinquish it. This is fixed. IN-6578
- Previously, the Create New Story option in the Rundown App would not insert stories in proper placement within an inverted or sorted queue. This is fixed. IN-6641
- Previously when searching with media index, the slug would not be story title if it is not set as the quick index field. This is fixed. IN-6649
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

- In previous versions, iNEWS CTC would frequently and unexpectedly disconnect from CloudUX. This is fixed in this version by improving queue access through CTC with newer interface and libraries. IN-6094
- Previously, JAVA client did not release Newsroom Management sessions when the user closed the browser instead of logging out. This is fixed. IN-6140
- In previous versions, iNEWS client could terminate on opening stories containing text copied from a Web page (URL unknown) and pasted into a news story using the Rundown app in MediaCentral Cloud UX. This is fixed. IN-6272
- In previous versions, channel change for clips made in Newsroom Management did not always take or changed back. This is fixed. IN-5319
- Previously, a GET queue request returned a 404 Not Found error if there was no SYSTEM.MAP queue in the database. This is fixed. IN-6090
- In previous versions, a channel to which the graphic was assigned with mosItemReplace message disappeared from the production cue. This is fixed. IN-6148, IN-6179
- Previously, the form field would not be cleared after deleting a channel from MOS device playlist. This is fixed. IN-6179
- Previously, frequent hourglass delays, some of which lasted 2 to 4 seconds, in refresh rundowns with a large number of stories could cause disruption to editing and production operations. This is fixed. IN-6248
- Previously, monitor did not update the Channel column in a mosItemReplace workflow. This is fixed. IN-6243
- Previously, users might encounter a significant hourglass delay after selecting many stories in the Queue panel and then clicking on the Context menu option. This is fixed. IN-6242
- Previously, users might encounter a significant hourglass delay after selecting many stories in the Queue panel and then clicking on the Story menu option. This is fixed. IN-6186
- Previously, running mapcheck from the console might cause a segmentation fault. This is fixed. IN-6222
- Previously, the mediaindex service would terminate after a restart, even if there were no errors in configuration. IN-6220
- In previous versions, MAM communication with Newsroom Management was interrupted, producing "Error connecting to [iNEWS SYSTEM], connection was aborted" message in the WSAPI logs. This is fixed. IN-6203
- In the previous version, Cyrillic and Georgian fonts were not displaying correctly in Command. This is fixed. IN-6271
- In a previous version, the client would hang on startup and the gnew session exited upon reading stories in SYSTEM.HTML-PLUGINS. This is fixed. IN-6275
- In previous versions, `list s-v` output didn't display the remote client IP address nor system name for connections to RXNET devices. This is fixed. IN-6319
- In the previous version, starting in a saved session or loading a session may change the Clock size for all users who log into the same iNEWS workstation PC. This is fixed. IN-6331
- Previously, the monitor server would sometimes exit unexpectedly when mosItemReplace processes were deferred. This is fixed. IN-6804, IN-6396
- In a previous version, the monitor server would randomly, but frequently, go into a state where status messages would no longer reach the iNEWS workstations, and modifications to the rundown would not get transmitted to Command. This is fixed. IN-6396, IN-6804
- After upgrading to v2020.4, some sites experienced brief periods when users would be unable to log in. This is fixed. IN-6785
- Previously, if a system was configured with three servers in SYSTEM.MAP, the monitor server might crash. This is fixed. IN-6784
- Previously, unfloating the first story in a playlist would cause the monitor server to crash. This is fixed. IN-6279

---

## Changes between 2019.9.2 and 2020.4

- Previously, iNEWS workstations crashed intermittently, especially on machines with Maestro plugins. This is fixed. IN-5346/IN-5402
- In previous versions, `inewsctc` could accumulate memory usage with the number of requests; this is fixed. IN-5497
- News stories in Cloud UX created using Chinese characters might not appear in the queue until after logout/login. This is fixed. IN-5558
- The iNEWS CTC seemed to consume a lot of RAM, but it was only because the service retains the memory for further use to decrease fragmentation; it releases RAM if the operating system requests it to do so. See Chapter 20 – CTMS Integration in the *MediaCentral Newsroom Management Setup and Configuration Guide* for instructions on how to limit memory allocation. IN-5799
- In a previous version, saving a story to a local server failed if the community session in another workspace was not available anymore. This is fixed. IN-5892
- In a previous version, a story's edit lock was not auto-renewed if another story was edit-locked in a second workspace. This is fixed. IN-5893
- Previously, after saving a story using TXNET/RXNET, the "S" sequence would be missing from the story. This is fixed. IN-5451
- After the reboot of a system and after running the `connect` command, Newsroom Management would sometimes show dependency messages that said some services failed to start. This is fixed. IN-5657
- In previous versions, if requested story form contained a reference to an absent list/form in the SYSTEM directory, iNEWS CTC responded with a "404 not found" error. This is fixed, so that the story form is returned with an empty list. IN-5670
- Following upgrades to 2018.11.x, some sites with firewalls set to close socket connections after a period of inactivity resulted in TXNET/RXNET connection issues. This is fixed with additional environment variables, documented in Appendix D of the *MediaCentral Newsroom Management Setup and Configuration Guide*. IN-5732:
  - `RXDATAPORTRANGE=<low port>..<high port>` — sets port range for rxnet connection (e.g. `RXDATAPORTRANGE=10000..10010`). If environment variable is not present or format is wrong, a random port is opened. The minimum amount of ports must be at least the number of sessions configured in `/site/config` for the rxnet server.
  - `TXDCKEEPALIVE=<0|20>` — "keep alive" interval for TXNET data channel so that 3 missed packages triggers a channel close. When `TXDCKEEPALIVE=0` is set in `/site/env/txnet`, it is disabled. Minimum value: 20 seconds; recommended setting is at least half the time interval set for firewall timeout.
- Previously, RXNET would open the database if it was closed when an FTP client attempted to connect to an offline server, resulting in an inability to run ONLINE commands. This is fixed. IN-5839
- In previous versions, iNEWS Workstations following Show Timing did not always update with the sync timing of the controlling workstation. This is fixed. IN-5851
- In previous versions, the client software might terminate when localtimeout expired and there was a field data warning dialogue open. This is fixed. IN-5450
- In previous versions, there were issues related to losing stories out of iNEWS. This is fixed. IN-5852

---

## Changes between 2019.9.1 and 2019.9.2

- In previous versions, sometimes the MOS item would be removed when saving the story with the MediaCentral Cloud UX Rundown app. This is fixed. IN-5768
- In previous versions, sometimes user would get a message "Failed to save story and release edit lock" when saving a story using the Rundown app. This is due to the timeout of the storylock and the rundown app did not refresh the lock. This fix requires an update to MediaCentral | Cloud UX 2019.6 or later. IN-5769, MA-5024
- In previous versions, saving a story with "modify-dev" field in the Rundown app will cause inewsctc to crash. This is fixed. IN-5771
- In previous versions, users would get an error when saving stories using the Rundown app in a queue with action job configured. This was because the story was not created with storylock and was moved before it was saved. This is fixed with new API added to inewsctc to enable creation of story with editlock. This fix requires an update to MediaCentral | Cloud UX 2019.10 or later. IN-5770, MA-5526

---

## Changes between 2019.9 and 2019.9.1

- In some previous versions, the production cue disappears if you put the insertion point to the immediate left of the production cue grommet, click N, P or CC, and save. This is fixed. IN-5727
- Previously in some workflows, the assigned channel would be cleared after monitor was loaded. This is fixed. IN-5652
- Previously, "renumber all" did not provide unique page numbers to stories when the queue contained BREAK stories. This is fixed. IN-5607
- Previously, the story group indicator would disappear when the user changed the queue form of the current viewing queue. This is fixed. IN-5566

---

## Changes between 2019.6 and 2019.9

- Previously, a user with Newsroom Management credentials on a Windows command line FTP client could still log in to the news database when the system was offline. This is fixed. IN-5454
- Previously, action server would crash, producing a core image file, when the joblist was modified and saved in the database. This is fixed. IN-5202
- Previously, bioserver might disconnect on an ABC system, which would result in incorrect system types. This is fixed. IN-169213
- Previously, after loading a playlist to Command, the monitor server on the Newsroom Management system would terminate with an 'out of memory' error, causing the rundown to be out of sync with the playlist and preventing users from deleting the playlist. This is fixed. IN-4800
- Previously, the monitor server terminated when receiving an update to a story with a large MOS attachment for Maestro which exceeds its size limit. This is fixed. IN-5110

> **Note:** Monitor would skip sending any attachment to Command that is larger than the limit supported by Command. Users are advised to add an environment variable, `MOS_SIZE_LIMIT=16333`, to their Newsroom Management system so these large items will be flagged with monitor error when monitor is turned on. This variable applies to all MOS items.

- In a previous version, Newsroom Management `inewsctc` device has had to be manually restarted often. This is fixed. IN-4927
- In a previous version, new users did not get updates in re-fresh queue. This is fixed. IN-5403
- Previously, iNEWS workstations crashed intermittently, especially on machines with Maestro plugins. This is fixed. IN-5346/5402

---

## Changes between 2019.2 and 2019.6

- Previously, force utility was missed from the utilities list in `/exc/` server folder. This is now fixed. IN-4973
- Previously, after doing a monitor load of stories to Command and locking the channel group, modifying a field in a news story that was auto-assigned to the non-default channel in Command would result in a duplicate clip appearing in Command. This is fixed. IN-4837
- In previous versions, NRCS Tool connections to Newsroom Management used licensed "general" session rather than non-licensed "aiws" session. This is fixed now. IN-4199
- With the introduction of UUID in version 6.0, stories copied to other queues, which were assigned new UUIDs, no longer linked back to corresponding stories in the original queue. This is now fixed. IN-4618
- Previously, presenter (P), machine control (M), and closed captioning (CC) text were printing in gray scale instead of colours defined in SYSTEM.STYLES queue. This is fixed. IN-4806
- In previous version, TXNET using polling fails to put order list to destination when all stories in the queue polled are deleted. This is fixed now. IN-4900
- Previously, when a user wanted to modify a Viz production cue from an edit-locked story, it would warn of a story lock, but still open in browser mode although it would not allow any modification. Now, it will warn that the story is locked and not launch the activeX plug-in in the browser. IN-5103
- Previously, a loud beeping sound would come from the PC's internal speaker when accessing the Maestro plug-in at a Newsroom Management workstation. This is fixed. IN-4998
- Previously, inewsctc did not reflect group changes on the fly, so adding/removing users from groups in SYSTEM.GROUPS queue stories did not follow to inewsctc restart in current functionality. Now, it does. IN-5082
- In the previous version, inewsctc would sometimes lock block 1 - the Directory ISAM. This is fixed. IN-5016
- Previously, users were unable to log in after the workserver utility stopped on both news servers. This is fixed. IN-4801
- Previously, when a full-width ampersand (&) was added to a story, that story would cause the crash of iNewsCOMU.dll in MOS Gateway. This is fixed. IN-4701
- Previously, modification of a story would sometimes record the wrong user ID in the MODIFY-BY field. This is fixed. IN-4479

---

## Changes between 2018.11 and 2019.2

- In previous version, using the sendpassword job list command to send a key locked story via txnet doesn't work correctly. This is fixed. IN-4611
- In previous version, bioserver goes to 911$ prompt unexpectedly. This is fixed now. IN-4759
- In previous version, multiple placeholders are created for the same story. This is fixed now. IN-4524
- Previously, Show timing would display \*\*:\*\* on the countdown clock when the Play key was pressed in Command for a video clip just prior to the story being sync timed in iNEWS. This is fixed. IN-4621
- In previous version, there is discrepancy between client and server calculation of audio time. This is fixed now. IN-4739
- Previously, monitor server could sometimes terminate with a message "Monitor exiting: Out of memory (proc_mosItemReplace,0):…" in iNEWS logs. This is fixed now. IN-4800

---

## Changes between 2018.9.2 and 2018.11

- In previous versions, some channel assignments in stories with production cues were not updating properly from the newsroom client. This is fixed. IN-4248 and IN-4204
- In previous versions, an error core file was generated on the server when a login was attempted with a username longer than 20 characters. This is fixed. IN-4222

---

## Changes between 2018.9.1 and 2018.9.2

- In previous version, using the sendpassword job list command to send a key locked story via txnet didn't work correctly. This is fixed. IN-4611
- In the previous version, TXNET sends production cues with uuids even when earlier NSML formats are specified in the job list for the txnet device. This is now fixed. IN-4575

---

## Changes between 2018.9 and 2018.9.1

- In a previous version, a story creation error would be displayed if a production cue was added via the CG Titling tool. This is fixed. IN-4326

---

## Changes between 2018.6.1 and 2018.9

- Previously, stories with blank create-date or modify-date in client would not index. This is fixed. IN-4198
- Previously, sending email via an action server (mailto) would not send story body data. This is fixed. IN-4280
- In this version of Newsroom Management, the "Configure" programme usage has been updated with the removal of obsolete items. IN-4153
- In previous version, iNEWS server installed with the default line in `/site/dict/words` "W_MCS_BASE_URL /https://mediacentralsearch/". In this version, this has changed to "W_MCS_BASE_URL /https://mediacentralsearch/search".

**Documentation Errata for v2018.9:** In v2018.6 version of the *MediaCentral Newsroom Management Setup Configuration Guide*, page 469, information related to MediaCentral search configuration was given as: `W_MCS_BASE_URL /https://mediacentralsearch/`. This was changed in v2018.9, so it should now be: `W_MCS_BASE_URL /https://mediacentralsearch/search`.

---

## Changes between 2018.6 and 2018.6.1

- In previous version, after setting up the configuration for CloudUX on the iNEWS side, folders were visible, but any attempt to open a queue or story would result in an error indicated that the server could not be located. This is fixed. IN-4191

---

## Changes between 2017.2 and 2018.6

- In previous version, if the NSML which the server received from the client has duplicate "idref" and "ae id" numbers, then user could not save such story after editing. This is fixed. IN-2434
- In previous version, when using the "TRANSMIT" option in the wire distribution story, a duplicate priority code is added to the distribution code and the output of a "list q-x" of that WIRES queues shows the extra character. This is fixed. IN-2179
- In previous version, custom configurations using the -e option to point to `/site/env/rxnet` to specific nsml version was broken. This is fixed. IN-3823
- In previous version, unload one MOS device affected other loaded MOS device in "Choice" configuration. This is fixed. IN-3600
- Previously, there was a memory fragmentation issue with bio server that caused it to consume a lot of memory. This is fixed. IN-2686
- In previous version, "create-date" field got erased if mail was sent to group of users. This is fixed. IN-3502
- After upgrade to version 2017.2, some HTML files would be formatted incorrectly. This is fixed. IN-3504
- In previous versions, changes in a refresh queue were not received by community users. This is fixed. IN-3533
- In previous version, opening large rundown with refresh trait followed to graying out new story and print story icons on main toolbar for long time. This is now fixed. IN-3624
- In previous versions, users experienced stories with Low link counts and "story open" errors in PRELIM queues. This is fixed. IN-3834
- Previously, when MOS items were dragged and dropped into the story, the activeX app information was saved and could subsequently be used to re-launch the item. When creating placeholder, since no activeX information was available, such operation was disabled. Now, the client is changed to enable such operation if the MOS item is subsequently modified to include such information with MOS Gateway 4.5 or mosItemReplace workflow. IN-1082
- Previously, story grouping would stop working after printing a selection of stories. This is fixed. IN-3664
- In previous versions, the client didn't properly display the order of a sorted (remote) queue when the user entered a new story in the remote queue. This is fixed. IN-3820
- In previous versions, a Connect to Service dialog would go to a Login screen instead of prompting for password. This is fixed. IN-3503

---

## Changes between 2017.1 and 2017.2

- Beginning with this version, the system formerly known as Avid iNEWS is now called MediaCentral Newsroom Management. Likewise, the servers are now called Newsroom Management Servers, but computers running the client software are still called iNEWS Workstations.
- In previous versions, typing in iNEWS stories containing many, many hyperlinks resulted in very sluggish typing of new text. This is fixed. IN-1828
- In previous versions, a Ctrl-F search involving the create-date or modify-date field might result in an error that caused the user interface to freeze, requiring user to restart the client. IN-176005
- In previous versions, dbrestore of a version 2.1 database failed. This is fixed. IN-3387
- In previous versions, font and point size changed when overwriting production cue text. This is fixed. IN-1578
- In previous version, iNEWS client throws an error when logging out with Show Versions workspace open. This is fixed. IN-2260
- In previous version, there was a problem that under specific scenario, the Backup Command server was monitor loaded, when the Primary Command servers were expected to be loaded. This is fixed. IN-3386
- In previous version, NRCS Tool in Media Composer doesn't display main level directory in iNEWS. This is now fixed. IN-3270

---

## Changes between 6.1 and 2017.1

- In previous versions, an external user might be unable to log in for several minutes after his or her user traits are modified. This is fixed. IN-2762
- In previous versions, when a user modified the body or story form of an iNEWS story, video items in production cues were temporarily deleted and re-added, changing channels to the default and causing issues with cued and playing items in that story. This has been fixed. IN-2530
- This version has the monitor changes that fixed the multiple/jumping green line issues in Command when editing items in a story that has items being played. IN-2837
- In previous versions, users experienced problems dragging and docking toolbars when multiple workspaces were open. This is fixed. IN-1579
- In previous version, bioserver could terminate unexpectedly after server reboot and/or during startup of services in A/B system configuration. This is fixed. IN-2677
- In previous versions, Client crashes if all stories are copied from a queue to a local database. This is fixed. IN-2574
- In previous versions, iNEWS CTC — the iNEWS adapter for the Connectivity Toolkit Media Suite (CTMS) — would not reconnect to MediaCentral if MediaCentral restarted. Users needed to manually restart the adapter, `inewsctc`. The issue is fixed in Avid MediaCentral 2.10.2 with this version. IN-2920
- In this version of iNEWS, the dictionary token `W_BINDBUS` in `/site/dict/words` is no longer used to define the connection to the busserver for the mediaindex service. The mediaindex service now uses the same setting the CTMS service uses to define the IP and port of the MediaCentral server: `W_ACS_GATEWAY_HOST /<IP address>` and `W_ACS_GATEWAY_PORT /9900`.
- In previous version, using searchtape to restore stories could not restore or create UUIDs. This is fixed.
- In this version of iNEWS, the `dbrestore` utility has a new flag `u` to allow stories to be written back into the system more than once, to different locations. If there are stories of the same UUID, a new UUID will be assigned to the restored stories.

```
RH7-A# dbrestore
Usage: dbrestore <key> [option...]

Key may contain:
  s  Or d  – restore stories only OR directories and stories
  p  – restore project files
  i  – restore ISAM files
  v  – verbose, list directory names
  vv – as v but list EACH slug also
  x  – ask before restoring each ISAM file
  f  – print facts about blocks and times
  u  – restore story more than once, even if that UUID present
  t  – print table of contents, don't restore
  Must be superuser to list ISAM files
```

---

## For MediaCentral | Newsroom Management v2019.6

- New environment variable for `inewsctc`: **CTCDEBUG**. Options: trace, debug, info, warning, error. Default value: trace.
- Two new local print options for defining print styles:

| Option | Parameter Value | Description |
|---|---|---|
| `WinAutoPageBreak` | Yes \| No | Specifies whether to print with the optional story preview, while making sure the page break is enforced so as to avoid having a story start on a page below another story causing the second story to continue to a second page. Default is Yes. |
| `WinColorScript` | Yes \| No | Specifies whether to use colour printing in the script printouts. If enabled, coloured text is used instead of shading; closed captioning, presenter instructions, and machine control instructions are printed in green, red, and blue respectively. Default is NO. |

- The AIWS session has been re-instantiated to allow the NRCS tool to connect to Newsroom Management. It must be added to `/site/config` in two places:

In the Host section:
```
reslist  711:712      ; Instinct AIWS (NRCS tool) sessions
```

In a separate AIWS Sessions section:
```
aiws  711  -  gnews  -  ; Instinct (NRCS tool) session
aiws  712  -  gnews  -  ; Instinct (NRCS tool) session
```

> **Note:** Run the `workdebug stat` command, and the NRCS tool session will show up as AII (Avid Interplay Instinct). Run the `list` command, and any user logged into Newsroom Management from the NRCS tool will appear as an AIWS session.

- This version features improved support for HTML5 plugins. Previously, Newsroom Management only supported base URL for plugins. This version now supports parameters in the URL for plugins.
- The calendar in Newsroom Management now honours the First Day of the Week Calendar setting of the Windows-based workstation on which it is running.
- The numbering scheme in the PAGE column of a rundown queue, for grouped stories, is now configurable. You would need to run `maketab -i` at the server for any changes to the dictionaries files to take effect. Two new words in `/site/dict/words`:

| Standard Name | Translation |
|---|---|
| `W_GSEPARATOR` | `/–` (hyphen, default) or `/.` (period) |
| `W_GENUMERATOR` | `/A` (alphabetic, default), `/#` (numeric, no padding), `/##` (numeric, one padding zero), `/###` (numeric, two padding zeros) |

Example: `W_GSEPARATOR /.` and `W_GENUMERATOR /##` would enable group story numbering such as: C01.01, C01.02, C01.03 … C02.01, and so forth.

---

## For MediaCentral | Newsroom Management v2019.2

- This version provides new support for the Maestro HTML5 MOS plugin. For more information, see the HTML5 Plugins section in the *MediaCentral | Newsroom Management Setup Configuration Guide*.

---

## For MediaCentral | Newsroom Management v2018.11

- This version provides a new wire profile option, called **join**, for Data Receiver updates. For more information, see "Adding a Wire – Data Receiver" and "Wire Profile Options" in the *MediaCentral | Newsroom Management Setup Configuration Guide*.
- Also supported is `/site/config` session for a Data Receiver wireserver as shown in the sample `/site/config` file in Appendix B of the *MediaCentral | Newsroom Management Setup Configuration Guide*.
- Starting from this version, custom fields in Media Central Search are supported.
- iNEWS CTC supports new notifications for stories, queues, and folders with a richer set of information. To receive these notifications for changes on all servers (A/B/C), an iNEWS CTC needs to be configured on each of the servers.

> **Note:** For performance reasons, changes by monitor will not result in notifications.

---

## For MediaCentral | Newsroom Management v2018.6

- This version introduces HTTPS support for file linking. See Chapter 18 on "File Linking" in the *MediaCentral | Newsroom Management Setup Configuration Guide*, and also the TomcatInstallFileLink.pdf that comes with the new upgrade/install files.
- This version supports expanded centralised indexed searches from MediaCentral | Cloud UX integration by sending data for indexing to MediaCentral | Search. See Chapter 19 on "Central Indexing" in the *MediaCentral | Newsroom Management Setup Configuration Guide*.
- This version provides network recovery when the iNEWS Workstation loses connection to the network. Users receive a dialogue box informing them of the issue, giving them the option to reconnect, and after that, giving them the option to restore backed-up stories.
- WSAPI is now qualified to run under Windows Server 2016 with Tomcat server version 7.0 and Java version 8.
- New UID for production cues in NSML: this improvement assigns a new attribute uid to each of the production cues. It helps automation to better maintain machine control for changes; with the uid, production cues can be tracked for changes.
- The Chromium engine was updated for this release.
- This release introduces a new Licensing Agent that handles all types of sessions and licence counting, allowing for a single, combined licensing façade. IN-3448
- New environment variable: `USE_AUTHENTICATION_BY_IP=0/1` — enables service to be configured to authenticate with MCUX or MCCUX server for inewsctc connection.

---

## For MediaCentral | Newsroom Management v2017.2

- New environment variable to control the port range used for rxnet connections. Syntax: `RXDATAPORTRANGE=<low port>..<high port>`. Example: `RXDATAPORTRANGE=10000..10010`. If environment variable is not present or format is wrong, a random port is opened for connection.
- Enhancements related to Central Index, such as custom fields from NSML, grouping, and improved labels. IN-3092
- In this version, a UUIDtraits utility with checkpoint online flag is added:

```
RH73-A# uuidtraits
Usage:
  UUID :search value(path, stamp) by UUID
  -s UUID :search story(file id) by UUID
  -c :check integrity, and show issues
  -f :fix founded integrity issues
  -o :use checkpoint partition while checking or fixing issues
  -p :print entire UUID table
  Uuidtraits utility online
```

---

## For iNEWS v2017.1

### iNEWS with Azure

This version of iNEWS supports integration with Microsoft Azure. Avid iNEWS in Azure is a hybrid deployment that means some services will run on virtual machines in Azure while others will run on premises, upon your choice either virtualised or on hardware. For more information, see *iNEWS NRCS with Microsoft Azure Integration Guide*.

### FTPS Support

This version of iNEWS adds FTP over SSL support. For more information, see the *iNEWS FTP/FTPS server Protocol Specification* document.

### Media | Index Searching

This version of iNEWS supports searching custom iNEWS metadata via Media Index, using a central index. To be able to search on custom fields, a re-index is required. For more information, see the Media | Index Integration chapter of the *Avid iNEWS Setup Configuration Guide*.

---

## Microsoft Windows Critical Updates

Avid recognises that it is very important to be able to deploy Microsoft security patches to Windows-based products as quickly as possible. Avid recommends that systems be kept up to date in order to maintain the highest level of security, and encourages installing all *critical* operating system updates provided by Microsoft.

In the unlikely event that one of these updates causes an issue, it is recommended to uninstall the update and contact Avid customer support as soon as possible. Avid will investigate the incompatibility and, if necessary, will provide a software update or work around to allow products to properly function with the Microsoft update in question.

---

## Documentation Errata

### Setup Configuration Guide

In past versions of the MediaCentral Newsroom Management Setup Configuration Guide, in the Forms chapter, a product integration section erroneously identified the product as MediaCentral | Cloud UX. It should have been MediaCentral | UX. This has been fixed in the section now titled "MediaCentral | UX Integration".

---

## Known Issues and Limitations

### iNEWS SendMail

With new security measures enabled in the Gmail relay server, mail from iNEWS through sendmail will be rejected.

**Workaround:** Configure the Gmail SMTP relay server for sendmail. See the "Configure Gmail SMTP Relay Server for Sendmail" section below.

### MAP Story Limit

The limit of devices for a rundown in the MAP story is 20. Having more than 20 devices configured for a rundown in the MAP story will result in a client crash when attempting to open the Monitor dialogue.

### CloudUX Integration

If a Newsroom Management user name is used on two or more different computers to log into CloudUX, it will only show as a single session in MediaCentral Newsroom Management.

### Edit Locks

- Information about edit locks may contain a session identifier if the username is not known. This is the case for locks acquired through inewsctc API.
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

iNEWS console is no longer supported by default. For information on how to set up serial console in RH7, see: https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/sec-GRUB_2_over_a_Serial_Console.html

### Diskcopy Reports CRITICAL Error

If `diskcopy` reports messages "diskcopy: 17:09:59 [CRITICAL] first block mirror error: on block 66958 (5:Input/output error)", users should check the message at the end of the log for actual status. "Successful – Disk is mirrored" indicates that the process completed successfully, and the error only indicates that there are empty blocks that could not be copied.

### Divehi Support

With the new richedit control, sometimes the last line of text will align to the left for a right-aligned story.

### Chinese Localisation Issue

Chinese input method DaYi cannot be used to create new queues or folders.

### German Localisation Issue

Using Ctrl+Shift+Right Arrow incorrectly marks a word if that word begins with a German Umlaut (ä, Ä, ö, Ö, etc.) — a diacritic symbol over vowels, regardless of case.

### Local Database

To download print styles and story forms to your local computer for use when working offline, you must have Read Access to the iNEWS System directories where styles and forms are located. This is by design.

### Windows 7 and Windows 8 with UAC Enabled

When User Access Control (UAC) is turned on, users cannot drag-and-drop text from an outside application, such as Microsoft Word, into iNEWS.

**Workaround:** Use Ctrl+C and Ctrl+V to copy and paste the text between applications.

### External Users (LDAP)

Beginning with version 4.x, Avid iNEWS server allows user authentication via Windows Active Directory; however, external users are not compatible with the following clients:

- iNEWS Workstations earlier than 4.0.0
- FTP clients: teleprompters, NewsCutter's NRCS Tool
- COM clients: NewsCutter's NRCS Tool; Instinct; MOS Gateway's roStorySend and mosObj
- Web Client
- Web Access
- Interplay Central client earlier than 1.3.0

### Plug-ins

Some plug-ins, such as AMG Journalist, will not paint correctly in iNEWS.

**Workaround — To resolve the painting problem issue:**

> **Note:** AMG Journalist is used in the procedure as a plug-in example.

1. In the iNEWS executable directory, create a new text file named `ActiveXRedraw.txt`.
   - For 64-bit workstations, the directory is: `C:\Program Files (x86)\Avid\iNEWS\`
   - For 32-bit workstations, the directory is: `C:\Program Files\Avid\iNEWS\`
2. Open the registry editor using **regedit** in the Run dialogue box.
3. Select Edit > Find > AMG Journalist and locate the CLSID for the plug-in.
   - For 64-bit workstations, the CLSID is at: `Computer\HKEY_CLASSES_ROOT\Wow6432Node\CLSID\`
   - For 32-bit workstations, the CLSID is at: `Computer\HKEY_CLASSES_ROOT\CLSID\`
4. Take the CLSID (the folder name) and put it into the `ActiveXRedraw.txt` file.
5. Save the file.
6. Reload iNEWS. The painting problem for plug-ins like AMG Journalist will be resolved.

### UNC Paths

- As a result of server-side URL changes in iNEWS 3.4.2, UNC paths with spaces no longer work correctly in the iNEWS client software. In a future version of the iNEWS client software, these links will be client-only, allowing a user to launch them from the iNEWS Workstation without saving them as URLs on the iNEWS Server.
- iNEWS integration with Intelliscribe printing should be configured at 300 DPI with "Enhanced Features" disabled. Setting a higher DPI or enabling enhanced features can cause long delays in printing.
- There are screen painting issues when the Vertigo Xmedia plug-in and the Aurora Assignment List plug-in (version 7 or later) are both installed on the same client. The Xmedia splash screen can cause the Xmedia tree to be inaccessible.

**Workaround:** Rename or remove `skinCrafter3_vs2008.dll` from the Assignment List installation directory.

### iNEWS Web Services API

The iNEWS Web Service API cannot be undeployed via the Tomcat management interface when Tomcat is running on a Windows host.

**To undeploy on Windows:**
1. Stop the Tomcat service.
2. Delete the `inewswebservice` file and folder from the Tomcat webapps directory.
3. Place the new `.war` file into the webapps directory.
4. Start the Tomcat service.

> **Note:** Undeployment through the management interface works correctly if the Tomcat service is running on a Linux host.

### Multiple Monitors

If running the iNEWS client software on a dual monitor workstation, there are some key issues you could encounter:
- If the application is maximised when closed, it will be maximised on the primary monitor when it is reopened, regardless of which monitor it was on when closed.
- Moving a user from a dual monitor machine to a single monitor machine, such as an undocked laptop, could result in the application opening to a screen that no longer exists.

**Workaround:** Right click on iNEWS in the Windows taskbar and select Move. Then press one of the arrow keys on the keyboard; this will lock the application's window to the mouse. You can then move the mouse pointer onto the screen and the iNEWS main window will move with it.

### Macros and Keystrokes

Some PCs, when upgraded from Internet Explorer 6 to Internet Explorer 7 or 8, will experience issues with macros that perform several functions in rapid succession; the macros might not complete all assigned activity in iNEWS. This is most apparent with macros that trigger the Local Print dialogue box or the User Preferences dialogue box.

**Workaround:** Place the name of the dialogue box after the `K_WINDOW` token value immediately following the keystroke that opens the dialogue box. For instance, instead of just `{ctrl p}` to open the Local Print dialogue, the macro should be: `{ctrl p} {window Local Printing}`. The text following 'window' must match exactly the name of the dialogue box as it appears in the title bar. The 'K_WINDOW /window' token can be changed in `/site/dict/keymacros`.

Another available workaround is to add `{pause <#>}` statements of one or two seconds to problem macros at the point in the macro where activity ceases.

---

## Configure Gmail SMTP Relay Server for Sendmail

Configuring the Gmail SMTP relay server for sendmail involves generating a Gmail application password, updating the sendmail configuration, and adding lines to an authinfo file.

> **WARNING:** Before you start modifying sendmail configuration files you must add the following lines to the `/etc/mail/sendmail.mc` file to not lose the iNEWS mailing configuration:

```
define(`ALIAS_FILE', `/site/.mail/aliases')dnl
dnl
MAILER_DEFINITIONS
################################ iNEWS Server Mailer
R$+<@LOCAL>          $@$1               delete LOCAL
R$+<@$-.LOCAL>       $@$1<@$2>          delete .LOCAL
R$+<@$=w>            $@$1               delete local hostname
R<@>                 $n                 errors to mailer-daemon
CPnews
Mnews,    P=/exc/newsmail, F=DFhlmnsu, S=news, R=news, A=newsmail -j
$j $f $u
Snews
################################ iNEWS Server Mailer
dnl
dnl
LOCAL_NET_CONFIG
################################ iNEWS Server Mailer
R$*<@local.news.>    $#news$@$w$*:$1    user@local.news
################################ iNEWS Server Mailer
dnl
```

### Install Dependencies

```bash
# yum install cyrus-sasl-plain
```

### Generate Gmail Application Password

1. Log in to your Gmail account and go to the Manage your Google Account page.
2. Go to the Security page.
3. Enable 2-Step Verification if it is not enabled yet.
4. Click on the App passwords link.
5. In the Select app drop-down menu, select Mail.
6. In the Select device drop-down menu, select Other.
7. Enter the name for your application, such as iNEWS.
8. Click GENERATE.
9. Copy your password from the pop-up window.

### Update sendmail Configuration

Add the following lines to the `/etc/mail/sendmail.mc` file before the `MAILER(smtp)dnl` line:

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

Add the following line to the `/etc/mail/authinfo` file:

```
AuthInfo: "U:root" "I:EMAIL" "P:PASSWORD"
```

Replace 'EMAIL' and 'PASSWORD' with your actual Gmail email address and application password.

### Apply Configuration

```bash
# cd /etc/mail
# make
# systemctl restart sendmail.service
```

---

## Technical Support

- **Avid Online Support:** www.support.avid.com (24/7)
- **Sales / North America:** 800-949-AVID (800-949-2843)
- **International:** +1 978-275-2480
