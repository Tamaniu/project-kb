# New Features in MediaCentral | Newsroom Management 2024.10

## Newsroom Management Server

### New Cloud UX wire notifications

Cloud UX can now receive wire notifications. When new **Urgent**, **Bulletin**, or **Flash** wires are ingested into the Newsroom Management system priority queue, users receive notifications in Cloud UX.

Selecting a Priority Wire notification opens the wire story directly in the Cloud UX Rundown App.

### Secure Kafka connection

The connection between the Newsroom Sync Agent and MediaCentral Search can now be secured.

For configuration details, see **“Configuring Kafka”** in the *Newsroom Management Setup and Configuration Guide*.

---

## iNEWS Workstation

### New themes

iNEWS Workstation now includes two additional UI themes:
- **Light**
- **Dark**

These are available alongside the **Original** theme.

The Light and Dark themes provide a more modern look and feel, while the Original theme preserves the familiar user interface.

Note: For more information, see **“User Interface Themes”** in the *Getting Started* chapter of the *Newsroom Management User Guide*.

### Newer Chromium framework

iNEWS Workstation is updated to **Chromium Embedded Framework (CEF) version 116**.

### Identity Provider (IDP) support

Beginning in version 2024.10, two new feature toggles are introduced in `/site/dict/features`:
- **F_LONG_USERNAME**
- **F_EXTERNAL_IDP**

When enabled, these allow user names up to **255 characters** for Identity Provider (IDP) support.

Note:
- Clients or Community servers earlier than 2024.10 will not function correctly with long user names
- Older systems may be unable to connect when IDP is enabled

For more information, see:
- **“Utility Features Dictionary”**
- **“Configuring IDP for User Authentication”**  
in the *Newsroom Management Setup and Configuration Guide*.

### New shortcuts

New keyboard shortcuts are available when viewing content in the Browser window to improve navigation and zoom efficiency.

For details, see **“Browser Shortcuts”** in the *Newsroom Management User’s Guide*.

---

## User Security

### Okta and Keycloak support

Newsroom Management now supports Identity Providers such as **Okta** and **Keycloak** via an OAuth workflow when using subscription licensing.

This includes support for user names up to **255 characters** within the Newsroom database and system communications.

Note:
- External Identity Providers prevent older clients or Community servers from connecting to the Newsroom Management Server

### More secure connections

Additional certificate validation is supported to ensure more secure connections.

This feature is:
- Enabled by default via the installer
- Configured with a default certificate

Users are strongly advised to replace the default certificate with one issued by their organisation.

This feature can be disabled by:
- Unchecking the **SSL** option during client installation, or
- Setting `VerifyServerCertificate` to `0` in the registry:

`Computer\HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Avid Technology\iNEWS`
