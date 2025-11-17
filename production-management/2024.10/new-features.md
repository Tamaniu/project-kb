---
product: MediaCentral Production Management
module: Production Management
version: 2024.10
patch_range: 2024.10.x
release_type: Feature Release
release_date: 2024-10
source_docs:
  - name: User Provided Source Text (2024.10)
    type: pasted
    location: chat
---

# MediaCentral Production Management 2024.10 – New Features

All wording below is reproduced *exactly* as provided.

---

## End of Support Announcement for macOS 12.x (Monterey)

Production Management v2024.10 is the last release to support macOS 12.x (Monterey). Any organizations that are still using this version of macOS should begin to think about an OS update. In some cases, this update could have an impact to hardware as not all Mac hardware supports the latest versions of macOS.

---

## Interplay Administrator - When Connecting to MediaCentral Cloud UX v2023.7:

The MediaCentral Search Connector section of the tool has been updated to include user interface changes that vary, depending on your version of MediaCentral Cloud UX.

**When Connecting to MediaCentral Cloud UX v2023.7:**

v2023.7.0 of the Configuration section of the tool included a check box that allowed you to Relax Asset Visibility for nested assignments. v2023.7.1 replaced this button with a menu that allowed for two different options: Relax or Restrict. v2024.10 adds a new Retain option to this menu.

The following list describes each of these options in more detail:

- Restrict asset visibility for nested assignments  
Only those locations that are not nested within a "No Access" assignment or that are not nesting a No Access assignment are visible by default. The Restrict option is the equivalent of disabling the Relax check box in v2023.7.0.

- Relax asset visibility for nested assignments  
The Search app can return results for assets found in sub-folders, whose parent folder is assigned Read access or higher. That is true even if the sub-folder is configured for No Access. In this case the parent folder could either refer to the direct parent, or any upper-level folder in the tree structure (excluding the global role set on AvidWG).

- Retain asset visibility for nested assignments  
This option correctly respects the folder permissions on a per-user basis and provides the user with consistent results across the Browse app, Search app, and Interplay Access. This is the preferred option for any MediaCentral Cloud UX system running v2023.12 and later.

When you initially enable the Asset Visibility feature, you must perform a Resync to add the location data to the index. If you have already enabled the feature and you want to alter the Restrict/Relax/Retain setting, you are not required to reindex.

The Relax feature requires v2023.7 or later of both MediaCentral Cloud UX and the Production Management client (for access to the Interplay Administrator). The Retain option requires MediaCentral Cloud UX 2023.12 or later.

---

## Interplay Administrator - When Connecting to MediaCentral Cloud UX v2024.10

When Connecting to MediaCentral Cloud UX v2024.10:  
If you connect Interplay Administrator v2024.10 to a MediaCentral Cloud UX v2024.10 system, the user interface updates.

Note the following changes:

- The Assign section of the tool is removed. The avidctl platform config pam script is used to define this information.

- The Configuration section allows you to enable or diable Asset Visibility. If you select the Enable User Permissions check box, the system functions as if the Retain option (described above) is enabled.

- Formally available in the Property selection tab, the Update Data Type Definitions check box has been relocated to this screen.

- The Clean-up setting allows you to reset the search connector settings back to its original state (when you completed the initial Resync). This button might be useful in the event that a setting is accidentally changed or misconfigured on the MediaCentral Cloud UX system postdeployment.

- The Status area of the tool (left) now includes Production Server and Connected User values. The Connected User is the user that you define when running the avidctl platform config pam script on the MediaCentral Cloud UX system.

**Note** - You must use v2024.10 of the Interplay Administrator to configure the v2024.10 MediaCentral Cloud UX Search Connector. This is true even if you are connecting MediaCentral Cloud UX v2024.10 to a 2023.7 Production Management system.

---
