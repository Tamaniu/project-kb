# New Features in MediaCentral | Newsroom Management 2022.3

## Data Receiver

The Data Receiver released in this version includes XSL/SFC files to support
NewsML-G2 XML files from AP’s new Media API feed.

For more information, see:
- Appendix B of the MediaCentral | Data Receiver Installation and Administration Guide
- “The Wire Distribution Story” in Chapter 12 of the MediaCentral | Newsroom Management Setup and Configuration Guide

## Flex Licensing

This version introduces the following change in MediaCentral | Flex Licensing:

- COM sessions are no longer restricted.

## External Users (LDAP)

The following connections now support external users (LDAP):

- FTP / FTPS
- RXNET

Reference: IN-7056

## Homepage & Bookmarks

Newsroom Management now supports Homepage and Bookmarks from Microsoft Edge.

Previously, Homepage and Bookmarks were sourced from Microsoft Internet Explorer,
which is now end-of-life.

Two new registry keys have been introduced to enable Homepage and Bookmarks
from other browsers such as Google Chrome:

- PreferencesFile
- BookmarksFile

Registry location:

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Session Manager\Environment

For more information, see:
- “Environment Variables (Registry Values)” in Appendix D of the MediaCentral | Newsroom Management Setup and Configuration Guide

Reference: IN-6956

## Apache

This version updates components previously running:

- Apache Log4j v1.x
- Apache Log4j v2.17.0

to:

- Apache Log4j v2.17.1

For additional details, see:
- Avid Apache Log4j Security Assessment on the Avid Knowledge Base

Note:
- Telnet and SNMP services are disabled in new installations
- Avid recommends disabling these services in existing systems
