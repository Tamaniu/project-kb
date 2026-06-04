# MEDIA MANAGEMENT & INTEGRATIONS
**Source:** Wolftech OFFICIAL_Documentation — 05_Production/MEDIA (BOARD, MAMs AND CONNECTED DEVICES)
**Revision:** R14
**Added to KB:** 04/06/2026
**Version scope:** R14 only — do not apply to other revisions

---

## MEDIA MANAGEMENT & INTEGRATIONS
Wolftech comes with rich Media workflows that are deeply integrated into your workflows enabling journalists and teams to focus on their stories while complex systems and media flows simply follow them.
At Wolftech we have a best of breed approach allowing organizations to plug their preferred solutions across cameras, transmitters, media asset management systems and any other systems that need to integrate along the production and distribution cycle.
The system is very configurable to enable the setup of the right workflow for each part of the organization and its continued evolution over time as your organization grows and evolves.
In summary wolftech stories have
A Board where assets can be stored inside of your story
A Media storage panel where PAMs or MAMs can be connected and we can preview Wolftech story related media in those systems (Note items in the board can be ingested into the PAM, MAM so it can act as a gate for compliance before ingest)
A Hunter module to search connected PAMs, MAMs and Wolftech elements and link them to your story
Connected Devices (cameras, transmitters, etc.) that can be tracked in the LIVE and Footage panels and managed to contribute media to the correct story PAM-MAM collection
Wolftech runs most of its integrations through a powerful workflow engine that can communicate with both cloud and on-premises systems through a single VPN tunnel making it easy to continue to do changes in the future without difficult security processes each time around.
We have established a common media framework to simplify your integrations and speed up your onboarding because we believe swapping systems should be much easier.
For more information get in touch through your solutions specialist to discuss how to get started.
### BOARD
##### Intro
Wolftech Stories boasts a Board to host your story related assets. This is the place where journalists can easily drop assets without the need of a PAM or MAM system. It is also an ideas board where users can also link Feed items, Links, Sticky Notes or highlight comments. Regardless of where items are added to the story the board acts as a central source of truth for all linked assets.
The board is placed in the Story Details page towards the bottom just before the Story Map section.
The number next to its title specifies the number of items uploaded to it so far.
The chips below it indicates the type of attachments present in the board
Overall, you can search the assets, display them in thumbnail or list view (See icons to the right), Attach items with the + button and filter the assets from the show all button or using the chip cards for the type of attachments.
##### Attachments
Permissions
Everyone who has access to edit a story can upload, download, or delete board items.
Attaching items
There are 2 ways of attaching assets to the story, and both can be performed via the web or mobile app interface:
Attaching items directly to the board
Attaching them to a background information segment
Regardless of which way you choose to do so, all attached items will be visible on the board so you can have a single source of truth.
To attach an item to the board, In the web version, you will see a + button where you can add items in diverse ways:
Users on the Wolftech Go mobile app are able to contribute media to the board, by adding an image-video from the photo library, taking a picture on the spot or uploading any supported file type.
Uploads from the mobile app automatically reflect on the web version and vice versa
Upload attachment or upload file will allow you to upload assets from any of your connected drives or phone.
In the background information segments you will also be able to
- attach files
- add board items already present in the board:
- attach media storage items
Note that you can add any number of files to a segment, but you cannot add the same board or media storage item to more than one segment. Items in the board that are available to be added will have their title in bold and those that are already taken will be dimmed down.
Once you attach an item in a segment it will display at the bottom of the segment:
Any attached items coming from the segments will also display in the board with a link to the segment where it was attached so you have a single source of truth in the board.
If you click on the link, it will direct you to the editorial segment.
To detach an asset from a background information segment, click on its menu and select detach from text segment
File Size Limit
Note there is a maximum 4GB file size limit on uploads by design.
Acceleration
Wolftech uploads files directly to S3 for security and speed. You will be able to see the progress of the upload and once the upload is complete a Processing warning. At this point we may be generating a thumbnail and adding the correct metadata to the file before it can be seen.
Preview
Once a file is uploaded you will see the resulting file displayed on the board. Depending on the file type the file will be previewable or just attached. See the File Extension section for more information.
The file will display the file name and the status of the attachment (reportable, working to confirm etc.) You can add a description below it.
Images or videos will have a thumbnail and clicking on them will create a wider experience
Videos and audio also enlarge when clicking on them giving you navigation options as well as download, playback speed and picture in picture. Check the file support guide for more info.
Attached PDFs will have their own PDF format clearly labeled and will open in a separate browser tab for review, from which they can be downloaded.
Other file types like word docs, excels etc. will have a file type indicator and when you click on them it will trigger a download
Content Authenticity
We have partnered with the Content Authenticity Alliance to offer workflows to determine the content provenance of the files added to the board.  Please check the Content Authenticity Guide for further details
##### Sticky Notes
Sticky notes can be added via the + button menu which will create a sticky note in the board where you can write a comment and assign it a tag.
Note how the sticky note will be tagged as unreportable by default so your team can then check it and mark it with a different status when ready to be shared
##### Linking items to the board
Add Web link
This action can be performed via the board + button, and it allows you link websites that can point to any type of information
Provided that the source website has the information, we will pull a thumbnail for it, a title for the website and a description together with its link. See example below:
The default status for websites is “editorial” as they are not reportable by design.
Clicking on a web link will take you to the website on a separate browser tab.
Note: Weblinks can be used to link to assets in other cloud-based systems.
Add MAM link
This action can be performed via the board + button. This is a customization for a very specific workflow for RTL Germany not to be used by others. We will remove it from other accounts soon.
Feeds
When you drag an asset to the board you can link it. Some assets will appear in the tracking section, namely if you drag another story, pitch, log (read-in note), episode or event.
However, when you drag a feed to the story (or when you create a story from a feed) it will appear on the board as a linked asset. Regular Feed items will display as per below:
Dataminr Feeds can also be dragged into the story and will display on the board with the list label at the top and a description of the event below and will then make the dataminr track in real time on the dataminr panel.
When linking an email feed, the feed will be linked and any email attachments will be automatically added to the board as separate items, linked to its original feed entry)
If you create a story from an email feed that contains an attachment you will have the option to add the attachments to the board
When linking a newswire or creating a new story from a newswire that contains media and is configured to make the media available (i.e., Reuters, AP, etc.) the assets can be ingested to the board too.
Note, we are not downloading the source content from YouTube or other social feeds. We can link YouTube Feed items, and you will be able to preview the content within Wolftech News but to download the content you will need to resort to other applications.
Comments
You can also drag a comment from the main story message thread to highlight it in the board:
##### Search
The board can be searched to make it easier to find the right asset when a story gets big. The search looks for the title or the description of the file.
Do note the “Find in Story” Search will not search for assets. Assets can only be searched in the Board Search.
The search can be filtered by attachment types with the chips on top of it. Blue chips are enabled. White chips with bold title are disabled but available and dimmed down chips are categories where there are no matching elements
The search can also be filtered by the asset status (Editorial, Reportable, Working to Confirm or Unreportable as well as the Important label):
The board can be seen in thumbnail or list view with the right selector with the thumbnail view perfect for seeing the content of images and videos and the list view allowing to see more of the file metadata at a glance.
When it comes to sorting your results, know that when attaching items to the board the last attachment will always be placed on the top of the board so you can see the latest asset, so the default sorting is by last added.
If you need to promote a specific asset to the top of the list, you can do so via the item menu “move to first” action:
In list view you can sort by any of the header columns (“Type,” “name,” “date,” “added by” or “status”)
##### Managing Assets
Adding Descriptions
While users cannot change the file name, users can add a description to the file. This description is searchable. To do so simply click on the Description area:
Descriptions can be edited after the fact by performing the same click on the description area.
Status Tag
Assets in the board can be tagged with a status to denote its usability in publishing workflows. Depending on the asset on ingest it will get either an editorial tag or an unreportable tag by default to prevent its distribution without checks.
To change the status tag simply click on the asset menu and apply the correct tag
Important Tag
Assets can be marked as important by being part of a background information segment.
Note you cannot tag them as important in the board to prevent clashes with segment´s importance filters.
Main Image Tag
Pictures on the board can be tagged as “Main Image.”
When you do this, the picture will be used in the story card everywhere in the system
The main image can also be automatically mapped to a publishing template field, so when a publishing point is created for a story using this template it will automatically select the main image for this field by default, speeding the publishing decision workflow significantly.
To set this preference go to the admin, platforms, templates section and in the field, editor select Main Story Image:
Downloading
Downloading files is possible from the item card menu:
Ingest to MAM (Media Storage)
An asset hosted on the board can be ingested to your PAM-MAM (Media Storage).
Upon triggering the workflow, you will be presented with an ingest metadata form to allow you to set restrictions on ingest. This is optional
Once you click ingest you will be notified that the job has been triggered successfully
Upon successful ingest you should be able to preview the ingested file in the media storage section with the applied metadata:
Behind the hood, beyond using the storyID we will collect the department, Story Date and username triggering the ingest so these metadata fields can be passed to the PAM for onward workflows.
Do Note, depending on your media asset management system a proxy encode and ingest workflow will need to be triggered (See Avid Media Central leveraging Telestream Vantage or similar tooling as an example of this). The above metadata can be used in combination with the ingest tool to orchestrate workflows.
Most other MAMs will ingest the source file as is and then process any required proxy generation after ingest.
Deleting
Deleting assets is possible from the item card menu. There is also an option to “remove from board.” This will keep an asset uploaded to a background information segment in that segment while removing it from the board.
Deleting assets can also be done directly from a background information segment
#### Tracking Changes
Adding items from the board will be logged in the activity log so people following the story can be kept updated with any important media contributions. (Deleting them is currently disabled for tracking because many people delete items right after pasting whole websites and we want to minimize the number of unnecessary notifications.
In the story activity log, you can filter by board item added or removed and when you find something if you click on it, we will direct you to the asset.
#### Admin: File Extension Management and Support
For admins it is easy to define which file types you would like to support on the board. This can help you secure your board of any unwanted files.
In the admin section simply add a new file type
Add the file extension and choose a file category (PDF, Image, video, Other) and your users are ready to go.
The board will then support the upload of these files.
Afterwards you can easily delete any unwanted file extensions or check their categorization
Please check the below list to get to know which common files can also be previewable inside of the board
### HUNTER
The Hunter panel allows your users to find assets across their whole media archive.
By plugging your different MAMs to Wolftech via your workflow engine you will be able to perform searches
##### Searches
In the hunter panel select MAM search. Then select the MAM you would like to search in
And add a term to your search to perform the search:
You can cycle through the different connected MAMs while your search keeps your terms intact allowing for a quick search across your different systems:
If you need to dig deeper, you can leverage system specific filters in your search:
A consistent layout for different PAM systems guarantees the best UX experience inside of Wolftech. Thumbnails provide clear visibility of assets.
Beyond file name and size, we now also display other metadata fields made available by your PAM/MAM provider at the bottom. On hover over you can expand for improved readability.
Pagination ensures that searches with over 20 matches are handled in a performant way while correctly displaying the total number of hits. As you load more all thumbnails will be displayed for consistency.
##### Opening MAM Assets
If you double click on an asset to open it some MAMs will present a proxy in our UI and some others will require to open a secondary browser tab. In the second case Wolftech will make sure to always open in the same secondary browser tab for each MAM to avoid opening too many tabs.
##### Supported PAM-MAMS Hunter searches
The current list of supported PAM and MAMs can be connected for API-based searches:
Vidispine
Mimir
Avid Media Central
Viz One
Grass Valley Stratus
Iconik
Sony CI
Netia (Radio system)
##### Embedded Searches
Some MAM vendors allow us to directly embed their application inside of Wolftech so you have the full capabilities of their UI for actions, filtering etc.
Supported embedded PAM-MAMS Hunter searches
The current list of supported PAM and MAMs can be connected for embedded searches:
Vidispine
Mimir
### MAM (MEDIA STORAGE)
In the Media Storage (Media Portal) you can define a single system to be the record of truth for your stored story assets. This can be a way to manage your primary folder or have it as a place to archive final assets.
What we show in this media storage can be configured in 2 ways.
##### Story Collections vs StoryID tag searches
To setup your media storage you have 2 options:
You can create a MAM Folder via the MAM creation button, and we will add a Wolftech unique ID to your MAM folder for tracking, to prevent issues where folder file paths change over time.
You can also set the Media Storage to display all assets in your default MAM system that are tagged with the storyID, rather than create a collection for it.
This will display assets across the whole system that may have been ingested in multiple ways and places giving you a full overview without the need for Story folders or collections.
To switch your system to this mode, go to admin - Advanced settings (MAM):
#### MAM CONNECTORS
##### VIDISPINE
Search
You can search Vidispine via MAM hunter using its API and preconfigured filters.
Embedded experience is also possible. This allows you to leverage AI natural language processing for your searches, full access to all filters, preview assets before import etc.
Light mode and dark mode preferences in wolftech will synchronize automatically with Vidispine for a unified look.
Linking assets
It is easy to drag and drop items to your media collection to link them.
In the embedded version right click and select Add to Story
Preview of Assets
Assets open in the embedded experience for full preview capabilities and leveraging AI tagging to find the right section of clips.
Set up your Media Storage
Wolftech can create a MAM collection for your story assets.
The Media Storage will display all assets ingested into the collection with a refresh of the list of assets available and an option to open the collection directly in Vidispine.
The Vidispine collection can be experienced in an API view offering those without a need to interact directly with the assets but with access to the story a window into the asset list, status of assets and summaries.
and embedded experience opening the full capabilities
Ingest to MAM
Use the upload button to launch the upload drop zone and easily drag and drop assets into your collection
This will launch the metadata form and analysis options for ingest with capabilities for bulk tagging
Users can ingest assets from the Board into their MAM collection without any proxy ingest tool.
Approval and Review
Through the embedded experience you can preview the assets leveraging Vidispine´s capabilities and AI tagging.
Publishing
Vidispine Assets in the Media Storage are available for use in your Publishing points
##### MIMIR
Search
The Mimir embedded integration takes full advantage of the expandable right-side panel.
Linking assets
The customer can click to add an item to their media storage from their search
Preview of Assets
Assets (including video) can be previewed directly within Wolftech
Set up your Media Storage
Wolftech can create a MAM collection for your story assets.
The Media Storage will display all assets ingested into the collection with a refresh of the list of assets available and an option to open the collection directly in Mimir.
The Mimir collection can be experienced in both API view and embedded experience opening the full capabilities.
Ingest to Media Storage
Users can easily ingest assets by dragging and dropping items from their connected local drives to the embedded media storage section in Wolftech. It could not be simpler.
This will trigger the selected ingest forms
The users will also be able to ingest assets from the Board into their created MAM collection without any proxy ingest tool in the middle.
Finally, users can request uploads to their story collection, allowing 3rd party team members to upload media to the correct location by sharing an upload link:
Approval and Review
Through the embedded experience you can preview the assets leveraging Mimir´s capabilities and AI tagging.
You will be able to tag assets and set rights restrictions
You can share those assets for onward review and collaboration
You can even manage all the shares created right within wolftech
Editing
Set in and out points for sub clipping saving them as assets or sequences for further editing
Mimir works nicely with its embedded integration within Adobe Premiere and Cutting Room so you can collaborate with your editors on those platforms seamlessly.
Proxy workflows are available for more efficient editorial.
Mimir offers AAF integration with Avid Media Central-Nexis storage when using the Mimir Desktop app.
Live Production
Mimir can handle the schedule of recordings using AWS Elemental Live. This can be accessed directly within the wolftech embedded experience where new live recordings can be created and targeted to the correct collection.
##### AVID MEDIA CENTRAL
Search
We can Search assets across Media Central via the Hunter API
Preview of Assets
Clicking on linked assets in your Media Storage opens the assets in Media Central
Linking assets
Drag them to your story and we will tag the asset with the Story ID to link it for searchability
Set up your Media Storage
With Avid media central you have 2 options:
You can create a PAM Folder in Media Central via the MAM creation button, and we will add a Wolftech unique ID to your PAM folder for tracking, to prevent issues where folder file paths change over time.
In Interplay you can check how the story collection is correctly named with the storyID and we are also tagging it with a wolftech Unique ID to be able to always find it even when you move its file path
You can now set the Media Storage to display all assets in media central that are tagged with the storyID, rather than create a collection for it.
This will display assets across the whole system that may have been ingested in multiple ways and places giving you a full overview without the need for Story folders or collections.
To switch your system to this mode, go to admin - Advanced settings (MAM):
Ingest to Media Storage
You can ingest media from your board to Avid Media Central using the ingest to media storage action. Behind the hood, beyond using the storyID we will collect the department, Story Date and username triggering the ingest so these metadata fields can be passed to the PAM for onward workflows.
For Avid Media Central we have partnered with encoding leaders such as Telestream, Woody Technologies and Glookast to facilitate the creation of proxies and correct ingest into Avid Nexis Storage. The above metadata can be used in combination with the ingest tool to orchestrate workflows.
Upon triggering the ingest workflow we will send you a notification of successful trigger. When the job is completed, we will send you another notification of processing completion.
Any ingest triggered separately will display in the media storage section so long as the media is correctly tagged with the StoryID.
For more information contact your account manager.
Approval and Review
Clicking the asset in Wolftech will open a deeplink to the asset in Media Central where all its AI capabilities will allow you to dissect the clip in real time. Tagging is performed in a Media Central separate browser.
Editing
Avid Media central is deeply connected to its own cloud editing functions as part of Media Central Cloud UX as well as its deep integration with Avid Media Composer, Pro Tools, and Adobe Premiere Pro.
Live Production (Avid Capture)
This integration allows you to categorize Capture seats as resources in Wolftech where the resource will contain metadata about the workflow transmitter and its transmitter ID.
These Capture seats can be requested by the users with configurable mandatory metadata. (Note custom metadata cannot be mapped yet to the booking). Direct booking is also supported
Once the request is assigned and the booking is confirmed we can trigger the booking in Avid Capture including passing the start and end time, the title and your story ID as well as pointing the capture to the Wolftech created Interplay Folder.
In interplay access you can check that the story folder exists, that the assets have been ingested from the search and that the capture booking has generated a placeholder for the incoming recording
### CONTENT GUIDANCE WORKFLOWS
You can add media to an editorial segment and request guidance from it.
Choose the type of guidance required
### CONNECTED DEVICES AND FOOTAGE
##### SONY C3P
Connect Sony Cameras to SonyC3P. Those cameras are then mapped to resources in the Wolftech. Once you book them the cameras provide information on their status in the Live Media Section. Camera cards become accessible via the Footage section from where they can be ingested into the board by drag and drop.
##### LiveU
Allows you to connect a LiveU unit when resourcing it to a story so Story Metadata can be ingested into the captured media and be searchable in your MAM, as well as it allows you to track the battery remaining on the device and its location directly within Wofltech.
Config:
Create LiveU resources in your preferred resource types and select the live U workflow for them. (this workflow will be available if previously configured in your workflow Engine)
Then select the workflow transmitter unit, which will add the transmitter ID
After you resource the unit in your production the connected device will then be tracked in the Live Media section of your story. Providing the booking times, live update on the battery and its actual location data:
The stories are pushed to LiveU Central:
On location, operators will be able to choose the story they are recording in the LiveU unit GUID.
The captured media goes into LiveU Ingest Server tagged with
the story title as the slug line
Wolftech Story ID as the storyID
Other fields can be mapped on customization, including
Reporter: We can use the story owner as the reporter
Provider: can be mapped to department to determine your rights to the media produced by you when reconciling sequences and as part of your archive
Comments: Can include the story description or could be mapped to the booking notes field
Usage terms and keywords could potentially be mapped if part of the booking request template you define for the LiveU resource type
Media transcode and ingest to MAM
The customer can set up a workflow to also push your MAM ID to the LiveU media so all of the clips are automatically ingested into the Wolftech created Story MAM collection (currently only supported with Avid Media Central and Mimir) If this is done, you should be able to see the media in your MAM collection as it is being recorded.
The customer can set up intermediate workflows with Marquis to ingest growing files into Media Central with the StoryID and the slug line.
Assets tagged with the StoryID can then appear automatically in the media storage section with a hyperlink to open them in media central. The preferred configuration for avid is to not record to a specific folder but to set up the media storage in wolftech to display all assets tagged with the story StoryID.
The assets will also be searchable via the hunter module, and you can then drag them to your Media Storage section.
Note: if an operator working on the field disconnects the cable between the camera and the Unit the connection with LiveU central will remain but a secondary file will be created.
If a recording starts unconnected to a storyID the recording will land in a default backup location in Media Central.
##### HAIVISION
Allows you to connect a Haivision unit when resourcing it to a story so Story Metadata (StoryID or UniqueID) can be ingested into the captured media and be searchable in your MAM, as well as it allows you to track if the device is online as well as see a thumbnail of what is being recorded when it goes live directly within Wofltech.
Create Haivison resources in your preferred resource types and select the Haivision workflow for them.
Then select the workflow transmitter unit and add the transmitter ID.
From then on if your device is connected to a haivision Manager it will receive the stories from Wolftech as Missions that the operator can select on device to start recording against the correct stories.
Routing of the media to the MAM can be done on the Manager itself.

| File Category | Format | Container-File Extension | Preview available |
| --- | --- | --- | --- |
| Image | JPEG | .jpeg | Yes |
| Image | PNG | .png | Yes |
| Image | ICO | .ico | Yes |
| Image | BMP | .bmp | Yes |
| Image | GIF | .gif | Yes |
| Image | TIFF | .tiff | Upload with thumbnail view, no full screen preview |
| Image | WEBP | .webp | No |
| Image | SVG | .svg | Upload blocked |
| Image | CUR | .cur | Upload only - no thumbnail |
| Image | CR2 | .cr2 | Upload only - no thumbnail |
| Image | HDR | .hdr | Upload only - no thumbnail |
| Video | H264 (AVC) | .mp4 .mov .mkv | Yes, Playback supported if mp4 or .mov Upload only if .mkv |
| Video | H265 | .mp4 .hevc | Yes - Playback if wrapped as mp4, Upload only for .hevc |
| Video | APPLE PRORES | .mov | Yes (Might take some time to load but it works) (Std, LT, HQ and Proxy supported) |
| Video | MPEG4 | .mp4 | Yes |
| Video | SONYXDCAM50 | .mov .mxf | Yes, playback supported if .mov upload only if .mxf |
| Video | DVC50PROHD | .mp4 | Yes |
| Video | DV25 | .mov | Yes |
| Video | DV50 | .mov | Yes |
| Video | OGG (Theora) | .ogg, .ogv, .oga, .ogx, .ogm, .spx, .opus | yes |
| Video | AV1 | .webm | yes |
| Video | VP8 | .webm | yes |
| Video | VP9 | .webm | yes |
| Video | 3G2 | .3g2 | yes |
| Video | M4V | .m4v | yes |
| Video | AVID DNX | .mxf | Upload only - no thumbnail (in all its quality levels) |
| Video | MPEG | .mpeg /.mpg | Upload only - no thumbnail |
| Video | MPEG2 | .m2ts | Upload only (in all its quality levels) |
| Video | AVI | .avi | Upload only - no thumbnail |
| Video | WMV | .wmv | Upload only - no thumbnail |
| Video | FLV | .flv | Upload only - no thumbnail |
| Video | 3GP | .3gp | Upload only - no thumbnail |
| Video | ASF | .asf .wma .wmv | Upload only - no thumbnail |
| Audio | MP3 | .mp3 | Playback supported from R13 onwards |
| Audio | PCM | .wav | Playback supported from R13 onwards |
| Audio | AAC | Mpeg m4a, .mp4, .3gp Apple container: .m4a,.m4b,.m4p,.m4r,.m4v ADTS stream: .aac) | Playback supported from R13 onwards |
| Audio | OGG | ogx,.ogm,.spx,. opus | Playback supported from R13 onwards |
| Audio | FLAC | .ogg or .flac | Upload only |
| Audio | AC3 | .ac3 | Upload only |
| Audio | WMA | .wma | Upload only |
| Audio | AIFF | .aiff | Upload only |
| Other | PDF | .pdf | Previews in separate Browser Tab |
|  | WORD | .docx | Upload only |
|  | EXCEL | .xls | Upload only |
