---
product: mediacentral-newsroom-management-data-receiver
product-area: newsroom-management
version: "2021.3"
release-date: 13/05/2021
doc-type: readme
source: avid-official
source-file: DR-v2021.3-ReadMe.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2022.3"
feature-tags: [data-receiver, wire-service, rss, wire-profiles, inews, windows-server]
---

# MediaCentral | Data Receiver — Version 2021.3 ReadMe

**Build:** v2.2 | **Document date:** 13 May 2021 | **Copyright © 2021 Avid Technology, Inc.**

> **Source anomaly:** The copyright footer on the source PDF states "19 April 2021", but the revision history records "13 May 2021" as the date v2021.3 changes were added to this document. The revision history date is used as the authoritative document date in the frontmatter.

> Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release. Search the Avid Knowledge Base (<http://www.avid.com/onlinesupport>) for the most up-to-date ReadMe file and other documentation available for this product.

---

## Revision History

| Date Revised | Changes Made |
|---|---|
| 13 May 2021 | Added changes for v2021.3 release |
| November 2018 | Added changes for v2018.11 release |
| December 2017 | Product rebranding for 2017.2 release |
| December 2015 | Initial ReadMe for v2.x |

---

## Compatibility

### Operating System

| Component | Qualified Versions |
|---|---|
| Operating System | Windows Server 2016, Windows Server 2019 |

Data Receiver is not supported on any other Windows operating system version.

### MediaCentral | Newsroom Management

Data Receiver requires iNEWS 2.0 or later. All previous versions of iNEWS are not compatible with Data Receiver.

Avid iNEWS 2.6 requires Data Receiver 1.5 or later. The output code page setting type for Data Receiver must be configured for Unicode only when used with iNEWS 2.6; other output code pages are not supported in that configuration.

---

## Installation Notes

### Upgrading from Data Receiver v2017.2

If you encounter issues when upgrading to v2017.2 or later, uninstall the existing version first, then install the new version.

---

## New Features

### Wire Profile Support (introduced v2018.11)

Data Receiver now supports wire profiles configured on the Newsroom Management Server. Wire profiles allow centralised management of wire feed configuration on the NMS rather than in the Data Receiver Administration Application.

For configuration details, refer to the sections "Adding a Wire – Data Receiver" and "Wire Profile Options" in the *MediaCentral | Newsroom Management Setup and Configuration Guide*.

### RSS Input Type (introduced v2.0)

Data Receiver supports RSS as an input type, enabling subscription to syndicated RSS feeds (with optional authentication) in addition to public RSS feeds.

The RSS input uses a poll interval to retrieve new items from a specified URL since its last update. Data Receiver reformats the retrieved data using sfc files and places stories into iNEWS in the same way as other input types.

**To set up a new wire service instance for RSS feeds:**

1. From the Data Receiver Administration window, select **Create a New Instance** from the Wire Services menu. The Configure an Instance of the Data Receiver dialogue box appears.
2. Fill in the Instance Name and select the appropriate config and sfc files for use by the instance. Click OK. The Configure Directories dialogue box appears.
3. Accept the default directories (paths may vary). Click OK.
4. Select Yes to confirm addition of the new instance. The new instance appears as a Wire Configuration tab named as specified.
5. Click the new tab.
6. Click the **Change** button in the Input section. The Select New Input Type dialogue box appears.
7. Click the **RSS** tab.
8. Fill in the Feed URL.
9. (Optional) Select the **Use authentication** check box and enter the login credentials if required.
10. Set the polling interval.
11. Click OK.

---

## Hardware and Software Changes

### Changes for 2021.3

- This version is qualified to run on Windows Server 2016 and Windows Server 2019 with Newsroom Management Server 2021.3.

### Changes for v2017.2

- iNEWS Data Receiver was renamed to MediaCentral Data Receiver beginning with this version.
- Fixed: Data Receiver could not read RSS feeds if there was no CRLF present. (IN-3002)

---

## Known Limitations

### Administration Application May Not Reconnect After Service Restart

If the Avid Data Receiver service is stopped and restarted while the Administration Application is open, the application may not reconnect to the service properly on start-up. Individual instances may appear as Unavailable, or the Story Input and Story to NRCS data may stop updating.

**Workaround:** Close the Administration Application before stopping or restarting the Avid Data Receiver service.

### Removing a Wire Instance Completely

When an instance is removed from within the Administration Application, it is not removed from the `WS.exe.config` file. The wire instance continues running in the background consuming resources (including input COM ports).

**To fully remove a wire instance from Data Receiver:**

1. Stop the Avid Data Receiver Service via Windows Control Panel > Services.
2. Open `WS.exe.config` in a text editor (e.g. Windows Notepad).
3. Locate the `<WireInstance>Wirename.cfg</WireInstance>` entry for the instance to be removed.
4. Delete the `<WireInstance>Wirename.cfg</WireInstance>` entry.
5. Save the file.
6. Restart the Avid Data Receiver Service.

### SFC Files Used With Multiple Instances

If the same SFC file is shared across multiple wire instances, any changes made within one instance affect the behaviour of all other instances using that file.

**Workaround:** Ensure each wire instance uses its own dedicated process file.

### Timeout When Stopping or Restarting the Avid Data Receiver Service

A Windows timeout message may appear when stopping or restarting the Data Receiver service (not an individual instance). This occurs because the service waits to finish processing stories in its queue before stopping. No action is required; the service will stop automatically once the queue is clear.

### Configuration Changes Require Instance Restart

The following changes to a wire instance configuration require restarting the wire instance to take effect:

- Input type
- Input character translation changes
- Changes to story Start and End sequence characters
- Custom code page translation table changes
- Output character translations
- Output iNEWS server name

### Miscellaneous Known Issues

**Serial Data May Be Detected as a Serial Mouse:** Windows may mistakenly recognise incoming serial data as a serial mouse on power cycle. Microsoft Knowledge Base Article 283063 documents workarounds. Use Device Manager to disable (not remove) the incorrectly detected device, then power cycle the computer.

**Log File Extension May Be Hidden:** If Data Receiver log files (`.Monday`, `.Tuesday`, etc.) are associated with an application, Windows may hide the extensions. Workaround: Set Windows folder options to always show file extensions via Tools > Folder Options > View > uncheck "Hide file extensions for known file types".

**Administration Application Summary Tab Headings Unreadable After Initial Install:** After the first run of the Administration Application following initial installation, the Summary tab column headers may appear nonsensical or improperly formatted. This occurs on first run only. Workaround: Close and reopen the Administration Application after at least one wire instance has been configured.

---

## Technical Support

For information on Avid service offerings (Avid Assurance), visit [www.avid.com/support](http://www.avid.com/support) or call Avid Sales at 800-949-AVID (800-949-2843). International users: +1 978-275-2480.

Avid Online Support is available 24 hours a day, 7 days a week at [www.avid.com/onlineSupport](http://www.avid.com/onlineSupport).
