# Wolftech News — Release Notes v15.0
**June 2025 Update (15.0)**
**Source:** Customer release document — distributed to customers, not posted publicly
**Added to KB:** 04/06/2026
**Version scope:** 15.0 only — do not apply to earlier versions

---

## Summary

This release is feature-packed with media and production workflows tightly integrated into your planning.

A whole new range of capabilities is added with our new companion mobile camera application, Avid Reporter, newly embedded video editing capabilities with the advanced web editor and direct to social media publishing.

Media workflows are supercharged with a redesigned media tab hosting assets linked from any connected system into a unified searchable story board. On top of that, we added a new publishing board, MAM searches in the publishing module, and a better experience for your connected MAM story folders in the story right panel.

For Media Central | Cloud UX customers, Wolftech becomes an application right inside of it, combined with a tight integration with Avid | Newsroom Management (iNEWS), automation with Avid | Rule Engine and new publishing capabilities with Avid | Publisher, the integration delivers a powerful end-to-end solution.

And in the open spirit of Wolftech, we have really pushed the possibilities with a large new set of APIs for stories, events, asset management and publication. Take your integrations and automations to the next level.

---

## Research

### Feeds

- Expandable Keyword Filter Field to be able to add longer strings of keywords in your filter with a side bar also available if it goes beyond the current box

---

## Planning

### Categorization

- Improved Tracking area with Modified by/On column and better longer title display

### Plan View

- Add possibility to edit description in list view story preview pane
- Option to choose photos or names of staff in Plan view eye icon menu
- Notable bug fixes:
  - Retain list view mode when navigating to feeds or booking pages and back

---

## Resourcing

### Bookings, Requests, Guest Overview, Finance, Map, Risk Assessment

- Create Resources (And POIs) from quick add so it is always visible no matter where you are
- + icon to create a guest profile and book them in one flow moves to the right bar
- When dragging a story to a resource or a work order for a resource that has multiple resource types ask which resource type to use

---

## Production

### Editorial (Background information)

- Copy all icon to copy an editorial segment content with one click (like you can do in mobile)
- New unsaved draft segments display smaller until they are saved
- When there are many attachment items and content in a segment, the attachment list will only display up to 2 lines of attachment that will then become visible when you choose "show more"

### Media Management (Board/Connected Devices/Footage/Media Folder)

#### New Story Media Tab

- The new story Media tab hosts the board for improved performance and a larger real estate to take all assets, no matter where they came from, whilst offering ease of navigation to your files with one click
- Toggle to display assets depending on their source
- PAM media can easily recognise its source with icons
- Local media includes support for media but also documents, notes and weblinks
- Search across all assets regardless of their source
- Asset action menu is reactive to the possible functionality of its source system
- Additional content types added for filtering (master clips, sub clips, sequences)
- New Status tags: "Review" or "Publish Ready"
- Full screen asset preview experience with keyboard navigation and easy metadata tagging
- New Full Screen Mode (supported in Story and Publishing board) allows you to see all of your media

#### Media Folder (Previously Media Storage)

- Media Folder (previously Media Storage) is now moved to the right panel under the Media icon
- The folder creation button has been moved to the board section in the media tab
- Admins can choose Media Folder creation before greenlighting
- When clicking, users are prompted to choose which connected Media system to create the folder on
- Once created, a link to the folder is shown for the media in the chosen system
- "Open in MAM" opens the story collection in the new Media Folder right panel, supporting both API list views and embedded experiences for selected MAM systems
- Depending on the upload workflows for your MAM, users can either drag and drop assets from their desktop or use dedicated upload options

#### Redesigned Board

- Redesigned Board for improved usability and performance
- Multi-MAM support in Board

#### New Publishing Board

- Publishing Board is a new dedicated board for the publishing assets
- Check story assets and select and add some to the publishing board with the downward arrow circle button
- Upload assets directly to the publishing board with the + icon
- Option to view assets in compact default mode or large thumbnails

#### Publishing Media Search

- Inside the publishing panel, users can search for media from connected systems (just like Hunter at the story level)
- From the Media search, content can be added to the publishing board or dragged directly to a publishing template

#### Wolftech in MediaCentral | Cloud UX

- This integration provides Wolftech-specific workflows within MediaCentral | Cloud UX. For more information on MediaCentral check its release notes here: https://kb.avid.com/pkb/articles/en_US/readme/MediaCentral-Cloud-UX-v2025Documentation

