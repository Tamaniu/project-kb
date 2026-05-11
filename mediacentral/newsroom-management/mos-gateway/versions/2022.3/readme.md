---
product: mediacentral-mos-gateway
product-area: newsroom-management
version: "2022.3"
doc-type: readme
source: pdf
source-file: MCMOSGWv2022.3_ReadMe.pdf
confidentiality: public
date-added: 27/04/2026
last-updated: 27/04/2026
status: superseded
superseded-by: "2022.3.4"
products-affected: [mediacentral-mos-gateway, mediacentral-newsroom-management]
feature-tags: [readme, compatibility, install, upgrade, bug-fixes, limitations, mos-protocol, subscription-licensing, ftp, logging, mosconfig, inewscom-dll]
---

# MediaCentral | MOS Gateway — ReadMe v2022.3

**Source PDF:** MCMOSGWv2022.3_ReadMe.pdf
**Document revised:** 24/03/2022
**Internal version:** v5.5 (from copyright footer: "28 March 2022")
**Online Support:** <http://www.avid.com/onlinesupport>

> This ReadMe is a cumulative document covering MOS Gateway versions 2017.2 through 2022.3.
> For later releases (2022.3.4 and beyond), refer to the ReadMe documentation for those versions.

---

## Revision History

| Date | Changes |
|---|---|
| 24 March 2022 | Added updates for 2022.3 release |
| 19 Nov 2021 | Added updates for 2021.11 release |
| 29 July 2021 | Added updates for 2021.7 release |
| 13 May 2021 | Added updates for 2021.3 release |
| Sept 2020 | Added updates for 2020.9 release |
| Apr 2020 | Added updates for 2020.4 release |
| Nov 2018 | Added updates for v2018.11 release (Update: 02/2019 — Fixed broken link) |
| 16 June 2018 | Added updates for v2018.6 release |
| 18 Dec 2017 | Rebranded for v2017.2 release |

---

## Compatibility

### Qualified Servers and Operating Systems

| Component | Qualified OS |
|---|---|
| MOS Gateway | Windows Server 2019, Windows Server 2016 |

> MOS Gateway is not supported on any other Windows operating system.

**Newsroom Management dependency:**
- For **iNEWS licensing**: requires Newsroom Management (iNEWS) version **2021.3 (7.8) or later**
- For **MediaCentral Subscription Licensing**: requires version **2021.11 or later** of both the MediaCentral Licensing Server and Newsroom Management

### Qualified Protocols and Devices

| Item | Supported |
|---|---|
| MOS Protocol 2.6 | ✓ |
| MOS Protocol 2.8 | ✓ |
| MOS Protocol 3.x | ✗ Not supported |

> Note: The source document refers to "MOS Gateway 4.x" in context of protocol support — this is the internal version number series for the 2022.x and earlier releases.

**Device connection limit:** A single MOS Gateway supports a maximum of **2 MOS device connections**.

For the latest list of supported MOS devices: <https://www.avid.com/products/inews/specifications>

---

## Install and Upgrade Notes

### Key Installation Requirements

- Any older version must be **uninstalled and the machine rebooted** before installing the current version of MOS Gateway.
- **MOS Gateway does not support in-place upgrades.** All upgrades require the previous version to be uninstalled first.
- If using **MediaCentral Subscription Licensing**, installation of the Avid License Control application is not required. The licence is acquired from the MediaCentral Licensing Server when connecting to the Newsroom Management Server.

### Installation Procedure

1. Run `Setup.exe` under the MOSGateway folder in the iNEWS ISO. InstallShield Wizard begins with notification of Avid License Control requirement.
2. Click Install to continue. InstallShield will prompt for installation of Avid License Control.
   > Note: Before MOS Gateway will install, you may be prompted for installation of Microsoft Visual C++ 2008 Redistributable SP1 if it is not already installed.
