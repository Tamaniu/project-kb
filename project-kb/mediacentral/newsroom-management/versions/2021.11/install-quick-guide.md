---
product: mediacentral-newsroom-management
product-area: installation
version: "2021.11"
release-date: 11/2021
doc-type: installation-guide
source: avid-official
source-file: MCNM-2021.11-InstallationQuickGuide.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2022.3"
feature-tags: [installation, rhel, centos, disk-partitioning, install-wizard, licensing, subscription-licensing, cloud-ux, ctms, kafka, mediaindex, silent-install]
---

# MediaCentral | Newsroom Management — Installation Quick Guide

**Date:** November 2021  
**Applies to:** MCNM v2021.11  
**Total pages:** 24

> This guide covers quick installation of a new MCNM server. For full configuration post-install, refer to the Setup and Configuration Guide (MCNM-SCG-2021.11.pdf).

> **Licensing note:** You will need an updated licence string for v2021.11 or newer. Contact your Avid representative before installing.

---

## Virtual Machine — Sample Specifications

> **Important:** The figures below are for illustration only. They do not represent minimum or recommended specifications. Consult your Avid representative for correct sizing.

| Parameter | Value |
|---|---|
| RAM | 8 GB |
| CPUs | 4 |
| NICs | 2 (eth0: mirror/internal; eth1: outbound) |
| Storage | Single HDD `/dev/sda` — 20 GB |

---

## Operating System

**Supported OS (v2021.11):**

| OS | Version |
|---|---|
| Red Hat Enterprise Linux (RHEL) | 7.7 or 7.9 |
| CentOS | 7.7 or 7.9 |

> **Recommendation:** CentOS 7.9 or RHEL 7.9 is preferred.

---

## Disk Partitioning Requirements

Use **Standard Partition** type only. LVM is **not supported** for `/rp5` or `/rp5backup`.

| Partition | Mount | Filesystem | Size |
|---|---|---|---|
| Boot | `/boot` | ext4 | 500 MB |
| Primary database | `/rp5` | ext4 | Up to 132,000 MB |
| Backup database | `/rp5backup` | ext4 | ≥ `/rp5` (must match) |
| Swap | (swap) | swap | ~2× RAM |
| Root | `/` | ext4 | Remaining space (maximum) |

> **Critical:** `/rp5` and `/rp5backup` must be equal in size. LVM must not be used for these partitions.

---

## Network Configuration

- MTU: set to **1500** on the Ethernet tab.
- IPv4 method: **Manual** (static IP).
- Mirror NIC (eth0): configure IP only — leave Gateway, DNS, and Domain fields empty.
- Outbound NIC (eth1): configure IP, Gateway, DNS, and Domain as required.

---

## Preparing the Installer Files

**6-step procedure:**

1. Mount the installation DVD:
   ```
   mount /dev/cdrom /media
   ```
2. Create a temporary working directory:
   ```
   mkdir /tmp/INEWS
   ```
3. Copy all installer files from the mounted DVD:
   ```
   cp -a /media/. /tmp/INEWS
   ```
4. Unmount the DVD:
   ```
   umount /media
   ```
5. Navigate to the installer directory:
   ```
   cd /tmp/INEWS
   ```
6. Run the installer (see syntax below).

### Additional OS Files by Scenario

| Scenario | Action required |
|---|---|
| CentOS with internet access | OS packages downloaded automatically |
| CentOS without internet access | Attach CentOS DVD; create `/etc/yum.repos.d/media.repo` with `baseurl=file:///media`, `gpgcheck=0`, `enabled=1`; disable other repos |
| RHEL without internet access | Attach RHEL DVD + create media.repo as above, **or** use WinSCP to transfer ISO |
| RHEL with internet access | Packages resolved via Red Hat entitlement server automatically |

---

## Installer Syntax

```
./install [command] [-h] [-c file] [-d file] [-s file]
```

| Option | Description |
|---|---|
| `command` | Installation command: `install`, `silent_install`, `upgrade`, `downgrade` |
| `-h` | Display help |
| `-c <file>` | Use a pre-saved configuration file |
| `-d <file>` | Database file to restore (e.g. `/tmp/database.db`) |
| `-s <file>` | Sitedump file to restore (e.g. `/tmp/sitedump.db`) |

**Silent install example:**
```
./install -c ./configuration -d /tmp/database.db -s /tmp/sitedump.db silent_install
```

---

## Installation Wizard

The installer launches a text-based wizard (ncurses interface). Navigate with arrow keys; use Tab to move between fields and buttons.

### Wizard Steps

**1. Database Partitions**
- Confirm primary partition: `/rp5`
- Confirm backup partition: `/rp5backup`

**2. System Name**
- Maximum 8 characters, uppercase (e.g. `NRCS-A`).
- For a single-server system, must match the server hostname.
- This becomes the iNEWS database name and the Service Realm base for Cloud UX.

