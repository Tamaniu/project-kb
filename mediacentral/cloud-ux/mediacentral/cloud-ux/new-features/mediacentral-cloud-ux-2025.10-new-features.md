New Features in MediaCentral Cloud UX 2025.10

New Features in MediaCentral Cloud UX 2025.10.0

Asset Editor
Feature	Description
Storyboard tab enhancements	This release adds the following enhancements to the Storyboard tab:

-	In the Storyboard tab, you can now click on the Out timecode of a restriction to navigate to the end of the restriction. The playhead position on the timeline is set to the Out timecode of the restriction.
For more information, see "Navigating by Markers, Restrictions and Segments" in the Avid MediaCentral | Cloud UX User's Guide.
-	When you drag a selection of multiple markers or restrictions to a sequence, the marker / restriction segments are now displayed in the sequence sorted by timecodes in ascending order.
For more information, see "Adding Storyboard Items to a Sequence" in the Avid MediaCentral | Cloud UX User's Guide.

Metadata tab enhancement	The resizing of multi-value compound attribute tables in the Metadata tab has been improved. Before, the columns of multi-value compound attribute tables had fix sizes and could not be resized. Now, you can do the following:
l	When you resize the entire Metadata tab, the columns automatically resize and use the available space.
l	You can resize the individual columns of a multi-value compound attribute table by clicking on the column divider and dragging it to the left or right.
Note that the resized column width is not saved with the asset. When you re-open the asset the original column width is restored.
For more information, see "Editing Multi-Value Compound Properties" in the Avid MediaCentral | Cloud UX User's Guide.


Asset Editor: Transcript Tab

Feature	Description
Transcript / Translation	In the app header you can now use the Transcript / Translation toggle buttons to mode toggle	switch between Transcript and Translation mode in the Transcript tab.
 
By default, the Transcript mode is selected.

Creating translations	Powered by Avid AI, the Transcript tab now lets you create translations for transcripts. Users of a group that has the required entitlement "Avid AI Translate RW Access" assigned, can do the following in the Transcript tab:
-	Initiate the translation of transcripts
-	Display and inspect translations
-	Navigate in the translation with synchronized playhead in the Media Viewer
-	Edit translation text
-	Copy translation text
For more information, see "Using Translations" in the Avid MediaCentral | Cloud UX User's Guide.

Track shown in renamed
transcripts	If you rename a transcript, now the track is additionally shown in brackets on the renamed transcript. If the name cannot be shown completely in the transcript selection, you can see the full name and track in a tool-tip.
 
For more information, see "Renaming Transcripts" in the Avid MediaCentral | Cloud UX User's Guide.
Add In/Out by
highlighting text or segment	You can add items from the Transcript tab by simple drag and drop operations to a sequence. When you highlight text or segment in a transcript or translation, the In and Out mark for the highlighted section are set on the timeline. By dragging from the Media Viewer you then add a segment to the sequence.
For more information, see "Adding Transcript Tab Items to a Sequence" in the Avid MediaCentral | Cloud UX User's Guide.



Avid AI
Feature	Description
Updated Branding	Formally known as Avid ADA, v2025.10 rebrands this family of feature as Avid AI. This change results in some minor updates to the user interface. In this release, Avid AI includes:
-	Avid Transcribe
-	Avid AI Translate
-	Avid AI Summary
Avid AI admin app	This release adds the MediaCentral Cloud UX Administration app Avid AI that allows you to maintain Avid AI related tasks. The Avid AI app contains the following sections:
-	Transcriptions. Assets on which Avid AI transcribe processes were applied reflect the transcription status. If setting the Transcript Status has failed despite of automatic retries, a resync with the source system can be initiated in the Transcriptions section of the Avid AI app.
-	Translations. Lets you define the default language that is to be preselected in the Translate dialog box when a user starts the translation of a transcript in the Transcript tab.
Deployment: The Avid AI admin app is deployed with the feature pack Speech To
Text (stt).
For more information, see "Using the Avid AI App" in the Avid MediaCentral | Cloud UX Installation Guide.
New provider proxy service	This release adds the new Provider Proxy Service "Avid AI Media Analytics Provider"
(avid-mediaanalytics-provider-avidai-stt) for the new "Translate Transcript“ and "Summarize Transcript“ features. Deployment: The service is deployed with the feature pack Speech To Text (stt).
Entitlements for Avid AI features	To use the new Avid AI features in MediaCentral Cloud UX, entitlements are required.
l	For usage of Avid AI Translate in the Transcript tab, the entitlement Avid AI Translate RW Access.
(Preview) For usage of Avid AI Summary in the Commands menu, the entitlement Avid AI Summary RW Access.
Media Analytics Engine:
improved queuing	The Media Analytics Engine now supports multiple job queues.
l	Each queue can be individually configured for the number of concurrently running jobs.
l	The job request can either explicitly specify a queue to be used or the queue is derived from the Media Analytics provider used in the job. If the specified queue does not exist, the "default" queue is used.
l	There are three queues with explicit concurrent jobs count:
–	default: 10
–	avid.ml: 10
–	avid.ai: 1000
The job status polling interval in the Media Analytics Gateway has been changed from constant 10 seconds to start with smaller intervals (500ms) and increase over time to 10 seconds (short running jobs will be completed faster now due to decreased delay).
For more information, see "Configuring Media Analytics Engine Queues" in the Avid MediaCentral | Cloud UX Installation Guide.




Avid Production Management
Avid Production Management is an evolved implementation of the MediaCentral | Production Management product line that can be deployed in your MediaCentral Cloud UX cluster. This release includes new administrator apps such as the Production Management Administrator app and the Media Indexer Administration app, as well as new user facing apps and workflows.

Feature	Description
Production Management
Administrator App
	The Production Management Administrator app allows administrators to configure and manage settings related to your Avid Production Management database. This mirrors the functionality of the standalone Production Management Administrator client to streamline management of the Production Management database.











For more information, see "Using the Production Management Administrator App" in the Avid MediaCentral | Cloud UX Installation Guide.

Avid Media Indexer App	The Avid MI app provides administrators with the tools needed to configure and monitor the indexing of Avid NEXIS workspaces.
 
For more information, see "Using the Avid Media Indexer App" in the Avid MediaCentral | Cloud UX Installation Guide.
Inspector App	This allows you to view detailed information about Avid Production Management Assets.
 
For more information, see "Using the Inpector App" in the Avid MediaCentral | Cloud UX User's Guide.
Setting Reservations	This allows you or administrators to set reservations to folders in the Avid
Production Management database to prevent other users from deleting or moving assets from a folder.
For more information, see "Setting Reservations (Avid Production Management)" in the Avid MediaCentral | Cloud UX User's Guide.
Deleting Avid Production
Management Assets	This allows you to delete Avid Production Management assets directly within the MediaCentral Cloud UX user interface.
For more information, see "Deleting Assets (Avid Production Management)" in the Avid MediaCentral | Cloud UX User's Guide.
Removing an Asset from a Folder	This allows you to remove assets from their folders without deleting the actual media or the corresponding media files associated with it.
For more information, see "Removing an Asset from a Folder (Avid Production Management)" in the Avid MediaCentral | Cloud UX User's Guide.





