---
product: mediacentral-mos-gateway
product-area: newsroom-management
version: "2024.10.5"
doc-type: scg
source: pdf
source-file: MOSgwy_2024.10.5_SCG.pdf
confidentiality: public
date-added: 27/04/2026
last-updated: 27/04/2026
status: current
products-affected: [mediacentral-mos-gateway, mediacentral-newsroom-management]
feature-tags: [scg, install, upgrade, compatibility, mosconfig, mos-protocol, ftp, ftps, replication, vault-credentials, mos-admin, system-map, troubleshooting, windows-server-2025, vc-2015-2019, restart-services, port-921]
---

# MediaCentral | MOS Gateway — Setup Configuration Guide v2024.10.5

**Source PDF:** MOSgwy_2024.10.5_SCG.pdf
**Copyright:** © 2025 Avid Technology, Inc.
**Footer date:** Created 11/6/2025
**Online Support:** <http://www.avid.com/onlinesupport>

> **Source anomaly — malformed KB URL:** The document contains the following URL that is malformed
> due to a double-protocol prefix:
> `http://https://avid.secure.force.com/pkb/articles/en_US/User_Guide/MediaCentral-Newsroom-Management`
> The correct base URL is `https://avid.secure.force.com/...`. This appears to be a document
> authoring error. ⚠️

