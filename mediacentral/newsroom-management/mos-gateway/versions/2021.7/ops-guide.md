---
product: MediaCentral MOS Gateway
product-area: Newsroom Management
version: "2021.7"
doc-type: ops-guide
source: MOSGwy-Ops-v2021.7.pdf
source-file: MOSGwy-Ops-v2021.7.pdf
confidentiality: public
date-added: 2026-04-27
last-updated: 2026-04-27
status: superseded
superseded-by: "2021.11"
products-affected:
  - MediaCentral MOS Gateway 2021.7
  - MediaCentral Newsroom Management (version 3.5 or later)
feature-tags:
  - installation
  - operations
  - configuration
  - mosconfig-xml
  - ncs-group
  - replication
  - mos-protocol
  - port-921
  - mgwcom
  - systemd
  - licensing
  - avid-license-control
  - nm-server-setup
  - mosadmin
  - troubleshooting
---

# MediaCentral | MOS Gateway — Installation and Operations Guide (v2021.7)

**Source:** MOSGwy-Ops-v2021.7.pdf (109 pages)
**Document date:** 04/10/2021 (footer: "Created 10/4/21"), Rev A
**Copyright:** © 2021 Avid Technology, Inc.

> ⚠️ **Source anomaly — mosconfig.xml path inconsistency (3 variants):** The document states three different paths for mosconfig.xml across chapters. Ch5 intro text (p76) states `C:\Program Files\Avid\MOSGateway`; Ch5 editing procedure step 3 (p76) states `C:\Program Files (x86)\Avid\iNEWS MOSGateway`; Ch3 upgrade procedure (p41) and installer screenshot (p27) state `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`. The installer screenshot (p27) is taken as authoritative: **`C:\Program Files (x86)\Avid\iNEWS MOS Gateway`**.

> ⚠️ **Source anomaly — services screenshot version number:** The Windows Services screenshot (p77) shows all MOS Gateway services at version 4.7.0.2. The same version number appears in the 2023.3 SCG screenshot. This suggests the p77 screenshot may have been taken from a later version test environment and included in this 2021.7 document. The service names and start/stop order documented in the text are considered accurate for this version; the version number shown in the screenshot should not be taken as the installed version for 2021.7 deployments.

---

## Using This Guide

**Online resources (pp11–12):**
- Online support: www.avid.com/support
- Training services: www.avid.com/training

The guide assumes:
- A fully functioning network is in place.
- The Newsroom Management Server software is operational and supports MOS protocol.
- NM Servers are connected to a console multiplexor with Customer Support dial-in access.
- The person performing installation has attended a Newsroom Management system administration course or has equivalent experience, including working knowledge of the `ed` UNIX line editor.

---

## Chapter 1: Introduction (pp13–18)

### Overview

MOS Gateway is a software product that acts as a bridge between the Newsroom Management (NM) Server and MOS (Media Object Server) devices. It allows users to load playlists to production devices and displays the status and readiness of production events on the NM workstation.

MOS Gateway communicates with MOS devices through the MOS protocol. It listens on specified TCP ports for connections from MOS devices and routes messages between the NM Server and those devices.

### MOS Control Workflow

The NM system operates in two modes with MOS Gateway:

**Monitor Mode ON:** The monitor server is active, monitoring the rundown queue. When a user makes changes to the rundown, the monitor server detects changes and sends updated playlist information to MOS Gateway, which passes it to the appropriate MOS device.

**Loading a Show (LOAD):** When a user activates the `monitor load` command, the monitor server builds a complete playlist from the rundown and sends it to MOS Gateway for transmission to the MOS device.

### Communication Paths

MOS Gateway communicates via:
- **Upper port (Running Order port):** TCP port 10541 (recommended) — running order MOS commands
- **Lower port (Media Object Metadata port):** TCP port 10540 (recommended) — media object metadata MOS commands

### MOS Protocol Versions Supported

- MOS Protocol 2.6: supported
- MOS Protocol 2.8: supported
- **MOS Protocol v3.x: NOT supported** (explicitly stated p20)

---

## Chapter 2: Preparing for Installation (pp19–21)

### Hardware Requirements (p20)

| Device | Description |
|---|---|
| CPU | 2 GHz processor |
| Memory | 4 GB RAM |
| Keyboard | Standard Windows-based keyboard |
| Monitor | 15-inch colour |
| Video card | Standard SVGA 1024×768 |
| Hard drive | 10 GB drive |
| Disc controller | IDE OK |
| Mouse | Windows-compatible mouse |
| CD-ROM drive | 4× CD-ROM drive |
| Network card | Windows-compatible 10/100 NIC |

### Software Requirements (p20)

- Windows Server 2016 or Windows Server 2019
- MediaCentral Newsroom Management system (version 3.5 or later)
- MOS Protocol versions 2.6 and 2.8 (**v3.x NOT supported**)

### Notable Notes (p21)

> "Beginning with version 3.1.0, MOS Gateway uses Avid's License Control application to manage licensing."

> "All iNEWS Workstations on a network using MOS Gateway 2.0 or later must be running version 1.5.1 or later of the Newsroom Management client software."

### Supported MOS Devices (p21)

16 devices supported (same list as 2023.3):

1. Autocue
2. AutoScript
3. Avid AirSPACE
4. Beehive
5. Brainstorm
6. Chyron Aprisa
7. GVG NewsQ Pro
8. Netia Radio-Assist
9. Omnibus Columbus
10. Omnibus News Control
11. Pebble Beach
12. Pinnacle FXDeko
13. Proximity Xenostore
14. Sony NewsBase
15. VertigoXmedia
16. vizrt Pilot

---

## Chapter 3: Installing MOS Gateway Program Files (pp22–41)

### Setup Overview (p22)

Installation involves:
1. Installing MOS Gateway program files and Avid License Control
2. Activating the software licence
3. Adding IP addresses on the MOS Gateway Server

### Adding IP Addresses on the MOS Gateway Server (p23)

