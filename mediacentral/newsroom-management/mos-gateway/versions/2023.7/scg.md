---
product: mediacentral-mos-gateway
product-area: newsroom-management
version: "2023.7"
doc-type: scg
source: pdf
source-file: MCMOSgwy_2023.7_SCG.pdf
confidentiality: public
date-added: 27/04/2026
last-updated: 27/04/2026
status: superseded
superseded-by: "2024.10.5"
products-affected: [mediacentral-mos-gateway, mediacentral-newsroom-management]
feature-tags: [scg, compatibility, install, upgrade, activation, mos-protocol, mosconfig, ncs, logging, tcpPorts, replication, vault-credentials, mos-admin, system-mos-map, file-certificate, troubleshooting, ftps, ftp, port-921]
---

# MediaCentral | MOS Gateway — Setup Configuration Guide v2023.7

**Source PDF:** MCMOSgwy_2023.7_SCG.pdf
**Copyright:** © 2023 Avid Technology, Inc.
**Created:** 7/19/2023
**Online Support:** <http://www.avid.com/onlinesupport>

> ⚠️ **Source anomaly — malformed URL (p1):** The online support URL in the source document reads `http://https://avid.secure.force.com/pkb/articles/en_US/User_Guide/MediaCentral-Newsroom-Management` — this is a malformed double-protocol string. The correct Avid Knowledge Base URL is `https://avid.secure.force.com/pkb/articles/en_US/User_Guide/MediaCentral-Newsroom-Management`. Reproduced as found; do not treat as a valid link.

> ⚠️ **Source anomaly — mosconfig.xml path inconsistency:** Chapter 3 (Upgrade, p24) and the vault file location (p63) both reference `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`. Chapter 5 (Configuring MOS Gateway, p51) references `C:\Program Files\Avid\MOSGateway` as the mosconfig.xml default location. The vault file location on p63 confirms that `C:\Program Files (x86)\Avid\iNEWS MOS Gateway` is the correct installer path. The Ch5 path appears to be legacy or alternative documentation. Both paths are reproduced in their respective sections as found in the source.

---

## Revision History

| Date | Changes |
|---|---|
| 27 Jul 2023 | Added note to `<ncs>` Group regarding vault credential change for 2023.7 |
| 30 Mar 2023 | Initial release |

---

## 1 — Introduction

This guide describes how to set up and configure MediaCentral | MOS Gateway version 2023.7.

**Guide structure:**
- Chapter 2: Preparing for Installation (compatibility, prerequisites)
- Chapter 3: Installing MOS Gateway Program Files (install, activation, upgrade)
- Chapter 4: Setting up the Newsroom Management Server (9-step NM configuration)
- Chapter 5: Configuring MOS Gateway (mosconfig.xml, MOS Admin app, vault credentials, certificate)
- Chapter 6: Troubleshooting (components, error locations)

---

## 2 — Preparing for Installation

### Qualified Servers and Operating Systems

| Component | Qualified OS |
|---|---|
| MOS Gateway | Windows Server 2019, Windows Server 2022 |

> MOS Gateway is not supported on any other Windows operating system.

### Newsroom Management Dependency

| Licensing model | Minimum NM version |
|---|---|
| iNEWS licensing | 2021.3 (7.8) or later |
| MediaCentral Subscription Licensing | 2021.11 or later |

### Qualified MOS Protocols

| Protocol | Supported |
|---|---|
| MOS Protocol 2.6 | ✓ |
| MOS Protocol 2.8 | ✓ |
| MOS Protocol 3.x | ✗ Not supported |

**Device connection limit:** A single MOS Gateway supports a maximum of **2 MOS device connections**.

For the latest list of supported MOS devices: <https://www.avid.com/products/inews/specifications>

### Supported MOS Devices (v2023.7)

The following 16 devices are qualified:

| # | Device |
|---|---|
| 1 | AirSPACE |
| 2 | AirSPACE CE |
| 3 | Aprisa |
| 4 | Deko |
| 5 | GVG Dyno |
| 6 | GVG K2 |
| 7 | GVG News Q Pro |
| 8 | GVG Turbo |
| 9 | Grass Valley Stratus |
| 10 | Inscriber |
| 11 | Omnibus |
| 12 | Pilot |
| 13 | Proximity Xenostore (with Pinnacle FXDeko) |
| 14 | Sony MAV Server |
| 15 | Sony PDW-R1 |
| 16 | VizRT |

### Installation Prerequisites

**Required software:** Microsoft Visual C++ 2015-2019 Redistributable (x86)

The installer checks for this component and will prompt the user to install it if not present before proceeding.

---

## 3 — Installing MOS Gateway Program Files

### Installation Procedure

1. Run `Setup.exe` under the MOSGateway folder in the iNEWS ISO. The InstallShield Wizard launches and notifies the user that Avid License Control is required.
2. Click **Install** to continue. InstallShield prompts for installation of Avid License Control.
   > If Microsoft Visual C++ 2015-2019 Redistributable (x86) is not installed, the installer will prompt for it before continuing.