**3. System Configuration**
- Select topology: `A` (single server), `AB` (two-server), or `ABC` (three-server Community).

**4. System ID**
- Set server role: `A`, `B`, or `C`.

**5. Wordlength**
- Default: `6`. Number of characters constituting one "word" for audio timing calculations.

**6. Network Interfaces**
- Select and confirm the primary and secondary network interfaces.

**7. System Operator Password**
- Set the `system` operator account password.

**8. KerberOS Realm**
- Enter the Kerberos/Active Directory realm for LDAP user import (e.g. `SUBDOMAIN.DOMAIN.LOCAL`).
- Leave empty to skip. Realm may differ from the DNS domain suffix.

**9. Licence**
- Enter the SiteKey and updated Licence string.
- For subscription licensing: also enter the Server/Cloud UX hostname.
- `licensing_server=<cloudux.host>:<port>` in `/site/system` (see SCG Ch.10).

**10. Configuration Summary**
- Review all settings.
- Options: `< Install >` to proceed, `< Save >` to write configuration to file, `< Back >` to revise, `< Exit >` to quit.
- If saved, the configuration file is written alongside the installer and can be used for silent installations on additional servers.

**11. Installation and Completion**
- Progress screen displays installation steps.
- On completion, select `< Finish >` and reboot the system.

---

## After Installation

1. Reboot the system.
2. Start up all services (see SCG Ch.3 Getting Started).
3. Accept the licence agreement.
4. **Note:** There is no need to run `configure` by default when a `sitedump.db` is restored — the installer assumes the site configuration will be restored from that file. Run `configure` only to propagate changes to a running system without reboot (e.g. after a licence update).

---

## Connecting Newsroom Management to MediaCentral | Cloud UX

### Step 1 — Start Up the System

Follow SCG Chapter 3 "Getting Started":
- Single-server: "Starting a System in Single-Server Mode"
- Multi-server: "Starting the System"

### Step 2 — Configure and Start the iNEWS CTC

The `inewsctc` service provides the interface between the iNEWS system and Cloud UX. For full detail see SCG Chapter 20 "CTMS Integration".

**a.** Verify that the MCNM system has session licences. From v2018.6, licences are not dedicated to CTC instances.

**b.** Modify `/site/config` to include `inewsctc` entries — one per CTC device:
```
server  <device-id>  inewsctc  -  -
```

**c.** Reconfigure the running system:
```
offline
configure
online
```

**d.** For each CTC device, create an environment file:
```
/site/env/inewsctc.<device-id>
```

**e.** Edit each `/site/env/inewsctc.<device-id>` file:

| Variable | Value |
|---|---|
| `ACS_GATEWAY_HOST` | Hostname or IP address of the Cloud UX server |
| `ACS_GATEWAY_PORT` | Cloud UX gateway port (default: `9900`) |
| `SERVICE-REALM` | iNEWS system name — uppercase, without server suffix (e.g. `NRCS` not `NRCS-A`) |
| `SERVICE_TOKEN` | (leave empty unless required) |
| `USE_AUTHENTICATION_BY_IP` | `0` or `1` |

> **Note on Service Realm:** The system name is always uppercase (e.g. `NRCS-A`). The `SERVICE-REALM` must match but must **not** include the `-A`/`-B` server suffix. A mismatch causes Cloud UX to display the system but prevents users from opening rundowns or stories.

**f.** Start the CTC device:
```
start <device-id>
```

For full detail, see SCG Chapter 20 "CTMS Integration".

### Step 3 — Configure the Sync Agent (mediaindex)

The `mediaindex` service propagates story changes to the Cloud UX search engine. Configure via `/site/dict/words`.

#### Option A — Kafka Search (recommended from v2019.9)

Add to `/site/dict/words`:
```
W_SEARCHTYPE    /kafka
W_MCS_BASE_URL  /https://<CloudUX-name>:<port>
```

Add to `/site/dict/queues`:
```
Q_SCHEMAS_KAFKA  /system.schemas.kafka
```

Add `mediaindex` server entries to `/site/config`:
```
servers  101        ; mail=1
servers  105:106    ; keyword=2
servers  110        ; seek=1
```

> The `SYSTEM.SCHEMAS.KAFKA` queue must be created manually: navigate to `SYSTEM > SCHEMAS` and create a queue named `KAFKA`.

#### Option B — Other Search Types

Set `W_SEARCHTYPE` to `/mediacentral` or `/mediaindex` as appropriate. For full detail see SCG Chapter 19 "Central Indexing / Media|Index".

---

## Technical Support

Avid Online Support: [www.avid.com/onlineSupport](http://www.avid.com/onlineSupport) — available 24 hours a day, 7 days a week.