Browse App
Feature	Description
Platform Storage Connectors: support for multiple connections	The Storage Connectors admin UI has been refactored to use the new Platform Storage Gateway to obtain and store information on available connections and profiles. Now, Cloud Storage Connectors (AWS S3 Storage Connector, Azure


Cloud Integrations

Feature	Description
Platform Storage Connector Gateway	This release adds the service Avid Platform Storage Connector Gateway: 
-	The Cloud Storage Connector Gateway provides one interface for all underlying Cloud Storage Connectors (AWS S3 Storage Connector, Azure Storage Connector, GCP Storage Connector) and their configuration.
-	Deployment: The feature storage-gateway is automatically deployed with any of the storage connector feature packs (aws-storage, azure-storage or gcp-storage).
Platform Storage Connectors: support for multiple connections	The Storage Connectors admin UI has been refactored to use the new Platform Storage Gateway to obtain and store information on available connections and profiles. Now, Cloud Storage Connectors (AWS S3 Storage Connector, Azure Storage Connector, GCP Storage Connector) support multiple connections. You can configure the connections in the Workflow Settings app > Storage Connectors section.

For more information see "Configuring Storage Connectors in the Avid MediaCentral Cloud UX Installation Guide.


Configuration Settings App

Feature	Description
Email Settings	Originally removed in v2024.10 to enhance system security, the Email Settings panel is restored in this version of software. Avid has increased system security around the storage of the configuration data, allowing the return of the panel for easier configuration.
Default Service User	In prior versions of MediaCentral Cloud UX, you were asked to provide a default service user name when running the Authentication Provider script. This release moves that setting to the Configuration Settings app.
For more information see "Configuring Storage Connectors in the Avid MediaCentral Cloud UX Installation Guide.
Setting the Default
Reservation Length	If you have an Avid Production Management system, the Production Management Modules section of the app includes an option to set a default reservation timeframe. This setting effects the calendar that appears when setting a reservation on a Production Management folder in the Browse app.


Fast Bar Customisation

Feature	Description
Show / Hide	Using the new Manage Fast Bar feature, you can now customize the Fast Bar to display only those apps that you want to work with in your session.
Reorder
	You can also drag and drop apps to display them in custom order.  The following illustration shows a user dragging the Process app to the left of the Search app:






For more info see “understanding the search bar” in the Avid MediaCentral Cloud UX User’s Guide.



Installation and Configuration

Feature	Description
Support for Ubuntu
24.04 LTS	MediaCentral Cloud UX v2025.10 requires Ubuntu 24.04 LTS. Ubuntu 22.04 LTS is not supported for this release.
For details about this process, see "Upgrading to MediaCentral Cloud UX v2025.10" on page 30.
Install / Upgrade
Process 	MediaCentral Cloud UX v2025.6 introduced a new way to deploy the feature packs, but maintained the ability to deploy the feature packs using the method described in prior releases.
This release requires you to use the new method only. The avidctl platform deploy command has been updated so that it no longer prompts you to mount the feature packs to the /features directory. The script also depreciates the --skipfeature-pack-import switch because this option is now forced. You must import the feature packs using the avidctl platform import command prior to using the deploy command.
Post-Install /
Upgrade Setup
Scripts	The following installation scripts are new or include updates:
l	Configuring AI Services
This script allows you to configure settings related to the Avid AI Translate and AI Summary workflows. l Configuring an Authentication Provider
The Default Service User and Default Service User Group prompts has been removed. The Default Service Account is now assigned through the Configuration Settings app.
l	Connecting to MediaCentral Production Management
The prompt to configure the Lookup Server has been removed. If your existing configuration file includes this field, you should consider editing the pam.yaml file to remove it. If the Lookup Server value is included in the yaml, but the service is unavailable or non-existent, your MediaCentral Production Management module might appear as unavailable in some apps. l Configuring the Email Settings
This process has been removed due to the restoration of the Email Settings panel in the Configuration Settings app. If you have previously configured the email settings through the script, these values are not automatically migrated to the Configuration Settings app. You must re-enter the settings in the panel to continue to use this feature.
l	Enabling System Monitoring
Adds support for configuring a Generic OAuth provider.
Feature Packs	The following feature packs are introduced in this release:
l Avid Production Management (apm)
If you are upgrading from a previous release, do not enable this feature pack during the upgrade process. Refer to the "Configuring Avid Production Management" chapter of the Avid MediaCentral | Cloud UX Installation Guide for complete instructions.
Default Service
Account	As noted above, the prompts to define a default service account have been removed from the authentication provider scripts.
If you are upgrading from a prior version of MediaCentral Cloud UX, you must enter your default service account in the app. The default service user found in the auth.yaml configuration file is not automatically propagated to the app.
If you have an existing auth.yaml file that includes a default service user value, this value is ignored in v2025.10 and later.

Secure Vault	The avidctl platform deploy script now deploys a vault that is used to securely save sensitive configuration data. For example the email settings entered in the Configuration Settings app are now stored in this location.
When running the script, you now see additional information about the vault configuration process:
Deploy features (Namespace: vault):
[1/3] Deploy: vault (vault)
[2/3] Deploy: vault-store (vault-store)
[3/3] Deploy: vault-app-secrets (vault-app-secrets)



MediaCentral Acquire

Feature	Description
Source View	A new timeline view that organises recordings by source instead of channel. This makes it easier to monitor and manage recordings that originate from the same input.

For more information, see "Source View" in the Avid MediaCentral | Cloud UX User's Guide.
Automatic Channel
Assignment	Users can now create recordings by selecting only the source in the Source view. Acquire automatically assigns the recording to an available channel. This reduces manual setup and supports high-volume workflows.

For more information, see "Source View" in the Avid MediaCentral | Cloud UX User's Guide.
Recurring Recording
Editing Options	When editing a recurring recording, users can choose to modify a single event or the entire series. Selecting “Edit this event only” detaches the instance from the series and turns it into a standalone recording. This gives users more flexibility when managing repeating recordings.
New Filtering Panel	A new filtering interface has been added to the Channels view. Users can now filter recordings by channel availability and recording state (e.g., in progress, planned, completed, error). The panel includes adjustable time windows, and custom availability ranges. Each category displays a live count of matching recordings, helping users quickly assess system activity and refine their view in real time. This feature provides precise control over timeline visibility and significantly improves usability in high-volume environments.
For more information, see "Timeline Interaction Enhancements" in the Avid MediaCentral | Cloud UX User's Guide.
Enhanced Sorting
Options	Channels can now be sorted by name, empty status, active recordings, or upcoming recordings. Sorting helps users focus on relevant activity and improves timeline readability.
For more information, see "Timeline Interaction Enhancements" in the Avid MediaCentral | Cloud UX User's Guide.
Channel Visibility Toggle	Users can hide or show individual channels in the timeline. This helps reduce clutter when working with many channels and allows users to focus on active sources.
For more information, see "Timeline Interaction Enhancements" in the Avid MediaCentral | Cloud UX User's Guide.
Check-In Icon Redesign	The check-in icon system has been updated for better clarity. A gray icon means check-in has not started, white means it’s in progress, and no icon means it’s complete. Icons update automatically based on recording status.



MediaCentral Cloud UX Mobile App
The Avid MediaCentral Cloud UX Mobile app for iOS is not supported with v2025.10 or later. References to the mobile app have been removed from the documentation.

Feature	Description
Avid UI Platform
Automation plug-in
(new)	This release adds the Avid UI Platform Automation Plugin (avid-uiplatformautomation-plugin). It is included in the rulesengine feature, which is installed as core feature of the MediaCentral Cloud UX setup. The plug-in provides the following features:
l	The Avid UI Platform Automation plug-in provides access to platform automation actions via a new Commands menu in the MediaCentral Cloud UX Browse and Search apps. The following platform automation actions are supported:
–	Media Analytics
–	Notifications
–	Publish
l	Each action is only available for users of a group that has the corresponding entitlement assigned:
–	Media Analytics: Avid AI Summary RW Access (ent_mcs_perm_ena_ sum)
–	Notifications: Action Notification (ent_mcs_perm_notify)
–	Publish: Action Publisher (ent_mcs_perm_wm_publisher) l The plug-in ensures proper handling of default values for Action Spec properties in the Command dialogs:
Literal: The property value is shown in a Command dialog as in Rules Editor / Schedule Editor.




MediaCentral Router Control

Feature	Description
SMS 7000 Protocol
Support	The new SMS 7000 protocol has been added. It is currently supported only for AJA routers, specifically the AJA KUMO series. In this implementation, only Level 0 (Kumo_Lev0) is supported, enabling basic switching functionality for compatible devices.



Platform Automation: Engines and Services

Feature	Description
Avid UI Platform Automation plug-in (new)	This release adds the Avid UI Platform Automation Plugin (avid-ui-
platformautomation-plugin). It is included in the rulesengine feature, which is
installed as core feature of the MediaCentral Cloud UX setup. The plug-in provides
the following features:

- The Avid UI Platform Automation plug-in provides access to platform
automation actions via a new Commands menu in the MediaCentral Cloud
UX Browse and Search apps. The following platform automation actions
are supported:
-	Media Analytics
-	Notifications
-	Publish

- Each action is only available for users of a group that has the
corresponding entitlement assigned:
-	Media Analytics: Avid AI Summary RW Access (ent_mcs_perm_ena_
sum)
-	Notifications: Action Notification (ent_mcs_perm_notify)
-	 Publish: Action Publisher (ent_mcs_perm_wm_publisher)

- The plug-in ensures proper handling of default values for Action Spec
properties in the Command dialogs:
-	Literal: The property value is shown in a Command dialog as in
Rules Editor / Schedule Editor.
-	– Property: The value of the referenced property is loaded via CTMS
and displayed.
-	Expression: Values of type Expression are ignored.

- If an Action Spec property contains validation information (such as regex),
the plug-in ensures that the Command dialog uses this information to
validate if a shown values is to be marked as invalid or not. Currently, only
regex validation for string values is supported. In a Command dialog box,
the Start button is disabled if the regex validation fails.

- When a Platform Automation action is triggered in a Command dialog, the plug-in starts the action via the respective Action Engine.

For more information, see "Using the Commands Menu" in the Avid MediaCentral |
Cloud UX User's Guide.



Action Engine Media
Analytics: support for
Avid Production
Management master
clips	The Action Engine Media Analytics now supports Avid Production Management master clips for Avid AI Transcribe actions.
For more information, see "Defining a Media Analytics Action" in the Avid MediaCentral | Cloud UX Installation Guide.
Action Engine Publisher: re-structure additional metadata	To avoid collisions with general asset metadata that are provided in the publish job, additional metadata, which can optionally be provided, are placed in the publish job section "avid_additional_metadata".
For more information, see "Referencing Avid Metadata in Publisher Templates" in the Avid MediaCentral | Cloud UX Installation Guide.
Change Event Agent
Wolftech enhancements	The Change Event Agent Wolftech provides the following new features:
l	The Change Event Agent Wolftech now supports the "IsTopStory" flag for Wolftech News Stories.
l	Wolftech News Events now contain the property "ModifiedBy", which is the login name of the user who triggered the event (if available, otherwise the porerty is set to null). This user is now added to the created CloudEvent.
l	Wolftech News Events now contain new properties, which are mapped to the common properties in the created CloudEvent:
–	DateCreated > common|created
–	CreatedByName > common|creator
–	DateModified > common|modified
ModifiedByName > common|modifier 
l The Change Event Agent Wolftech now supports change events with taxonomy values for Custom fields of data type single-select list and multiselect list.
Platform Automation UI
Plugin/Rules
Editor/Schedule Editor:
preselect values	If a "System" or "Specification" list contains only one value, this value is automatically pre-selected in the UI (Command dialog boxes, actions in Rules Editor and Schedule Editor).
Action Monitor/Rules Engine/Schedule Engine:
use new Job Monitor
REST API
	Action Monitor, Rules Engine and Schedule Engine now use the new REST API of the Job Monitor to publish job information to the Process app.

Rules Engine: support for
Cloud Events
	The Rules Engine has been enhanced to support Cloud Events to be prepared for
more event types. Internal processing has been switched to the Cloud Event
structure but the previous event structure is still supported. Cloud Event types and
payloads for existing entity events and new "relation" events have been defined:
-	com.avid.mc.entity.created.v1
-	com.avid.mc.entity.deleted.v1
-	com.avid.mc.entity.updated.v1
-	com.avid.mc.entity.relation.added.v1 (for future use)
-	com.avid.mc.entity.relation.removed.v1 (for future use)
Rules Engine: support for
TimeZoneInfo in
expression
	The Rules Engine has been enhanced to support an expression that includes
TimeZone information. Before, only the DateTime.Now.ToString expression was
supported, which delivers the local time of the server.
Now, you can use the following expression that delivers the time of a specified
time zone (in the example, for Europe/Paris):
TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTimeOffset.Now,
"Europe/Paris").ToString("dd-MM-yyyy HH:mm:ss")




Platform Automation: Rules Editor App

Feature	Description
Support for Avid
Production
Management rules	In the Rules Editor app, you can now configure rules for Avid Production
Management. Avid Production Management rules provide the following items:
l Trigger types: Created, Updated, Deleted l Entity types: Masterclip, Subclip, Sequence l Actions:
–	Add to Folder
–	AM Orchestration
–	Create Entity
–	Create Folder
–	Media Analytics
–	(Preview) Media Export (not for productive use)
–	Notification
–	Publish
–	Send to Playback
–	Update Metadata
For more information, see "Creating a Production Management Rule" in the Avid MediaCentral | Cloud UX Installation Guide.


Wolftech News rules:
changed preview status
of actions
	Introduced in MediaCentral Cloud UX v2025.6 as a Tech Preview, the following actions exit the public Preview and are now fully supported:
–	Create News Sequence
–	Publish Publication Output
–	Send to Playback

The "Preview" banner has been removed from the Create News Sequence, Publish Publication Output and Send to Playback action headers.
Wolftech News rules:
support for entity type
"Event"
	In Wolftech News rules, you can now use the entity type "Event".
 
l	You can combine the Event entity with any trigger type (Created, Updated, Deleted).
l	When you define conditions for an Event, the event-related attributes are provided in the Attribute list.
l	For an Event entity, the following actions are supported:
–	Add to Folder
–	AM Orchestration
–	Create Entity – Create Folder
–	Notification
–	Update Metadata
For more information, see "Creating a Wolftech News Rule" in the Avid MediaCentral | Cloud UX Installation Guide.
Wolftech News rules: provide information to identify "Publishing Output" properties	In the configuration of the action "Publish Publishing Output" a user can select publishing output properties that will be available as metadata in the Publisher template to be referenced. To help identifying the CTMS property, the property labels have been enhanced to show additionally the property ID in a tool-tip. The tool-tip might also include information on the platform, subplatform, and template origin of the property.
For more information, see "Referencing Avid Metadata in Publisher Templates" in the Avid MediaCentral | Cloud UX Installation Guide
The tool-tip information is also shown for Condition properties of a Publishing Output entity.
Wolftech News rules: support for additional properties	You can now to use the following properties in "Create Entity" and "Update Metadata" actions for Wolftech News entities: Production Type (for Stories, Pitches and Events), Story Status (for Stories), Pitch Status (for Pitches) and Publishing Output Status (for Publishing Outputs).
Production Management rules: changed Media Analytics action	The former Media Analytics action, which supported only the Transcribe feature, has been renamed to "Media Analytics Legacy" and is maintained for compatibility reasons in MediaCentral Production Management rules.
The new Media Analytics action supports the new Avid AI features and is available for Avid Production Management rules only.
For more information, see "Defining a Media Analytics Action" in the Avid MediaCentral | Cloud UX Installation Guide
Adapt to changes in the trigger backend structure	The Rules Editor has been modified to handle the changed backend structure of triggers inside a rule.
l Event types:
–	created > com.avid.mc.entity.created.v1
–	deleted > com.avid.mc.entity.deleted.v1
updated > com.avid.mc.entity.updated.v1 l Entity information is now combined in one string ("subject"). Before, this information was split into the properties systemType, systemId, entityType and type.
Rules Engine: change for DateTime expressions	Event properties containing an ISO 9601 datetime value that were previously deserialized to a datetime instance are now deserialized as strings. To use them as DateTime or DateTimeOffset, they have to be parsed explicitly, for example by using DateTime.Parse() or DateTimeOffset.Parse().
For more information, see "Using Expressions" in the Avid MediaCentral | Cloud UX Installation Guide
Rules Simulator:
additional change event templates	The Rules Simulator's Change Event Template list now also provides a "created", "deleted" and "updated" template for the following. l Avid Production Management master clip: avid-pmplus (masterclip) l Wolftech News event: wolftech-news (event) l Wolftech News note: wolftech-news (note)
For more information, see "Defining a Change Event" in the Avid MediaCentral | Cloud UX Installation Guide


Platform Automation: Schedule Editor App

Feature	Description
Support for Avid
Production Management
assets	In the Schedule Editor app, you can now configure scheduled jobs that include Avid Production Management assets (Masterclip, Subclip, Sequence) in a configured search. Avid Production Management assets can be attached to the following actions:

Add to Folder
-	AM Orchestration
-	Media Analytics
-	Notification
-	Publish
-	Update Metadata


For more information, see "Creating a Scheduled Job" in the Avid MediaCentral |
Cloud UX Installation Guide



Process App/Job Monitor
Feature	Description
Job Monitor: provide Rest
API	The Job Monitor (Process app backend) now provides a REST API to allow external systems to save data to the Process app.
This new endpoint will be used to publish Avid AI Translate and Avid AI Summary data to the Job Monitor.


Rundown App
Feature	Description
Queue Form selection	A new menu option called Select Queue Form allows users to select an available queue form for adapting the queue view, such as selecting a form to view only the most relevant columns. The user's selection does not persist across sessions or for opening further queues, but it does persist with Layouts. If a form becomes unavailable, the default form defined for the queue is applied.
Tab navigation	Users can now use Tab and Shift+Tab to navigate editable fields in the Queue panel, Story Form, and Story Body segments. Pressing Tab navigates to the next field. Pressing Shift+Tab navigates to the previous field. If the focus is on the last (or first) field, using Tab or Shift+Tab will navigate between Queue fields, Story Form fields, and the Story Body segments.
Improved Handling of
Timing Fields	The Rundown app now handles timing fields that are missing in a story similarly to the iNEWS Workstation; missing fields will appear empty instead of displaying zero times (00:00:00). Likewise, rundown timing (cume- and back-times) now calculates for subsequent stories based on what timing fields are present (either total time or the sum of present timing fields).


Search App
Feature	Description
Markers & Segments	The Markers and Segments (advanced) input field now includes a Clear button that allows you to quickly delete the contents of any text field.




Transcribed Subclips	In addition to master clips, your search results now include hits for subclips that include the matching transcribed text.
Viewing Summaries	The Search app includes Summary Status and Transcript Summaries options. You can enable these fields through the Display Options menu or use them as fields in your search.
If you want to display the summary text, you can view the text in the Metadata tab of the Inline-Hits window.
Searching for Summary
Text	After you transcribe an asset and create an associated summary, you can use the Search app to search for text within the summary.
1.	Open the Search app and select Transcript Summaries from the Search Type menu.
2.	Select the Summary option from the drop-down menu.
 
3.	Type the text for which you want to search in the field to the right of Summary option.
 
Initiate your search.
Avid Ada Rebrand	Due to the rebranding effort, you might notice some small changes to the Search app. For example, the options for Ada Transcript Status and Ada Summary Status in the search type menu and the Display Options menu are now simply labeled Transcript Status and Summary Status.

System
Feature	Description
Generic OAuth Login to
Grafana	This release supports the ability to sign in to Grafana using a Generic OAuth provider.
For additional details, see "Enabling System Monitoring" and "Working with Grafana" in the Avid MediaCentral | Cloud UX Installation Guide.






