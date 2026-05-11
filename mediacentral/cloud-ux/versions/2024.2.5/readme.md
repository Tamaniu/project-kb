---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2024.2.5"
release-date: 01/02/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Installation and Prerequisites ™ Avid MediaCentral | Cloud UX ReadMe Version 2024.2.5 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Cloud-UX-v2024-Documentation Revision History Date Revised Changes Made November 14, 2024 Initial v2024.2.5 publication Contents Installation and Prerequisites Avid MediaCentral Cloud UX v2024.2.5 is a patch release that includes new features or fixes for issues found in the product following the initial software release. This feature-pack-only release requires a prior installation of MediaCentral Cloud UX v2024.2.x.
For details on the specific issues fixed in this release, see "Fixed in Version 2024.2.5" on page 4.
Updating the MediaCentral Cloud UX System Updating the MediaCentral Cloud UX System The steps required to install this patch on single-server configurations or clustered configurations are similar. Any variations for clustered systems are noted in the following process by a “cluster-only” identifier. If you are familiar with the process to install a new MediaCentral Cloud UX server, the following steps should look very familiar to you. As such, you can reference the Avid MediaCentral | Cloud UX Installation Guide for additional information on many of the topics referenced below.
The first three nodes in a MediaCentral Cloud UX cluster are known as control plane nodes. When you initially installed and configured the cluster, you were asked to define a “primary” control plane node.
When installing the patch on a cluster, you must execute all commands from this primary node.
The following upgrade process applies to both single and multi-site environments. There are no specific or custom steps required for a multi-zone configuration.
To install the MediaCentral Cloud UX patch:
1. Use a terminal application to log in to your single-server or primary node.
2. (cluster only) Identify your “primary” node.
The primary node is the only node in the cluster that includes the system configuration files at:
/etc/avid/config/. Select a node in your cluster and enter the following command to determine if the system configuration files are present on this node:
sudo ls /etc/avid/config If you are accessing your primary node, the command should list the configuration files that were used to deploy your original installation. For example, you might see:
auth.yaml cert.yaml site-key.yaml If the system reports that none of these files exist on your current server, repeat the above command on each cluster node until you identify the primary node.
3. Enter the following command to unmount anything from the /features directory:
sudo umount /features
4. Mount the Feature Packs ISO (mediacentral_feature_packs_<version>.iso) to the /features
directory on your single server or primary node.
The command to complete this task varies based on how you connected the ISO to your server. If, for example, you copied the ISO file directly to the server, you would use the following command to mount the ISO on the system:
sudo mount -o ro /<path>/mediacentral_feature_packs_<version>.iso /features For information on alternative methods to mount an ISO to a Linux directory, see “Mounting an ISO Image” in the Avid MediaCentral | Cloud UX Installation Guide.
5. Use the following command to deploy the updated features included in this release:
sudo avidctl platform deploy -i The script checks the /etc/avid/config/ directory on the local node to verify the existence of the system configuration files. If the script finds the configuration files, it reports the status of each file [OK]. If the script cannot find the files, it alerts you to the situation and provides you with an opportunity to abort the installation and resolve the issue.
> **Note:** If you are missing the configuration files, you are most likely installing a cluster and you are
attempting to complete the feature pack installation on the wrong node.
Updating the MediaCentral Cloud UX System
6. The script asks if you want to import features from the Feature Pack ISO.
a. Enter Y (or y) to import the updated feature packs from the ISO.
b. At the Path to Feature Packs prompt, press Enter to accept the default path of /features/feature-packs/.
> **Note:** You would only enter N (no) at this prompt if you wanted to use this script to redeploy the
feature packs for the same version of software that you are already running. You must answer yes when performing a software upgrade.
7. Next, you must determine which feature packs should be upgraded, installed, or removed.
The script prompts you with a series of yes or no questions. Each prompt is associated with a default value which is identified as a capital Y for yes or N for no. If the script determines that the feature pack is already installed, the default value is Y. If the feature pack is not installed, the default value is N. Do one of the following:
- Press the Enter key to accept the default value.
- Press Y (or y) to install the feature pack.
- Press N (or n) to skip or uninstall this feature pack.
If your existing installation includes a feature pack that you no longer want to use, you can enter N at the prompt to remove the feature pack from your existing installation.
The feature pack installation process begins. Be patient as this process can take some time.
8. After the installation is complete, you can use the following command to verify that the required
feature packs have been installed:
sudo helm ls The command should report 2024.2.5-v0002-G2d13afe as App Version for all upgraded components.
9. (recommended) Verify and if necessary, update your certificates.
As part of this upgrade process, Avid recommends that you verify the expiration dates of your deployed certificates. If you are nearing the certificate’s expiration date, you might want to take the opportunity to deploy a new certificate to avoid any potential connection issues for your users.
a. Verify your TLS certificate’s expiration date.
For more information, see “Verifying the SSL Certificate” and “Creating Certificate Files” in the Avid MediaCentral | Cloud UX Installation Guide.
b. Verify your Kubernetes certificate’s expiration date.
For more information, see “Understanding Kubernetes Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
Fixed in Version 2024.2.5 Fixed in Version 2024.2.5 Bug Number: SYN-1351. Due to a service-related timeout condition, the MediaCentral Sync app might be available in the Administrator Fast Bar, but attempts to access any of the tabs (Sync Groups, Sync Tasks, etc) leads to an error.
Fixed in Version 2024.2.4 Bug Number: SYN-1057. Although originally addressed in IPI-3659 for v2024.2.3, this release includes changes to address additional situations that were not covered in the original fix.
Fixed in Version 2024.2.3 Bug Number: CCUX-9969. When connecting Avid MediaCentral Cloud UX Router Control to Cerebrum using Probel or Evertz protocol, an internal error occurs and the configuration cannot be saved.
Bug Number: RCTR-2760. When including some wildcard characters or symbols such as asterisk ( * ) or minus ( - ) in a pill of type Any or Metadata in the Search app, the search might not return the expected results.
Bug Number: IPI-3659. MediaCentral Sync operations might create duplicate assets and media on the destination system if the task encounters inconsistent data between the Production Management database and the Media Indexer database. Large numbers of inconsistencies can lead to the creation of many duplicate assets.
Fixed in Version 2024.2.2 Bug Number: DEFI-6568, DEFI-6871. The Distributed Processing Status app might not display the view switching controls correctly if you dock or resize the app.
Bug Number: DEFI-6752. You cannot save changes in the Distributed Processing Status app (Coordinator Tools view) unless you refresh the user interface just prior to making the change.
Bug Number: RCTR-2751, IPI-3638. A slow resource leak in the job monitor process can result in MediaCentral Sync jobs hanging at the Remote Media Sync step.
Bug Number: SYN-202. If the Distributed Processing Status app (Coordinator Tools view) includes enough elements (Queues, Groups, or Workers) so that you must scroll down to see additional elements, you cannot drag a Worker from an on-screen Worker Group to an off-screen group. The UI does not allow drag+scroll.
Fixed in Version 2024.2.1 Bug Number: AWM-134. In the Publisher app, Audio drops off on Media Composer sequences that contain dissolves at the beginning.
Fixed in Version 2024.2.1 Bug Number: MA-6913. During show preparation, Rundown app users sometimes experience slow queue loads, rundowns failings to load all stories, or rundowns appearing empty for very large queues (900-1000 stories). This sometimes requires a page refresh in the Browser to resolve the issue.
Bug Number: MAESTRO-7241. When the "Use item metadata" option is disabled in the MediaCentral Cloud UX settings, it is not possible to edit Maestro News items inside Cloud UX.
Bug Number: MAESTRO-7250. The MediaCentral Cloud UX plugin is not communicating properly with the ENPS system. When a sequence is created using the Cloud UX Plugin, this sequence does not appear in the story inside the ENPS client.
Bug Number: MAM-19938. When you create an Asset Management audio-only shotlist, the default frame rate for video shotlists is applied.
Fixed in Version 2024.2.1