> **Source anomaly — mosconfig.xml path inconsistency:** Chapter 3 states the default installer
> destination is `C:\Program Files (x86)\Avid\iNEWS MOS Gateway\`. Chapter 5 states the
> mosconfig.xml is placed by default at `C:\Program Files\Avid\MOSGateway`. These are different
> paths. The Ch5 note acknowledges the location can vary depending on installation choices. The
> vault file location (Ch5, p62) confirms `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`,
> consistent with the Ch3 installer path. The Ch5 mosconfig path may reflect an older or
> alternative default. Always verify the actual installed location post-installation. ⚠️

---

## Revision History

| Date | Changes |
|---|---|
| Nov 2025 | Removed obsolete commands; added Restart Services Procedure |
| Aug 2023 | Minor formatting updates |
| Jul 2023 | Added note to `<ncs>` Group section for version 2023.7 |

---

## Compatibility

### Qualified Operating Systems

| Component | Qualified OS |
|---|---|
| MOS Gateway | Windows Server 2025, Windows Server 2022 |

> Windows Server 2025 support is new in this guide; earlier SCGs qualified WS2019/WS2016 or WS2019/WS2022.

### Newsroom Management Dependency

- Requires Newsroom Management (iNEWS) version **2022.3 or later**.

### Qualified Protocols

| Item | Supported |
|---|---|
| MOS Protocol 2.6 | ✓ |
| MOS Protocol 2.8 | ✓ |
| MOS Protocol 3.x | ✗ Not supported |

**Device connection limit:** A single MOS Gateway supports a maximum of **2 MOS device connections**.

### Qualified MOS Devices

The following devices are listed as qualified in this guide:

| Device |
|---|
| Autocue |
| AutoScript |
| Avid AirSPACE (CountDown) |
| Beehive |
| Brainstorm |
| Chyron Aprisa 100 |
| Chyron Aprisa 250 |
| Chyron Aprisa SSX |
| Grass Valley NewsQ Pro |
| Netia Radio-Assist |
| Omnibus Columbus |
| Omnibus News Control |
| Pebble Beach Systems |
| Pinnacle FXDeko |
| Proximity Xenostore |
| Sony NewsBase |
| VertigoXmedia |
| vizrt Pilot |

For the latest list, see: <https://www.avid.com/products/inews/specifications>

---

## Chapter 1 — Introduction

MOS Gateway enables communication between Newsroom Management (iNEWS) and MOS-compliant production devices using MOS Protocol 2.6 or 2.8. This guide covers installation, NM server setup, MOS Gateway configuration, and troubleshooting.

**Prerequisites assumed:**
- Functioning network with Newsroom Management servers operational
- NM servers connected to a console multiplexor with Customer Support dial-in access
- Person performing installation has attended an NM system administration course (or equivalent), has working knowledge of `ed` (UNIX line editor), and is familiar with NM client software

---

## Chapter 2 — Preparing for Installation

### Hosts File Configuration

Before installing MOS Gateway, IP addresses must be added to hosts files on both sides:

**On each Newsroom Management Server** — add MOS Gateway server addresses to `/etc/hosts`:

```
125.1.10.50 MOSGWY mosgwy  #MOS Gateway machine
125.1.10.60 MG1 mg1        #MOS Gateway Server1 (backup)
125.1.10.70 MG2 mg2        #MOS Gateway Server2
```

> Recommendation: To maximise reliability and minimise latency, install MOS Gateway on the Mirror Net of the NM hosts and use static IP addresses in `/etc/hosts`. This avoids dependence on DHCP or DNS.

Procedure (via `ed` UNIX line editor at NM console):
1. Select all servers at console
2. Type `su` to log in as superuser
3. Type `ed /etc/hosts`
4. Type `a` to append, enter IP address lines, type `.` to end append mode
5. Save with `w` (lowercase only), quit with `q`

**On the MOS Gateway Server** — add NM server IP addresses to the Windows hosts file:

Procedure covered in Chapter 3 (step preceding installation).

---

## Chapter 3 — Installing MOS Gateway Program Files

### Installation Requirements

- Any previous version of MOS Gateway must be **uninstalled** before installing a new version.
- **In-place upgrades are not supported.**
- Prerequisite: **Microsoft Visual C++ 2015-2019 Redistributable (x86)** must be installed.
  > This differs from versions 2022.3.4 and earlier, which required Microsoft Visual C++ 2008 Redistributable SP1.

### Adding IP Addresses to Windows Hosts File (Pre-installation Step)

Before running the installer, add NM server IP addresses to the Windows hosts file on the MOS Gateway server (`C:\Windows\System32\drivers\etc\hosts`). Format example:

```
125.1.0.1 NRCS-A nrcs-a nrcs-a.yourdomain.com
125.1.0.2 NRCS-B nrcs-b nrcs-b.yourdomain.com
```

### Installation Procedure

1. Run `Setup.exe` from the MOSGateway folder in the iNEWS ISO.
   The InstallShield Wizard opens. **Installer name:** "MediaCentral® | MOSGateway".
   > This differs from earlier versions, which displayed "iNEWS MOS Gateway" as the installer name.
2. Click Install to continue. InstallShield will prompt for installation of Avid License Control.
   > Prerequisite prompt: If Microsoft Visual C++ 2015-2019 Redistributable (x86) is not installed, it will be prompted here.
3. Click Install to install Avid License Control.
4. Click Next to begin the iNEWS MOS Gateway InstallShield Wizard.
5. Read the Avid Software License Agreement.
6. Accept the terms.
7. Click Next.
8. Accept the default destination folder (`C:\Program Files (x86)\Avid\iNEWS MOS Gateway\`) or choose an alternative location. Leaving the default will create any necessary folders.
9. Click Next.
10. Click Install when the wizard prompts that installation is ready.
11. When installation is complete, activate MOS Gateway. Click Done to activate later.

### Activation — Direct (Computer Has Internet Access)

1. Open Avid License Control (if not already open).
2. Click Activate.
3. Select "This computer's Internet connection."
4. Click Continue.
5. Enter System ID and Activation ID.
6. Click Activate.
7. Click Done to finish. If the MOS Gateway installer is still open, click Finish.

### Activation — Indirect (No Internet on MOS Gateway Computer)

1. Open Avid License Control.
2. Click Activate.
3. Select "Another computer's Internet connection."
4. Click Continue.
5. Enter System ID and Activation ID in the appropriate fields.
6. Click Activate.
7. Follow on-screen prompts. Go to <http://www.avid.com/license> on a computer with internet access and enter the System ID, Activation ID, and Device ID.

> **Avid recommends:** Write down the System ID, Activation ID, and Device ID for later reference.

### Upgrading MOS Gateway

> **Warning:** Running the setup program on a system that already has a previous version installed will not overwrite all necessary files. Previous versions of mosconfig.xml cannot necessarily be used with later versions. Since the new configuration file will often require editing after installation, **Avid recommends printing the old mosconfig.xml as a reference before uninstalling the old software**.

**To print the MOS configuration file:**
1. Open Notepad.
2. Select File > Open.
3. Navigate to `C:\Program Files (x86)\Avid\iNEWS MOS Gateway` (or the installed location).
4. Print using File > Print or Ctrl+P.

**To uninstall MOS Gateway:**
- Use the Add/Remove Programs feature in Windows Control Panel.

After uninstalling, install the new version using the procedure above, then edit the new default mosconfig.xml with site-specific `<mosDevice>` information from the printed copy.

---

## Chapter 4 — Setting up the Newsroom Management Server

All tasks in this chapter are performed at the NM console or at an iNEWS Workstation. The chapter provides a 9-step configuration procedure.

**Required reference:** *Newsroom Management Setup and Configuration Guide* (especially Chapters 2, 5, 6, 8, 10).

### Configuration Summary (9 Steps)

1. Create a Monitor Server for Each Show
2. Create Composite and Event List Queues
3. Setup Queue and Story Forms
4. Edit the SYSTEM.MOS-MAP Story
5. Assign Forms to Queues
6. Create an Entry in the SYSTEM.MAP Story
7. Add IP Addresses for the MOS Gateway
8. Update NM System Dictionaries (Optional)
9. Configure NM for MOS Replication (Optional)

---

### Step 1: Creating a Monitor Server for Each Show

A monitor server is a utility program that checks a show's event requests for errors, creates composite and event lists, and sends playlists to MOS Gateway.

- Monitor server requires a device number and mailbox number (typically the same value — a 3-digit number from the range reserved for server programs, e.g. 201–300).
- Valid standard mailbox numbers: 1–4096.
- The mailbox number must be assigned to both the monitor server and the rundown queue it monitors.

**Procedure (at NM console):**

1. Check `/site/config` for the next available 3-digit device number.
2. Verify the same number is available as a mailbox: `list mailbox=266 c`
3. Add the monitor server device number to the `servers` line in the appropriate host definition in `/site/config`:
   ```
   ed /site/config
   servers 261 263 265 267
   ```
   Save with `w`, exit with `q`.
4. Add a configuration line for the monitor server to the host definition belonging to the NM Server that will run the program:
   ```
   server <device#> <type> <mailbox> <device name>
   ```
   Example:
   ```
   server 267 monitor 267 - ;monitor server
   ```
   Server line parameters:
   | Parameter | Description |
   |---|---|
   | Device | 3-digit device number; must also appear in `servers` line |
   | Type | Server program type — `monitor`, `action`, `distribution`, etc. |
   | Mailbox | Valid standard: 1–4096 |
   | Device name | Up to 8 characters, or hyphen if none |

5. (Optional) Test changes: see "Testing the Site Configuration File After Alteration" in NM SCG Ch10. Back up `/site/config` after editing.

**Reconfigure the system** (no shutdown required):
1. At console, select master computer (server A).
2. Type `su` and enter superuser password.
3. Take system offline: `NRCS-A$ offline`
4. Configure: `configure`
5. Bring back online: `NRCS-A$ online`
6. Exit superuser: Ctrl+D.

**Assign the mailbox to the rundown queue** (at iNEWS Workstation as system administrator):
1. Navigate to the rundown queue in the Directory panel.
2. Right-click → Properties.
3. Select the Maintain tab.
4. Select Standard radio button in the Mailbox section.
5. Type the mailbox number (e.g. 267).
6. Click OK.

**Viewing monitor server mailbox assignments:**
```
list c monitor
list mailbox=267 d    (all queues/directories using mailbox 267)
list mailbox=267 c    (check if any server uses mailbox 267)
```

---

### Step 2: Creating Composite and Event List Queues

The monitor server scans stories for machine control events and builds composite (all devices) and event lists (per device). Queues for these lists must exist in the NM database.

**Procedure (at iNEWS Workstation as system administrator):**
1. Navigate to the directory for the new queue.
2. Click Tools > New Queue (or right-click → New Queue).
3. Name the queue — e.g. `COMPOSITE` or `CG1`. Queue pathname example: `SHOWS.6PM.COMPOSITE`, `SHOWS.6PM.CG1`.
4. Press Enter.
5. Set Preview Lines via Queue Properties > User Interface tab.
6. Remove the Inverted database trait; apply Refresh.
7. Assign write security group restricted to superusers only.

> Note: The monitor server will not create lists for devices that do not have list queues. For mapping monitor server to composite/event list queues, see Step 6.

---

### Step 3: Setup Queue and Story Forms

Add MOS Gateway fields to rundown queue and story forms. **A field must exist in both the queue form and the story form.**

| Field | Description |
|---|---|
| EVENT-STATUS | Displays availability and play status of a Command or MOS event (OFFLINE, CUED, PLAYING, STOPPED, etc.) |
| ITEM-CHANNEL | Required to change the channel for primary events; set or display channel for primary Command or MOS video events. Both VIDEO-ID and ITEM-CHANNEL are required when integrating with Command — if ITEM-CHANNEL is missing, story updates will cause Command to recue to default channel |
| MOS-ACTIVE | Write-protected; required by Story Form to accept MOS events. Cleared when user selects Delete Machine Control |
| MOS-DEVICE | Required to display the AMCPID of the MOS device; when monitor server is on, displays device status in STATUS field — even for devices not in SYSTEM.MAP |
| MOS-DURATION | Editable; required to include duration from MOS events in CUME-TIME, BACK-TIME, or TOTAL-TIME calculations. User-entered values override MOS event duration for show-timing only (not sent to device) |
| MOS-TITLE | Write-protected; displays descriptive text associated with MOS or CAP events |
| MOS-OBJID | Write-protected; captures information from the `<mosobjid>` tag in MOS communication |
| RUNS-TIME | Sum of all `runs=` times in story production cues plus MOS-DURATION. Can accept user-entered times. Default keyword is `RUNS` (case-insensitive), e.g. `RUNS=25`, `RUNS=1:30`. Token `W_RUNS` in `/site/dict/words` can be redefined |

> **RUNS-TIME note:** A runs time entry of 115 equals one minute fifty-five seconds (1:55). The number 115 without a colon is interpreted as seconds.

**Duration calculation:** RUNS-TIME = sum of all `runs=` entries + MOS-DURATION field content. If user enters a time in RUNS-TIME, MOS-DURATION is ignored. TOTAL-TIME = RUNS-TIME + AUDIO-TIME + TAPE-TIME.

---

### Step 4: Edit the SYSTEM.MOS-MAP Story

The SYSTEM.MOS-MAP story contains the DeviceTable — a two-column table mapping MOS device IDs to NM device names.

```
TABLE-START DeviceTable