User Management App
Feature	Description
Entitlement changes for Avid AI Features	The User Management app provides changed and new entitlements for Avid AI features:








l	New) The entitlement "Avid AI Summary RW Access" is used to enable users to trigger an Avid AI Summary operation for a transcript. The results of the summary can be shown in the Search app's Inline hits.
l	(New) The entitlement "Avid AI Translate RW Access" (technical name: ent_ mcs_perm_ena_transl) is used to enable translation creation and editing features on a group basis.
–	Users of a group that has the entitlement assigned can create, recreate, and edit translations for transcripts in the Transcript tab.
–	Users of a group that does not have the entitlement assigned can only view translations and copy translation text.
For more information, see "Group Details and Entitlements" in the Avid MediaCentral | Cloud UX Installation Guide and "Using Translations" in the Avid MediaCentral | Cloud UX User’s Guide.
l	(Renamed) The entitlement "Avid Ada Transcribe RW Access" (technical name: ent_mcs_perm_ena_stt) to enable transcript creation has been renamed to "Avid AI Transcribe RW Access".



User Settings
Feature	Description
Notifications: activity emails for Process app	In the Notifications group, you can now enable sending activity emails for the Process app (job status reaches CANCELLED, COMPLETED, PARTIAL or FAILED status).
For more information, see "Configuring Notifications" in the Avid MediaCentral | Cloud UX User's Guide.



Wolftech App
Feature	Description
Faster Loading	The Wolftech app includes backend changes that are meant to decrease the loading time of the app when selected.


Wolftech News CTC
The Wolftech News CTC has been updated to include the following new features: l Wolftech News Top Story
The Wolftech News CTC can now return the Top Story flag for Wolftech News stories. This means that you can now search for this attribute in the Search app, and display this property in a column in the Display Options menu of the Browse and Search apps.
If you have already indexed your Wolftech News system, you must perform a Metadata Namespace and "Entities > Stories and pitches" resync through the Wolftech Integration app to update the local index for existing assets.
l	Wolftech News now automatically sends information to MediaCentral Cloud UX when a change is made to calendars, offices, genres, departments, platforms, and sub-platforms. These changes reduce the number of times that an administrator might need to perform a manual resync through the Wolftech Integration App.
For more information on this topic, see "Performing a Manual Synchronization" in the "Using the Wolftech Integration App" chapter of the Avid MediaCentral | Cloud UX Installation Guide.
l	For publishing template fields, the name of the template is now returned as a tool-tip. The tool-tip also has been extended to show the platform and sub-platform (in the format: “Platform:
<platform>/<subplatform>, Template: <template>”). This allows selecting a specific template field for a specific sub-platform in the Rules Editor's Publish Publishing Output actions. For more information, see "Defining a Publish Publishing Output Action" and "Referencing Avid Metadata in Publisher Templates" in the Avid MediaCentral | Cloud UX Installation Guide.
l	The Wolftech News CTC can now update additional properties, which enables users to use the following properties in "Create Entity" and "Update Metadata" actions for Wolftech News entities in the Rules Editor app: Production Type (for Stories, Pitches and Events), Story Status (for Stories), Pitch Status (for Pitches) and Publishing Output Status (for Publishing Outputs).
l	The created, creator, modified, and modifier Common fields that appear in the Browse and Search apps are now inclusive of Wolftech News assets.


Wolftech News Sync Service
You can now sync (or resync) your Wolftech News system to index taxonomies that contain the values of single-select and multi-select fields. After the indexing is complete, you can also use the Search app to search within these fields (similar to MediaCentral Asset Management legal-list fields).
 
Workflow Settings App
Feature	Description
Storage Connectors: configure multiple connections	The Storage Connectors section has been modified to let you configure multiple connections for each Storage Connector.
For more information, see "Configuring Storage Connectors" in the Avid MediaCentral | Cloud UX Installation Guide.



Upgrading to MediaCentral Cloud UX v2025.10
The following procedure can be used to upgrade an existing MediaCentral Cloud UX server or cluster. If you are performing a new installation, see the Avid MediaCentral | Cloud UX Installation Guide for detailed instructions.
c If you are running a version of MediaCentral Cloud UX prior to v2024.10, you must upgrade your servers to the v2024.10 LTM release (at minimum) before upgrading to v2025.10. This requirement applies to both Platform and Feature Packs. For more information on that upgrade process, refer to the v2024.10 Avid MediaCentral | Cloud UX ReadMe for details.
Refer to the following processes to complete the upgrade:
l	(cluster-only) "Verifying the Primary Node" on the next page l "Upgrading Ubuntu" on the next page
This process describes how to upgrade Ubuntu to the version of software required for this MediaCentral Cloud UX release. l "Updating the Platform" on page 35
Required for all servers. If you have a cluster, you must complete this process on all nodes. l "Updating the Feature Packs" on page 36
This process uses the Feature Pack ISO. If you have a cluster, you must complete this process on the primary node only.
l	"Updating MediaCentral Search" on page 39
You must review this information for all upgrades.
The steps required to install this release on single-server configurations or clustered configurations are similar. Any variations for clustered systems are noted. If you are familiar with the process to install a new MediaCentral Cloud UX server, the upgrade process should look very familiar to you. As such, you can reference the Avid MediaCentral | Cloud UX Installation Guide for additional information on many of the topics referenced below.
Prior to beginning the upgrade, you must obtain the MediaCentral Cloud UX installation media. For more information, see "Avid MediaCentral Cloud UX Installation Media" on page 6.
Consult the MediaCentral Compatibility Matrix prior to upgrading any application or system to ensure that you understand the scope of the upgrade. In some cases, you might be required to upgrade additional components to maintain system compatibility.
Upgrading Multi-Site Environments
The following upgrade process applies to both single and multi-site environments. There are no specific or custom steps required for a multi-site configuration. Prior to upgrading a multi-site environment, make sure that you have read and understood the site compatibility requirements. For more information, see "Upgrade Options for Multi-Site Environments" on page 4.
Partner Applications
If you have installed any partner applications on your MediaCentral Cloud UX system, the enhancements made to this release might require you to reinstall these applications after you complete the upgrade. In some cases, you might also need to reconfigure some partner app settings. For more information, see http://developer.avid.com/cert/feature-pack-installation/docs-public/README.html.
Troubleshooting
If you experience any issues with the MediaCentral Cloud UX user interface directly after upgrading your servers, you might try clearing the browser cache on your local workstation as an initial troubleshooting step.
Verifying the Primary Node
The first three nodes in a MediaCentral Cloud UX cluster are considered Control Plane nodes. When you initially installed and configured the cluster, you were asked to define a “primary” Control Plane node. When performing an upgrade, you must execute the process from the primary node.
If you are upgrading a single-server environment, you can bypass this process and proceed directly to "Upgrading Ubuntu" below.
To verify the primary node:
t (cluster only) Identify your “primary” node.
The primary node is the only node in the cluster that includes a service-host-inventory.json file at /etc. Select a node in your cluster and enter the following command to determine if the system configuration files are present on this node:
sudo ls /etc/
If you see the file listed, you've found the primary node. If you do not see the file, issue the command on each of your cluster nodes until you find the primary.
Upgrading Ubuntu
This topic includes a process for upgrading a MediaCentral Cloud UX single-server or cluster from Canonical Ubuntu v22.04 LTS (Jammy Jellyfish) to v24.04 LTS (Noble Numbat). While this process is provided for convenience, you should consult Ubuntu's official documentation in the event that you have any issues or additional questions.
For more information and resources, see "Ubuntu Technical Support" in the Avid MediaCentral | Cloud UX Installation Guide. You can also review the Ubuntu 24.04 release notes at: https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-notes/39890.
n Ubuntu does not support a rollback from v24.04 to v22.04. If you need to revert back to Ubuntu v22.04, Avid suggests performing a clean install of the operating system.
All steps in the following process apply to single-node configurations. If you are configured in a cluster, note the following:
l	optional: Identifies an optional, but recommended step. l node1: If you are running a cluster, this step must be completed on the primary node only.
l	all: If you are running a cluster, this step must be completed on every control plane, and worker node.
Following the successful upgrade to Ubuntu v24.04, you will continue to upgrade your MediaCentral Cloud UX to the version of software referenced in this document.
Upgrading Ubuntu to v24.04
To upgrade to Ubuntu v24.04:
1.	Review the following prerequisites:
a.	You must be running MediaCentral Cloud UX v2024.10.x through 2025.6.x to complete this process.
b.	Prior to bringing MediaCentral Cloud UX offline, make sure you know what feature packs are deployed so that you can redeploy the same feature packs after the upgrade.
c.	If you have installed any 3rd party packages, contact the original vendor to verify compatibility with Ubuntu v24.04.
d.	(if necessary) Uninstall any 3rd party software, and reinstall the software following the upgrade.
e.	If you are working in a virtual environment, you might consider creating a "snapshot" of your existing 22.04 system before proceeding with the upgrade.
2.	(optional, node1) Create a backup of the following:
–	Configuration files. For details, see "Backup or Restore your Config Store" in the Avid MediaCentral | Cloud UX Installation Guide.
–	MongoDB. For details, see "Backing up the Mongo Database" in the Avid MediaCentral | Cloud UX Installation Guide.
Avid recommends creating a backup of these files in the unlikely event that the Ubuntu upgrade does not go as expected and you are unable to access your system. After you create the backups, save these files to an external drive or network share (separate from your MediaCentral Cloud
UX server(s)).
3.	(node1) Enter the following command to list your MediaCentral Cloud UX nodes and verify that each is running the Ubuntu 22.04.<x> LTS OS Image:
sudo kubectl get node -o wide
4.	(node1) From your single server or primary cluster node, enter the following command to drain the services from your node(s):
sudo avidctl node drain --all
5.	(node1) Uninstall MediaCentral Cloud UX: sudo avidctl platform teardown
6.	(node1) Take the node(s) offline and instruct Kuburnetes to keep them offline with the --permanent switch:
sudo avidctl node offline --permanent --skip-drain
7.	(all) Update the Ubuntu software packages to ensure that you have the latest versions available.
a.	sudo apt update
b.	sudo apt upgrade -y
c.	sudo apt dist-upgrade -y
d.	sudo apt autoremove -y
For more information on these commands, see "Installing Ubuntu Software Updates" in the Avid MediaCentral | Cloud UX Installation Guide.
8.	(all) Install the Update Manager software:
sudo apt install update-manager-core
9.	(all) Following the installation, enter the following command to ensure that the Prompt value has a value of lts. sudo cat /etc/update-manager/release-upgrades
For example:
admin@wavd-mcux:~$ sudo cat /etc/update-manager/release-upgrades # Default behavior for the release upgrader.
[DEFAULT]	
# Default	prompting and upgrade behavior, valid options:
#		
#	never	- Never check for, or allow upgrading to, a new release.
#	normal	- Check to see if a new release is available. If more than one new
#		release is found, the release upgrader will attempt to upgrade to
#		the supported release that immediately succeeds the
#		currently-running release.
#	lts	- Check to see if a new LTS release is available. The upgrader
#		will attempt to upgrade to the first LTS release available after
#		the currently-running one. Note that if this option is used and
#		the currently-running release is not itself an LTS release the
#		upgrader will assume prompt was meant to be normal.
Prompt=lts	
This value determines how the do-release-upgrade command handles the Ubuntu upgrade. With a value of lts, the upgrade tool knows to install the LTS release only.
10.	(all) Reboot the MediaCentral Cloud UX node(s): sudo reboot
Following the reboot, sign back into the operating system.
11.	(all) Stop and disable auditd: systemctl stop auditd systemctl disable auditd
This service is re-enabled automatically on the next reboot of the server.
12.	(all) Check for the latest Ubuntu LTS release: sudo do-release-upgrade -c
The system should reply with information similar to the following:
admin@wavd-mcux:~$ sudo do-release-upgrade -c
Checking for a new Ubuntu release New release '24.04.2 LTS' available.
Run 'do-release-upgrade' to upgrade to it.
13.	(all) Upgrade your server to Ubuntu 24.04 LTS:
sudo DEBIAN_FRONTEND=noninteractive UCF_FORCE_CONFFOLD=YES do-releaseupgrade -f DistUpgradeViewNonInteractive
14.	(all, if applicable) If you completed the process in the Avid MediaCentral | Cloud UX Installation Guide to "Configure the NTP Source" the upgrade process prompts you with the following choice:
Configuration file '/etc/systemd/timesyncd.conf' ==> Modified (by you or by a script) since installation.
==> Package distributor has shipped an updated version.
What would you like to do about it ? Your options are:
Y or I : install the package maintainer's version
N or O : keep your currently-installed version
	D	: show the differences between the versions
Z	: start a shell to examine the situation The default action is to keep your current version.
*** timesyncd.conf (Y/I/N/O/D/Z) [default=N] ?
You can do either of the following to continue: t Type N (for no) and press Enter to continue. t Do nothing. The upgrade script selects the No option automatically after a few minutes.
n If the system prompts you with any other choices during the upgrade, follow the on-screen prompts to continue. If you are unsure about a choice, select the default option.
If the upgrade is successful, the system should return you to the console prompt with no errors. The upgrade process does not display any "upgrade complete" or "upgrade successful" messages. Alternatively, you can review the /var/log/dist-upgrade/ logs for errors.
15.	(all) Reboot the MediaCentral Cloud UX node(s): sudo reboot
16.	(all) Following the reboot, sign back into Ubuntu and verify that your system is running 24.04:
lsb_release -a
Your output should look similar to the following:
No LSB modules are available.
Distributor ID: Ubuntu
	Description:	Ubuntu 24.04.2 LTS
	Release:	24.04
	Codename:	noble