##### Login and Authorisation

- Log in to MediaCentral | Cloud UX and automatically log in to your connected Wolftech account
- The user is authenticated across all actions to manage permissions, including search, access, media, bookings, etc.

##### App

- Wolftech is now another app in the MediaCentral | Cloud UX top Fast Bar
- The app can be opened in the main central space, side by side with the browser and the search app
- The app cannot be docked
- The app can be closed with the button or from the app fast bar

##### UX

- Wolftech will automatically apply the MediaCentral | Cloud UX Colour Theme and apply dark or light mode to match user preferences

##### Search

- Wolftech is now searchable as a system including stories, pitches, events and publishing outputs
- Once a Wolftech asset is found, the user can click on it to open it in the Wolftech app in MediaCentral | Cloud UX without leaving the page
- Read-in Notes, Episodes, Requests and Resources are not searchable via the global search — those remain searchable via the Wolftech app
- Most properties in Wolftech can be used as filters in saved searches
- Powerful search pills can be created combining searches across Wolftech and MediaCentral media systems
- Wolftech News access permissions are respected in searches
- All Wolftech change events are communicated to MediaCentral for up-to-date information
- Admins can manage the resync of the database for initial setup and update the system if major administrative items like departments, offices or platforms have been updated

##### Media Integrations

- Wolftech automatically integrates with all the media systems included in the Cloud UX environment connected to your Wolftech system, including both PM and AM systems
- Search and drag PM or AM assets to your Story Board in Cloud UX, as a single asset or bulk action (max 5); dragging is done to the main application and goes to the media tab provided a story is open
- Drag assets from Media Player to a Wolftech Story, Pitch or event to link them
- Continue to drag assets from a Hunter search in Wolftech
- Click on MediaCentral assets on your board to open them in media inspector without leaving your interface

### Reporting

#### Wolftech Go Integration with the NEW Avid Reporter App

- The Avid Reporter app is a new iOS camera app tightly connected to Wolftech Go on the field
- Download from: https://apps.apple.com/us/app/avid-reporter/id6742381002
- Note: The camera app requires at least 1 web editor admin licence to manage the storage where assets will be recorded to and to set up livestreams if required. Each reporter will need individual reporter app licences.
- In the Web editor admin section, recording settings available to reporters can be defined so reporters do not need to think about the technical aspects
- The target storage for recording and editing can also be defined as the same AWS storage used by Wolftech News

##### Capture from the Reporter App

- Recording from the Story Board captures the content and makes it available in your board
- Recording from Editorial Segment sends the editorial text for teleprompting and the recording is stored with the segment
- Recording from the Publishing Board sends the content from all fields labelled as "script editor" for teleprompting, and the recording is stored in the publishing board
- Story association is set when triggering the record, and the correct recording preset is applied (including quality and the account the media should be stored in)

##### Teleprompter and Script Reading

- Clicking the teleprompter icon (bottom left) displays the script for reading
- As soon as recording starts the app leverages AI to understand the speed at which the script is being read, auto-scrolling at the right pace
- The top green bar displays recording levels
- The bottom or side bar allows zoom control with magic zoom
- The light icon allows switching on the flashlight
- The camera icon allows choosing from different lenses on the phone
- Settings provide control of connections to external microphones, stabilisers and more

##### Review and Upload

- Media can be sent automatically to your story or reviewed before uploading
- In the review panel: automated transcript is available, can be copied and pasted elsewhere; clip in and out points can be selected before uploading
- The folder icon allows uploading content from your camera roll or connected cards, all leveraging accelerated file transfers
- The process is fast, and media lands on the story board ready to be used by the entire team
- Beyond the integration, this application retains feature parity with the Cutting Room reporter app. For updated information check: https://www.cuttingroom.com/product/reporter

### Editing

#### Editing Integration with MediaCentral Sequences

- Connect your editor account via the admin external connection page
- Determine which editor to use for each publishing sub platform-destination:
  - MediaCentral, or
  - The advanced web editor, powered by CuttingRoom
- Define the settings for the sequences:
  - MediaCentral requires Avid Rule Engine to configure the sequence settings and storage
  - The advanced web editor can be configured in the publishing admin area with the correct frame rate and rendition profile for your destination
- Create Sequences from Wolftech Publishing board:
  - MediaCentral sequences require Avid Rule Engine configuration
  - Cutting Room sequences require a web editor licence

#### NEW Advanced Web Editor Integration (Requires Additional Licensing)