Mos.omnibus.co.uk OmniMOS

TABLE-END
```

> If the SYSTEM.MOS-MAP story does not exist, create it as the first story in the MOS-Map queue in the System directory.

- Column 1: MOS device's mosID — must match the `<mos>` value in mosconfig.xml
- Column 2: NM device name — must match the `<amcp>` value in mosconfig.xml

**ReplaceTime option** — controls whether MOS item time is displayed in rundown or story form:
- To block time info from all devices: add `ReplaceTime=NO` before the DeviceTable
- To block time for a single device only: set `ReplaceTime=YES` globally; append `<noDur>` to the device's line in the table

> **Warning:** The `<noDur>` tag must not be used at sites with workstations running NM earlier than 1.5.1 — earlier versions may display `<noDur>` as a channel name.

Extended DeviceTable example:
```
ReplaceTime=YES
TABLE-START DeviceTable
;MOSID AMCPDeviceName
sony sonyem
MOSGATE qamosgw chan1 chan2 chan3
PILOT pilot
AIRSPACE airem
VERTIGO vertigo
NewsQPro NQPro <noDur>
NETIAMOS netia
TABLE-END
```

---

### Step 5: Assigning Forms to Queues

Assign forms to composite and event list queues (e.g. `mcs-composite` form to `SHOWS.6PM.COMPOSITE`).

**Procedure (at iNEWS Workstation):**
1. Navigate to the queue in the Directory panel.
2. Right-click → Properties.
3. In Queue Properties, use the Forms tab:
   - Queue drop-down: select the queue form
   - Story drop-down: select the story form
4. If modifying an existing form, tick "Update existing stories to use story form."
5. Click OK. Users must log off and back on to see new settings.

---

### Step 6: Create an Entry in the SYSTEM.MAP Story

The SYSTEM.MAP story entry specifies to the show's monitor server: the rundown queue location, composite and event list queue locations, authorised groups, and quit time.

**Entry header format** (single paragraph, max 255 characters):

| Parameter | Description |
|---|---|
| Rundown Queue | Full pathname of the show's rundown queue |
| Event List Directory | (Optional) Directory where event lists are stored |
| Composite List Queue | (Optional) Queue where composite list is stored |
| Group of Users | (Optional) Security group; put hyphen if no restriction |
| Quit Time | Time (24-hr format, e.g. 1915 for 7:15 PM) or duration (D prefix, e.g. D130 for 1h30m) |

**Device list** follows each entry header. Device list parameters:
- Type of device: `ss` (still store), `cg` (character generator), `cart`, `mos`, etc.
- Name of production device
- Whether monitor updates device playlist
- Form for the show
- Last parameter (Drive, Directory/User#, Address/Stack per device type, or hyphen for MOS devices)

Example SYSTEM.MAP story:
```
;RUNDOWN EVENT DIR COMP DIR GROUP (OFF TIME)
;DEVICE DEVNAME UPDATE MCT TEMPLATE (MSG DIR)
SHOW.6P.RUNDOWN SHOW.6P SHOW.6P.COMPOSITE - 2100
ss ss@bcssvr-1,bcssvr-2 UPDATE bcs-bcw
cg cg@bcssvr-1,bcssvr-2 UPDATE bcs-bcw C:NAB:500 699
cart pdr@bcssvr-1,bcssvr-2 UPDATE bcs-bcw 3
mos sony@mosgwy UPDATE bcs-bcw -
```

> **Production device naming:** The part before `@` must match the `<amcp>` value in mosconfig.xml; the part after `@` must match the hostname of the MOS Gateway computer as defined in `/etc/hosts` on the NM server.

---

### Step 7: Adding IP Addresses for the MOS Gateway

Add MOS Gateway server IP addresses to `/etc/hosts` on all Newsroom Management Servers (see also Chapter 2). Procedure mirrors the `/etc/hosts` editing in Ch2 (using `ed` editor at NM console).

> Always back up `/etc/hosts` before editing.

---

### Step 8: Updating the NM System Dictionaries (Optional)

MCS dictionary files in `/site/dict` can be modified to customise device status indicator strings. For example, to map a device's "OnAir" to the NM status "Play":

1. Select all servers at console.
2. Open dictionary: `ed /site/dict/mcs`
3. Navigate to the string: `/PLAY`
4. Substitute second occurrence: `s?/PLAY?/OnAir`
5. Save: `w` (lowercase only), quit: `q`
6. After making changes, run `makemctab` at the NM console — stop all monitor servers first.

> Warning: Stop monitor servers only during off-peak hours when they are not monitoring on-air shows.

**To update NM dictionaries (apply changes):**
1. Select all servers.
2. Become superuser: `su`
3. Take system offline: `offline`
4. Broadcast warning: `broadcast WARNING!Log out in 5 Min.`
5. After users log out: `list s` to confirm
6. `logout all`
7. `list s` again to confirm connect session users
8. Run the Restart Services Procedure (see below).

---

### Step 9: Configure NM for MOS Replication (Optional)

MOS replication requires these NM-side configurations:

1. **Create a NM user account for MOS replication:**
   - Tools > Options > Users > New User
   - User ID and Name: e.g. `MosReplication`
   - Enable "Kill All Stories" in Queue Features
   - Set a password; **remove the "Force Change" password option** (automated process cannot change passwords)
   - The User ID and password must match exactly those in the `<ncs>` group of mosconfig.xml

2. **Create a write group for MOS replication:**
   - Verify group name availability: `gtraits list mosreplication`
   - Use `gtraits add` to create the group
   - Add **only** the MOS replication user account to this group (via SYSTEM.GROUPS in iNEWS Workstation)

3. **Create device-specific queues for MOS replication:**
   - Tools > New Queue; name example: `VIDEO`
   - All MOS replication queues must have the **Batch Allowed** database trait

4. **Configure queue properties:**
   - Forms tab: assign `MOSREPLICATION` form (from SYSTEM.FORMS.M directory)
   - Groups tab: set the MOS replication group as the Write Group
   - Maintain tab: ensure **Update** is selected (ensures rxnet works correctly)
   - User Interface tab: ensure **Refresh** is selected
   - Click OK to apply

> The MOSREPLICATION form (in SYSTEM.FORMS.M) contains three stories defining how MOS items are replicated — to story form, story body, or both. If it does not exist, the NM system administrator must create it.

---

### Restart Services Procedure

Added in Nov 2025 revision. Use when a system administrator needs to stop and restart all NM services.

> Check with production staff before stopping services — do not stop monitor servers that are monitoring on-air shows. Use `list s` to confirm no servers are in use.

1. `offline` — bring system offline (prevents user logins)
2. `logout all` — log out all users
3. `stop all` — stops all utility programs (servers), wire programs, and devices
4. `startup` — restarts all system services

---

## Chapter 5 — Configuring MOS Gateway

MOS Gateway is configured by editing mosconfig.xml on the MOS Gateway Server.

### mosconfig.xml Location

Default location (Ch5 documentation):
```
C:\Program Files\Avid\MOSGateway
```
Default installer path (Ch3): `C:\Program Files (x86)\Avid\iNEWS MOS Gateway\`

> ⚠️ These two paths differ — see source anomaly note at top of this document. Verify the actual installed location. The vault file (from Ch5 credentials section) is confirmed at `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`.

Before editing: **make a backup copy of mosconfig.xml.**

### Editing the Configuration File

mosconfig.xml is a **Unicode file** — use a Unicode-capable editor such as Windows Notepad (`notepad.exe`). Standard ASCII editors may corrupt the file.

While MOS Gateway is running, the configuration file is locked by the MosConfigService. **Stop MOS Gateway before editing.**

**To edit the configuration file:**
1. Open Notepad.
2. File > Open → navigate to the mosconfig.xml location.
3. Make changes.
4. File > Save.

### Stopping and Starting MOS Gateway

Services start in this order:
1. MOSConfigService
2. MOS Gateway Logger
3. MOS Gateway License Server
4. MOSReplicationService
5. MOSRouterService
6. MOSAdminService

> **When stopping services manually, reverse the order** — stop MOSAdminService first, MOSConfigService last.

**Procedure (via Windows Services):**
1. Start → Settings → Control Panel → Administrative Tools → Services.
2. Select MOSConfigService.
3. Action → Stop (stops all MOS Gateway services in the correct order).
4. To restart: select MOSAdminService → Action → Start (starts all services in the correct order).

---

### Configuration File Components Explained

Each section of mosconfig.xml is described below. Values shown in **BOLD** are placeholders to be replaced.

---

#### The `<logging>` Group

```xml
<logging>
  <directory>DIRECTORY_GOES_HERE</directory>
  <maxFileCount>COUNT_GOES_HERE</maxFileCount>
  <maxFileBytes>SIZE_GOES_HERE</maxFileBytes>
  <winDebugTrace>WINDEBUGTRACE_YESNO</winDebugTrace>
  <socket>SOCKET_ONOFF</socket>
  <TurnOffLogging>LOGGING_YESNO</TurnOffLogging>
  <LoggingLevel>LOGIN_LEVEL_GOES_HERE</LoggingLevel>
