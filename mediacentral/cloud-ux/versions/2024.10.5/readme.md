---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2024.10.5"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

™ Avid MediaCentral | Cloud UX ReadMe Version 2024.10.5 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Cloud-UX-v2024-Documentation Revision History Date Revised Changes Made March 31, 2025 Initial v2024.10.5 publication Contents New Features in MediaCentral Cloud UX 2024.10.1 10 Updating the MediaCentral Cloud UX System 10 Limitations in 2024.10.3 13 Limitations in 2024.10.2 13 Fixed in Version 2024.10.5 13 Fixed in Version 2024.10.4 14 Fixed in Version 2024.10.3 14 Fixed in Version 2024.10.2 16 Fixed in Version 2024.10.1 17 Installation and Prerequisites Installation and Prerequisites Avid MediaCentral Cloud UX v2024.10.5 is a patch release that includes new features or fixes for issues found in the product following the initial software release. This feature-pack-only release requires a prior installation of MediaCentral Cloud UX v2024.10.x.
To fully enable optimizations described in "Configuration Option for Large Sequences" below, you must also upgrade your Avid MediaCentral | Panel for 3rd Party Creative Tools software to v2024.10.1 or later.
You can upgrade the Panel software either before or after upgrading and reconfiguring the MediaCentral Cloud UX system.
As described in "Fixed in Version 2024.10.5" on page 13, PLUS-1867 effects the integration with MediaCentral Production Management. To fully enable this fix, you must install both MediaCentral Cloud UX v2024.10.5 and the Production Client v2024.10.2 or later. After installing these two updates, you are not required to perform any additional steps to further enable the fix.
For details on the specific issues fixed in this release, see "Fixed in Version 2024.10.5" on page 13.
New Features in MediaCentral Cloud UX 2024.10.5 Platform GCP Storage Connector The Platform GCP Storage Connector now uses the native low-level API to improve upload and download operations for a single file. The following methods are used:
XML API multipart upload
- Sliced object download
- Before, only sequential upload was supported.
MediaCentral Panel for 3rd Party Creative Tools Configuration Option for Large Sequences When you import a large or complex Media Composer sequence into Adobe Premiere Pro, MediaCentral Cloud UX might need to allocate a significant amount of system resources to the avid-pam-services Kubernetes pod. Avid sets the high-memory-limit of this pod to a value of 3GB by default. However, some complex sequences might require additional memory to successfully complete the import process.
MediaCentral Cloud UX includes a configuration option that allows you to increase the maximum memory allocation to this pod.
> **Note:** This process has no impact on working with large or complex sequence in the MediaCentral Cloud
UX Asset Editor. For more information on that topic, see "Playback of Simple and Complex Sequences" and "Sequence Size and Complexity" in the Avid MediaCentral | Cloud UX User's Guide.
> **Note:** Depending on your workflow, you might want to complete the following process during a
maintenance window to avoid any interruption of services to users of the MediaCentral Panel for 3rd Party Creative Tools.
New Features in MediaCentral Cloud UX 2024.10.3 To increase the memory allocated to the pod:
1. Open a terminal and connect to your single-server or primary node.
2. Enter the following command:
sudo avidctl platform config service-resources -n avid-pam-services -- limits-memory "<value>" Where <value> represents the maximum amount of memory that can be allocated to the avid- pam-services pod. For example, the following command allows for a maximum of 8GB.
sudo avidctl platform config service-resources -n avid-pam-services -- limits-memory "8Gi" As every organization's workflow is different, Avid cannot suggest a "correct" or maximum value.
Avid recommends that you slowly increase the limits-memory value and re-test your workflow after every adjustment. By slowly adjusting your configuration, you can ensure a smooth import workflow without sacrificing resources that could be better used by other system processes.
3. Redeploy your system to apply the configuration changes.
sudo avidctl platform redeploy For additional details on this command, see "Altering the Configuration" in the Avid MediaCentral | Cloud UX Installation Guide.
New Features in MediaCentral Cloud UX 2024.10.3 Avid Ada Transcribe Feature Description Preview Status Introduced in MediaCentral Cloud UX v2024.10 as a Tech Preview, this update provides additional functionality. As of 2024.10.3, Avid Ada Transcribe exits the Preview status.
For additional information on these features, see "Asset Editor: Transcript Tab" on the next page.
Updated model This release introduces a new data analysis model that is both more accurate and faster than the old model for MediaCentral Cloud UX nodes that include a GPU. When processing a transcribe task, the worker verifies if your server is equipped with a GPU. If detected, the "turbo" model is enabled automatically. If the installer does not detect a GPU, then the previous model is left in place.
The new model can transcribe assets roughly 3x faster than the original model for GPU equipped nodes. Due to the significant accuracy and performance increases available in this new model, Avid highly recommends that you provision an NVIDIA® GPU for any node that runs the Avid Ada Worker services.
PostgreSQL Avid uses a PostgreSQL database to store data related to Avid Ada processes. The Database v2024.10 installation process configured a single instance of the database on one node.
If your MediaCentral Cloud UX system is configured in a cluster, this update automatically deploys a second PostgreSQL pod for redundancy. If you are running your MediaCentral Cloud UX system on a single server and you have deployed the Avid Ada feature pack, the system does not deploy a second PostgreSQL pod.
New Features in MediaCentral Cloud UX 2024.10.3 Asset Editor: Transcript Tab Feature Description Removal of Preview flag Using the Transcript tab is now a fully supported feature. The "Preview" banner has been removed from the Transcript tab's header.
Overflow menu for If the width of the Asset Editor is reduced to a point at which all buttons cannot be buttons displayed at the same time, the Transcript tab responsively scales by hiding buttons from right to left. Appearing to the far right of the Transcript header the overflow button lets you access the hidden buttons in an overflow menu. By default, the Export Transcript and Create New Transcription buttons are shown in the overflow menu.
Transcript creation and Transcript creation and editing features – create transcript, recreate transcript, editing covered by rename transcript, rename speakers, add speakers, assign segment to another group entitlement speaker, edit transcript text – now are only enabled for users of a group that has the required entitlement "Avid Ada Transcribe RW Access" assigned. Without this entitlement, users can only view and download transcripts and copy transcript text.
> **Note:** If the Avid Ada Transcribe feature was already used with MediaCentral Cloud
UX, an administrator must re-issue the quota license "Avid Ada Transcribe" (originally named "MediaCentral | STT Base Package") to enable usage of the entitlement.
Set and change You can now provide a name for the transcript when you trigger transcript transcript name creation.
You can also change the name of any transcript subsequently.
New Features in MediaCentral Cloud UX 2024.10.3 Feature Description Edit mode changes Transcript editing features – rename speakers, add speakers, assign segment to another speaker, edit transcript text – now can only be applied after you enable Edit mode.
Export transcript You can now export a transcript to your local workstation. Supported formats are *.txt, *.csv and *.srt.
Copy text to clipboard You can copy transcript text – single word, sentences, individual segment, several segments – to the clipboard by using the shortcut Ctrl+C or the context menu.
Filtering by speaker You can now use the Speaker filtering control to display a subset of the segments shown in the Transcript tab. Only the segments of the speaker(s) you select will be shown, all segments of other speakers will be hidden.
Change and create Before, you could change and create speakers only for an individual segment.
speakers for multiple Now, you can assign several segments to another speaker and create a new segments speaker for several segments.
New Features in MediaCentral Cloud UX 2024.10.3 Feature Description Segment selection by You can now select a segment by right-click. This opens at the same time the right-click context menu with the options that can be applied to the segment.
Multi-selection of You can now select several segments at the same time (by using Shift+click to segments select a range or Ctrl+click to select individual segments). This allows you to copy several segments to the clipboard, assign several segments to another speaker, and create a new speaker for several segments at the same time.
Warning icon for partial If a transcript can only be partially displayed – transcript creation failed while transcripts portions of the transcript have already been shown on the Transcript tab – a warning icon is shown between the transcript selector and Find filter control on the Transcript tab toolbar. The tool-tip reads "Transcript error: partial transcript only".
Improved auto-update The auto-update behavior during transcript creation has been improved:
- For non-growing clips that are shorter than 1 hour, now the fully created
transcript is automatically shown once the transcribe job has completed.
You do not need to click the Reload button any longer.
When a transcript is created for a growing (EWC) clip or a non-growing clip
- that is longer than 1 hour, the Transcript tab display auto-refreshes, new
portions of the transcript are automatically shown in read-only mode.
When the transcript creation is finished, the Transcript tab now auto- refreshes and enables editing of the transcript. You do not need to click the Reload button any longer.
Improved messaging If the audio track for which the transcript has been created does not
- contain spoken words, a "No speech found" message is now shown.
- If a transcribe job fails before completion while portions of the transcript
are already shown on the Transcript tab , a message "The transcript creation failed" is shown for a short period of time on the Fast bar.
Improved error handling If the transcribe job for a growing (EWC) clip or a non-growing clip that is longer than 1 hour fails before completion, already displayed portions of the transcript are not deleted any longer but are now kept and can be edited.
Improved Reload Clicking the Reload button now preserves the currently selected transcript in the behavior Transcript tab. Before, the top-most transcript in the Transcript selector (usually A1) was selected again.
Simplified text You can now easily highlight text of a transcript segment by using the mouse highlighting cursor. Text highlighting by using Shift+click is deprecated.
Improved Find feature The Find feature has been refactored, search is now done on UI side. This includes the following improvements:
- The Find field now shows a Search icon.
New Features in MediaCentral Cloud UX 2024.10.3 Feature Description
- The Find feature interacts with the new Speaker filter:
  - If you already applied a Speaker filter, search is run in the Transcript
