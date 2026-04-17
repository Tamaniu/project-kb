---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2024.10.2"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Installation and Prerequisites ™ Avid MediaCentral | Cloud UX ReadMe Version 2024.10.2 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Cloud-UX-v2024-Documentation Revision History Date Revised Changes Made January 28, 2025 Initial v2024.10.2 publication Contents Installation and Prerequisites Avid MediaCentral Cloud UX v2024.10.2 is a patch release that includes new features or fixes for issues found in the product following the initial software release. This feature-pack-only release requires a prior installation of MediaCentral Cloud UX v2024.10.x.
For details on the specific issues fixed in this release, see "Fixed in Version 2024.10.2" on page 6.
New Features in MediaCentral Cloud UX 2024.10.2 New Features in MediaCentral Cloud UX 2024.10.2 Publisher App The Publisher section of the Configuration Settings app includes the following updates:
Settings
  - The "Go to publisher backoffice" link opens a new browser tab and connects you to the
Wildmoka customer portal.
  - "Referer set in Wildmoka" check box allows you to configure this setting in MediaCentral
Cloud UX if the associated tenant in the Wildmoka customer portal is similarly configured.
- Proxy
  - After clicking the button to Start Local Tunnel, the system responds with a new confirmation
message: “Tunnel up and running: All sockets created”
  - When the tunnel is stopped, the system replies with the following: Tunnel Service Stop
requested. Tunnel stopped.
System Updates
  - The system limits the number of sockets opened by the tunnel service to prevent exhaustion.
  - The tunnel service now automatically restarts in the event of a pod crash or restart.