17.	(all) Reinstall Ubuntu Uncomplicated Firewall (UFW): sudo apt install ufw -y
Updating the Platform
After you upgrade the operating system, you must upgrade the MediaCentral Cloud UX software, and restore any files that you might have saved as part of a backup process.
The host-upgrade process requires outbound/inbound access to the internet to download and update various system packages. If your MediaCentral Cloud UX system does not have direct internet access, see the process for “Updating Servers - Proxy Method” in the Avid MediaCentral | Cloud UX Installation Guide to enable a path for these downloads.
To upgrade MediaCentral Cloud UX:
1.	(all) Copy the mediacentral_platform_<build>.bin file to your MediaCentral Cloud UX server.
For options, see "Copying Software to the MCUX Server" in the Avid MediaCentral | Cloud UX Installation Guide.
2.	(all) Before you can install the software, you must update the permissions on the mediacentral_ platform_<version>.bin file:
sudo chmod +x mediacentral_platform_<version>.bin
3.	(all) Install the MediaCentral Cloud UX Platform software: sudo ./mediacentral_platform_<version>.bin
The system verifies the integrity of the archive and installs the updated packages.
4.	(node1) Perform the host upgrade.
a.	Enter one of the following commands to upgrade the Platform software on the server:
t If you have enabled password-less access on all nodes by completing the process for "Logging in to Ubuntu for the First Time" in the Avid MediaCentral Cloud UX Install Guide, enter the following command:
sudo avidctl platform host-upgrade --ssh-user <user>
Where <user> is the name of your Ubuntu user account.
t If you did not enable password-less access on all nodes, enter the following:
sudo avidctl platform host-upgrade --ask-become-pass --ssh-user <user>
Where <user> is the name of your Ubuntu user account.
b.	At the upgrade verification prompt, enter y (Y) to continue, or n (N) to exit the script.
c.	The script prompts you for your SSH password.
Type your user password and press Enter (or Return on a Mac keyboard) to continue.
As shown in the following example, the script might attempt to restart some tasks during the upgrade process. These retries appear as failures in the script output, but this is normal and expected behavior.
TASK [kube-registry : Wait for Chart Repository] ************************* FAILED - RETRYING: Wait for Chart Repository (30 retries left).
FAILED - RETRYING: Wait for Chart Repository (29 retries left).
...
TASK [kube-registry : fail] ********************************************** skipping: [wavd-mcux01]
After the upgrade process is complete, a message similar to the following is displayed (example from a three-node cluster):
PLAY RECAP ************************************************************ wavd-mcux01 : ok=277 changed=52 unreachable=0 failed=0 skipped=72 rescued=0 wavd-mcux02 : ok=225 changed=34 unreachable=0 failed=0 wavd-mcux03 : ok=225 changed=34 unreachable=0 failed=0 -------------------------
Log file: /var/log/service-host-upgrade-1537275725.log
Review the results and verify that there are no failed tasks. If you see a failure, you must troubleshoot the issue before continuing with the MediaCentral Cloud UX installation process.
5.	(all) If necessary, upgrade the Avid NEXIS Client on your MediaCentral Cloud UX servers.
For more information on that process, see "Installing the Avid NEXIS Client" in the Avid MediaCentral | Cloud UX Installation Guide.
6.	(all) Update the GlusterFS operational version.
The upgrade to Ubuntu 24.04 installs an updated version of GlusterFS. After you verify that your system is working normally, you need to complete the following steps to update the op-version.
a.	From your single-server or cluster primary node, enter the following command to list the operating version:
sudo gluster volume get all cluster.op-version
b.	Use the value reported in the previous command to set the value for all volumes: sudo gluster volume set all cluster.op-version <version>
For example:
sudo gluster volume set all cluster.op-version 110000
7.	Continue to "Updating the Feature Packs" below.
Updating the Feature Packs
This process uses the Avid MediaCentral Cloud UX Feature Pack ISO to upgrade the feature packs on the MediaCentral Cloud UX server or cluster. If you have a cluster, this process is completed on the primary node only.
To upgrade the Feature Packs:
1.	Use a terminal application to log in to your single-server or primary node.
2.	Verify that your single-server or primary node has access to the feature pack ISO(s).
You might decide to copy the file(s) directly to the server, connect a portable USB drive to a physical server, or use another connection method. The installer must have access to the Feature release ISO at minimum.
3.	Do one of the following to install the feature packs:
–	Deploy the updates included in this Feature release only:
sudo avidctl platform import /<path>/mediacentral_feature_packs_ <version>.iso
–	If you are following this process after downloading a patch for this feature pack, you can deploy both ISOs with a single command:
sudo avidctl platform import /<path>/mediacentral_feature_packs_ <version>.iso /<path>/mediacentral_feature_packs_<version>.iso
For example:
sudo avidctl platform import /media/mediacentral_feature_packs_ 2025.10.0.iso /media/mediacentral_feature_packs_2025.10.2.iso
Patch releases are cumulative. If multiple patch releases are available at the point of installation, do not include each file name in the command. For example, the following would be an invalid command:
sudo avidctl platform import /media/mediacentral_feature_packs_
2025.10.0.iso /media/mediacentral_feature_packs_2025.10.1.iso /media/mediacentral_feature_packs_2025.10.2.iso
c Avid supports a maximum of two ISO imports at any one time. You cannot upgrade to an LTM release and a Feature release simultaneously.
The import process mounts the ISO to a temporary folder. It then imports the images and helm charts into the local container registry. When the import is complete, the process dismounts the ISO (s) from your system automatically. The "decompress file" stage that happens early in the process does not provide feedback. This is normal behavior. Please be patient as this process can take some time to complete.
When complete, the process should finish with a "Feature Pack import was successful" message. At this point, you can delete the ISO(s) from your local storage if desired.
4.	Use the following command to deploy the features included in this release: sudo avidctl platform deploy -i
The script checks the Kubernetes Config Store to verify the existence of the system configuration files. If the script finds the configuration files, it reports the status of each file [OK]. If the script cannot find the files, it alerts you to the situation and provides you with an opportunity to abort the installation and resolve the issue.
5.	Next, you must determine which feature packs should be upgraded, installed, or removed.
The script prompts you with a series of yes or no questions. Each prompt is associated with a default value which is identified as a capital Y for yes or N for no. If the script determines that the feature pack is already installed, the default value is Y. If the feature pack is not installed, the default value is N.
n	If you plan to deploy Avid Production Management on your MediaCentral Cloud UX system, answer No to the Avid Production Management prompt. Following the MediaCentral Cloud UX deployment, refer to the "Configuring Avid Production Management" section of the Avid MediaCentral | Cloud UX Installation Guide to install and configure this software.
Do one of the following:
t Press the Enter key to accept the default value. t Press Y (or y) to upgrade or install the feature pack.
t Press N (or n) to skip or uninstall this feature pack.
If your existing installation includes a feature pack that you no longer want to use, you can enter N at the prompt to remove the feature pack from your existing installation.
The feature pack installation process begins. Be patient as this process can take some time.
6.	After the installation is complete, you can use the following command to verify that the required feature packs have been installed:
sudo helm ls
The command should report 2025.10.0-v0315-Gc04c858 as the App Version for all upgraded components.
n	If you deploy additional features such as Avid Production Management, the command might report additional app version numbers that do not match the above version number.
7.	(cluster-only, recommended) In some rare cases, Kafka might fail to create some topic replicas after a system upgrade. Since this issue could affect any number of MediaCentral Cloud UX subsystems, Avid recommends that you manually verify the replica status before you release the system back to a production-ready state. Enter the following command to check the replicas: sudo aviddbctl kafka check-replicas
t If the script reports that all replicas are consistent, no additional action is required.
t If the script reports a warning that the "replica sets are not complete", do the following:
a.	Wait appropriately 10 minutes to give the system an opportunity to correct the situation on its own.
b.	Repeat the check-replicas command.
c.	If the replicas are still inconsistent, enter the following to manually correct the situation:
sudo avidctl platform devtools search-reset
d.	Wait another 10 minutes, and repeat the check-replicas command to verify the status.
If you are still seeing inconsistent replicas, contact Avid Customer Care for assistance.
8.	(recommended) Verify and if necessary, update your certificates.
As part of this upgrade process, Avid recommends that you verify the expiration dates of your deployed certificates. If you are nearing the certificate’s expiration date, you might want to take the opportunity to deploy a new certificate to avoid any potential connection issues for your users.
a.	Verify your TLS certificate’s expiration date.
For more information, see “Verifying the SSL Certificate” and “Creating Certificate Files” in the Avid MediaCentral | Cloud UX Installation Guide.
b.	Verify your Kubernetes certificate’s expiration date.
For more information, see “Understanding Kubernetes Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
9.	Although already noted in the New Features section of this document, this step serves as an additional reminder to assign service account to the Sync Agents in the Configuration Settings app, or that your Active Directory or OpenID Default Service User is configured with the correct permissions.
10.	Continue to "Updating MediaCentral Search" on the next page.
 
Updating MediaCentral Search
Updating MediaCentral Search
After upgrading your MediaCentral Cloud UX system software, you might be required to rebuild your search index. However, the type of rebuild process might vary depending on the individual release or your upgrade path. The following list describes the different rebuild types:
l	Data: The Search Index must be rebuilt, based on the data included in the MongoDB database. When rebuilding the data, the existing index remains and any searches conducted during this time return valid results.
To complete this process, refer to “Rebuilding an Index” in the “Using the Search Index Monitor App” chapter of the Avid MediaCentral | Cloud UX Installation Guide. For a Data rebuild, you are not required to delete the existing data before rebuilding.
l	Mapping: A Mapping rebuild first recreates the data definition of the index, and then populates it with new data. Effectively, a Mapping rebuild includes a Data rebuild. Whenever you are asked to complete a Data rebuild, you could do a Mapping rebuild instead. The disadvantage of the Mapping rebuild is that the Search index is deleted and then re-created. If you execute a search during this rebuild, the Search app returns only partial results until the rebuild is complete.
To complete this process, refer to “Rebuilding an Index” in the “Using the Search Index Monitor App” chapter of the Avid MediaCentral | Cloud UX Installation Guide. For a Mapping rebuild, you must select the “Delete all existing data” option during the rebuild process.
l	Phonetic: This process has no bearing on the text-based metadata. If you rebuild the phonetic index, the text metadata index remains unaffected.
To complete this process, refer to “Resetting the Phonetic Metadata Search Index”, in the Avid MediaCentral | Cloud UX Installation Guide.
If you are working in a Multi-Site environment, the following processes apply to the local MediaCentral systems only. If you upgrade your local site to the latest release, you are not required to touch the remote sites as part of the upgrade process. Similarly, if you upgrade Site-A to the current release, and then upgrade Site-B at a later date, you are not required to revisit or Site-A unless otherwise noted below.
I am upgrading to version	Required Rebuild Type
2023.12	Mapping
2024.2	No rebuild required for this release
2024.10	Mapping
2025.6	Mapping
2025.10	Mapping
If you are adding MediaCentral Phonetic Index to your environment as part of this upgrade, Avid recommends that you complete the process for “Installing Nexidia Search Grid” in the Avid MediaCentral | Cloud UX Installation Guide before resetting the search index. Since the Phonetic Index configuration process requires you to reset your search index, you can avoid re-indexing the system twice by completing the Phonetic Index integration first.
Fixed in Version 2025.10.0
The following issues have been resolved in MediaCentral Cloud UX v2025.10.0.
Action Monitor
 	Bug Number: MAM-21127. The Action Monitor reads outstanding Kafka messages into memory before processing, which is currently unbounded. This may cause the service to crash with OutOfMemory errors.
Asset Editor
 	Bug Number: JP-9672. The introduction of Light and Dark mode options altered the color associated with proxy-only media. After enabling the Media Status feature in the Sequence Timeline, proxy-only media appears as a shade of orange which can be confused with the shade of orange used for Archive media.
 	Bug Number: NEO-3707. When playing Asset Management assets, playback might occasionally freeze and then display a Media Offline slate in the Media Viewer. You might also experience issues when performing a Video Analysis of these same assets.
n If you apply this patch and you still experiencing issues with Asset Management proxies created through a 3rd party system, such as Telestream Vantage, you might want to verify additional configuration settings or system drivers with your solution’s vendor.
 	Bug Number: NEO-3919. If you are viewing the Thumbnails layer of the Storyboard tab for an EWC (Edit While Capture) asset, the tab does not display all of the expected thumbnails when the capture is complete.
 	Bug Number: NEO-3920. If you drag and drop two or more markers from the Storyboard tab to the Sequence Timeline, only one of the selected makers is added to the sequence.
 	Bug Number: NEO-3942. Dragging an asset from the Media Viewer to the empty Sequence Timeline results in a “invalid (undefined) mediaID” error when saving the sequence. After the save, the asset is not included in the sequence.
 	Bug Number: NEO-3954. Dragging and dropping multiple assets from the Browse app to the Sequence Timeline results in only the first asset being added to the sequence.
 	Bug Number: NEO-3997. When loading Asset Management proxy media that includes a mix of stereo and mono tracks, the player might reply with a "Connection failed to server" error message.
 	Bug Number: NEO-4017. The color values for some assets might appear incorrect when seeking (moving the playhead by selecting various points on the timeline).
 	Bug Number: PLAD-995. Assets created through some 3rd party systems might appear offline in the MediaCentral Cloud UX Media Viewer.