MOS Gateway and all Newsroom Management Servers must have each other's IP addresses in their `/etc/hosts` files. The IP address of the MOS Gateway Server is added on each NM Server (Step 7 of Ch4); conversely, NM Server IP addresses must be added to the MOS Gateway Server's `/etc/hosts` equivalent.

**To add IP addresses on the MOS Gateway Server:**
1. On the MOS Gateway Server, navigate to: `C:\Windows\System32\drivers\etc\hosts`
2. Open the hosts file with Notepad.
3. Add a line for each Newsroom Management Server in the following format:
   ```
   125.1.0.1   NRCS-A   nrcs-a   nrcs-a.yourdomain.com
   125.1.0.2   NRCS-B   nrcs-b   nrcs-b.yourdomain.com
   ```
4. Save the file.

> Recommendation: Use static IP addresses in `/etc/hosts` files; avoid DHCP or DNS dependency. Install MOS Gateway on the Mirror Net of the NM hosts to maximise reliability.

### Installing and Activating MOS Gateway Software (pp24–39)

**Prerequisites confirmed in installer (p25):**
- Microsoft Visual C++ 2015–2019 Redistributable (x86) — installer prompts for this if not already installed before MOS Gateway will install
- Avid License Control — installed alongside MOS Gateway

**Install path (confirmed from installer screenshot, p27):**
```
C:\Program Files (x86)\Avid\iNEWS MOS Gateway\
```

**Activation methods:**

**Direct (online) activation:**
1. Open Avid License Control on the MOS Gateway Server.
2. Click Activate in the License Control window.
3. Enter the System ID and Activation ID.
4. Click Activate — the system connects to Avid's licence servers via the internet and activates the licence.

**Indirect (offline) activation:**
1. Open Avid License Control on the MOS Gateway Server.
2. Note the System ID, Activation ID, and Device ID displayed.
3. On an internet-connected machine, go to: www.avid.com/license
4. Enter the System ID, Activation ID, and Device ID.
5. Download the `.bin` licence file.
6. Transfer the `.bin` file to the MOS Gateway Server.
7. In Avid License Control, browse to the `.bin` file and apply it.

### Upgrading MOS Gateway Software (pp40–41)

**Important upgrade warnings (p40):**
- The previous version **must** be uninstalled before installing the new version.
- Running setup.exe on an existing installation will **not** overwrite all files.
- The previous `mosconfig.xml` may not work with later versions — **print the old configuration file before upgrading**.

**To print the MOS configuration file before upgrading:**
1. Open Notepad.
2. Select File > Open.
3. Navigate to the configuration file at:
   ```
   C:\Program Files (x86)\Avid\iNEWS MOS Gateway
   ```
4. Print via File > Print or Ctrl+P.

**To uninstall MOS Gateway:**
- Use Add/Remove Programs in the Windows Control Panel.
- After uninstalling, install the latest version per the installation procedure above.
- After the new version is installed, edit the new default `mosconfig.xml` with your site's `<mosDevice>` information (see Ch5).

---

## Chapter 4: Setting up the Newsroom Management Server (pp42–74)

### Overview

After MOS Gateway is installed, the Newsroom Management Server must be configured. The configuration procedure assumes:
- A fully functioning network is in place.
- NM Servers are operational and running NM Server software supporting MOS protocol.
- NM Servers are connected to a console multiplexor with Customer Support dial-in access.
- The person performing configuration has attended an NM system administration course or has equivalent experience, including knowledge of `ed` (UNIX line editor).

> Recommendation: Have the *MediaCentral Newsroom Management Setup Configuration Guide* available during this chapter's procedures.

### Configuration Summary (p43)

The 9-step configuration procedure:

1. Step 1: Creating a Monitor Server for Each Show (p44)
2. Step 2: Creating Composite and Event List Queues (p49)
3. Step 3: Setup Queue and Story Forms (p52)
4. Step 4: Edit the SYSTEM.MOS-MAP Story (p56)
5. Step 5: Assigning Forms to Queues (p57)
6. Step 6: Create an Entry in the SYSTEM.MAP Story (p59)
7. Step 7: Adding IP Addresses for the MOS Gateway (p63)
8. Step 8: Updating the Newsroom Management System Dictionaries (Optional) (p65)
9. Step 9: Configure Newsroom Management for MOS Replication (Optional) (p68)

### Configuration Details

#### Step 1: Creating a Monitor Server for Each Show (pp44–48)

A monitor server is a utility program that checks a show's event requests for errors, creates composite and event lists, and sends playlists to MOS Gateway.

A monitor server must be assigned both a device number and a mailbox number (typically the same). The device number is entered in the system's configuration file (`/site/config`). The mailbox number is assigned to both the monitor server and its rundown queue.

**Valid standard mailbox numbers:** 1 through 4096.

**To create and configure a monitor server:**

1. Check `/site/config` and choose the next available device number for the monitor server, from the range of 3-digit numbers reserved for server programs (e.g., 201–300).

2. Verify the same number is available as a mailbox number:
   ```
   list mailbox=266 c
   ```
   The output header `DEV DEVICE_TYPE COMPUTER CCU PRINTER SPEED OPTIONS DEVNAME` with no rows below means the mailbox is free.

3. Add the monitor server to `/site/config` on **all** NM Servers (select all servers at console):
   ```
   ed /site/config
   ```
   - Add the device number to the `servers` line in the host definition, e.g.:
     ```
     servers 261 263 265 267
     ```
   - Add a configuration line in the format:
     ```
     server <device#> <type> <mailbox> <device name>
     ```
   - Example configuration lines:
     ```
     server 264 monitor 264 - ;monitor server
     server 265 monitor 265 - ;monitor server
     server 266 monitor 266 - ;monitor server
     server 267 monitor 267 - ;monitor server
     ```
   - Save with `w`, exit with `q`. (Do **not** use uppercase W.)

4. (Optional) Test configuration changes per *MediaCentral Newsroom Management Setup Configuration Guide* Ch10.

5. **Reconfigure the system** (no need to stop anything):
   1. Select master computer at console (typically server A).
   2. Type `su` to log in as superuser.
   3. Take system offline: `NRCS-A$ offline`
   4. Configure: `configure`
   5. Bring online: `NRCS-A$ online`
   6. After `System being configured` message, exit superuser mode (Ctrl+D).

