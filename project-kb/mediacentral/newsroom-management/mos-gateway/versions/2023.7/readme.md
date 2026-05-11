---
product: mediacentral-mos-gateway
product-area: newsroom-management
version: "2023.7"
doc-type: readme
source: pdf
source-file: MCMOSgwy_2023.7_ReadMe.pdf
confidentiality: public
date-added: 27/04/2026
last-updated: 27/04/2026
status: superseded
superseded-by: "2024.10"
products-affected: [mediacentral-mos-gateway, mediacentral-newsroom-management]
feature-tags: [readme, compatibility, install, upgrade, new-features, limitations, mos-protocol, vault, tcp-keepalive]
---

# MediaCentral | MOS Gateway — ReadMe v2023.7

**Source PDF:** MCMOSgwy_2023.7_ReadMe.pdf
**Document revised:** 23/07/2023
**KB article index:** <http://avid.force.com/pkb/articles/en_US/user_guide/MediaCentral-Newsroom-Management>

> This ReadMe covers MOS Gateway versions 2023.3 and 2023.7 in a single cumulative document.
> For earlier releases (2022.12 and prior), refer to ReadMe documentation for those versions.

> **Source note:** The KB URL in this document uses the legacy `avid.force.com` domain. The
> current KB URL is `https://kb.avid.com/articles/en_US/user_guide/MediaCentral-Newsroom-Management`.

---

## Revision History

| Date | Changes |
|---|---|
| 27 July 2023 | New Features section updated for 2023.7 (5.7) |
| 22 March 2023 | Initial version 2023.3 (5.6) |

---

## Security Guidelines

As of Q3 2020, Avid moved from recommending Symantec Endpoint Protection to a flexible strategy allowing organisations to choose their own endpoint security solution, following Avid best practices. A Security Guidelines document is maintained on the Knowledge Base:
<http://avid.force.com/pkb/articles/en_US/troubleshooting/en239659>

---

## Compatibility

### Qualified Servers and Operating Systems

| Component | Qualified OS |
|---|---|
| MOS Gateway | Windows Server 2022, Windows Server 2019 |

> MOS Gateway is not supported on any other Windows operating system.

**Newsroom Management dependency:**
- For **iNEWS licensing**: requires Newsroom Management version **2021.3 (7.8) or later**
- For **MediaCentral Subscription Licensing**: requires version **2021.11 or later** of both the MediaCentral Licensing Server and Newsroom Management

### Qualified Protocols and Devices

| Item | Supported |
|---|---|
| MOS Protocol 2.6 | ✓ |
| MOS Protocol 2.8 | ✓ |
| MOS Protocol 3.x | ✗ Not supported |

> Note: The source document refers to "MOS Gateway 5.x" in context of protocol support — this is an internal version number corresponding to the 2023.x release series.

For the latest list of supported MOS devices: <http://www.avid.com/products/inews/specifications>

---

## Install and Upgrade Notes

### Key Installation Requirements

- Any older version must be **uninstalled and the machine rebooted** before installing the current version.
- **MOS Gateway does not support in-place upgrades.** All upgrades require the previous version to be uninstalled first.
- If using **MediaCentral Subscription Licensing**, installation of the Avid License Control application is not required. The licence is acquired from the MediaCentral Licensing Server when connecting to the Newsroom Management Server.

### Installation Procedure

1. Run `Setup.exe` under the MOSGateway folder in the iNEWS ISO. InstallShield Wizard will notify of Avid License Control requirement.
2. Click Install to continue. InstallShield will install Avid License Control if needed.
3. Accept the terms in the Avid Software License Agreement.
4. Accept the default destination folder (`C:\Program Files (x86)\Avid\iNEWS MCS Gateway\`) or choose a different location. Leaving installation at the default destination will create any necessary folders.
5. When InstallShield Wizard prompts that installation is ready, click Install to continue.
6. When installation is complete, activate MOS Gateway. Click Done if you want to activate later.

### Activation

- Activation requires an internet connection.
- If the computer has internet access, activate on that computer.
- If the computer does not have internet access, activate from a different computer that does.
- **Avid recommends indirect activation.**
- For full activation procedure, see the *MOS Gateway Installation and Operations Guide*.

---

## New Features in Version 2023.7

### Connection

| Feature | Description |
|---|---|
| Improved connection stability | Keep-alive added when creating TCP connections |

### Socket

| Feature | Description |
|---|---|
| Improved handling of socket send failures | Better handling of socket send failures to prevent mosrouter service crashes |

---

## New Features in Version 2023.3

### User Interface

| Feature | Description |
|---|---|
| Security enhancement | User credentials are now stored in a vault instead of the MOS Gateway config file |

---

## Fixed in Version 2023.3

No issues were resolved in version 2023.3 of MOS Gateway.

> For further information pertaining to all versions 2022.12 or earlier, please consult the
> ReadMe documentation of those previous releases.

---

## Limitations and Defects for Earlier Versions

### GetMOSDuration

With the `GetMosDuration` option enabled together with Replication and MosItemReplace, CPU usage may reach 100% and the version ID of the mosItem keeps incrementing if the device sends excessive roItemStat messages.

**Workaround:** Turn off the GetMosDuration or replication option if it is not required in your workflow.

### Newsroom Management — Server Does Not Receive "Download Complete" Message

This is caused by the MOS device not including a roID with its roAck to the MOS Gateway after a show has been loaded. If the roID is not included in the message, MOS Gateway does not know where to send the "Download Complete" message. No workaround documented.

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
<https://www.support.avid.com>