Avid Transcribe
 	Bug Number: RCTR-3036. In certain error cases, the Avid ML worker correctly catches the error but fails to report it into Job Monitor. In the Process app, the ML worker job therefore is still shown as RUNNING instead of FAILED.
 	Bug Number: SYN-2252. Transcribe fails if a multi-resolution media has its Current Video Resolution set to Proxy upon check-in.
 	Bug Number: RCTR-3039. The Turbo deployment model is not compatible with the RTX 5000 series GPU.
Browse App
 	Bug Number: JP-9793. You cannot create a copy of an asset using the drag and drop workflow from one instance of the Browse app to another if: 1) the Results area of the second instance of the app is in List view, and 2) the bottom of the Results area does not include any available empty space at the bottom of the list.
 	Bug Number: JP-9799. Using Shift (hold) + Up Arrow or Shift (hold) + Down Arrow to select multiple consecutive assets in list view of the Browse or Search apps produces inconsistent results. At times, the apps allow you to select only two assets using these commands.
 	Bug Number: JP-9830. Originally identified as closed in v2024.10.12, this ticket revisits the fix for JP-9799.
 	Bug Number: JP-9831. After performing certain actions within the user interface, assets might not display the expected tool-tips when hovering over the asset name in the Browse or Search apps.
Cloud UX Middleware Services
 	Bug Number: MAM-21103. When using the MediaCentral Panel in Media Composer for a MediaCentral
Cloud UX environment that is configured for OpenID provider (Okta) authentication, you cannot apply actions via the Actions menu: Instead of applicable actions, the menu shows a “The request to collect available actions has failed” error message.
File Info Tab
 	Bug Number: MAM-21366. When you select the second location of an essence the File Info tab is cleared and does not show any information.
MediaCentral Acquire
 	Bug Number: CCUX-11006. Starting an instant recording immediately after switching to an invalid source, then quickly switching to a valid source, may cause the recording to fail. The channel remains locked in an "ongoing recording" state and may require manual release via the ingest device console. This issue occurs when the invalid source is active at the moment the recording begins.
 	Bug Number: CCUX-11038. When the timeline zoom is set to 5 or 30 minutes, drag-and-drop resizing of recordings does not function as expected.
 	Bug Number: CCUX-4948. Scheduling repeating recording series that cross the autumn DST, switches the recording +1 hour ahead in DST.
MediaCentral Hoverscrub
 	Bug Number: PLAD-994. During normal operation of Hoverscrub, intermediate mp4 files are stored in the Gluster cache. However, the avid-webproxy-generator is failing to delete these files automatically which can lead to unnecessary disk usage.
Avid recommends that you run the avidctl tools playback-cache-clear command to clear the player cache once after installing this update. You are not required to run this command as part of any regular maintenance. For additional information on this command, see "Clearing the Player Cache" in the Avid MediaCentral | Cloud UX Installation Guide.
Installation and Configuration
 	Bug Number: MTTO-4775. Upgrading from MediaCentral Cloud UX v2023.7.22 or later v2023.7.x patch release to v2024.10.8 fails due to a duplicate key error in the IAM database.
 	Bug Number: PRS-4124. Although the avidctl platform host-setup script disables the unattended-upgrades service, Ubuntu can still install system upgrades without administrative approval.
This fix reconfigures /etc/apt/apt.conf.d/20auto-upgrades with the following changes to fully disable Ubuntu's auto-update capability:
APT::Periodic::Update-Package-Lists "0";
APT::Periodic::Unattended-Upgrade "0";
Media Analytics Engine
 	Bug Number: MAM-21128. When using the MediaCentral Panel in Media Composer for a MediaCentral Cloud UX environment that is configured for OpenID provider (Okta) authentication, Create Transcript actions fail with a “Failed to create transcript” error.
MediaCentral Hoverscrub
 	Bug Number: NEO-4056. For an Asset Management asset, the Hoverscrub output.mp4 is not generated but a "No timeline available for globalId" error is thrown.
 	Bug Number: PLAD-994. During normal operation of Hoverscrub, intermediate mp4 files are stored in the Gluster cache. However, the avid-webproxy-generator is failing to delete these files automatically which can lead to unnecessary disk usage.
Avid recommends that you run the avidctl tools playback-cache-clear command to clear the player cache once after installing this update. You are not required to run this command as part of any regular maintenance. For additional information on this command, see "Clearing the Player Cache" in the Avid MediaCentral | Cloud UX Installation Guide.
MediaCentral Panel for 3rd Party Creative Tools
 	Bug Number: AL-3798. Performing an Ingest Sequence with Trimmed option selected causes a "The process 'Adobe AAF CheckIn: <sequence name>' reached final state FAILED" error to appear in Notifications and in the Process App, as the ingest job fails to check-in the sequence and instead only checks the media into Production Management.
 	Bug Number: AL-3949. When you import DNxHD HQX material, the resulting asset is presented as a sequence instead of a master clip.
 	Bug Number: JP-7776. The MediaCentral Help menu within the Panel does noting when selected.
This is expected behavior for the Panel. This fix removes the Help menu to eliminate the confusion.
 	Bug Number: MTTO-4889. The process of signing into MediaCentral Cloud UX using an
OpenID authentication provider through the MediaCentral Panel fails if you already have a session to MediaCentral Cloud UX open in a separate browser tab.
MediaCentral Panel for Avid Media Composer
 	Bug Number: JP-7776. The MediaCentral Help menu within the Panel does noting when selected.
This is expected behavior for the Panel. This fix removes the Help menu to eliminate the confusion.
 	Bug Number: MTTO-4889. The process of signing into MediaCentral Cloud UX using an
OpenID authentication provider through the MediaCentral Panel fails if you already have a session to MediaCentral Cloud UX open in a separate browser tab.
MediaCentral Sync
 	Bug Number: IPI-3871. MediaCentral Cloud UX includes a GlusterFS cleanup job that automatically deletes temporary files that are older than 24hrs. This job is programed to read the correct creation date stamp on the files which can lead to them being deleted prematurely. As a result, some MediaCentral Sync jobs can hang (and therefore fail) at the “3. Remote Media Sync” step.
 	Bug Number: MTTO-4784. Sync jobs fail during the Incoming Media Sync step with a “Maximum number of redelivery attempts exceeded” error.
Notifications App
 	Bug Number: JP-9828. If you receive a large number of notifications at one time (for example when signing into MediaCentral Cloud UX), the process of displaying these notifications might cause other areas of the user interface to become unavailable for a short period of time.
Platform GCP Storage Connector
 	Bug Number: MAM-21034. Heavy load can cause failed Kubernetes readiness probes in the Platform GCP Storage Connector which makes the service unreachable. The fix changes the connectivity probe inside the service to be executed in the background and the actual health check simply returns the current status for that.
Process Modeler App
 	Bug Number: MAM-21078. This bug fix addresses issues found in User tasks:
l	You cannot add Delegates. l When you remove a value from the States field, the wrong state gets deleted.
 	Bug Number: MAM-21079. This bug fix addresses issues found in Script tasks:
l	In the Inputs/Outputs dialog box, input is removed from a field when you press Enter. l When you remove a value from the States field, the wrong state gets deleted.
 	Bug Number: MAM-21081. In the Properties of a process, when you remove a value from the Contributors (user) field, the wrong user gets deleted.
 	Bug Number: MAM-21083. When you select a task in a process and open the Localization dialog box for it, the localization table does not scroll to the position of the related task.
Rules Editor / Rules Engine
 	Bug Number: MAM-21104. Change events for Asset Management EDLs are not processed.
 	Bug Number: MAM-21124. If the default specification of an action cannot be loaded, no error message or reload button is shown in the Details pane.
Rundown App
 	Bug Number: MA-7386. Previously, when stories from an unavailable Newsroom Management System were dragged-and-dropped from a search, no error message was displayed to notify the user that the attempted copy failed or that the selected stories could not be copied because of their unavailability.
 	Bug Number: MA-7395. Previously, when a segment was dragged and dropped onto a story, no message was displayed to indicate success or failure. Now, if the action is not permitted, the drop is prevented, and the user is notified.
 	Bug Number: MA-7397. In some previous versions, the Story Text Size drop-down menu did not close properly when the user clicked outside of it.
Schedule Editor / Schedule Engine
 	Bug Number: MAM-21312. Confusing time information display for Start Time and Next Execution Times.
Search App
 	Bug Number: ASSETS-4951, ASSETS-4691, ASSETS-4787. Address formatting issues in the PAM-CTC related to taxonomies that can lead to invalid responses from the CTC.
 	Bug Number: ASSETS-4956. If you save a Search favorite that contains a Wolftech News taxonomy field
(such as Genres) and you include a taxonomy value with the search, then the search pill displays a Loading Failed message when reopening that favorite.
 	Bug Number: JP-9552. When using Form view to add a search pill of type "Type", the pill will not close (accept the value) unless you select another search pill. Clicking anywhere else in the UI does not close the pill.
 	Bug Number: JP-9700. The Enter key on the keyboard's numeric keypad does not allow you to execute a search.
 	Bug Number: JP-9781. The Enter key on the keyboard's numeric keypad does not allow you to execute a search.
 	Bug Number: JP-9805. If you switch between two favorite searches that each use the Date Created (Between) value, the dates are not updated in the search bar with the correct values when you select the second search. This is a display issue only as the search results are correct for the given date range.
System
 	Bug Number: PRS-3682. The endpoint security system, CrowdStrike Falcon, has a known compatibility issue with the version of Kubernetes that is bundled with MediaCentral Cloud UX v2025.6. When Kubernetes attempts to delete a pod as part of its normal operation, the action can crash the Kubernetes infrastructure — leaving the system in an unusable state. This issue does not apply to prior versions of MediaCentral Cloud UX.
Updated versions of CrowdStrike resolve this issue. Contact CrowdStrike directly for additional information.
c If you created an exclusion to mitigate this issue (as documented in the MediaCentral Cloud
UX 2025.6 ReadMe), you should consider eliminating that exclusion after upgrading your CrowdStrike system.
User Management App
 	Bug Number: MAM-21229. In OpenID mode, the context menu with group editing features is not restricted to Super Admins but also accessible for users.
Wolftech App
 	Bug Number: ASSETS-4970. Some assets are inappropriately flagged with an error in the Traffic area of the Wolftech Integration app.
 	Bug Number: ASSETS-5001. A permissions mismatch between a system user and the Kubernetes pod causes the Wolftech Search Sync Service to encounter file write permission issues on startup.
 	Bug Number: JP-9661. Changing the color scheme (Light or Dark) in the User Settings does not effect the Wolftech app if it is closed.
 
Limitations and Defects Found
Wolftech Integration App
 	Bug Number: ASSETS-4927. The Traffic panel displays invalid error messages for configuration-related change events.
Wolftech News CTC
 	Bug Number: ASSETS-4990. Publishing template fields were not available for all sub-platforms when the same publishing template is used by multiple publishing sub-platforms. In this case, the attribute IDs could contain the wrong sub-platform ID when querying the attributes for a publishing output.
In context of this bug fix, the template ID has been changed from an integer with only the <templateid> to a string consisting of “<subplatformid>.<templateid>”.
Note that already working “Publish Publishing Output” actions in the Rules Engine still work. However, those “Publish Publishing Output” actions might be displayed as erroneous in the Rules Editor because the template ID has changed. It is recommended to fix the actions by re-selecting the valid template and field.
 	Bug Number: ASSETS-5013. As part of a prior bug fix, invalid "Additional Information" fields returned from Wolftech News were filtered out of results. Unfortunately that fix impacted the ability to successfully access any valid fields that followed after a filtered field.
Limitations and Defects Found in Version 2025.10.0
This section includes information on known limitations and defects related to MediaCentral Cloud UX.
Action Engine CTMS
 	Bug Number: MAM-21373. In the Rules Editor, the action Update Metadata provides the attributes Top Story and Main Organization although these cannot be updated for a Story or Pitch.
Avid Production Management
 	Bug Number: ASSETS-4823. If you attempt to delete a folder that contains a large number of assets
(~15,000 for example), the deletion request fails. In this case no assets from the specified folder are deleted. This issue applies to the deletion workflow in both MediaCentral Cloud UX, and the Production Access client.
Workaround: You can do either of the following as a temporary workaround for this issue:
t Open the folder and delete assets in smaller batches. After several smaller deletions, you can attempt to delete all assets at the folder level.
t Use MediaCentral Cloud UX or Production Access to move a portion of assets into another folder, and then delete the two folders individually.
 	Bug Number: PLUS-2293. After creating an initial backup of the Production Management database, the process of creating additional backups using the avidctl apm db backup command results in multiple “cannot tar bucket” warning/error messages. These messages indicate that certain "bucket files" already exist and were therefore not re-created. These messages can be ignored as the resulting backup file is successfully created.
Limitations and Defects Found
Browse App
 	Bug Number: JP-9849. If you configured Avid NEXIS API Services to enable you to browse your Avid NEXIS storage, the Browse app side-panel does not display the chevrons to the left of the storage in the tree structure.
Workaround: While not displayed, the tree structure is available. Double-click on the Avid NEXIS system in the directory to expand the tree and navigate to your desired location.
MediaCentral Panel for Media Composer
 	Bug Number: MTTO-4829. You cannot play assets in the Asset Editor’s Media Viewer if your MediaCentral Cloud UX system is configured for an OpenID provider, such as Okta.