6. **Assign the mailbox to the rundown queue:**
   1. Log in as system administrator on an iNEWS Workstation.
   2. Navigate to the rundown queue (e.g., `SHOWS.6PM.RUNDOWN`).
   3. Right-click the queue > Properties.
   4. On the Maintain tab, click Standard radio button in the Mailbox section.
   5. Type the mailbox number (e.g., **267**).
   6. Click OK.

**To view assigned monitor server mailboxes:**
```
list c monitor
```
Output example:
```
DEV DEVICE_TYPE COMPUTER CCU PRINTER SPEED OPTIONS DEVNAME
S264 monitor     A  N264
S265 monitor     B  N265
S266 monitor     A  N266
S267 monitor     B  N267
```
The mailbox number appears in the PRINTER column, beginning with `N`.

#### Step 2: Creating Composite and Event List Queues (pp49–51)

The monitor server scans stories for machine control events and builds composite and event lists. An event list contains details for a specific MOS device; a composite list contains status information for all devices connected through MOS Gateway.

**To create composite and event list queues:**
1. At an iNEWS Workstation, log in as system administrator.
2. Navigate to the directory to hold the new queue.
3. Create the queue via Tools > New Queue (or right-click > New Queue).
4. Name the queue (e.g., **COMPOSITE** or **CG1**). Example pathnames:
   - `SHOWS.6PM.COMPOSITE` — composite list queue
   - `SHOWS.6PM.CG1` — event list queue for a CG device
5. Press Enter to save.
6. Open Queue Properties for each queue:
   - User Interface tab: set Preview Lines to 1; set 1-line display.
   - Remove the Inverted database trait; apply the Refresh trait.
7. Assign a write security group to event and composite list queues — recommend restricting to superusers only.

#### Step 3: Setup Queue and Story Forms (pp52–55)

Add MOS Gateway fields to existing rundown queue and story forms.

| Field Type | Description |
|---|---|
| EVENT-STATUS | Displays availability and play status of a Command or MOS event (e.g., OFFLINE, CUED, PLAYING, STOPPED) |
| ITEM-CHANNEL | Required to allow changing the channel for primary events; used with `monitor on` or `monitor load`; required alongside VIDEO-ID when integrating with Command |
| MOS-ACTIVE | Write-protected; required for Story Form to accept MOS events; cleared if user selects Delete Machine Control; empty and read-only when VIDEO-ID field has a value |
| MOS-DEVICE | Displays the AMCPID of the MOS device; when monitor server is on, shows status of MOS item in the STATUS field even if the device is not the primary one listed in SYSTEM.MAP |
| MOS-DURATION | Editable; required to include MOS event duration in CUME-TIME, BACK-TIME, or TOTAL-TIME calculations; user-entered values override MOS event duration |
| MOS-TITLE | Write-protected; displays descriptive text associated with MOS or CAP events |
| MOS-OBJID | Write-protected; captures information in the `<mosobjid>` tag from MOS communication |
| RUNS-TIME | Displays sum of all `runs=` times in a story's production cues plus contents of MOS-DURATION field |

**Calculating Duration in Time Fields (pp54–55):**
- RUNS-TIME displays the sum of MOS-DURATION and all `runs=` entries from the Instruction panel.
- TOTAL-TIME shows the calculated sum of RUNS-TIME, AUDIO-TIME, and TAPE-TIME.
- If a user manually edits the RUNS-TIME field, that data is excluded from text timing clock calculations.
- Default RUNS token is `RUNS` (not case-sensitive). Change by redefining `W_RUNS` in `/site/dict/words`.
- A value of 115 (without colon) = 115 seconds = 1:55; distinct from 1:15.

#### Step 4: Edit the SYSTEM.MOS-MAP Story (pp56–57)

The `SYSTEM.MOS-MAP` story contains a DeviceTable with two columns:
- Column 1: MOS device mosID — must match `<mos>` value in `mosconfig.xml`
- Column 2: NM device name (AMCP name) — must match `<amcp>` value in `mosconfig.xml`

**Example SYSTEM.MOS-MAP story:**
```
TABLE-START DeviceTable
Mos.omnibus.co.uk    OmniMOS
TABLE-END
```

If the story does not exist, create it as the first story in the MOS-Map queue in the System directory.

**To block time information from all MOS devices:**
Add the following line **before** `TABLE-START`:
```
ReplaceTime=NO
```

**To exclude time information for a single device:**
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

> ⚠️ `<noDur>` must **not** be used at sites with NM workstations running versions earlier than 1.5.1 — earlier versions may interpret `<noDur>` as a channel name.

**Note:** The production device name (e.g., `sony@mosgwy`) in the map story has two parts: the part before `@` must match the `<amcp>` value in `mosconfig.xml`; the part after `@` must match the hostname of the MOS Gateway computer in the NM Server's `/etc/hosts` file.

#### Step 5: Assigning Forms to Queues (pp57–58)

Assign forms containing MOS Gateway fields to the composite and event list queues:
1. At an iNEWS Workstation, navigate to the queue in the Directory panel.
2. Right-click > Properties > Forms tab.
3. Use the Queue drop-down to select the queue form (e.g., `mcs-composite`).
4. Use the Story drop-down to select the story form.
5. If modifying existing forms, select "Update existing stories to use story form".
6. Click OK.

Default composite, still store, CG, and video event list forms are in `SYSTEM.FORMS`. If upgrading from a previous product version, update forms for composite and event list queues.

Users must log off and sign back on to view new queue/story form settings.

#### Step 6: Create an Entry in the SYSTEM.MAP Story (pp59–63)

The map story is the first story in the `SYSTEM.MAP` queue. Each show that uses MOS Gateway requires an entry. The entry specifies the rundown queue, event list directory, composite list queue, security groups, and quit time for the monitor server.

**SYSTEM.MAP story format (example with three shows):**

