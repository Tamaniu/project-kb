---
product: MediaCentral | MOS Gateway
product-area: newsroom-management
version: "2023.3"
doc-type: scg
source: MCMOSgwy_v2023.3_SCG.pdf
source-file: source-pdfs/MCMOSgwy_v2023.3_SCG.pdf
confidentiality: public
date-added: 27/04/2026
last-updated: 27/04/2026
status: superseded
superseded-by: "2023.7"
products-affected:
  - MediaCentral | MOS Gateway
feature-tags:
  - vault-credentials
  - mos-replication
  - ftps
  - activation-indirect
  - mos-devices
  - monitor-server
  - mosconfig-xml
---

# MediaCentral | MOS Gateway — Setup and Configuration Guide (v2023.3)

Source: MCMOSgwy_v2023.3_SCG.pdf (103 pages). Document title on cover and running header: "MediaCentral | MOS Gateway Setup and Configuration Guide". Version 2023.3.

> ⚠️ **Source anomaly — document footer:** The footer throughout this document (first visible on p5) reads "MediaCentral | MOS Gateway Installation and Operations Guide • Rev A • Created 3/29/23". This conflicts with the cover page title and all running headers, which consistently state "Setup and Configuration Guide". This is a mislabelled footer carried from a different document template. The document is the SCG, not an operations guide. Creation date from footer: 29/03/2023.

---

## Version Notes

This is version 2023.3 of the MOS Gateway SCG. Key version-specific characteristics relative to later versions (2023.7, 2024.10.5):

