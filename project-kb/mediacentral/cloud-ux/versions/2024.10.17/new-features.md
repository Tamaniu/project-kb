---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2024.10.17"
release-date: 01/10/2024
doc-type: new-features
source: pdf
confidentiality: public
date-added: 11/05/2026
status: current
---

New Features in MediaCentral Cloud UX 2024.10.8 Dynamic Range Support Feature Description Asset Editor: When you load a High Dynamic Range asset (master clips and sequences only) into the HDR Identifier Media Viewer, an icon appears to the left of the Mark In timecode to call attention to the asset's status.
If you load a sequence that has a mix of HDR and non-HDR assets, the icon appears only when viewing an HDR segment of the sequence.
For additional information, see "Using the Timecode Displays" in the Avid MediaCentral | Cloud UX User's Guide.
New Features in MediaCentral Cloud UX 2024.10.7 Creating Subclips The General section of the Configuration settings app includes a Subclip Creation option that allows administrators to determine how users can create subclips with drag and drop.
- If the setting is disabled (default), users must hold down the Alt (or Option) key on the keyboard to
create a subclip.
- If the setting is enabled, then the modifier key is not required.
For additional information see "Using the Configuration Settings App" in the Avid MediaCentral | Cloud UX Installation Guide, and "Creating Subclips" in the Avid MediaCentral | Cloud UX User's Guide.
New Features in MediaCentral Cloud UX 2024.10.5 Platform GCP Storage Connector The Platform GCP Storage Connector now uses the native low-level API to improve upload and download operations for a single file. The following methods are used:
XML API multipart upload
- Sliced object download
- Before, only sequential upload was supported.
New Features in MediaCentral Cloud UX 2024.10.3 MediaCentral Panel for 3rd Party Creative Tools Configuration Option for Large Sequences When you import a large or complex Media Composer sequence into Adobe Premiere Pro, MediaCentral avid-pam-services Cloud UX might need to allocate a significant amount of system resources to the Kubernetes pod. Avid sets the high-memory-limit of this pod to a value of 3GB by default. However, some complex sequences might require additional memory to successfully complete the import process.
MediaCentral Cloud UX includes a configuration option that allows you to increase the maximum memory allocation to this pod.
> **Note:** This process has no impact on working with large or complex sequence in the MediaCentral Cloud
UX Asset Editor. For more information on that topic, see "Playback of Simple and Complex Sequences" and "Sequence Size and Complexity" in the Avid MediaCentral | Cloud UX User's Guide.
> **Note:** Depending on your workflow, you might want to complete the following process during a
maintenance window to avoid any interruption of services to users of the MediaCentral Panel for 3rd Party Creative Tools.
To increase the memory allocated to the pod:
1. Open a terminal and connect to your single-server or primary node.
2. Enter the following command:
sudo avidctl platform config service-resources -n avid-pam-services -- limits-memory "<value>" Where <value> represents the maximum amount of memory that can be allocated to the avid- pam-services pod. For example, the following command allows for a maximum of 8GB.
sudo avidctl platform config service-resources -n avid-pam-services -- limits-memory "8Gi" As every organization's workflow is different, Avid cannot suggest a "correct" or maximum value.
Avid recommends that you slowly increase the limits-memory value and re-test your workflow after every adjustment. By slowly adjusting your configuration, you can ensure a smooth import workflow without sacrificing resources that could be better used by other system processes.
3. Redeploy your system to apply the configuration changes.
sudo avidctl platform redeploy For additional details on this command, see "Altering the Configuration" in the Avid MediaCentral | Cloud UX Installation Guide.
New Features in MediaCentral Cloud UX 2024.10.3 Avid Ada Transcribe Feature Description Preview Status Introduced in MediaCentral Cloud UX v2024.10 as a Tech Preview, this update provides additional functionality. As of 2024.10.3, Avid Ada Transcribe exits the Preview status.
For additional information on these features, see "Asset Editor: Transcript Tab" on the next page.
Updated model This release introduces a new data analysis model that is both more accurate and faster New Features in MediaCentral Cloud UX 2024.10.3 Feature Description than the old model for MediaCentral Cloud UX nodes that include a GPU. When processing a transcribe task, the worker verifies if your server is equipped with a GPU. If detected, the "turbo" model is enabled automatically. If the installer does not detect a GPU, then the previous model is left in place.
The new model can transcribe assets roughly 3x faster than the original model for GPU equipped nodes. Due to the significant accuracy and performance increases available in this new model, Avid highly recommends that you provision an NVIDIA® GPU for any node that runs the Avid Ada Worker services.
PostgreSQL Avid uses a PostgreSQL database to store data related to Avid Ada processes. The Database v2024.10 installation process configured a single instance of the database on one node.
If your MediaCentral Cloud UX system is configured in a cluster, this update automatically deploys a second PostgreSQL pod for redundancy. If you are running your MediaCentral Cloud UX system on a single server and you have deployed the Avid Ada feature pack, the system does not deploy a second PostgreSQL pod.
Asset Editor: Transcript Tab Feature Description Removal of Preview flag Using the Transcript tab is now a fully supported feature. The "Preview" banner has been removed from the Transcript tab's header.
Overflow menu for If the width of the Asset Editor is reduced to a point at which all buttons cannot be buttons displayed at the same time, the Transcript tab responsively scales by hiding buttons from right to left. Appearing to the far right of the Transcript header the overflow button lets you access the hidden buttons in an overflow menu. By default, the Export Transcript and Create New Transcription buttons are shown in the overflow menu.
Transcript creation and Transcript creation and editing features – create transcript, recreate transcript, editing covered by rename transcript, rename speakers, add speakers, assign segment to another group entitlement speaker, edit transcript text – now are only enabled for users of a group that has the required entitlement "Avid Ada Transcribe RW Access" assigned. Without this entitlement, users can only view and download transcripts and copy transcript text.
> **Note:** If the Avid Ada Transcribe feature was already used with MediaCentral Cloud
UX, an administrator must re-issue the quota license "Avid Ada Transcribe" (originally named "MediaCentral | STT Base Package") to enable usage of the entitlement.
Set and change You can now provide a name for the transcript when you trigger transcript transcript name creation.
New Features in MediaCentral Cloud UX 2024.10.3 Feature Description You can also change the name of any transcript subsequently.
Edit mode changes Transcript editing features – rename speakers, add speakers, assign segment to another speaker, edit transcript text – now can only be applied after you enable Edit mode.
Export transcript You can now export a transcript to your local workstation. Supported formats are *.txt, *.csv and *.srt.
Copy text to clipboard You can copy transcript text – single word, sentences, individual segment, several segments – to the clipboard by using the shortcut Ctrl+C or the context menu.
Filtering by speaker You can now use the Speaker filtering control to display a subset of the segments shown in the Transcript tab. Only the segments of the speaker(s) you select will be shown, all segments of other speakers will be hidden.
New Features in MediaCentral Cloud UX 2024.10.3 Feature Description Change and create Before, you could change and create speakers only for an individual segment.
speakers for multiple Now, you can assign several segments to another speaker and create a new segments speaker for several segments.
Segment selection by You can now select a segment by right-click. This opens at the same time the right-click context menu with the options that can be applied to the segment.
Multi-selection of You can now select several segments at the same time (by using Shift+click to segments select a range or Ctrl+click to select individual segments). This allows you to copy several segments to the clipboard, assign several segments to another speaker, and create a new speaker for several segments at the same time.
Warning icon for partial If a transcript can only be partially displayed – transcript creation failed while transcripts portions of the transcript have already been shown on the Transcript tab – a warning icon is shown between the transcript selector and Find filter control on the Transcript tab toolbar. The tool-tip reads "Transcript error: partial transcript only".
Improved auto-update The auto-update behavior during transcript creation has been improved:
For non-growing clips that are shorter than 1 hour, now the fully created
- transcript is automatically shown once the transcribe job has completed.
You do not need to click the Reload button any longer.
- When a transcript is created for a growing (EWC) clip or a non-growing clip
that is longer than 1 hour, the Transcript tab display auto-refreshes, new portions of the transcript are automatically shown in read-only mode.
When the transcript creation is finished, the Transcript tab now auto- refreshes and enables editing of the transcript. You do not need to click the Reload button any longer.
Improved messaging l If the audio track for which the transcript has been created does not contain spoken words, a "No speech found" message is now shown.
- If a transcribe job fails before completion while portions of the transcript
are already shown on the Transcript tab , a message "The transcript creation failed" is shown for a short period of time on the Fast bar.
Improved error handling If the transcribe job for a growing (EWC) clip or a non-growing clip that is longer than 1 hour fails before completion, already displayed portions of the transcript are not deleted any longer but are now kept and can be edited.
New Features in MediaCentral Cloud UX 2024.10.3 Feature Description Improved Reload Clicking the Reload button now preserves the currently selected transcript in the behavior Transcript tab. Before, the top-most transcript in the Transcript selector (usually A1) was selected again.
Simplified text You can now easily highlight text of a transcript segment by using the mouse highlighting cursor. Text highlighting by using Shift+click is deprecated.
Improved Find feature The Find feature has been refactored, search is now done on UI side. This includes the following improvements:
- The Find field now shows a Search icon.
The Find feature interacts with the new Speaker filter:
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
New Features in MediaCentral Cloud UX 2024.10.2 Feature Description
- Mixed — Refers to an asset with multiple dynamically linked resolutions, where
at least one is an SDR resolution
- Unknown — Dynamic Range status is not available.
- Not Applicable — Asset does not support color space information
Avid supports displaying the Dynamic Range status for video master clips, and limited support for rendered video effects.
Working with Asset Management If your workflow includes MediaCentral Asset Management, then you must install the Asset Management v2024.10.0.2 hotfix, as well as the Asset Management CTC hotfix v2024.10.0.1.
For additional information, see the v2024.10.0.2 Avid MediaCentral | Asset Management ReadMe.
Working with Production Management If your workflow includes MediaCentral Production Management, you must be running Production Management v2024.10 and Interplay Access v2024.10.1 to enable these features.
For additional information, see the v2024.10.1 Avid MediaCentral | Production Management ReadMe.
Working with MediaCentral Ingest You can ingest assets through MediaCentral Ingest or the Ingest app without any modification to the HDR data by selecting a transparent passthrough option, such as Direct OP1a or any of the other workflows using the Generic MXF plugin.
Rules Editor: Action Media Analytics Using the Media Analytics action is now a fully supported feature. The "Preview" flag has been removed from the Media Analytics action.
New Features in MediaCentral Cloud UX 2024.10.2 Publisher App The Publisher section of the Configuration Settings app includes the following updates:
- Settings
  - The "Go to publisher backoffice" link opens a new browser tab and connects you to the