```
;RUNDOWN             EVENT DIR      COMP DIR              GROUP  (OFF TIME)
;DEVICE                   DEVNAME UPDATE MCT TEMPLATE           (MSG DIR)
;
SHOW.10P.RUNDOWN    SHOW.10P SHOW.10P.COMPOSITE  -    130
  ss   ss@bcssvr-1,bcssvr-2  UPDATE  bcs-bcw
  cg   cg@bcssvr-1,bcssvr-2  UPDATE  bcs-bcw  C:NAB:300 499
  cart pdr@bcssvr-1,bcssvr-2 UPDATE  bcs-bcw  3
  mos  sony@mosgwy            UPDATE  bcs-bcw  -
;
SHOW.6P.RUNDOWN     SHOW.6P SHOW.6P.COMPOSITE    -    2100
  ss   ss@bcssvr-1,bcssvr-2  UPDATE  bcs-bcw
  cg   cg@bcssvr-1,bcssvr-2  UPDATE  bcs-bcw  C:NAB:500 699
  cart pdr@bcssvr-1,bcssvr-2 UPDATE  bcs-bcw  3
  mos  sony@mosgwy            UPDATE  bcs-bcw  -
```

**Entry header parameters:**

| Parameter | Definition |
|---|---|
| Rundown Queue | Full pathname of the show's rundown queue |
| Event List Directory | (Optional) Directory for event lists; monitor server combines with device name. Use `-` if not used. |
| Composite List Queue | (Optional) Queue for composite list. Use `-` if not used. |
| Group of Users | (Optional) Security group restricting who can monitor the show. Use `-` for no restriction. |
| Quit Time | Time for monitor server to turn off. Enter as 24-hour time (e.g., `1915`) or duration (e.g., `D130`). |

> The entire entry header must be a single paragraph, limited to 255 characters.

**Device list parameters for MOS Devices:** `None at present` — put a hyphen (`-`) in this field.

#### Step 7: Adding IP Addresses for the MOS Gateway (pp63–64)

The IP address of the MOS Gateway Server must be added to all NM Servers' `/etc/hosts` files.

> Recommendation: Use static IP addresses in `/etc/hosts`; avoid DHCP or DNS dependency. Install MOS Gateway on the Mirror Net of the NM hosts.

**To add IP addresses to all NM Servers' `/etc/hosts` files:**
1. Select **all** servers at console.
2. Type `su` to log in as superuser.
3. Type `ed /etc/hosts`.
4. Append addresses:
   - Type `a` and press Enter to start append mode.
   - Enter lines in the format:
     ```
     125.1.10.50    MOSGWY  mosgwy  #MOS Gateway machine
     125.1.10.60    MG1     mg1     #MOS Gateway Server1 (backup)
     125.1.10.70    MG2     mg2     #MOS Gateway Server2
     ```
   - Type `.` to end append mode.
   - Optionally type `p` to print and verify.
   - Save with `w`. (Do **not** use uppercase W.)
   - Quit with `q`.

#### Step 8: Updating the NM System Dictionaries (Optional) (pp65–67)

MCS dictionary files in NM can be modified to customise the appearance of status indicators from MOS devices. Dictionary files are in the `/site/dict` directory.

For example, if an Omnibus device shows "OnAir" but NM shows "Play", the MCS dictionary can be modified so that "Play" translates to "OnAir".

**To edit the /site/dict/mcs dictionary file:**
1. Select **all** servers at console.
2. Open the file: `ed /site/dict/mcs`
3. Navigate to the word to change (e.g., `/PLAY`).
4. Substitute the new word: `s?/PLAY?/OnAir` (question marks prevent replacing the first occurrence).
5. Save with `w`. (Do **not** use uppercase W.)
6. Exit with `q`.

**To update NM dictionaries (apply changes):**
1. Select all servers.
2. Log in as superuser: `su`.
3. Idle the system:
   - Type `offline`.
   - Broadcast warning: `broadcast WARNING!Log out in 5 Min`.
4. Check who is still logged in: `list s`.
5. Log out all users: `logout all`.
6. Verify again: `list s` (note: `logout all` does not log out connect session users; contact any remaining users by telephone).

> ⚠️ If a user is in a connect session when the system shuts down, their workstation stops, the session disconnects, and any unsaved work is lost.

7. Stop all servers (including monitor servers): `stop all`.
8. Build command and message tables: `maketab -i`.
9. Translate monitor server dictionaries: `makemontab -i`.
10. Restart all server programs: `restart all`.
11. Bring system back online: `online`.

#### Step 9: Configure Newsroom Management for MOS Replication (Optional) (pp68–74)

MOS replication requires NM Server configuration including:
- Creating a NM user account for MOS replication.
- Creating a write group for MOS replication.
- Creating device-specific queues to store replicated MOS items.
- Ensuring correct database traits and forms are assigned.
- Ensuring write permissions are assigned to the MOS replication group only.

**To create an NM user account for MOS replication:**
1. Log in to iNEWS Workstation with account that can create users.
2. Select Tools > Options > Users.
3. Click New User. The Add New User dialog appears.
4. In the User ID field, enter the login name (e.g., **MosReplication**).
5. Click Password to set the password.

> ⚠️ The Force Change password option is selected by default for all new users. Because MOS replication is automated, **this option must be removed after creating the account** (step 8 below).

6. Ensure Kill All Stories is checked in Queue Features.
7. Click Add.
8. Reopen the user's preferences, uncheck Force Change, click OK.

> The User ID and password created here must match exactly those values entered in the `<ncs>` group of the MOS configuration file (see `<ncs>` Group in Ch5).

**To create a write group for MOS replication:**
1. Choose a group name (e.g., `mosreplication`).
2. Verify it is not already in use: `NRCS-A# gtraits list mosreplication`.
3. Use `gtraits add` to add the group.
4. Add only the MOS replication user account to the group via `SYSTEM.GROUPS` in the iNEWS Workstation.

**To create device-specific queues for MOS replication:**
1. Log in as system administrator.
2. Navigate to the target directory (create it if needed via Tools > New Folder).
3. Create a new queue (Tools > New Queue or right-click > New Queue).
4. Name the queue (e.g., **VIDEO**).

