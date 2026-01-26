# New Features in MediaCentral | Newsroom Management 2023.3

## Newsroom Management Server

### Ubuntu operating system

This version of Newsroom Management Server is supported only on **Ubuntu 22.04 LTS**.

The security concern with the root user is removed because it is disabled by default.  
The `sudo -i` command is now used where `su` was previously required to raise permission levels, or alternatively `sudo` can be prepended to commands to raise permissions.

### vaultctl

Umanager and dbmanager are now securely managed by **vaultctl**.

After setting up the server and importing the database, you must manually create these two accounts using vaultctl.

Note: These two accounts are not available to manage under the user manager in iNEWS Workstation.

### UEC flags

The Wires server now accepts stories with production cues and **UEC flags** in all applicable fields.
