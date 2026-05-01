---
product: mediacentral-newsroom-management
product-area: installation
version: "2020.4"
release-date: 01/04/2020
doc-type: installation-guide
source: avid-official
source-file: MCNM-2020.4-Installation-Quick-Guide.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2020.4.2"
feature-tags: [installation, vm, rhel, disk-partitioning, install-wizard, licensing, cloud-ux, ctms, ldap, kafka, mediaindex]
---

# MediaCentral | Newsroom Management — Installation Quick Guide

**Date:** April 2020  
**Applies to:** MCNM v2020.4  
**Total pages:** 26

> This guide covers quick installation of a new MCNM server. For full configuration post-install, refer to the Setup and Configuration Guide (MSNM-SCG.pdf) on the installation medium.

---

## Virtual Machine — Sample Specifications

| Parameter | Value |
|---|---|
| RAM | 8 GB |
| CPUs | 4 |
| NICs | 2 (eth0: mirrored/internal; eth1: outbound) |
| Storage | Single HDD `/dev/sda` — 20 GB minimum |

---

## Operating System

**Supported OS:** Red Hat Enterprise Linux (RHEL) 7.x  
Install using standard RHEL installation media.

### Network Configuration
- Configure `eth0` and `eth1` during OS install.
- Set static IP addresses; do not use DHCP for server interfaces.
- Ensure `/etc/hosts` includes entries for all servers in the system (required for Community multi-server configurations).

---

## Disk Partitioning Requirements

The iNEWS database requires two equal-sized dedicated partitions. These **must not** use LVM.

| Partition | Mount | Filesystem | Notes |
|---|---|---|---|
| Primary database | `/rp5` | ext4 | Up to 132,000 MB; equal to `/rp5backup` |
| Backup database | `/rp5backup` | ext4 | Up to 132,000 MB; equal to `/rp5` |
| Boot | `/boot` | ext4 | 500 MB |
| Swap | (swap) | swap | ~2× RAM |
| Root | `/` | ext4 | Remaining space |

> **Critical:** `/rp5` and `/rp5backup` must be the same size. LVM is not supported for these partitions.

---

## Installing the Newsroom Management Server

1. Mount the MCNM installation DVD (or ISO).
2. Copy installer to `/tmp/INEWS`:
   ```
   cp -r /media/<dvd-mount>/* /tmp/INEWS/
   ```
3. Run the installer:
   ```
   cd /tmp/INEWS
   ./install [command] [-h] [-c <config-file>] [-d <db-file>] [-s <sitedump-file>]
   ```

### Install Command Options

| Option | Description |
|---|---|
| `[command]` | Installation command (e.g. `install`, `upgrade`) |
| `-h` | Display help |
| `-c <file>` | Use a pre-saved configuration file (silent install) |
| `-d <file>` | Database file to restore |
| `-s <file>` | Sitedump file to restore |

---

## Installation Wizard

The installer launches a text-based wizard (ncurses interface). Navigate with arrow keys; use `Tab` to move between fields and buttons.

### Wizard Steps

**1. System Name**
- Maximum 8 characters, uppercase (e.g. `NRCS-A`).
- This becomes the iNEWS database name. Used as the Service Realm base name for Cloud UX.

**2. System Configuration**
- Select topology: `A` (single server), `AB` (two-server), or `ABC` (three-server Community).

**3. System ID**
- Set server role: `A`, `B`, or `C`.

**4. Wordlength**
- Default: `6`. Number of characters constituting one "word" for audio timing calculations.

**5. Primary Network**
- Select `eth0` or `eth1` as the primary iNEWS network interface.

**6. System Operator Password**
- Set the `system` operator account password.

**7. KerberOS Realm**
- Enter the Kerberos/Active Directory realm for LDAP user import (e.g. `SUBDOMAIN.DOMAIN.LOCAL`).
- Must match the Windows domain. Used during user import (`kinit`).

**8. SiteKey / License**
- Enter the SiteKey and License string (Figure 16 in source document).
- Can be skipped with `< Skip >` — a warning is displayed; a valid license must be applied before users can connect.

**9. Configuration Summary**
- Review all settings (Figure 17 in source document).
- Options: `< Install >` to proceed, `< Save >` to write configuration to a named file, `< Back >` to revise, `< Exit >` to quit.
- If saved, the configuration file is written alongside the installer and can be edited manually for use in silent installations on other servers.

**10. Installation**
- Progress screen shows `Install required dependencies...` with a progress bar (Figure 19).
- On completion: `"MediaCentral® | Newsroom Management system successfully installed. Now you need to restart the system."` (Figure 20).
- Select `< Finish >` and reboot.

> **Note:** After installation, there is no need to run `configure` by default — the installer assumes a proper `/site/config` will be restored from `sitedump.db`. The `configure` utility is used only to propagate changes to a running system without reboot (e.g. to adjust session count from a licence change).

---

## Connecting Newsroom Management to MediaCentral | Cloud UX

This section provides the main steps for connecting the MCNM module to the MediaCentral platform services. For full detail, refer to the SCG chapter indicated in each step.