**To configure queue properties for MOS replication queues:**
1. Right-click the queue > Properties.
2. Forms tab: ensure Queue and Story forms are set to **MOSREPLICATION**.
   > The MOSREPLICATION form is in `SYSTEM.FORMS.M` and contains three stories defining the format for replicated MOS items. If it does not exist, the NM administrator must create it.
3. Groups tab: set the MOS replication group as the **Write Group**. Read and Notify groups: leave as `!<none>`.
4. Maintain tab: ensure **Update** is selected (ensures rxnet works correctly).
5. User Interface tab: ensure **Refresh** is selected.
6. Click OK to save.

> Selecting/unselecting checkboxes in the Properties dialog does not apply changes immediately — only clicking OK in step 6 does.

---

## Chapter 5: Configuring MOS Gateway (pp75–92)

### MOS Gateway Configuration File

MOS Gateway must be configured with information about each MOS device that will connect to it. Configuration is done by editing `mosconfig.xml`.

**Default location stated in p76 intro text:** `C:\Program Files\Avid\MOSGateway`

> ⚠️ **Source anomaly:** This path conflicts with the authoritative install path confirmed from the installer screenshot (p27) and upgrade procedure (p41): `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`. The editing procedure step 3 on the same page (p76) correctly states `C:\Program Files (x86)\Avid\iNEWS MOSGateway`. The intro text path `C:\Program Files\Avid\MOSGateway` is inconsistent and should not be used. See source anomaly note at head of document.

`mosconfig.xml` is a **Unicode** file; use Notepad (notepad.exe) to edit it, as it processes Unicode correctly.

> While MOS Gateway is running, the configuration file is locked by `MosConfigService`. Before editing, ensure MOS Gateway is stopped.

**To edit the configuration file:**
1. Open Notepad.
2. Select File > Open.
3. Navigate to: `C:\Program Files (x86)\Avid\iNEWS MOSGateway`
4. Make the required changes.
5. Select File > Save when done.

### Stopping and Starting MOS Gateway (pp77)

After editing `mosconfig.xml`, all MOS Gateway services must be restarted.

**Services in start order:**
1. MOSConfigService
2. MOS Gateway Logger
3. MOS Gateway License Server
4. MOSReplicationService
5. MOSRouterService
6. MOSAdminService

> When stopping services manually, the order is reversed (MOSAdminService first, MOSConfigService last).

**To stop and restart services:**
1. On the MOS Gateway Server, click Start > Settings > Control Panel.
2. Open Administrative Tools, then Services.
3. Select **MOSConfigService**.
4. Select Action > Stop. This stops all MOS Gateway services in the correct order.
5. To restart, select **MOSAdminService**, then Action > Start. This starts all services in the correct order.
6. Click Close.

> ⚠️ **Source anomaly — services screenshot version number:** The screenshot on p77 shows all services at version 4.7.0.2 (e.g., "MosConfigService 1st 4.7.0.2"). The same version number appears in the 2023.3 SCG. This is likely a screenshot from a later version environment used in this 2021.7 document. Service names and start/stop order in the text above are taken as accurate for this version.

### Configuration File Components Explained (pp78–91)

Lines in the configuration file are grouped by function. Fields to be modified appear in **bold** in the source document. Only one `<mosDevice>` group should be retained per MOS device; remove unused `<mosDevice>` groups to reduce MOS Gateway workload.

#### The `<logging>` Group (p78)

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

- `DIRECTORY_GOES_HERE`: directory for log files.
- `COUNT_GOES_HERE`: maximum number of log files before recycling.
- `SIZE_GOES_HERE`: maximum size per log file (e.g., `1000000` = approx. 1 MB).
- `WINDEBUGTRACE_YESNO`: set to `YES` if socket-level logging should go to Win32 debug subsystem.
- `SOCKET_ONOFF`: set to `ON` if socket-level log files are required. Socket log filename format: `[mosID][space][LM|UR][space][NCSInit|MOSInit].bin` (e.g., `VideoDevice LM MOSInit.bin`).

> Socket logging can affect performance; do not leave it on all the time.

- `LOGGING_YESNO`: set to `YES` to enable generic logging.
- `LOGIN_LEVEL_GOES_HERE`: logging level bitmask (default `0xff` enables all messages):
  - `0x10` — XML messages to MOS devices
  - `0x20` — XML messages from MOS devices
  - `0x40` — FTP communication details
  - `0x80` — error messages from replication services
  - `0x03` — errors, warnings, and 1-liner information (all messaging enabled by default)

#### The `<tcpPorts>` Group (p79)

```xml
<tcpPorts>
  <out_upper>MOS_OUT_UPPER_PORT_GOES_HERE</out_upper>
  <out_lower>MOS_OUT_LOWER_PORT_GOES_HERE</out_lower>
  <in_upper>MOS_IN_UPPER_PORT_GOES_HERE</in_upper>
  <in_lower>MOS_IN_LOWER_PORT_GOES_HERE</in_lower>
</logging>
```

- `out_upper`: port for sending running order MOS commands. Recommended: **10541**.
- `out_lower`: port for sending media object metadata MOS commands. Recommended: **10540**.
- `in_upper`: port for receiving running order MOS commands. Recommended: **10541**.
- `in_lower`: port for receiving media object metadata MOS commands. Recommended: **10540**.

> Running order connections = upper ports (MOS protocol). Media object metadata connections = lower ports. All MOS devices must use these same ports.

#### The `<ncs>` Group (p80)

**In version 2021.7, `<ReplicationPassword>` is present in plain text in this group.** This differs from v2023.3 onwards, where vault credentials replace the plain-text password.

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