column of the filtered segments.
  - If you already used the Find field to search for words in the
Transcript, the search term, word count and word highlighting are cleared when you apply a Speaker filter.
- Clearing the search term in the Find filter by clicking the X button now also
clears the word count and word highlighting; you do not need to press Enter any longer.
Dynamic Range Support HDR (high dynamic range) refers to video media formats that support a wider range of brightness and color values than traditional SDR (standard dynamic range) media. This release adds the following features that allow users to more easily determine if they are working with HDR media, or not.
Feature Description Asset If your asset includes Dynamic Range metadata, that value (HDR, SDR, etc.) appears Editor: Metadata Tab in the Metadata tab.
Search App The Search app includes not only a searchable pill type called Dynamic Range, but also a Dynamic Range value that appears in the Display Options menu.
Dynamic Range values include:
- HDR (High Dynamic Range)
- SDR (Standard Dynamic Range)
- Mixed — Refers to an asset with multiple dynamically linked resolutions, where
at least one is an SDR resolution
- Unknown — Dynamic Range status is not available.
- Not Applicable — Asset does not support color space information
Avid supports displaying the Dynamic Range status for video master clips, and limited support for rendered video effects.
Working with Asset Management If your workflow includes MediaCentral Asset Management, then you must install the Asset Management v2024.10.0.2 hotfix, as well as the Asset Management CTC hotfix v2024.10.0.1.
For additional information, see the v2024.10.0.2 Avid MediaCentral | Asset Management ReadMe.
New Features in MediaCentral Cloud UX 2024.10.2 Working with Production Management If your workflow includes MediaCentral Production Management, you must be running Production Management v2024.10 and Interplay Access v2024.10.1 to enable these features.
For additional information, see the v2024.10.1 Avid MediaCentral | Production Management ReadMe.
Working with MediaCentral Ingest You can ingest assets through MediaCentral Ingest or the Ingest app without any modification to the HDR data by selecting a transparent passthrough option, such as Direct OP1a or any of the other workflows using the Generic MXF plugin.
Rules Editor: Action Media Analytics Using the Media Analytics action is now a fully supported feature. The "Preview" flag has been removed from the Media Analytics action.
New Features in MediaCentral Cloud UX 2024.10.2 Publisher App The Publisher section of the Configuration Settings app includes the following updates:
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
New Features in MediaCentral Cloud UX 2024.10.2 If you already used a Media Analytics action in a rule and you open the rule, the following Action Specification(s) Changed message informs you that a new field Result Name has been added to the action specification:
Click OK to close the message. The Action Specification(s) Changed message will not be shown again.
For more information about the Media Analytics feature, see "Defining a Media Analytics Action" in the Avid MediaCentral | Cloud UX Installation Guide.
Rundown App Feature Description New display toggle A new option appears in the App menu that allows either:
option in App menu Show Queue Name on Tab - when enabled, the names of queues are
- displayed on corresponding tabs.
- Show Story Title on Tab - when enabled, the title of the currently selected
story is displayed on the corresponding tab.
Retain display setting The Rundown app now maintains whether a user has opted to show or hide the across user sessions story form across user sessions. The keyboard shortcut for the Show/Hide Story Form option (in the App menu) is Shift+Ctrl+F.
The Rundown app also maintains the settings for displaying the name of the queue or story title on tabs across user sessions.
New Features in MediaCentral Cloud UX 2024.10.1 User Management App: Entitlement for Avid Ada Transcribe The User Management app now provides an entitlement "Avid Ada Transcribe RW Access" (technical name: ent_mcs_perm_ena_stt) to enable transcript creation and editing features on a group basis.
> **Note:** The entitlement has been added for future use. The Transcript tab does not evaluate the entitlement
yet.
Audit Logging This release adds information about Media Analytics Engine jobs (inclusive, but not limited to Transcribe) to the audit logs. These logs include information about quota usage (if applicable), the user that started the job, the asset name or ID, and more.
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
Updating the MediaCentral Cloud UX System
> **Note:** If you experience any issues with the MediaCentral Cloud UX user interface directly after upgrading
your servers, you might try clearing the browser cache on your local workstation as an initial troubleshooting step.
To install the MediaCentral Cloud UX patch:
1. Use a terminal application to log in to your single-server or primary node.
2. (cluster only) Identify your “primary” node.
The primary node is the only node in the cluster that includes the system configuration files at:
/etc/avid/config/.
Select a node in your cluster and enter the following command to determine if the system configuration files are present on this node:
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
6. The script asks if you want to import features from the Feature Pack ISO.
Y y) a. Enter (or to import the updated feature packs from the ISO.
b. At the Path to Feature Packs prompt, press Enter to accept the default path of /features/feature-packs/.
> **Note:** You would only enter N (no) at this prompt if you wanted to use this script to redeploy the
feature packs for the same version of software that you are already running. You must answer yes when performing a software upgrade.
Updating the MediaCentral Cloud UX System
7. Next, you must determine which feature packs should be upgraded, installed, or removed.
The script prompts you with a series of yes or no questions. Each prompt is associated with a default value which is identified as a capital Y for yes or N for no. If the script determines that the feature pack is already installed, the default value is Y. If the feature pack is not installed, the default value is N. Do one of the following:
- Press the Enter key to accept the default value.
- Press Y (or y) to install the feature pack.
- Press N (or n) to skip or uninstall this feature pack.
If your existing installation includes a feature pack that you no longer want to use, you can enter N at the prompt to remove the feature pack from your existing installation.
The feature pack installation process begins. Be patient as this process can take some time.
8. After the installation is complete, you can use the following command to verify that the required
feature packs have been installed:
sudo helm ls The command should report 2024.10.5-v0008-G3692107 as App Version for all upgraded components.
9. (recommended) Verify and if necessary, update your certificates.
As part of this upgrade process, Avid recommends that you verify the expiration dates of your deployed certificates. If you are nearing the certificate’s expiration date, you might want to take the opportunity to deploy a new certificate to avoid any potential connection issues for your users.
a. Verify your TLS certificate’s expiration date.
For more information, see “Verifying the SSL Certificate” and “Creating Certificate Files” in the Avid MediaCentral | Cloud UX Installation Guide.
b. Verify your Kubernetes certificate’s expiration date.
For more information, see “Understanding Kubernetes Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
To enable the Dynamic Range features:
If you want to use the Dynamic range features introduced in v2024.10.3, you must also complete the following steps.
1. Update the required software on your connected MediaCentral modules. For details, see:
  - The Avid MediaCentral | Production Management ReadMe v2024.10.1.
  - The Avid MediaCentral | Asset Management ReadMe v2024.10.0.2.
> **Note:** This requirement does not apply to MediaCentral Newsroom Management.
2. Update the Search Index to enable the Dynamic Range feature (as described in "New Features in
MediaCentral Cloud UX 2024.10.3" on page 3).
a. Update the index on the source MediaCentral modules.
- If you are connected to a Production Management system, complete a Resync of the
index using v2024.10.1 of the Interplay Administrator.
For details, see the v2024.10.1 Avid MediaCentral | Production Management ReadMe and "Starting the Search Agent" in the Avid MediaCentral Cloud UX Installation Guide.
Limitations in 2024.10.3
- If you are connected to an Asset Management system, update the index for that
module (if applicable).
For details, see the v2024.10.0.2 Avid MediaCentral | Asset Management ReadMe.
b. After the source modules have completed the resync / re-index process, complete a Mapping rebuild of the MediaCentral Cloud UX search index.
A Mapping rebuild deletes the index, recreates the data definition of the index, and then populates it with new data. If you execute a search during this rebuild, the Search app returns only partial results until the rebuild is complete.
To complete this process, refer to “Rebuilding an Index” in the “Using the Search Index Monitor App” chapter of the Avid MediaCentral | Cloud UX Installation Guide. For a Mapping rebuild, you must select the “Delete all existing data” option during the rebuild process.
Limitations in 2024.10.3 System Bug Number: PRS-3541. Avid Ada Transcribe jobs might fail due to an oversubscription of system resources - most specifically SeaweedFS. When this issue occurs, you might see a “pq: cannot execute INSERT in a read-only transaction“ message written to the seaweedfs-filer pod log.
Workaround: Restart the seaweedfs-filer pod(s) through Kubernetes and wait for the pod(s) to be recreated before attempting to transcribe new assets.
If the issue persists, contact Avid Customer Care for further assistance.
Limitations in 2024.10.2 Publisher App Bug Number: BSI-35499. The final output of assets that are published with preroll or postroll effects do not include the preroll or postroll data.
Workaround: Publish the asset through MediaCentral Cloud UX, and then add the preroll or postroll effects through the Wildmoka website.
Fixed in Version 2024.10.5 MediaCentral Acquire Bug Number: CCUX-10437. When a recording is scheduled, an automatic pre-roll time is added. As a result, you cannot select the time slot immediately before a future recording in the Channels View to schedule a new recording.
Bug Number: CCUX-10710. The source selector in the recording editor is now enabled for ongoing recordings, allowing users to change the source during the recording process.
Bug Number: CCUX-10843. Acquire occasionally fails to check in growing clips from Avid Stream IO during recording, though check-in completes after the recording is completed.
Fixed in Version 2024.10.4 Bug Number: ASSETS-4673. Acquire ingest might fail with a 'User Not Found 404' error if the user name contains special characters.
Search App Bug Number: PLUS-1867. The Production Management Search Connector might fail to connect if your MediaCentral Cloud UX system is configured for an OpenID authentication provider, such as Okta.
> **Note:** To enable this fix, you must install both MediaCentral Cloud UX v2024.10.5 and the Production Client
v2024.10.2 or later. After installing these two updates, you are not required to perform any additional steps to further enable these specific fixes.
Bug Number: PLUS-1868. The Production Management Search Connector does not automatically reconnect to Production Management if the Production Management Engine is offline for an extended period of time. For example, any period longer than a restart of the Engine.
Bug Number: IPI-3825. The MediaCentral Search Connector is unable to connect to the Production Management Archive Engine. The system responds with a "Failed to open the database (The database is not active)" error as it attempts to connect to the Production Management Archive database.
Fixed in Version 2024.10.4 Asset Editor Bug Number: ICI-5006, NEO-3786, NEO-3751. After upgrading to v2024.10, some assets appear offline in MediaCentral Cloud UX that are otherwise online in Media Composer and MediaCentral Production Management.
Bug Number: NEO-3682. You cannot use the JKL keys to control playback with Caps Lock enabled on your keyboard.
Bug Number: NEO-3766. When the playback pods start, the system performs a permissions check on /cache and its sub-directories. This check can result in extended initialization time for the playback pods, and a delay in returning the system to a production-ready state.
This fix optimizes that process and builds on changes made for Hoverscrub in v2024.10.3.
Bug Number: PLAD-945. Playback can be delayed for several seconds after signing in to MediaCentral Cloud UX and loading an initial asset for playback.
Fixed in Version 2024.10.3 Asset Editor Bug Number: ASSETS-4693. The "Set as Thumbnail" feature fails to update the asset thumbnail.
Bug Number: MX-9995. In the Transcript tab, when you apply a Search and switch to another transcript the Search results are not cleared.
Fixed in Version 2024.10.3 Bug Number: MX-10046. The process creation dialog box cannot be opened from the Folder Actions plug- in.
Bug Number: MX-10076. When you open a master clip in the Asset Editor's Source Monitor and then a sequence in the Record Monitor, the "Asset is not supported" is shown for the master clip in the Transcript tab after switching back to the Source Monitor.
Bug Number: MX-10081. When you open a master clip with a partially failed transcript in the Transcript tab, the Transcript tab grid is blinking.
Bug Number: PLAD-914. Due to a payload size limitation in avid-upstream, you might encounter a “Save Failed” error when attempting to save sequences that include a large amount of data. This issue is exacerbated by sequences that include group clips.
This release updates the payload size from 1.5MB to 64MB to reduce the likelihood of encountering this issue. However, limitations still apply. See “Sequence Size and Complexity” in the Avid MediaCentral | Cloud UX User’s Guide for additional details.
Equipment© Bug Number: PLAD-944. Assets that are created by EVS Broadcast might include information in the data structure that makes the clips appear offline in MediaCentral Cloud UX when Dynamic Relink is enabled.
Hoverscrub Bug Number: PLAD-952. Hoverscrub and the MediaCentral player were configured to have different levels of permissions to the storage cache, resulting in access problems when both services attempt to access the storage at the same time.
In this release, Hoverscrub updates the file permissions on start-up. Depending on the number of files in the storage, this initial permissions update could affect Hoverscrub's ability to process new proxies. After the permissions have been reset, Hoverscrub functionality should return to normal.
Installation and Configuration Bug Number: ASSETS-4692, PRS-3518. If you attempt to deploy both the Production Management and Archive Production feature packs, the Production Management deployment process fails as it cannot create the required Kafka topics. When this happens, you might see messages similar to the following in the log:
[ERROR] [ERROR] cannot install chart 'platform-pam-2024.10.0': 3 errors occurred:
* kafkatopics.kafka.strimzi.io "avid-pam-ctc-commands-<value>" already exists Platform GCP Storage Connector Bug Number: MAM-20767. When transferring larger files to the GCP bucket, the service in the Platform GCP Storage Connector pod shows issues and the transfer job fails.
Bug Number: MAM-20788. The setting that defines the number of parallel jobs does not work properly.
Fixed in Version 2024.10.2 Process Modeler App Bug Number: MAM-20797. Process Modeler: The contents of sub-processes is erased when trying to modify an existing XPDL.
The related bug fix for the BPMN to XPDL conversion done by the Process Engine is addressed in the MediaCentral Asset Management v2024.10.0.4 hotfix.
Rundown App Bug Number: MA-6681, Previously, attempts to reorder segments containing Maestro GFX machine instructions caused the order of the graphics to be altered in the sequence, sometimes moving them to non-corresponding segments, and resulting in a gap appearing within segments in the sequence.
Bug Number: MA-7055, MA-7161. Previously, when a user clicked to create a sequence in an existing story and immediately moves to another story, the sequence was sometimes created without association to any story or was incorrectly associated to the wrong story.
Bug Number: MA-7259. Previously, attempts to reorder Traco production cues within a news story, via drag-and-drop, sometimes resulted in the erroneous removal (or deletion) of all production cues in the story.
Bug Number: MA-7268. Previously, editing text in a news story with Traco production cues could cause a communication issue between Cloud UX and MOS Pilot that resulted in Chrome crashing.
Bug Number: MA-7273. Previously, when copying and pasting from "Pages" on a MAC or from "Google Docs" to a news story, the system would fail to correctly save spaces and carriage returns (Enter).
Bug Number: NEO-2403, NEO-3726. When creating a News Sequence attached to an iNEWS story in the Rundown App, the system displays an erroneous Story/Sequence Mismatch warning after you click the Create Sequence button.
Fixed in Version 2024.10.2 Asset Editor Bug Number: PLAD-941. If you enable the "Allow folder selection" option in the Configuration Settings app (Modules > Newsroom Management), the Asset Editor Metadata tab might display an "Asset is not loaded" message after opening a sequence.
Avid Ada Transcribe Bug Number: SYN-1273. Transcribe jobs might fail with a “504 Gateway timeout” error when there is increased demand on the service.
Bug Number: SYN-1479. Segmented master clips (master clips that are associated with multiple individual files on storage) might fail the transcribe process.
Fixed in Version 2024.10.1 Distributed Processing Bug Number: IPI-3780. The avid-mediaengine-coordinator-dp service might hang and cause Avid Ada Transcribe jobs to hang or fail.
MediaCentral Acquire Bug Number: CCUX-10437. When a recording is scheduled, an automatic pre-roll time is added. As a result, you cannot select the time slot immediately before a future recording in the Channels View to schedule a new recording.
Bug Number: CCUX-10664. The router control sources in the New Recording schedule list were previously displayed in a random order, making them inconsistent with the alphabetical order in the grid.
MediaCentral Sync Bug Number: AL-3470. If you re-sort the Sync Tasks - Overview tab by the Last Synchronized column, the contents of the tab become hidden from view.
Rundown App Bug Number: MA-7182. Previously, pasting text into a segment with closed-captioning (CC) text, and then making that pasted text also CC would not properly update the segment duration.
System Bug Number: PRS-1662, MTTO-4625. 3rd party applications that use Avid Platform Connector API for .Net v3.12.2 are blocked from connecting to the Platform. MediaCentral Cloud UX 2024.10 introduced a change to the MediaCentral Gateway certificate to prevent it from expiring. This change is the source of the downstream API connection issue.
User Management Bug Number: ICS-10372. The process of importing groups into the User Management app might result in a "Groups selection is not available with the configured identity provider" error for organizations with very large Active Directory structures.
Fixed in Version 2024.10.1 Browse App Bug Number: JP-9407. If you attempt to rename a top-level folder (such as Projects, or Catalogs) in the Production Management database, the Browse app becomes unresponsive because it is unable to handle this illegal request.
MediaCentral Sync Bug Number: ICI-4932, IPI-3733. After a successful MediaCentral Sync job, the File Path (File Locations tab) in Interplay Access might show the source file path and not the correct path for the destination system.
Fixed in Version 2024.10.1 Multi-Site Bug Number: PLAD-932. If you configure the User Mapping options in the Multi-Site Settings app to "Any > Map by Name", then each connected user consumes a license on both the local and remote site. This issue breaks the original design in which a license is consumed on the local site only.
System Bug Number: ASSETS-4532, ASSETS-4580. It is possible that the pam-ctc service can stop communicating with the Production Management Engine. When this happens, the Production Management database might disappear from apps such as Browse or Search.
Bug Number: MAM-20666. If the Media Analytics Gateway cannot contact a provider service such as Avid Transcribe services, the Azure Video Indexer, or other, then it sends duplicate messages (roughly every 10 seconds). This disruption in connectivity can cause jobs to either fail or succeed with unusable (corrupted) results.
Bug Number: JP-9442. The area allocated to the Fast Bar (or above the Fast Bar) might appear 2-3x larger in height than normal.
Bug Number: PLAD-933. A permissions issue might block the ability to add custom icons to the server, as described in the process for "Adding Custom Icons" in the Avid MediaCentral | Cloud UX Install Guide.
Fixed in Version 2024.10.1