- Sequences are created to package publishing outputs
- To create a sequence in the web editor, go to the publishing board and click the + icon
- This creates a sequence in your board, leveraging the frame rate and rendition settings for your destination and names it after your Publishing output title
- When opening the project in the editor, editing can begin straight away

##### Media Sources and Panels

- Left side contains 2 side panels: one for media sources and another for other types of objects
- Panels can be expanded to see and open content from storages and MAMs into the source monitor
- Panels can be dragged to expand as needed
- Dragging compatible video assets from the board, including reporter recordings and uploaded video, opens them in the source monitor for editing

##### Livestreams

- Livestreams can be set up to receive live streams from the reporter application or 3rd party streams
- Take around 20 seconds to kick off; live transcription is available on them
- Livestreams can be opened in the source monitor or in the timeline to edit with growing files
- To set up live sources go to the admin settings

##### Transcripts and Text-Based Editing

- Transcripts (live or otherwise) can be used or generated in the app for text-based editing
- When loading assets from a 3rd party connected system that includes a pre-existing transcript, the sidecar file can be leveraged to avoid re-generating the transcript
- Once the transcript is generated or imported, search and highlight the section you want to use and hit enter to append it to your timeline
- Transcription providers (live and prerecorded) can be chosen in admin settings for best results; early partners include Trint, AssemblyAI and OpenAI; a default language can also be set for speed

##### Captions

- Captions can be generated from transcripts of video files in the timeline
- Captions can be added as subtitles in the timeline using a Caption template in the graphic tab
- Captions can be designed to automatically adjust to different aspect ratios
- To edit a caption, double click on the caption track in the timeline
- Once in the timeline, the caption will be rendered as burnt-in graphics
- Sidecar files can also be exported depending on your rendition profile
- If delivering the video clean with a sidecar file, describe the file format in admin and do not add the caption to the timeline
- Download options include download links for captions

##### Graphic Workflows

- Support for importing After Effects templates via Lottie Plugin files in multi-aspect ratios
- Found in the graphic panel; can be added to the timeline with a simple double click
- To import a new template go to the admin section
- With the Wolftech integration, the resource list can be leveraged to ensure the right copy lands in lower thirds or locations

##### Other Editing Capabilities

- Transitions, audio keyframing, DVEs with picture-in-picture and colour correction effects are available via the inspector tool
- Options to copy and paste effects across clips

##### Collaboration Features

- Tag sequences for review or ready for publish
- Tag mention groups to ask for help and leverage concurrent multi-user editing on the timeline
- Tag approvers and reviewers to get them to see your edit whilst working on it without the need for rendering
- Use the Split Screen button to:
  - See your publishing template and script side by side with the editor, perfect for the edit and for voice over recording
  - See guidance side by side with the editor
  - Request resources to help with the edit
  - Check the notes for the project
- Clicking the split screen button again returns to full screen
- Close the sequence with the close button
- Reopen the sequence later for further edits

##### Rendering and Delivery

- When ready to render and deliver, click the render button
- All versions for the different output profiles will be rendered in the web editor storage
- The video can then be previewed and used for publication on connected platforms

### AI Assistant and Content Authenticity

#### Factiverse 2.0 Integration

- Determine which sources are trusted for claim validation
- Summarise findings for and against your claims

---

## Communication & Collaboration

### Chat

- Remember unsent typed content when you navigate out of the story before sending and you come back to the story chat

### Activity

- Improved persistent followed items across web and mobile

### Alerts

- Click through alerts to navigate them from the alerts bar
- Send the reference to the Object ID (Story, event, etc.) when sending editorial alerts to 3rd party systems

---

## Publishing

### MAM Asset Support for Publication

- New field types in the template are now compatible with MAM asset types, so users can select MAM assets and drag them to the publishing template directly from Media Search or from preselected MAM assets in the board

### Avid Newsroom Management (iNEWS) Integration (Preview)

Wolftech is now a full client of the iNEWS Rundown application. It connects directly to the iNEWS server to create, edit and have 2-way communication with iNEWS stories. This release brings the preview of this integration with further functionality and improved stability coming in the next release.

- Note: The iNEWS x Wolftech integration is based on an IdP. Clients need a minimum 2024.10 iNEWS server version; recommended setup is 2024.10.3 and when available 2024.10.4 for maximum compatibility. If using the iNEWS client, the previous LTM version is supported, i.e. 2023.7x is the recommended minimum setup.