- `NCS_ID_GOES_HERE`: NCS ID of the NM Server to which devices will replicate MOS objects.
- `HOST_GOES_HERE`: network hostname of the NM Server. Verify it can be pinged from the MOS Gateway Server.
- `ALLOW_YESNO`: set to `YES` if devices are to replicate data to NM queues. Default is `YES`. If `NO`, MOS objects are dropped at MOS Gateway.
- `USER_GOES_HERE`: User ID used by the replication service. This user must exist on the NM system with write permissions to the replication queues.
- `PUT_PASSWORD_HERE`: password for the user on the `<ReplicationUsername>` line. Must match the password set for that user on the NM system.
- `ALLOW_MOSITEMREPLACE_YESNO`: set to allow or disallow `mosItemReplace`. Default: `NO`.
- `USE_FTPS_YESNO`: set to `YES` to use FTPS to communicate with NM. If `NO`, FTP is used. Default: `YES`.
- `TOKEN_GOES_HERE`: path to the queue in the NM Server database where MOS Gateway obtains a form for story creation. Used in replication service. Default: `SYSTEM.FORMS`.
- `<Unicode>YES</Unicode>`: specifies whether MOS Gateway is connecting to a Unicode iNEWS Server.

**Port 921 / ReplicationPort (Appendix A):**
In v2021.7, an optional `<ReplicationPort>` parameter may be added to the `<ncs>` section to specify an alternative port if port 921 cannot be used:
```xml
<ReplicationPort>X</ReplicationPort>
```
Where `X` is the alternative port number. See Appendix A for full context.

#### The `<names>` Group (p81)

```xml
<names>
  <mos>MOS_ID_GOES_HERE</mos>
  <amcp>iNEWS_DEVICE_GOES_HERE</amcp>
  <network>NETWORK_NAME_GOES_HERE</network>
</names>
```

- `MOS_ID_GOES_HERE`: MOS ID reported by the MOS device. Identifies the device to MOS Gateway. Used in MOS items in NM rundowns.
- `iNEWS_DEVICE_GOES_HERE`: NM device name — same name that appears in the `SYSTEM.MOS-MAP` story in the NM database. Must match `<amcp>` value in `mosconfig.xml`.
- `NETWORK_NAME_GOES_HERE`: network (host) name of the MOS device. Contact network administrator for this.

#### The `<roSlugMaps>` Group (p82)

```xml
<roSlugMaps>
  <roSlugMap>
    <iNewsRunningOrderName>INEWS_RO_NAME</iNewsRunningOrderName>
    <MOSroSlug>MOS_RO_NAME</MOSroSlug>
  </roSlugMap>
</roSlugMaps>
```

Allows a different running order name to be sent to a MOS device than the NM running order name. If the group is missing or a particular name is missing, MOS Gateway sends a default: `NCSName/NMRundownQueueName` (e.g., `NRCS/SHOW.11PM.RUNDOWN`).

#### The `<handlesEmptyStories>` Group (p82)

```xml
<handlesEmptyStories>YESNO</handlesEmptyStories>
```

Set to `YES` if the MOS device manages stories with no items the same way as stories with items. Default: `YES`. Some MOS vendors do not handle empty stories per the MOS Protocol; for those, set to `NO`.

Standard settings for common devices:
- Sony® MAV Server: `No`
- OmniBus™ Columbus: `Yes`

#### The `<handlesRoStoryMoveMultiple>` Group (p83)

```xml
<handlesRoStoryMoveMultiple>YESNO</handlesRoStoryMoveMultiple>
```

Set to `YES` if the MOS device supports the `roStoryMoveMultiple` MOS command. Default: `YES`.

#### The `<handlesRoItemLevelCommands>` Group (p83)

```xml
<handlesRoItemLevelCommands>YESNO</handlesRoItemLevelCommands>
```

Set to `YES` if the MOS device supports `roItemInsert`, `roItemDelete`, and `roItemReplace` MOS commands. Default: `YES`.

#### The `<prependPageNumber>` Group (p83)

```xml
<prependPageNumber>YESNO</prependPageNumber>
```

Set to `YES` if the NM story's page number should be prepended to the story title (slug). Default: `YESNO` (placeholder; document does not state an explicit default).

#### The `<prependSeparator>` Group (p83)

```xml
<prependSeparator>-</prependSeparator>
```

Character used to separate the story title and page number. Default: hyphen (`-`).

#### The `<prependStringForEmptyPageNumber>` Group (p83)

```xml
<prependStringForEmptyPageNumber>XXX</prependStringForEmptyPageNumber>
```

String used in place of an empty page number.

#### The `<statusTranslations>` Group (p84)

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

Maps MOS device status strings to NM event status codes. Multiple strings can map to the same status code (duplicate the relevant line for each). Refer to manufacturer documentation for device-specific status strings.

#### The `<roChannels>` Group (p85)

```xml
<roChannels>
  <roChannel>
    <iNewsChannel>INEWS_CHAN1</iNewsChannel>
    <MosDevChannel>MOS_CHAN1</MosDevChannel>
  </roChannel>
  <roChannel>
    <iNewsChannel>INEWS_CHAN2</iNewsChannel>
    <MosDevChannel>MOS_CHAN2</MosDevChannel>
  </roChannel>
  <roChannel>
    <iNewsChannel>INEWS_CHAN3</iNewsChannel>
    <MosDevChannel>MOS_CHAN3</MosDevChannel>
  </roChannel>
</roChannels>
```

Maps NM channel names (max 7 characters) to MOS device channel names. The `INEWS_CHAN` string also appears in the `SYSTEM.MOS-MAP` table.

#### The `<mosObjReplication>` Group (p86)

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

The first four settings are configured by the MosAdmin application (see MosAdmin Application section). MOS item ProgID values must be manually entered in the configuration file.

**TRIGGER_TYPE**: `MANUAL` or `SCHEDULED`.

**Common MOS item ProgID values:**

| Device | Role | ProgID |
|---|---|---|
| AirSPACE | Browser | Avid.AirSPACEBrowser.1 |
| AirSPACE | Editor | Avid.AirSPACEEditor.1 |
| Aprisa | Browser | ASTILLSTOREMOSACTIVEX.SSItemBrwsrCtl.1 |
| Aprisa | Editor | ASTILLSTOREMOSACTIVEX.SSItemEditorCtl.1 |
| Aprisa | Player | ASTILLSTOREMOSACTIVEX.SSItemPlayerCtl.1 |
| GVG News Q Pro | Browser | GVG.XMOSCtrl.1 |
| Omnibus | Browser | OmnibusODCLauncher.Launcher |
| Omnibus | Editor | OmniBusItemEdit.Edit |
| VizRT | Browser | VCPAxFiller.VCPTemplateFiller |
| VizRT | Editor | VCPAxFiller.VCPTemplateFiller |

