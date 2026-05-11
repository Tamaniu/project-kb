---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2025.6.1"
release-date: 01/06/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Installation and Prerequisites ™ Avid MediaCentral | Cloud UX ReadMe Version 2025.6.1 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Cloud-UX-v2025-Documentation Revision History Date Revised Changes Made July 24, 2025 Initial v2025.6.1 publication Contents Installation and Prerequisites Avid MediaCentral Cloud UX v2025.6.1 is a patch release that includes new features or fixes for issues found in the product following the initial software release. Patch releases are cumulative and include all of the updates found in prior patch releases of the same series. This feature-pack-only release requires a prior installation of MediaCentral Cloud UX v2025.6.x.
For details on the specific issues fixed in this release, see "Fixed in Version 2025.6.1" on page 4.
New Features in MediaCentral Cloud UX 2025.6.1 New Features in MediaCentral Cloud UX 2025.6.1 Wolftech News Top Story The Wolftech News CTC can now return the Top Story flag for Wolftech News stories. This means that you can now search for this attribute in the Search app, and display this property in a column in the Display Options menu of the Browse and Search apps.
If you have already indexed your Wolftech News system, you must perform a Metadata Namespace and "Entities > Stories and pitches" resync through the Wolftech Integration app to update the local index with the Top Story data for existing assets.
Change Event Agent Additionally, the Wolftech Change Event Agent now supports the "IsTopStory"flag for Wolftech News stories.
Updating the MediaCentral Cloud UX System The steps required to install this patch on single-server configurations or clustered configurations are similar. Any variations for clustered systems are noted in the following process by a “cluster-only” identifier. If you are familiar with the process to install a new MediaCentral Cloud UX server, the following steps should look very familiar to you. As such, you can reference the Avid MediaCentral | Cloud UX Installation Guide for additional information on many of the topics referenced below.
The first three nodes in a MediaCentral Cloud UX cluster are known as control plane nodes. When you initially installed and configured the cluster, you were asked to define a “primary” control plane node.
When installing the patch on a cluster, you must execute all commands from this primary node.
The following upgrade process applies to both single and multi-site environments. There are no specific or custom steps required for a multi-zone configuration.
> **Note:** If you experience any issues with the MediaCentral Cloud UX user interface directly after upgrading
your servers, you might try clearing the browser cache on your local workstation as an initial troubleshooting step.
To install the MediaCentral Cloud UX patch:
1. Use a terminal application to log in to your single-server or primary node.
2. (cluster only) Identify your “primary” node.
The primary node is the only node in the cluster that includes a service-host-inventory.json file at /etc. Select a node in your cluster and enter the following command to determine if the system configuration files are present on this node:
sudo ls /etc/ If you see the file listed, you've found the primary node. If you do not see the file, issue the command on each of your cluster nodes until you find the primary.
3. Copy the Feature Pack ISO to a temporary location on your server.
For assistance with this process, see "Copying Software to the MCUX Server" in the Avid MediaCentral Cloud UX | Installation Guide.
Updating the MediaCentral Cloud UX System
4. Enter the following command to import the updates included in this release:
sudo avidctl platform import /<path>/mediacentral_feature_packs_ <version>.iso The import process automatically mounts and dismounts the ISO to your system.
5. Use the following command to deploy the features included in this release:
sudo avidctl platform deploy --skip-feature-pack-import -i The script checks the Kubernetes Config Store to verify the existence of the system configuration files. If the script finds the configuration files, it reports the status of each file [OK]. If the script cannot find the files, it alerts you to the situation and provides you with an opportunity to abort the installation and resolve the issue.
When you use the --skip-feature-pack-import switch, the script suppresses the "import features" prompt. You are not required to import the feature packs because that process was completed as part of step 3.
6. Next, you must determine which feature packs should be upgraded, installed, or removed.
The script prompts you with a series of yes or no questions. Each prompt is associated with a default value which is identified as a capital Y for yes or N for no. If the script determines that the feature pack is already installed, the default value is Y. If the feature pack is not installed, the default value is N. Do one of the following:
- Press the Enter key to accept the default value.
- Y y)
Press (or to upgrade or install the feature pack.
- N n)
Press (or to skip or uninstall this feature pack.
If your existing installation includes a feature pack that you no longer want to use, you can enter N at the prompt to remove the feature pack from your existing installation.
The feature pack installation process begins. Be patient as this process can take some time.
7. After the installation is complete, you can use the following command to verify that the required
feature packs have been installed:
sudo helm ls The command should report 2025.6.1-v0019-Gc5aa913 as App Version for all upgraded components.
8. (recommended) Verify and if necessary, update your certificates.
As part of this upgrade process, Avid recommends that you verify the expiration dates of your deployed certificates. If you are nearing the certificate’s expiration date, you might want to take the opportunity to deploy a new certificate to avoid any potential connection issues for your users.
a. Verify your TLS certificate’s expiration date.
For more information, see “Verifying the SSL Certificate” and “Creating Certificate Files” in the Avid MediaCentral | Cloud UX Installation Guide.
b. Verify your Kubernetes certificate’s expiration date.
For more information, see “Understanding Kubernetes Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
Fixed in Version 2025.6.1 Fixed in Version 2025.6.1 Action Monitor Bug Number: MAM-21127. The Action Monitor reads outstanding Kafka messages into memory before processing, which is currently unbounded. This may cause the service to crash with OutOfMemory errors.
Asset Editor Bug Number: PLAD-995. Assets created through some 3rd party systems might appear offline in the MediaCentral Cloud UX Media Viewer after upgrading to v2025.6.0.
Avid Ada Transcribe Bug Number: RCTR-3036. In certain error cases, the Avid ML worker correctly catches the error but fails to report it into Job Monitor. In the Process app, the ML worker job therefore is still shown as RUNNING instead of FAILED.
Bug Number: SYN-2252. Transcribe fails if a multi-resolution media has its Current Video Resolution set to Proxy upon check-in.
Cloud UX Middleware Services Bug Number: MAM-21103. When using the MediaCentral Panel in Media Composer for a MediaCentral Cloud UX environment that is configured for OpenID provider (Okta) authentication, you cannot apply actions via the Actions menu: Instead of applicable actions, the menu shows a “The request to collect available actions has failed” error message.
Installation and Configuration Bug Number: MTTO-4775. Upgrading from MediaCentral Cloud UX v2023.7.22 or later v2023.7.x patch release to v2024.10.8 fails due to a duplicate key error in the IAM database.
Media Analytics Engine Bug Number: MAM-21128. When using the MediaCentral Panel in Media Composer for a MediaCentral Cloud UX environment that is configured for OpenID provider (Okta) authentication, Create Transcript actions fail with a “Failed to create transcript” error.
MediaCentral Hoverscrub Bug Number: PLAD-994. During normal operation of Hoverscrub, intermediate mp4 files are stored in the Gluster cache. However, the avid-webproxy-generator is failing to delete these files automatically which can lead to unnecessary disk usage.
Avid recommends that you run the avidctl tools playback-cache-clear command to clear the player cache once after installing this update. You are not required to run this command as part of any regular maintenance. For additional information on this command, see "Clearing the Player Cache" in the Avid MediaCentral | Cloud UX Installation Guide.
Fixed in Version 2025.6.1 MediaCentral Panel for 3rd Party Creative Tools Bug Number: AL-3798. Performing an Ingest Sequence with Trimmed option selected causes a "The process 'Adobe AAF CheckIn: <sequence name>' reached final state FAILED" error to appear in Notifications and in the Process App, as the ingest job fails to check-in the sequence and instead only checks the media into Production Management.
Platform GCP Storage Connector Bug Number: MAM-21034. Heavy load can cause failed Kubernetes readiness probes in the Platform GCP Storage Connector which makes the service unreachable. The fix changes the connectivity probe inside the service to be executed in the background and the actual health check simply returns the current status for that.
Rules Editor / Rules Engine Bug Number: MAM-21104. Change events for Asset Management EDLs are not processed.
Bug Number: PRS-3858. When you try to open the Rules Simulator an “Unable to open rules-engine- simulator” error is shown in the Rules Editor app.
Search App Bug Number: ASSETS-4956. If you save a Search favorite that contains a Wolftech News taxonomy field (such as Genres) and you include a taxonomy value with the search, then the search pill displays a Loading Failed message when reopening that favorite.
Wolftech Integration App Bug Number: ASSETS-4927. The Traffic panel displays invalid error messages for configuration-related change events.
Fixed in Version 2025.6.1