</logging>
```

| Parameter | Description |
|---|---|
| `DIRECTORY_GOES_HERE` | Directory where MOS Gateway saves log files |
| `COUNT_GOES_HERE` | Maximum number of log files before recycling (e.g. 100) |
| `SIZE_GOES_HERE` | Maximum file size in bytes (e.g. 1000000 = ~1 MB) |
| `WINDEBUGTRACE_YESNO` | YES to send logging to Win32 debug subsystem (useful with Win32 debugger) |
| `SOCKET_ONOFF` | ON to enable socket-level logging (logs all incoming socket messages in network byte order; affects performance — do not leave on permanently) |
| `LOGGING_YESNO` | YES to enable generic logging |
| `LOGIN_LEVEL_GOES_HERE` | Logging level bitmask; default `0xff` (enables all). Lower bits required for higher bit messages |

> Ensure `COUNT × SIZE` does not overflow available log directory storage (e.g. 100 files × 1 MB = 100 MB required).

Socket log file naming format: `[mosID][space][LM|UR][space][NCSInit|MOSInit].bin`
- LM = Media Object Metadata port; UR = Running Order port
- NCSInit = MOS Gateway made connection; MOSInit = MOS Device made connection

---

#### The `<tcpPorts>` Group

```xml
<tcpPorts>
  <out_upper>MOS_OUT_UPPER_PORT_GOES_HERE</out_upper>
  <out_lower>MOS_OUT_LOWER_PORT_GOES_HERE</out_lower>
  <in_upper>MOS_IN_UPPER_PORT_GOES_HERE</in_upper>
  <in_lower>MOS_IN_LOWER_PORT_GOES_HERE</in_lower>