Workaround: If you are attempting to play a Production Management asset, load the asset into the Media Composer Source/Record monitor. If you are attempting to play an Asset Management asset, connect to MediaCentral Cloud UX through your Chrome browser.
MediaCentral Panel for 3rd Party Creative Tools
 	Bug Number: AL-3883. After using Production Management Delivery to initiate a partial delivery of remote assets to your local site, the assets appear offline when imported / viewed in Adobe Premiere. The offline error is due to a processing problem in which the mxf files are mapped to the wrong tracks.
Workaround: After completing the delivery, consolidate or create a mixdown of the assets that you want to use with Adobe Premiere. Once processed locally, the assets can be used with Adobe Premiere.
 	Bug Number: AL-3996. The process of importing multi-res Production Management assets fails if the highres version of the asset is offline.
Search App
 	Bug Number: RCTR-3148. After adding markers to an Avid Production Management asset, you cannot see these markers in the Timeline view of the In-Line Hits window.
n Although the markers do not appear in In-Line Hits, you can view the markers in the Storyboard tab, and you can continue to use the Search app to find the marker text.
Schedule Editor/Schedule Engine
 	Bug Number: MAM-21379. If you configure a Basic Trigger which should run every month, you cannot change the week identifier to “fifth”. The list always keeps the previously selected value.
 	Bug Number: MAM-21361. In case the Schedule Engine runs in multiple instances, jobs are triggered even if the Schedule Engine is paused.
Limitations and Defects Found in Earlier Versions
Limitations and defects in are organized in the following sections:
 
Limitations and Defects Found in Version 2025.6.0
Asset Editor
 	Bug Number: MAESTRO-7333. The Graphics tab continues to display some aspects of the user interface in Dark mode after switching the appearance in the User Settings to Light mode.
 	Bug Number: NEO-3807. If you play an asset and then drag the clip from the Media Viewer to another area of the user interface, a large “ghosted” version of the frame is shown during the drag operation.
Workaround: If you click anywhere the Viewer Timeline before dragging the asset, the smaller thumbnail image is displayed as designed.
 
 	Bug Number: NEO-3909. If you create a new News sequence and your connection to the server is lost
(network disconnect, browser crash, or other), then the sequence cannot be recovered when the connection is reestablished.
This issue applies to new News sequences only. If you are disconnected when editing an existing saved sequence, you are prompted to recover the sequence as expected.
 	Bug Number: NEO-3915. If you reload a Sequence or a News sequence after recording a new voiceover, the asset appears red in the Sequence Timeline if you enable the Show Media Status feature.
Workaround: Reload the page in your browser, or sign out and sign back into MediaCentral Cloud UX to display the correct media status.
 	Bug Number: NEO-3920. If you drag and drop two or more markers from the Storyboard tab to the Sequence Timeline, only one of the selected makers is added to the sequence.
MediaCentral Acquire
 	Bug Number: CCUX-7417. In some cases, when a recording check-in fails, the check-in icon may still display a successful status while the overall recording status shows an error.
Workaround: To adjust the duration, either edit the recording directly or change the zoom level.
Search App
 	Bug Number: RCTR-2870. The Search app’s Search Type menu includes an Ada Summary Status value. This feature is not currently available and is included only as a placeholder for potential future feature development.
System
 	Bug Number: PRS-3541. Avid Transcribe jobs might fail due to an oversubscription of system resources most specifically SeaweedFS. When this issue occurs, you might see a “pq: cannot execute INSERT in a read-only transaction“ message written to the seaweedfs-filer pod log.
Workaround: Restart the seaweedfs-filer pod(s) through Kubernetes and wait for the pod(s) to be recreated before attempting to transcribe new assets.
If the issue persists, contact Avid Customer Care for further assistance.
Limitations and Defects Found in Version 2024.10.0
Asset Editor
 	Bug Number: ICI-4899. If you create a sequence in Media Composer that has assets edited into 3 or more audio tracks and the tracks do not include any overlapping audio, you might not hear playback of tracks 3 or later when played in MediaCentral Cloud UX.
Workaround: Use Media Composer to edit some audio on track 3 so that it overlaps the audio on tracks 1 or 2, and then check the sequence back into Production Management.
 	Bug Number: NEO-3127. When using the controls in a Dip to Color Controls effect to define a new color, you cannot change the color with the slider bar.
Workaround: Click anywhere inside the palette area above the slider, and then adjust the color value with the slider bar.
 	Bug Number: NEO-3447. If you enable the Show Audio Waveforms option in the Sequence Timeline and then start playback of the sequence before the waveform has finished drawing, it might not continue drawing when you stop playback.
Workaround: Reload the sequence to allow the Asset Editor to complete the waveform generation process.
 	Bug Number: SYN-1267. If you create a Sequence with two video tracks and V2 starts with Filler and then a transition effect to the first video segment, that Sequence will fail the STP process.
Workaround: Create a V3 track and either add a new segment to it, or move any segment from V2 to V3.
Browse App
 	Bug Number: JP-9305. If the system detects that a new asset has been added to the folder that you are currently viewing, the Results area of the Browse app might jump back to the first page of assets after scrolling down to a second page (Card View only).
Workaround: If the app returns to the first page of results, scroll back down to your desired asset.
MediaCentral Acquire
 	Bug Number: CCUX-10376. When failover to spare channel is configured, and the first device stops working during a recording (e.g., due to connection or power issues), the recording will fail over to the second device, but the original recording on device 1 does not finalize.
Workaround: To complete the recording process, request the transfer for the first device again.
MediaCentral Sync
For additional limitations, see the Avid MediaCentral | Production Management ReadMe.
 	Bug Number: SYN-985. If you configure the User Mapping in the Multi-Site Settings app to use a standard user account (non-admin), MediaCentral Sync might not allow you to configure the Target DB Path or the Target Workspace when creating or editing Sync Tasks.
Limitations and Defects Found in Version 2024.2.0
Asset Editor
 	Bug Number: NEO-2813. After a prolonged period of editing and viewing Maestro graphic templates, you might experience slowness when viewing Maestro graphic previews in the player viewer. Issue relates to Avid Maestro ticket number: MAESTRO-7246.
Workaround: To increase system performance, Avid recommends as best practice to create all templates with a preview frame set. This might require you to recreate any existing graphic templates that do not include a preview frame.
If you are experiencing this issue and need a fast (but temporary) solution, you can delete the playback pod to restore responsiveness. For detailed instructions, see "Working with Kubernetes" in the Avid MediaCentral | Cloud UX Installation Guide.
 	Bug Number: NEO-3159. If you load an Asset Management document asset that includes a Preview into the Asset Editor, and then you load a different document asset that does not include a Preview, the original asset's preview continues to be displayed in the Media Viewer.
 	Bug Number: NEO-3164. If you load a group clip from a shotlist into the Media Viewer, via double-click or the 'Load Clip' item in the context menu, the correct angle might not be shown.
Search App
 	Bug Number: JP-9003. When downloading search results as a PDF, the content of the PDF might appear corrupted if your User Settings are configured for a language other than English.
System
 	Bug Number: ICI-4652. If you configure and deploy Avid NEXIS API Services, the Avid NEXIS system might not appear in the Browse and Search apps in some rare cases.
Workaround: If your Avid NEXIS storage is unavailable, do the following:
1.	Enter the following command on your single server or primary cluster node to determine the status of the Kubernetes Persistent Volume Claim: sudo kubectl get pvc media-share
If the response indicates that the media-share pod has a status of Terminating, then you might be encountering this issue.
2.	Contact Avid Customer Care for additional instructions on how to resolve this issue.
Limitations and Defects Found in Version 2023.12.0
Asset Editor
 	Bug Number: MAESTRO-7206. If you load a graphic assets into the Asset Editor and then load a new graphic into the Asset Editor from the Rundown app, the Metadata tab does not update. It continues to display metadata for the original asset.
 	Bug Number: NEO-2358. Depending on your cursor position or selection, the Variable Speed Playback settings in the Workflow Settings app might not always interpret the use of a decimal point correctly.
Workaround: If you cannot enter your desired value, use the arrows to adjust the playback speed.
 	Bug Number: NEO-2654. The Trim Tail command is mistakenly available when parked on the last frame of the last segment in a sequence.
 	Bug Number: NEO-2927. If you are disconnected from your session while editing a news sequence, the
Sequence Timeline might not render correctly after selecting the Recovered sequence. Track labels (VIDEO, NAT, SOT, VO) might disappear, and the Recovered and Saved buttons might stop to function normally.
Workaround: You can restore the track labels by signing out and back in to MediaCentral Cloud UX. In this case the recovered sequence might not be restored correctly. However if the sequence was saved even once before the disconnect, this issue is not reproducible.
 	Bug Number: NEO-2950. When adding an End at Cut video dissolve to the last segment of a sequence, the video does not fade completely to black.
 	Bug Number: NEO-2967. You cannot use the keyboard to enter some values in the Output Reference Level section of the Video/Audio User Settings.
Workaround: If you cannot enter your desired value, use the arrows to adjust the level.
 	Bug Number: NEO-3009. If you attempt a replace edit, it will not respect track mappings.
For example, if you map Source V1 to Destination V2 and attempt to replace the segment in V2, the Source does not follow the track mapping, and the Replace puts the source material onto Track V1. The same holds true for audio tracks. All replace edits use the source material’s tracks, and do not follow the track mapping.
Workaround: Mark an IN and OUT point on the source asset that matches the duration of the destination segment that you want to “replace”. But, instead of selecting Replace, select Overwrite.
Installation and Configuration
 	Bug Number: PRS-2539. The upgrade of mediaanalytics and avid-azure-storage-connector from 2023.7.x to 2023.12 might fail.
Workaround: If the deployment fails, remove the following feature-packs and re-add them.
1.	Run the avidctl platform deploy -i script and say No at the following prompts:
–	Do you want to deploy azure-storage pack (platform-azure-storage)? [y/N]: n
–	Do you want to deploy aws-mediaanalytics pack (platform-aws-mediaanalytics)? [y/N]: n
–	Do you want to deploy mediaanalytics pack (platform-mediaanalytics)? [y/N]: n
2.	Run the avidctl platform deploy -i script and say Yes at the following prompts:
–	Do you want to deploy azure-storage pack (platform-azure-storage)? [Y/n]: y
–	Do you want to deploy aws-mediaanalytics pack (platform-aws-mediaanalytics)? [Y/n]: y
–	Do you want to deploy mediaanalytics pack (platform-mediaanalytics)? [Y/n]: y
 	Bug Number: PRS-2560. It is possible for the avidctl platform host-upgrade script to fail at the TASK [gluster-disk : stat] step if the service is not ready in time.
Workaround: If your upgrade fails at this point, complete the following process to add a retry check to the process.
1.	Open the following file for editing:
sudo vi /opt/avid/service-host/roles/gluster-disk/tasks/gluster.yml
2.	Add the following lines to the file under the line that reads "register: mount_dir":
until: mount_dir.stat.isdir is defined and mount_dir.stat.isdir retries: 20 delay: 10
You must ensure to correctly indent these new lines so that they align with"register" line.
3.	Save and exit the vi session. Press <ESC> and type: :wq
4.	Return to the process for Updating the Platform, and repeat the avidctl platform host-upgrade step.
 	Bug Number: NEO-3034. If you upgrade an existing single-node installation to a cluster, the upgrade process does not replace the single-server hostname with the cluster's virtual host in avid-commonparams. This can lead to playback issues after the upgrade is complete.
This same issue can occur if you alter the issuer FQDN when running the avidctl platform config site-key command.
Workaround: Complete the following process to update the avid-common-params file.
1.	Open the following file for editing:
sudo vi /mnt/gluster-cache/playback-etc/playback/etc/sysconfig/avidcommon-params
2.	Find the line that reads "export AVID_CLUSTER_HOSTNAME=<FQDN of virtual hostname>" and replace the <value> with your cluster's virtual FQDN.
3.	Save and exit the vi session. Press <ESC> and type: :wq
4.	Repeat this process for /mnt/gluster-cache/playbacketc/render/etc/sysconfig/avid-common-params.
5.	Use the Kubernetes Dashboard to delete the playback and render pods.
MediaCentral Sync
 	Bug Number: SAK-1620. If MediaCentral Sync encounters an invalid User Mapping configuration in the local MediaCentral Cloud UX Configuration Settings app, the sync job might fail with a misleading “Internal service error” message.
User Management / Licensing
 	The following do not currently support integration with OpenID providers, such as Okta:
l Avid MediaCentral | Panel for Media Composer l Publisher
 	Bug Number: ICI-4568. Users might be redirected back to the MediaCentral Cloud UX welcome page after an attempted sign-in. This might occur in a MediaCentral Cloud UX system that is configured to authorize against an IDP provider, and the user's user group is not assigned a license in the License app.
The expected behavior is that the system displays an error message that alters the user to the missing license.
Limitations and Defects Found in Version 2023.7.0
MediaCentral Sync
 	Bug Number: SAK-2586. After completing a Sync, some assets might appear online in the Target database. In some cases the media might not actually be available on the target storage for these online assets.