3. Clicking Install will prompt the Avid License Control to install.
4. Click Next to begin the iNEWS MOS Gateway InstallShield Wizard.
5. Read the Avid Software License Agreement.
6. Accept the terms in the licence agreement.
7. Click Next to continue.
8. Accept the default destination folder (`C:\Program Files (x86)\Avid\iNEWS MOS Gateway\`) or choose a different location. Leaving installation at the default destination will create any necessary folders.
9. Click Next to continue.
10. When InstallShield Wizard prompts that installation is ready, click Install to continue.
11. When installation is complete, activate MOS Gateway. Click Done if you want to activate later.

### Activation

- Activation requires an internet connection.
- If the computer has internet access, activate on that computer.
- If the computer does not have internet access, activate from a different computer that does.
- **Avid recommends indirect activation.**
- For full activation procedure, see the *MOS Gateway Installation and Operations Guide*.

---

## Changes for Version 2022.3

- **IN-7373:** Previously, in an AB system with COM sessions configured in B server, MOS Gateway returned an error when connecting to the B server. This is fixed.

---

## Changes for Version 2021.11

- Starting in this version, **MediaCentral Subscription Licensing** is supported. Using MediaCentral Subscription Licensing, activation through the Avid License Control application is not required. MOS Gateway and MOS Gateway COM licence options are acquired from the MediaCentral Licensing Server through the Newsroom Management server.
- **IN-7033, IN-6863:** Previously, the MOS Router service could crash sometimes because of a race condition caused by an AMCP connection. This is fixed.

---

## Changes for Version 2021.7

- **IN-6907:** Previously, a TAB character in an iNEWS story would terminate the MOS Gateway StorySend service. This is fixed.
- **IN-6961:** Previously, MOS Gateway logging lines were skipped by TraceLibrary if they were too large. This is fixed.

---

## Changes for Version 2021.3

- **IN-6857:** Since version 2020.9, MOS attachment attributes were modified incorrectly for roStorySend stories. This is fixed.
- **Logging improvements:** This version features improvements to logging. Logging levels are documented below:

```xml
<LoggingLevel>0xff</LoggingLevel>
```

| Bit value | Logging enabled |
|---|---|
| `0x10` | XML messages to MOS devices |
| `0x20` | XML messages from MOS devices |
| `0x40` | FTP communication details |
| `0x80` | Error messages from replication services |
| `0x03` | Errors, warnings, and 1-liner information (enabled by default) |

> Note: The lower bits need to be enabled to get the higher bit messages. For instance, to enable XML messages to MOS devices, the logging level should be set to `0x13`.

---

## Changes for Version 2020.9

- **FTP replaces iNEWSCOM:** This version of MOS Gateway no longer uses iNEWSCOM to get stories from the Newsroom Management Server for MOS Replication and roStorySend workflows. FTP is used instead. For further instructions, see the *MediaCentral | MOS Gateway Installation and Operations Guide*.
- **Two new `mosconfig.xml` options:**
  - `<removeMosObjCreate>YES|NO</removeMosObjCreate>` — default is NO
  - `<UseFTPS>YES|NO</UseFTPS>` — default is YES
- **IN-930:** Previously, MOS Gateway could experience problems when the monitor remained loaded for a show which was archived (and stories removed from the rundown). Fixed so that the monitor server is turned off before archiving occurs.
- **IN-6139:** Previously, MOS Gateway might crash when receiving an invalid event from the Newsroom Management system. This is fixed.
- **IN-6241:** Previously, the RoStorySend service crashed if NSML contained a tag attribute without a value. This is fixed.
- **IN-128227:** Previously, page-number prepend did not work properly when there was a missing page-number in the event form. This is fixed.
- **IN-152472:** Previously, the router service would quit working if one of the configured devices was unreachable. This is fixed.
- **IN-5344:** In roStorySend messages, the required mosSchema tag in mosExternalMetadata was missing. This is fixed.

---

## Changes for Version 2020.4

- **New `mosconfig.xml` option — `<DisableMosItemStatChannel>`:** The option `<DisableMosItemStatChannel>YES</DisableMosItemStatChannel>` may be used to force MOS Gateway to remove the channel information in roItemStat messages sent from the device to the monitor server, to avoid inadvertent loss of channel changes. For example, if the channel is manually changed by a user, but an echo of roItemStat containing the channel comes in simultaneously, the manual change might be overwritten. (IN-5461)
  > Note: After the option is in place, the device will not be able to change the channel using roItemStat messages.

---

## Changes for Version 2018.11

- **IN-4248:** This version of MOS Gateway has improved event status reporting to the server from the device by differentiating between an empty channel and no channel information.

---

## Changes for Version 2018.6

- **IN-3093:** Previously, if the monitor lost network communication to the MOS Gateway after a monitor load, and the monitor reloaded the rundown when connection was restored, with the new shortID option a new short ID was created for the rundown, breaking a MAM-controlled workflow. This is fixed.
- **IN-173642:** Previously, using the placeholder workflow, launching of an item using its own activeX was disabled. This version correctly extracts settings from `mosconfig.xml` for browser/editor/player into the mosItem, or allows the device to add the information with a mosItemReplace message, together with MediaCentral Newsroom client 2018.6.

---

## Changes for Version 2017.2

- In this version, both the product name and the numbering system for versions were modified. Avid iNEWS MOS Gateway is now known as **MediaCentral MOS Gateway**, and the numerical version now uses the year of release. Version 4.4 is now referred to as 2017.2.

---

## Known Limitations

### GetMOSDuration

With the `GetMosDuration` option enabled together with Replication and MosItemReplace, CPU usage may reach 100% and the version ID of the mosItem keeps incrementing if the device sends excessive roItemStat messages.

**Workaround:** Turn off the GetMosDuration or replication option if it is not required in your workflow.

### Newsroom Management — Server Does Not Receive "Download Complete" Message

This is caused by the MOS device not including a roID with its roAck to the MOS Gateway after a show has been loaded. If the roID is not included in the message, MOS Gateway does not know where to send the "Download Complete" message. No workaround documented.

### iNEWS Workstation Installer Overwrites inewscom.dll Registration Used by MOS Gateway

The registration of the `inewscom.dll` installed with MOS Gateway 2.6.1 and 2.6.2 will be overwritten by the iNEWS Workstation installer. When this occurs, an incorrect version of the `inewscom.dll` is used by MOS Gateway. This can cause parts of the MOS Gateway functionality to fail, specifically `roStorySend`.

**Workaround:** Do not install iNEWS Workstation software on the MOS Gateway computer. Or install MOS Gateway after the iNEWS Workstation software.

### Unused MOS Devices Generate reqMachineInfo Errors in the Log File

If a MOS device is specified in the `mosconfig.xml` file but is not present on the network, errors will indicate that the device is not reachable during MOS Gateway startup. This is normal behaviour.

**Workaround:** Remove any unused MOS device configurations from the `mosconfig.xml` file.

### MOS Devices on the Network Not Specified in mosconfig.xml Generate Log Errors

If a MOS device is present on the network and configured to communicate with the MOS Gateway computer, it will cause error messages in the MOS Gateway log if it is not also specified in the `mosconfig.xml` file. This is normal behaviour.

**Workaround:** Remove from the network or reconfigure any unused MOS devices that are configured to communicate with MOS Gateway.

### Additional Download Time Overhead When Using handlesRoStorySend Option

Due to the amount of data being processed and sent when this option is enabled, the amount of time to load MOS devices will be significant.

**Workaround:** Unless required by the MOS device, Avid recommends setting this option to NO.

### Upgrades Require Uninstall First

MOS Gateway does not support upgrades over existing installations. All upgrades of MOS Gateway require that the previous version be uninstalled first.

---

## Technical Support Information

For Avid service offerings (Avid Assurance), visit <https://www.avid.com/support> or call Avid Sales at:
- North America: 800-949-AVID (800-949-2843)
- International: 978-275-2480

Avid Online Support is available 24 hours per day, 7 days per week:
<https://www.avid.com/onlinesupport>