</tcpPorts>
```

| Parameter | Recommended Value | Description |
|---|---|---|
| `out_upper` | 10541 | Port for sending running order MOS commands |
| `out_lower` | 10540 | Port for sending media object metadata MOS commands |
| `in_upper` | 10541 | Port for receiving running order MOS commands |
| `in_lower` | 10540 | Port for receiving media object metadata MOS commands |

> Running order connections = upper ports. Media object metadata connections = lower ports. All MOS devices must use these same ports to connect to MOS Gateway.

---

#### The `<ncs>` Group

```xml
<ncs>
  <ncsID>NCS_ID_GOES_HERE</ncsID>
  <host>HOST_GOES_HERE</host>
  <AllowReplication>ALLOW_YESNO</AllowReplication>
  <ReplicationUsername>USER_GOES_HERE</ReplicationUsername>
  <ReplicationPassword>PUT_PASSWORD_HERE</ReplicationPassword>
  <AllowMosItemReplace>ALLOW_MOSITEMREPLACE_YESNO</AllowMosItemReplace>
  <UseFTPS>USE_FTPS_YESNO</UseFTPS>
  <SystemFormsToken>TOKEN_GOES_HERE</SystemFormsToken>
  <Unicode>YES</Unicode>
</ncs>
```

| Parameter | Description |
|---|---|
| `NCS_ID_GOES_HERE` | NCS ID of the NM Server to which devices will replicate |
| `HOST_GOES_HERE` | Network host name of the NM Server; must be pingable from MOS Gateway |
| `ALLOW_YESNO` | YES (default) to allow replication; NO drops MOS objects at the gateway |
| `USER_GOES_HERE` | User ID for the replication service; must exist in NM with write permission to replication queues |
| `PUT_PASSWORD_HERE` | **From version 2023.3:** password is no longer configured here. Use the `vaultctl` utility instead. See "Setting up Replication Connection Credentials" below ⚠️ |
| `ALLOW_MOSITEMREPLACE_YESNO` | YES/NO — allow or disallow mosItemReplace (default NO) |
| `USE_FTPS_YESNO` | YES (default) to use FTPS; if NO, set `RXREQUIRESSL=0` in `/site/env/mgwcom` on NM Server |
| `TOKEN_GOES_HERE` | Path to queue for form used in replication story creation; default `SYSTEM.FORMS` |
| `Unicode` | YES if NM Server uses Unicode |

> **Version note:** The ncs Group note was added for version 2023.7: beginning with version 2023.3, the User ID for replication is still configured here but the password is no longer stored in `<ReplicationPassword>`. Use the `vaultctl` utility to configure the password for MOS Replication.

---

#### The `<names>` Group (per `<mosDevice>`)

```xml
<names>
  <mos>MOS_ID_GOES_HERE</mos>
  <amcp>iNEWS_DEVICE_GOES_HERE</amcp>
  <network>NETWORK_NAME_GOES_HERE</network>