Workaround: After completing a Sync task, perform an Update From Media Indexer on the synchronized destination folders in Interplay Access to verify the correct status of all sync’ed assets.
Phonetic Index
 	Bug Number: ICI-4980. The MediaCentral Production Management Search Connector is limited to indexing 1, 2, or 4 audio tracks. This excludes a three track configuration, or any configuration that includes five or more tracks. This is contrary to the 1 – 64 track options as described in the “Reviewing the Phonetic Indexing Tab” section of the Avid MediaCentral | Cloud UX Installation Guide.
Avid continues to support the configuration of multiple layouts. For example, you could configure the system to index tracks 1-6 by configuring three layouts for tracks [1, 2] and [3, 4] and [5, 6]. Or alternatively configuring two layouts: one for tracks [1, 2] and another for tracks [3, 4, 5, 6]. In contrast, the creation of a single layout that includes only tracks [1, 2, 3] would not be supported.
Publisher App
The Publisher app does not currently support integration with OpenID providers, such as Okta.
Rundown App
 	The show timing clocks in the Rundown App only work with the real workstation time, not when timing to duration, or if someone uses the Set Clock option at an iNEWS Workstation to manually alter the time prior to the on-air timing of a show.
Limitations and Defects Found in Version 2023.3.0
Asset Editor
 	Bug Number: NEO-1961. If your server's host name starts with an a, b, c, d, e, or f, the Asset Editor displays the following error message when attempting to play an asset: Player Error : 1102 "<hostname>" is not valid hostname.
Workaround: You can resolve this issue by editing two configuration files:
1.	From your single-server or primary cluster node, open the following configuration file:
sudo vi /mnt/gluster-cache/playback-etc/playback/etc/sysconfig/avidcommon-params
2.	Locate the following line and change the FQDN value to the IP address of your single server or virtual cluster host name:
# Injecting AVID_ to AVID_ export AVID_CLUSTER_HOSTNAME=
3.	Save and exit the vi session. Press <ESC> and type: :wq
4.	Repeat the above process for the avid-common-params located at /mnt/gluster-cache/playbacketc/render/etc/sysconfig/
 	Bug Number: NEO-2465. When you load a complex sequence that includes Burn-In timecode, you might notice that the Media Viewer’s Clip timecode does not match the burn-in timecode. This issue is expected as the player does not load all clip metadata when opening the sequence to expedite load times. Clip timecode for an included subclip is not computed until it is directly loaded into the player.
Workaround: Complete a Mach Frame on the sequence to load the original asset. When you switch the Media Viewer back to the Record monitor, the Clip TC matches the burn-in TC.
MediaCentral Acquire
 	Bug Number: CCUX-7207. Acquire recordings fail to create a proxy when using Telestream Vantage as the default Asset Management transcoder.
 	Bug Number: CCUX-7098. In the Acquire app, when you try to schedule a record, or start a hot record, you will see the record flash onto the timeline, but then disappear and nothing happens (no recording), and no errors will be seen. This seems to happen when workspaces are full.
 	Bug Number: CCUX-7039. MediaCentral Cloud UX does not support EWC (Edit While Capture) of incoming MediaCentral Stream OP1a files. You must wait for the asset to be complete before you can play, STP, or edit the asset.
User Management
 	Bug Number: PLAD-834. If a user opens two MediaCentral Cloud UX sessions in the same browser (one in a standard tab, and another in an Incognito tab) and then the user signs out of the session in the standard tab, the session in the Incognito remains connected. If an administrator applied a Quota to the user group, the quota count is decreased by one — even though the user is still connected through the Incognito session. This unsupported workflow might allow users to exceed the Quota value.
 	Bug Number: PLAD-827. Disabling the Process app for a user group does not remove the app from the MediaCentral Cloud UX user interface.
Limitations and Defects Found in Version 2022.12.0
Asset Editor
 	Bug Number: NEO-1872. If you use a sequence as a source that has custom audio level adjustments, those level changes are not retained when you edit the asset into a new sequence.
MediaCentral Acquire
 	Bug Number: CCUX-6591. Depending on dividers, some shortcuts (e.g., dash “-”, dot “.” and underscore “_”) may not work for FastServe recordings.
 	Bug Number: CCUX-6588. Recording will fail to resume when FastServe Ingest restarts OVS using the web settings page. You need to restart Clip Manager to be able to record again with Acquire.
 	Bug Number: CCUX-6519. There is no check-in in Acquire after 10 hours of work with auto-tool.
 	Bug Number: CCUX-6454. When you change the Name or the Comment when working on a failovered MediaCentral | Stream, the recording is not updated with the information you entered.
 	Bug Number: CCUX-6271. In the Acquire Admin app, when you select the Production Management WebServices, tab, you cannot see tooltip when inputting incorrect data for the IP address and port number.
 	Bug Number: CCUX-5358. In the Event Log Panel, the entry for minutes (of the Search range) is blocked if the value is incorrect (date / time component issues).
 	Bug Number: CCUX-5373. In the Acquire Admin app, when you select the Channels Configuration tab, the order of values displayed in the Crosspoints field is now sorted by Output number in ascending order.
 	Bug Number: CCUX-5372. In the Acquire Admin app, the user can make changes in the application without saving, and then come back to the Acquire Admin App and the app is “reopened” in the place and validation state the user left it. And the Save button is available giving the possibility to misconfigure the application and lead to problems using the Acquire app.
 	Bug Number: CCUX-5176. In the Acquire Admin app, Scheduling options, the user can define default durations longer then the Maximum duration.
 	Bug Number: CCUX-6592. There is an issue where sometimes the finished MediaCentral Stream Recording does not get checked in.
 	Bug Number: CCUX-6589. The colors of FastServe Ingest recordings are different on different zoom selections. The color of the recording should be the same for each zoom selection.
 	Bug Number: CCUX-6556. In the Recording Details | New window, the End date selector is blocked if the Duration is 00:00:00 and the end time is invalid (CET > CEST).
 	Bug Number: CCUX-6650. You are able to open the Recording Details | Edit window for a past recording by Alt + clicking on the past recording.
 	Bug Number: CCUX-6605. Helpers no longer work with Feature Pack 590. As provided, the following helpers should show certain criteria when used as a clip name:
$t $T $d $D $w $W $s $S
MediaCentral Sync
 	Bug Number: AL-1466. If you change the members of a Sync Group and you have one or more Sync tasks configured for that group, the tasks and the related configuration settings are lost after changing the group membership. For more information, see "Configuring Synchronization Groups" and "Configuring Synchronization Tasks" in the Avid MediaCentral | Sync Administration Guide.
 	Bug Number: SAK-2178. Tasks might fail to sync media assets if the job is in process during an upgrade.
Workaround: Administrators must pause all sync jobs prior to upgrading to v2022.12.
Search App
 	Bug Number: JP-6980. Attempting to move an asset from the Search app to the Browse app results in the following error: "This item cannot be moved to the destination folder."
Limitations and Defects Found in Version 2022.3.0
Asset Editor
 	Bug Number: NEO-1540. If you switch to a different Chrome tab and then back to MediaCentral Cloud UX, some areas of the Asset Editor might disappear from the user interface.
For more information, see https://bugs.chromium.org/p/chromium/issues/detail?id=591374.
Workaround: If you encounter this issue, you can disable the Accelerated 2D Canvas option:
1.	Open a new tab in your Chrome browser and navigate to: chrome://flags/
2.	Disable the feature.
3.	Relaunch Chrome to enable the change.
Legal List Administrator App
 	Bug Number: ICI-3996. Icons configured for legal list entries are only used within the Legal List Administrator app and do not show up in the MediaCentral Cloud UX UI.
This affects all MediaCentral Cloud UX versions back to v2019.9.
System
 	Bug Number: PLAD-803. If the avid-local-job-proxy service is unavailable at any remote site in a Multi-Site configuration, the avid-local-job-proxy service on the local site might crash. If this occurs, the Process app might not display updates for any Deliver-to-Me jobs initiated from the local site. If the remote service stays offline for an extended period of time, the service crash and restart cycle might create resource issues on the local site over time.
Limitations and Defects Found in Version 2021.11.0
Legal List Administrator App
  Bug Number: UIR-10535. When you change the icon for a legal list entry and save the change, the old icon is still shown after switching to another legal list and back.
Workaround: Clear the Chrome browser cache and sign-in again to the MediaCentral Cloud UX Administrator app. The changed icon will now be shown for the legal list entry.
Limitations and Defects Found in Version 2021.3.0
Asset Editor
 	Bug Number: NEO-751. When switching between Source and Record monitor, the information in the
Metadata tab is reloaded, but not if you have an Asset Management image asset and shotlist open. In this case, metadata is not reloaded but an “Asset is not loaded” message is shown instead.
 	Bug Number: NEO-608. Playback of media assets might not be detected as an “active” operation by your local workstation. If you do not interact with the user interface in any other way, your operating system might activate a screen saver, screen lock, or other.
 	Bug Number: ICI-3252. MediaCentral Cloud UX might not be able to play Production Management assets that are contained in either the Orphaned Clips folder or Private folders (right click on the folder in Interplay Access, select Security > Private). This issue appears if the user that is identified in the pam.yaml configuration file does not have administrator-level privileges in the Production Management database.
Workaround: If you must play assets that are located in these folders, elevate the user that is identified in the pam.yaml configuration file to an administrator in the Production Management database.
 	Bug Number: NEO-253. If you attempt to delete a segment from a Sequence without first enabling the associated track, the segment is not deleted.
Workaround: Enable the track in the Sequence and then delete the segment.
 	Bug Number: MX-8525. Metadata tab: When in edit mode, you cannot highlight the entire value of a property of type date, date-time, and time.
Installation and Configuration
 	Bug Number: ICI-3404. After you upgrade to a new version of MediaCentral Cloud UX, users might see an
“Error: Module loading failed because of a backend issue.” message after accepting the End User License Agreement (EULA).
Workaround: If this occurs, it happens only once after accepting the ELUA. You can eliminate the error and continue to MediaCentral Cloud UX by refreshing your browser page.
Search
 	Bug Number: None. (Asset Management) Version 2021.3 adds support for showing labels for taxonomies in
Search results. This is only supported for Asset Management systems v2021.3 and later. For any remote Asset Management system that is running a version of software prior to v2021.3, the Search results do not show taxonomy labels but the IDs of the taxonomy entries.
System
 	Bug Number: MC-589. Several MediaCentral Cloud UX list and grid views use “lazy loading” to display the contents of folders, search results, containers, etc. This behavior causes issues when applying a multiselection to a range of items where some of those items are not, yet, loaded. For example, if you select the first asset in a folder and do a fast scroll to the end to select the last one, there will be pages in between the selection which are not loaded and therefore will not get added to the multi-selection.
Drag and drop and other operations (such as attaching the selection to a process creation template) will not properly work as expected.
Workaround: Scroll slowly to make sure that all assets are visible on the UI and no asset shows the status “Loading….”.
Limitations and Defects Found in Version 2020.9.0
Asset Editor
 	Bug Number: MPLAY-4020. If you add a marker with the maximum comment size to an asset in
MediaCentral Cloud UX, work the same asset in Media Composer (deleting at least one maker in the process), and then check that asset back into Interplay Production — the asset fails to load into the Media Viewer of the Asset Editor.
Installation and Configuration
 	Bug Number: MAM-16491, FF-2079. If you are using an Enterprise Editing workflow and you upgrade to a version of MediaCentral Cloud UX that introduces the Sync Job Distributor into your environment, you must open and save the Sync Job Distributor settings prior to synchronizing your first draft sequence.
Search
 	Bug Number: RCTR-1673. Sorting the results of a search by selecting a value in the Sort By menu displays different results than if you select the same Sort By value in the Browse app.
Limitations and Defects Found in Version 2020.4.2
Search App
  Bug Number: JP-7171. When reorganizing favorites or folders within the Search Favorites, the app might not prompt you with the blue position indicator when trying to drop a favorite (or folder) to the last position of a folder that contains a sub-folder.
Workaround: To move the item to the end of the folder, collapse the folder in the Favorites tree structure and drop the item on top of the collapsed folder.
Limitations and Defects Found in Version 2020.4.0
Associations App
 	Bug Number: MA-5583. When you select several associated assets in the Associations area, then press the Ctrl key and start dragging, the asset that is used for dragging is excluded from the selection and its association is not copied.
Workaround: First start dragging the selection and then press the Ctrl key.
Browse App
 	Bug Number: MPLAY-3933. If you save an empty sequence, an audio-only sequence, or a sequence where the media for the first segment is offline, the Browse and Search apps display a question mark in the Thumbnail column of the app.
 	Bug Number: JP-4216. The Search app might display referenced Production Management assets in the search results list. As the Browse app is unable to display referenced assets, the app displays the following error message if you attempt to open the asset in the Browse app:
“Asset cannot be found. The asset might have been recently deleted, might exist as a referenced asset only, or other.
Publisher
 	Bug Number: AWM-134. Audio drops off on Media Composer sequences that contain dissolves at the beginning.
Workaround: Try mixing down the sequence prior to sending it.
Search
 	Bug Number: RCTR-1546. The Search app does not support CBA rules with a “WITH” operator (two sub attribute criteria match in the same row).
Limitations and Defects Found in Version 2019.9.11
Graphics
 	Bug Number: OS-6564. If you associate a story in the Rundown app with a shotlist, you are allowed to add graphics to the story as standard production cues. However, graphics are not associated with a shotlist in the same way as they are in a news sequence. As a result, the graphic tracks are not displayed in the Sequence Timeline and the Burn Graphics feature in the STP > Quick Send menu is unavailable.