- **OS support:** Windows Server 2016 or Windows Server 2019 only. WS2022 is not listed.
- **Hardware requirements explicitly documented** in this version (not present in 2023.7 onwards).
- **NM dependency:** "version 3.5 or later" stated as the general minimum. No specific named version dependencies for vault/subscription features are cited.
- **Vault credentials introduced in this version.** Beginning with v2023.3, MOS Gateway uses a vault to store replication connection credentials. The `<ReplicationPassword>` tag is removed from the `<ncs>` group of mosconfig.xml. Password is now entered via the MOS Admin Credentials pane. The document on p91 explicitly states: "Beginning with version 2023.3, MOS Gateway uses a vault to securely store replication connection credentials."
- **Supported MOS devices list** is broader (16 devices) and includes several devices not shown in the 2023.7 ProgID table.
- **Services screenshot** on p77 shows version 4.7.0.2.
- **Activation:** Both direct (online) and indirect (web portal, .bin file download) activation are documented with detailed screenshots.
- **Introduction chapter** (Ch1) includes MOS Control Workflow diagrams for Monitor Mode ON and Monitor Mode LOAD — not present in the 2023.7 document.
- **9-step NM Server configuration** procedure in Ch4 — more detailed than in later versions.
- **Copying the File Certificate** procedure for FTPS present (same as later versions).
- **No Restart Services Procedure** (this was added only in the 2024.10.5 SCG, per that document's revision history).

---

## Chapter 1: Introduction

### Overview

MOS Gateway is a software application that enables MediaCentral Newsroom Management Servers (running iNEWS) to communicate with MOS (Media Object Server) devices such as character generators, still stores, video servers, and other production devices.

MOS Gateway acts as a broker, translating MOS protocol messages between the Newsroom Management Server and connected MOS devices. It runs as a set of Windows services on a dedicated MOS Gateway Server.

### MOS Control Workflow

Two monitoring modes are documented:

**Monitor Mode ON:** When a user turns on the monitor server for a show, the monitor server reads the current rundown queue, builds the composite and event lists, and sends a running order (playlist) to each MOS device. The MOS device returns the status of each item. As users modify stories in the rundown, the monitor server updates the composite/event lists and sends running order modifications to MOS devices in real time.

**Monitor Mode LOAD:** Triggered by `monitor load` command on the rundown queue. Loads the running order to the MOS device without activating live monitoring. Used for pre-loading playlists before a show goes on air.

Key concepts:
- **Running order:** The list of production cue events for a show, sent to MOS devices.
- **Playlist:** The set of items loaded to a MOS device.
- **Composite list:** A list containing status information for all MOS devices connected through MOS Gateway.
- **Event list:** A list containing details for items on a specific MOS device.
- **MOS replication:** The process by which a MOS device sends Media Object Metadata (MOM) to the Newsroom Management Server database for storage.

---

## Chapter 2: Installing and Activating MOS Gateway

### System Requirements

| Component | Requirement |
|-----------|-------------|
| Operating System | Windows Server 2016 or Windows Server 2019 |
| Processor | 2 GHz or faster |
| RAM | 4 GB minimum |
| Hard disk | 10 GB minimum |
| Display | SVGA, 1024×768 resolution |
| Network | 10/100 NIC |
| NM Server version | Version 3.5 or later |

> ⚠️ **Source note:** This version document does not cite a specific VC++ Redistributable prerequisite in the system requirements table (p20), unlike later versions. Whether the dependency existed in the installer at this version is not documented in this SCG.

### Supported MOS Devices

Sixteen MOS devices are listed on p21 as supported with MOS Gateway v2023.3:

1. Autocue
2. AutoScript
3. Avid AirSPACE (CountDown)
4. Beehive
5. Brainstorm
6. Chyron Aprisa (100/250/SSX)
7. Grass Valley Group's NewsQ Pro
8. Netia Radio-Assist
9. Omnibus Columbus
10. Omnibus News Control
11. Pebble Beach Systems
12. Pinnacle FXDeko
13. Proximity Xenostore (with Pinnacle FXDeko)
14. Sony NewsBase
15. VertigoXmedia
16. vizrt Pilot

### Adding IP Addresses to the MOS Gateway Server

Before installation, add the IP addresses of all Newsroom Management Servers to the MOS Gateway Server's hosts file. This ensures MOS Gateway can communicate with the NM servers without relying on DHCP or DNS.

**To add IP addresses on the MOS Gateway Server:**

1. On the MOS Gateway Server, click Start.
2. Select Settings > Control Panel > Network Connections.
3. Right-click Local Area Connection and select Properties.
4. Select Internet Protocol (TCP/IP) and click Properties.
5. Click Advanced and select the DNS tab.
6. Add the IP addresses of all NM Servers.

Alternatively, add entries to the `C:\Windows\System32\drivers\etc\hosts` file directly. Example entry format:

```
125.1.10.10    NRCS-A    nrcs-a    #Newsroom Management Server A
125.1.10.11    NRCS-B    nrcs-b    #Newsroom Management Server B
```

### Installation

MOS Gateway is installed from the `setup.exe` installer.

**Default installation path (confirmed by installer screenshot on p27):**

```
C:\Program Files (x86)\Avid\iNEWS MOS Gateway\
```

**To install MOS Gateway:**

1. From the MOS Gateway installation package, double-click `setup.exe`.
2. Follow the on-screen prompts.
3. Accept the licence agreement.
4. Confirm the installation directory (default: `C:\Program Files (x86)\Avid\iNEWS MOS Gateway\`).
5. Click Install.
6. When the installation completes, click Finish.

### Activating MOS Gateway

MOS Gateway requires an activation licence. Two activation methods are documented.

#### Direct Activation (Online)

Used when the MOS Gateway Server has internet access.

1. Launch the MOS Gateway activation tool.
2. Enter the activation code provided with the software.
3. Click Activate. The tool contacts the Avid licence server and activates the software.

#### Indirect Activation (Offline)

Used when the MOS Gateway Server does not have internet access. Involves generating an activation request file, submitting it via a web portal on a separate internet-connected machine, and downloading a .bin licence file.

1. On the MOS Gateway Server, launch the activation tool.
2. Select the offline/indirect activation option.
3. The tool generates an activation request file.
4. Transfer the request file to an internet-connected machine.
5. Navigate to the Avid activation web portal (URL shown in tool).
6. Upload the activation request file to the portal.
7. Download the resulting .bin licence file.
8. Transfer the .bin file back to the MOS Gateway Server.
9. In the activation tool, browse to and select the .bin file.
10. Click Activate to apply the licence.

The indirect activation section (pp34–39) includes detailed screenshots of the web portal and .bin file download process.

---

## Chapter 3: Upgrading MOS Gateway

### Upgrade Procedure

Before upgrading, print or save a copy of the current mosconfig.xml configuration file. This preserves site-specific `<mosDevice>` configuration which must be re-applied after the upgrade.

**To print the MOS configuration file:**

1. Open Notepad.
2. Select File > Open.
3. Navigate to the configuration file at:
   ```
   C:\Program Files (x86)\Avid\iNEWS MOS Gateway
   ```
4. Print using File > Print or Ctrl+P.

**To uninstall MOS Gateway:**

Use the Add/Remove Programs feature in the Windows Control Panel.

After uninstalling all previous versions, upgrade by installing the latest version per the procedure in Chapter 2. After installation, edit the new default mosconfig.xml file to add the site's `<mosDevice>` configuration from the saved copy. See the MOS Gateway Configuration File section in Chapter 5 for details.

---

## Chapter 4: Setting up the Newsroom Management Server

After MOS Gateway is installed, the Newsroom Management Server (iNEWS) must be configured to use MOS Gateway. This chapter assumes a fully functioning network, operational NM Servers, and that the person performing configuration has NM administration experience (including use of the `ed` UNIX line editor).

### Configuration Summary

The NM Server configuration procedure consists of nine steps. Steps 8 and 9 are optional.

1. Create a monitor server for each show
2. Create composite and event list queues
3. Set up queue and story forms
4. Edit the SYSTEM.MOS-MAP story
5. Assign forms to queues
6. Create an entry in the SYSTEM.MAP story
7. Add IP addresses for the MOS Gateway
8. Update the NM System Dictionaries (Optional)
9. Configure NM for MOS Replication (Optional)

### Step 1: Creating a Monitor Server for Each Show

A monitor server is a utility program that checks a show's event requests for errors, creates composite and event lists, and sends playlists to MOS Gateway.

Each monitor server must be assigned a device number and a mailbox number. Device numbers are typically 3-digit numbers in the range reserved for server programs (e.g. 201–300). The mailbox number must be assigned to both the monitor server and the show's rundown queue.

**To create and configure a monitor server:**

1. Check `/site/config` and choose the next available device number in the 3-digit server program range (e.g. 201–300).

2. Verify the number is available as a mailbox by typing at the console:
   ```
   list mailbox=266 c
   ```
   If the response shows only the column header with no device data beneath it, the mailbox is free.

3. Add the monitor server to `/site/config` on all NM Servers using the `ed` line editor:

   a. At the console, select all NM Servers.
   b. Type `ed /site/config`
   c. Add the device number to the `servers` line in the host definition:
      ```
      servers 261 263 265 267
      ```
   d. Add a configuration line for the monitor server:
      ```
      server <device#> <type> <mailbox> <device name>
      ```
      Example configuration lines:
      ```
      server 264 monitor 264 - ;monitor server
      server 265 monitor 265 - ;monitor server
      server 266 monitor 266 - ;monitor server
      server 267 monitor 267 - ;monitor server
      ```
      Text after semicolons (`;`) are optional comments.
   e. Save by typing `w` (lowercase only — uppercase W causes errors).
   f. Exit by typing `q`.

4. (Optional) Test configuration changes per the NM Setup Configuration Guide.

**To reconfigure the system (incorporate the new monitor server):**

1. Select the master computer at the console.
2. Type `su` and enter the superuser password.
3. Take the system offline: `NRCS-A$ offline`
4. Configure the system: `configure`
5. Bring back online: `NRCS-A$ online`
6. After the `System being configured` message, exit superuser mode (Ctrl+D).

**To assign the mailbox to the rundown queue:**

1. Log in to an iNEWS Workstation as system administrator.
2. Navigate to the rundown queue (e.g. SHOWS.6PM.RUNDOWN).
3. Right-click on the queue and select Properties.
4. On the Queue Properties dialog, click the Maintain tab.
5. Select the Standard radio button in the Mailbox section.
6. Type the mailbox number (e.g. `267`).
7. Click OK.

**Using the `list` command to view assigned mailboxes:**

To see all monitor server mailbox assignments:
```
list c monitor
```
Output shows DEV, DEVICE_TYPE, COMPUTER, CCU, PRINTER, SPEED, OPTIONS, DEVNAME columns. Mailbox numbers appear in the PRINTER column prefixed with `N`.

To check a specific mailbox number:
```
list mailbox=267 c
```

To list all queues using a specific mailbox:
```
list mailbox=267 d
```

### Step 2: Creating Composite and Event List Queues

The monitor server builds composite and event lists for each show. These lists must be stored in queues that are created in Newsroom Management and mapped to the monitor server.

- **Composite list queue:** Contains status information for all MOS devices connected through MOS Gateway (e.g. `SHOWS.6PM.COMPOSITE`).
- **Event list queue:** Contains details for items on a specific MOS device; the queue path is a combination of the event list directory and the device manager's name (e.g. `SHOWS.6PM.CG1`).

**To create and configure composite and event list queues:**

1. At an iNEWS Workstation, log in as system administrator.
2. Navigate to the directory where the queue will be created.
3. Click Tools > New Queue, or right-click the folder and select New Queue.
4. Type the queue name (e.g. `COMPOSITE` or `CG1`).
5. Press Enter.
6. Open the queue's properties (right-click > Properties).
7. On the User Interface tab, set Preview Lines to the desired number.
8. Click OK.
9. On the User Interface tab, remove the Inverted database trait and apply the Refresh trait (uncheck Inverted, check Refresh).
10. Assign a write security group to the composite and event list queues so that only the monitor server can modify them. Restrict write access to superusers.

### Step 3: Setting Up Queue and Story Forms

Add MOS Gateway fields to existing rundown queue and story forms. These fields must exist in both the queue form and the story form.

| Field Type | Description |
|------------|-------------|
| EVENT-STATUS | Displays availability and play status of a Command or MOS event as reported by the production device (e.g. OFFLINE, CUED, PLAYING, STOPPED). |
| ITEM-CHANNEL | Required to allow changing of the channel on which primary events play. Not applicable to production cues. Used with Command for video-ID channel management — if missing, any story update causes Command to recue to the default channel. |
| MOS-ACTIVE | Write-protected field required for the Story Form to accept MOS events. Content is created by the software when MOS events are created. May be cleared if the user selects Delete Machine Control from the right-click menu. |
| MOS-DEVICE | Required to display the AMCPID of the MOS device. When the monitor server is on, the status of the MOS item sent to the identified MOS device is displayed in the STATUS field of the rundown, even if the device is not the primary one listed in SYSTEM.MAP. |
| MOS-DURATION | Editable field for duration information from MOS events. Used in calculations for CUME-TIME, BACK-TIME, or TOTAL-TIME fields. User-entered values take precedence; deleting them reverts to MOS-supplied duration. Used only when RUNS-TIME field is also present. |
| MOS-TITLE | Write-protected field for display of descriptive text associated with MOS or CAP events. |
| MOS-OBJID | Write-protected field that captures the `<mosobjid>` tag from MOS communication. |
| RUNS-TIME | Displays the sum of all `runs=` times in a story's production cues plus the MOS-DURATION field contents. Accepts user-entered times directly; user entries appear in TOTAL-TIME calculations but not in text timing clock calculations. Keyword defaults to `RUNS` (not case-sensitive); can be redefined via `W_RUNS` token in `/site/dict/words`. |

**Calculating Duration in Time Fields:**

The RUNS-TIME field displays the sum of MOS-DURATION plus all `runs=` entries from the Instruction panel. TOTAL-TIME is the sum of RUNS-TIME, AUDIO-TIME, and TAPE-TIME. When both MOS-DURATION and RUNS-TIME are present in the Story Form panel, RUNS-TIME shows the calculated sum of MOS-DURATION plus all Runs times from the Instruction panel.

Note on time formats: `115` (without a colon) is interpreted as 115 seconds (1:55), not 1:15.

### Step 4: Editing the SYSTEM.MOS-MAP Story

The `SYSTEM.MOS-MAP` story contains a DeviceTable with two columns:

1. **First column:** The MOS device's mosID — must match the `<mos>` value in mosconfig.xml on the MOS Gateway Server.
2. **Second column:** The Newsroom Management device name associated with the mosID — must match the `<amcp>` value in mosconfig.xml.

Example SYSTEM.MOS-MAP story:

```
TABLE-START DeviceTable
Mos.omnibus.co.uk    OmniMOS
TABLE-END
```

If the `SYSTEM.MOS-MAP` story does not exist, it must be created as the first story in the MOS-Map queue in the System directory of NM.

**Controlling time information display:**

To block time information from all MOS devices:
```
ReplaceTime=NO
```
(Place this line before the start of the DeviceTable.)

To exclude time information for a single device while allowing it for others:
1. Set `ReplaceTime=YES`.
2. Append `<noDur>` to the line for the specific device in the DeviceTable.

> ⚠️ The `<noDur>` tag must not be used at sites with workstations running NM earlier than version 1.5.1. Earlier versions of NM do not recognise the tag as a command to suppress duration display; instead, they identify it as a channel for the MOS device. Users on iNEWS Workstations running NM earlier than 1.5.1 may see `<noDur>` appear in the channel list when loading the monitor server.

Example SYSTEM.MOS-MAP story with `<noDur>`:

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

### Step 5: Assigning Forms to Queues

After creating composite and event list queues, assign forms containing MOS Gateway fields to them.

Example:
- Assign `mcs-composite` to the Queue form and Story form of `SHOWS.6PM.COMPOSITE`.
- Assign the character generator event list form to `SHOWS.6PM.CG1`.

Default forms are located in the `SYSTEM.FORMS` directory.

**To assign a form to a queue:**

1. At an iNEWS Workstation, navigate to the queue in the Directory panel.
2. Right-click and select Properties.
3. In the Queue Properties dialog, click the Forms tab.
4. Use the Queue drop-down to select the queue form.
5. Use the Story drop-down to select the story form.
6. If updating an existing queue, check "Update existing stories to use story form".
7. Click OK.

Users should log off and log back on to see the new queue/story form settings.

### Step 6: Creating an Entry in the SYSTEM.MAP Story

The SYSTEM.MAP story is the first story in the `SYSTEM.MAP` queue. It is edited like any other NM database story but access is typically restricted to system administrators.

Each show that uses MOS Gateway or Command must have a separate entry in the map story. The entry specifies the show's rundown queue, composite list queue, event list directory, groups of users who can monitor the show, and the monitor server's quit time.

**Entry header parameters (must be in a single paragraph, maximum 255 characters):**

| Parameter | Definition |
|-----------|------------|
| Rundown Queue | Full pathname of the show's rundown queue. |
| Event List Directory | (Optional) Directory in which event lists are stored. Use the same directory as the rundown. Enter a hyphen if not used. |
| Composite List Queue | (Optional) Queue for the show's composite list. Recommended to be in the same directory as the rundown. Enter a hyphen if not used. |
| Group of Users | (Optional) Security group restricting who can monitor the show. Enter a hyphen to allow all users. |
| Quit Time | Time for the monitor server to turn itself off. Enter as 24-hour time (e.g. `1915` for 7:15 PM) or as a duration prefixed with `D` (e.g. `D130` for 1 hour 30 minutes). |

Following the entry header, each show's entry must include a device list identifying production devices. Format for the production device name:

```
<amcp>@<hostname>
```

Where `<amcp>` must match the `<amcp>` value in mosconfig.xml, and `<hostname>` must match the hostname of the MOS Gateway Server as identified in the `/etc/hosts` file on the NM Server.

Example SYSTEM.MAP story with three shows:

```
;RUNDOWN               EVENT DIR           COMP DIR             GROUP    (OFF TIME)
;DEVICE                DEVNAME UPDATE MCT TEMPLATE              (MSG DIR)
;
SHOW.10P.RUNDOWN       SHOW.10P  SHOW.10P.COMPOSITE  -  130
  ss  ss@bcssvr-1,bcssvr-2   UPDATE  bcs-bcw
  cg  cg@bcssvr-1,bcssvr-2   UPDATE  bcs-bcw  C:NAB:300 499
  mos sony@mosgwy            UPDATE  bcs-bcw  -
;
SHOW.6P.RUNDOWN        SHOW.6P   SHOW.6P.COMPOSITE   -  2100
  ss  ss@bcssvr-1,bcssvr-2   UPDATE  bcs-bcw
  cg  cg@bcssvr-1,bcssvr-2   UPDATE  bcs-bcw  C:NAB:500 699
  mos sony@mosgwy            UPDATE  bcs-bcw  -
```

**Parameters for MOS Devices in the device list:**

| Parameter | Definition |
|-----------|------------|
| None at present | Enter a hyphen (-) in this field. |

**After creating or modifying the map story entry**, monitor the show to verify entries are functioning correctly. The monitor server reads the map story only when the user turns it on; changes made while a show is monitored do not take effect until the next monitoring session.

### Step 7: Adding IP Addresses for the MOS Gateway

To enable the NM monitor server to communicate with MOS Gateway, the IP address of the MOS Gateway Server must be added to all Newsroom Management Servers' `/etc/hosts` files.

> Use static IP addresses in `/etc/hosts`. This avoids dependence on DHCP or DNS servers. For maximum reliability, install MOS Gateway on the Mirror Net of the NM hosts. Always back up `/etc/hosts` before editing.

**To add IP addresses to all NM Servers' `/etc/hosts` files:**

1. Select all servers at the console.
2. Type `su` and enter the superuser password.
3. Type `ed /etc/hosts`.
4. Type `a` (append mode) and press Enter.
5. Enter IP addresses, computer names, and comments:
   ```
   125.1.10.50    MOSGWY  mosgwy  #MOS Gateway machine
   125.1.10.60    MG1     mg1     #MOS Gateway Server1 (backup)
   125.1.10.70    MG2     mg2     #MOS Gateway Server2
   ```
6. Type `.` (period) to end append mode.
7. (Optional) Type `p` to print and verify.
8. Type `w` (lowercase) to save.
9. Type `q` to quit.

### Step 8: Updating the NM System Dictionaries (Optional)

Machine Control System (MCS) dictionary files in NM can be modified to customise the appearance of status indicators from various devices. Dictionary files are located in `/site/dict`.

For example, if an Omnibus device shows "OnAir" but the NM rundown shows "Play", the MCS dictionary can be modified so that both show "OnAir".

**To edit the `/site/dict/mcs` dictionary file:**

1. Select all servers at the console.
2. Type `ed /site/dict/mcs`.
3. Navigate to the term to change (e.g. `PLAY`): type `/PLAY`
4. Substitute the new term for the second occurrence: `s?/PLAY?/OnAir`
5. Save by typing `w` (lowercase only).
6. Exit by typing `q`.

**To update dictionaries across the system (required after dictionary changes):**

1. Select all servers.
2. Type `su` and enter the superuser password.
3. Take the system offline: type `offline`. Broadcast a warning to logged-in users.
4. At the specified time, select one server and type `list s` to check who is still logged in.
5. Select all servers. Type `logout all` to log out all users.
6. Type `list s` again to check for connect session users. Notify them separately.

   > ⚠️ If a user is in a connect session when the system shuts down, their workstation stops, the session is disconnected, and any unsaved work is lost. Ensure all connect session users have logged out before continuing.

7. Type `stop all` to stop all servers and monitor servers.
8. Type `maketab -i` to build command and message tables and translate dictionaries.
9. Type `makemontab -i` to translate dictionaries used by monitor servers.
10. Type `restart all` to start all server programs.
11. Type `online` to bring the NM system back online.

### Step 9: Configuring NM for MOS Replication (Optional)

MOS replication requires configuration on the NM Server that includes:
- Creating an NM user account for MOS replication.
- Creating a write group for MOS replication.
- Creating device-specific queues to store replicated MOS items.
- Ensuring correct database traits and forms are assigned to those queues.
- Ensuring the MOS replication user account has write permissions to all device-specific replication queues; all other NM users should have read-only access.

Additional configuration required for MOS replication on the MOS Gateway Server is covered in Chapter 5 (MosAdmin Application and Vault Credentials setup).

**To create an NM user account for MOS replication:**

1. Log in to an iNEWS Workstation using an account capable of creating new users.
2. Select Tools > Options > Users.
3. Click New User.
4. In the User ID field, enter the login name (e.g. `MosReplication`).
5. Click Password to set the password.

   > ⚠️ The Force Change option for passwords is selected by default for all new users. Because MOS replication is an automated process, this option must be removed after creating the account.

6. Ensure Kill All Stories is checked in Queue Features.
7. Click Add.
8. Reopen the user account preferences and uncheck the Force Change password option.

The User ID and password must match exactly the values entered in the `<ncs>` group of mosconfig.xml (`<ReplicationUsername>`) and in the MOS Admin Credentials pane (vault password). See the `<ncs>` Group section in Chapter 5.

**To create a write group for MOS replication:**

1. Choose a name (e.g. `mosreplication`).
2. Verify it is not already in use: `NRCS-A# gtraits list mosreplication`
3. Use `gtraits add` to add the group name to the system.
4. In the iNEWS Workstation, navigate to the System folder > Groups queue.
5. Create a new story. In the Story Text panel, type:
   ```
   group mosreplication
   mosreplication
   ```
6. Save the story (File > Save Story).

**To create device-specific queues for MOS replication:**

1. Log in as system administrator.
2. Navigate to the folder for replication queues. Create it if it does not exist (Tools > New Folder).
3. Create a new queue (Tools > New Queue or right-click > New Queue).
4. Name the queue (e.g. `VIDEO`).
5. Press Enter.

**To configure MOS replication queue properties:**

1. Right-click the queue and select Properties.
2. On the Forms tab, ensure the Queue and Story forms are set to `MOSREPLICATION`.

   > The MOSREPLICATION form is in the `SYSTEM.FORMS.M` directory. It contains three stories defining the format for MOS item replication. If it does not exist, the NM administrator must create it.

3. On the Groups tab, set the Write Group to `mosreplication`. Leave Read and Notify groups as `!<none>`.
4. On the Maintain tab, ensure Update is selected (required for rxnet to work correctly).
5. On the User Interface tab, ensure Refresh is selected.
6. Click OK.

---

## Chapter 5: Configuring MOS Gateway

MOS Gateway must be configured to communicate with MOS devices. Configuration requires changes on both the NM Server and the MOS Gateway Server.

### MOS Gateway Configuration File

MOS Gateway is configured via an XML file named `mosconfig.xml`. This file is installed on the MOS Gateway Server.

**Default installation location (confirmed by installer screenshot p27, upgrade procedure p41, and vault file creation note p91):**

```
C:\Program Files (x86)\Avid\iNEWS MOS Gateway
```

> ⚠️ **Source anomaly — mosconfig.xml path inconsistency in Ch5:** The introductory text on p76 states the default location as `C:\Program Files\Avid\MOSGateway`. The edit procedure step 3 on the same page gives the path as `C:\Program Files (x86)\Avid\iNEWS MOSGateway` (note: also missing the space before "MOS"). The installer screenshot (p27), upgrade procedure (p41), and vault file creation note (p91) all consistently give `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`. The p76 introductory text default location is incorrect; the authoritative path confirmed by three independent references in this document is `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`.

The configuration file is a Unicode XML file. Use Windows Notepad (`notepad.exe`) to edit it, as Notepad supports Unicode files. Always make a backup copy before editing.

While MOS Gateway is running, the configuration file is locked by MosConfigService. Stop MOS Gateway before editing the file.

### Stopping and Starting MOS Gateway

MOS Gateway consists of the following services (stop and start in this order):

**Start order:**
1. MOSConfigService
2. MOS Gateway Logger
3. MOS Gateway License Server
4. MOSReplicationService
5. MOSRouterService
6. MOSAdminService

**Stop order:** Reversed — MOSAdminService first, MOSConfigService last.

Services screenshot on p77 shows version **4.7.0.2** for all services.

**To stop and restart services:**

1. On the MOS Gateway Server, click Start.
2. Select Settings > Control Panel > Administrative Tools > Services.
3. Select **MOSConfigService**.
4. Select Action > Stop. This stops all MOS Gateway services in the correct order.
5. To restart, select **MOSAdminService**, then Action > Start. This starts all services in the correct order.
6. Click Close.

### Configuration File Components Explained

Lines in the mosconfig.xml file are organised in groups. Each group can or should be modified for the site. The `<listDevices>` section contains one `<mosDevice>` group per connected MOS device. Information to modify is shown in bold in the source document. Remove all unused `<mosDevice>` groups to reduce MOS Gateway's workload.

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

- `DIRECTORY_GOES_HERE`: Directory where MOS Gateway saves log files.
- `COUNT_GOES_HERE`: Maximum number of log files before recycling.
- `SIZE_GOES_HERE`: Maximum size per log file in bytes (e.g. `1000000` = ~1 MB). Ensure sufficient disk space (e.g. 100 files × 1 MB = 100 MB free required).
- `WINDEBUGTRACE_YESNO`: Set to `YES` to send logs to the Win32 debug subsystem (for real-time debug display).
- `SOCKET_ONOFF`: Set to `ON` for socket-level logging (logs incoming socket messages in network byte order). Performance impact — do not leave enabled permanently. Socket log filename format: `[mosID][space][LM|UR][space][NCSInit|MOSInit].bin` where LM = Media Object Metadata port, UR = Running Order port, NCSInit = MOS Gateway initiated, MOSInit = MOS device initiated.
- `LOGGING_YESNO`: Set to `YES` to enable generic logging.
- `LOGIN_LEVEL_GOES_HERE`: Logging level bitmask. Default: `0xff` (all messages). Specific values:
  - `0x10` — XML messages to MOS devices
  - `0x20` — XML messages from MOS devices
  - `0x40` — FTP communication details
  - `0x80` — error messages from replication services
  - `0x03` — errors, warnings, and 1-liner information (enabled by default)

#### The `<tcpPorts>` Group

```xml
<tcpPorts>
  <out_upper>MOS_OUT_UPPER_PORT_GOES_HERE</out_upper>
  <out_lower>MOS_OUT_LOWER_PORT_GOES_HERE</out_lower>
  <in_upper>MOS_IN_UPPER_PORT_GOES_HERE</in_upper>
  <in_lower>MOS_IN_LOWER_PORT_GOES_HERE</in_lower>
</tcpPorts>
```

Recommended port values (same for all devices):

| Tag | Description | Recommended Value |
|-----|-------------|-------------------|
| `out_upper` | Port on which MOS Gateway sends running order MOS commands | 10541 |
| `out_lower` | Port on which MOS Gateway sends media object metadata commands | 10540 |
| `in_upper` | Port on which MOS Gateway receives running order MOS commands | 10541 |
| `in_lower` | Port on which MOS Gateway receives media object metadata commands | 10540 |

Running order connections = upper ports. Media object metadata connections = lower ports. Port settings apply to all MOS devices connected to MOS Gateway; all MOS devices must use these ports.

#### The `<ncs>` Group

**Version 2023.3 — Vault Credentials — `<ReplicationPassword>` removed from template.**

```xml
<ncs>
  <ncsID>NCS_ID_GOES_HERE</ncsID>
  <host>HOST_GOES_HERE</host>
  <AllowReplication>ALLOW_YESNO</AllowReplication>
  <ReplicationUsername>USER_GOES_HERE</ReplicationUsername>
  <AllowMosItemReplace>ALLOW_MOSITEMREPLACE_YESNO</AllowMosItemReplace>
  <UseFTPS>USE_FTPS_YESNO</UseFTPS>
  <SystemFormsToken>TOKEN_GOES_HERE</SystemFormsToken>
  <Unicode>YES</Unicode>
</ncs>
```

Note: The `<ReplicationPassword>` tag that existed in earlier versions has been removed from this template. Beginning with version 2023.3, the replication password is stored in a vault and configured via the MOS Admin Credentials pane. See "Setting up Replication Connection Credentials" below.

Field definitions:

- `NCS_ID_GOES_HERE`: The NCS ID of the NM Server to which devices replicate MOS objects.
- `HOST_GOES_HERE`: The network host name of the NM Server. Must be reachable (pingable) from the MOS Gateway Server.
- `ALLOW_YESNO`: Set to `YES` if devices are to replicate data to the NM system. Default if line is absent: `YES`. Set to `NO` to prevent replication and drop MOS objects at MOS Gateway.
- `USER_GOES_HERE`: The User ID that the replication service uses to replicate MOS objects to the NM Server. This user must exist on the NM system with write permissions to the replication queues.
- `ALLOW_MOSITEMREPLACE_YESNO`: Set to `YES` to allow mosItemReplace. Default: `NO`.
- `USE_FTPS_YESNO`: Set to `YES` for FTPS communication with the NM system. Set to `NO` for FTP. Default: `YES`.
- `TOKEN_GOES_HERE`: The path to the queue in the NM Server database from which MOS Gateway obtains a form for story creation. Used in replication service. Default: `SYSTEM.FORMS`.
- `Unicode>YES`: Specifies whether MOS Gateway is connecting to a Unicode iNEWS Server.

#### The `<names>` Group

```xml
<names>
  <mos>MOS_ID_GOES_HERE</mos>
  <amcp>iNEWS_DEVICE_GOES_HERE</amcp>
  <network>NETWORK_NAME_GOES_HERE</network>
</names>
```

- `MOS_ID_GOES_HERE`: The MOS ID reported by the MOS device (from the vendor's ActiveX control). Identifies the device to MOS Gateway and is used in MOS items in NM rundowns.
- `iNEWS_DEVICE_GOES_HERE`: The NM device name for the MOS device. Same name as in the SYSTEM.MOS-MAP story. Must be 8 characters or fewer.
- `NETWORK_NAME_GOES_HERE`: The network (host) name of the MOS device. Provided by the network administrator.

#### The `<roSlugMaps>` Group

```xml
<roSlugMaps>
  <roSlugMap>
    <iNewsRunningOrderName>INEWS_RO_NAME</iNewsRunningOrderName>
    <MOSroSlug>MOS_RO_NAME</MOSroSlug>
  </roSlugMap>
</roSlugMaps>
```

Allows the running order name sent to a MOS device to differ from the NM running order name. If absent or a particular name is missing, MOS Gateway uses the NM Server name followed by a forward slash and the full queue name as the default (e.g. `NRCS/SHOW.11PM.RUNDOWN`).

#### The `<handlesEmptyStories>` Group

```xml
<handlesEmptyStories>YESNO</handlesEmptyStories>
```

Set to `YES` if the MOS device handles stories with no items the same way it handles stories that have items. Some MOS devices do not handle empty stories per MOS Protocol specification; for these, set to `NO`. Default (if absent): `YES`.

Reference table for known devices:

| MOS Device | `handlesEmptyStories` Setting |
|------------|-------------------------------|
| Sony® MAV Server | No |
| OmniBus™ Columbus | Yes |

#### The `<handlesRoStoryMoveMultiple>` Group

```xml
<handlesRoStoryMoveMultiple>YESNO</handlesRoStoryMoveMultiple>
```

Set to `YES` if the MOS device supports the `roStoryMoveMultiple` MOS command. When `YES`, MOS Gateway uses this command to move stories in the running order. Default: `YES`.

#### The `<handlesRoItemLevelCommands>` Group

```xml
<handlesRoItemLevelCommands>YESNO</handlesRoItemLevelCommands>
```

Set to `YES` if the MOS device supports `roItemInsert`, `roItemDelete`, and `roItemReplace` MOS commands. When `YES`, MOS Gateway uses these commands to move items in stories. Default: `YES`.

#### The `<prependPageNumber>` Group

```xml
<prependPageNumber>YESNO</prependPageNumber>
```

Set to `YES` if the NM story page number is to be prepended to the story title (slug).

#### The `<prependSeparator>` Group

```xml
<prependSeparator>-</prependSeparator>
```

The character used to separate the story title and the page number. Default: hyphen (`-`).

#### The `<prependStringForEmptyPageNumber>` Group

```xml
<prependStringForEmptyPageNumber>XXX</prependStringForEmptyPageNumber>
```

The string used in place of an empty page number.

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

Maps device-specific status strings to the ten NM event status codes. Multiple strings can map to the same code by duplicating the relevant line. Refer to the manufacturer's documentation for the device-specific status strings. Example:

```xml
<statusCued>READY</statusCued>
<statusCued>ON LINE</statusCued>
```

| Placeholder | NM Status Code Meaning |
|-------------|------------------------|
| `UNKNOWN_STR` | Device cannot determine presence/absence of MOS item media |
| `UNAVL_STR` | MOS item media is absent |
| `AVAIL_STR` | MOS item media is present and ready to play |
| `INCOMP_STR` | MOS item media is partially present (e.g. transfer in progress) |
| `CUEING_STR` | Request to cue has been received |
| `CUED_STR` | MOS item media has been cued |
| `P_STR` | Request to play has been received |
| `PLAYING_STR` | MOS item media is playing or on-air |
| `PAUSED_STR` | MOS item media is paused |
| `STOP_STR` | Play of MOS item media has been halted |

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

Maps NM channel names (max 7 characters; also inserted in SYSTEM.MOS-MAP table) to MOS device channel names. A MOS device may have one or more channels. Channel names within iNEWS Workstation are limited to seven characters; this limit does not apply to all MOS devices, so mapping may be required.

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

The first four settings (`trigger`, `replicationTime`, `clearQueue`, `path`) are configured via the MosAdmin application and do not require manual editing. See "Using the MosAdmin Application" below.

The MOS item ProgID values are optional and must be entered manually if required (users need them to right-click production cues or story forms to open ActiveX controls). If manually edited, MOS Gateway services must be stopped and restarted after changes.

- `TRIGGER_TYPE`: `MANUAL` or `SCHEDULED`.
- `REP_TIME`: Time of day for scheduled replication (only used when trigger is SCHEDULED).
- `TRUE_FALSE`: `TRUE` to clear all stories from the replication queue before replication; `FALSE` to leave existing stories.
- `PATH_TO_QUEUE`: The device's queue in the NM database to which Media Object Metadata is replicated. Each device must have a unique queue.

**ProgID reference table (most common values):**

| Device | Type | ProgID |
|--------|------|--------|
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

#### The `<sendRoCreateOnStartLoad>` Group

```xml
<sendRoCreateOnStartLoad>YESNO</sendRoCreateOnStartLoad>
```

`NO`: All MOS items in the rundown are contained within the roCreate message. `YES`: A blank roCreate message is sent, and all MOS items are added using roStoryInsert messages.

#### The `<ignoreItemStatusInRoAck>` Group

```xml
<ignoreItemStatusInRoAck>YESNO</ignoreItemStatusInRoAck>
```

Specifies whether MOS Gateway ignores item status in roAck messages from the device. Valid settings: `YES` or `NO`. Default: `NO`.

#### The `<handlesRoListAll28>` Group

```xml
<handlesRoListAll28>YESNO</handlesRoListAll28>
```

Specifies whether the MOS device expects the MOS 2.8 version of roListAll. Valid settings: `YES` or `NO`. Default: `NO`.

#### The `<handlesRoStorySend>` Group

```xml
<handlesRoStorySend>YESNO</handlesRoStorySend>
```

Specifies whether the MOS device handles roStorySend messages. Valid settings: `YES` or `NO`. Default: `NO`.

#### The `<handlesRoStorySendNSMLX>` Group

```xml
<handlesRoStorySendNSMLX>YESNO</handlesRoStorySendNSMLX>
```

Specifies whether the device supports sending NSMLX via the roStorySend mosExternalMetadata payload. Valid settings: `YES` or `NO`. Default: `NO`.

#### The `<retryTimeout>` Group

```xml
<retryTimeout>0</retryTimeout>
```

Retry timeout in seconds. Set to `0` to disable retries. Valid range: 0–214748647. Default: `0`.

#### The `<AllowMosObjCreate>` Group

```xml
<AllowMosObjCreate>YESNO</AllowMosObjCreate>
```

Specifies whether the device supports mosObjCreate messages. Valid settings: `YES` or `NO`. Default: `NO`.

#### The `<removeMosObjCreate>` Group

```xml
<removeMosObjCreate>YESNO</removeMosObjCreate>
```

Specifies whether MOS Gateway removes uninitialised mosObjCreate items. Valid settings: `YES` or `NO`. Default: `NO`.

#### The `<DisableMosItemStatChannel>` Group

```xml
<DisableMosItemStatChannel>YESNO</DisableMosItemStatChannel>
```

Specifies whether MOS Gateway conveys roItemStat messages from this device to the Newsroom Management Server.

### Using the MosAdmin Application

The MosAdmin application is a GUI that can be run locally or remotely to configure replication options for all devices connected to MOS Gateway.

**To launch MosAdmin:** Double-click the MosAdmin shortcut icon on the desktop.

The MosAdmin window has three tabs:
- **Status:** Read-only; shows incoming MOS objects being replicated from the MOS device to the NM Server. Information is also logged to text files by the MOS Gateway Logger.
- **Replication:** Shows a list of devices from mosconfig.xml and their current replication settings. Before this tab can be viewed, a password prompt appears — enter the password that matches the one in mosconfig.xml and used by the MOSReplication user account in NM.
- **Credentials:** For entering and storing vault credentials (see below).

The Replication tab allows:
- Setting trigger type: manual or scheduled.
- Setting replication time (for scheduled trigger).
- Setting Clear Queue (clears stories from NM queue before replication — recommended).
- Setting the path to the device's replication queue in the NM database.

**To configure replication for a device:**

1. Select the device from the Replication tab list.
2. Select trigger type (manual or scheduled).
3. If scheduled, set a replication time.
4. Select the Clear Queue check box (recommended).
5. Type the path to the device's queue in the NM database.

### Setting up Replication Connection Credentials

> Beginning with version 2023.3, MOS Gateway uses a vault to securely store replication connection credentials. — Source, p91.

**Migration from earlier versions:** Edit mosconfig.xml to remove `<ReplicationPassword>mosrep</ReplicationPassword>` from inside the `<ncs>` tags. Then set up credentials via MOS Admin.

**To set up replication connection credentials:**

1. Run MosAdmin.exe.
2. Navigate to the Credentials pane.
3. Enter the ReplicationUserName in the Name field.
4. Enter the ReplicationPassword in the Password field, and retype to confirm.
5. Click Add.

This creates a vault file in `C:\Program Files (x86)\Avid\iNEWS MOS Gateway` to store the replication username and password pair. MOS Gateway uses this vault file to log in to the Newsroom Management Server.

### Adding MOS Devices to the SYSTEM.MOS-MAP Story

The NM system must associate the MOS ID of a MOS device with an NM device name so that machine control commands in a story can be associated with the correct device.

The NM administrator creates a DeviceTable in the `SYSTEM.MOS-MAP` story (first story in the MOS-Map queue in the System directory):

```
TABLE-START DeviceTable
MOSGATE.omnibus    omnimos    chan1    chan2
Ncsgateway.sony    sonymos    region1  region2  region3
TABLE-END
```

- Column 1: MOS ID of the MOS device — must match the `<mos>` tag in mosconfig.xml.
- Column 2: NM device name (max 8 characters) — must match the `<amcp>` tag in mosconfig.xml.
- Columns 3+: Available channels for the device (optional; if specified, iNEWS Workstation presents these channel options when loading a show).

### Copying the File Certificate

MOS Replication and MOS RoStorySend services use FTP or FTPS to communicate with the NM system. FTPS requires a file certificate generated as a result of NM Server configuration (see Ch4). The certificate must be copied to the MOS Gateway Server and added to the Windows Trusted Certificate Store.

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
11. Click Finish. Verify the message "The import was successful" is displayed.
12. (Optional) Delete the certificate file copied to the machine.

---

## Chapter 6: Troubleshooting

### MOS Gateway Components

MOS Gateway consists of the following services (utility programs):

| Component | Function |
|-----------|----------|
| MOS Gateway Logger | Creates log files |
| MOS Gateway License Server | Controls MOS Gateway licensing |
| MOS Gateway Router | Routes messages between NM Servers and MOS devices |
| MOS Gateway Replication Service | Controls replication of MOS objects from a MOS device to the NM Server |
| MOS Gateway Administration Service | Delegate between the MosAdmin utility and the MOS Gateway Router Service |
| MOS Gateway Configuration Service | Reads and writes to the MOS Gateway configuration file |
| MOS Gateway RoStorySend Service | Obtains stories from the NM Server and sends them to MOS devices |

Additional utilities:
- `MosAdmin` — displays incoming MOS objects being replicated and provides a GUI for configuring replication.
- `LicenseManager` — sets and retrieves the licence string.

### Where to Look for Errors

Each MOS Gateway service writes errors to:
- Log files in the log file directory (as specified in mosconfig.xml `<logging>` group).
- The Windows Application log of events (Event Viewer).

Log files are text files openable with Notepad. In Event Viewer, navigate to Windows Logs > Application. The Source column shows the MOS Gateway service that generated the event. Double-click an event for the full description.

### Error Categories

MOS Gateway errors fall into three categories:
- **Startup errors:** Reported when MOS Gateway cannot start.
- **Runtime configuration errors:** Reported when MOS Gateway encounters an incomplete configuration.
- **Miscellaneous other errors.**

Error messages are listed alphabetically in Appendix A of the source document, with category, source service, and remediation actions. Some resolutions require stopping and restarting MOS Gateway services.

---

## Source Anomaly Summary

Two source anomalies are documented in this file:

1. **Mislabelled footer (p5 et seq.):** Footer throughout reads "MediaCentral | MOS Gateway Installation and Operations Guide • Rev A • Created 3/29/23". The document is the SCG (Setup and Configuration Guide), not the Installation and Operations Guide. The creation date 29/03/2023 is taken from this footer and is treated as the document date.

2. **mosconfig.xml path inconsistency in Ch5 (p76):** The introductory text for the MOS Gateway Configuration File section gives the default path as `C:\Program Files\Avid\MOSGateway`. The edit procedure step 3 on the same page gives `C:\Program Files (x86)\Avid\iNEWS MOSGateway` (also missing a space). The authoritative path, confirmed by the installer screenshot (p27), upgrade procedure (p41), and vault file creation note (p91), is `C:\Program Files (x86)\Avid\iNEWS MOS Gateway`.