</names>
```

| Parameter | Description |
|---|---|
| `MOS_ID_GOES_HERE` | MOS ID as reported by the MOS device's ActiveX control; must match `<mos>` value in SYSTEM.MOS-MAP |
| `iNEWS_DEVICE_GOES_HERE` | NM device name — same name that appears in SYSTEM.MOS-MAP story |
| `NETWORK_NAME_GOES_HERE` | Network (host) name of the MOS device |

---

#### The `<roSlugMaps>` Group

Maps NM running order names to MOS device running order names (useful when the MOS device has limited display space for show names):

```xml
<roSlugMaps>
  <roSlugMap>
    <iNewsRunningOrderName>INEWS_RO_NAME</iNewsRunningOrderName>
    <MOSroSlug>MOS_RO_NAME</MOSroSlug>
  </roSlugMap>
</roSlugMaps>
```

If the group is absent or a particular rundown name is missing, MOS Gateway defaults to: `<server_name>/<NM_full_queue_name>`.

---

#### Additional `<mosDevice>` Parameters

| XML Element | Default | Description |
|---|---|---|
| `<handlesEmptyStories>` | YES | YES if device handles empty stories same as stories with items; set to NO for devices that do not |
| `<handlesRoStoryMoveMultiple>` | YES | YES if device supports `roStoryMoveMultiple` command |
| `<handlesRoItemLevelCommands>` | YES | YES if device supports `roItemInsert`, `roItemDelete`, `roItemReplace` |
| `<prependPageNumber>` | — | YES to prepend NM story page number to story title (slug) |
| `<prependSeparator>` | `-` (hyphen) | Character separating page number from story title |
| `<prependStringForEmptyPageNumber>` | — | String used in place of empty page number |
| `<sendRoCreateOnStartLoad>` | NO | YES sends blank roCreate + roStoryInsert messages; NO sends full roCreate. Recommended: NO unless required |
| `<ignoreItemStatusInRoAck>` | NO | YES to ignore item status in roAck messages |
| `<handlesRoListAll28>` | NO | YES if device expects MOS 2.8 version of roListAll |
| `<handlesRoStorySend>` | NO | YES if device handles roStorySend messages |
| `<handlesRoStorySendNSMLX>` | NO | YES if device supports sending NSMLX via roStorySend mosExternalMetadata |
| `<retryTimeout>` | 0 | Retry timeout in seconds (0–2147483647); 0 = no retries |
| `<AllowMosObjCreate>` | NO | YES if device supports mosObjCreate message |
| `<removeMosObjCreate>` | NO | YES to remove uninitialized mosObjCreate items |
| `<DisableMosItemStatChannel>` | — | YES to prevent MOS Gateway conveying roItemStat channel changes from device to NM (avoids overwriting manually-assigned channels) |

---

#### The `<statusTranslations>` Group

Maps device-specific status strings to the ten NM event status codes. Multiple strings can map to the same status code (duplicate the relevant line):

```xml
<statusTranslations>
  <statusUnknown>UNKNOWN_STR</statusUnknown>
  <statusUnavailable>UNAVL_STR</statusUnavailable>
  <statusAvailable>AVAIL_STR</statusAvailable>
  <statusIncomplete>INCOMP_STR</statusIncomplete>
  <statusCueing>CUEING_STR</statusCueing>
  <statusCued>CUED_STR</statusCued>
  <statusPlayRequested>P_STR</statusPlayRequested>
  <statusPlaying>PLAYING_STR</statusPlaying>
  <statusPaused>PAUSED_STR</statusPaused>
  <statusStopped>STOP_STR</statusStopped>