#### Additional mosDevice tags (pp87–88)

| Tag | Default | Description |
|---|---|---|
| `<sendRoCreateOnStartLoad>` | NO | If `NO`, all MOS items in rundown are contained within roCreate message. If `YES`, blank roCreate sent and items added via roStoryInsert messages. |
| `<ignoreItemStatusInRoAck>` | NO | Whether MOS Gateway ignores item status in roAck messages from the device. |
| `<handlesRoListAll28>` | NO | Whether MOS device expects MOS 2.8 version of roListAll. |
| `<handlesRoStorySend>` | NO | Whether MOS device handles roStorySend messages. |
| `<handlesRoStorySendNSMLX>` | NO | Whether device supports sending NSMLX via roStorySend mosExternalMetadata payload. |
| `<retryTimeout>` | 0 | Retry timeout in seconds. Set to 0 for no retries. Valid: 0–214748647. |
| `<AllowMosObjCreate>` | NO | Whether device supports mosObjCreate message. |
| `<removeMosObjCreate>` | NO | Whether MOS Gateway removes uninitialised mosObjCreate items. |
| `<DisableMosItemStatChannel>` | NO | Whether MOS Gateway conveys roItemStat messages from this device to NM Server. |

### Using the MosAdmin Application (pp89–90)

MosAdmin provides a GUI to configure replication options for all devices connected to MOS Gateway. It can be run locally or remotely.

**To launch MosAdmin:** Double-click the MosAdmin shortcut icon on the desktop.

MosAdmin has two tabs:
- **Status:** Read-only display of incoming MOS objects being replicated from MOS device to NM Server. Also logged to text files by MOS Gateway Logger.
- **Replication:** Lists devices from `mosconfig.xml` and current replication settings. Accessing this tab requires entering a password — the same password defined in `mosconfig.xml` and used by the `MOSReplication` user account in NM.

**To configure replication for a device:**
1. Select the device from the list on the Replication tab.
2. Select trigger type: `manual` or `scheduled`. If scheduled, continue to step 3.
3. Set a replication time (time for daily scheduled replication).
4. Select Clear Queue to clear NM queue before replication (recommended).
5. Type the path to the device's queue in the NM system.

> Each device must have its own unique replication queue; devices cannot share the same queue.

### Adding MOS Devices to the SYSTEM.MOS-MAP Story (p91)

The NM system administrator must create a table in the `SYSTEM.MOS-MAP` story associating each MOS device's MOS ID with an NM device name.

**Table format:**
```
TABLE-START DeviceTable
MOSGATE.omnibus    omnimos   chan1   chan2
Ncsgateway.sony    sonymos   region1 region2 region3
TABLE-END
```

- Column 1: MOS ID of the device — must match `<mos>` value in `mosconfig.xml`.
- Column 2: NM device name (max 8 characters) — must match `<amcp>` value in `mosconfig.xml`.
- Columns 3+: Channel names (if users are allowed to specify the broadcast channel).

### Copying the File Certificate (pp91–92)

MOS Replication and MOS RoStorySend services use FTP or FTPS to communicate with NM. Using a secure connection requires a file certificate from the NM Server, which must be copied to the MOS Gateway Server and added to Windows trusted certificate storage.

**To copy the file certificate:**
1. Copy the file certificate to the MOS Gateway machine.
2. Double-click it.
3. Click Install Certificate.
4. Select Local Machine as Store Location.
5. Click Next.
6. Select "Place all certificates in the following store".
7. Click Browse.
8. Select Trusted Root Certification Authorities.
9. Click OK.
10. Click Next.
11. Click Finish. Verify "The import was successful" message.
12. (Optional) Delete the certificate file copied in step 1.

---

## Chapter 6: Troubleshooting (pp93–96)

### MOS Gateway Components (p94)

MOS Gateway services (utility programs):
- **MOS Gateway Logger** — creates log files
- **MOS Gateway License Server** — controls licensing
- **MOS Gateway Router** — routes messages between NM Servers and MOS devices
- **MOS Gateway Replication Service** — controls replication of MOS objects from MOS device to NM Server
- **MOS Gateway Administration Service** — delegate between MosAdmin utility and MOS Gateway Router Service
- **MOS Gateway Configuration Service** — reads and writes to `mosconfig.xml`
- **MOS Gateway RoStorySend Service** — obtains stories from NM Server and sends to MOS devices

MOS Gateway utilities:
- **MosAdmin** — GUI for displaying incoming MOS objects and configuring replication
- **LicenseManager** — sets and retrieves the licence string

### Where to Look for Errors (pp94–95)

Each MOS Gateway service writes errors to one of two places:
- Log files in the Log File directory (as specified in `mosconfig.xml`)
- The Application log of Windows Event Viewer

**To view the Application log:**
1. Start > Settings > Control Panel > Administrative Tools > Event Viewer.
2. Select the Application Log item in the left-hand panel.
3. The Source column shows the application name; MOS Gateway services appear here.
4. Double-click any event to open Event Properties/Details with a description.

### Error Categories (p96)

MOS Gateway errors are in three categories:
- **Startup errors** — reported when MOS Gateway cannot start
- **Runtime configuration errors** — reported when configuration is incomplete
- **Miscellaneous other errors**

Error messages are listed alphabetically in Appendix A (Port 921 appendix — note: in this document, Appendix A covers Port 921 and error messages are referenced to that appendix for source and action). Some resolutions require stopping and restarting MOS Gateway services.

---

## Appendix A: Port 921 (pp97–102)

**This appendix is unique to this document (ops-guide) and is not present in the SCG versions.**

### Port 921 (pp97–100)

MOS Gateway versions **2021.3 and 2021.7** use FTP or FTPS to retrieve story text from the newsroom rundown queue. However, MOS Gateway **no longer connects to an RXNET device using port 21** as it did in version 2020.9.x.