#### iNEWS Configuration in Publishing Admin

- Map Platforms to connected iNEWS servers
- Create Story Publishing templates based on iNEWS forms compatible with the connected server (Note: this is in Preview state; further work is planned on these templates)
- Map Sub-platform to iNEWS Rundown and validate it; a green message appears if successfully connected
- This sub platform can then be connected to a Publishing destination folder

#### Wolftech iNEWS Script Editor

- Note: Wolftech authenticates users creating iNEWS stories but allows planners without an iNEWS licence to create the initial iNEWS story via API
- Create iNEWS story at the point of Publishing template selection, associating the iNEWS story Global ID to the publishing output
- When first launching the story, if the script body content is empty it will all look empty — double click on the body itself to edit it
- At this point you have 2-way communication

##### Locking

- If someone in iNEWS tries to edit a story, they will see the user who is locking the story in Wolftech
- Saving the story will release the lock for others to edit
- If someone else is editing the story in iNEWS while you try to edit it in Wolftech you will receive a warning
- Use the Publishing Message Thread to notify the user to release the lock if needed
- Once released, on retry you will see the changes updated on the Wolftech side
- If you try to close the publishing panel without saving, it will prompt you to either save it, cancel the changes, or save the changes without logging the version in the editorial activity log
- The script body is independently locked from the form for improved collaboration
- To edit the form, click on the lock icon, then edit the form content and click save to release the lock

##### iNEWS Form Fields — Full Support

- Ready Logic
- Approval Buttons
- Text Fields
- Single select dropdown fields
- Boolean Fields
- Duration fields
- Date-Time Fields
- Presenter fields linked to Wolftech Resources (see time tracking)
- Styling of fields:
  - Naming
  - Bold
  - Mandatory nature
  - Read only vs editable nature
  - True vs false values
  - Display user for created by, modified by, endorsed by or writer
  - Colour and urgency levels (Coming Next)

##### Text Formatting

- Bold, Cursive, Underline
- Text, Closed Captions, Presenter Instructions
- Undo and Redo options

##### Smart Publishing

- Import content from your Wolftech Story to your iNEWS script and leverage the Smart Publishing AI functionality to quickly transform it before import
- Select some content from the editorial section, title, staff, or whatever you may need
- Use Smart Publishing output to transform the script

##### Script Templates (Preview)

- In this release you can see the connected Script templates (Snippets) but you will not be able to drag them or use them in your script — this is incoming functionality coming in the next patch

##### Production Cues

- Add Production Cues from the + insert menu
- Click on the anchors in the text to edit the production cue in the cue panel

##### Sequence Support (Preview)

- Many clients may choose to automatically create the iNEWS sequences on iNEWS publishing point creation with rules in Avid Rule Engine to create it together with the videoID and associated primary MOS Object
- A manual option is also available in Wolftech to drag an existing MediaCentral Sequence from the publishing board to the iNEWS story to associate it
- A sequence field appears on the form with a new 3 dot menu where you can un-associate the sequence to swap it with another one

##### Create MediaCentral Placeholders (Preview)

- Insert a placeholder into your story
- Choose from the connected devices and name your placeholder
- The placeholder asset is added as a production cue with a machine instruction tag and its detail can be edited in the production cue panel

### Track Publishing "Read" Time, SOT and TOTAL

- Wolftech will use the system level reading speed or the assigned presenter's reading speed as reference for the publishing output

#### System Default Reference Read Speed

- In the general settings admin area, define the system defaults for high, medium, and slow Reading Speeds
- Specify the word character length to be used for calculations (6 is the default)
- Once reading speed tiers are configured, define one as the default reading speed for the system (High, Medium, or Low) — this is the value used for calculations if a publishing output is created and no presenter is yet associated with it

#### Presenter Reading Reference Read Speeds

- Manage your own list of presenters from a resourcing perspective
- Determine which resource types are presenter resource types — all resources within that resource type will be considered options to be assigned as Presenters
- Go to the profile of those presenters and add either a system level default read speed or a custom one

#### Assigning Presenters to Content

- Once a list of presenters is configured, assign them to Publishing outputs provided there is a presenter field in the publishing template
- For non-iNEWS templates, a new presenter field is available; when editing its content, search from the list of presenters
- For iNEWS Forms, provided there is a Presenter Field Type in the chosen form, the system can use the Wolftech resource database as a list; values can be overridden in iNEWS if necessary

#### Source Content for Calculations

