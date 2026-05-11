---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2025.6.3"
release-date: 01/06/2025
doc-type: readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

™ Avid MediaCentral | Cloud UX ReadMe Version 2025.6.3 Avid recommends that you read all the information in this ReadMe file thoroughly before installing or using any new software release.
For the latest information on this release, see the following page on the Avid Knowledge Base:
https://kb.avid.com/articles/en_US/readme/MediaCentral-Cloud-UX-v2025-Documentation Revision History Date Revised Changes Made September 11, 2025 Initial v2025.6.3 publication Contents Fixed in Version 2025.6.1 10 Installation and Prerequisites Avid MediaCentral Cloud UX v2025.6.3 is a patch release that includes new features or fixes for issues found in the product following the initial software release. Patch releases are cumulative and include all of the updates found in prior patch releases of the same series. This feature-pack-only release requires a prior installation of MediaCentral Cloud UX v2025.6.x.
For details on the specific issues fixed in this release, see "Fixed in Version 2025.6.3" on page 9.
New Features in MediaCentral Cloud UX 2025.6.3 New Features in MediaCentral Cloud UX 2025.6.3 Wolftech News This release adds compatibility for Wolftech News v15.1. If you upgrade your Wolftech News core to v15.1, you must install this patch on your MediaCentral Cloud UX server(s) to maintain compatibility.
Wolftech News v15.0 is compatible with MediaCentral Cloud UX v2025.6.0 through v2025.6.2.
New Features in MediaCentral Cloud UX 2025.6.2 Using the Avid Ada App In the MediaCentral Cloud UX Admin app, you can now use the Avid Ada app.
The Avid Ada app allows you to maintain Avid Ada related tasks. Currently, the Avid Ada app contains one section: Transcriptions. Assets on which Avid Ada transcribe processes were applied, reflect the transcription status. If setting the Ada Transcript Status has failed despite of automatic retries, a resync with the source system can be initiated in the Transcriptions section of the Avid Ada app.
Options for Resynchronizing Ada Transcription Status Information The Transcriptions panel provides the following resynchronization options:
- Status
During Transcribe workflows, the Ada Transcript Status is set as asset property on the source system. If the status update fails, automatic retries are applied for the initial update of the Ada Transcript Status. If the automatic retries fail, the system might end up in a situation where users can see transcripts in the Transcript tab, but do not see the Ada Transcript Status property in the Search App for this asset. To address this, you can run a Status resync procedure, which goes through all transcripts and updates the affected asset's Ada Transcript Status property.
- Search
If pushing Ada Transcript Status data into the Search service fails during Transcribe workflows users might see transcripts in the Transcript tab, but can not search for these transcripts in the Search app. To address this, you can run a Search resync procedure, which goes through all transcripts and repushes them to the Search service.
Note the following:
- Using the Transcriptions panel, you can trigger resync operations on the connected local
MediaCentral Production Management module.
Resync operations do not affect the license quota.
- Resync jobs will not "repair" hanging or failed transcript processes.
- While a resync operation is running, you cannot start another resync with the same configuration
- (same system and same resync type), but you can start a parallel resync for the same system with
another resync type.
Performing a Resync You can complete the following steps to resynchronize Ada Transcript Status information. Note that the Resynchronize button is disabled until you select at least the system and one synchronization item.
New Features in MediaCentral Cloud UX 2025.6.2 To resynchronize Ada Transcript Status information:
1.
Click the Transcriptions option in the Avid Ada app sidebar.
The Transcriptions panel is shown.
2.
Select the check box of the system to be resynchronized. The Transcriptions panel shows the connected local MediaCentral Production Management module.
If there is no applicable system, the message "There are no applicable systems" is shown.
3. Select one or both of the following resync type check boxes in the "Also select one or more items to
synchronize" section:
- Status
- Search
4. Click the Resync button.
The system displays a Confirm Resync Operation dialog box.
5. Do one of the following:
- Click the Resync button to begin the resync operation.
- Click the Cancel button to abort the operation.
New Features in MediaCentral Cloud UX 2025.6.2 If you click the Resync button, the resynchronize operation is executed without any further notice.
If you try start the Resync for the same configuration while the resync is still in progress, a message "Another resynchronize process is already running for {system_name}" is shown.
Understanding System Impact When you click the Resync button, the app shows the following confirmation message: "This operation could take considerable time and computational resources. Are you sure you want to trigger it?" Review the following to determine how your actions might effect the involved systems:
- Status
This operation is normally rather fast and introduces only a minor performance impact on the source system.
- Search
This operation is more data intensive and introduces an increased load on MediaCentral Search while the operation is in progress.
Platform Automation Rules Editor App: Changed preview status of actions in Wolftech News rules Introduced in MediaCentral Cloud UX v2025.6.0 as a Tech Preview, the following actions exit the public Preview and are now fully supported:
- Create News Sequence
- Publish Publication Output
- Send to Playback
The "Preview" banner has been removed from the Create News Sequence, Publish Publication Output and Send to Playback action headers.
Rules Editor App/Action Engine Wolftech News: provide information to identify "Publishing Output" properties In the configuration of the action "Publish Publishing Output" a user can select publishing output properties that will be available as metadata in the Publisher template to be referenced. To help identifying the CTMS property, the property labels have been enhanced to show additionally the ID.
Labels in the Properties drop-down list are now shown in the form “<Property label> (Custom). ID:
<property_id>”, for example "Comment (Custom). ID: Custom_7".
Action Engine Publisher: re-structure additional metadata To avoid collisions with general asset metadata that are provided in the publish job, additional metadata, which can optionally be provided, are placed in the publish job section "avid_addtional_metadata".
Rules Editor: Referencing Avid Metadata in Publisher Templates In context of the Rules Editor actions “Publish” and “Publish Publishing Output”, Avid metadata will be available to be optionally used in a Publisher template. To reference an Avid metadata property in a Publisher template, specific placeholders are to be used.
Asset Metadata For the actions “Publish” and “Publish Publishing Output”, the metadata of the Avid asset to be processed by Publisher will be provided to the Publisher metadata. Metadata of the Avid asset are its CTMS attributes. See https://developer.avid.com/ctms/api/aa/resources/attributes.html New Features in MediaCentral Cloud UX 2025.6.2 In the Publisher metadata, the asset attributes are placed in the data root, as shown in the following example for a Production Management asset.
To reference an asset attribute for usage in a Publisher template, the following is required:
1. Retrieve which properties are available for the Production Management/Asset Management asset
type to be referenced in the Publisher template.
2. Retrieve the name/ID of the property (not the label!) to be referenced in the Publisher template.
  - For Asset Management, check the attributes in the data model.
  - For MediaCentral Production Management, check the property IDs in the Interplay