Starting with versions 2021.3 and 2021.7, MOS Gateway uses **TCP port 921 by default**, making an FTP or FTPS connection to the Newsroom Management's "mgwcom" service instead.

**What this means:**
- The "mgwcom" service is based on "rxnet" and specifically serves MOS Gateway storysend and replication connections.
- TCP port 921 must be allowed for this connection.
- The `/exc/mgwcom` process starts on the NM Server when a 2021.x MOS Gateway FTP or FTPS client logs in using port 921.

**If TCP port 921 cannot be used in the environment:**

An alternative port may be used, but requires configuration on both the NM Server and the MOS Gateway Server.

**On the MOS Gateway Server** — add the `<ReplicationPort>` parameter to the `<ncs>` section of `mosconfig.xml`:
```xml
<ReplicationPort>X</ReplicationPort>
```
Where `X` is the replacement port number.

**On the Newsroom Management Server** — modify the systemd unit file:
```
/usr/lib/systemd/system/inews-mgwcom.socket
```
(See "Modifying the systemd unit file" section below.)

**To disable FTPS and use plain FTP:**

On the MOS Gateway Server, set in `mosconfig.xml`:
```xml
<UseFTPS>NO</UseFTPS>
```

On the NM Server, include the following environment variable in `/site/env/mgwcom`:
```
RXREQUIRESSL=0
```

Example:
```
DEP-A# cat /site/env/mgwcom
RXREQUIRESSL=0
```

> All environment variables applicable to "rxnet" are also applicable to "mgwcom" and may be placed in the `site/env/mgwcom` file.

**COM device requirement:**

A COM device must be licensed and configured. COM device session licences are required for Replication and RoStorySend workflows — the same as for MOS Gateway versions prior to 2020.9. Only MOS Gateway versions 2020.9.x connected to the non-licensed RXNET device.

Example `/site/config` COM device entries:
```
reslist 681 682    ; com - usually MOS Replication and roStorySend
com  681  -  gnews  -
com  682  -  gnews  -
```

If a COM device is not configured, the connection will be refused by the "mgwcom" service.

### Modifying the systemd unit file (pp101–102)

**File:** `/usr/lib/systemd/system/inews-mgwcom.socket`

**To modify the port (example: changing from 921 to 9210):**

1. Check current socket status:
   ```
   DEP-A# systemctl status inews-mgwcom.socket
   ```
   Expected output (when running on port 921):
   ```
   • inews-mgwcom.socket - iNEWS MGWCom socket
   Loaded: loaded (/usr/lib/systemd/system/inews-mgwcom.socket; enabled; vendor preset: disabled)
   Active: active (listening) since Thu 2021-10-03 16:10:46 EDT; 3 days ago
   Listen: 0.0.0.0:921 (Stream)
   Accepted: 3; Connected: 1
   ```

2. Stop the socket:
   ```
   DEP-A# systemctl stop inews-mgwcom.socket
   ```

3. Edit the file (change `ListenStream` port):
   ```
   DEP-A# nano /usr/lib/systemd/system/inews-mgwcom.socket
   ```
   File contents after editing (port changed to 9210):
   ```
   [Unit]
   Description=iNEWS MGWCom socket

   [Socket]
   Accept=true
   ListenStream=0.0.0.0:9210

   [Install]
   WantedBy=sockets.target
   ```

4. Start the socket:
   ```
   DEP-A# systemctl start inews-mgwcom.socket
   ```
   This will warn: `Warning: inews-mgwcom.socket changed on disk. Run 'systemctl daemon-reload' to reload units.`

5. Reload the systemd daemon:
   ```
   DEP-A# systemctl daemon-reload
   ```

6. Verify the change:
   ```
   DEP-A# systemctl status inews-mgwcom.socket
   ```
   Expected output (now on port 9210):
   ```
   • inews-mgwcom.socket - iNEWS MGWCom socket
   Loaded: loaded (/usr/lib/systemd/system/inews-mgwcom.socket; enabled; vendor preset: disabled)
   Active: active (listening) since Mon 2021-09-13 12:56:54 EDT; 28s ago
   Listen: 0.0.0.0:9210 (Stream)
   Accepted: 3; Connected: 0
   ```

> Make this change on **each** NM Server in the system.

---

## Source Anomaly Summary

| # | Location | Description |
|---|---|---|
| 1 | Ch5 p76 intro text vs p76 step 3 vs p41 vs p27 | mosconfig.xml path has three variants: `C:\Program Files\Avid\MOSGateway` (p76 intro); `C:\Program Files (x86)\Avid\iNEWS MOSGateway` (p76 step 3); `C:\Program Files (x86)\Avid\iNEWS MOS Gateway` (p41, p27 screenshot). Authoritative: `C:\Program Files (x86)\Avid\iNEWS MOS Gateway` (installer screenshot p27). |
| 2 | Ch5 p77 services screenshot | Screenshot shows all services at version 4.7.0.2 — same version shown in the 2023.3 SCG. Likely a screenshot from a later test environment used in this 2021.7 document. Service names and start/stop order in text are taken as accurate; version number in screenshot should not be relied upon for 2021.7 deployments. |

---

## Version-Specific Notes

- **`<ReplicationPassword>` present in plain text in `<ncs>` group** — changed in v2023.3, where vault credentials replace the plain-text password and `<ReplicationPassword>` is removed from the `<ncs>` template.
- **Port 921 / mgwcom service introduced in v2021.3 / v2021.7** — replaces previous RXNET connection on port 21 (used in v2020.9.x). Appendix A documents this transition explicitly. Not present in any SCG version.
- **Avid License Control activation** — both direct (online) and indirect (offline, www.avid.com/license, `.bin` file) methods documented.
- **VC++ 2015–2019 Redistributable (x86)** — confirmed as prerequisite from installer screenshot (p25). Installer prompts for this before MOS Gateway will install.
- **MOS Protocol v3.x NOT supported** — explicitly stated (p20).
- **OS:** Windows Server 2016 or Windows Server 2019 (same as 2023.3).
- **NM dependency:** version 3.5 or later (same as 2023.3).
- **Supported MOS devices:** same 16 devices as 2023.3.