</statusTranslations>
```

Refer to each device manufacturer's documentation for the exact strings.

---

#### The `<roChannels>` Group

Maps iNEWS channel names (max 7 characters) to MOS device channel names:

```xml
<roChannels>
  <roChannel>
    <iNewsChannel>INEWS_CHAN1</iNewsChannel>
    <MosDevChannel>MOS_CHAN1</MosDevChannel>
  </roChannel>
</roChannels>
```

---

#### The `<mosObjReplication>` Group

```xml
<mosObjReplication>
  <trigger>TRIGGER_TYPE</trigger>
  <replicationTime>REP_TIME</replicationTime>
  <clearQueue>TRUE_FALSE</clearQueue>
  <path>PATH_TO_QUEUE</path>
  <mosItemBrowserProgID>xxx.xxx.xxx</mosItemBrowserProgID>
  <mosItemEditorProgID>yyy.yyy.yyy</mosItemEditorProgID>
  <mosItemPlayerProgID>zzz.zzz.zzz</mosItemPlayerProgID>
</mosObjReplication>
```

The first four settings are configured via the MOS Admin application (see below). The ProgID values must be entered manually if needed.

| Parameter | Description |
|---|---|
| `TRIGGER_TYPE` | `MANUAL` or `SCHEDULED` |
| `REP_TIME` | Time of day for scheduled replication (only if trigger = SCHEDULED) |
| `TRUE_FALSE` | TRUE to clear all stories from queue before replication; FALSE to retain them |
| `PATH_TO_QUEUE` | Full path to the device's replication queue in NM. Each device must have a unique queue |

**Common ActiveX ProgID values:**

| Device | Type | ProgID |
|---|---|---|
| AirSPACE | Browser | `Avid.AirSPACEBrowser.1` |
| AirSPACE | Editor | `Avid.AirSPACEEditor.1` |
| Aprisa | Browser | `ASTILLSTOREMOSACTIVEX.SSItemBrwsrCtl.1` |
| Aprisa | Editor | `ASTILLSTOREMOSACTIVEX.SSItemEditorCtl.1` |
| Aprisa | Player | `ASTILLSTOREMOSACTIVEX.SSItemPlayerCtl.1` |
| Grass Valley NewsQ Pro | Browser | `GVG.XMOSCtrl.1` |
| Omnibus | Browser | `OmnibusODCLauncher.Launcher` |
| Omnibus | Editor | `OmniBusItemEdit.Edit` |
| VizRT | Browser | `VCPAxFiller.VCPTemplateFiller` |
| VizRT | Editor | `VCPAxFiller.VCPTemplateFiller` |

> If ProgIDs are not defined and the settings are manually edited, MOS Gateway services must be stopped and restarted.

---

### Using the MOS Admin Application

MOS Admin (`MosAdmin.exe`) provides a GUI for configuring replication options. Launch it by double-clicking its shortcut icon on the Windows desktop.

**MOS Admin tabs:**
- **Status** — read-only; shows incoming MOS objects being replicated from the MOS device to the NM Server. Also logged to text files by the MOS Gateway Logger.
- **Replication** — lists devices from mosconfig.xml with current replication settings. Prompts for password (must match `<ReplicationPassword>` in mosconfig.xml or vault credential).
- **Credentials** — from version 2023.3, used to securely set replication credentials via vault.

**To configure replication for a device (Replication tab):**
1. Select the device from the device list.
2. Select trigger type (manual or scheduled).
3. If scheduled: set replication time.
4. Select Clear Queue check box if queue should be cleared before replication.
5. Enter the path to the device's replication queue in NM.

> Each device must have its own unique replication queue — devices cannot share the same queue.

---

### Setting up Replication Connection Credentials

From version 2023.3, MOS Gateway uses a vault to securely store replication credentials. **Do not use `<ReplicationPassword>` in mosconfig.xml for versions 2023.3 and later.**

**Procedure:**
1. Edit mosconfig.xml — remove `<ReplicationPassword>mosrep</ReplicationPassword>` from within the `<ncs>` tags.
2. Run `MosAdmin.exe`.
3. Navigate to the Credentials pane.
4. Enter the ReplicationUserName in the Name field.
5. Enter the ReplicationPassword in the Password field; retype to confirm.
6. Click Add.

> This creates a vault file at `C:\Program Files (x86)\Avid\iNEWS MOS Gateway` to store the replication username and password pair.

---

### Adding MOS Devices to the SYSTEM.MOS-MAP Story

The NM system administrator creates a DeviceTable in the SYSTEM.MOS-MAP story (first story in the MOS-Map queue in the System directory):

```
TABLE-START DeviceTable
MOSGATE.omnibus omnimos chan1 chan2
Ncsgateway.sony sonymos region1 region2 region3
TABLE-END
```

- Column 1: MOS ID — must match `<mos>` value in mosconfig.xml
- Column 2: NM device name (max 8 chars) — must match `<amcp>` value in mosconfig.xml
- Columns 3+: (Optional) Channel names — if channels are to be user-selectable when loading a show

---

### Copying the File Certificate

MOS Replication and RoStorySend services use FTP/FTPS to communicate with the NM system. A secure FTP connection requires a file certificate from the NM Server to be imported into the Windows trusted certificate store on the MOS Gateway Server.

**Procedure:**
1. Copy the file certificate to the MOS Gateway machine.
2. Double-click it.
3. Click Install Certificate…
4. Select Local Machine as Store Location.
5. Click Next.
6. Select "Place all certificates in the following store."
7. Click Browse.
8. Select Trusted Root Certification Authorities.
9. Click OK.
10. Click Next.
11. Click Finish. Verify "The import was successful" message.
12. (Optional) Delete the certificate file copied in step 1.

---

## Chapter 6 — Troubleshooting

### MOS Gateway Components

MOS Gateway consists of the following services:

| Service | Function |
|---|---|
| MOS Gateway Logger | Creates log files |
| MOS Gateway License Server | Controls licensing |
| MOS Gateway Router | Routes messages between NM Servers and MOS devices |
| MOS Gateway Replication Service | Controls replication of MOS objects from device to NM Server |
| MOS Gateway Administration Service | Delegate between MosAdmin utility and MOS Gateway Router Service |
| MOS Gateway Configuration Service | Reads and writes the MOS Gateway configuration file |
| MOS Gateway RoStorySend Service | Obtains stories from NM Server and sends them to MOS devices |

MOS Gateway also includes:
- **MosAdmin** — GUI utility for displaying incoming MOS objects and configuring replication
- **LicenseManager** — sets and retrieves the licence string

### Where to Look for Errors

Each MOS Gateway service writes errors to one of two locations:
- Log files in the directory specified in mosconfig.xml (view via Windows Explorer / Notepad)
- The Windows Application Event Log

**To view the Application Event Log:**
1. Start → Settings → Control Panel → Administrative Tools.
2. Open Event Viewer.
3. Select the Application Log item in the left-hand panel.
4. The Event Viewer shows events sorted most to least recent. Source column displays application name. Double-click an event for full description.

### Error Categories

- **Startup errors** — reported when MOS Gateway cannot start
- **Runtime configuration errors** — reported when MOS Gateway encounters an incomplete configuration
- **Miscellaneous other errors**

---

## Technical Support Information

Avid Online Support (24/7): <https://www.avid.com/onlinesupport>

For Avid service offerings (Avid Assurance): <https://www.avid.com/support>
- North America: 800-949-AVID (800-949-2843)
- International: 978-275-2480