Administrator.
3.
In Publisher, enter a property placeholder that includes the property ID in the following form in the corresponding Publisher template field.
{{custom_source_raw_metadata["<property ID>"].value}} Example:
{{custom_source_raw_metadata["com.avid.workgroup.Property.User.Sent by"].value}} Additional Metadata The Rules Editor action “Publish Publishing Output” provides the option to additionally add metadata of the Publishing Output to the Publisher metadata. You can select these properties from the Properties drop-down list in the action “Publish Publishing Output”.
New Features in MediaCentral Cloud UX 2025.6.2 In the Publisher metadata, the selected “Publishing Output” properties are placed in the section "avid_ additional_metadata".
To reference a Publishing Output property for usage in a Publisher template, the following is required:
1. In Rules Editor, retrieve the ID of the property (not the label!) to be referenced in the Publisher
template. The ID is shown as part of the property label in the Properties drop-down list.
It is also shown for any selected property in the Properties field.
2. In Publisher, enter a property placeholder that includes the property ID in the corresponding
Publisher template field in the following form:
{{custom_source_raw_metadata.avid_additional_metadata["<property ID>"]}} Example:
{{custom_source_raw_metadata.avid_additional_metadata["Custom_7"]}} New Features in MediaCentral Cloud UX 2025.6.1 Working with the Wolftech App The Wolftech app includes backend changes that are meant to decrease the loading time of the app when selected.
New Features in MediaCentral Cloud UX 2025.6.1 Wolftech News Top Story The Wolftech News CTC can now return the Top Story flag for Wolftech News stories. This means that you can now search for this attribute in the Search app, and display this property in a column in the Display Options menu of the Browse and Search apps.
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
Updating the MediaCentral Cloud UX System For assistance with this process, see "Copying Software to the MCUX Server" in the Avid MediaCentral Cloud UX | Installation Guide.
4.
Enter the following command to import the updates included in this release:
sudo avidctl platform import /<path>/mediacentral_feature_packs_ <version>.iso The import process automatically mounts and dismounts the ISO to your system.
5. Use the following command to deploy the features included in this release:
sudo avidctl platform deploy --skip-feature-pack-import -i The script checks the Kubernetes Config Store to verify the existence of the system configuration files. If the script finds the configuration files, it reports the status of each file [OK]. If the script cannot find the files, it alerts you to the situation and provides you with an opportunity to abort the installation and resolve the issue.
--skip-feature-pack-import When you use the switch, the script suppresses the "import features" prompt. You are not required to import the feature packs because that process was completed as part of step 3.
6. Next, you must determine which feature packs should be upgraded, installed, or removed.
The script prompts you with a series of yes or no questions. Each prompt is associated with a default value which is identified as a capital Y for yes or N for no. If the script determines that the feature pack is already installed, the default value is Y. If the feature pack is not installed, the default value is N. Do one of the following:
- Press the Enter key to accept the default value.
- Press Y (or y) to upgrade or install the feature pack.
- Press N (or n) to skip or uninstall this feature pack.
If your existing installation includes a feature pack that you no longer want to use, you can enter N at the prompt to remove the feature pack from your existing installation.
The feature pack installation process begins. Be patient as this process can take some time.
7. After the installation is complete, you can use the following command to verify that the required
feature packs have been installed:
sudo helm ls The command should report 2025.6.3-v0008-Gb96c92c as App Version for all upgraded components.
8.
(recommended) Verify and if necessary, update your certificates.
As part of this upgrade process, Avid recommends that you verify the expiration dates of your deployed certificates. If you are nearing the certificate’s expiration date, you might want to take the opportunity to deploy a new certificate to avoid any potential connection issues for your users.
a. Verify your TLS certificate’s expiration date.
For more information, see “Verifying the SSL Certificate” and “Creating Certificate Files” in the Avid MediaCentral | Cloud UX Installation Guide.
b. Verify your Kubernetes certificate’s expiration date.
For more information, see “Understanding Kubernetes Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
Fixed in Version 2025.6.3 Fixed in Version 2025.6.3 Asset Editor Bug Number: NEO-3920. If you drag and drop two or more markers from the Storyboard tab to the Sequence Timeline, only one of the selected makers is added to the sequence.
Bug Number: NEO-3942. Dragging an asset from the Media Viewer to the empty Sequence Timeline results in a “invalid (undefined) mediaID” error when saving the sequence. After the save, the asset is not included in the sequence.
Bug Number: NEO-3954. Dragging and dropping multiple assets from the Browse app to the Sequence Timeline results in only the first asset being added to the sequence.
Wolftech News CTC Bug Number: ASSETS-4990. Publishing template fields were not available for all sub-platforms when the same publishing template is used by multiple publishing sub-platforms. In this case, the attribute IDs could contain the wrong sub-platform ID when querying the attributes for a publishing output.
In context of this bug fix, the template ID has been changed from an integer with only the <templateid> to a string consisting of “<subplatformid>.<templateid>”.
Note that already working “Publish Publishing Output” actions in the Rules Engine still work. However, those “Publish Publishing Output” actions might be displayed as erroneous in the Rules Editor because the template ID has changed. It is recommended to fix the actions by re-selecting the valid template and field.
Fixed in Version 2025.6.2 Process Modeler App Bug Number: MAM-21078. This bug fix addresses issues found in User tasks:
You cannot add Delegates.
- When you remove a value from the States field, the wrong state gets deleted.
- Bug Number: MAM-21079. This bug fix addresses issues found in Script tasks:
In the Inputs/Outputs dialog box, input is removed from a field when you press Enter.
- When you remove a value from the States field, the wrong state gets deleted.
- Bug Number: MAM-21081. In the Properties of a process, when you remove a value from the Contributors
(user) field, the wrong user gets deleted.
Bug Number: MAM-21083. When you select a task in a process and open the Localization dialog box for it, the localization table does not scroll to the position of the related task.
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