- For iNEWS, the script body Text (T) will be considered the readable script (not CC or Presenter Instructions)
- For non-iNEWS publishing templates, the admin can determine which fields in the template contribute to the overall read time by labelling it as a "Script Editor" field (only available for multi-line fields and Rich Text Box Fields)

#### Read Time Preview Bar

- With configuration in place, a bar appears at the bottom of the publishing template to track the read time of content
- Options include:
  - Time to Cursor read time: tracks the reading time to the position your cursor is placed at
  - Block time: calculates the read time of a highlighted piece of text
  - Read time: overall read time of all script fields
- For iNEWS, the bar also includes:
  - SOT Time: to calculate the timing of your production cues
  - TOTAL Time: to calculate the cumulative duration of your READ time and SOT time
- Note: READ, SOT and TOTAL times can be overwritten manually by the user. The EST estimated time is also available to compare actual timings if needed.

### iNEWS in Plan View (Preview)

- Create stories with drag and drop to iNEWS publishing columns
- Note: the iNEWS story will be created automatically only if the destination platform has one template only; if multiple templates are available, the iNEWS story will be created upon template selection
- Moving an iNEWS Publishing output in Plan view will move it to the target rundown of the column you drop it in
- Copying the iNEWS publishing output will create a new publishing output, copy the iNEWS story and associate the newly copied story to the Publishing output; if a sequence was associated to the source iNEWS story it will also copy the sequence and associate it to the iNEWS story (note: the duplication of sequences can take a few minutes)

### Direct to Social Publishing: Avid Publisher Integration (Preview)

- Link your Wolftech system to a Publisher system in the configuration (requires Workflow Engine support ticket)
- Create platforms connected to your Publisher Destinations (please ask Professional Services to add them to your account)
- Map Sub-platforms to Publisher Publishing Templates
- Leverage Wolftech Publishing templates matching Publisher templates
- Select and Drag Avid MediaCentral Assets to a publishing template to Publish through Publisher
- Configure Avid Rule Engine to Publish the asset to your defined Publisher destination when a certain publishing output status has been reached
- In the Avid Rule Engine rule template there is an option to "publish clip when done" (default is not selected, meaning that when you publish it sends the clip to Publisher where further changes can be made before publication; enabling "publish the clip when done" publishes the selected clip once transferred to Publisher)

### Direct to Social Publishing: Web Editor Publishing Integration (Preview)

- Connect Wolftech to the web editor, powered by Cutting Room, to Publish via API from a Wolftech System — done in admin external connections
- Add Platform Types in Wolftech connected to Cutting Room Destinations (via Workflow Engine) — request these from your PS team
- Map Wolftech Sub-platforms to destinations in the Web Publishing tool with all correct settings available to define (including account IDs)
- Leverage pre-mapped templates for those destinations without further configuration
- Management of accounts and users is done via the Web Editor Admin Page
- Note: Beyond the Publishing connector licence you will need at least 1 web editor admin licence to manage the publishing workflow configuration; from that point all users in Wolftech are authenticated to publish

### Email Publishing

- Add multiple attachments to the email publishing template by adding more than one attachment field to your template

### Notable Bug Fixes

- Show Publish time in Publishing column in plan view when grouped by office
- Reintroduce capability to archive and unarchive sub platforms

---

## User Experience, Navigation and Accessibility

### Search

- Improved Elastic Search Indices to lower the number of times the database needs to be re-indexed

### Pins

- Improved layout of different pinned content types

### Help

- Avid English Language file: an updated English base language file is being worked on, available as the English Avid Language file. Feedback is requested. The source English Language file will be changed after review.

### User Experience and Accessibility

- New icons for story sections
- Improved date selector in left column: shows the number of matches and type of content you are looking at; filter icons are highlighted in blue when a filter is active
- If a user is in a zoomed-in state or in the context of other panels opened, the right panel now defaults to collapsed when it does not fit, letting the user open it as needed; clicking on any of the menu items on the right will open it in overlay mode
- New MediaCentral colour theme matches the MediaCentral | Cloud UX experience in both dark and light mode; it is automatically enabled when loading Wolftech within MediaCentral and can also be enabled in My Page settings
- JAWS will now read out the story title before the story update information — when navigating through multiple stories you hear the title followed by "NEW story" rather than "NEW Story" before the title
- Additional improvements to high-contrast mode

### Wall Monitor

- Auto-scroll is now an option in admin

---

## Administration

### Authorisation and Security

