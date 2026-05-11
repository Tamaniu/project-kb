---
product: mediacentral-data-receiver
product-area: release-notes
version: "2021.3"
release-date: 19/04/2021
doc-type: release-notes
source: avid-official
source-file: DR-v2021.3-ReadMe.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2021.7"
feature-tags: [data-receiver, wire-profile, rss-feed, windows-server-2019, windows-server-2016, installation, upgrade, known-limitations]
---

# MediaCentral | Data Receiver — ReadMe

**Product version:** 2021.3 (v2.2)  
**Document date:** 19 April 2021  
**Revision:** 13 May 2021

---

## Revision History

| Date | Notes |
|---|---|
| 13 May 2021 | — |
| 19 Apr 2021 | Initial v2021.3 release notes |
| November 2018 | — |
| December 2017 | Renamed to MediaCentral Data Receiver |
| December 2015 | Initial v2.x release |

---

## Compatibility

| Component | Requirement |
|---|---|
| Operating System | Windows Server 2016 or Windows Server 2019 |
| iNEWS version | iNEWS 2.0 or later |
| iNEWS 2.6 requirement | Data Receiver 1.5 or later (Unicode output only) |

---

## Installation Notes

### Upgrading from v2017.2

If problems occur when upgrading from v2017.2, uninstall the existing Data Receiver first, then install the new version.

---

## New Features

### Wire Profile Support (introduced v2018.11)

Wire Profile Support allows wire input configurations to be templated and reused across multiple wire instances.

### RSS Feed Input Type (introduced v2.0)

An RSS feed can be used as an input source for the Data Receiver. Configuration involves an 11-step setup procedure documented in the Data Receiver Install and Administration Guide.

---

## Changes for v2021.3

- Qualified on Windows Server 2016 and Windows Server 2019 with NM Server v2021.3.

---

## Changes for v2017.2

- Product renamed to MediaCentral | Data Receiver.
- RSS feed CRLF fix (IN-3002).

---

## Known Limitations

### Admin Application Reconnection

After a network interruption, the Admin application may not automatically reconnect to the Data Receiver service. Restart the Admin application to reconnect.

### Removing Wire Instances Completely

To fully remove a wire instance (including its configuration from the `WS.exe.config` file), follow this 6-step procedure:

1. Open the Data Receiver Admin application.
2. Select the wire instance to remove.
3. Stop the instance.
4. Delete the instance.
5. Stop the Data Receiver Windows service.
6. Manually remove the corresponding entry from `WS.exe.config`, then restart the service.

> **Note:** Simply deleting an instance from the Admin application does not remove its configuration entry from `WS.exe.config`.

### SFC Files with Multiple Instances

Issues may occur when SFC (Standard File Content) input files are used with multiple Data Receiver instances simultaneously.

### Service Restart Timeout

The Data Receiver Windows service may time out during restart if a large number of wire instances are configured.

### Configuration Changes Requiring Instance Restart

The following configuration changes require a restart of the affected wire instance to take effect:

- Input type
- Character translation settings
- Start/End sequences
- Code page
- Output character translations
- Output iNEWS server name

### Miscellaneous

- **Serial mouse detection:** The installer may incorrectly detect a serial mouse on some systems.
- **Log file extension hidden:** The `.log` file extension may be hidden in the Windows Explorer view.
- **Summary tab headings after initial install:** Column headings in the Summary tab may not display correctly after the initial installation. A restart of the Admin application resolves this.