Wildmoka customer portal.
  - "Referer set in Wildmoka" check box allows you to configure this setting in MediaCentral
Cloud UX if the associated tenant in the Wildmoka customer portal is similarly configured.
- Proxy
New Features in MediaCentral Cloud UX 2024.10.2
  - After clicking the button to Start Local Tunnel, the system responds with a new confirmation
message: "Tunnel up and running: All sockets created"
  - When the tunnel is stopped, the system replies with the following: Tunnel Service Stop
requested. Tunnel stopped.
- System Updates
  - The system limits the number of sockets opened by the tunnel service to prevent exhaustion.
  - The tunnel service now automatically restarts in the event of a pod crash or restart.
Rules Editor: Action Media Analytics This release adds the option to specify the name of transcripts created by a Media Analytics action.
> **Note:** The Result Name field has been added for future use. The Transcript tab does not evaluate the
entered Result Name yet.
If you already used a Media Analytics action in a rule and you open the rule, the following Action Specification(s) Changed message informs you that a new field Result Name has been added to the action specification:
Click OK to close the message. The Action Specification(s) Changed message will not be shown again.
For more information about the Media Analytics feature, see "Defining a Media Analytics Action" in the Avid MediaCentral | Cloud UX Installation Guide.
New Features in MediaCentral Cloud UX 2024.10.1 Rundown App Feature Description New display toggle A new option appears in the App menu that allows either:
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
Audit Logging This release adds information about Media Analytics Engine jobs (inclusive, but not limited to Transcribe) to the audit logs. These logs include information about quota usage (if applicable), the user that started the job, the asset name or ID, and more.
For more information about this feature, see "Configuring Audit Logging" in the Avid MediaCentral | Cloud UX Installation Guide.
New Features in MediaCentral Cloud UX 2024.10.1 Chat App: Muting and Unmuting Notifications By default, MediaCentral Cloud UX displays a pop-up notification whenever you receive a new message — similar to those produced through the Notifications app. You can keep these notification messages enabled, or mute them through the Chat app context menu.
To mute notifications:
- Click the context menu and select the Mute option.
A mute icon appears at the top of the app to indicate that notifications will not be displayed.
To unmute notifications:
- Click the context menu and select the Unmute option.
The bell icon is removed from the app.