- New design for Login Page
- User authentication for permission filtering on API actions
- Expanded the API to query a username and role to check the permission externally: `/v2/query/user/get-name-and-roles`

#### Authorisation Framework with MediaCentral | Cloud UX

- SSO compatibility between MediaCentral | Cloud UX and Wolftech so only one SSO login is required
- Added Identity server and workflow engine token exchange with MediaCentral to authenticate users on MediaCentral Actions

### API and Automation

In this release the API offering has been expanded to build powerful integrations and automations across the board.

#### Search API

- `v2/query/event/search`
- `v2/query/story/search`
- `V2/query/resource/search`

#### Story API

- API to create story out of event automatically based on event data: `"v2/command/story/create-story-from-event"`
- Get Story — simplified to support timeless and scheduled stories on the same API call
- Get Note (Pitch) API — simplified to support timeless and scheduled pitches on the same API call
- Indexing support:
  - `/v2/query/pub-point/get-for-indexing`

#### Event API

- Indexing support:
  - `/v2/query/event/list-for-indexing`
  - `/v2/query/event/get-for-indexing`

#### Live Feed API

- Make author optional in API and not display it if missing
- Edit/delete posts and feeds in Live Feeds

#### Asset API

- Add Assets to board including:
  - Sticky Notes
  - External MAM Reference from 3rd party systems so you can auto-populate your board from ingests into your 3rd party MAMs
  - Web links
- Get list of Attachment Items
- Delete an Attachment item (only deletes the reference to the story, not the asset itself from the source system)

#### Publish API

- Get the list of hierarchy folders and its sub folders to present the possible options for publication:
  - `v2/query/publishing-folder/list-hierarchy-folders`
  - `v2/query/publishing-folder/list-child-publishing-folders`
- Get publishing folder by ID to return all folder metadata (including its associated platform and sub platform and the next available date-time when you can create a publishing output):
  - `v2/query/publishing-folder/get`
- Get list of available templates for a folder:
  - `"v2/query/publishing-folder/list-available-templates"`
- Get List of workflow status types for a folder:
  - `/query/publishing-folder/list-workflow-status-information`
- Get Template by ID to get all available fields and values within it:
  - `"v2/query/pt-template/get-template-by-id"`
- Get Publishing output ID from an external ID (like iNEWS story global ID):
  - `/v2/query/pub-point/get-by-external-id`
- API to Modify Custom Fields in Publishing output:
  - `/v2/command/pub-point/set-field-value`
  - `/v2/command/pub-point/set-field-value-multi-select`
- Indexing support:
  - `/v2/query/pub-point/list-for-indexing`
  - `/v2/query/pub-point/get-for-indexing`

#### Additional Information API (Tab Group API)

- Get list of Production Types (Tab Groups) now includes:
  - The list of tabs inside of the production type
  - The list of fields inside of the included tabs
  - `/v2/query/tab-group/get-with-tabs`
  - `/v2/query/tab-group/list`

#### Change Event Queues

- Change event notification when admin level items have changed (like the list of departments, folders, etc.)
- Include UniqueID and group IDs in change event notifications

#### Full-sync Mechanism

- Full-sync mechanism to do a full resync of all Wolftech entities to MediaCentral Search

### Avid Rule Engine Integration

(See MediaCentral documentation for more info)

- Wolftech News is now connected to the Rules Engine
- Wolftech News sends change events about any changes on stories, pitches, or publishing outputs
- Rules Editor allows defining event-based rules for Wolftech News entities so that different "actions" can be automated, freeing up users from time-consuming steps
- CTMS actions have been extended for Wolftech News entities
- A new Action Engine Wolftech News provides Wolftech News specific actions
- A new Action Engine Publisher automates publishing to social media via Publisher
- Automate:
  - Creation of Stories, Pitches or Publishing Outputs
  - Modifications of Stories, Pitches or Publishing Outputs
  - Creation of sequences for your Publishing Outputs
  - Addition of sequences or media to your Stories or Publishing Outputs
  - Publishing of Publishing Outputs
  - Send to Playback actions
  - Media workflows in relation to Planning metadata

### Avid Process Modeler Integration

(See MediaCentral documentation for more info)

- Use Wolftech Booking data to automate Asset Management workflows
- Pass on Story, Publishing Output, and Booking data to the Avid Process Modeler and orchestrate workflows based on bookings

### Performance

- Improved caching of stories
- Improved story updates signalR handling
