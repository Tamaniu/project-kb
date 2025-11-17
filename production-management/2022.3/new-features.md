---
product: MediaCentral Production Management
module: Production Management
version: 2022.3
patch_range: 2022.3.x
release_type: Feature Release
release_date: 2022-03-01
source_docs:
  - name: User Provided Source Text
    type: pasted
    location: chat
---

# MediaCentral Production Management 2022.3 – New Features

This section contains all new features for the 2022.3 release.  
It is also important to note that previously, MediaCentral Transfer Engine and Client had its own ReadMe.  
But, starting in the 2022.3 release, any MediaCentral Transfer features, improvements, fixes, and limitations are now included in this ReadMe.

---

## Production Management Engine Compatibility with Subscription Licensing

In this release, Production Management has improved compatibility with subscription licensing.  
Note - The licensing of “classic” clients is unchanged.

---

## Support for macOS 12 Monterey

Production Management macOS Client components (e.g., Interplay Access 2022.3, Transfer Client 2022.3, and Media Indexer Client 2022.3) now support macOS 12.x Monterey.

---

## Interplay Web Services

The following improvements for Interplay Web Services have been made in this release:

l (CERT-611) We have discovered and fixed an issue where sensitive information about application configuration is accessible unauthenticated on certain URLs.

l (CERT-696) The tomcat server in Interplay Web Services has been upgraded to mitigate cve#.

---

## Media Indexer (Windows only)

Media Indexer Filtering Avid NEXIS Notifications Improvement (SAK-1446)  
Media Indexer was not filtering out redundant Avid NEXIS notification messages causing timed out and upstream errors.

---

## Transfer Engine

Enabled Functionality to Set System Data Timecode (CCUX-4973, IPI-3278).  
We have added functionality to set the System Data Timecode.  
By default, this functionality is disabled.  
The feature can be enabled by setting the insertSystemItemTimecode toggle to On.

---

## Updated Launcher Screen with Removal of Cloud Remote

The MediaCentral Production Management launcher screen has been updated to account for the removal of Cloud Remote.  
With this update, there is a new workflow for installing Production Management v2022.3. – see “To install Production Management” in the PDF

---