3. Click **Install** to install Avid License Control.
4. Click **Next** to begin the iNEWS MOS Gateway InstallShield Wizard.
5. Read the Avid Software Licence Agreement.
6. Accept the terms in the licence agreement.
7. Click **Next** to continue.
8. Accept the default destination folder (`C:\Program Files (x86)\Avid\iNEWS MOS Gateway\`) or choose a different location.
9. Click **Next** to continue.
10. When InstallShield Wizard prompts that installation is ready, click **Install**.
11. When installation is complete, activate MOS Gateway. Click **Done** to activate later.

> **Note:** The installer application title bar reads "MediaCentral® | MOS Gateway" in the InstallShield wizard screenshot, consistent with v2023.3 and later naming.

### Activation

Two activation methods are available:

**Direct activation (computer has internet access):**
1. Open Avid License Control.
2. Click **Activate**.
3. Select "This computer's Internet connection."
4. Click **Continue**.
5. Enter System ID and Activation ID in the appropriate fields.
6. Click **Activate**.
7. Click **Done** when the "iNEWS MOS Gateway successfully activated" message appears.

**Indirect activation (from a different computer with internet access):**
1. Open Avid License Control on the MOS Gateway computer.
2. Click **Activate**.
3. Select "Another computer's Internet connection."
4. Click **Continue**.
5. Enter System ID and Activation ID.
6. Follow on-screen prompts; go to <https://www.avid.com/license> on a computer with internet access to enter the System ID, Activation ID, and Device ID.

> **Avid note:** Write down the System ID, Activation ID, and Device ID for later reference.

**Subscription Licensing:** If using MediaCentral Subscription Licensing, Avid License Control activation is not required. The licence is acquired from the MediaCentral Licensing Server when connecting to the Newsroom Management Server.

### Upgrading MOS Gateway Software

> **Warning:** Running the setup program on a system that already has a previous version installed will not overwrite all necessary files. Previous versions of mosconfig.xml cannot necessarily be used with later versions. Avid recommends printing the old mosconfig.xml file as a reference before uninstalling the old software and upgrading.

**To print the MOS configuration file before upgrading:**
1. Open Notepad.
2. Select File › Open.
3. Navigate to the configuration file at: `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`
4. Print using File › Print or Ctrl+P.

**To uninstall MOS Gateway:**
- Use the Add/Remove programs feature in the Windows Control Panel.

After uninstalling, install the new version using the procedure above, then edit the new default mosconfig.xml using the printed copy of the old configuration file.

---

## 4 — Setting up the Newsroom Management Server

After MOS Gateway is installed, the Newsroom Management Server must be configured to use it. Configuration is performed at the Newsroom Management console and at an iNEWS Workstation.

**Prerequisites assumed:**
- Fully functioning network
- Newsroom Management Servers running software that supports the MOS protocol
- Newsroom Management Servers connected to a console multiplexor with Customer Support dial-in access
- Person performing installation has attended a Newsroom Management system administration course or has equivalent experience (including knowledge of `ed`, UNIX line editor, NM client software, and console server selection)

**Reference:** *Newsroom Management Setup and Configuration Guide* recommended for Chapter 2 (selecting servers) and Chapter 10 (UNIX line editor).

### Configuration Summary (9 Steps)

1. Creating a Monitor Server for Each Show
2. Creating Composite and Event List Queues
3. Setup Queue and Story Forms
4. Edit the SYSTEM.MOS-MAP Story
5. Assigning Forms to Queues
6. Create an Entry in the SYSTEM.MAP Story
7. Adding IP Addresses for the MOS Gateway
8. Updating the Newsroom Management system Dictionaries (Optional)
9. Configure Newsroom Management for MOS Replication (Optional)

### Step 1: Creating a Monitor Server for Each Show

A monitor server is a utility program that checks a show's event requests for errors, creates composite and event lists, and sends playlists to MOS Gateway.

**Requirements:**
- A device number is chosen for the monitor server (typically matches the mailbox number)
- Valid standard mailbox numbers: 1 through 4096
- The device number must be entered in the system's configuration file
- The mailbox number must be assigned to both the show's monitor server and its rundown queue

**To create and configure a monitor server:**

1. Check `/site/config` and choose the next available 3-digit device number from the range reserved for server programs (e.g., 201 to 300).
2. Verify the number is available as a mailbox using: `list mailbox=266 c`
3. Add the monitor server to `/site/config` on each Newsroom Management Server:
   a. At the console, select all Newsroom Management Servers.
   b. Open the configuration file: `ed /site/config`
   c. Add the device number to the `servers` line: `servers 261 263 265 267`
   d. Add a configuration line using the format: `server <device#> <type> <mailbox> <device name>`

   Sample configuration lines:
   ```
   server 264 monitor 264 - ;monitor server
   server 265 monitor 265 - ;monitor server
   server 266 monitor 266 - ;monitor server
   server 267 monitor 267 - ;monitor server
   ```
   (Text after semicolons are optional comments.)

   e. Save by typing: `w` (lowercase only)
   f. Exit by typing: `q`

4. (Optional) Test configuration changes.

> **Note:** Always back up `/site/config` before making changes. Distribute server programs evenly across Newsroom Management Servers for load balancing and failover.

**Reconfigure the System:**
1. At the console, select the master computer (typically server A).
2. Type `su` to log in as superuser.
3. Take the system offline: `NRCS-A$ offline`
4. Configure the system: `configure`
5. Bring the system back online: `NRCS-A$ online`
6. Exit superuser mode (Ctrl+D).

**Assign the Mailbox to the Rundown Queue:**
1. Log in as system administrator at an iNEWS Workstation.
2. Navigate to the rundown queue (e.g., SHOWS.6PM.RUNDOWN).
3. Right-click on the queue and select Properties.
4. Click the Maintain tab.
5. Select the Standard radio button in the Mailbox section.
6. Type in the mailbox number (e.g., 267).
7. Click OK.

**Viewing Assigned Mailboxes:**
- List all monitor server mailboxes: `list c monitor`
- List all queues using a specific mailbox: `list mailbox=267 d`
- Check if a mailbox is assigned to a server: `list mailbox=267 c`

### Step 2: Creating Composite and Event List Queues

The monitor server builds event lists (per MOS device) and composite lists (all devices) that are stored in dedicated queues.

**To create and configure queues:**
1. Log in to an iNEWS Workstation as system administrator.
2. Navigate to the target directory.
3. Click Tools › New Queue (or right-click › New Queue).
4. Name the queue (e.g., `COMPOSITE` or `CG1`). Pathnames are typically `SHOWS.6PM.COMPOSITE`, `SHOWS.6PM.CG1`, etc.
5. Press Enter to save.
6. Set Preview Lines via Queue Properties › User Interface tab.
7. Remove the Inverted trait and apply the Refresh trait (Queue Properties › User Interface tab).
8. Assign a write security group to restrict write access to superusers only.

### Step 3: Setup Queue and Story Forms

Add MOS Gateway fields to existing rundown queue and story forms. Fields must exist in both queue forms and story forms.

| Field | Type | Description |
|---|---|---|
| EVENT-STATUS | Read-only | Displays availability and play status of a Command or MOS event (OFFLINE, CUED, PLAYING, STOPPED, etc.) |
| ITEM-CHANNEL | Editable | Sets or displays the channel for primary Command or MOS video events. Required with VIDEO-ID for Command integration. |
| MOS-ACTIVE | Write-protected | Required for Story Form to accept MOS events. Cleared if user selects Delete Machine Control. |
| MOS-DEVICE | Write-protected | Displays the AMCPID of the MOS device. When on rundown form, shows MOS item status in STATUS field even if device is not primary in SYSTEM.MAP. |
| MOS-DURATION | Editable | Includes MOS event duration in CUME-TIME, BACK-TIME, or TOTAL-TIME calculations. User can enter a value directly; only used if no RUNS-TIME entry exists. |
| MOS-TITLE | Write-protected | Displays descriptive text associated with MOS or CAP events. |
| MOS-OBJID | Write-protected | Captures information in the `<mosobjid>` tag from MOS communication. |
| RUNS-TIME | Calculated | Sum of all `runs=` times in a story's production cues plus the MOS-DURATION field contents. Accepts user-entered times. |

**Calculating Duration in Time Fields:**

The relationship between RUNS-TIME and MOS-DURATION:
- MOS-DURATION content adds to the computed runs time shown in RUNS-TIME
- If the user enters a time in RUNS-TIME, MOS-DURATION contents are ignored
- RUNS-TIME displays the sum of MOS-DURATION and all `Runs=` times from the Instruction panel
- TOTAL-TIME shows the sum of RUNS-TIME, AUDIO-TIME, and TAPE-TIME

Runs time entry format is flexible:
```
RUNS=25
RUNS=1:30
RUNS = 25
RUNS 1:30
TAPE RUNS 115
```
> A runs time entry of 115 equals 1:55 (one minute fifty-five seconds). Without a colon, the number is interpreted as seconds.

Default keyword is `RUNS` (not case-sensitive). Can be changed by redefining token `W_RUNS` in `/site/dict/words`.

### Step 4: Edit the SYSTEM.MOS-MAP Story

The SYSTEM.MOS-MAP story contains a DeviceTable with two columns:
- Column 1: MOS device's mosID (must match the `<mos>` value in mosconfig.xml)
- Column 2: Newsroom Management device name associated with the mosID (must match the `<amcp>` value in mosconfig.xml)

**Example DeviceTable:**
```
TABLE-START DeviceTable

Mos.omnibus.co.uk OmniMOS

TABLE-END
```

> If the SYSTEM.MOS-MAP story does not exist, create it as the first story in the MOS-Map queue in the System directory.

**ReplaceTime setting** controls display of MOS item time information:

To block time display for all MOS devices:
```
ReplaceTime=NO
```
(The line should precede the DeviceTable.)

To exclude time information for a single device:
```
ReplaceTime=YES
TABLE-START DeviceTable
;MOSID AMCPDeviceName
sony sonyem
MOSGATE gamosgw chan1 chan2 chan3
PILOT pilot
AIRSPACE airem
VERTIGO vertigo
NewsQPro NQPro <noDur>
NETIAMOS netia
TABLE-END
```

> **Warning:** The `<noDur>` tag must not be used at sites with workstations running Newsroom Management earlier than 1.5.1. Earlier versions identify the tag as a channel rather than a command to suppress duration display.

### Step 5: Assigning Forms to Queues

After creating composite and event list queues, assign forms containing MOS Gateway fields to each queue.

**Examples:**
- Assign composite list form to SHOWS.6PM.COMPOSITE
- Assign CG event list form to SHOWS.6PM.CG1

Default forms are in the SYSTEM.FORMS directory for composite, still store, character generator, and video event list queues.

**To assign a form to a queue:**
1. At an iNEWS Workstation, navigate to the queue in the Directory panel.
2. Right-click and select Properties.
3. On the Forms tab, use the Queue drop-down to select the queue form and the Story drop-down to select the story form.
4. If modifying an existing form, check "Update existing stories to use story form."
5. Click OK.

> Users should log off and sign back on to view new queue/story form settings.

### Step 6: Create an Entry in the SYSTEM.MAP Story

The SYSTEM.MAP story is always the first story in the SYSTEM.MAP queue. Each show that will be produced using MOS Gateway or Command requires an entry.

**Entry header format (single paragraph, max 255 characters):**

| Parameter | Description |
|---|---|
| Rundown Queue | Full pathname of the show's rundown queue |
| Event List Directory | (Optional) Directory for event list queues. Use `-` if not required. |
| Composite List Queue | (Optional) Queue for the show's composite list. Use `-` if not required. |
| Group of Users | (Optional) Security group restricting who can monitor the show. Use `-` for no restriction. |
| Quit Time | Time the monitor server turns itself off. Use 24-hour format (e.g., `1915` = 7:15 PM) or duration with `D` prefix (e.g., `D130` = 1 hour 30 minutes). |

After the entry header, list the devices used by the show (entry header followed by a device list). Production device name format: `<amcp>@<hostname>` (e.g., `sony@mosgwy`) where `<amcp>` matches the mosconfig.xml `<amcp>` value and `<hostname>` matches the MOS Gateway computer's hostname in `/etc/hosts` on the NM Server.

**Parameters for Character Generators:**

| Parameter | Description |
|---|---|
| Drive | Disk drive for the machine. Leave empty for default. |
| Directory/User# | Directory for the character generator to use. |
| Address/Stack | Address range for forms storage (e.g., `1 199` for addresses 1–199). Must be large enough to hold all supers the monitor server will build. |

**Parameters for Still Stores:**

| Parameter | Description |
|---|---|
| Drive | Disk drive. Leave empty for default. |
| Directory/User# | User number for the still store machine. |
| Address/Stack | Stack for the still store to use. |

**Parameters for Video Machines (Channel Assignment):**

| Code | Meaning |
|---|---|
| 0 | Channels assigned by device |
| 1 | Channels assigned by Newsroom Management |
| 2 | Channels assigned by device manager |
| 3 | Channels assigned by ControlAir Workstation |

**Parameters for MOS Devices:** Use a hyphen (`-`) in this field.

### Step 7: Adding IP Addresses for the MOS Gateway

The MOS Gateway Server's IP address must be added to all Newsroom Management Servers' `/etc/hosts` files.

> To maximise reliability and minimise latency, MOS Gateway should be installed on the Mirror Net of the Newsroom Management hosts, and static IP addresses should be used. Always back up `/etc/hosts` before editing.

**To add IP addresses:**
1. Select all servers at the console.
2. Type `su` to log in as superuser.
3. Type `ed /etc/hosts`.
4. Type `a` to append; enter IP addresses, computer names, and comments:
   ```
   125.1.10.50 MOSGWY mosgwy #MOS Gateway machine
   125.1.10.60 MG1 mg1 # MOS Gateway Server1
   125.1.10.70 MG2 mg2 # MOS Gateway Server2
   ```
5. Type `.` to stop appending.
6. Save by typing `w` (lowercase only).
7. Quit by typing `q`.

### Step 8: Updating Newsroom Management Dictionaries (Optional)

MCS dictionary files in `/site/dict` can be modified to translate status indicators from MOS devices to match Newsroom Management display strings (e.g., translating device "OnAir" to match NM "Play").

**To edit the `/site/dict/mcs` dictionary file:**
1. Select all servers at the console.
2. Open for editing: `ed /site/dict/mcs`
3. Navigate to the line to change (e.g., `/PLAY`).
4. Substitute the second occurrence: `s?/PLAY?/OnAir`
5. Save by typing `w`.
6. Exit by typing `q`.

After editing, run `makemctab` at the NM console (stop monitor servers first). Then:
1. Select all servers; type `su`.
2. Type `offline`.
3. Type `broadcast WARNING!Log out in 5 Min.`
4. At the specified time, type `list s` to check who is logged in.
5. Select all servers.
6. Type `logout all`.
7. Type `list s` to check for connect session users.
8. Type `stop all`.
9. Type `maketab -i`
10. Type `makemontab -i`
11. Type `restart all`
12. Type `online`

### Step 9: Configure Newsroom Management for MOS Replication (Optional)

MOS replication requires:
- A Newsroom Management user account for MOS replication
- A write group for MOS replication
- Device-specific queues to store replicated MOS items
- Correct database traits and forms assigned to queues
- Write permissions assigned to the group containing only the MOS replication user account

All other NM users should have read-only permission to those queues.

**To create the NM user account for MOS replication:**
1. Log in to an iNEWS Workstation with account creation privileges.
2. Select Tools › Options › Users.
3. Click New User. In the Add New User dialog:
   - User ID: e.g., `MosReplication`
   - Enable Kill All Stories in Queue Features
4. Click Password to set the password. Must match the value in mosconfig.xml `<ncs>` group.
5. Click Add.
6. Reopen the account preferences and uncheck the Force Change password option.

> **Warning:** The Force Change option is selected by default for all new users. It must be removed since MOS replication is an automated process.

**To create a write group for MOS replication:**
1. Choose a group name (e.g., `mosreplication`).
2. Verify it is not in use: `gtraits list mosreplication`
3. Use `gtraits add` to add it to the system.
4. At an iNEWS Workstation, navigate to System › Groups queue.
5. Create a new story with the group name as the title (slug).
6. In the Story Text panel, enter:
   ```
   group mosreplication
   mosreplication
   ```
7. Save the story.

**To create device-specific queues:**
1. In the Directory panel, navigate to the target directory (create if needed: Tools › New Folder).
2. Click Tools › New Queue (or right-click › New Queue).
3. Name the queue (e.g., `VIDEO`).
4. Configure queue properties:
   - Forms tab: Set Queue and Story forms to MOSREPLICATION
   - Groups tab: Set mosreplication as Write Group; leave Read and Notify as `<none>`
   - Maintain tab: Ensure Update is selected (required for rxnet)
   - User Interface tab: Ensure Refresh is selected
5. Click OK.

> The MOSREPLICATION form is in the SYSTEM.FORMS.M directory of Newsroom Management. If it does not exist, the NM system administrator must create it.

---

## 5 — Configuring MOS Gateway

### MOS Gateway Configuration File

The MOS Gateway configuration file (`mosconfig.xml`) is installed by default at:

```
C:\Program Files\Avid\MOSGateway
```

> ⚠️ **Source note:** This path (from p51, Ch5) differs from the installer path shown in the Chapter 3 Upgrade section (p24) and the vault file location (p63), which both reference `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`. The vault file location on p63 confirms that `C:\Program Files (x86)\Avid\iNEWS MOS Gateway` is the correct installer path. See source anomaly note at the top of this document.

> The actual location may vary since the folder name and location can be changed during installation.

> **Always make a backup copy of the configuration file before editing.**

### Editing the Configuration File

The configuration file is a Unicode file — Notepad (`notepad.exe`) is recommended for editing.

While MOS Gateway is running, the configuration file is locked by the MosConfigService. Stop MOS Gateway before editing.

**To edit the configuration file:**
1. Open Notepad.
2. Select File › Open.
3. Navigate to: `C:\Program Files\Avid\MOSGateway`
4. Make the required changes.
5. Select File › Save.

### Stopping and Starting MOS Gateway

After editing the configuration file, restart all MOS Gateway services. Start order:

1. MOSConfigService
2. MOS Gateway Logger
3. MOS Gateway License Server
4. MOSReplicationService
5. MOSRouterService
6. MOSAdminService

> When stopping services manually, the order is reversed: MOSAdminService first, MOSConfigService last.

**To stop and restart services:**
1. At the MOS Gateway Server, click Start on the Windows Task bar.
2. Select Settings › Control Panel.
3. Open Administrative Tools, then Services.
4. Select MOSConfigService.
5. Select Action › Stop. This stops all MOS Gateway services in the proper order.
6. Restart services by selecting MOSAdminService, then select Action › Start. This starts all MOS Gateway services in the proper order.
7. Click Close.

> **Note (v2023.7):** There is no "Restart the service" shortcut link in the Services panel for this version. The stop/start procedure requires selecting MOSConfigService (to stop) and MOSAdminService (to start) explicitly.

### Configuration File Components Explained

Configuration file sections are grouped between XML tags. The information that should be modified appears in **bold** in the source document. Each group below covers a section between its opening and closing tags.

---

#### The `<logging>` Group

```xml
<logging>
<directory>DIRECTORY_GOES_HERE</directory>
<maxFileCount>COUNT_GOES_HERE</maxFileCount>
<maxFileBytes>SIZE_GOES_HERE</maxFileCount>
<winDebugTrace>WINDEBUGTRACE_YESNO</winDebugTrace>
<socket>SOCKET_ONOFF</socket>
<TurnOffLogging>LOGGING_YESNO</TurnOffLogging>
<LoggingLevel>LOGIN_LEVEL_GOES_HERE</LoggingLevel>
</logging>
```

| Parameter | Description |
|---|---|
| `DIRECTORY_GOES_HERE` | Directory where MOS Gateway saves log files |
| `COUNT_GOES_HERE` | Maximum number of log files before recycling (e.g., 100) |
| `SIZE_GOES_HERE` | Maximum size per log file in bytes (e.g., 1000000 ≈ 1 MB) |
| `WINDEBUGTRACE_YESNO` | YES to send logging to global Win32 debug subsystem (useful with a Win32 debugger) |
| `SOCKET_ONOFF` | ON to enable socket level logging (logs all incoming socket messages in network byte order). Note: socket logging affects performance; do not leave on permanently. |
| `LOGGING_YESNO` | YES to enable generic logging |
| `LOGIN_LEVEL_GOES_HERE` | Enables all messages; default is `0xff`. Users can disable specific messages. |

Socket log filename format: `[mosID][space][LM|UR][space][NCSInit|MOSInit].bin`
- LM = "Media Object Metadata port"
- UR = "Running Order port"
- NCSInit = MOS Gateway made the connection
- MOSInit = MOS Device made the connection

Examples: `VideoDevice LM MOSInit.bin`, `CGMos UR NCSInit.bin`

---

#### The `<tcpPorts>` Group

```xml
<tcpPorts>
<out_upper>MOS_OUT_UPPER_PORT_GOES_HERE</out_upper>
<out_lower>MOS_OUT_LOWER_PORT_GOES_HERE</out_lower>
<in_upper>MOS_IN_UPPER_PORT_GOES_HERE</in_upper>
<in_lower>MOS_IN_LOWER_PORT_GOES_HERE</in_lower>
</logging>
```

| Parameter | Recommended value | Description |
|---|---|---|
| `MOS_OUT_UPPER_PORT_GOES_HERE` | 10541 | Port on which MOS Gateway sends running order MOS commands |
| `MOS_OUT_LOWER_PORT_GOES_HERE` | 10540 | Port on which MOS Gateway sends media object metadata MOS commands |
| `MOS_IN_UPPER_PORT_GOES_HERE` | 10541 | Port on which MOS Gateway receives running order MOS commands |
| `MOS_IN_LOWER_PORT_GOES_HERE` | 10540 | Port on which MOS Gateway receives media object metadata MOS commands |

> Running order connections are "upper ports"; media object metadata connections are "lower ports" in MOS protocol. All MOS devices must use the same ports to connect to MOS Gateway.

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
| `NCS_ID_GOES_HERE` | NCS ID of the Newsroom Management Server to which devices will replicate MOS objects |
| `HOST_GOES_HERE` | Network host name of the Newsroom Management Server. Verify it can be pinged from the MOS Gateway Server. |
| `ALLOW_YESNO` | YES to allow replication; NO prevents replication (MOS objects dropped at MOS Gateway). Default if absent: YES. |
| `USER_GOES_HERE` | User ID the replication service uses to replicate MOS objects. Must exist on the NM system with write permissions to replication queues. |
| `PUT_PASSWORD_HERE` | Password for the replication user. |
| `ALLOW_MOSITEMREPLACE_YESNO` | YES to allow mosItemReplace. Default: NO. |
| `USE_FTPS_YESNO` | YES for FTPS communication with NM. Default: YES. If set to NO, set `RXREQUIRESSL=0` in `/site/env/mgwcom` on the NM Server. |
| `TOKEN_GOES_HERE` | Path to queue in NM database where MOS Gateway obtains a form for story creation. Default: SYSTEM.FORMS. |
| `<Unicode>YES</Unicode>` | Specifies whether MOS Gateway is connecting to a Unicode NM Server. |

> **Version 2023.3+ note (revision added Jul 27 2023):** Beginning with version 2023.3, the User ID for the replication service is still configured here; however, for better security, the password is no longer configured with `PUT_PASSWORD_HERE`. Instead, users should use the vaultctl utility to configure the password for MOS Replication. See "Setting up Replication Connection Credentials" below.

---

#### The `<names>` Group

```xml
<names>
<mos>MOS_ID_GOES_HERE</mos>
<amcp>iNEWS_DEVICE_GOES_HERE</amcp>
<network>NETWORK_NAME_GOES_HERE</network>
</names>
```

| Parameter | Description |
|---|---|
| `MOS_ID_GOES_HERE` | MOS ID reported by the MOS device. Identifies the device to MOS Gateway and is used in MOS items placed in an NM rundown. |
| `iNEWS_DEVICE_GOES_HERE` | Newsroom Management device name for the MOS device. Must match the name in the SYSTEM.MOS-MAP story. |
| `NETWORK_NAME_GOES_HERE` | Network (host) name of the MOS device. Contact your network administrator. |

---

#### The `<roSlugMaps>` Group

```xml
<roSlugMaps>
<roSlugMap>
<iNewsRunningOrderName>INEWS_RO_NAME</iNewsRunningOrderName>
<MOSroSlug>MOS_RO_NAME</MOSroSlug>
</roSlugMap>
</roSlugMaps>
```

Maps the NM running order name (`INEWS_RO_NAME`) to the MOS device's running order name (`MOS_RO_NAME`). If the group or a specific mapping is missing, MOS Gateway sends a default running order name: `<server_name>/<rundown_queue_name>`.

---

#### The `<handlesEmptyStories>` Group

```xml
<handlesEmptyStories>YESNO</handlesEmptyStories>
```

Set to YES if the MOS device manages stories with no items the same way it handles stories with items. Default if absent: YES.

| MOS Device | handlesEmptyStories |
|---|---|
| Sony® MAV Server | No |
| OmniBus™ Columbus | Yes |

---

#### The `<handlesRoStoryMoveMultiple>` Group

```xml
<handlesRoStoryMoveMultiple>YESNO</handlesRoStoryMoveMultiple>
```

Set to YES if the MOS device supports the roStoryMoveMultiple MOS command; MOS Gateway will then use that command to move stories. Default: YES.

---

#### The `<handlesRoItemLevelCommands>` Group

```xml
<handlesRoItemLevelCommands>YESNO</handlesRoItemLevelCommands>
```

Set to YES if the MOS device supports roItemInsert, roItemDelete, and roItemReplace MOS commands; MOS Gateway will use those commands to move items in stories. Default: YES.

---

#### The `<prependPageNumber>` Group

```xml
<prependPageNumber>YESNO</prependPageNumber>
```

Set to YES if the NM story's page number is prepended to the story title (slug).

---

#### The `<prependSeparator>` Group

```xml
<prependSeparator>-</prependSeparator>
```

Character used to separate the story title and page number. Default: hyphen (`-`).

---

#### The `<prependStringForEmptyPageNumber>` Group

```xml
<prependStringForEmptyPageNumber>XXX</prependStringForEmptyPageNumber>
```

String used in place of an empty page number.

---

#### The `<statusTranslations>` Group

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

Maps MOS device-reported status strings to Newsroom Management event status codes. Multiple strings can map to the same status code by duplicating the relevant line.

| Parameter | Maps to NM event status | Description |
|---|---|---|
| `UNKNOWN_STR` | Unknown | MOS device unable to determine presence/absence of media |
| `UNAVL_STR` | Unavailable | MOS item media is absent |
| `AVAIL_STR` | Available | MOS item media present and ready to play |
| `INCOMP_STR` | Incomplete | Media partially present (e.g., transfer in progress) |
| `CUEING_STR` | Cueing | Cue request received |
| `CUED_STR` | Cued | Media has been cued |
| `P_STR` | Play Requested | Play request received |
| `PLAYING_STR` | Playing | Media is playing or on-air |
| `PAUSED_STR` | Paused | Media is paused |
| `STOP_STR` | Stopped | Play has been halted |

---

#### The `<roChannels>` Group

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

Maps NM channel names (max 7 characters, as enforced by iNEWS Workstation) to channel names accepted by the MOS device. `INEWS_CHAN` strings are also inserted in the SYSTEM.MOS-MAP table.

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

> The first four settings (`trigger`, `replicationTime`, `clearQueue`, `path`) are configured by the MosAdmin application — no manual editing required. The ProgID values must be entered manually if used; if not defined, users cannot right-click a production cue or story form to open the ActiveX controls.

| Parameter | Description |
|---|---|
| `TRIGGER_TYPE` | MANUAL or SCHEDULED |
| `REP_TIME` | Time of day for scheduled replication (only relevant if trigger is SCHEDULED) |
| `TRUE_FALSE` | TRUE to clear all stories from the replication queue before replication; FALSE to retain existing stories |
| `PATH_TO_QUEUE` | Path to the device's queue in the NM database where Media Object Metadata (MOM) is replicated. Each device must have a unique queue. |
| `xxx.xxx.xxx` | ProgID of the ActiveX Browser |
| `yyy.yyy.yyy` | ProgID of the ActiveX Editor |
| `zzz.zzz.zzz` | ProgID of the ActiveX Player |

**Common ProgID values (v2023.7):**

| Device | Role | ProgID |
|---|---|---|
| AirSPACE | Browser | Avid.AirSPACEBrowser.1 |
| AirSPACE | Editor | Avid.AirSPACEEditor.1 |
| Aprisa | Browser | ASTILLSTOREMOSACTIVEX.SSItemBrwsrCtl.1 |
| Aprisa | Editor | ASTILLSTOREMOSACTIVEX.SSItemEditorCtl.1 |
| Aprisa | Player | ASTILLSTOREMOSACTIVEX.SSItemPlayerCtl.1 |
| GVG News Q Pro | Browser | GVG.XMOSCtrl.1 |
| Omnibus | Browser | OmnibusODCLauncher.Launcher |
| Omnibus | Editor | OmnibusItemEdit.Edit |
| VizRT | Browser | VCPAxFiller.VCPTemplateFiller |
| VizRT | Editor | VCPAxFiller.VCPTemplateFiller |

---

#### The `<sendRoCreateOnStartLoad>` Group

```xml
<sendRoCreateOnStartLoad>YESNO</sendRoCreateOnStartLoad>
```

NO: all MOS items in the rundown are contained within the roCreate message. YES: a blank roCreate message is sent and all MOS items are added using roStoryInsert messages. Recommended setting: NO unless absolutely required.

---

#### The `<ignoreItemStatusInRoAck>` Group

```xml
<ignoreItemStatusInRoAck>YESNO</ignoreItemStatusInRoAck>
```

Specifies whether MOS Gateway ignores item status in roAck messages from the device. Valid: YES or NO. Default: NO.

---

#### The `<handlesRoListAll28>` Group

```xml
<handlesRoListAll28>YESNO</handlesRoListAll28>
```

Specifies whether MOS device expects the MOS 2.8 version of roListAll. Valid: YES or NO. Default: NO.

---

#### The `<handlesRoStorySend>` Group

```xml
<handlesRoStorySend>YESNO</handlesRoStorySend>
```

Specifies whether MOS device handles roStorySend messages. Valid: YES or NO. Default: NO.

---

#### The `<handlesRoStorySendNSMLX>` Group

```xml
<handlesRoStorySendNSMLX>YESNO</handlesRoStorySendNSMLX>
```

Specifies whether this device supports sending NSMLX via the roStorySend mosExternalMetadata payload. Valid: YES or NO. Default: NO.

---

#### The `<retryTimeout>` Group

```xml
<retryTimeout>0</retryTimeout>
```

Retry timeout in seconds for this device. Set to 0 for no retries. Valid values: 0–2147483647. Default: 0.

---

#### The `<AllowMosObjCreate>` Group

```xml
<AllowMosObjCreate>YESNO</AllowMosObjCreate>
```

Specifies whether this device supports the mosObjCreate message. Valid: YES or NO. Default: NO.

---

#### The `<removeMosObjCreate>` Group

```xml
<removeMosObjCreate>YESNO</removeMosObjCreate>
```

Specifies whether MOS Gateway removes uninitialised mosObjCreate items. Valid: YES or NO. Default: NO.

---

#### The `<DisableMosItemStatChannel>` Group

```xml
<DisableMosItemStatChannel>YESNO</DisableMosItemStatChannel>
```

Specifies whether MOS Gateway conveys roItemStat messages from this device to the Newsroom Management Server.

---

### Using the MOS Admin Application

The MOS Admin application provides a GUI that can be run locally or remotely to configure replication options for all devices connected to MOS Gateway.

**Launch:** Double-click the MOS Admin shortcut icon on the desktop.

The MOS Admin window has three tabbed options:

- **Status tab:** Read-only view of incoming MOS objects being replicated from MOS devices to the NM Server. Also logged by MOS Gateway Logger.
- **Replication tab:** Shows a list of devices (from mosconfig.xml) and their current replication configuration settings. A password dialog appears before this tab can be viewed. The password must match the one defined in the MOS configuration file and used by the MOSReplication user account in Newsroom Management.
- **Credentials tab:** Used to configure replication connection credentials (see below).

**To configure replication for a device (Replication tab):**
1. Select the device from the list.
2. Select the trigger type (manual or scheduled).
3. If scheduled, set the replication time.
4. Select Clear Queue to clear the NM queue before replication. Recommended.
5. Type the path to the device's queue in the NM system.

> Each device must have its own unique replication queue.

### Setting up Replication Connection Credentials

Beginning with version 2023.3, MOS Gateway uses a vault to securely store replication connection credentials.

**Prerequisites:**
- Edit the mosconfig.xml file, removing `<ReplicationPassword>mosrep</ReplicationPassword>` from inside the `<ncs>` tags.

**To set up replication connection credentials:**
1. Run `MosAdmin.exe`.
2. Navigate to the **Credentials pane**.
3. Enter the ReplicationUserName in the **Name** field.
4. Enter the ReplicationPassword in the **Password** field, and retype to confirm.
5. Click **Add**.

This creates a vault file in the `C:\Program Files (x86)\Avid\iNEWS MOS Gateway` location to store the replication username and password pair, which MOS Gateway uses to log into the Newsroom Management Server.

> **Note:** In v2023.7, vault credentials are set via the **MOS Admin Credentials pane** (GUI). Contrast with later versions where `vaultctl` (command-line) may be referenced. The vault file location confirms the installer path is `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`.

### Adding MOS Devices to the SYSTEM.MOS-MAP Story

The NM system must associate MOS device IDs with NM device names. This is done via the DeviceTable in the SYSTEM.MOS-MAP story.

**DeviceTable format:**
```
TABLE-START DeviceTable

MOSGATE.omnibus omnimos chan1 chan2
Ncsgateway.sony sonymos region1 region2 region3

TABLE-END
```

- Column 1: MOS ID of the device — must match the `<mos>` value in mosconfig.xml
- Column 2: NM device name (max 8 characters) — must match the `<amcp>` value in mosconfig.xml
- Columns 3+: (Optional) Available channels; displayed when a user loads a show to a MOS device

### Copying the File Certificate

MOS Replication and MOS RoStorySend services use FTP or FTPS to communicate with the NM system. A secure connection requires the file certificate from the NM Server to be copied to the MOS Gateway Server and added to the Windows trusted certificate storage.

**To copy the file certificate:**
1. Copy the file certificate to the MOS Gateway machine.
2. Double-click it.
3. Click **Install Certificate…**
4. Select **Local Machine** as Store Location.
5. Click **Next**.
6. Select **Place all certificates in the following store**.
7. Click **Browse**.
8. Select **Trusted Root Certification Authorities**.
9. Click **OK**.
10. Click **Next**.
11. Click **Finish**. The message "The import was successful" should appear.
12. (Optional) Delete the file certificate copied to the machine in step 1.

---

## 6 — Troubleshooting

### MOS Gateway Components

MOS Gateway consists of the following services (utility programs):

| Service | Function |
|---|---|
| MOS Gateway Logger | Creates log files |
| MOS Gateway License Server | Controls licensing of MOS Gateway |
| MOS Gateway Router | Routes messages between Newsroom Management Servers and MOS devices |
| MOS Gateway Replication Service | Controls replication of MOS objects from a MOS device to the NM Server |
| MOS Gateway Administration Service | Delegate between the MosAdmin utility and the MOS Gateway Router Service |
| MOS Gateway Configuration Service | Reads and writes to the MOS Gateway configuration file |
| MOS Gateway RoStorySend Service | Obtains stories from the NM Server and sends them to MOS devices |

MOS Gateway also includes:
- **MosAdmin** — displays incoming MOS objects being replicated and provides a GUI for configuring replication
- **LicenseManager** — sets and retrieves the licence string

### Where to Look for Errors

Each MOS Gateway service writes errors to one of two places:
- Log files in the Log File directory (as specified in mosconfig.xml)
- The Windows Application log of events

**To view the Application log:**
1. Click Start on the Windows Task bar.
2. Select Settings › Control Panel.
3. Open Administrative Tools.
4. Click on Event Viewer.
5. Select the Application Log item in the left-hand panel.

The Event Viewer shows events sorted from most to least recent. The Source column displays the application name (MOS Gateway services appear here). Double-clicking an event opens Event Properties/Details with a description.

### Error Categories

MOS Gateway errors fall into three categories:
- **Startup errors** — reported when MOS Gateway cannot start
- **Runtime configuration errors** — reported when MOS Gateway encounters incomplete configuration
- **Miscellaneous other errors**
