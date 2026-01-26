# New Features in MediaCentral | Newsroom Management 2023.7

## iNEWS Workstation

### New, more extensive spellcheck support

iNEWS Workstation now has integrated spellcheck from the Windows environment.  
Any language supported by Microsoft Windows spellcheck can be used.

All languages configured in the Windows environment that support spellcheck are displayed under **Set Language**.

Note: Basic typing must be enabled as the required language feature for iNEWS Workstation to access Windows spellcheck.

### Clear channel on MOS drop

A new DWORD registry setting has been added:

ClearChannelOnMOSDrop

Registry location:

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment

This setting allows users to decide whether the channel is cleared when a MOS item is dragged and dropped onto a story in the Queue panel or the Story Form panel.

Set the value to 1 to enable clearing of the channel.  
The default behaviour preserves the channel when a MOS item is dropped.

### Topline messaging supports User Real Name feature

Users at sites employing generic user IDs can now see real user names in topline messaging at the iNEWS Workstation.

The system must be configured with the following setting in `/site/system`:

display_user_realname

When enabled:
- The user’s real name is displayed in received messages
- Real user names may be used to send messages directly

If duplicate real user names exist, the user ID is displayed instead.

Note:
- User Real Names are translated using locally connected system information
- User IDs must still be used when sending intersystem messages using a system name or IP address  
  (for example: userA@systemA or userA@10.11.12.13)

---

## Handling Grace Periods

### Grace period handling with subscription for logins and license consumption

If the MediaCentral Licensing server becomes unavailable for a short period, users and services may continue to establish new connections by logging into the Newsroom Management Server.

The grace period is extended to a maximum of 72 hours to ensure continued operation over weekends.

Note:
- Users must re-log in once the grace period expires
- Grace period authentication is provided by direct LDAP calls  
  External traits must be enabled for users and Kerberos authentication must be configured on the Newsroom Management Server during installation