Workaround: If you want to send the sequence to playback with burned-in graphics, you must associate the story with a news sequence (shotlists not supported).
 	Bug Number: OS-7222. If the frame rate of your Maestro News system does not match the frame rate of your MediaCentral Cloud UX sequence, timed graphics might appear off by a few frames in the Asset Editor Media Viewer and the Sequence Timeline.
Workaround: Update the SystemSettings.ini file on your Avid Maestro News system so that the frame rate matches your sequence. This file is generally located at the following path: C:\Program Files\Avid\MaestroNewsServices\<version>
n The aspect ratio and the frame rate of sequences created in MediaCentral Production Management are determined by the first clip that you add to the sequence. Any additional clips can have a different resolutions but must match the initial frame rate. For more information, see “Creating a Sequence” in the Avid MediaCentral | Cloud UX User’s Guide.
Limitations and Defects Found in Version 2019.9.5
Asset Editor
 	Bug Number: OS-6480. If you open the Media Viewer in Full Screen mode and then attempt to access the STP function of the Quick Send menu, the overlay window is displayed behind the full screen viewer, essentially hiding the user interface.
Workaround: If you want to access the Quick Send > STP options, you must exit Full Screen mode.
 	Bug Number: MX-7802. In the Storyboard tab, if you click in the Comment field that contains a large amount of text, scroll through the text, and then start typing, the text will not scroll back to the current cursor position. As a consequence, you do not see the text that you are typing.
Limitations and Defects Found in Version 2019.9.0
Asset Editor
 	Bug Number: JP-6644. When double-clicking on a marker or a search hit in the tabs area of the Asset Editor, the position indicator does not move to the associated mark in the Media Viewer timeline.
 	Bug Number: MX-7196. If you load an Asset Management asset that has a multi-value compound attribute with a large number of records, the Chrome browser might hang for a period of time, followed by a number of messages from MediaCentral Cloud UX indicating that “Obtaining the metadata timed out”.
Log App
Under a rare condition, the Log app might crash and show an exception error message. The behavior can be detected under the following condition: If you attach an asset that has a creation date in the far past (for example 2017) to a session, log the session, remove the asset from the logged session, continue logging the session against the wall clock, and finally again attach an asset that has a creation date in the far past to the session.
Multi-Site
 	Bug Number: MA-5347. Queues marked with the Refresh property on remote Newsroom Management systems do not automatically refresh in either the Rundown app or the MediaCentral Cloud UX Mobile app.
Publisher App
 	Bug Number: AWM-83. You cannot publish the following sequence types:
l	Shotlists created in MediaCentral Cloud UX that do not contain audio media.
l	Sequences created in Media Composer that include a video track only.
Workaround:
l	If you have access to an Avid Media Composer, you can create a sequence in the editor that has a video track, an audio tracks, and video media only. You can then check that sequence into Production Management, and publish this sequence.
l	If you are editing a shotlist created in MediaCentral Cloud UX, add 0db audio media to the audio track.
 	Bug Number: AWM-80. When working with 60p or 50p sequences in Media Composer, you must set the
TC Display Format in the Media Composer General Settings to either 60 fps or 50 fps, respectfully, before checking the sequence into MediaCentral Production Management. If this setting is not configured correctly and you attempt to upload the sequence to the Publisher SAAS platform, the upload process will fail.
Search
 	Bug Number: ASSETS-2434. The MediaCentral Cloud UX Search Connector for Production Management associates some metadata fields such as Initial Checkin Date, Last Restored Date, and others with type “String” instead of type “DateTime”. Additionally, some fields associated with timecode (such as Auxiliary TC1) or numbers (such as Audio Bit Depth) are associated with the String type. These incorrect assignments prevent users from searching for these metadata fields in MediaCentral Cloud UX using criteria normally associated with a date/time, timecode, or numerical value.
Workaround: You can resolve this issue by installing the MediaCentral Production Management 2019.6.1 Access or later and enabling the “Update Data Type Definitions” toggle in the Interplay Administrator. For more information, see the Avid MediaCentral Production Management 2019.6.1 ReadMe or “Configuring the MediaCentral Search Connector” in the Avid MediaCentral | Cloud UX Installation Guide v2019.9.
Limitations and Defects Found in Version 2019.6.0
Installation and Configuration
  Bug Number: MCDEV-11520. If you configure more than one MediaCentral Authentication Provider in the Interplay Administrator, the process of signing in to MediaCentral Cloud UX through the Media Composer fails.
Workaround: If you must configure more than one server in the MediaCentral Authentication Provider settings, you must add the Internal authentication option for the affected users in the Production Management database. This limitation does not prevent you from importing users from MediaCentral Cloud UX or Microsoft Active Directory, but once imported – Internal authentication must be enabled for all Media Composer users and a password must be assigned manually. Additionally, the passwords must match those used to access MediaCentral Cloud UX.
c The ability to add more than one MediaCentral Platform Authentication provider is designed for testing and development environments only. Avid does not support adding more than one MediaCentral provider for active production systems
 	Bug Number: ICS-8468. After upgrading, multiple Kubernetes pods might fail to start and report a “Waiting: CrashLoopBackOff” status in the Kubernetes dashboard.
Workaround: To resolve this issue, complete the following steps:
1.	Complete the upgrade process as documented.
2.	After the upgrade is complete, sign in to the Kubernetes Dashboard.
For more information, see “Working with Kubernetes” in the Avid MediaCentral | Cloud UX Installation Guide.
3.	Use the Search function at the top of the Dashboard to search for rabbitmq-default.
4.	Use the context menu in the user interface to delete all RMQ Persistent Volumes and Persistent Volume Claims.
As shown in the following example Kubernetes Dashboard illustration, clustered configurations will have multiple of each type.
 
5.	Use the context menu to delete all rabbitmq pods
6.	Sign in to your single server or cluster master node and use the following command to delete the contents of the following folder: /var/lib/avid/rabbitmq/rmq-rabbitmq-default-0/ rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-0/
If you have multiple nodes, you must repeat this command on each node, substituting the “default#” number with the corresponding number on the node. For example, in a three node cluster, your commands might look like the following:
[root@wavd-mcux01 ~]# rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-0/
[root@wavd-mcux02 ~]# rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-1/
[root@wavd-mcux03 ~]# rm -rf /var/lib/avid/rabbitmq/rmq-rabbitmq-default-2/
7.	Use the Kubernetes Dashboard to verify that all pods start successfully.
Multi-Site
If you plan to include your MediaCentral Cloud UX system in a multi-site configuration, be aware of the following limitations:
l	Avid supports a maximum of six sites in a single multi-site environment.
l	You cannot create or edit remote sequences, nor can you include remote media assets in a local sequence.
l	You cannot create new sequences on remote MediaCentral modules. However, the context menu for MediaCentral Asset Management modules retains the Create Asset option for both local and remote systems.
l	You cannot create a subclip from a remote asset. l You cannot play back remote edit while capture (EWC) assets. l No support for remote user tasks (including file upload/download) in the Tasks app.
l	If you create a voice-over, the asset can be saved to the local MediaCentral Production Management database only.
l	You cannot Publish remote assets. l The Log app cannot be used with remote assets. l Deliver In-to-Out workflows are not available in MediaCentral Cloud UX. l The Avid MediaCentral | Panel for 3rd Party Creative Tools does not support Multi-Site workflows. l The Avid MediaCentral | Panel for Media Composer does not support Multi-Site workflows.
 	Bug Number: RCTR-1275. When you configure the Map to User option in the Multi-Site Settings app, the Search app applies the visibility rules based on local user name and not the mapped user for the remote Asset Management system.
Workaround: If you plan to link to an Asset Management module in a remote site, you must configure the User Mapping to Map By Name.
Search
 	Bug Number: JP-6184.When upgrading to MediaCentral Cloud UX 2019.6 from an earlier release, any favorites created by the users in the Search app are not maintained.
 	Bug Number: None. If you select the check box for a parent in a taxonomy search, the user interface indicates that the children selected as well. However, search does not return assets for matches against the child selections.
Workaround: Open the taxonomy menu and select the individual checkboxes for the child items instead of selecting the check box for the upper-level parent item.
Limitations and Defects Found in Version 2019.2.0
Asset Editor
 	Bug Number: ICI-2137. Audio might stutter during playback while simultaneously working in other Apps of the MediaCentral Cloud UX user interface.
Search
 	Bug Number: JP-6316, JP-6323. When hovering over a phonetic search phrase, the pronunciation of the pill is not displayed in a tool-tip.
Limitations and Defects Found in Version 2018.11.0
Asset Editor
 	Bug Number: MX-6604. If you click on the link for a recovered asset in the Auto Recovery window, the apps area of the MediaCentral Cloud UX user interface is replaced with the following error: “No application config found for type: dashboard”.
Workaround: When you click on the link, the asset is loaded into the appropriate app as described in the
“Recovering Sequences” and “Recovering Stories In Case of Disconnect” sections of the Avid
MediaCentral | Cloud UX User’s Guide. You can eliminate the error message by clicking on an app such as Browse, Rundown, or other.
 	Bug Number: ASSETS-1834 . If a user has permissions to write to a particular folder in the MediaCentral Production database but does not have the rights to create markers, the user is allowed to save a sequence containing new markers. However, the user also sees the following message: “User permissions do not allow this operation”
Workaround: To avoid these errors, you must make sure that users who have permission to save sequences also have permissions to edit markers.
 	Bug Number: MX-6658. The Storyboard tab needs focus in order for keystroke shortcuts to work.
Process App
 	Bug Number: MX-6913. The Process app always displays the “Show More Results” button, even if there are no additional results to display.
Limitations and Defects Found in Version 2018.6.0
Asset Editor
 	Bug Number: NEO-106, OS-4997. If a user attempts to make an edit to a news sequence that is already opened by another user who has a lock on the story, the change is permitted but the following warning message is presented:
“Story Modify Error - Unable to obtain all edit locks. Story body is edit locked by <user>.” [Cancel Sequence Edit] [Keep Sequence Edit]
In this release the Cancel and Keep options are not available.
Browse App
 	Bug Number: ASSETS-1317. You cannot duplicate sequences.
Workaround: Open the sequence and use the Save As feature in the Sequence Timeline to save a copy of the sequence.
Installation and Configuration
 	Bug Number: DAEM-5529. When running the Post-Install Setup Scripts, the avidctl platform hostsetup script might hang when executing particular tasks. If there is no on-screen activity for an extended period of time (2-3 minutes), press Ctrl+C on the keyboard to exit and run the script again.
This issue is most often associated with the “sysprep: Restart firewalld” task.
 	Bug Number: MTTO-1773. If you connect to the Kubernetes web dashboard after deploying the system feature packs, the Kubernetes Pods category does not show a green status.
Workaround: Continue with the installation and verify the status of the Kubernetes Pods after you have imported a MediaCentral Cloud UX license.
 	Bug Number: DAEM-5592, DAEM-5684. When entering the Kubernetes Admin token in the avidctl platform host-setup script, you can not use the Backspace key to correct a text entry error. The Backspace key is treated as a new character.
Workaround: You can resolve this issue in one of two ways:
l	Press Ctrl+C on the keyboard to exit the script and then relaunch the script to start over from the beginning.
l	After using the Backspace key, press Enter to accept the password. At the verification prompt, press Enter to purposefully enter an incorrect matching password.
This returns you to the first prompt to enter your original password.
MediaCentral Asset Management
MediaCentral Cloud UX includes the following limitations for the MediaCentral Asset Management module:
l	Browse app:
– ASSETS-1386. If you use the Browse app to rename an Asset Management folder, only the name of the folder is changed and not the language label associated with the asset folder. MAM Desktop may show a different, localized label instead.
l Search app:
–	The search does not consider changes and deletes in the Asset Management data model: If you delete a searchable attribute or mark it as “non searchable” in the data model, it remains visible in the Search app. If you rename a searchable attribute, both the old and the new attribute name are visible in the Search app.
–	The Search app has a limit of 5,000 fields in an index. MediaCentral Search can create more than one field per Asset Management attribute (for example, 3 for text attributes). If the data model contains too many attributes, then MediaCentral Search cannot create the index and search will not return any Asset Management assets.
l Markers tab:
–	You can show strata, segments, and annotation but you cannot edit them in the Markers tab. l Metadata tab:
–	ASSETS-1632. When a user edits an Asset Management asset in the Metadata tab, the asset is not locked which allows unintended changes by another user.
Search
 	Bug Number: RCTR-989. The process to index large MediaCentral Asset Management databases for use with the MediaCentral Search app can take a significant amount of time to complete. Organizations whose database consists of more than 500,000 assets should consult with Avid prior to indexing the database for assistance in optimizing the process.
MediaCentral Cloud UX v2019.2 introduced certain improvements for large databases. As of this release, only organizations whose database consists of 1,000,000 or more assets need to consult with Avid.
 	Bug Number: RCTR-973. The Search index creation process might fail on databases that contain a large number of fields.
System
 	Bug Number: DAEM-5741. When a cluster master node goes offline, users might experience a short period of time where the cluster is inaccessible.
Legal Notices
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
This product may be protected by one or more U.S. and non-U.S patents. Details are available at https://www.avid.com/legal/patent-marking.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Copyright © 2025 Avid Technology, Inc. and its licensors. All rights reserved.
Portions © Copyright 2003-2007 of MOG Solutions.
Attn. Government User(s). Restricted Rights Legend
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Trademarks
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: https://www.avid.com/legal/trademarks-and-other-notices.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid MediaCentral | Cloud UX ReadMe • Created Friday, November 14, 2025 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.


