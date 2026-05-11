---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2025.10.1"
release-date: 01/10/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Installation and Prerequisites ™ Avid MediaCentral | Cloud UX ReadMe Version 2025.10.1 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Cloud-UX-v2025-Documentation Revision History Date Revised Changes Made December 8, 2025 Initial v2025.10.1 publication Contents Installation and Prerequisites Avid MediaCentral Cloud UX v2025.10.1 is a patch release that includes new features or fixes for issues found in the product following the initial software release. Patch releases are cumulative and include all of the updates found in prior patch releases of the same series. This feature-pack-only release requires a prior installation of MediaCentral Cloud UX v2025.10.x.
For details on the specific issues fixed in this release, see "Fixed in Version 2025.10.1" on page 4.
New Features in MediaCentral Cloud UX 2025.10.1 New Features in MediaCentral Cloud UX 2025.10.1 The following features are new for this release.
Distributed Processing Assigning Workers to Groups When working in the Distributed Processing Workers app, you can now drag and drop multiple workers to a different Worker Group. Prior to this update, you could drag and drop only one worker at a time.
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
5.
Use the following command to deploy the features included in this release:
sudo avidctl platform deploy --skip-feature-pack-import -i The script checks the Kubernetes Config Store to verify the existence of the system configuration files. If the script finds the configuration files, it reports the status of each file [OK]. If the script cannot find the files, it alerts you to the situation and provides you with an opportunity to abort the installation and resolve the issue.
When you use the --skip-feature-pack-import switch, the script suppresses the "import features" prompt. You are not required to import the feature packs because that process was completed as part of step 4.
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
sudo helm ls The command should report 2025.10.1-v0008-G2ec02dd as App Version for all upgraded components.
8. (recommended) Verify and if necessary, update your certificates.
As part of this upgrade process, Avid recommends that you verify the expiration dates of your deployed certificates. If you are nearing the certificate’s expiration date, you might want to take the opportunity to deploy a new certificate to avoid any potential connection issues for your users.
a. Verify your TLS certificate’s expiration date.
For more information, see “Verifying the SSL Certificate” and “Creating Certificate Files” in the Avid MediaCentral | Cloud UX Installation Guide.
b. Verify your Kubernetes certificate’s expiration date.
For more information, see “Understanding Kubernetes Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
Fixed in Version 2025.10.1 Fixed in Version 2025.10.1 Distributed Processing Bug Number: SYN-2621, SYN-2624. You cannot cancel, pause or change the priority of a Distribute Processing job through the MediaCentral Cloud UX Process app. If you attempt to do so, MediaCentral Cloud UX displays a "Can not perform operation on job" error after a short delay.
Media Analytics Gateway Bug Number: MAM-21406. The maximum delay of the provider job query is not respected and thus the delay is growing indefinitely. Completing Media Analytics jobs might take an extremely long time.
Process App Bug Number: RCTR-3155. You cannot create new favorites in the Process app. The Create a New Favorite action fails without any message.
Search App Bug Number: RCTR-3148. After adding markers to an Avid Production Management asset, you cannot see these markers in the Timeline view of the In-Line Hits window.
> **Note:** Although the markers do not appear in In-Line Hits, you can view the markers in the Storyboard tab,
and you can continue to use the Search app to find the marker text.
Wolftech News Bug Number: None. MediaCentral Cloud UX v2025.10.0 includes a version of the wolftech-workflow- engine component that is incompatible with the other Wolftech components in this release. This update installs the correct version of the wolftech-workflow-engine.
Fixed in Version 2025.10.1