> **Note:** Both the Newsroom Management server and the Cloud UX system must be licensed and running before the connection can be established and tested.

### Step 1 — Start up the System

Follow the SCG chapter "Getting Started" (Chapter 3):
- For a single-server system: "Starting a System in Single-Server Mode" (SCG p.65)
- For a multi-server system: "Starting the System" (SCG p.60)

### Step 2 — Configure and Start the iNEWS CTC

The `inewsctc` service provides the interface for Cloud UX to communicate with the iNEWS system. For full detail see SCG Chapter 20 "CTMS Integration".

**a.** Verify the MCNM system has session licences. As of v2018.6, licences are not dedicated to CTC instances.

**b.** Modify `/site/config` to include `inewsctc` configuration. One entry per Cloud UX instance:
```
; inewsctc entries
server  <n>  inewsctc  <n>  -
```

**c.** Reconfigure the running system:
```
offline
configure
online
```

**d.** For each Cloud UX device, create a configuration file in `/site/env/`:
```
/site/env/inewsctc.<device-id>
```
where `<device-id>` matches the device ID used in `/site/config`.

**e.** Edit each `/site/env/inewsctc.<device-id>` file to include:

| Variable | Description |
|---|---|
| `ACS_GATEWAY_HOST` | Hostname (DNS name) or IP address of the Cloud UX server |
| `ACS_GATEWAY_PORT` | Cloud UX gateway port (default: `9900`) |
| `SERVICE-REALM` | The iNEWS system name (without server suffixes like `-A` or `-B`) |
| `USE_AUTHENTICATION_BY_IP` | `0` or `1` — configure authentication with MCCUX server v2017.2 and newer |

> **Note on Service Realm:** The iNEWS system name is the database name, always uppercase (e.g. `NRCS-A`). The `SERVICE-REALM` must match the system name but must **not** include the server suffix (i.e. use `NRCS`, not `NRCS-A`). A mismatch means users can see and navigate the system in Cloud UX but will not be able to open rundowns or stories.

**f.** Start the CTC device:
```
start <device-id>
```

### Step 3 — Configure Sync Agent for Media Central Search

The `mediaindex` service propagates story changes to the MediaCentral or Cloud UX search engine. Three `W_SEARCHTYPE` options are available in `/site/dict/words`:

| Setting | Description |
|---|---|
| `W_SEARCHTYPE /kafka` | Kafka-based search (recommended; available from v2019.9) |
| `W_SEARCHTYPE /mediacentral` | MediaCentral search |
| `W_SEARCHTYPE /mediaindex` | Media Index search |

The following steps cover the **Kafka** configuration path. For other integration types, see SCG Chapter 19 "Central Indexing".

**a.** Add the `mediaindex` server entry to `/site/config`:
```
host  a  a
  servers  101          ; mail = 1
  servers  105:106      ; keyword = 2
  servers  110          ; seek = 1
  servers  111:112      ; fts = 2
  servers  113          ; mediaindex = 1

; SEEK & FTS SERVERS
server  110  seek        110  -
server  111  ftsseek     111  -
server  112  ftsindex    112  -
server  113  mediaindex  113  -
```

**b.** Reconfigure if changes were made: `offline`, `configure`, `online`.

**c.** Add to `/site/dict/words`:
```
W_SEARCHTYPE     /kafka
W_MCS_BASE_URL   https://<CloudUX-name>:<port>
```

**d.** Specify working queues in `/site/dict/queues`:
```
Q_MEDIA_INDEX    /system.media-index
Q_SCHEMAS_KAFKA  /system.schemas.kafka
```

**e.** Assign a mailbox to the `SYSTEM.MEDIA-INDEX` queue (see SCG Chapter 5, "Assigning a Mailbox to a Queue").

**f.** Start the mediaindex device:
```
start <device-id>
```

> **Note:** Kafka Search became available beginning with v2019.9. For full detail, see "Connecting the Newsroom Management to MediaCentral | Cloud UX using Kafka" in SCG Chapter 20.

### Step 4 — Import Users

MediaCentral Cloud UX uses LDAP or Active Directory for authentication. User accounts must match between MCNM and Cloud UX. Follow SCG Chapter 4, "Importing Users from an LDAP Server" (SCG p.98).

**a.** Obtain the LDAP server name/IP and domain/zone. The KerberOS realm entered during installation (Step 7 of wizard) applies here.

**b.** Obtain the Windows domain password (required during the LDAP search).

**c.** Perform an LDAP server search to obtain server and port (default port: `389`).

**d.** Obtain a Kerberos ticket-granting ticket:
```
kinit
```
If `kinit` reports missing support for encryption type, check `/etc/krb5.conf`:
```
[libdefaults]
default_realm = SUBDOMAIN.DOMAIN.LOCAL
default_tgs_enctypes=arcfour-hmac-md5 des-cbc-crc descbc-md5
default_tkt_enctypes=arcfour-hmac-md5 des-cbc-crc descbc-md5
```

**e.** Create and execute the LDAP query. Adapt as needed to import specific groups or users only.

**f.** Import users as external users.

**g.** Delete the Kerberos ticket-granting ticket:
```
kdestroy
```