Rules Editor: Action Media Analytics This release adds the option to specify the name of transcripts created by a Media Analytics action.
> **Note:** The Result Name field has been added for future use. The Transcript tab does not evaluate the
entered Result Name yet.
If you already used a Media Analytics action in a rule and you open the rule, the following Action Specification(s) Changed message informs you that a new field Result Name has been added to the action specification:
New Features in MediaCentral Cloud UX 2024.10.2 Click OK to close the message. The Action Specification(s) Changed message will not be shown again.
For more information about the Media Analytics feature, see "Defining a Media Analytics Action" in the Avid MediaCentral | Cloud UX Installation Guide.
Rundown App Feature Description New display toggle A new option appears in the App menu that allows either:
option in App menu
- Show Queue Name on Tab - when enabled, the names of queues are
displayed on corresponding tabs.
- Show Story Title on Tab - when enabled, the title of the currently selected
story is displayed on the corresponding tab.
Retain display setting The Rundown app now maintains whether a user has opted to show or hide the across user sessions story form across user sessions. The keyboard shortcut for the Show/Hide Story Form option (in the App menu) is Shift+Ctrl+F.
The Rundown app also maintains the settings for displaying the name of the queue or story title on tabs across user sessions.
User Management App: Entitlement for Avid Ada Transcribe The User Management app now provides an entitlement "Avid Ada Transcribe RW Access" (technical name: ent_mcs_perm_ena_stt) to enable transcript creation and editing features on a group basis.
> **Note:** The entitlement has been added for future use. The Transcript tab does not evaluate the entitlement
yet.
New Features in MediaCentral Cloud UX 2024.10.1 Audit Logging This release adds information about Media Analytics Engine jobs (inclusive, but not limited to Transcribe) to the audit logs. These logs include information about quota usage (if applicable), the user that started the job, the asset name or ID, and more.
For more information about this feature, see "Configuring Audit Logging" in the Avid MediaCentral | Cloud UX Installation Guide.
New Features in MediaCentral Cloud UX 2024.10.1 Chat App: Muting and Unmuting Notifications By default, MediaCentral Cloud UX displays a pop-up notification whenever you receive a new message — similar to those produced through the Notifications app. You can keep these notification messages enabled, or mute them through the Chat app context menu.
To mute notifications:
- Click the context menu and select the Mute option.
A mute icon appears at the top of the app to indicate that notifications will not be displayed.
To unmute notifications:
- Click the context menu and select the Unmute option.
The bell icon is removed from the app.
Updating the MediaCentral Cloud UX System The steps required to install this patch on single-server configurations or clustered configurations are similar. Any variations for clustered systems are noted in the following process by a “cluster-only” identifier. If you are familiar with the process to install a new MediaCentral Cloud UX server, the following steps should look very familiar to you. As such, you can reference the Avid MediaCentral | Cloud UX Installation Guide for additional information on many of the topics referenced below.
The first three nodes in a MediaCentral Cloud UX cluster are known as control plane nodes. When you initially installed and configured the cluster, you were asked to define a “primary” control plane node.
When installing the patch on a cluster, you must execute all commands from this primary node.
The following upgrade process applies to both single and multi-site environments. There are no specific or custom steps required for a multi-zone configuration.
To install the MediaCentral Cloud UX patch:
1. Use a terminal application to log in to your single-server or primary node.
2. (cluster only) Identify your “primary” node.
The primary node is the only node in the cluster that includes the system configuration files at:
/etc/avid/config/. Select a node in your cluster and enter the following command to determine if the system configuration files are present on this node:
sudo ls /etc/avid/config If you are accessing your primary node, the command should list the configuration files that were used to deploy your original installation. For example, you might see:
auth.yaml cert.yaml site-key.yaml Updating the MediaCentral Cloud UX System If the system reports that none of these files exist on your current server, repeat the above command on each cluster node until you identify the primary node.
/features
3. Enter the following command to unmount anything from the directory:
sudo umount /features /features
4. Mount the Feature Packs ISO (mediacentral_feature_packs_<version>.iso) to the
directory on your single server or primary node.
The command to complete this task varies based on how you connected the ISO to your server. If, for example, you copied the ISO file directly to the server, you would use the following command to mount the ISO on the system:
sudo mount -o ro /<path>/mediacentral_feature_packs_<version>.iso /features For information on alternative methods to mount an ISO to a Linux directory, see “Mounting an ISO Image” in the Avid MediaCentral | Cloud UX Installation Guide.
5. Use the following command to deploy the updated features included in this release:
sudo avidctl platform deploy -i /etc/avid/config/ The script checks the directory on the local node to verify the existence of the system configuration files. If the script finds the configuration files, it reports the status of each file [OK]. If the script cannot find the files, it alerts you to the situation and provides you with an opportunity to abort the installation and resolve the issue.
> **Note:** If you are missing the configuration files, you are most likely installing a cluster and you are
attempting to complete the feature pack installation on the wrong node.
6. The script asks if you want to import features from the Feature Pack ISO.
a. Enter Y (or y) to import the updated feature packs from the ISO.
b. At the Path to Feature Packs prompt, press Enter to accept the default path of /features/feature-packs/.
> **Note:** You would only enter N (no) at this prompt if you wanted to use this script to redeploy the
feature packs for the same version of software that you are already running. You must answer yes when performing a software upgrade.
7. Next, you must determine which feature packs should be upgraded, installed, or removed.
The script prompts you with a series of yes or no questions. Each prompt is associated with a default value which is identified as a capital Y for yes or N for no. If the script determines that the feature pack is already installed, the default value is Y. If the feature pack is not installed, the default value is N. Do one of the following:
- Press the Enter key to accept the default value.
- Y y)
Press (or to install the feature pack.
- N n)
Press (or to skip or uninstall this feature pack.
If your existing installation includes a feature pack that you no longer want to use, you can enter N at the prompt to remove the feature pack from your existing installation.
The feature pack installation process begins. Be patient as this process can take some time.
8. After the installation is complete, you can use the following command to verify that the required
feature packs have been installed:
sudo helm ls Limitations in 2024.10.2 The command should report 2024.10.2-v0016-G7c35a6d as App Version for all upgraded components.
9. (recommended) Verify and if necessary, update your certificates.
As part of this upgrade process, Avid recommends that you verify the expiration dates of your deployed certificates. If you are nearing the certificate’s expiration date, you might want to take the opportunity to deploy a new certificate to avoid any potential connection issues for your users.
a. Verify your TLS certificate’s expiration date.
For more information, see “Verifying the SSL Certificate” and “Creating Certificate Files” in the Avid MediaCentral | Cloud UX Installation Guide.
b. Verify your Kubernetes certificate’s expiration date.
For more information, see “Understanding Kubernetes Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
Limitations in 2024.10.2 Publisher App Bug Number: BSI-35499. The final output of assets that are published with preroll or postroll effects do not include the preroll or postroll data.
Workaround: Publish the asset through MediaCentral Cloud UX, and then add the preroll or postroll effects through the Wildmoka website.
Fixed in Version 2024.10.2 Asset Editor Bug Number: PLAD-941. If you enable the "Allow folder selection" option in the Configuration Settings app (Modules > Newsroom Management), the Asset Editor Metadata tab might display an "Asset is not loaded" message after opening a sequence.
Avid Ada Transcribe Bug Number: SYN-1273. Transcribe jobs might fail with a “504 Gateway timeout” error when there is increased demand on the service.
Bug Number: SYN-1479. Segmented master clips (master clips that are associated with multiple individual files on storage) might fail the transcribe process.
Distributed Processing Bug Number: IPI-3780. The avid-mediaengine-coordinator-dp service might hang and cause Avid Ada Transcribe jobs to hang or fail.
MediaCentral Acquire Bug Number: CCUX-10437. When a recording is scheduled, an automatic pre-roll time is added. As a result, you cannot select the time slot immediately before a future recording in the Channels View to schedule a new recording.
Fixed in Version 2024.10.1 Bug Number: CCUX-10664. The router control sources in the New Recording schedule list were previously displayed in a random order, making them inconsistent with the alphabetical order in the grid.
MediaCentral Sync Bug Number: AL-3470. If you re-sort the Sync Tasks - Overview tab by the Last Synchronized column, the contents of the tab become hidden from view.
Rundown App Bug Number: MA-7182. Previously, pasting text into a segment with closed-captioning (CC) text, and then making that pasted text also CC would not properly update the segment duration.
System Bug Number: PRS-1662, MTTO-4625. 3rd party applications that use Avid Platform Connector API for .Net v3.12.2 are blocked from connecting to the Platform. MediaCentral Cloud UX 2024.10 introduced a change to the MediaCentral Gateway certificate to prevent it from expiring. This change is the source of the downstream API connection issue.
User Management Bug Number: ICS-10372. The process of importing groups into the User Management app might result in a "Groups selection is not available with the configured identity provider" error for organizations with very large Active Directory structures.
Fixed in Version 2024.10.1 Browse App Bug Number: JP-9407. If you attempt to rename a top-level folder (such as Projects, or Catalogs) in the Production Management database, the Browse app becomes unresponsive because it is unable to handle this illegal request.
MediaCentral Sync Bug Number: ICI-4932, IPI-3733. After a successful MediaCentral Sync job, the File Path (File Locations tab) in Interplay Access might show the source file path and not the correct path for the destination system.
Multi-Site Bug Number: PLAD-932. If you configure the User Mapping options in the Multi-Site Settings app to "Any > Map by Name", then each connected user consumes a license on both the local and remote site. This issue breaks the original design in which a license is consumed on the local site only.
System Bug Number: ASSETS-4532, ASSETS-4580. It is possible that the pam-ctc service can stop communicating with the Production Management Engine. When this happens, the Production Management database might disappear from apps such as Browse or Search.
Fixed in Version 2024.10.1 Bug Number: MAM-20666. If the Media Analytics Gateway cannot contact a provider service such as Avid Transcribe services, the Azure Video Indexer, or other, then it sends duplicate messages (roughly every 10 seconds). This disruption in connectivity can cause jobs to either fail or succeed with unusable (corrupted) results.
Bug Number: JP-9442. The area allocated to the Fast Bar (or above the Fast Bar) might appear 2-3x larger in height than normal.
Bug Number: PLAD-933. A permissions issue might block the ability to add custom icons to the server, as described in the process for "Adding Custom Icons" in the Avid MediaCentral | Cloud UX Install Guide.
Fixed in Version 2024.10.1